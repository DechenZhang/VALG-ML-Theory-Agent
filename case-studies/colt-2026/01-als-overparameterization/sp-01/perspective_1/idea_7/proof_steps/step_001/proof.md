# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: On a single event of probability at least
  $1-\delta_{\rm sm}$, derive realized norm retention,
  $q_{\rm real}\le q_*$, $\Gamma\le1.01$, and every target
  Khatri--Rao Gram floor $1-q_*^2$, exposing the linear, quadratic,
  normalization, row-sum, and union contributions separately.
- Depends on: None.
- Assumptions used: `assump:base-scale`, `assump:cumulative-gram`,
  `assump:base-weight-balance`, `assump:gaussian-smoothing`, and
  `assump:smoothing-margin` (all primitive).
- Technical challenge: normalized Gaussian perturbation and finite-union
  bookkeeping.
- Intended proof tool or cited result: direct Gaussian concentration,
  normalization expansion, Schur product, and Gershgorin.
- Output target: $E_{\rm sm}$.
- Rate objective: smoothed-instance geometry with explicit
  $n,r,\kappa _0,\rho,\delta_{\rm sm}$, before proposal randomness.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:base-scale`: every unnormalized base column has length in
  $[\kappa _0^{-1},\kappa _0]$. The polynomial upper envelope on
  $\kappa _0$ is not needed in this step.
- `assump:cumulative-gram`: each base normalized mode has cumulative
  off-diagonal Gram mass at most $q_*/4$.
- `assump:base-weight-balance`: the ratio of the largest to the smallest
  base product weight is at most $1+1/800$.
- `assump:gaussian-smoothing`: the $3r$ perturbations are mutually
  independent and have covariance $\rho ^2I_n/n$. The polynomial upper
  envelope on $\rho^{-1}$ is not needed in this step.
- `assump:smoothing-margin`: with
  $L_{\rm sm}=\log(9r^2/\delta_{\rm sm})$,
  
  \[
  \kappa _0\rho\le {q_*\over128},\qquad
  r(\kappa _0\rho+\kappa _0^2\rho^2)
  \sqrt{L_{\rm sm}/n}\le {q_*\over32}.
  \]

Derived invariants supplied by accepted dependencies: None; this is a root
step.

Local conditional hypotheses: None. In particular, no realized norm, Gram,
weight, conditioning, or event-membership fact is assumed. The well-formedness
of `assump:smoothing-margin` entails $\delta_{\rm sm}>0$ and
$L_{\rm sm}\ge0$. The case $\delta_{\rm sm}\ge1$, if considered outside
the theorem's nonvacuous confidence range, is handled by an empty event and
does not require an extra assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:base-scale}, \ref{assump:gaussian-smoothing}, and \ref{assump:smoothing-margin}, one event of probability at least $1-\delta_{\rm sm}$ gives simultaneous directional, norm-energy, and independent quadratic-pair controls in all three modes. | Produces the only random event and performs the full finite union. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:base-scale} and \ref{assump:smoothing-margin}, on the event of Lemma~\ref{lem:step-001-raw-smoothing}, every normalization multiplier has squared deviation at most $h_{\rm sm}\le q_*/20$, and every realized column norm is at least $(2\kappa _0)^{-1}$. | Proves norm retention and controls normalization without assuming nonvanishing. |
| `unit_003` | proposition | Under Assumption~\ref{assump:cumulative-gram}, the smoothing margins, and Lemmas~\ref{lem:step-001-raw-smoothing} and \ref{lem:step-001-normalization}, every realized normalized mode has both induced off-diagonal Gram masses at most $q_*$. | Proves $q_{\rm real}\le q_*$, with separate row-sum charges. |
| `unit_004` | lemma | Under Assumption~\ref{assump:base-weight-balance} and Lemma~\ref{lem:step-001-normalization}, the realized product weights satisfy $\Gamma\le1.01$. | Proves the realized weight-ratio conclusion. |
| `unit_005` | proposition | Under Proposition~\ref{prop:step-001-realized-gram}, each target Khatri--Rao Gram has smallest eigenvalue at least $1-q_*^2$. | Converts cumulative modewise Gram control to all three spectral floors. |

## Cited Result Applications

No external paper result is used in this step. The standard tools named in the
sketch are instantiated as follows and are proved in the local units rather
than imported as unchecked citations.

1. **Scalar Gaussian Chernoff bound.** If $Z\sim {\cal N}(0,\sigma^2)$,
   then
   $\Pr\{|Z|>\sigma\sqrt{2t}\}\le2e^{-t}$.
   In Lemma~\ref{lem:step-001-raw-smoothing},
   $Z=\langle \bar m_{M,i},e_{M,j}\rangle$,
   $\sigma^2\le(\kappa _0\rho)^2/n$, and $t=2L_{\rm sm}$.
   The covariance bound comes from `assump:base-scale` and
   `assump:gaussian-smoothing`.
2. **Chi-square upper tail.** For $z\sim {\cal N}(0,I_n)$,
   \[
   \Pr\{\|z\|_2^2>n+2\sqrt{nt}+2t\}\le e^{-t}.
   \]
   It is derived from the exact chi-square moment generating function in
   Lemma~\ref{lem:step-001-raw-smoothing} and applied with
   $t=2L_{\rm sm}$ to every relative perturbation.
3. **Independent Gaussian bilinear tail.** For independent
   $z,z'\sim {\cal N}(0,I_n)$,
   \[
   \Pr\{|z^\top z'|>\sqrt{2nt}+t\}\le2e^{-t}.
   \]
   It is also derived from its exact moment generating function in
   Lemma~\ref{lem:step-001-raw-smoothing} and applied only to distinct
   columns, whose independence is supplied by
   `assump:gaussian-smoothing`.
4. **Khatri--Rao Gram identity and spectral comparison.** For unit-column
   matrices $A,B$,
   $(B\odot A)^\top(B\odot A)=(A^\top A)\circ(B^\top B)$.
   Proposition~\ref{prop:step-001-khatri-rao} proves this identity
   entrywise and proves the needed spectral floor directly by a quadratic-form
   estimate, so no unverified Schur-product or Gershgorin theorem is consumed.

The local-result applications are: Lemma~\ref{lem:step-001-raw-smoothing}
feeds Lemma~\ref{lem:step-001-normalization} and
Proposition~\ref{prop:step-001-realized-gram};
Lemma~\ref{lem:step-001-normalization} feeds
Proposition~\ref{prop:step-001-realized-gram} and
Lemma~\ref{lem:step-001-weight}; and
Proposition~\ref{prop:step-001-realized-gram} feeds
Proposition~\ref{prop:step-001-khatri-rao}. Their assumptions are
discharged in the statements and proofs below.

## Local Derivation

For compactness, index the three modes by $M\in\{U,V,W\}$. Let
$\bar x_{U,j}=\bar a_j$, $\bar x_{V,j}=\bar b_j$, and
$\bar x_{W,j}=\bar c_j$, with perturbations $g_{M,j}$ and base unit
directions $\bar m_{U,j}=\bar u_j$,
$\bar m_{V,j}=\bar v_j$, and
$\bar m_{W,j}=\bar w_j$. Put
\[
\beta_{M,j}:=\|\bar x_{M,j}\|_2,\qquad
e_{M,j}:={g_{M,j}\over\beta_{M,j}},\qquad
\nu_{M,j}:=\|\bar m_{M,j}+e_{M,j}\|_2.
\]
Thus the realized column norm is $\beta_{M,j}\nu_{M,j}$, and its
realized unit direction is
$m_{M,j}=(\bar m_{M,j}+e_{M,j})/\nu_{M,j}$.
For every well-formed value of the confidence parameter, write
\[
L_{\rm sm}:=\log {9r^2\over\delta_{\rm sm}},\qquad
\chi_{\rm sm}:=\sqrt{L_{\rm sm}/n},\qquad
\alpha_{\rm sm}:=\kappa _0\rho,\qquad
\upsilon_{\rm sm}:=\alpha_{\rm sm}\chi_{\rm sm}.
\]
The two scalar smoothing margins imply
\[
\alpha_{\rm sm}\le {q_*\over128},\qquad
r\upsilon_{\rm sm}(1+\alpha_{\rm sm})\le {q_*\over32}.
\tag{1}
\]
In particular,
\[
r\upsilon_{\rm sm}\le {q_*\over32},\qquad
r\alpha_{\rm sm}\upsilon_{\rm sm}\le {q_*\over32},\qquad
\upsilon_{\rm sm}\le {q_*\over96},
\tag{2}
\]
where the last inequality uses $r\ge3$.

### unit_001: lemma

**Lemma (Simultaneous raw Gaussian smoothing controls;
\label{lem:step-001-raw-smoothing}).**
Under Assumptions~\ref{assump:base-scale},
\ref{assump:gaussian-smoothing}, and
\ref{assump:smoothing-margin}, there is an event
$E_{\rm raw}$, measurable with respect to the once-drawn $3r$
smoothing perturbations, such that
$\Pr(E_{\rm raw})\ge1-\delta_{\rm sm}$. In the nonvacuous confidence
case $0<\delta_{\rm sm}<1$, the event simultaneously satisfies, for all
modes $M$, all $i,j\in[r]$, and all distinct $i,j$, respectively,
\[
|\langle\bar m_{M,i},e_{M,j}\rangle|
\le2\upsilon_{\rm sm},
\tag{3}
\]
\[
\|e_{M,j}\|_2^2\le
\alpha_{\rm sm}^2
\bigl(1+2\sqrt2\,\chi_{\rm sm}+4\chi_{\rm sm}^2\bigr),
\tag{4}
\]
\[
|\langle e_{M,i},e_{M,j}\rangle|
\le\alpha_{\rm sm}^2
\bigl(2\chi_{\rm sm}+2\chi_{\rm sm}^2\bigr).
\tag{5}
\]
If $\delta_{\rm sm}\ge1$, one may take $E_{\rm raw}=\varnothing$,
for which the probability and conditional conclusions remain valid.

**Proof / justification.**
We prove the three tail statements from exact moment generating functions.
For $Z\sim {\cal N}(0,\sigma^2)$, Chernoff's inequality applied to
$\mathbb E e^{\lambda Z}=e^{\lambda^2\sigma^2/2}$, and then to
$-Z$, gives
\[
\Pr\{|Z|>\sigma\sqrt{2t}\}\le2e^{-t}.
\tag{6}
\]
For $z\sim {\cal N}(0,I_n)$ and $0\le\lambda<1/2$,
\[
\log\mathbb E e^{\lambda(\|z\|_2^2-n)}
=-n\lambda-{n\over2}\log(1-2\lambda)
\le {n\lambda^2\over1-2\lambda}.
\tag{7}
\]
The inequality follows by expanding the nonnegative power series of
$-\log(1-2\lambda)-2\lambda$. For $a=\sqrt{t/n}$, substitution of
$\lambda=a/(1+2a)$ in the Chernoff bound gives
\[
\Pr\{\|z\|_2^2-n>2\sqrt{nt}+2t\}\le e^{-t}.
\tag{8}
\]
Indeed, the exponent at this value of $\lambda$ is exactly at most
$-t$.

For independent $z,z'\sim{\cal N}(0,I_n)$, direct conditioning on either
vector gives, for $|\lambda|<1$,
\[
\mathbb E e^{\lambda z^\top z'}=(1-\lambda^2)^{-n/2},
\qquad
\log\mathbb E e^{\lambda z^\top z'}
\le {n\lambda^2\over2(1-\lambda)}
\quad(0\le\lambda<1).
\tag{9}
\]
For $a=\sqrt{2t/n}$, substitution of
$\lambda=a/(1+a)$ gives
\[
\Pr\{z^\top z'>\sqrt{2nt}+t\}\le e^{-t}.
\]
The law is symmetric, hence
\[
\Pr\{|z^\top z'|>\sqrt{2nt}+t\}\le2e^{-t}.
\tag{10}
\]

Now take $t=2L_{\rm sm}$. Since
$\beta_{M,j}^{-1}\le\kappa _0$, the variance in (3) is at most
$\alpha_{\rm sm}^2/n$, and (6) gives (3) with failure probability at
most $2e^{-2L_{\rm sm}}$ for each ordered triple $(M,i,j)$.
Equation (8), after multiplying by
$\rho^2/(n\beta_{M,j}^2)\le\alpha_{\rm sm}^2/n$, gives (4) with failure
at most $e^{-2L_{\rm sm}}$ per $(M,j)$. For distinct columns,
independence in Assumption~\ref{assump:gaussian-smoothing} and (10)
give (5) with failure at most $2e^{-2L_{\rm sm}}$ per unordered pair and
mode.

There are $3r^2$ directional quantities, $3r$ norm quantities, and
$3\binom r2$ unordered bilinear quantities. Therefore the one finite
union has failure probability at most
\[
6r^2e^{-2L_{\rm sm}}+3re^{-2L_{\rm sm}}
+6{r\choose2}e^{-2L_{\rm sm}}
=9r^2e^{-2L_{\rm sm}}
={\delta_{\rm sm}^2\over9r^2}
\le\delta_{\rm sm}.
\tag{11}
\]
This proves the nonvacuous case. If $\delta_{\rm sm}\ge1$, then
$\Pr(\varnothing)=0\ge1-\delta_{\rm sm}$, proving the stated boundary
case without importing another assumption. $\square$

### unit_002: lemma

**Lemma (Normalization reserve and column-norm retention;
\label{lem:step-001-normalization}).**
Under Assumptions~\ref{assump:base-scale} and
\ref{assump:smoothing-margin}, on the event in
Lemma~\ref{lem:step-001-raw-smoothing}, define
\[
h_{\rm sm}:=4\upsilon_{\rm sm}+\alpha_{\rm sm}^2
+2\sqrt2\,\alpha_{\rm sm}\upsilon_{\rm sm}
+4\upsilon_{\rm sm}^2.
\tag{12}
\]
Then, simultaneously for all modes and columns,
\[
|\nu_{M,j}^2-1|\le h_{\rm sm}\le {q_*\over20},
\tag{13}
\]
and
\[
\|\bar x_{M,j}+g_{M,j}\|_2
=\beta_{M,j}\nu_{M,j}\ge {1\over2\kappa _0}.
\tag{14}
\]

**Proof / justification.**
The exact normalization expansion is
\[
\nu_{M,j}^2-1
=2\langle\bar m_{M,j},e_{M,j}\rangle+\|e_{M,j}\|_2^2.
\tag{15}
\]
Equations (3)--(4) bound its absolute value by (12): the first term is the
own-direction linear contribution $4\upsilon_{\rm sm}$; the norm energy
contributes the deterministic normalization scale
$\alpha_{\rm sm}^2$, the quadratic fluctuation
$2\sqrt2\,\alpha_{\rm sm}\upsilon_{\rm sm}$, and the confidence
correction $4\upsilon_{\rm sm}^2$.

Using (1)--(2), $q_*=1/4096\le1$, and $2\sqrt2<3$,
\[
\begin{aligned}
h_{\rm sm}
&\le {q_*\over24}+{q_*\over16384}
  +{q_*\over4096}+{q_*\over2304}\\
&<{q_*\over20}.
\end{aligned}
\tag{16}
\]
Here the four bounds use, in order,
$\upsilon_{\rm sm}\le q_*/96$,
$\alpha_{\rm sm}\le q_*/128$, and the product of those two bounds;
the last three occurrences of $q_*^2$ were conservatively replaced by
$q_*$. Thus
$\nu_{M,j}\ge\sqrt{1-h_{\rm sm}}>1/2$. Since
$\beta_{M,j}\ge\kappa _0^{-1}$, (14) follows. In particular,
nonvanishing is a conclusion on this event rather than an admissibility
condition. $\square$

### unit_003: proposition

**Proposition (Cumulative Gram control after normalization;
\label{prop:step-001-realized-gram}).**
Under Assumptions~\ref{assump:cumulative-gram} and
\ref{assump:smoothing-margin}, and on the event of
Lemma~\ref{lem:step-001-raw-smoothing} with the normalization reserve
of Lemma~\ref{lem:step-001-normalization}, each realized normalized
mode $G\in\{U,V,W\}$ satisfies
\[
\|G^\top G-I\|_{\rm row,1}
=\|G^\top G-I\|_{\rm col,1}
=q(G)\le q_*.
\tag{17}
\]
Consequently $q_{\rm real}\le q_*$.

**Proof / justification.**
Fix a mode and a row $j$. Before normalization, expansion of every
off-diagonal numerator gives
\[
\begin{aligned}
&\sum_{\ell\ne j}
|\langle\bar m_j+e_j,\bar m_\ell+e_\ell\rangle|\\
&\quad\le q(\bar M)+4(r-1)\upsilon_{\rm sm}
 +(r-1)\alpha_{\rm sm}^2
 (2\chi_{\rm sm}+2\chi_{\rm sm}^2).
\end{aligned}
\tag{18}
\]
The first term is the base row mass. The second is exactly the sum of the
two directional linear terms in (3). The third is the independent quadratic
term (5). By (2),
\[
4(r-1)\upsilon_{\rm sm}\le {q_*\over8},
\tag{19}
\]
while
\[
\begin{aligned}
r\alpha_{\rm sm}^2
(2\chi_{\rm sm}+2\chi_{\rm sm}^2)
&=2r\alpha_{\rm sm}\upsilon_{\rm sm}
  +2r\upsilon_{\rm sm}^2\\
&\le {q_*\over16}+{q_*^2\over1536}
<{q_*\over8}.
\end{aligned}
\tag{20}
\]
Together with $q(\bar M)\le q_*/4$, equations (18)--(20) bound the
unnormalized off-diagonal row mass by $q_*/2$.

Lemma~\ref{lem:step-001-normalization} gives
$\nu_j\nu_\ell\ge1-h_{\rm sm}$. Therefore
\[
\sum_{\ell\ne j}|\langle m_j,m_\ell\rangle|
\le {q_*/2\over1-h_{\rm sm}}
\le {q_*/2\over1-q_*/20}<q_*.
\tag{21}
\]
The realized Gram matrix is symmetric, so its induced row and column
off-diagonal $\ell_1$ masses agree. Maximizing over rows and then over the
three modes proves (17) and $q_{\rm real}\le q_*$. $\square$

### unit_004: lemma

**Lemma (Realized product-weight balance;
\label{lem:step-001-weight}).**
Under Assumption~\ref{assump:base-weight-balance}, on the event where
Lemma~\ref{lem:step-001-normalization} holds, the realized weights obey
\[
\Gamma={\max_j\lambda_j\over\min_j\lambda_j}\le1.01.
\tag{22}
\]

**Proof / justification.**
The exact scale relation is
\[
\lambda_j=\bar\lambda_j
\nu_{U,j}\nu_{V,j}\nu_{W,j}.
\tag{23}
\]
By (13), every squared multiplier is in
$[1-h_{\rm sm},1+h_{\rm sm}]$. Hence
\[
\Gamma\le {801\over800}
\left({1+h_{\rm sm}\over1-h_{\rm sm}}\right)^{3/2}.
\tag{24}
\]
This numerical reserve is much smaller than the required slack. Indeed,
since $h_{\rm sm}\le q_*/20=1/81920$,
\[
\begin{aligned}
\log\Gamma
&\le {1\over800}+{3h_{\rm sm}\over1-h_{\rm sm}}\\
&\le {1\over800}+{3\over81919}
<{1\over500}<{1\over101}
\le\log {101\over100}.
\end{aligned}
\tag{25}
\]
We used $\log(1+x)\le x$,
$\log((1+h)/(1-h))\le2h/(1-h)$, and
$\log(1+x)\ge x/(1+x)$. Exponentiating (25) proves (22). $\square$

### unit_005: proposition

**Proposition (Target Khatri--Rao spectral floors;
\label{prop:step-001-khatri-rao}).**
Under Proposition~\ref{prop:step-001-realized-gram}, all three target
Khatri--Rao Grams satisfy
\[
\lambda_{\min}\bigl((W\odot V)^\top(W\odot V)\bigr),\quad
\lambda_{\min}\bigl((W\odot U)^\top(W\odot U)\bigr),\quad
\lambda_{\min}\bigl((V\odot U)^\top(V\odot U)\bigr)
\ge1-q_*^2.
\tag{26}
\]

**Proof / justification.**
For example, entrywise tensor inner products give the exact identity
\[
K_U:=(W\odot V)^\top(W\odot V)
=(V^\top V)\circ(W^\top W).
\tag{27}
\]
Its diagonal is one. For every row $j$,
Proposition~\ref{prop:step-001-realized-gram} implies
\[
\begin{aligned}
\sum_{\ell\ne j}|(K_U)_{j\ell}|
&=\sum_{\ell\ne j}
 |\langle v_j,v_\ell\rangle|
 |\langle w_j,w_\ell\rangle|\\
&\le
\left(\sum_{\ell\ne j}|\langle v_j,v_\ell\rangle|\right)
\left(\sum_{\ell\ne j}|\langle w_j,w_\ell\rangle|\right)
\le q_*^2.
\end{aligned}
\tag{28}
\]
For any $z\in\mathbb R^r$, using
$2|z_jz_\ell|\le z_j^2+z_\ell^2$,
\[
\begin{aligned}
z^\top K_Uz
&\ge\sum_jz_j^2
-\sum_{j<\ell}|(K_U)_{j\ell}|(z_j^2+z_\ell^2)\\
&=\sum_j\left(1-\sum_{\ell\ne j}|(K_U)_{j\ell}|\right)z_j^2
\ge(1-q_*^2)\|z\|_2^2.
\end{aligned}
\tag{29}
\]
This proves the first floor. Permuting the three modes proves the other two.
The argument is the exact same-object Khatri--Rao Gram comparison; no
surrogate or weighted Gram is substituted. $\square$

## Target-Step Assembly

For $0<\delta_{\rm sm}<1$, define the public generated event
$E_{\rm sm}:=E_{\rm raw}$ from
Lemma~\ref{lem:step-001-raw-smoothing}. Equation (11) gives
$\Pr(E_{\rm sm})\ge1-\delta_{\rm sm}$ over the once-drawn smoothing
perturbations, before proposal randomness. On this same event:

- Lemma~\ref{lem:step-001-normalization} proves every realized column
  has norm at least $(2\kappa _0)^{-1}$.
- Proposition~\ref{prop:step-001-realized-gram} proves
  $q_{\rm real}\le q_*$, in both induced Gram orientations.
- Lemma~\ref{lem:step-001-weight} proves $\Gamma\le1.01$.
- Proposition~\ref{prop:step-001-khatri-rao} proves the
  $1-q_*^2$ floor for every target Khatri--Rao Gram.

If $\delta_{\rm sm}\ge1$, set $E_{\rm sm}=\varnothing$; the exact
probability statement and all implications on the event are then valid
vacuously. Thus the exact sketch-row claim is proved using only its five
listed primitive assumptions and no dependency artifact. The global proof
diagnostic is not used in this assembly.

## Explicit Rate Audit

- Exposed variables: $n,r,\kappa _0,\rho,\delta_{\rm sm}$, through
  $L_{\rm sm}=\log(9r^2/\delta_{\rm sm})$. The fixed numerical quantity
  is $q_*=1/4096$. The regime exponents $d_\kappa,d_\rho$ are fixed but
  do not enter the bound.
- Hidden constants may depend on: None. All tail and comparison constants
  are displayed. Equivalently, allowing universal Gaussian constants and the
  fixed regime exponents, as the sketch permits, is conservative.
- Hidden constants may not depend on: the deterministic base triple, a
  realized/generated condition number, $\epsilon$,
  $\delta_{\rm init}$, proposal randomness, or any later comparator,
  reserve, or tube.
- Fixed quantities: the deterministic base triple and
  $q_*=1/4096$ are fixed while smoothing probability is taken. The
  proposal constants $a_*,b_*$ play no role in this step.
- Probability mode: one high-probability event over the once-drawn smoothing
  perturbations. It is neither conditional on proposal randomness nor merged
  with the later $\delta_{\rm init}$ probability.
- Horizon mode: fixed-time/static, before any proposal slot or ALS update.
- Norm mode: Euclidean norm for realized columns; induced row and column
  $\ell_1$ mass for normalized Grams; scalar max/min ratio for weights; and
  Euclidean spectral minimum for Khatri--Rao Grams.
- Admissibility conditions and auxiliary tolerances: exactly the two scalar
  inequalities in `assump:smoothing-margin`; no auxiliary tolerance is
  introduced.
- Term absorption or simplification inequalities: with
  $\chi_{\rm sm}=\sqrt{L_{\rm sm}/n}$, the separate charges are

  | Contribution | Per-entry or per-column control | Row/normalization charge | Absorption |
  | --- | --- | --- | --- |
  | Linear directional | $2\kappa _0\rho\,\chi_{\rm sm}$ | at most $4r\kappa _0\rho\,\chi_{\rm sm}$ | at most $q_*/8$, by (2) and (19) |
  | Independent quadratic | $\kappa _0^2\rho^2(2\chi_{\rm sm}+2\chi_{\rm sm}^2)$ | at most $2r\kappa _0^2\rho^2\chi_{\rm sm}+2r(\kappa _0\rho\chi_{\rm sm})^2$ | less than $q_*/8$, by (20) |
  | Normalization | deterministic $\kappa _0^2\rho^2$, own-direction $4\kappa _0\rho\chi_{\rm sm}$, and the displayed quadratic tail corrections | $h_{\rm sm}$ | $h_{\rm sm}\le q_*/20$, by (16) |

  Thus the base $q_*/4$, linear $q_*/8$, and quadratic $q_*/8$
  charges total $q_*/2$ before normalization, and (21) proves the final
  $q_*$ bound. No term is dropped by asymptotic notation.
- Probability conversion: the directional, norm-energy, and bilinear
  failure ledgers contain respectively $3r^2$, $3r$, and
  $3\binom r2$ quantities. At tail parameter $2L_{\rm sm}$, their
  exact union cost is (11),
  $9r^2e^{-2L_{\rm sm}}=\delta_{\rm sm}^2/(9r^2)\le\delta_{\rm sm}$.
- Contribution to any Rate Specialization Bridge: this step produces the
  once-drawn instance event $E_{\rm sm}$ with the exact norm, Gram, weight,
  and spectral interfaces consumed by `step_002`, `step_004`, `step_006`,
  `step_009`, and `step_011`. It performs no public probability merger or
  later-horizon upgrade.
- Baseline-reduction check: if the realized factors are orthogonal and
  equal-weight, the deterministic conclusions sharpen to
  $q_{\rm real}=0$, $\Gamma=1$, and all target Khatri--Rao Grams equal
  $I_r$. In the zero-perturbation extension of an orthogonal equal-weight
  base, (3)--(5) and $h_{\rm sm}$ vanish exactly. Hence this step does not
  replace the exact baseline by its conservative $q_*,1.01$, or
  $1-q_*^2$ envelopes.

## Blockers

None

## Notation And Assumption Notes

- **Public-facing:** $E_{\rm sm}$ is the sole exported helper object. It is
  the locally proved event $E_{\rm raw}$ together with the deterministic
  consequences assembled above; it is a derived event, not a primitive
  condition or local hypothesis. Its public interface consists only of the
  realized norm floor, $q_{\rm real}\le q_*$, $\Gamma\le1.01$, and the
  three Khatri--Rao spectral floors.
- **Proof-local generic-mode notation:**
  $\bar x_{M,j},g_{M,j},\beta_{M,j},\bar m_{M,j},e_{M,j},\nu_{M,j}$
  merely package the three setting-defined triples
  $(\bar a_j,g_j^{(A)},\bar u_j)$,
  $(\bar b_j,g_j^{(B)},\bar v_j)$, and
  $(\bar c_j,g_j^{(C)},\bar w_j)$. No cited-paper notation is imported.
- **Proof-local rate notation:**
  $L_{\rm sm},\chi_{\rm sm},\alpha_{\rm sm},\upsilon_{\rm sm}$ are
  direct expressions in $n,r,\kappa _0,\rho,\delta_{\rm sm}$.
  Their only bounds are the primitive scalar margins (1)--(2).
- **Proof-local event:** $E_{\rm raw}$ is proved, including its
  probability, by Lemma~\ref{lem:step-001-raw-smoothing}. It is not
  assumed and has no trajectory or recurrence content.
- **Proof-local constant:** $h_{\rm sm}$ is directly defined in (12) from
  the proof-local rate quantities and is proved to satisfy
  $h_{\rm sm}\le q_*/20$ by
  Lemma~\ref{lem:step-001-normalization}. It is not exported.
- **Proof-local Khatri--Rao notation:** $K_U$ in (27), and its two mode
  permutations, names the exact setting-defined target Grams. The symbol is
  local; only the spectral floors are exported.
- **Constant provenance:** $2,2\sqrt2,4$ in (3)--(5) come from applying
  the displayed exact moment-generating-function bounds at
  $t=2L_{\rm sm}$. The reserves $q_*/20,q_*/8,1.01$, and $1-q_*^2$
  are proved from the setting's numerical margins in named local units. No
  free bounded quantity or hidden condition number is introduced.
- **Assumption provenance:** all five allowed conditions are primitive and
  checkable before smoothing is realized. Every realized/generated property
  used by the target assembly is proved in this step. There are no accepted
  dependency conclusions and no local conditional hypotheses used for the
  unconditional target.
- **Boundary handling:** the nonvacuous theorem regime has
  $0<\delta_{\rm sm}<1$. The separate empty-event construction for
  $\delta_{\rm sm}\ge1$ ensures that the proof itself does not silently
  add `assump:accuracy-confidence` to the exact sketch-row assumption list.
- **Global diagnostic boundary:** the paired
  `global_proof_review.md` was verified to have status `ACCEPTED`. The only
  step-relevant planning idea taken from the diagnostic was to keep linear,
  quadratic, normalization, and finite-union charges separate before the
  Khatri--Rao comparison. The global proof was not used as evidence, a cited
  result, an assumption source, or authority to change the target claim.
