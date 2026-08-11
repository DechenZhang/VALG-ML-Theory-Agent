# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: On an event of probability at least
  `1-delta_sm`, prove realized norm retention, `q_real <= q_*`,
  `Gamma <= 1.01`, and every cyclic Khatri--Rao Gram floor
  `1-q_*^2`, with the three perturbation scales exposed separately.
- Depends on: None.
- Assumptions used: `assump:base-scale`, `assump:cumulative-gram`,
  `assump:base-weight-balance`, `assump:gaussian-smoothing`, and
  `assump:smoothing-margin` (all primitive).
- Technical challenge: normalized Gaussian Gram perturbation and row/union
  bookkeeping.
- Intended proof tool or cited result: Gaussian concentration, an exact
  normalization expansion, the Schur-product identity, and Gershgorin's
  theorem.
- Output target: `E_sm`.
- Rate objective: the smoothed-instance geometry objective with explicit
  dependence on `n,r,kappa_0,rho,delta_sm` and an explicit probability
  conversion.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:base-scale`: every unperturbed raw column norm is in
    `[kappa_0^(-1),kappa_0]`.
  - `assump:cumulative-gram`: every unperturbed normalized factor matrix has
    off-diagonal absolute row mass at most `q_*/4`.
  - `assump:base-weight-balance`: the unperturbed CP weights have ratio at
    most `1+1/800`.
  - `assump:gaussian-smoothing`: the `3r` perturbations are independent
    `N(0,rho^2 I_n/n)` vectors.
  - `assump:smoothing-margin`: with the notation introduced below,
    `s <= q_*/128` and `r(s+s^2)t <= q_*/32`.
- Derived invariants supplied by accepted dependencies: None. This step has
  no dependency artifacts.
- Local conditional hypotheses: None. The raw concentration event
  `E_G` used below is proved in this step; it is not assumed.
- Parameter-domain note: the formalized probability statement is on its
  declared confidence domain `0 < delta_sm < 1`. This is a domain convention,
  not an additional realized-geometry premise.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:base-scale} and \ref{assump:gaussian-smoothing}, for `L=log(9r^2/delta_sm)` the simultaneous norm, directional, and cross-quadratic event `E_G` defined below has probability at least `1-delta_sm`. | Supplies one finite static event and the exact union conversion. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:base-scale}, \ref{assump:gaussian-smoothing}, and \ref{assump:smoothing-margin}, on `E_G` every normalization factor has the exact form `d=1+x+nu`, with a separately bounded second-order normalization reserve, and every realized raw column has norm at least `(2kappa_0)^(-1)`. | Proves norm retention and prevents normalization from hiding a row factor. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:cumulative-gram} and \ref{assump:smoothing-margin}, on `E_G` each realized normalized factor matrix has absolute off-diagonal row mass at most `q_*`. | Proves `q_real <= q_*` with separate linear, quadratic, and normalization ledgers. |
| `unit_004` | lemma | Under Assumption~\ref{assump:base-weight-balance} and the normalization conclusion of Lemma~\ref{lem:step-001-normalization}, the realized CP weight ratio is at most `1.01`. | Proves the target weight comparison. |
| `unit_005` | claim | Under the realized Gram-row conclusion of Proposition~\ref{prop:step-001-gram}, every cyclic Khatri--Rao Gram has smallest eigenvalue at least `1-q_*^2`. | Proves the target conditioning floor. |
| `unit_006` | proposition | Under all five allowed primitive assumptions and Propositions~\ref{prop:step-001-gaussian-event}, \ref{prop:step-001-gram}, Lemmas~\ref{lem:step-001-normalization}, \ref{lem:step-001-weights}, and Claim~\ref{claim:step-001-kr-floor}, the event `E_sm` has probability at least `1-delta_sm` and has exactly the target interface. | Assembles and exports `E_sm`. |

Atomic step = no. The probability union, normalization algebra, Gram-row
concentration, weight comparison, and spectral floor are independent
nontrivial subclaims and are separated above.

## Cited Result Applications

### Standard Gaussian scalar and norm bounds

- Source or name: the one-dimensional Gaussian Chernoff bound and Gaussian
  concentration for the Euclidean norm.
- Restated statement: if `Z` is standard normal and `X` is
  `N(0,I_n)`, then for every `u>0`,
  \[
  \Pr\{|Z|>\sqrt{2u}\}\le 2e^{-u},\qquad
  \Pr\{\|X\|_2>\sqrt n+\sqrt{2u}\}\le e^{-u}.
  \]
- Instantiated objects: `u=2L` for every base-direction projection and
  `u=L` for each of the `3r` perturbation norms.
- Assumptions and discharge: Gaussianity and the covariance rescaling follow
  from `assump:gaussian-smoothing`; base directions are deterministic unit
  vectors by the definitions in `setting.md`.
- Conclusion used: the first two defining clauses of `E_G` in
  Proposition~\ref{prop:step-001-gaussian-event}.

### Independent Gaussian bilinear bound

- Source or name: the bilinear consequence of the Laurent--Massart
  chi-square inequalities.
- Restated statement: if `X,Y` are independent `N(0,I_n)` and `u>0`, then
  \[
  \Pr\left\{\left|{X^\top Y\over n}\right|>
      2\sqrt{u/n}+2u/n\right\}\le4e^{-u}.
  \]
  Indeed, `(X+Y)/sqrt(2)` and `(X-Y)/sqrt(2)` are independent standard
  Gaussian vectors, `X^T Y` is half the difference of their squared norms,
  and the two Laurent--Massart bounds give the display by a union bound.
- Instantiated objects: distinct relative perturbations in the same mode,
  with `u=2L`. The displayed threshold is at most
  `4(t+t^2)` after division by the corresponding standard deviations.
- Assumptions and discharge: distinct column perturbations are independent by
  `assump:gaussian-smoothing`.
- Conclusion used: the cross-quadratic clause of `E_G`.

### Gershgorin's theorem

- Source or name: Gershgorin's circle theorem for a real symmetric matrix.
- Restated statement: if a real symmetric matrix `H` has diagonal entries
  one and every off-diagonal absolute row sum at most `eta`, then
  `lambda_min(H) >= 1-eta`.
- Instantiated object: each of the three realized Khatri--Rao Gram matrices,
  with `eta=q_*^2`.
- Assumptions and discharge: symmetry and unit diagonal follow from being a
  Gram matrix of unit-column factors; the off-diagonal row bound is proved in
  Claim~\ref{claim:step-001-kr-floor}.
- Conclusion used: the cyclic Khatri--Rao floor.

### Local-result use map

No dependency step or paper theorem is used. Proposition~\ref{prop:step-001-gaussian-event}
produces `E_G`; Lemma~\ref{lem:step-001-normalization} translates it into
norm and denominator control; Proposition~\ref{prop:step-001-gram} and
Lemma~\ref{lem:step-001-weights} consume that control independently;
Claim~\ref{claim:step-001-kr-floor} consumes only the Gram-row conclusion;
and Proposition~\ref{prop:step-001-event} packages these proved conclusions.

For explicit local-result provenance, the results consumed after their
derivation are restated here in current notation:

- Proposition~\ref{prop:step-001-gaussian-event}: under the Gaussian
  smoothing law and the declared confidence domain, `E_G` simultaneously
  satisfies (1)--(3) with probability at least `1-delta_sm`; its assumptions
  are discharged by the raw perturbation law and its proof is the union
  calculation (4)--(6).
- Lemma~\ref{lem:step-001-normalization}: under `E_G` and the two scalar
  smoothing margins, `d_(Mj)=1+x_(Mj)+nu_(Mj)`, `0<=nu_(Mj)<=nu_*`, and
  `|d_(Mj)-1|<=q_*/32`; its assumptions are discharged in (10)--(12), and
  the raw-column floor follows in (13).
- Proposition~\ref{prop:step-001-gram}: under the base row slack and the
  preceding normalization result, every realized factor row has mass at most
  `B_*/(1-d_*)^2<q_*`; its assumptions are discharged by (15)--(20).
- Lemma~\ref{lem:step-001-weights}: under the base weight ratio and the
  normalization result, `Gamma<=1.01`; its assumptions are discharged by the
  exact product identity and (22).
- Claim~\ref{claim:step-001-kr-floor}: under the three realized Gram-row
  bounds, every pairwise Khatri--Rao Gram has diagonal one and row mass at
  most `q_*^2`, hence eigenvalue floor `1-q_*^2`; its assumptions are
  discharged in (24) and Gershgorin.
- Proposition~\ref{prop:step-001-event}: under the five primitive source
  assumptions, the intersection of the proved `E_G` event and these four
  consequences is the public `E_sm` event with the target probability and
  interface. This is discharged by the preceding five local results and does
  not assume any generated condition.

## Local Derivation

For a unified mode index `M in {U,V,W}`, let
`bar e_(Mj)` denote respectively `bar u_j,bar v_j,bar w_j`, let
`alpha_(Mj)` denote respectively
`||bar a_j||_2,||bar b_j||_2,||bar c_j||_2`, and define the relative
perturbation
\[
h_{Mj}:={g_{Mj}\over\alpha_{Mj}},\qquad
s_{Mj}:={\rho\over\alpha_{Mj}}\le s:=\kappa _0\rho,qquad
d_{Mj}:=\|\bar e_{Mj}+h_{Mj}\|_2.
\]
Here `g_(Uj),g_(Vj),g_(Wj)` mean the setting's
`g_j^(A),g_j^(B),g_j^(C)`, respectively. Thus the realized unit direction is
`e_(Mj)=(bar e_(Mj)+h_(Mj))/d_(Mj)` and the realized raw norm is
`alpha_(Mj)d_(Mj)`.

Set
\[
L:=\log {9r^2\over\delta_{\rm sm}},\qquad
t:=\sqrt{L/n},\qquad
\ell_{\rm dir}:=2st,
\]
\[
b_{\rm quad}:=4s^2(t+t^2),\qquad
h_*:=s(1+\sqrt2t),\qquad
\nu_*:={h_*^2\over2(1-h_*)},\qquad
d_*:=\ell_{\rm dir}+\nu_*.
\]
All these quantities are deterministic functions of setting parameters.

### unit_001: proposition

**Proposition (simultaneous relative Gaussian event).**
\label{prop:step-001-gaussian-event}
Under Assumptions~\ref{assump:base-scale} and
\ref{assump:gaussian-smoothing}, and on the declared domain
`0<delta_sm<1`, the event `E_G` on which, simultaneously for every mode and
all indicated indices,
\[
\|h_{Mj}\|_2\le s_{Mj}(1+\sqrt2t)\le h_*,                                      \tag{1}
\]
\[
|\langle\bar e_{M\ell},h_{Mj}\rangle|\le \ell_{\rm dir}
\quad(j,\ell\in[r]),                                                            \tag{2}
\]
\[
|\langle h_{Mj},h_{M\ell}\rangle|\le b_{\rm quad}
\quad(j\ne\ell),                                                              \tag{3}
\]
has probability at least `1-delta_sm` over the smoothing draw.

**Proof.** Write `h_(Mj)=(s_(Mj)/sqrt(n))X_(Mj)` with independent standard
Gaussian vectors. The Gaussian norm bound at `u=L` gives failure probability
at most `e^(-L)` for each of (1), hence
\[
\Pr\{\text{some (1) fails}\}\le3r e^{-L}
={\delta_{\rm sm}\over3r}\le{\delta_{\rm sm}\over9}.                           \tag{4}
\]
For each of the at most `3r^2` directional variables, the scalar Gaussian
bound at `u=2L` gives threshold
`2s_(Mj)t <= ell_dir` and failure probability `2e^(-2L)`. Therefore
\[
\Pr\{\text{some (2) fails}\}
 \le6r^2e^{-2L}={2\delta_{\rm sm}^2\over27r^2}
 \le {2\delta_{\rm sm}\over243}.                                               \tag{5}
\]
For each of the fewer than `3r^2/2` unordered within-mode pairs, the
bilinear bound at `u=2L` yields
\[
|\langle h_{Mj},h_{M\ell}\rangle|
 \le s_{Mj}s_{M\ell}(2\sqrt2t+4t^2)
 \le4s^2(t+t^2)=b_{\rm quad}.
\]
Its union failure probability is at most
\[
6r^2e^{-2L}={2\delta_{\rm sm}^2\over27r^2}
\le {2\delta_{\rm sm}\over243}.                                               \tag{6}
\]
The sum of (4)--(6) is at most
`31 delta_sm/243 < delta_sm`. This proves the claim. \(\square\)

### unit_002: lemma

**Lemma (exact normalization reserve and norm retention).**
\label{lem:step-001-normalization}
Under Assumptions~\ref{assump:base-scale},
\ref{assump:gaussian-smoothing}, and
\ref{assump:smoothing-margin}, on the event in
Proposition~\ref{prop:step-001-gaussian-event}, every mode and column obeys
\[
d_{Mj}=1+x_{Mj}+\nu_{Mj},\qquad
x_{Mj}:=\langle\bar e_{Mj},h_{Mj}\rangle,qquad
0\le\nu_{Mj}\le\nu_*,                                                         \tag{7}
\]
and
\[
|d_{Mj}-1|\le d_*\le q_*/32.                                                    \tag{8}
\]
Consequently every realized raw column has norm at least
`(2kappa_0)^(-1)`.

**Proof.** Decompose `h=x bar e+h_perp`, where `h_perp` is orthogonal to
`bar e`. Since `||h||<=h_*`,
\[
d^2=(1+x)^2+\|h_\perp\|_2^2,qquad
d-(1+x)={\|h_\perp\|_2^2\over d+1+x}.                                         \tag{9}
\]
The scalar margin implies
\[
st\le {q_*\over32r}\le {q_*\over96},\qquad
h_*\le q_*\left({1\over128}+{\sqrt2\over96}\right)<{q_*\over40}<1.           \tag{10}
\]
Thus `d+1+x >= 2(1-h_*)`, and (9) proves (7). More explicitly,
\[
\nu_*={s^2\over2(1-h_*)}
       +{\sqrt2s^2t\over1-h_*}
       +{s^2t^2\over1-h_*}.                                                     \tag{11}
\]
This is the promised normalization ledger: its first term is at the
`kappa_0^2 rho^2` scale, its second is the centered-quadratic
`kappa_0^2 rho^2 sqrt(L/n)` scale, and its final confidence-square correction
is `(kappa_0 rho sqrt(L/n))^2`. It is not multiplied by a row length.

From (10), `nu_* <= q_*^2/3000`. Equation (2) of the Gaussian event gives
`|x|<=ell_dir`, so, using `r>=3`,
\[
d_*\le {q_*\over16r}+{q_*^2\over3000}
 \le {q_*\over48}+{q_*\over96}={q_*\over32}.                                  \tag{12}
\]
Finally,
\[
\|\bar f_{Mj}+g_{Mj}\|_2=\alpha_{Mj}d_{Mj}
\ge\kappa_0^{-1}(1-d_*)>(2\kappa_0)^{-1}.                                     \tag{13}
\]
This also proves that every denominator used below is positive. \(\square\)

### unit_003: proposition

**Proposition (normalized Gram rows with a separated perturbation ledger).**
\label{prop:step-001-gram}
Under Assumptions~\ref{assump:cumulative-gram} and
\ref{assump:smoothing-margin}, on the event of
Proposition~\ref{prop:step-001-gaussian-event} and with the normalization
control of Lemma~\ref{lem:step-001-normalization}, every realized unit-factor
matrix `E_M` in `{U,V,W}` satisfies
\[
q(E_M)=\max_j\sum_{\ell\ne j}
 |\langle e_{Mj},e_{M\ell}\rangle|\le q_* .                                   \tag{14}
\]

**Proof.** For `j ne ell`, exact expansion before normalization gives
\[
\langle e_{Mj},e_{M\ell}\rangle
={\langle\bar e_{Mj},\bar e_{M\ell}\rangle
 +\langle\bar e_{Mj},h_{M\ell}\rangle
 +\langle h_{Mj},\bar e_{M\ell}\rangle
 +\langle h_{Mj},h_{M\ell}\rangle
 \over d_{Mj}d_{M\ell}}.                                                       \tag{15}
\]
The four numerator classes in one fixed row have the following explicit
budgets:
\[
\begin{array}{c|c|c}
\text{class}&\text{per-entry scale after its finite union}&\text{row budget}\\
\hline
\text{base}&\text{setting quantity}&q_*/4\\
\text{linear directional}&2st\ \text{for each of two terms}&4rst\\
\text{cross quadratic}&4s^2(t+t^2)&4rs^2(t+t^2).
\end{array}                                                                     \tag{16}
\]
The first two stochastic scales before the union factor are respectively
`s/sqrt(n)=kappa_0 rho/sqrt(n)` and
`s^2/sqrt(n)=kappa_0^2 rho^2/sqrt(n)`. The factors `sqrt(L)` and `r` in
(16) are, respectively, the finite union and row-sum factors. The
`4s^2t^2` term is the explicit subexponential correction, not a hidden
normalization term.

The scalar margin now gives
\[
4rst\le q_*/8,                                                                  \tag{17}
\]
and
\[
4rs^2(t+t^2)
 \le {q_*\over8}+4(rst)(st)
 \le {q_*\over8}+{q_*^2\over768}.                                              \tag{18}
\]
Hence the absolute numerator row mass in (15) is at most
\[
B_*:={q_*\over2}+{q_*^2\over768}.                                               \tag{19}
\]
The exact normalization expansion (7) says that first-order directional
normalization is included in `|x|<=ell_dir`, while the genuinely
second-order normalization reserve is `nu_*` in (11). Both enter (15) only
through the divisor. Therefore there is no additional row factor, and
\[
\sum_{\ell\ne j}|\langle e_{Mj},e_{M\ell}\rangle|
 \le {B_*\over(1-d_*)^2}
 \le {q_*/2+q_*^2/768\over(1-q_*/32)^2}<q_*.                                   \tag{20}
\]
The last inequality is direct numerical arithmetic for `q_*=1/4096`
(the left side is less than `0.501q_*`). It holds for every row and mode,
proving (14). \(\square\)

### unit_004: lemma

**Lemma (realized weight comparison).**
\label{lem:step-001-weights}
Under Assumption~\ref{assump:base-weight-balance} and the normalization
conclusion of Lemma~\ref{lem:step-001-normalization}, the realized weights
satisfy
\[
\Gamma={\max_j\lambda_j\over\min_j\lambda_j}\le1.01.                          \tag{21}
\]

**Proof.** The exact raw-norm identity gives
\[
\lambda_j=\bar\lambda_jd_{Uj}d_{Vj}d_{Wj}.
\]
Consequently
\[
\Gamma\le\left(1+{1\over800}\right)
 \left({1+d_*\over1-d_*}\right)^3.                                            \tag{22}
\]
Since `d_*<=q_*/32<10^(-5)`,
\[
3\log{1+d_*\over1-d_*}
 \le {6d_*\over1-d_*^2}<6.1\times10^{-5}.
\]
Thus the right side of (22) is less than
`(1+1/800)exp(6.1e-5)<1.002<1.01`. \(\square\)

### unit_005: claim

**Claim (cyclic Khatri--Rao spectral floor).**
\label{claim:step-001-kr-floor}
Under the conclusion of Proposition~\ref{prop:step-001-gram}, for each cyclic
choice of two distinct realized factor matrices `E_(M')` and `E_(M'')`,
\[
\lambda_{\min}\left((E_{M''}\odot E_{M'})^\top
 (E_{M''}\odot E_{M'})\right)\ge1-q_*^2.                                      \tag{23}
\]

**Proof.** Put `H_(M')=E_(M')^T E_(M')` and similarly for `M''`. The
Khatri--Rao Gram identity is exact:
\[
(E_{M''}\odot E_{M'})^\top(E_{M''}\odot E_{M'})
=H_{M''}\circ H_{M'}.
\]
Its diagonal is one. For every row `j`, Proposition~\ref{prop:step-001-gram}
gives
\[
\sum_{\ell\ne j}|(H_{M''})_{j\ell}(H_{M'})_{j\ell}|
\le\left(\sum_{\ell\ne j}|(H_{M''})_{j\ell}|\right)
    \left(\sum_{\ell\ne j}|(H_{M'})_{j\ell}|\right)
\le q_*^2.                                                                      \tag{24}
\]
Gershgorin's theorem now gives (23). The same argument applies to all three
cyclic pairs. \(\square\)

### unit_006: proposition

**Proposition (the exported smoothed-instance event).**
\label{prop:step-001-event}
Under Assumptions~\ref{assump:base-scale},
\ref{assump:cumulative-gram}, \ref{assump:base-weight-balance},
\ref{assump:gaussian-smoothing}, and \ref{assump:smoothing-margin}, there is
an event `E_sm` of smoothing probability at least `1-delta_sm` on which:

1. every realized raw factor column has norm at least
   `(2kappa_0)^(-1)`;
2. `q_real<=q_*`;
3. `Gamma<=1.01`; and
4. every cyclic Khatri--Rao Gram has smallest eigenvalue at least
   `1-q_*^2`.

The event is static and is determined before any proposal or restart
randomness is drawn.

**Proof.** Take `E_sm` to be `E_G` together with the four conclusions proved
on `E_G` by Lemma~\ref{lem:step-001-normalization},
Proposition~\ref{prop:step-001-gram}, Lemma~\ref{lem:step-001-weights}, and
Claim~\ref{claim:step-001-kr-floor}. These conclusions fail nowhere on
`E_G`, and Proposition~\ref{prop:step-001-gaussian-event} gives
`Pr(E_G)>=1-delta_sm`. The smoothing perturbations are the only random
objects used in its definition. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-001-gaussian-event} creates a single legal derived
event from the five primitive source conditions and gives the exact finite
union conversion. Lemma~\ref{lem:step-001-normalization} proves both the raw
column norm floor and the denominator reserve without treating realized norm
control as an assumption. Proposition~\ref{prop:step-001-gram} then composes
the base `q_*/4` slack with the separately displayed linear directional,
cross-quadratic, and normalization contributions to prove `q_real<=q_*`.
Lemma~\ref{lem:step-001-weights} uses the same proved normalization factors
to establish `Gamma<=1.01`. Finally,
Claim~\ref{claim:step-001-kr-floor} applies the exact Khatri--Rao Gram identity
and checked Gershgorin application to obtain the floor `1-q_*^2` for all
three cyclic designs. Proposition~\ref{prop:step-001-event} packages exactly
these conclusions as `E_sm` with probability at least `1-delta_sm`. This is
the exact `step_001` claim and supplies its downstream interface without any
dependency or generated-condition premise.

## Explicit Rate Audit

- Exposed variables: `n,r,kappa_0,rho,delta_sm`; the fixed numerical
  threshold `q_*=1/4096`; the base row slack `bar q<=q_*/4`; and the base
  weight slack `1+1/800`.
- Hidden constants may depend on: only the displayed universal numerical
  constants in the Gaussian inequalities (`2,4,sqrt(2)`).
- Hidden constants may not depend on: `n,r,kappa_0,rho,delta_sm`, the base
  triple, the realized perturbations, proposal randomness, or a generated
  condition number.
- Fixed quantities: the deterministic base triple and `q_*` are fixed while
  taking smoothing probability. No proposal or restart variable is present.
- Probability mode: high probability over the once-drawn smoothing
  perturbations, `Pr_sm(E_sm)>=1-delta_sm`. The exact union loss is at most
  `31delta_sm/243`; it is relaxed only at the final line to `delta_sm`.
- Horizon mode: static/fixed-instance. There is no trajectory, iteration, or
  horizon union in this step.
- Norm mode: Euclidean norm for columns, absolute induced row `l1` mass for
  factor Grams, and the smallest eigenvalue of the symmetric Khatri--Rao
  Gram.
- Admissibility conditions and auxiliary tolerances:
  `s=kappa_0 rho<=q_*/128`,
  `t=sqrt(log(9r^2/delta_sm)/n)`, and
  `r(s+s^2)t<=q_*/32`. No unlisted tolerance is used.
- Linear directional scale:
  `kappa_0 rho/sqrt(n)` per scalar before concentration, multiplied by
  `sqrt(log(9r^2/delta_sm))` for the finite union and by `r` for a Gram row.
- Quadratic scale:
  `kappa_0^2 rho^2/sqrt(n)` before concentration, with the same square-root
  log and row factors; the bilinear subexponential correction
  `kappa_0^2 rho^2 log(9r^2/delta_sm)/n` is displayed and bounded by
  `4(rst)(st)<=q_*^2/768` after its row factor.
- Normalization scale: the exact second-order remainder (11) begins at
  `kappa_0^2 rho^2`, has the displayed centered-quadratic correction
  `kappa_0^2 rho^2 t`, and has confidence-square correction `(st)^2`. It
  enters as a common divisor and therefore receives no extra row factor.
- Term absorption or simplification inequalities:
  \[
  rst\le q_*/32,\quad rs^2t\le q_*/32,\quad st\le q_*/96,
  \]
  \[
  h_*<q_*/40,\quad d_*\le q_*/32,
  \]
  \[
  B_*\le q_*/2+q_*^2/768,qquad
  B_*/(1-d_*)^2<q_*.
  \]
- Probability conversion: equations (4)--(6) explicitly union `3r` norm
  events, `3r^2` directional events, and fewer than `3r^2/2` bilinear
  events. There is no conversion between instance and initialization
  probabilities in this step.
- Contribution to any Rate Specialization Bridge: `E_sm` is the static
  instance-side producer; later steps may condition on it without adding a
  confidence factor to `k`.
- Baseline-reduction check: in the declared deterministic algebraic
  specialization `rho=0`, `s=0` (with `t` still defined by the confidence
  parameter), all perturbation ledgers vanish,
  `d_(Mj)=1`, and the realized factors and weights equal the base factors and
  weights. For an orthogonal equal-weight base this gives `q_real=0`,
  `Gamma=1`, and identity Khatri--Rao Grams exactly. This is a deterministic
  reduction only; it does not extend the positive-`rho` probability premise.

## Blockers

None.

## Notation And Assumption Notes

- `E_sm` is the sole `public-facing` helper object. It is a derived static
  event proved by Proposition~\ref{prop:step-001-event}; it is not a primitive
  condition. Its downstream consumers are the proposal-window, recurrence,
  selected-state transfer, and local ALS steps named in the accepted sketch.
- `E_G` is `proof-local`. It is generated and proved in
  Proposition~\ref{prop:step-001-gaussian-event}; no downstream step needs
  its raw clauses.
- The unified mode symbols `bar e_(Mj),alpha_(Mj),h_(Mj),s_(Mj),d_(Mj)` are
  `appendix-local` translations of the original setting objects. The mapping
  to `bar u,bar v,bar w`, the three raw base norms, and the three perturbation
  families is stated before the derivation. They introduce no new condition.
- `L,t,s,ell_dir,b_quad,h_*,nu_*,d_*` are `appendix-local` deterministic
  expressions defined directly from setting quantities. Their finiteness and
  every bound used on them follow from `assump:smoothing-margin` and are
  proved in Lemma~\ref{lem:step-001-normalization}; none is a free constant or
  an admissibility premise.
- `x_(Mj)` and `nu_(Mj)` are `proof-local` components of the exact identity
  (7). Their bounds are proved in Lemma~\ref{lem:step-001-normalization}.
  In particular, `nu_(Mj)` is not an assumed normalization remainder.
- `B_*` is a `proof-local` row ledger proved in
  Proposition~\ref{prop:step-001-gram}. It is not exported.
- Every generated-object or realized-geometry fact used in the target
  assembly is proved in this step. There are no accepted dependency claims,
  local basin hypotheses, trajectory conditions, or recurrence assumptions.
- No external paper result is used. The scalar/norm Gaussian inequalities,
  bilinear chi-square consequence, exact Khatri--Rao identity, and
  Gershgorin theorem are restated in current notation with their hypotheses
  discharged above.
- The accepted `global_proof.md` was read only because its paired
  `global_proof_review.md` has status `ACCEPTED`. Its step-relevant planning
  advice was the decomposition into norm retention, normalized Gram rows,
  realized weights, and the Khatri--Rao corollary. No diagnostic statement was
  used as evidence, a cited result, an assumption source, or authority to
  change the target claim.
