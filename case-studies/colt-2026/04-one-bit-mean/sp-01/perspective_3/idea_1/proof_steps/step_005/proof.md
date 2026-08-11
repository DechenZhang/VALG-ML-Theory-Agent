# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1

## Target Step Claim

- Intended claim: Derive the exact per-level all-alias second-moment
  inequality and integrate step_004 to prove, on
  \(\mathcal E_{\rm loc}\),
  \[
    \operatorname{Var}(W_i(c)\mid c)
      \leq C_k^{\rm var}\sigma^kZ_S.
  \]
  Treat level zero separately and prove explicitly that \(k=2\) incurs
  exactly one factor \(Z_S=S+1\), not \(S^2\).
- Depends on: step_001, step_002, step_003, and step_004.
- Assumptions used: Primitive assumptions `assump:moment-class`,
  `assump:independent-samples`, and `assump:precommitted-protocol`.
  Derived inputs are \(\mathcal E_{\rm loc}\) and \(M_k(c)\) from
  step_001; the amplitude and \(d_s\) bounds from step_002; the dither
  square identity from step_003; and the all-alias activation ledger from
  step_004.
- Technical challenge: Importance-weighted squares include every alias ring
  and a large \(p_s^{-1}\); the order of summation is theorem-critical.
- Intended proof tool or cited result: Direct conditional second-moment
  calculation, the identity \(h_s^2/p_s=Z_Sh_s^k\), and pointwise use of
  the step_004 ledger before expectation.
- Output target: A conditional variance bound
  \(V_k=C_k^{\rm var}\sigma^kZ_S\), uniform over every realized
  localization output satisfying \(|c-\mu|\leq50\sigma\) and every
  admissible \(D\), with all alias classes included.
- Rate objective: Preserve the exact \(Z_S,\sigma,k,\epsilon\) dependence,
  certify one logarithmic factor at \(k=2\), and retain the conditional
  probability and absolute-metric interfaces.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- `assump:moment-class`: the law \(D\) has
  \(\mathbb E_D|X-\mu|^k\leq\sigma^k\), with no support, density,
  symmetry, or tail-shape restriction. The direct input used below is the
  recentered consequence already proved by step_001 on
  \(\mathcal E_{\rm loc}\).
- `assump:independent-samples`: the complete refinement sample-and-seed
  block is independent of the localization block; conditional on the
  latter, \(X_i\sim D\), the level, color, branch, type, masks, and dither
  retain their setting-defined product law, independently across refinement
  indices.
- `assump:precommitted-protocol`: all refinement query seeds are fixed
  before any response, and the decoder value \(c\) only selects retained
  coefficients after the transcript. Thus conditioning on \(c\) does not
  alter the query-seed probabilities used in the square calculation.

The positive finite scale family, the exact probabilities
\(p_s=h_s^{2-k}/Z_S\), and the displayed statistic \(W_i(c)\) are the
setting-defined protocol objects in the binding row; no extra parameter,
support, or selected-cell assumption is introduced.

### Derived invariants supplied by accepted dependencies

- The accepted step_001 pair is
  `perspective_3/idea_1/proof_steps/step_001/proof.md` (Unit attempt 2,
  SHA-256
  `3a2ebe803850bbf2555a703a69cf406adbeda503710d10de19f9eb286907443a`)
  and its matching `review.md` with status `ACCEPTED`. It supplies:
  Proposition~\(\ref{prop:step-001-independence}\), which preserves the
  refinement product law after conditioning on localization, and
  Lemma~\(\ref{lem:step-001-recenter}\), which on
  \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\), for
  \(a_k\geq200\), gives
  \[
    M_k(c):=\int |x-m_0(c)|^kD(dx)
      \leq C_k^{\rm rec}\sigma^k,
    \qquad
    C_k^{\rm rec}=2^{k-1}\left[1+(3a_k/4)^k\right].
  \]
- The accepted step_002 pair is
  `perspective_3/idea_1/proof_steps/step_002/proof.md` (Unit attempt 1,
  SHA-256
  `4d6547f9389cc8a94f6ca170ca7c6059e61ee14d0232b6441d1ce333ea2cce0c`)
  and its matching `review.md` with status `ACCEPTED`. It supplies
  Lemma~\(\ref{lem:step-002-ancestor}\) and
  Lemma~\(\ref{lem:step-002-color}\):
  \(|d_s|\leq h_s\), fixed-color rings are pairwise disjoint, every
  coordinate amplitude on an active ring is at most \(3/4\) in absolute
  value, every mass amplitude has absolute value one, and every realized
  \(F_i\) is in \([-1,1]\).
- The accepted step_003 pair is
  `perspective_3/idea_1/proof_steps/step_003/proof.md` (Unit attempt 1,
  SHA-256
  `ddcf7eacf03321017a37385ee1c9f27df6c27dd5f92c7f0dc1e3a1258e5432d6`)
  and its matching `review.md` with status `ACCEPTED`. It supplies
  Lemma~\(\ref{lem:step-003-dither}\): for every fixed
  \(f\in[-1,1]\),
  \[
    \mathbb E_U\!\left[
      \bigl({\bf1}\{f\geq U\}-{\bf1}\{0\geq U\}\bigr)^2
    \right]=\frac{|f|}{2}.
  \]
- The accepted step_004 pair is
  `perspective_3/idea_1/proof_steps/step_004/proof.md` (Unit attempt 1,
  SHA-256
  `cef249f560113a361858decc545ab21ac4c6a87e8fe597bc6c0758634e859b88`)
  and its matching `review.md` with status `ACCEPTED`. Its
  Proposition~\(\ref{prop:step-004-activation-ledger}\) defines
  \[
    \Gamma_s(c):=\bigcup_{q\in\mathbb Z}
      {\cal R}_{s,j_s+4q,b_s},\qquad 1\leq s\leq S,
  \]
  and proves pointwise, for \(r=|x-m_0|\),
  \[
    \sum_{s=1}^S h_s^k{\bf1}\{x\in\Gamma_s(c)\}
      \leq C_{{\rm act},k}r^k,
    \qquad
    C_{{\rm act},k}=\frac{2^k}{1-2^{-k}}.
  \]
  This union and ledger include the target ring and every retained
  same-color non-target ring.

### Local conditional hypotheses

- The first three local results fix an arbitrary decoder value \(c\) and,
  for their pointwise product-kernel statements, an arbitrary sample value
  \(x\). These are local parameters, not selected-cell or success
  assumptions.
- The final local result is applied on the derived event
  \(\mathcal E_{\rm loc}\); in its pointwise formulation it fixes a
  realized output satisfying \(|c-\mu|\leq50\sigma\), only to invoke the
  accepted recentered-moment certificate. The event is produced by step_001
  and remains a local conditional interface; it is not promoted to a public
  theorem assumption.

## Local Lemma Map

Atomic step = no. Level zero has a different seed law, the higher-level
coordinate and mass types have distinct square ledgers, the activation
budget must be applied pointwise, and only then may the result be integrated
under the successful-localization conditional law.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\), the accepted independent-refinement, fixed-color support, bounded-query, and dither-square conclusions, for every fixed \(c,x\), the exact level-zero square equals \(\frac{16h_0}{p_0}\sum_q|x-m_{0,j_0+4q}|{\bf1}_{{\cal R}_{0,j_0+4q}}(x)\) and is at most \(24h_0^2p_0^{-1}{\bf1}_{\Gamma_0(c)}(x)\), with every level-zero alias retained. | Treats the branchless, type-free level separately and exposes its sole factor \(p_0^{-1}\). |
| unit_002 | lemma | Under Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\), the accepted independent-refinement, amplitude, displacement, unique-activity, and dither-square conclusions, for every fixed \(c,x\) and \(1\leq s\leq S\), the exact coordinate-plus-mass all-alias square equals \(\frac{64h_s}{p_s}\sum_q|x-m_{s,j_s+4q}|{\bf1}_{{\cal R}_{s,j_s+4q,b_s}}(x)+\frac{32d_s^2}{p_s}{\bf1}_{\Gamma_s(c)}(x)\), and is at most \(128h_s^2p_s^{-1}{\bf1}_{\Gamma_s(c)}(x)\). | Preserves every alias square and the full \(p_s^{-1}\) cost while combining the mutually exclusive coordinate and mass types. |
| unit_003 | proposition | Under Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\), Lemmas~\(\ref{lem:step-005-level-zero-square}\) and \(\ref{lem:step-005-higher-square}\), and the accepted Proposition~\(\ref{prop:step-004-activation-ledger}\), for every fixed \(c,x\), summing the level contributions pointwise and using \(h_s^2/p_s=Z_Sh_s^k\) gives \(\mathbb E[W_i(c)^2\mid X_i=x,c]\leq Z_S[24h_0^k+128C_{{\rm act},k}|x-m_0|^k]\). | Applies the all-alias geometric ledger before expectation, so no level-count factor is created. |
| unit_004 | proposition | Under Assumption~\(\ref{assump:moment-class}\), the accepted step_001 independence and recentering conclusions, and Proposition~\(\ref{prop:step-005-pointwise-square}\), if \(a_k\geq200\) and the realized output satisfies \(|c-\mu|\leq50\sigma\), then \(\operatorname{Var}(W_i(c)\mid c)\leq C_k^{\rm var}\sigma^kZ_S\), where \(C_k^{\rm var}=24a_k^k+128C_{{\rm act},k}C_k^{\rm rec}\); at \(k=2\) the proof displays exactly one factor \(Z_S=S+1\). | Integrates the pointwise budget under the correct conditional law and exports the target variance interface. |

## Cited Result Applications

No external paper result is used in this step. The accepted dependencies and
the elementary conditional second-moment fact are restated before use.

### Accepted dependency: recentered moment and conditional refinement law

**Source and restated statement.** The current accepted
Proposition~\(\ref{prop:step-001-independence}\) states that the localization
sigma-field \(\mathscr L_{\rm loc}\), containing \(c,m_0\), and
\(M_k(c)\), is independent of the complete refinement block. Conditional on
it, every refinement tuple retains its original product law. The current
accepted Lemma~\(\ref{lem:step-001-recenter}\) states that, for
\(a_k\geq200\), every \(c\) with \(|c-\mu|\leq50\sigma\) satisfies
\[
  M_k(c)\leq C_k^{\rm rec}\sigma^k,
  \qquad
  C_k^{\rm rec}=2^{k-1}[1+(3a_k/4)^k].
\]

**Objects, assumptions, and conclusions used.** The present \(c,m_0\),
sample \(X_i\), and all query seeds are exactly those in that dependency.
Assumptions~\(\ref{assump:moment-class}\),
\(\ref{assump:independent-samples}\), and
\(\ref{assump:precommitted-protocol}\) discharge the stated source
conditions. Since \(W_i(c)\) depends on the localization block only through
the measurable scalar \(c\), the same product-kernel calculation holds
after conditioning on \(c\) alone. The recentered moment is invoked only on
the accepted derived event \(\mathcal E_{\rm loc}\).

### Accepted dependency: amplitudes, displacement, and unique activity

**Source and restated statement.** The current accepted
Lemma~\(\ref{lem:step-002-ancestor}\) gives \(|d_s|<h_s/2\), and hence the
weaker binding interface \(|d_s|\leq h_s\). The current accepted
Lemma~\(\ref{lem:step-002-color}\) gives, at each fixed level, color, and
branch, pairwise-disjoint rings; therefore at most one retained ring is
active at a fixed \(x\). On every such ring,
\[
  \left|\frac{x-m_{s,j}}{2h_s}\right|\leq\frac34,
\]
and a mass amplitude has absolute value one. The accepted query proposition
places every realized \(F_i(x)\) in \([-1,1]\).

**Objects, assumptions, and conclusions used.** These are the exact rings,
centers, amplitudes, and displacement appearing in the setting definitions
of \(F_i\) and \(W_i(c)\). The proof below deliberately uses only
\(|d_s|\leq h_s\), so its bound matches the binding dependency interface.
Unique activity makes every countable all-alias sum pointwise a zero- or
one-term sum; no infinite-series interchange is used.

### Accepted dependency: exact dither square

**Source and restated statement.** The current accepted
Lemma~\(\ref{lem:step-003-dither}\) states that for
\(U\sim{\rm Unif}[-1,1]\) and every fixed \(f\in[-1,1]\),
\[
  \mathbb E_U\left[
    ({\bf1}\{f\geq U\}-{\bf1}\{0\geq U\})^2
  \right]=\frac{|f|}{2}.
\]
The identity also holds conditionally when \(f=F_i(x)\) is random but
independent of \(U_i\).

**Objects, assumptions, and conclusions used.** The boundedness conclusion
from step_002 discharges \(F_i(x)\in[-1,1]\), and
Assumption~\(\ref{assump:independent-samples}\) supplies independence of
the dither. Unlike the signed first-moment identity, the square identity
turns a masked alias amplitude into its absolute value. Thus an alias mean
may cancel, but its square remains and is explicitly present below.

### Accepted dependency: uniform all-ring activation ledger

**Source and restated statement.** The current accepted
Proposition~\(\ref{prop:step-004-activation-ledger}\) states that the
retained support
\(\Gamma_s(c)=\bigcup_q{\cal R}_{s,j_s+4q,b_s}\) contains the target
and every same-color alias at level \(s\), at most one such ring is active,
and
\[
  \sum_{s=1}^S h_s^k{\bf1}\{x\in\Gamma_s(c)\}
    \leq C_{{\rm act},k}|x-m_0|^k,
  \qquad
  C_{{\rm act},k}=\frac{2^k}{1-2^{-k}}.
\]

**Objects, assumptions, and conclusions used.** The ledger is pointwise in
the exact residual \(|x-m_0|\) whose \(k\)-moment step_001 controls. It is
uniform in \(S\), the path, the branch, all cells, and all half-open
boundaries. It is applied below before integrating over \(x\); no
per-level moment bound is substituted first.

### Elementary conditional second-moment fact

If \(Z\) is conditionally square-integrable given a sigma-field
\(\mathscr G\), then
\[
  \operatorname{Var}(Z\mid\mathscr G)
    =\mathbb E[Z^2\mid\mathscr G]
       -\mathbb E[Z\mid\mathscr G]^2
    \leq\mathbb E[Z^2\mid\mathscr G].
\]
Moreover, if conditional on \(c\) the variable \(X\) has law \(D\), then a
nonnegative pointwise product-kernel bound \(q(x,c)\) integrates as
\[
  \mathbb E[q(X,c)\mid c]=\int q(x,c)D(dx).
\]
The accepted step_001 product-law interface discharges this hypothesis, and
Proposition~\(\ref{prop:step-005-pointwise-square}\) supplies a finite
upper bound on \(\mathcal E_{\rm loc}\), so conditional square
integrability is established before the variance inequality is used.

### Local result applications

- Lemma~\(\ref{lem:step-005-level-zero-square}\) is proved in unit_001
  from the level-zero seed law, the dither square, and fixed-color unique
  activity. It is used by
  Proposition~\(\ref{prop:step-005-pointwise-square}\).
- Lemma~\(\ref{lem:step-005-higher-square}\) is proved in unit_002 by
  separating the mutually exclusive coordinate and mass types and retaining
  every target and alias term. It is used by
  Proposition~\(\ref{prop:step-005-pointwise-square}\).
- Proposition~\(\ref{prop:step-005-pointwise-square}\) is proved in
  unit_003 by applying \(h_s^2/p_s=Z_Sh_s^k\) and the accepted all-alias
  ledger before any expectation. It is used by
  Proposition~\(\ref{prop:step-005-conditional-variance}\).
- Proposition~\(\ref{prop:step-005-conditional-variance}\) is proved in
  unit_004 by integrating the pointwise result and invoking the accepted
  recentered moment. It is the public-facing output consumed by the
  median-of-means step.

## Local Derivation

For proof-local notation, set
\[
  E_{0,q}(c):={\cal R}_{0,j_0+4q},
  \qquad
  \Gamma_0(c):=\bigcup_{q\in\mathbb Z}E_{0,q}(c),
\]
and, for \(1\leq s\leq S\),
\[
  E_{s,q}(c):={\cal R}_{s,j_s+4q,b_s},
  \qquad
  \Gamma_s(c)=\bigcup_{q\in\mathbb Z}E_{s,q}(c).
\]
At every fixed \((s,x,c)\), accepted same-color disjointness makes at most
one summand over \(q\) nonzero.

### unit_001: lemma

**Lemma (Exact level-zero all-alias square ledger).**
\(\label{lem:step-005-level-zero-square}\)
Under Assumptions~\(\ref{assump:independent-samples}\) and
\(\ref{assump:precommitted-protocol}\), the accepted independent-refinement
conclusion of Proposition~\(\ref{prop:step-001-independence}\), the accepted
support and bounded-query conclusions of
Lemma~\(\ref{lem:step-002-color}\) and
Proposition~\(\ref{prop:step-002-queries}\), and
Lemma~\(\ref{lem:step-003-dither}\), fix arbitrary \(c,x\in\mathbb R\).
Then
\[
\begin{aligned}
 &\mathbb E\!\left[
   W_i(c)^2{\bf1}\{L_i=0\}\mid X_i=x,c
 \right]\\
 &\quad=\frac{16h_0}{p_0}
   \sum_{q\in\mathbb Z}
   |x-m_{0,j_0+4q}|{\bf1}_{E_{0,q}(c)}(x)\\
 &\quad\leq\frac{24h_0^2}{p_0}
   {\bf1}_{\Gamma_0(c)}(x).
\end{aligned}
\]
The equality and inequality include the target \(q=0\) and every
level-zero same-color alias \(q\neq0\).

**Proof / justification.** On \(\{L_i=0,C_i=\kappa_0\}\), unique activity
gives the pointwise query section
\[
  F_i(x)=\sum_{q\in\mathbb Z}
    \rho_{i,0,j_0+4q}
    \frac{x-m_{0,j_0+4q}}{2h_0}
    {\bf1}_{E_{0,q}(c)}(x).
\]
Although the decoder coefficient uses the target mask
\(\rho_{i,0,j_0}\), squaring \(W_i(c)\) gives
\(\rho_{i,0,j_0}^2=1\). Conditional on the complete mask family, the
accepted dither identity and unique activity therefore give
\[
  \mathbb E_{U_i}[\Delta Y_i^2]
  =\sum_{q\in\mathbb Z}
    \frac{|x-m_{0,j_0+4q}|}{4h_0}
    {\bf1}_{E_{0,q}(c)}(x).
\]
There is no cross-mask cancellation in this square: an active alias produces
the same nonnegative absolute-amplitude term as an active target.

The accepted conditional product law leaves
\(\Pr\{L_i=0\}=p_0\) and
\(\Pr\{C_i=\kappa_0\}=1/4\). Substituting the exact level-zero coefficient
in \(W_i(c)\) yields
\[
\begin{aligned}
 &p_0\cdot\frac14\cdot
   \left(\frac{16h_0}{p_0}\right)^2
   \sum_q\frac{|x-m_{0,j_0+4q}|}{4h_0}
     {\bf1}_{E_{0,q}(c)}(x)\\
 &\qquad=\frac{16h_0}{p_0}
   \sum_q|x-m_{0,j_0+4q}|
     {\bf1}_{E_{0,q}(c)}(x),
\end{aligned}
\]
which is the asserted equality and visibly retains the large
\(p_0^{-1}\) factor. On an active level-zero ring, accepted amplitude
geometry gives \(|x-m_{0,j}|\leq3h_0/2\). Since at most one \(q\) is
active, the sum is at most
\((3h_0/2){\bf1}_{\Gamma_0(c)}(x)\), proving the factor \(24\) bound.
No branch or type probability is inserted at level zero, because neither
variable exists there. \(\square\)

### unit_002: lemma

**Lemma (Exact higher-level coordinate-mass all-alias square ledger).**
\(\label{lem:step-005-higher-square}\)
Under Assumptions~\(\ref{assump:independent-samples}\) and
\(\ref{assump:precommitted-protocol}\), the accepted independent-refinement
conclusion of Proposition~\(\ref{prop:step-001-independence}\), the accepted
displacement, support, amplitude, and bounded-query conclusions of
Lemmas~\(\ref{lem:step-002-ancestor}\) and
\(\ref{lem:step-002-color}\) and
Proposition~\(\ref{prop:step-002-queries}\), and
Lemma~\(\ref{lem:step-003-dither}\), fix arbitrary \(c,x\in\mathbb R\)
and \(1\leq s\leq S\). Then
\[
\begin{aligned}
 &\mathbb E\!\left[
   W_i(c)^2{\bf1}\{L_i=s\}\mid X_i=x,c
 \right]\\
 &\quad=\frac{64h_s}{p_s}
   \sum_{q\in\mathbb Z}
     |x-m_{s,j_s+4q}|{\bf1}_{E_{s,q}(c)}(x)
   +\frac{32d_s^2}{p_s}{\bf1}_{\Gamma_s(c)}(x)\\
 &\quad\leq\frac{128h_s^2}{p_s}
   {\bf1}_{\Gamma_s(c)}(x).
\end{aligned}
\]
Every target and same-color non-target ring appears in the exact sum. In
particular, zero signed alias mean does not remove any alias square.

**Proof / justification.** On the retained color and branch, the coordinate
and mass types are mutually exclusive, so pointwise
\[
  \left[
    4h_s{\bf1}\{T_i={\rm coord}\}
    +2d_s{\bf1}\{T_i={\rm mass}\}
  \right]^2
  =16h_s^2{\bf1}\{T_i={\rm coord}\}
   +4d_s^2{\bf1}\{T_i={\rm mass}\}.
\]
Thus there is no coordinate-mass cross term.

For \(T_i={\rm coord}\), accepted unique activity and the dither-square
identity give
\[
  \mathbb E_{U_i}[\Delta Y_i^2]
  =\sum_q\frac{|x-m_{s,j_s+4q}|}{4h_s}
     {\bf1}_{E_{s,q}(c)}(x).
\]
For \(T_i={\rm mass}\), they give
\[
  \mathbb E_{U_i}[\Delta Y_i^2]
    =\frac12{\bf1}_{\Gamma_s(c)}(x).
\]
The displayed right sides are independent of the mask signs, so subsequent
mask averaging leaves them unchanged. Also, the target mask in
\(W_i(c)^2\) squares to one, so the formulas apply unchanged when the
active ring is an alias.

The exact probabilities of the level, retained color, retained branch, and
either type are \(p_s,1/4,1/2,1/2\). Hence the coordinate square is
\[
\begin{aligned}
 &p_s\cdot\frac14\cdot\frac12\cdot\frac12
   \left(\frac{16}{p_s}\,4h_s\right)^2
   \sum_q\frac{|x-m_{s,j_s+4q}|}{4h_s}
     {\bf1}_{E_{s,q}(c)}(x)\\
 &\qquad=\frac{64h_s}{p_s}
   \sum_q|x-m_{s,j_s+4q}|
     {\bf1}_{E_{s,q}(c)}(x),
\end{aligned}
\]
and the mass square is
\[
\begin{aligned}
 &p_s\cdot\frac14\cdot\frac12\cdot\frac12
   \left(\frac{16}{p_s}\,2d_s\right)^2
   \frac12{\bf1}_{\Gamma_s(c)}(x)\\
 &\qquad=\frac{32d_s^2}{p_s}
   {\bf1}_{\Gamma_s(c)}(x).
\end{aligned}
\]
These displays retain exactly one factor \(p_s^{-1}\) after squaring the
importance weight and averaging the selected level; no \(p_s\) is hidden
in a constant.

On an active coordinate ring,
\(|x-m_{s,j}|\leq3h_s/2\), and at most one \(q\) is active. Thus the
coordinate term is at most
\(96h_s^2p_s^{-1}{\bf1}_{\Gamma_s(c)}(x)\). The accepted displacement
bound \(|d_s|\leq h_s\) makes the mass term at most
\(32h_s^2p_s^{-1}{\bf1}_{\Gamma_s(c)}(x)\). Adding these two nonnegative,
mutually exclusive-type expectations proves the constant \(128\) bound.
The exact formula also shows that the mass contribution vanishes when
\(d_s=0\). \(\square\)

### unit_003: proposition

**Proposition (Pointwise all-level second-moment budget).**
\(\label{prop:step-005-pointwise-square}\)
Under Assumptions~\(\ref{assump:independent-samples}\) and
\(\ref{assump:precommitted-protocol}\), the accepted conclusions used in
Lemmas~\(\ref{lem:step-005-level-zero-square}\) and
\(\ref{lem:step-005-higher-square}\), and
Proposition~\(\ref{prop:step-004-activation-ledger}\), for every fixed
\(c,x\in\mathbb R\),
\[
  \mathbb E[W_i(c)^2\mid X_i=x,c]
  \leq Z_S\left[
    24h_0^k+128C_{{\rm act},k}|x-m_0|^k
  \right].
\]
This pointwise inequality sums every target and alias square over all levels
before any expectation over \(X_i\) is taken.

**Proof / justification.** The events \(\{L_i=s\}\),
\(0\leq s\leq S\), are mutually exclusive and exhaustive. Therefore the
two preceding lemmas give
\[
\begin{aligned}
 \mathbb E[W_i(c)^2\mid X_i=x,c]
 &\leq \frac{24h_0^2}{p_0}
      {\bf1}_{\Gamma_0(c)}(x)
   +128\sum_{s=1}^S\frac{h_s^2}{p_s}
      {\bf1}_{\Gamma_s(c)}(x).
\end{aligned}
\]
For every \(0\leq s\leq S\), the setting probability has the exact
inverse
\[
  p_s^{-1}=Z_Sh_s^{k-2},
  \qquad
  \frac{h_s^2}{p_s}=Z_Sh_s^k.
\]
Substitution, with no absorption or asymptotic notation, yields
\[
\begin{aligned}
 \mathbb E[W_i(c)^2\mid X_i=x,c]
 &\leq Z_S\left[
      24h_0^k{\bf1}_{\Gamma_0(c)}(x)
      +128\sum_{s=1}^S h_s^k
        {\bf1}_{\Gamma_s(c)}(x)
    \right]\\
 &\leq Z_S\left[
      24h_0^k+128C_{{\rm act},k}|x-m_0|^k
    \right],
\end{aligned}
\]
where the last line first drops only the level-zero indicator and then
applies the accepted pointwise all-alias ledger. The ordering is explicit:
the nonnegative higher-level charges are summed at the fixed point \(x\),
the geometric ledger removes their level count, and only the resulting
single residual power is later integrated. No expectation or supremum has
been interchanged with a countable ring sum, because every within-level ring
sum has at most one active term and the level sum is finite. \(\square\)

### unit_004: proposition

**Proposition (Conditional variance and exact single-factor middle-regime
accounting).**
\(\label{prop:step-005-conditional-variance}\)
Under Assumption~\(\ref{assump:moment-class}\), the accepted independent
refinement and recentered-moment conclusions of
Proposition~\(\ref{prop:step-001-independence}\) and
Lemma~\(\ref{lem:step-001-recenter}\), and
Proposition~\(\ref{prop:step-005-pointwise-square}\), suppose
\(a_k\geq200\) and fix any realized localization output satisfying
\(|c-\mu|\leq50\sigma\). Then, under the conditional law that averages
over \(X_i\sim D\) and all independent refinement seeds,
\[
  \operatorname{Var}(W_i(c)\mid c)
  \leq C_k^{\rm var}\sigma^kZ_S,
\]
where
\[
  C_k^{\rm var}
    :=24a_k^k+128C_{{\rm act},k}C_k^{\rm rec}<\infty.
\]
This constant depends only on the fixed \(k\) and its k-only design choice
\(a_k\), and not on \(D,\mu,\lambda,\sigma,\epsilon,\delta,S,H,Z_S,c\),
or any cell, path, sample, or refinement seed. If \(k=2\), the derivation
contains exactly one factor \(Z_S=S+1\) and no second factor proportional
to \(S\).

**Proof / justification.** Conditional on \(c\), the accepted product-law
interface leaves \(X_i\) with law \(D\). Integrating
Proposition~\(\ref{prop:step-005-pointwise-square}\) only after its
pointwise level summation gives
\[
\begin{aligned}
 \mathbb E[W_i(c)^2\mid c]
 &\leq Z_S\left[
      24h_0^k+128C_{{\rm act},k}
        \int|x-m_0(c)|^kD(dx)
    \right]\\
 &=Z_S\left[
      24h_0^k+128C_{{\rm act},k}M_k(c)
    \right].
\end{aligned}
\]
On \(\mathcal E_{\rm loc}\), the accepted recentered-moment certificate
and \(h_0=a_k\sigma\) give
\[
\begin{aligned}
 \mathbb E[W_i(c)^2\mid c]
 &\leq Z_S\left[
      24a_k^k\sigma^k
      +128C_{{\rm act},k}C_k^{\rm rec}\sigma^k
    \right]\\
 &=C_k^{\rm var}\sigma^kZ_S.
\end{aligned}
\]
This finite bound proves conditional square integrability. The elementary
conditional variance identity then gives
\[
  \operatorname{Var}(W_i(c)\mid c)
  \leq\mathbb E[W_i(c)^2\mid c]
  \leq C_k^{\rm var}\sigma^kZ_S.
\]

It remains to make the \(k=2\) accounting explicit rather than infer it
from the general notation. At \(k=2\),
\[
  Z_S=\sum_{s=0}^S h_s^0=S+1,
  \qquad
  p_s=\frac1{S+1},
  \qquad
  \frac{h_s^2}{p_s}=(S+1)h_s^2.
\]
Consequently Lemma~\(\ref{lem:step-005-higher-square}\) and the accepted
ledger, still pointwise in \(x\), give
\[
\begin{aligned}
 \sum_{s=1}^S
 \mathbb E[W_i(c)^2{\bf1}\{L_i=s\}\mid X_i=x,c]
 &\leq128(S+1)
   \sum_{s=1}^S h_s^2{\bf1}_{\Gamma_s(c)}(x)\\
 &\leq128C_{{\rm act},2}(S+1)|x-m_0|^2.
\end{aligned}
\]
The separately computed level-zero term is at most
\[
  24(S+1)h_0^2{\bf1}_{\Gamma_0(c)}(x).
\]
Thus, after expectation and recentering,
\[
\begin{aligned}
 \operatorname{Var}(W_i(c)\mid c)
 &\leq(S+1)\left[
      24h_0^2+128C_{{\rm act},2}M_2(c)
    \right]\\
 &\leq C_2^{\rm var}\sigma^2(S+1)
   =C_2^{\rm var}\sigma^2Z_S.
\end{aligned}
\]
There is only the single displayed factor \(S+1\), arising from
\(p_s^{-1}\). The pointwise geometric ledger is uniform in \(S\), so the
sum over levels contributes no further \(S\). Bounding each level's
expectation separately before summing would discard this ledger and could
create a spurious \(S(S+1)\) bound; that invalid order is not used.

Finally, if \(D(J_{0,j_0})=1\), the accepted step_002/step_004 baseline
states that every higher target and alias support is inactive, so all
higher-level square terms are exactly zero and only the level-zero formula
remains. If \(D\{m_0\}=1\), the exact level-zero formula also vanishes and
all higher supports are inactive, so \(W_i(c)=0\) for every refinement seed
and the conditional variance is exactly zero. These are exact reductions,
not conservative remainder bounds. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-005-level-zero-square}\) performs the required
separate level-zero calculation. It averages the level and color
probabilities against the squared importance coefficient, retains the
target and every same-color alias through the dither absolute-amplitude
identity, and proves the exact \(p_0^{-1}\) ledger before bounding it by
\(24h_0^2/p_0\).

Lemma~\(\ref{lem:step-005-higher-square}\) treats the mutually exclusive
coordinate and mass types separately. It proves the exact all-alias formula
\[
  \frac{64h_s}{p_s}\sum_q|x-m_{s,j_s+4q}|
    {\bf1}_{E_{s,q}(c)}(x)
  +\frac{32d_s^2}{p_s}{\bf1}_{\Gamma_s(c)}(x)
\]
and the bound
\[
  \frac{128h_s^2}{p_s}{\bf1}_{\Gamma_s(c)}(x).
\]
Thus neither signed mask cancellation nor an implicit constant removes an
alias square or the importance factor \(p_s^{-1}\).

Proposition~\(\ref{prop:step-005-pointwise-square}\) next substitutes the
exact identity \(h_s^2/p_s=Z_Sh_s^k\) and applies
Proposition~\(\ref{prop:step-004-activation-ledger}\) to the complete
target-and-alias level sum while \(x\) is still fixed. It obtains
\[
  \mathbb E[W_i(c)^2\mid X_i=x,c]
  \leq Z_S[24h_0^k+128C_{{\rm act},k}|x-m_0|^k]
\]
without a factor depending on the number of levels.

Finally,
Proposition~\(\ref{prop:step-005-conditional-variance}\) uses the accepted
conditional product law to integrate this pointwise inequality, and then
uses the step_001 recentered moment on \(\mathcal E_{\rm loc}\). It proves
the exact target
\[
  \operatorname{Var}(W_i(c)\mid c)
  \leq C_k^{\rm var}\sigma^kZ_S,
  \qquad
  C_k^{\rm var}
   =24a_k^k+128C_{{\rm act},k}C_k^{\rm rec}.
\]
Its separate \(k=2\) display shows that the only level factor is
\(Z_S=S+1\); the pointwise ledger prevents a second factor and hence rules
out \(S^2\). These named results jointly establish every clause of the
binding sketch row under only the allowed primitive assumptions and
accepted dependency outputs.

## Explicit Rate Audit

- Exposed variables: \(k,\sigma,\epsilon,S,(h_s)_{s=0}^S,(p_s)_{s=0}^S,
  Z_S,a_k,C_k^{\rm rec},C_{{\rm act},k},C_k^{\rm var}\), and the
  conditional localization output \(c\). The dependence on \(\epsilon\)
  remains exactly through the setting-defined \(S\) and \(Z_S\); it is not
  evaluated or hidden in this step.
- Hidden constants may depend on: only the fixed \(k\) and its k-only design
  choice \(a_k\). In fact the proof exports the explicit choice
  \(C_k^{\rm var}=24a_k^k+128C_{{\rm act},k}C_k^{\rm rec}\).
- Hidden constants may not depend on: \(D,\mu,\lambda,\sigma,\epsilon,
  \delta,S,H,Z_S,c\), any level probability, cell, branch, path, sample,
  mask, dither, or other protocol realization.
- Fixed quantities: \(k\) and its design constants are fixed. The law and
  all source parameters remain arbitrary in the setting domain, and no
  limiting regime is taken.
- Probability mode: conditional on the independently generated localization
  output \(c\), averaging over \(X_i\sim D\) and every refinement seed;
  the bound holds for every realized output satisfying
  \(|c-\mu|\leq50\sigma\), equivalently almost surely on
  \(\mathcal E_{\rm loc}\). No frozen-refinement-seed or unconditional
  probability upgrade is claimed here.
- Horizon mode: one refinement statistic at the setting's fixed finite
  level horizon \(0,\ldots,S\). The output is uniform in the fixed value of
  \(S\) and is later consumed at the fixed sample horizon.
- Norm mode: scalar conditional variance, equivalently a second moment of
  the real statistic \(W_i(c)\); the activation and moment transfer use the
  exact absolute residual \(|x-m_0|\), consistent with the theorem's
  absolute metric.
- Admissibility conditions and auxiliary tolerances: the setting-defined
  positive level law and finite scale family, \(a_k\geq200\), and the local
  derived scalar condition \(|c-\mu|\leq50\sigma\). No new tolerance,
  tail event, support condition, or selected-cell event is introduced.
- Term absorption or simplification inequalities:
  \[
    \frac{h_s^2}{p_s}=Z_Sh_s^k,
    \qquad
    \sum_{s=1}^S h_s^k{\bf1}_{\Gamma_s(c)}(x)
       \leq C_{{\rm act},k}|x-m_0|^k,
  \]
  \[
    h_0^k=a_k^k\sigma^k,
    \qquad
    M_k(c)\leq C_k^{\rm rec}\sigma^k
       \quad\text{on }\mathcal E_{\rm loc}.
  \]
  No term is dropped except the indicator
  \({\bf1}_{\Gamma_0(c)}\leq1\), which is displayed before use.
- Probability conversion: None. The final conditional-to-unconditional
  conversion and payment of \(\Pr(\mathcal E_{\rm loc}^c)\) are assigned
  to step_008.
- Contribution to any Rate Specialization Bridge: this step exports the
  exact technical variance scale \(C_k^{\rm var}\sigma^kZ_S\) consumed by
  step_007. Evaluation of \(Z_S\) in the three regimes is assigned to
  step_006. At \(k=2\), the local bridge already certifies the single factor
  \(Z_S=S+1\), with no spurious second logarithm.
- Baseline-reduction check: for a law supported in the selected
  \(J_{0,j_0}\), all higher target and alias squares vanish exactly and the
  proof reduces to the level-zero ledger. For \(D\{m_0\}=1\), that ledger
  also vanishes and the variance is exactly zero.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing setting and output objects.** The setting-defined
  \(W_i(c),h_s,p_s,Z_S,d_s,m_0\), and \(\mathcal E_{\rm loc}\) retain
  their original meanings. The accepted dependency objects \(M_k(c)\),
  \(C_k^{\rm rec}\), \(\Gamma_s(c)\) for \(s\geq1\), and
  \(C_{{\rm act},k}\) retain exactly their accepted meanings. The sole new
  public-facing output is
  \(C_k^{\rm var}=24a_k^k+128C_{{\rm act},k}C_k^{\rm rec}\), together
  with the conditional variance inequality it parameterizes.
- **Proof-local helper objects.** The ring abbreviations
  \(E_{0,q}(c),E_{s,q}(c)\) and the level-zero support
  \(\Gamma_0(c)\) are direct expressions in setting rings and are used only
  to display every alias term. The conditional level contributions
  \(\mathbb E[W_i(c)^2{\bf1}\{L_i=s\}\mid X_i=x,c]\) are written inline
  rather than exported under new symbols. No appendix-local dictionary or
  auxiliary random object is introduced.
- **Constant provenance.** The factors \(16,64,32\) in the exact square
  ledgers result from the displayed level/color/branch/type probabilities,
  the squared setting coefficients, and the dither factor \(1/2\). The
  bounds \(24\) and \(128=96+32\) result respectively from the coordinate
  amplitude bound \(3/4\) and the displacement bound \(|d_s|\leq h_s\).
  The constants \(C_{{\rm act},k}\) and \(C_k^{\rm rec}\) are inherited
  from accepted dependencies, and \(C_k^{\rm var}\) is proved by
  Proposition~\(\ref{prop:step-005-conditional-variance}\); no free finite
  constant is chosen.
- **Assumption provenance.** The refinement/localization independence,
  per-sample seed product law, and query timing are primitive. Successful
  localization and the recentered moment are accepted derived outputs from
  step_001; amplitude, displacement, and unique activity are accepted
  derived outputs from step_002; the dither square is derived in step_003;
  and the all-alias activation ledger is derived in step_004. Fixing
  \(c,x\) and later restricting \(c\) to \(\mathcal E_{\rm loc}\) are
  local conditional hypotheses with these producer paths, not new theorem
  assumptions.
- **All-alias and summation-order audit.** At each level, the exact formulas
  sum over every \(q\in\mathbb Z\), including \(q=0\) and all
  \(q\neq0\). Same-color disjointness makes those countable sums pointwise
  zero- or one-term sums. Squaring the target mask removes its sign, and the
  dither square uses \(|F_i(x)|\), so no signed alias cancellation is
  imported. The finite level sum is completed pointwise before expectation.
- **Conditional-law and boundary audit.** The proof conditions only on the
  independent localization output, not on frozen refinement public coins.
  It covers \(S=1\), \(k=2\), target-only activity, alias-only activity,
  \(d_s=0\), zero coordinate amplitude, mass amplitude one, every half-open
  boundary, support in \(J_{0,j_0}\), and the point-mass zero-variance
  case. The large \(p_s^{-1}\) factor is visible at every level.
- **Diagnostic boundary.** The optional `global_proof.md` was not read or
  used. It supplies no evidence, cited result, assumption, dependency, or
  authority to alter the target claim.
