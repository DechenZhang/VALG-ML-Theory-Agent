# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove the displayed simultaneous `R,S` recurrences,
  denominator persistence, the named `chi_chart=1/128` projective chart and
  fixed point after burn-in, the ratio-l1 variable `a_t`, and
  `zeta<=tau_r` within `L_cert=O(log r)` sweeps for every covered slot.
- Depends on: `step_001`, `step_003`.
- Assumptions used: the accepted derived events `E_sm,E_cov` and primitive
  Assumption~\ref{assump:subquadratic-rank}.
- Technical challenge: first-update activation, fixed nonzero Gram forcing,
  ambient/projective norm conversion, and a noncircular chart self-map.
- Intended proof tool or cited result: exact old-state contraction expansion,
  an invariant interval, a dual-l1 recurrence, direct normalized-map
  estimates, and Banach's contraction theorem.
- Output target: `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert`.
- Rate objective: a deterministic fixed-horizon conclusion over
  `L_burn+L_cert`, with explicit `tau_r`, `a_t`, `L_chart`, and horizon
  choices.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:subquadratic-rank}: the setting uses the exact
    proposal rank and has `r>=3`.  The dynamics below are slotwise and do not
    otherwise depend on `k`.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-event}, in the current
    unit-attempt-2 `step_001` proof and its matching `ACCEPTED` review,
    supplies `E_sm`.  On this static event,
    `q:=q_real<=q_*=1/4096`, `Gamma<=gamma_*:=1.01`, and each realized factor
    Gram has unit diagonal and off-diagonal absolute row mass at most `q`.
  - Accepted Proposition~\ref{prop:step-003-coverage}, in the current
    unit-attempt-1 `step_003` proof and its matching `ACCEPTED` review,
    supplies `E_cov`.  On `E_cov`, for every target `j` there is at least one
    proposal slot satisfying the inherited window event.  For every such
    target-slot witness, normalization cancels from the initial ratios and
    the window gives
    \[
      R_0\le R_*:={19\over20},\qquad S_0\le rR_* .             \tag{1}
    \]
    Target labels select witnesses only in this proof; the accepted label
    erasure proposition proves that the algorithm does not consume them.
- Local conditional hypotheses: None.  Event membership, denominator
  persistence, chart membership, nonzero contractions, and certification are
  derived below.  No generated trajectory condition is assumed.

All conclusions in this step are deterministic after fixing `E_sm` and one
realization in `E_cov`.  Fix an arbitrary covered target `j` and one of its
covered slots.  Since every estimate is uniform in this choice, the final
conclusions hold simultaneously for every covered target-slot pair on the
same events.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under accepted Proposition~\ref{prop:step-001-event}, each realized factor Gram has spectrum in `[1-q,1+q]`; its dual basis is well-defined and gives exact span coordinates after the first Jacobi update. | Supplies the current-notation dual geometry used by the chart. |
| `unit_002` | proposition | Under accepted Propositions~\ref{prop:step-001-event} and \ref{prop:step-003-coverage}, every covered slot has a nonzero first update and, whenever `Gamma R_t<1`, satisfies the exact displayed old-state `R,S` recurrences; at `q=0,Gamma=1` the component-ratio map is exactly `(BC,AC,AB)`. | Produces the recurrence mechanism and handles first activation and the exact baseline map. |
| `unit_003` | invariant | Under the same accepted dependencies and Proposition~\ref{prop:step-004-recurrence}, `R_t<=19/20`, every target denominator is at least `31/32`, `R_10<6.0e-8`, and the declared burn horizon gives `S_(t_b-1),S_(t_b)<=q_*/16`. | Establishes noncircular denominator persistence and finite burn arithmetic, exporting `E_RS`. |
| `unit_004` | lemma | Under Invariant~\ref{inv:step-004-burn}, the exact dual coefficients obey the displayed ratio-l1 bridge, and the state at `t_b=L_burn` has `a_(t_b)<=1/1024` and ambient distance below `chi_chart=1/128` from its target factors. | Produces `E_chart_l1` and derives chart entry without assuming it. |
| `unit_005` | proposition | Under accepted Proposition~\ref{prop:step-001-event} and the setting constants, the target-positive Jacobi map sends the closed chart with `a_chart=1/512` and `chi_chart=1/128` into itself, obeys `a(J(h))<=2(q_*+2a(h)^2)<=1/1024`, and has contraction norms in `[31lambda_j/32,33lambda_j/32]`. | Proves the self-map and positive/nonzero source required before contraction is invoked. |
| `unit_006` | proposition | Under Proposition~\ref{prop:step-004-chart}, the normalized simultaneous map has derivative and chord Lipschitz constant `L_chart<=16(q_*+a_chart+chi_chart)<1/4` in the projective max metric; hence the chart contains a unique projective fixed point. | Produces `E_chart` by a noncircular Banach argument. |
| `unit_007` | proposition | Under Propositions~\ref{prop:step-004-chart} and \ref{prop:step-004-contraction}, if `L_cert>=ceil(log(4/tau_r)/log 4)+1`, every covered slot is certified in the declared window with `zeta<=tau_r`; a zero contraction is impossible on a covered path and is otherwise the procedure's explicit unsuccessful branch. | Produces the stored-state event `E_cert` with the exact horizon and boundary behavior. |

Atomic step = no.  Coordinate recurrence, finite invariant arithmetic, the
dual/ambient bridge, chart self-mapping, normalized-map contraction, and
finite certification are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: the realized geometry event

- Source or name: accepted Proposition~\ref{prop:step-001-event} and its
  matching current review.
- Restated statement in current notation: on `E_sm`, every realized factor
  matrix `G` in `{U,V,W}` has unit columns and
  `max_j sum_(ell!=j)|<g_j,g_ell>|<=q<=q_*`; also
  `Gamma<=gamma_*=1.01`.
- Instantiated objects: the three realized factor matrices and realized
  weights in the setting-level tensor decomposition.
- Assumption discharge: the accepted dependency derives this event from the
  five primitive smoothing/base assumptions.  No realized bound is assumed
  here.
- Conclusion used: Gram spectral bounds, all recurrence leakage bounds, and
  the weight ratio.

### Accepted dependency: all-target window coverage

- Source or name: accepted Proposition~\ref{prop:step-003-coverage} and
  Proposition~\ref{prop:step-003-label-erasure}, with their matching current
  review.
- Restated statement in current notation: on `E_cov`, each target has a slot
  satisfying the setting's window event; the event implies (1), and its
  target indices are proof-only.
- Instantiated objects: an arbitrary target `j` and arbitrary slot witnessing
  its coverage.
- Assumption discharge: the accepted dependency derives `E_cov` from the
  primitive rank/randomness assumptions and its accepted window dependency.
- Conclusion used: `R_0,S_0` and simultaneous applicability to every covered
  target-slot pair.  No trajectory property is inherited.

### Gershgorin spectral comparison

- Restated statement: a real symmetric matrix with diagonal one and
  off-diagonal absolute row sums at most `q<1` has all eigenvalues in
  `[1-q,1+q]`.
- Instantiated objects: `H_M=G_M^T G_M` for `M in {U,V,W}`.
- Assumption discharge: unit diagonal and row mass come from accepted
  Proposition~\ref{prop:step-001-event}.
- Conclusion used: invertibility of `H_M`, norms of `G_M` and its dual, and
  norm comparison for coefficient vectors.

### Banach contraction theorem

- Restated statement: if a self-map of a nonempty complete metric space has
  Lipschitz constant strictly below one, it has a unique fixed point, and
  successive displacements contract by the same factor.
- Instantiated object: the target-positive simultaneous Jacobi map on the
  closed finite-dimensional chart `C_j` defined below, in the maximum
  modewise Euclidean metric.
- Assumption discharge: completeness and nonemptiness are checked in
  Proposition~\ref{prop:step-004-contraction}; self-mapping is proved in
  Proposition~\ref{prop:step-004-chart}; the strict Lipschitz bound is proved
  directly in Proposition~\ref{prop:step-004-contraction}.
- Conclusion used: the unique projective fixed point and geometric
  successive-displacement bound.

No external paper theorem is used in this step.  The normalized-vector
inequality
\[
 \left\|{x\over\|x\|_2}-{y\over\|y\|_2}\right\|_2
 \le {2\|x-y\|_2\over\min\{\|x\|_2,\|y\|_2\}}              \tag{2}
\]
for nonzero `x,y` follows by adding and subtracting `y/||x||`; it is proved
at its use below rather than cited.

## Local Derivation

Use the cyclic mode notation
\[
 (G_U,G_V,G_W)=(U,V,W),\qquad H_M:=G_M^T G_M,qquad
 L_M:=G_MH_M^{-1}.                                             \tag{3}
\]
For the fixed covered target `j`, write the three absolute target-relative
primal ratios as `A_l^t,B_l^t,C_l^t`, exactly as in `setting.md`.  Set
`q=q_real`.  All scalar recurrences below are monotone in `q` and `Gamma`, so
their numerical envelope may use `q_*` and `gamma_*`.

After the first update, every mode vector belongs to the corresponding
factor span.  Reorient a mode vector by its projective sign so that its
target correlation is positive.  This changes neither `R_t,S_t` nor `zeta`.
For such an oriented state set
\[
 b_M^t:=L_M^T h_M^t,qquad
 a_j(h^t):=\max_M\sum_{\ell\ne j}|b_{M,\ell}^t|.              \tag{4}
\]
When several covered target-slot trajectories are considered, `a_t` denotes
the maximum of (4) over them.  Thus `a_t` is an actual dual coefficient l1
mass, not a maximum entry or an ambient l2 surrogate.

### unit_001: lemma

**Lemma (realized dual coordinates).**
\label{lem:step-004-dual}
Under accepted Proposition~\ref{prop:step-001-event}, for every mode `M`,
\[
 (1-q)I\preceq H_M\preceq(1+q)I,qquad
 L_M^TG_M=I,qquad
 \|G_M\|_2\le\sqrt{1+q},quad
 \|L_M\|_2\le{1\over\sqrt{1-q}}.                           \tag{5}
\]
Every nonzero Jacobi output in mode `M` lies in `span(G_M)` and has the exact
dual coefficient vector `L_M^T h_M`.

**Proof.**  Gershgorin applied to the accepted unit-diagonal row bound gives
the spectral interval in (5), hence `H_M` is invertible.  The definition (3)
gives `L_M^TG_M=H_M^{-1}H_M=I`.  Also
`||G_M||_2^2=||H_M||_2<=1+q` and
`L_M^TL_M=H_M^{-1}`, proving the norm bounds.  Each unnormalized contraction
has the form `G_M c`; normalization keeps it in the same span, and applying
`L_M^T` returns `c/||G_Mc||_2`. \(\square\)

### unit_002: proposition

**Proposition (exact old-state Jacobi recurrences and first activation).**
\label{prop:step-004-recurrence}
Under accepted Propositions~\ref{prop:step-001-event} and
\ref{prop:step-003-coverage}, fix a covered target-slot pair satisfying (1).
If `Gamma R_t<1`, all three contractions from the old state are nonzero and
the simultaneous committed state satisfies
\[
 R_{t+1}\le
 \left({\Gamma R_t+q\over1-\Gamma qR_t}\right)^2,             \tag{6}
\]
\[
 S_{t+1}\le
 { (\Gamma R_t+q)\{\Gamma(1+q)S_t+q\}
  \over(1-\Gamma qR_t)^2}.                                  \tag{7}
\]
The three right sides use only the same old state.  In the orthogonal
equal-weight specialization `q=0,Gamma=1`, the exact componentwise ratio map
is
\[
 (A_\ell^+,B_\ell^+,C_\ell^+)
   =(B_\ell C_\ell,A_\ell C_\ell,A_\ell B_\ell),            \tag{8}
\]
and consequently `R_(t+1)<=R_t^2` and `S_(t+1)<=R_tS_t`.

**Proof.**  Consider the `U` contraction; the other modes are cyclic copies.
Put
\[
 c_m:=\lambda_m\langle v_m,q^t\rangle\langle w_m,s^t\rangle,
 \qquad x_U:=T(\cdot,q^t,s^t)=Uc .                           \tag{9}
\]
The target coefficient is nonzero at `t=0` by the window event.  Relative to
it,
\[
 {|c_m|\over|c_j|}\le\Gamma B_m^tC_m^t\le\Gamma R_t
 \quad(m\ne j).                                              \tag{10}
\]
The target primal coordinate of the contraction therefore obeys
\[
 |\langle u_j,x_U\rangle|
 \ge |c_j|-\sum_{m\ne j}|(H_U)_{jm}||c_m|
 \ge |c_j|(1-\Gamma qR_t)>0.                                \tag{11}
\]
Thus `x_U` is nonzero and its normalized target correlation remains nonzero.
For `ell!=j`, using the `ell`-th Gram row, (10), and
`Gamma R_t<1`,
\[
 |\langle u_\ell,x_U\rangle|
 \le |c_j|(\Gamma R_t+q).                                   \tag{12}
\]
Dividing (12) by (11) bounds every new `A_ell` by
\[
 D_t:={\Gamma R_t+q\over1-\Gamma qR_t}.                     \tag{13}
\]
The same argument bounds every new ratio in every mode by `D_t`, giving
(6).

For the sum needed in (7), retain the direct coefficient before summing.
Symmetry of `H_U` turns its column sums into the same accepted row bound:
\[
 \sum_{\ell\ne j}{|\langle u_\ell,x_U\rangle|\over|c_j|}
 \le \Gamma S_t+q+\Gamma qS_t
 =\Gamma(1+q)S_t+q.                                         \tag{14}
\]
Indeed, the direct off-target coefficients contribute `Gamma S_t`, leakage
from `c_j` contributes at most `q`, and leakage from all off-target
coefficients contributes at most `Gamma qS_t`.  Divide by (11).  In each of
the three pair sums defining `S_(t+1)`, bound one new ratio by (13) and sum
the other using (14).  This is exactly (7), with no cyclic reuse of a newly
updated mode.

When `q=0` and all weights are equal, (9) has orthonormal coordinates, so
division by the target coefficient gives (8) exactly.  For example,
`A_ell^+B_ell^+=(A_ell C_ell)(B_ell C_ell)<=R_t^2`, and summing after bounding
one of these two pair factors by `R_t` gives `S_(t+1)<=R_tS_t`. \(\square\)

### unit_003: invariant

**Invariant (denominator persistence and finite burn ledger).**
\label{inv:step-004-burn}
Under the accepted dependencies and Proposition~\ref{prop:step-004-recurrence},
every covered target-slot trajectory satisfies, for all proposal times,
\[
 R_t\le R_*={19\over20},qquad
 1-\Gamma qR_t\ge {31\over32}.                              \tag{15}
\]
Moreover `R_10<6.0e-8`.  If
\[
 t_b:=L_{\rm burn}\ge
 10+\left\lceil{\log(16r/q_*)\over\log4000}\right\rceil,    \tag{16}
\]
then
\[
 R_t\le6.0\times10^{-8}\quad(t\ge10),\qquad
 S_{t_b-1}\le {q_*\over16},\qquad S_{t_b}\le {q_*\over16}. \tag{17}
\]
These conclusions define the public event `E_RS` on `E_sm intersect E_cov`.

**Proof.**  Define the worst-case scalar map
\[
 f(x):=\left({\gamma_*x+q_*\over1-\gamma_*q_*x}\right)^2.
                                                                    \tag{18}
\]
It is increasing on `[0,R_*]`, and direct rational evaluation at the fixed
numbers `gamma_*=101/100`, `q_*=1/4096`, and `R_*=19/20` gives
\[
 f(R_*)<0.922<R_* ,\qquad
 1-\gamma_*q_*R_*>0.9997>{31\over32}.                       \tag{19}
\]
Induction using (6) proves (15).  In particular, no denominator condition is
assumed to continue the induction: (19) proves it before (6) is reused.

For the finite arithmetic, set `bar R_0=R_*` and
`bar R_(t+1)=f(bar R_t)`.  Write the corresponding worst-case solution of
(7) as `bar S_t=A_t r+B_t`, starting from `A_0=R_*,B_0=0`, and set
\[
 \alpha_t={ (\gamma_*\bar R_t+q_*)\gamma_*(1+q_*)
              \over(1-\gamma_*q_*\bar R_t)^2},\qquad
 \beta_t={ (\gamma_*\bar R_t+q_*)q_*
              \over(1-\gamma_*q_*\bar R_t)^2},              \tag{20}
\]
\[
 A_{t+1}=\alpha_tA_t,qquad B_{t+1}=\alpha_tB_t+\beta_t.     \tag{21}
\]
Monotonicity of (6)-(7) gives `R_t<=bar R_t` and
`S_t<=A_t r+B_t`.  The following are outward-rounded upper evaluations of
the exact rational recursions (18),(20),(21):

| `t` | `bar R_t` | `A_t` | `B_t` |
| ---: | --------: | ----: | ----: |
| 0 | `0.950000` | `0.950000` | `0` |
| 1 | `0.921541` | `0.921532` | `2.35e-4` |
| 2 | `0.867156` | `0.867131` | `4.48e-4` |
| 3 | `0.767829` | `0.767781` | `6.11e-4` |
| 4 | `0.602018` | `0.601937` | `6.69e-4` |
| 5 | `0.370117` | `0.370009` | `5.60e-4` |
| 6 | `0.139948` | `0.139850` | `3.03e-4` |
| 7 | `0.020050` | `0.020006` | `7.788e-5` |
| 8 | `4.21e-4` | `4.15e-4` | `6.616e-6` |
| 9 | `4.467e-7` | `2.797e-7` | `1.677e-7` |
| 10 | `5.983e-8` | `6.911e-11` | `5.976e-8` |

Thus `R_10<6.0e-8` and
\[
 S_{10}<7.0\times10^{-11}r+6.0\times10^{-8}.                \tag{22}
\]
For every `0<=R<=6.0e-8`, another direct evaluation of the monotone rational
expressions gives
\[
 f(R)\le5.964\times10^{-8}<6.0\times10^{-8},
 \quad \alpha(R)<{1\over4000},
 \quad \beta(R)<6.0\times10^{-8}.                           \tag{23}
\]
This proves the first part of (17) and, for every `m>=0`,
\[
 S_{10+m}\le 4000^{-m}S_{10}
       +{6.0\times10^{-8}\over1-1/4000}.                    \tag{24}
\]
Let `m=t_b-10`.  Condition (16) gives
`4000^(-m)<=q_*/(16r)`.  It also gives `m>=2` for `r>=3`, and hence
`4000^{-(m-1)}<=4000q_*/(16r)`.  Combining these two inequalities with
(22)-(24) yields, respectively,
\[
 S_{t_b}<6.01\times10^{-8}+1.1\times10^{-15}< {q_*\over16},
\]
\[
 S_{t_b-1}<6.2\times10^{-8}< {q_*\over16}.                  \tag{25}
\]
This proves (17).  Finally, because `r>=3`, the universal choice
`C_burn>=16` in `L_burn=ceil(C_burn log r)` implies (16): using
`q_*^(-1)=4096`, the right side of (16) is at most
`12.34+(log r)/(log4000)<16log r`. \(\square\)

### unit_004: lemma

**Lemma (dual-l1 bridge and derived chart entry).**
\label{lem:step-004-entry}
Under Invariant~\ref{inv:step-004-burn}, after the first update the dual mass
in (4) satisfies
\[
 a_{t+1}\le {\Gamma S_t\over1-\Gamma qR_t}
 \le {2(\Gamma S_t+q)\over1-\Gamma qR_t}.                   \tag{26}
\]
At `t_b=L_burn`,
\[
 a_{t_b}\le {2(\gamma_*q_*/16+q_*)\over31/32}
 <5.36\times10^{-4}<{1\over1024}.                            \tag{27}
\]
After projective target-positive orientation, each mode at `t_b` also obeys
\[
 \|h_M^{t_b}-g_{M,j}\|_2
 \le2a_{t_b}+4q_*<{1\over128}.                              \tag{28}
\]
Thus chart entry and the public output `E_chart_l1` are derived from
`E_RS`; neither is an initialization assumption.

**Proof.**  In the notation (9), Lemma~\ref{lem:step-004-dual} gives the
updated dual coefficients `b_U^+=c/||Uc||_2`.  The off-target numerator is
bounded by `Gamma |c_j| S_t`, while (11) and
`||Uc||_2>=|<u_j,Uc>|` give
\[
 \sum_{\ell\ne j}|b_{U,\ell}^+|
 \le {\Gamma S_t\over1-\Gamma qR_t}.                        \tag{29}
\]
The other modes are identical, proving (26).  Apply (26) with `t=t_b-1`,
then use (15),(17) to obtain (27).

For (28), write an oriented unit span vector as
`h_M=b_jg_(M,j)+e`, where
`e=sum_(ell!=j)b_ell g_(M,ell)` and `b_j>0`.  By (5),
`||e||_2<=sqrt(1+q)a`.  Since both `h_M` and `g_(M,j)` are unit, the reverse
triangle inequality gives `|b_j-1|<=||e||_2`.  Therefore
\[
 \|h_M-g_{M,j}\|_2\le2\sqrt{1+q}\,a
 \le2a+4q_* .                                                 \tag{30}
\]
The last relaxed form is the accepted sketch bridge; substituting (27) and
`q_*=1/4096` gives (28).  The sign `b_j>0` is forced by target-positive
orientation once `a<1/1024`, because the primal target correlation differs
from `b_j` by at most `q a` and `|b_j|>=1-sqrt(1+q)a`. \(\square\)

### unit_005: proposition

**Proposition (closed target chart, self-map, and contraction norms).**
\label{prop:step-004-chart}
Under accepted Proposition~\ref{prop:step-001-event}, define
\[
 a_{\rm chart}:={1\over512},\qquad
 \chi_{\rm chart}:={1\over128},                             \tag{31}
\]
and let `C_j` be the product, over the three modes, of unit vectors in
`span(G_M)` satisfying
\[
 \langle g_{M,j},h_M\rangle>0,qquad
 \sum_{\ell\ne j}|(L_M^Th_M)_\ell|\le a_{\rm chart},qquad
 \|h_M-g_{M,j}\|_2\le\chi_{\rm chart}.                     \tag{32}
\]
The target-positive representative of the simultaneous Jacobi map is
well-defined on `C_j`, all its contraction norms `d_M(h)` obey
\[
 {31\over32}\lambda_j\le d_M(h)\le{33\over32}\lambda_j,    \tag{33}
\]
and
\[
 a_j({\cal J}(h))
 \le2\{q_*+2a_j(h)^2\}
 \le {1\over1024}.                                          \tag{34}
\]
Furthermore
\[
 \|{\cal J}_M(h)-g_{M,j}\|_2
 \le2a_j({\cal J}(h))+4q_*<\chi_{\rm chart}.                \tag{35}
\]
Consequently `J(C_j) subset C_j`.

**Proof.**  Fix one mode vector `h_M=G_Mb_M` in the chart and put
`a=sum_(ell!=j)|b_(M,ell)|`.  From (5),
`|b_(M,j)|<=1/sqrt(1-q)`.  Hence the off-target primal correlation mass is
\[
 P_M:=\sum_{\ell\ne j}|\langle g_{M,\ell},h_M\rangle|
 \le a+{q\over\sqrt{1-q}}+qa\le2(a+q).                     \tag{36}
\]
Also, the unit-vector identity and (32) give
\[
 \langle g_{M,j},h_M\rangle
 =1-{1\over2}\|h_M-g_{M,j}\|_2^2
 \ge1-{\chi_{\rm chart}^2\over2}.                          \tag{37}
\]

For the `U` contraction coefficients (9), (36) gives
\[
 \sum_{\ell\ne j}|c_\ell|
 \le4\lambda_{\max}(a+q)^2.                                \tag{38}
\]
The Gram spectral comparison and (37)-(38) yield
\[
 d_U(h)\ge\sqrt{1-q}\,|c_j|
 \ge\lambda_j\sqrt{1-q}
       (1-\chi_{\rm chart}^2/2)^2,                           \tag{39}
\]
\[
 d_U(h)\le\sqrt{1+q}\,\|c\|_2
 \le\lambda_j\sqrt{1+q}\{1+4\Gamma(a+q)^2\}.              \tag{40}
\]
At the largest allowed values `q=q_*`, `Gamma=1.01`, and
`a=a_chart`, the two multipliers in (39)-(40) are, respectively,
`0.9998168...` and `1.0001416...`.  This proves (33) with explicit slack.

By Lemma~\ref{lem:step-004-dual}, the output dual off-mass is the left side
of (38) divided by `d_U(h)`.  Thus
\[
 a_j({\cal J}_U(h))
 \le {4\Gamma(a+q)^2
  \over\sqrt{1-q}(1-\chi_{\rm chart}^2/2)^2}
 \le4.05(a+q_*)^2.                                          \tag{41}
\]
For `0<=a<=1/512`, direct expansion at the endpoint gives
\[
 4.05(a+q_*)^2
 \le2(q_*+2a^2)
 \le2\left({1\over4096}+{2\over512^2}\right)
 =0.00050355...<{1\over1024}.                               \tag{42}
\]
Indeed the difference in the first inequality is
`2q_*-0.05a^2-8.1aq_*-4.05q_*^2`, which decreases in `a` and is positive at
`a=1/512`.  This proves (34) for every mode.

The target coefficient `c_j` is positive.  Its contribution to
`<g_(U,j),Uc>` dominates the leakage because (37) gives a coefficient at
least `lambda_j(1-chi_chart^2/2)^2`, whereas the leakage is at most
`q lambda_max(q+chi_chart)^2`; hence the target-positive output convention
is well-defined.  Apply the coefficient-to-ambient estimate (30) to the
output and then (34) to obtain (35).  All three arguments are simultaneous
old-state arguments, so the entire product chart is mapped into itself.
\(\square\)

### unit_006: proposition

**Proposition (normalized-map derivative, contraction, and fixed point).**
\label{prop:step-004-contraction}
Under Proposition~\ref{prop:step-004-chart}, the target-positive simultaneous
map on `C_j`, in the metric
\[
 d_\infty(h,\widetilde h):=
 \max_M\|h_M-\widetilde h_M\|_2,                            \tag{43}
\]
has normalized-map derivative and chord Lipschitz bound
\[
 L_{\rm chart}\le
 16(q_*+a_{\rm chart}+\chi_{\rm chart})
 ={41\over256}< {1\over4}.                                  \tag{44}
\]
The chart is a nonempty complete metric space, so it contains a unique
target-positive fixed point `h_j^star`; equivalently, it contains a unique
projective fixed point in this target chart.

**Proof.**  We first expose the derivative source.  For the unnormalized `U`
contraction `F_U(q,s)` from (9),
\[
 D F_U(q,s)[\dot q,\dot s]
 =\sum_\ell\lambda_\ell u_\ell
 \{\langle v_\ell,\dot q\rangle\langle w_\ell,s\rangle
  +\langle v_\ell,q\rangle\langle w_\ell,\dot s\rangle\}. \tag{45}
\]
For a tangent vector `dot q` to the unit sphere,
`<q,dot q>=0`, so
\[
 |\langle v_j,\dot q\rangle|
 =|\langle v_j-q,\dot q\rangle|
 \le\chi_{\rm chart}\|\dot q\|_2.                          \tag{46}
\]
For `ell!=j`, chart membership gives
`|<w_ell,s>|<=q_*+chi_chart`.  The two submatrix spectral norms from (5)
therefore give
\[
 \left\|\sum_{\ell\ne j}\lambda_\ell u_\ell
  \langle v_\ell,\dot q\rangle\langle w_\ell,s\rangle
 \right\|_2
 \le\lambda_j\Gamma(1+q_*)(q_*+\chi_{\rm chart})
       \|\dot q\|_2.                                       \tag{47}
\]
The same estimate holds for `dot s`.  Differentiating normalization gives
`D N_x[z]=(I-N_xN_x^T)z/||x||_2`; (33), (46), and (47) therefore bound each
normalized output derivative by a universal multiple strictly below the
right side of (44).

For completeness, a direct chord estimate removes any convexity issue for
the spherical chart and proves the stated global Lipschitz constant.  If
`q,q'` are two unit chart vectors and `Delta q=q-q'`, then
\[
 \left\langle{q+q'\over2},\Delta q\right\rangle=0,qquad
 |\langle v_j,\Delta q\rangle|
 \le\chi_{\rm chart}\|\Delta q\|_2.                         \tag{48}
\]
Splitting `F_U(q,s)-F_U(q',s')` first in `q` and then in `s`, equations
(47)-(48) give
\[
 \|F_U(q,s)-F_U(q',s')\|_2
 \le\lambda_j C_0
   (\|q-q'\|_2+\|s-s'\|_2),                                \tag{49}
\]
where
\[
 C_0:=\chi_{\rm chart}
   +\gamma_*(1+q_*)(q_*+\chi_{\rm chart})
 <2.02(q_*+\chi_{\rm chart}).                              \tag{50}
\]
To prove (2), add and subtract `y/||x||`; the reverse triangle inequality
bounds the remaining scalar difference by `||x-y||/||x||`, and symmetry
allows the smaller norm in the denominator.  Applying (2), (33), and (49),
and noting that each simultaneous output depends on two input modes, gives
\[
 d_\infty({\cal J}(h),{\cal J}(\widetilde h))
 \le {128\over31}C_0,d_\infty(h,\widetilde h)
 <8.35(q_*+\chi_{\rm chart})d_\infty(h,\widetilde h).       \tag{51}
\]
This is bounded by (44).  Numerically,
`16(1/4096+1/512+1/128)=41/256<1/4`.

The strict positivity in (32) is redundant once the closed ambient ball is
imposed: every vector there has target correlation at least
`1-chi_chart^2/2>0`.  Thus `C_j` is a closed subset of a finite-dimensional
product of unit spheres in the three factor spans, and is complete.  It is
nonempty because `(u_j,v_j,w_j)` belongs to it.  Proposition~\ref{prop:step-004-chart}
proves self-mapping before the contraction estimate is consumed.  Banach's
theorem now gives the unique fixed point.  Independent sign changes of the
three modes only change corresponding contraction signs, so this fixed point
is exactly the unique projective fixed point in the target chart. \(\square\)

### unit_007: proposition

**Proposition (finite-horizon certification and zero branch).**
\label{prop:step-004-certification}
Under Propositions~\ref{prop:step-004-chart} and
\ref{prop:step-004-contraction}, every covered target-slot trajectory obeys,
for `t>=t_b`,
\[
 \zeta(h^t)\le3\left({1\over4}\right)^{t-t_b}.               \tag{52}
\]
If
\[
 L_{\rm cert}\ge
 \left\lceil{\log(4/\tau_r)\over\log4}\right\rceil+1,
 \qquad \tau_r={q_*^2\over10^4r},                            \tag{53}
\]
then the setting's certification window stores a state with
`zeta<=tau_r` no later than `t_b+L_cert`.  This defines `E_cert` for every
covered slot.  A contraction cannot vanish on a covered path; if a zero
contraction occurs on any other path, the algorithm follows its stated
unsuccessful-run branch and no certificate is asserted for that path.

**Proof.**  Reorient each actual trajectory state modewise so its target
correlation is positive.  If the input mode signs are `s_U,s_V,s_W`, the
three contraction signs are `s_Vs_W,s_Us_W,s_Us_V`; consequently the
reoriented trajectory is exactly the target-positive map studied above.
The projective residual `zeta` is unchanged by these signs and equals the
maximum modewise distance between two consecutive reoriented states.

Lemma~\ref{lem:step-004-entry} puts the `t_b` state in `C_j`, and the self-map
keeps every later state there.  Proposition~\ref{prop:step-004-contraction}
and Banach's successive-displacement conclusion give
\[
 \zeta(h^t)
 \le L_{\rm chart}^{t-t_b}
       d_\infty(h^{t_b},h^{t_b+1})
 \le2(1/4)^{t-t_b}\le3(1/4)^{t-t_b},                        \tag{54}
\]
because two unit vectors are at distance at most two.  At
`t=t_b+L_cert`, (53) gives
`4^(-L_cert)<=tau_r/16`, so (52) is at most `3tau_r/16<tau_r`.
The procedure evaluates `zeta` at every time through `L_prop=t_b+L_cert`,
and therefore stores the first qualifying state within the declared window.

Nonvanishing at the first update and throughout the pre-chart burn follows
from (11) and Invariant~\ref{inv:step-004-burn}; inside the chart it follows
from the stronger norm floor (33).  Thus the zero branch cannot interrupt a
covered witness.  The explicit unsuccessful branch handles every trajectory
outside this proved interface without promoting nonvanishing to an
assumption.

Finally, a universal `C_cert>=32` makes (53) compatible with
`L_cert=ceil(C_cert log r)` for every `r>=3`, because
`log(4/tau_r)=log(4*10^4*4096^2*r)` is one logarithm of `r` plus a fixed
constant, whose ratio to `log r` is largest at `r=3`. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-event} supplies only static realized
geometry, and accepted Proposition~\ref{prop:step-003-coverage} supplies only
covered initial windows.  Proposition~\ref{prop:step-004-recurrence} expands
the exact same old state in all three modes and derives both requested
recurrences and first-update nonvanishing.  Invariant~\ref{inv:step-004-burn}
then proves the denominator condition inductively, performs the explicit
ten-step and post-ten affine arithmetic, and exports `E_RS`; it never assumes
the chart it is meant to reach.

Lemma~\ref{lem:step-004-entry} translates that proved recurrence into the
actual dual-l1 variable and ambient target distance, producing
`E_chart_l1` and chart entry.  Proposition~\ref{prop:step-004-chart} proves
the closed chart self-map and contraction-norm floor before any fixed-point
argument is invoked.  Proposition~\ref{prop:step-004-contraction} then proves
the normalized derivative/chord bound `L_chart<1/4` and applies the checked
Banach theorem to export `E_chart`.  Finally,
Proposition~\ref{prop:step-004-certification} converts successive-displacement
contraction into the exact observable `zeta` threshold within the setting's
finite window and exports `E_cert`.  These named results jointly prove the
exact accepted `step_004` row, including the generated-output flow
`E_sm,E_cov -> E_RS -> E_chart_l1,E_chart -> E_cert`.

## Explicit Rate Audit

- Exposed variables: `r`, `q=q_real`, `q_*=1/4096`, `Gamma`,
  `gamma_*=1.01`, `R_t,S_t,a_t`, `tau_r=q_*^2/(10^4r)`,
  `L_burn`, `L_cert`, `a_chart=1/512`, `chi_chart=1/128`, and
  `L_chart`.
- Hidden constants may depend on: only the displayed universal numerical
  constants and the fixed choices of `q_*`, `a_chart`, and `chi_chart`.
- Hidden constants may not depend on: `n,r,k,kappa_0,rho`, the base triple,
  either confidence parameter, `epsilon`, the proposal realization, or an
  unlisted generated condition number.
- Fixed quantities: an arbitrary realized instance in `E_sm`, then one
  arbitrary proposal realization in `E_cov`, are fixed.  The proof is
  uniform over all covered targets and witnessing slots.
- Probability mode: deterministic conditional on `E_sm intersect E_cov`.
  The smoothing and coverage probabilities are inherited without another
  union or conversion.  No confidence parameter enters either horizon.
- Horizon mode: uniform over the finite proposal window
  `0<=t<=L_burn+L_cert`; no all-time ALS conclusion is made.
- Norm mode: target-relative primal pair ratios for `R,S`, exact dual-basis
  coefficient l1 mass for `a_t`, maximum modewise Euclidean/projective
  distance for `L_chart,zeta`, and Euclidean norm for contraction norms.
- Admissibility conditions and auxiliary tolerances: `r>=3`, (16), (31),
  and (53).  Universal valid choices are `C_burn>=16` and `C_cert>=32`.
- Term absorption or simplification inequalities: (19) proves denominator
  persistence; the table and (22)-(25) prove finite burn; (27) proves chart
  entry; (39)-(42) prove contraction-norm and self-map margins; (44),(50)-(51)
  prove `L_chart<1/4`; and (53)-(54) prove certification.  No persistent `q`
  term is dropped: it remains in (6)-(7), the post-ten fixed floor, and the
  chart fixed point.
- Probability conversion: None locally.  `E_sm` and `E_cov` retain their
  accepted instance-side and conditional one-run modes.
- Contribution to any Rate Specialization Bridge: this step supplies the
  `O(log r)` burn/certification portion of the proposal runtime.  Since
  `log(4/tau_r)=log r+log(4*10^4/q_*^2)`, (53) is exactly logarithmic in `r`.
- Baseline-reduction check: at `q=0,Gamma=1`, Proposition~\ref{prop:step-004-recurrence}
  proves the exact map (8), `R+<=R^2`, and `S+<=RS`.  A finite nonstationary
  state may still have positive `zeta`, as required by the accepted baseline
  convention.  At the exact target representative, the map is stationary
  and `zeta=0`; this step introduces no baseline error floor.

## Blockers

None.

## Notation And Assumption Notes

- `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert` are the minimal
  `public-facing` outputs.  Each is a derived event or finite-trajectory
  property produced by a named local result, not a primitive or conditional
  hypothesis.
- `q=q_real`, `gamma_*=1.01`, `R_*=19/20`, `a_chart=1/512`,
  `chi_chart=1/128`, `t_b`, and `tau_r` are `appendix-local` aliases or direct
  expressions from the setting/accepted sketch.  Their constant provenance
  is therefore fixed before the trajectory is generated.
- `H_M,L_M,b_M^t`, and `a_j(h^t)` are `appendix-local`.  Equation (3) defines
  them from setting matrices; Lemma~\ref{lem:step-004-dual} proves
  invertibility and the exact coordinate identity before they are consumed.
- The scalar envelope `f`, `bar R_t,A_t,B_t,alpha_t,beta_t` is
  `proof-local`.  It is defined from the accepted numerical bounds and used
  only to verify the finite invariant.  No downstream result needs this
  ledger.
- `C_j`, `d_infty`, and `h_j^star` are `appendix-local` chart objects.
  Chart membership and nonzero contraction norms are proved by
  Lemma~\ref{lem:step-004-entry} and Proposition~\ref{prop:step-004-chart};
  neither is assumed.  Only the resulting public `E_chart` interface is
  exported.
- All generated-object conditions have producers: window witnesses come from
  the accepted `E_cov`; ratio/denominator bounds from
  Proposition~\ref{prop:step-004-recurrence} and
  Invariant~\ref{inv:step-004-burn}; dual and ambient membership from
  Lemma~\ref{lem:step-004-entry}; self-mapping/nonvanishing from
  Proposition~\ref{prop:step-004-chart}; and certification from
  Proposition~\ref{prop:step-004-certification}.
- The fixed `q` forcing is accumulated only over the declared finite proposal
  scope.  Equations (23)-(24) give its concrete affine budget; later
  certification uses geometric successive displacement around the resulting
  fixed point, not a claim that the forcing vanishes.
- The accepted `global_proof.md` was read only after verifying that its paired
  `global_proof_review.md` has status `ACCEPTED`.  Its step-relevant planning
  list identified recurrence, burn, dual conversion, self-map, derivative,
  and horizon units.  Every one of those claims is independently derived
  above; the diagnostic is not evidence, a cited result, an assumption
  source, or authority to alter the target.
