# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every fixed (c) independent of refinement, prove both
  dither identities, cancel every same-color non-target ring by fresh
  target-mask orthogonality, verify all constants in (W_i(c)), and obtain
  
  \[
    \mathbb E[W_i(c)\mid X_i=x,c]
      =(x-m_0){\bf1}\{x\in J_{S,j_S}\}
  \]
  
  and the exact outer-residual decomposition of \(\mu-m_0\).
- Depends on: step_001 and step_002.
- Assumptions used: Primitive assumptions `assump:independent-samples` and
  `assump:precommitted-protocol`. Derived inputs are the bounded queries,
  path partition, and displacement identities from step_002, together with
  independence of \(c\) and the refinement block from step_001 and the
  primitive sample split.
- Technical challenge: Exact inversion of level, color, branch, type, and
  dither probabilities and cancellation of infinitely many possible aliases
  without a cell union bound.
- Intended proof tool or cited result: Direct integration over the uniform
  dither, Rademacher self- and cross-moments, and the finite target-ring
  telescope.
- Output target: Exact conditional mean \(\theta(c)\), zero alias bias, only
  the outer residual, and the baseline level-zero reduction.
- Rate objective: None.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- `assump:independent-samples`: the complete localization block is
  independent of every refinement sample and of all refinement levels,
  colors, branches, types, masks, and dithers; within the refinement block,
  the sample and all of its query seeds are mutually independent, and the
  masks are independent Rademacher coordinates. This supplies the exact
  product kernel used below after conditioning on the localization output
  and on \(X_i=x\).
- `assump:precommitted-protocol`: all refinement seeds and the complete
  countable mask family are sampled before any response, while \(c\) is used
  only by the decoder after the transcript is collected. This ensures that
  fixing \(c\) selects coefficients in \(W_i(c)\) but does not alter the law
  or definition of the query \(F_i\).

The setting-defined law has the finite mean
\(\mu=\mathbb E_D X\in[-\lambda,\lambda]\). No numerical moment bound,
localization-success event, core event, or recentered-moment estimate is used
in this step.

### Derived invariants supplied by accepted dependencies

- The accepted dependency pair
  `perspective_3/idea_1/proof_steps/step_001/proof.md` (Unit attempt 2,
  SHA-256
  `3a2ebe803850bbf2555a703a69cf406adbeda503710d10de19f9eb286907443a`)
  and its `review.md` with status `ACCEPTED` supplies
  Proposition~\(\ref{prop:step-001-independence}\): \(c\), \(m_0\), and all
  decoder path objects are measurable with respect to the localization
  sigma-field \(\mathscr L_{\rm loc}\), which is independent of the complete
  refinement block; conditional on \(\mathscr L_{\rm loc}\), the refinement
  tuples retain their original independent product law. This proof uses no
  localization-success, core, or moment conclusion from that dependency.
- The accepted dependency pair
  `perspective_3/idea_1/proof_steps/step_002/proof.md` (Unit attempt 1,
  SHA-256
  `4d6547f9389cc8a94f6ca170ca7c6059e61ee14d0232b6441d1ce333ea2cce0c`)
  and its `review.md` with status `ACCEPTED` supplies:
  
  1. Lemma~\(\ref{lem:step-002-ancestor}\), including
     \(d_s=m_s-m_0\) and the always-defined decoder path;
  2. Proposition~\(\ref{prop:step-002-partition}\), including the exact
     pointwise partition
     \(\sum_{s=0}^S{\bf1}_{R_s(c)}={\bf1}_{J_{S,j_S}}\);
  3. Lemma~\(\ref{lem:step-002-color}\), including pairwise-disjoint
     same-color rings, the coordinate bound \(3/4\), the mass bound one, and
     exact higher-level target-and-alias inactivity on \(J_{0,j_0}\); and
  4. Proposition~\(\ref{prop:step-002-queries}\), including joint Borel
     measurability, \([-1,1]\)-boundedness, and precommitment of every
     realized \(F_i\).

### Local conditional hypotheses

None. Fixing an arbitrary \(c\in\mathbb R\) is a pointwise parameterization
of the accepted independent product kernel, not a theorem-facing success or
selected-cell hypothesis. Every identity below holds for every such \(c\),
including localization-failure outputs.

## Local Lemma Map

Atomic step = no. The dither calculation, mask projection, importance
inversion, and target telescope are logically distinct and expose separate
downstream interfaces.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\(\ref{assump:independent-samples}\), if \(U\sim {\rm Unif}[-1,1]\) is independent of a fixed \(f\in[-1,1]\) and \(\Delta_f(U)={\bf1}\{f\geq U\}-{\bf1}\{0\geq U\}\), then \(\mathbb E\Delta_f(U)=f/2\) and \(\mathbb E\Delta_f(U)^2=|f|/2\), including \(f=-1,0,1\). | Proves both exact dither identities and exports the square identity needed by the variance step. |
| unit_002 | lemma | Under Assumption~\(\ref{assump:independent-samples}\), Lemma~\(\ref{lem:step-003-dither}\), and the accepted same-color disjointness and bounded-query conclusions, multiplying the dither difference by the decoder's target mask projects any fixed-color query onto its target ring: target-mask self-correlation retains exactly one half of the target amplitude, and every active non-target ring has zero expectation by independent Rademacher cross-correlation. | Cancels every same-color alias without a union bound or an interchange of an infinite sum. |
| unit_003 | proposition | Under Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\), the accepted independence, displacement, and ring-query conclusions, and Lemma~\(\ref{lem:step-003-mask-projection}\), for every fixed independent \(c\) and every \(x\), the level-zero contribution equals \((x-m_0){\bf1}_{R_0(c)}(x)\), while each level \(s\geq1\) contributes \([(x-m_s)+d_s]{\bf1}_{R_s(c)}(x)=(x-m_0){\bf1}_{R_s(c)}(x)\). All factors in \(W_i(c)\) are inverted exactly. | Verifies the complete level/color/branch/type/dither constant ledger and leaves zero alias mean at every level. |
| unit_004 | proposition | Under Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\), the accepted partition and baseline-inactivity conclusions, and Proposition~\(\ref{prop:step-003-level-inversion}\), for every fixed independent \(c\), \(\mathbb E[W_i(c)\mid X_i=x,c]=(x-m_0){\bf1}_{J_{S,j_S}}(x)\), \(\theta(c)=\mathbb E[(X-m_0){\bf1}_{J_{S,j_S}}(X)\mid c]\), and \(\mu-m_0=\theta(c)+\mathbb E[(X-m_0){\bf1}_{J_{S,j_S}^c}(X)\mid c]\). If the law is supported in \(J_{0,j_0}\), only the level-zero correction remains and the outer residual is exactly zero; if \(X=m_0\), the correction itself is exactly zero. | Produces the exact conditional target mean, sole outer residual, finite telescope, and inherited baseline reduction. |

## Cited Result Applications

No external paper result is used in this step. The two accepted dependency
interfaces and the elementary product-kernel rule are restated here before
application.

### Accepted dependency: independent refinement product kernel

**Source and restated statement.** The current accepted
Proposition~\(\ref{prop:step-001-independence}\) states that the complete
localization sigma-field \(\mathscr L_{\rm loc}\), which contains \(c\) and
\(m_0\), is independent of all refinement samples and seeds. Conditional on
\(\mathscr L_{\rm loc}\), every refinement tuple has its original product
law, independently across sample indices.

**Instantiated objects and conclusion used.** For the fixed index \(i\), the
refinement tuple consists of \(X_i,L_i,C_i,U_i\), the conditional
higher-level variables \(T_i,B_i\), and the complete mask family
\((\rho_{i,s,j})_{s,j}\). Thus, after fixing any realized \(c\), \(X_i\)
still has law \(D\); conditional on \(X_i=x\), its level, color, branch,
type, dither, and masks retain exactly the setting probabilities and remain
mutually independent. Assumption~\(\ref{assump:independent-samples}\)
discharges the product-law requirement, and
Assumption~\(\ref{assump:precommitted-protocol}\) ensures that decoder-side
selection does not modify a query.

### Accepted dependency: exact ring and bounded-query geometry

**Source and restated statement.** The current accepted
Lemma~\(\ref{lem:step-002-ancestor}\),
Proposition~\(\ref{prop:step-002-partition}\),
Lemma~\(\ref{lem:step-002-color}\), and
Proposition~\(\ref{prop:step-002-queries}\) state, in current notation, that
for every \(c\):

- \(d_s=m_s-m_0\);
- the target rings are pointwise disjoint and their indicator sum is exactly
  \({\bf1}_{J_{S,j_S}}\);
- for a fixed level, color, and branch, at most one same-color ring is active
  at any \(x\), and distinct ring masks are independent coordinates;
- the coordinate amplitude lies in \([-3/4,3/4]\), the mass amplitude is in
  \(\{-1,1\}\) after multiplication by its mask, and every \(F_i(x)\) lies
  in \([-1,1]\); and
- on \(J_{0,j_0}\), every higher target or retained same-color alias ring is
  inactive.

**Conclusion used and boundary discharge.** These are the exact sets and
amplitudes occurring in \(F_i\) and \(W_i(c)\); no object translation or
surrogate metric is needed. Their accepted half-open endpoint and
negative-index calculations imply unique activity even at every boundary.

### Elementary product-kernel and tower facts

If a random seed \(\Xi\) is independent of a pair \((X,c)\), then for every
bounded measurable \(g\),
\[
  \mathbb E[g(X,c,\Xi)\mid X,c]
    =\int g(X,c,\xi)\,P_\Xi(d\xi)
  \quad\text{almost surely}.
\]
The right side defines a pointwise measurable version whenever the integral
is evaluated for each \((x,c)\). Applying the tower property then gives
\[
  \mathbb E[g(X,c,\Xi)\mid c]
  =\int\!\left(\int g(x,c,\xi)P_\Xi(d\xi)\right)D(dx)
\]
when \(X\) has law \(D\) independently of \(c\). The accepted product
kernel above discharges these hypotheses. For fixed \(c\), \(W_i(c)\) is
bounded by a finite maximum over the finite levels because every \(p_s>0\),
\(|d_s|<\infty\), and \(|\Delta Y_i|\leq1\), so the conditional integrals
used here exist.

### Local result applications

- Lemma~\(\ref{lem:step-003-dither}\) is proved in unit_001 by direct
  integration. It is used by
  Lemma~\(\ref{lem:step-003-mask-projection}\), and its square identity is
  exported to the later variance calculation.
- Lemma~\(\ref{lem:step-003-mask-projection}\) is proved in unit_002 from the
  dither lemma, independent Rademacher coordinates, and accepted unique
  same-color activity. It is used by
  Proposition~\(\ref{prop:step-003-level-inversion}\).
- Proposition~\(\ref{prop:step-003-level-inversion}\) is proved in unit_003
  by substituting every setting probability and coefficient. It is used by
  Proposition~\(\ref{prop:step-003-telescope}\).
- Proposition~\(\ref{prop:step-003-telescope}\) is proved in unit_004 from
  exact level inversion and the accepted finite ring partition. It is the
  public-facing output used by the tail, concentration, and final assembly
  steps.

## Local Derivation

### unit_001: lemma

**Lemma (Exact centered-uniform dither moments).**
\(\label{lem:step-003-dither}\)
Under Assumption~\(\ref{assump:independent-samples}\), let
\(U\sim{\rm Unif}[-1,1]\) and fix any \(f\in[-1,1]\) independently of
\(U\). Define
\[
  \Delta_f(U):={\bf1}\{f\geq U\}-{\bf1}\{0\geq U\}.
\]
Then, including \(f=-1,0,1\),
\[
  \mathbb E_U\Delta_f(U)=\frac f2,
  \qquad
  \mathbb E_U\Delta_f(U)^2=\frac{|f|}{2}.
\]
Consequently, if a random \(F\in[-1,1]\) is independent of \(U\), these
identities hold conditionally on \(F\), with \(f\) replaced by \(F\).

**Proof / justification.** If \(0\leq f\leq1\), direct comparison of the two
threshold indicators gives
\[
  \Delta_f(u)={\bf1}_{(0,f]}(u).
\]
If \(-1\leq f<0\), it gives
\[
  \Delta_f(u)=-{\bf1}_{(f,0]}(u).
\]
For \(f=0\), the two indicators agree for every \(u\), so
\(\Delta_0\equiv0\). Since uniform measure on \([-1,1]\) has density
\(1/2\), integrating the signed interval indicator gives \(f/2\), and
squaring removes its sign and gives \(|f|/2\). The intervals include the
correct threshold endpoints; changing any single endpoint would in any case
have zero uniform measure. Conditioning on a random independent \(F\) fixes
its value and applies the same pointwise calculation. \(\square\)

### unit_002: lemma

**Lemma (Fresh-mask projection and exact alias cancellation).**
\(\label{lem:step-003-mask-projection}\)
Under Assumption~\(\ref{assump:independent-samples}\),
Lemma~\(\ref{lem:step-003-dither}\), and the accepted conclusions of
Lemma~\(\ref{lem:step-002-color}\) and
Proposition~\(\ref{prop:step-002-queries}\), fix a level, a color class,
and, for a higher level, a branch and type. Let \((E_j)_{j\in\mathcal J}\)
be the resulting pairwise-disjoint same-color rings, let
\((\rho_j)_{j\in\mathcal J}\) be their independent Rademacher masks, and
write the fixed-query section at \(x\) as
\[
  F_\rho(x)=\sum_{j\in\mathcal J}
    \rho_j a_j(x){\bf1}_{E_j}(x)\in[-1,1].
\]
For any target index \(j_\star\in\mathcal J\), if \(U\) is the independent
uniform dither, then for every \(x\),
\[
  \mathbb E_{\rho,U}\!\left[
    \rho_{j_\star}\Delta_{F_\rho(x)}(U)
  \right]
  =\frac12a_{j_\star}(x){\bf1}_{E_{j_\star}}(x).
\]
In particular, if the unique active ring at \(x\) has index
\(j\neq j_\star\), its contribution is exactly zero.

**Proof / justification.** Condition first on the complete mask family.
Lemma~\(\ref{lem:step-003-dither}\) and its accepted boundedness hypothesis
give
\[
\begin{aligned}
  \mathbb E_{\rho,U}
    [\rho_{j_\star}\Delta_{F_\rho(x)}(U)]
  &=\frac12\mathbb E_\rho[\rho_{j_\star}F_\rho(x)].
\end{aligned}
\]
At the fixed point \(x\), accepted same-color disjointness leaves either no
active summand or one active index \(q\). In the first case both sides are
zero. In the second case the last expectation is
\[
  \frac12a_q(x){\bf1}_{E_q}(x)
  \mathbb E[\rho_{j_\star}\rho_q]
  =\frac12a_q(x){\bf1}_{E_q}(x){\bf1}\{q=j_\star\},
\]
because \(\rho_{j_\star}^2=1\) and distinct masks are independent and
centered. This is exactly the displayed target projection. Since there is at
most one active summand, no countable sum is exchanged with expectation;
all infinitely many possible non-target cells are covered by the same
pointwise cross-moment calculation. \(\square\)

### unit_003: proposition

**Proposition (Exact per-level importance inversion).**
\(\label{prop:step-003-level-inversion}\)
Under Assumptions~\(\ref{assump:independent-samples}\) and
\(\ref{assump:precommitted-protocol}\), the accepted conclusions of
Proposition~\(\ref{prop:step-001-independence}\),
Lemma~\(\ref{lem:step-002-ancestor}\),
Lemma~\(\ref{lem:step-002-color}\), and
Proposition~\(\ref{prop:step-002-queries}\), and
Lemma~\(\ref{lem:step-003-mask-projection}\), fix any decoder value \(c\)
independent of the refinement block. For every \(x\in\mathbb R\), define the
pointwise product-kernel contribution
\[
  K_s(x,c):=
  \mathbb E\!\left[W_i(c){\bf1}\{L_i=s\}\mid X_i=x,c\right].
\]
Then
\[
  K_0(x,c)=(x-m_0){\bf1}_{R_0(c)}(x),
\]
and, for every \(1\leq s\leq S\),
\[
  K_s(x,c)
  =\bigl[(x-m_s)+d_s\bigr]{\bf1}_{R_s(c)}(x)
  =(x-m_0){\bf1}_{R_s(c)}(x).
\]
Every same-color non-target ring contributes zero to every one of these
identities.

**Proof / justification.** Fix \(c\) and \(x\). The accepted independent
product kernel leaves the level law, all seed probabilities, and all mask
and dither laws unchanged. Also
\[
  \Delta Y_i
  ={\bf1}\{F_i(x)\geq U_i\}-{\bf1}\{0\geq U_i\}
  =\Delta_{F_i(x)}(U_i).
\]

At level zero, \(W_i(c)\) vanishes unless
\(C_i=\kappa_0\), whose probability is \(1/4\). Conditional on this color,
apply Lemma~\(\ref{lem:step-003-mask-projection}\) with target
\(j_\star=j_0\), rings \(E_j={\cal R}_{0,j}\), and coordinate amplitude
\(a_j(x)=(x-m_{0,j})/(2h_0)\). It gives
\[
  \mathbb E_{\rho,U}
  [\rho_{i,0,j_0}\Delta Y_i
    \mid x,c,L_i=0,C_i=\kappa_0]
  =\frac{x-m_0}{4h_0}{\bf1}_{R_0(c)}(x).
\]
All active aliases \(j\neq j_0\) have already vanished by the cross-mask
moment. Substitution into the setting coefficient gives the complete
level-zero ledger
\[
\begin{aligned}
  K_0(x,c)
  &=p_0\cdot\frac14\cdot\frac{16h_0}{p_0}
    \cdot\frac{x-m_0}{4h_0}{\bf1}_{R_0(c)}(x)\\
  &=(x-m_0){\bf1}_{R_0(c)}(x).
\end{aligned}
\]
Thus \(16h_0/p_0\) exactly inverts the level probability \(p_0\), color
probability \(1/4\), dither factor \(1/2\), and coordinate normalization
\(1/(2h_0)\). No branch or type variable exists at level zero.

Now fix \(s\geq1\). The statistic vanishes unless
\(C_i=\kappa_s\) and \(B_i=b_s\), with respective probabilities \(1/4\)
and \(1/2\). Conditional also on \(T_i={\rm coord}\), apply
Lemma~\(\ref{lem:step-003-mask-projection}\) to the rings
\(E_j={\cal R}_{s,j,b_s}\), target \(j_\star=j_s\), and amplitudes
\(a_j(x)=(x-m_{s,j})/(2h_s)\). This gives
\[
  \mathbb E_{\rho,U}
  [\rho_{i,s,j_s}\Delta Y_i
   \mid x,c,L_i=s,C_i=\kappa_s,B_i=b_s,
           T_i={\rm coord}]
  =\frac{x-m_s}{4h_s}{\bf1}_{R_s(c)}(x).
\]
Conditional instead on \(T_i={\rm mass}\), the target amplitude is one, so
the same lemma gives
\[
  \mathbb E_{\rho,U}
  [\rho_{i,s,j_s}\Delta Y_i
   \mid x,c,L_i=s,C_i=\kappa_s,B_i=b_s,
           T_i={\rm mass}]
  =\frac12{\bf1}_{R_s(c)}(x).
\]
Both formulas are zero for an active alias. Since each type has probability
\(1/2\), the coordinate part of \(K_s\) is exactly
\[
\begin{aligned}
  &p_s\cdot\frac14\cdot\frac12\cdot\frac12
    \cdot\frac{16}{p_s}\cdot4h_s
    \cdot\frac{x-m_s}{4h_s}{\bf1}_{R_s(c)}(x)\\
  &\hspace{7em}=(x-m_s){\bf1}_{R_s(c)}(x),
\end{aligned}
\]
and the mass part is exactly
\[
\begin{aligned}
  &p_s\cdot\frac14\cdot\frac12\cdot\frac12
    \cdot\frac{16}{p_s}\cdot2d_s
    \cdot\frac12{\bf1}_{R_s(c)}(x)\\
  &\hspace{7em}=d_s{\bf1}_{R_s(c)}(x).
\end{aligned}
\]
These displays separately invert the level, color, branch, type, and dither
probabilities, and the coordinate display additionally inverts the factor
\(1/(2h_s)\). Adding the two mutually exclusive type contributions and
using the accepted identity \(d_s=m_s-m_0\) yields
\[
  K_s(x,c)
  =[(x-m_s)+d_s]{\bf1}_{R_s(c)}(x)
  =(x-m_0){\bf1}_{R_s(c)}(x).
\]
This includes \(d_s=0\), in which case the mass contribution and its
coefficient are both exactly zero. \(\square\)

### unit_004: proposition

**Proposition (Exact padded-ring mean telescope and outer residual).**
\(\label{prop:step-003-telescope}\)
Under Assumptions~\(\ref{assump:independent-samples}\) and
\(\ref{assump:precommitted-protocol}\), the accepted conclusions of
Proposition~\(\ref{prop:step-001-independence}\),
Proposition~\(\ref{prop:step-002-partition}\), and
Lemma~\(\ref{lem:step-002-color}\), and
Proposition~\(\ref{prop:step-003-level-inversion}\), for every fixed decoder
value \(c\) independent of the refinement block and every \(x\in\mathbb R\),
\[
  \mathbb E[W_i(c)\mid X_i=x,c]
  =(x-m_0){\bf1}\{x\in J_{S,j_S}\}.
\]
Writing
\[
  \theta(c):=\mathbb E[W_i(c)\mid c],
\]
one has the exact same-target identities
\[
  \theta(c)
  =\mathbb E_D[(X-m_0){\bf1}\{X\in J_{S,j_S}\}\mid c]
\]
and
\[
  \mu-m_0
  =\theta(c)
   +\mathbb E_D[(X-m_0){\bf1}\{X\notin J_{S,j_S}\}\mid c].
\]
There is no localization, fine-scale, ring-gap, or mask-alias residual. If
\(D(J_{0,j_0})=1\) for this fixed \(c\), every higher-level retained
correction is pointwise zero and the displayed mean is supplied by the
level-zero statistic alone; the outer residual is exactly zero. If
\(D\{m_0\}=1\), then \(W_i(c)=0\) for every refinement seed realization.

**Proof / justification.** The level events \(\{L_i=s\}\),
\(0\leq s\leq S\), form a finite partition. Therefore
Proposition~\(\ref{prop:step-003-level-inversion}\) and the accepted exact
ring partition give, pointwise for every \(x\),
\[
\begin{aligned}
  \mathbb E[W_i(c)\mid X_i=x,c]
  &=\sum_{s=0}^S K_s(x,c)\\
  &=(x-m_0)\sum_{s=0}^S{\bf1}_{R_s(c)}(x)\\
  &=(x-m_0){\bf1}_{J_{S,j_S}}(x).
\end{aligned}
\]
This is an exact finite equality at every half-open boundary. If \(x\) lies
on a same-color non-target ring rather than a target ring, the corresponding
term is zero already by
Lemma~\(\ref{lem:step-003-mask-projection}\); if it lies outside all target
rings, both sides of the last identity are zero.

The accepted independent refinement kernel and the elementary tower rule
now yield
\[
  \theta(c)
  =\int_{J_{S,j_S}}(x-m_0)D(dx).
\]
For this fixed \(c\), \(m_0\) and \(J_{S,j_S}\) are deterministic. The
setting-defined finite mean makes \(X-m_0\) integrable, so splitting its
integral over the measurable set \(J_{S,j_S}\) and its complement gives
\[
\begin{aligned}
  \mu-m_0
  &=\int_{\mathbb R}(x-m_0)D(dx)\\
  &=\int_{J_{S,j_S}}(x-m_0)D(dx)
    +\int_{J_{S,j_S}^c}(x-m_0)D(dx),
\end{aligned}
\]
which is precisely the asserted outer-residual decomposition. The first
integral equals \(\theta(c)\), and the second is the sole residual.

Finally suppose \(D(J_{0,j_0})=1\). The accepted baseline conclusion of
Lemma~\(\ref{lem:step-002-color}\) says that, for every \(s\geq1\), neither
the target ring nor any same-color ring retained by
\((C_i,B_i)=(\kappa_s,b_s)\) is active on \(J_{0,j_0}\). If the retained
color or branch is not selected then \(W_i(c)=0\) by its decoder indicator;
if it is selected then \(F_i(X_i)=0\), hence
\(\Delta Y_i=\Delta_0(U_i)=0\). Thus every higher-level correction is
pointwise zero, not merely mean zero. Since
\(J_{0,j_0}\subseteq J_{S,j_S}\), the outer residual is also exactly zero,
and the level-zero calculation in
Proposition~\(\ref{prop:step-003-level-inversion}\) gives
\(\theta(c)=\mu-m_0\). If \(X_i=m_0\), its target level-zero coordinate
amplitude is zero, while all higher retained rings are inactive; hence
\(\Delta Y_i=0\) whenever a decoder indicator retains the query, and
\(W_i(c)=0\) for every seed realization. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-003-dither}\) proves both required uniform-dither
identities directly for every \(f\in[-1,1]\), including all endpoint and
zero-amplitude cases. Lemma~\(\ref{lem:step-003-mask-projection}\) combines
the first identity with target-mask self-correlation and fresh-mask cross
orthogonality. It retains exactly the target amplitude and cancels every
same-color non-target ring pointwise; accepted unique same-color activity
means that this covers the countable cell family without any cellwise union
bound or infinite-sum interchange.

Proposition~\(\ref{prop:step-003-level-inversion}\) then substitutes the
exact setting probabilities and coefficients. At level zero it verifies
\[
  p_0\cdot\frac14\cdot\frac{16h_0}{p_0}
       \cdot\frac{x-m_0}{4h_0}=x-m_0,
\]
and at each level \(s\geq1\) it verifies separately
\[
  p_s\cdot\frac14\cdot\frac12\cdot\frac12
  \cdot\frac{16}{p_s}\cdot4h_s
  \cdot\frac{x-m_s}{4h_s}=x-m_s
\]
and
\[
  p_s\cdot\frac14\cdot\frac12\cdot\frac12
  \cdot\frac{16}{p_s}\cdot2d_s\cdot\frac12=d_s.
\]
Thus every level, color, branch, type, dither, and coordinate normalization
is inverted exactly, and \((x-m_s)+d_s=x-m_0\).

Finally, Proposition~\(\ref{prop:step-003-telescope}\) composes these exact
per-level means with the accepted finite target-ring partition to prove
\[
  \mathbb E[W_i(c)\mid X_i=x,c]
  =(x-m_0){\bf1}\{x\in J_{S,j_S}\}.
\]
The same proposition applies the accepted independent product kernel and
the tower rule to identify \(\theta(c)\), splits the integrable residual at
\(J_{S,j_S}\), and proves that the only target discrepancy is exactly
\[
  \mathbb E_D[(X-m_0){\bf1}\{X\notin J_{S,j_S}\}\mid c].
\]
It also preserves the supported-in-\(J_{0,j_0}\) level-zero reduction and
the point-mass zero-correction baseline exactly. These named results prove
every clause of the binding sketch row. No statement from the optional
global diagnostic is used as evidence.

## Explicit Rate Audit

None.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing setting and output objects.** The setting-defined
  \(F_i,Y_i,Y_i^0,\Delta Y_i,W_i(c),j_s,b_s,m_s,d_s,R_s(c)\), and
  \(J_{S,j_S}\) retain their original meanings. The scalar
  \(\theta(c)=\mathbb E[W_i(c)\mid c]\) is the sole new public-facing
  output object; it is explicitly identified with the truncated residual
  mean and is the object consumed by the tail and concentration steps. The
  two dither identities and the exact pointwise conditional-mean formula are
  public-facing result interfaces, not new assumptions.
- **Appendix-local objects.** None.
- **Proof-local objects.** The signed dither difference
  \(\Delta_f(u)\), the generic countable index set \(\mathcal J\), its
  pairwise-disjoint family \((E_j)\), amplitudes \((a_j)\), masked section
  \(F_\rho(x)\), target index \(j_\star\), and the level contributions
  \(K_s(x,c)\) are proof-local. Each is defined immediately before use,
  translated to the setting's rings and coordinate/mass amplitudes, and
  eliminated from the exported target formula.
- **Constant and probability provenance.** No new free constant, radius,
  threshold, rate, or tolerance is introduced. The density factor \(1/2\)
  comes from \({\rm Unif}[-1,1]\); color, branch, and type probabilities are
  exactly \(1/4,1/2,1/2\); the level probability is the setting value
  \(p_s>0\); coordinate normalization is exactly \(1/(2h_s)\). The
  coefficients \(16h_0/p_0\), \((16/p_s)4h_s\), and
  \((16/p_s)2d_s\) are verified by the displayed equalities rather than
  hidden in a proportionality constant.
- **Assumption provenance.** Refinement/localization independence and the
  per-sample product seed law are primitive and are exported in measurable
  conditional form by the accepted step_001 dependency. Query boundedness,
  unique same-color activity, target partition, displacement, and baseline
  inactivity are derived facts supplied by the accepted step_002
  dependency. The dither moments, mask cancellation, per-level means,
  telescope, outer decomposition, and baseline reduction are proved in this
  step. No localization event, selected-cell success, recentered-moment
  bound, tail event, or hidden fixed-public-coin guarantee is assumed.
- **Conditioning and probability mode.** The displayed conditional mean is
  a pointwise product-kernel version for every \((x,c)\). The theorem's
  probability averages over the independent per-sample public masks,
  dithers, and other refinement seeds after conditioning only on the
  independent localization output. No stronger claim conditional on a
  frozen refinement seed is made or needed.
- **Boundary and baseline audit.** The dither proof includes
  \(f=-1,0,1\). Accepted half-open disjointness handles every ring boundary,
  and the calculations include negative indices, \(S=1\), no active ring,
  an active target, an active alias, and \(d_s=0\). On support in
  \(J_{0,j_0}\), every higher retained statistic is exactly inactive and the
  outer residual is zero. At \(X=m_0\), the level-zero amplitude and every
  retained higher correction are zero.
- **Diagnostic boundary.** The optional `global_proof.md` was not read or
  used. It supplies no evidence, cited result, assumption, dependency, or
  authority to change the target claim.
