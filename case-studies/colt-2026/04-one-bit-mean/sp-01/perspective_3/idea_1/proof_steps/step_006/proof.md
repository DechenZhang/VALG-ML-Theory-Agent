# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove
  \[
    \lvert\mu-m_0-\theta(c)\rvert
    \leq C_k^{\rm rec}\frac{\sigma^k}{H^{k-1}}
    \leq\frac{\epsilon}{4}
  \]
  after a k-only \(b_k\) choice; verify
  \(H_\star\leq H<2H_\star\); and derive the three exact
  equivalences for \(Z_S\) and
  \(A_k=\sigma^kZ_S/\epsilon^2\), including endpoint and ceiling
  conditions.
- Depends on: step_001, step_002, and step_003.
- Assumptions used: Primitive assumptions
  assump:parameter-domain and assump:moment-class. Derived inputs are the
  recentered moment from step_001, the outer inclusion from step_002, and
  the exact residual from step_003.
- Technical challenge: Same-target tail transfer and the exact middle-regime
  logarithm without hidden term dropping.
- Intended proof tool or cited result: Direct moment-tail inequality, the
  design choice \(b_k^{k-1}\geq4C_k^{\rm rec}\), dyadic rounding, and
  three finite geometric-series calculations.
- Output target: Tail-bias certificate, zero-tail baseline, scale
  admissibility, and the \(Z_S\) and \(A_k\) public rate interfaces.
- Rate objective: Expose all
  \(k,\sigma,\epsilon,S,H,H_\star,Z_S\); hold \(k\) fixed; use
  deterministic mode for the scale and rate identities; and verify every
  regime substitution and \(A_k\gtrsim_k1\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- assump:parameter-domain:
  \(k>1\) is fixed and known, \(\lambda\geq\sigma>0\),
  \(0<\epsilon\leq c_k\sigma\), and \(c_k\in(0,1)\) is a k-only
  design constant. This step does not use \(\delta\). It will impose an
  explicit k-only upper bound on \(c_k\) after choosing \(b_k\).
- assump:moment-class:
  \(D\in\mathcal D(k,\lambda,\sigma)\), so
  \(\mu=\mathbb E_DX\) is finite and
  \(\mathbb E_D|X-\mu|^k\leq\sigma^k\), with no support, density,
  symmetry, or tail-shape condition. The quantitative use of this primitive
  condition is already packaged in the accepted recentered-moment
  dependency, whose full interface is restated below.

### Derived invariants supplied by accepted dependencies

- The accepted step_001 pair, Unit attempt 2, supplies
  \[
    \mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\},
    \qquad
    \Pr_D(\mathcal E_{\rm loc})\geq1-\delta/4,
  \]
  and, for \(a_k\geq200\), the pointwise successful-transcript bound
  \[
    M_k(c):=\int|x-m_0(c)|^kD(dx)
    \leq C_k^{\rm rec}\sigma^k,
    \qquad
    C_k^{\rm rec}
      =2^{k-1}\left[1+\left(\frac{3a_k}{4}\right)^k\right].
  \]
  The event and moment bound are derived outputs, not primitive
  assumptions.
- The accepted step_002 pair, Unit attempt 1, supplies, for every decoder
  value \(c\),
  \[
    [m_0-H,m_0+H]\subset J_{S,j_S}
  \]
  with strict clearance from both outer padding boundaries, as well as
  \(J_{0,j_0}\subseteq J_{S,j_S}\).
- The accepted step_003 pair, Unit attempt 1, supplies, for every fixed
  decoder value \(c\) independent of the refinement block,
  \[
    \theta(c)=\mathbb E[W_i(c)\mid c]
      =\int_{J_{S,j_S}}(x-m_0)D(dx)
  \]
  and the exact same-target decomposition
  \[
    \mu-m_0
      =\theta(c)
       +\int_{J_{S,j_S}^c}(x-m_0)D(dx).
  \]
  It also supplies the exact supported-in-\(J_{0,j_0}\) level-zero
  reduction and zero outer residual.

### Local conditional hypotheses

None are unsupported. The tail proposition below is evaluated for a
localization transcript in the accepted derived event
\(\mathcal E_{\rm loc}\); that restriction is not promoted to a new
theorem assumption. The dyadic rounding, normalizer identities, and
\(A_k\) bounds are deterministic and hold for every admissible
\((\sigma,\epsilon)\), independently of localization success.

## Local Lemma Map

Atomic step = no. The scale design, same-target tail transfer, geometric
normalizer evaluation, and public complexity substitution are independent
rate-bearing obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted constant conclusion of Lemma~\(\ref{lem:step-001-recenter}\), choose \(b_k\geq a_k\) with \(b_k^{k-1}\geq4C_k^{\rm rec}\), and choose \(c_k\leq\min\{1/2,(b_k/(2a_k))^{k-1}\}\). Then every \(0<\epsilon\leq c_k\sigma\) has \(H_\star/h_0\geq2\), \(S\geq1\), and \(H_\star\leq H<2H_\star\), with the exact \(H_\star/h_0=2\) and \(S=1\) boundary identified. | Supplies the legal k-only scale choices and verifies the dyadic ceiling without asymptotic notation. |
| unit_002 | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:moment-class}\), the three accepted dependency interfaces, and Lemma~\(\ref{lem:step-006-scale}\), every localization transcript in \(\mathcal E_{\rm loc}\) satisfies \(\lvert\mu-m_0-\theta(c)\rvert\leq C_k^{\rm rec}\sigma^k/H^{k-1}\leq\epsilon/4\); outer-boundary atoms obey the same inequality, while support in \(J_{S,j_S}\), hence support in \(J_{0,j_0}\), gives exactly zero residual. | Proves the target tail bridge, boundary handling, and zero-tail baseline. |
| unit_003 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and Lemma~\(\ref{lem:step-006-scale}\), the finite sum \(Z_S=\sum_{s=0}^Sh_s^{2-k}\) has an exact geometric formula and explicit two-sided bounds in each of the fixed regimes \(k>2\), \(k=2\), and \(1<k<2\), including the ceiling endpoints. | Produces the three exact \(Z_S\) interfaces with no dropped endpoint or additive term. |
| unit_004 | proposition | Under Assumption~\(\ref{assump:parameter-domain}\), Lemma~\(\ref{lem:step-006-normalizer}\), and the scale choices of Lemma~\(\ref{lem:step-006-scale}\), \(A_k=\sigma^kZ_S/\epsilon^2\) obeys explicit two-sided public bounds in all three regimes and an explicit positive k-only lower bound. | Produces the three public refinement rates and verifies \(A_k\gtrsim_k1\). |

## Cited Result Applications

No external paper theorem is used in this step. The direct moment-tail and
finite geometric-sum arguments are proved in the local units below. The
accepted dependency results are restated here with their exact current
interfaces before use.

### Accepted dependency: recentered kth moment

The accepted artifact
perspective_3/idea_1/proof_steps/step_001/proof.md, Unit attempt 2, has
SHA-256
\(3a2ebe803850bbf2555a703a69cf406adbeda503710d10de19f9eb286907443a\);
its matching review has status ACCEPTED. Its
Lemma~\(\ref{lem:step-001-recenter}\) states that under
Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:moment-class}\), on the derived condition
\(|c-\mu|\leq50\sigma\), and for \(a_k\geq200\),
\[
  M_k(c)
  :=\int_{\mathbb R}|x-m_0(c)|^kD(dx)
  \leq
  2^{k-1}\left[\sigma^k+\left(\frac{3h_0}{4}\right)^k\right]
  =C_k^{\rm rec}\sigma^k,
\]
where
\[
  C_k^{\rm rec}
  =2^{k-1}\left[1+\left(\frac{3a_k}{4}\right)^k\right].
\]
The same accepted pair proves
\(\Pr_D(\mathcal E_{\rm loc})\geq1-\delta/4\), so the local condition is
a produced event. The present step uses only the pointwise moment conclusion
on that event; it performs no probability conversion.

### Accepted dependency: final-padding containment

The accepted artifact
perspective_3/idea_1/proof_steps/step_002/proof.md, Unit attempt 1, has
SHA-256
\(4d6547f9389cc8a94f6ca170ca7c6059e61ee14d0232b6441d1ce333ea2cce0c\);
its matching review has status ACCEPTED. Its
Lemma~\(\ref{lem:step-002-ancestor}\) states for every decoder value \(c\)
that, with \(H=h_S\),
\[
  [m_0-H,m_0+H]\subset J_{S,j_S}.
\]
More precisely, it writes
\[
  m_0=(j_S+\vartheta_S)H,\qquad0<\vartheta_S<1,
\]
and proves
\[
  (j_S-1)H<m_0-H\leq m_0+H<(j_S+2)H.
\]
Thus the closed radius-\(H\) interval lies inside the half-open set
\(J_{S,j_S}=[(j_S-1)H,(j_S+2)H)\). Its nested-padding conclusion also gives
\(J_{0,j_0}\subseteq J_{S,j_S}\). These conclusions are deterministic and
need no localization-success condition.

### Accepted dependency: exact truncated mean and residual

The accepted artifact
perspective_3/idea_1/proof_steps/step_003/proof.md, Unit attempt 1, has
SHA-256
\(ddcf7eacf03321017a37385ee1c9f27df6c27dd5f92c7f0dc1e3a1258e5432d6\);
its matching review has status ACCEPTED. Its
Proposition~\(\ref{prop:step-003-telescope}\) states, for every fixed
decoder value \(c\) independent of refinement,
\[
  \theta(c)
  =\int_{J_{S,j_S}}(x-m_0)D(dx)
\]
and
\[
  \mu-m_0-\theta(c)
  =\int_{J_{S,j_S}^c}(x-m_0)D(dx).
\]
The equality is exact: there is no localization, fine-scale, ring-gap, or
mask-alias residual. If \(D(J_{0,j_0})=1\), all retained higher-level
corrections are pointwise zero, the level-zero statistic alone has mean
\(\mu-m_0\), and the displayed outer residual is exactly zero. If
\(D\{m_0\}=1\), the entire refinement correction is pointwise zero.

### Local result applications

- Lemma~\(\ref{lem:step-006-scale}\) is proved in unit_001 from the exact
  ceiling definition and is used by every later local result.
- Proposition~\(\ref{prop:step-006-tail}\) is proved in unit_002 from the
  three accepted dependency interfaces and the scale lemma. It exports the
  same-target \(\epsilon/4\) bridge and baseline certificate.
- Lemma~\(\ref{lem:step-006-normalizer}\) is proved in unit_003 by three
  finite geometric sums and exact ceiling inequalities. It is used by the
  public-rate proposition.
- Proposition~\(\ref{prop:step-006-rate}\) is proved in unit_004 by direct
  substitution into the normalizer bounds. It exports \(A_k\) and its
  positive k-only lower bound.

## Local Derivation

### unit_001: lemma

**Lemma (Admissible dyadic outer scale and exact rounding).**
\(\label{lem:step-006-scale}\)
Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted
constant conclusion of Lemma~\(\ref{lem:step-001-recenter}\), take the
k-only \(a_k\geq200\) and \(C_k^{\rm rec}<\infty\), and choose
\[
  b_k:=\max\left\{
    a_k,\ (4C_k^{\rm rec})^{1/(k-1)}
  \right\}.
\]
Choose the theorem constant \(c_k\) so that
\[
  0<c_k\leq
  \min\left\{\frac12,
    \left(\frac{b_k}{2a_k}\right)^{k-1}\right\}.
\]
Then, for every \(0<\epsilon\leq c_k\sigma\),
\[
  \frac{H_\star}{h_0}\geq2,\qquad S\geq1,\qquad
  H_\star\leq H<2H_\star.
\]
These statements include \(\epsilon=c_k\sigma\). If
\(H_\star/h_0=2\), then \(S=1\) and \(H=H_\star\). Conversely, under
\(H_\star/h_0\geq2\), the minimum value \(S=1\) can occur only when
\(H_\star/h_0=2\).

**Proof / justification.** Both \(b_k\) and the displayed admissible upper
bound on \(c_k\) depend only on the fixed \(k\), because
\(a_k,C_k^{\rm rec}\) do. The choice gives
\[
  b_k\geq a_k,\qquad
  b_k^{k-1}\geq4C_k^{\rm rec}.
\]
Put, only for this proof,
\[
  x:=\frac{\sigma}{\epsilon},
  \qquad
  R:=\frac{H_\star}{h_0}
    =\frac{b_k}{a_k}x^{1/(k-1)}.
\]
The parameter domain and the choice of \(c_k\) give
\[
\begin{aligned}
  R
  &\geq\frac{b_k}{a_k}c_k^{-1/(k-1)}\\
  &\geq\frac{b_k}{a_k}
      \left(\frac{2a_k}{b_k}\right)
   =2.
\end{aligned}
\]
Also \(c_k\leq1/2\) gives \(x\geq2\), a fact used later for the logarithmic
and ceiling lower bounds.

Let \(q=\log_2R\). By the exact ceiling definition
\(S=\lceil q\rceil\),
\[
  q\leq S<q+1.
\]
Exponentiating base two and multiplying by \(h_0\) yields
\[
  H_\star=h_0R\leq h_0\,2^S=H
    <2h_0R=2H_\star.
\]
Since \(R\geq2\), \(q\geq1\) and hence \(S\geq1\). If \(R=2\), then
\(q=1\), so \(S=1\) and \(H=h_0\,2=H_\star\). Conversely, if \(S=1\),
then \(q\leq1\), while \(R\geq2\) gives \(q\geq1\); hence \(q=1\) and
\(R=2\). No strict parameter-domain inequality is needed, so the same
calculation holds at \(\epsilon=c_k\sigma\). \(\square\)

### unit_002: proposition

**Proposition (Outer residual controlled at the target scale).**
\(\label{prop:step-006-tail}\)
Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:moment-class}\), the accepted conclusions of
Lemma~\(\ref{lem:step-001-recenter}\),
Lemma~\(\ref{lem:step-002-ancestor}\), and
Proposition~\(\ref{prop:step-003-telescope}\), and
Lemma~\(\ref{lem:step-006-scale}\), every localization transcript in the
derived event \(\mathcal E_{\rm loc}\) satisfies
\[
  \left|\mu-m_0-\theta(c)\right|
  \leq\frac{M_k(c)}{H^{k-1}}
  \leq C_k^{\rm rec}\frac{\sigma^k}{H^{k-1}}
  \leq\frac{\epsilon}{4}.
\]
If \(D(J_{S,j_S})=1\), the left side is exactly zero. In particular this
exact zero-tail conclusion holds if \(D(J_{0,j_0})=1\), and the accepted
level-zero reduction is preserved.

**Proof / justification.** Fix a localization transcript in
\(\mathcal E_{\rm loc}\). The accepted residual identity gives
\[
  \mu-m_0-\theta(c)
  =\int_{J_{S,j_S}^c}(x-m_0)D(dx).
\]
Write \(r=|x-m_0|\). The accepted closed-interval containment implies the
pointwise set inclusion
\[
  \{x:x\notin J_{S,j_S}\}
  \subseteq\{x:r>H\}.
\]
The inequality is strict: every point with \(r\leq H\), including both
points with \(r=H\), belongs to \(J_{S,j_S}\). Therefore
\[
\begin{aligned}
  |\mu-m_0-\theta(c)|
  &\leq\int r\,{\bf1}\{x\notin J_{S,j_S}\}D(dx)\\
  &\leq\int r\,{\bf1}\{r>H\}D(dx)\\
  &\leq\int \frac{r^k}{H^{k-1}}D(dx)
   =\frac{M_k(c)}{H^{k-1}}.
\end{aligned}
\]
The third line uses the pointwise inequality
\(r\leq r^k/H^{k-1}\) on \(r>H\). On
\(\mathcal E_{\rm loc}\), the accepted recentered-moment result gives the
second target inequality
\[
  \frac{M_k(c)}{H^{k-1}}
  \leq C_k^{\rm rec}\frac{\sigma^k}{H^{k-1}}.
\]

By Lemma~\(\ref{lem:step-006-scale}\), \(H\geq H_\star\). Since
\(k-1>0\),
\[
\begin{aligned}
  C_k^{\rm rec}\frac{\sigma^k}{H^{k-1}}
  &\leq
    C_k^{\rm rec}\frac{\sigma^k}{H_\star^{k-1}},\\
  H_\star^{k-1}
  &=b_k^{k-1}\sigma^{k-1}
    \left(\frac{\sigma}{\epsilon}\right)
    =b_k^{k-1}\frac{\sigma^k}{\epsilon}.
\end{aligned}
\]
Consequently
\[
  C_k^{\rm rec}\frac{\sigma^k}{H^{k-1}}
  \leq C_k^{\rm rec}b_k^{1-k}\epsilon
  \leq\frac{\epsilon}{4},
\]
where the last displayed inequality is exactly
\(b_k^{k-1}\geq4C_k^{\rm rec}\). No tail event is assumed and no term is
absorbed without its threshold.

For the half-open outer padding
\[
  J_{S,j_S}=[(j_S-1)H,(j_S+2)H),
\]
the accepted representation
\(m_0=(j_S+\vartheta_S)H\), \(0<\vartheta_S<1\), gives the following
atom-by-atom boundary check. An atom at the included left boundary is at
distance \((1+\vartheta_S)H>H\) but remains in the truncated integral and
creates no outer residual. An atom at the excluded right boundary is at
distance \((2-\vartheta_S)H>H\), is part of the outer residual, and is
legally charged by the same moment-tail inequality. Atoms at
\(m_0-H\) or \(m_0+H\) lie strictly inside the padding and create no outer
residual.

Finally, if \(D(J_{S,j_S})=1\), the exact accepted residual integral is
zero before any inequality is applied. The accepted nesting
\(J_{0,j_0}\subseteq J_{S,j_S}\) proves this whenever
\(D(J_{0,j_0})=1\). The accepted step_003 result then says every retained
higher correction is pointwise zero and level zero alone has mean
\(\mu-m_0\); thus the baseline is exact rather than an
\(O(\epsilon)\) surrogate. \(\square\)

### unit_003: lemma

**Lemma (Exact finite normalizer in the three moment regimes).**
\(\label{lem:step-006-normalizer}\)
Under Assumption~\(\ref{assump:parameter-domain}\) and
Lemma~\(\ref{lem:step-006-scale}\), write
\(x=\sigma/\epsilon\). Then the following exact formulas and two-sided
bounds hold.

For fixed \(k>2\),
\[
  Z_S
  =h_0^{2-k}
    \frac{1-2^{(2-k)(S+1)}}{1-2^{2-k}},
\]
and
\[
  a_k^{2-k}\sigma^{2-k}
  \leq Z_S
  \leq
  \frac{a_k^{2-k}}{1-2^{2-k}}\sigma^{2-k}.
\]

For \(k=2\),
\[
  Z_S=S+1,
\]
and, using natural logarithms in the public rate,
\[
  \frac{\log x}{\log2}
  \leq Z_S
  <
  \frac{3+\log_2(b_k/a_k)}{\log2}\log x.
\]

For fixed \(1<k<2\),
\[
  Z_S
  =h_0^{2-k}
    \frac{2^{(2-k)(S+1)}-1}{2^{2-k}-1},
\]
\[
  H^{2-k}
  \leq Z_S
  \leq\frac{H^{2-k}}{1-2^{k-2}},
\]
and hence
\[
\begin{aligned}
  b_k^{2-k}\sigma^{2-k}
    x^{(2-k)/(k-1)}
  &\leq Z_S\\
  &<
  \frac{2^{2-k}b_k^{2-k}}{1-2^{k-2}}
    \sigma^{2-k}x^{(2-k)/(k-1)}.
\end{aligned}
\]
All formulas hold when \(H_\star/h_0=2\), equivalently at the minimum
\(S=1\) under the scale admissibility condition.

**Proof / justification.** Since \(h_s=2^sh_0\),
\[
  Z_S=h_0^{2-k}\sum_{s=0}^S2^{(2-k)s}.
\]

Suppose first that \(k>2\). Then
\(\rho:=2^{2-k}\in(0,1)\), so finite multiplication gives
\[
  (1-\rho)\sum_{s=0}^S\rho^s=1-\rho^{S+1}.
\]
This proves the exact formula. The first summand is one and the finite sum is
bounded by its infinite geometric envelope:
\[
  1\leq\sum_{s=0}^S\rho^s
    \leq\sum_{s=0}^{\infty}\rho^s
    =\frac1{1-\rho}.
\]
Multiplication by
\(h_0^{2-k}=a_k^{2-k}\sigma^{2-k}\) proves both displayed bounds.
The denominator is positive for each fixed \(k>2\); no uniformity as
\(k\downarrow2\) is asserted.

At \(k=2\), every summand is exactly one, hence \(Z_S=S+1\). Put
\[
  R=\frac{H_\star}{h_0}=\frac{b_k}{a_k}x,
  \qquad q=\log_2R.
\]
The scale lemma gives \(b_k/a_k\geq1\), \(x\geq2\), and
\(q\leq S<q+1\). Therefore
\[
  Z_S=S+1\geq q+1\geq\log_2x
    =\frac{\log x}{\log2}.
\]
For the upper bound, the exact ceiling inequality gives
\[
\begin{aligned}
  Z_S
  &<q+2
   =\log_2x+\log_2(b_k/a_k)+2\\
  &\leq
    [3+\log_2(b_k/a_k)]\log_2x\\
  &=\frac{3+\log_2(b_k/a_k)}{\log2}\log x.
\end{aligned}
\]
The middle inequality is not an implicit absorption: it follows from
\(\log_2x\geq1\) and
\[
  [3+\log_2(b_k/a_k)]\log_2x
  -[\log_2x+\log_2(b_k/a_k)+2]
  =[2+\log_2(b_k/a_k)](\log_2x-1)\geq0.
\]
Thus the additive ceiling and \(b_k/a_k\) terms are explicitly controlled.

Finally suppose \(1<k<2\). Now
\(\rho=2^{2-k}>1\), and the same finite multiplication gives
\[
  \sum_{s=0}^S\rho^s
  =\frac{\rho^{S+1}-1}{\rho-1},
\]
which is the exact formula. Factoring out the last term yields
\[
\begin{aligned}
  Z_S
  &=H^{2-k}\sum_{t=0}^S2^{(k-2)t},\\
  1
  &\leq\sum_{t=0}^S2^{(k-2)t}
  \leq\sum_{t=0}^{\infty}2^{(k-2)t}
  =\frac1{1-2^{k-2}}.
\end{aligned}
\]
This proves the bounds in terms of \(H\). Since \(2-k>0\), the exact
rounding inequalities \(H_\star\leq H<2H_\star\) imply
\[
  H_\star^{2-k}
  \leq H^{2-k}
  <2^{2-k}H_\star^{2-k}.
\]
The definition of \(H_\star\) gives
\[
  H_\star^{2-k}
  =b_k^{2-k}\sigma^{2-k}
    x^{(2-k)/(k-1)}.
\]
Combining the last three displays proves the final two-sided inequality.
The denominator \(1-2^{k-2}\) is positive for each fixed \(1<k<2\);
again, no uniform limit through \(k=2\) is claimed.

When \(H_\star/h_0=2\), Lemma~\(\ref{lem:step-006-scale}\) gives
\(S=1\) and \(H=H_\star\). Each exact formula above is then simply the
two-term sum \(h_0^{2-k}+H^{2-k}\) (or \(2\) when \(k=2\)), so neither a
missing initial term nor a ceiling exception occurs. \(\square\)

### unit_004: proposition

**Proposition (Public refinement complexity and nondegeneracy).**
\(\label{prop:step-006-rate}\)
Under Assumption~\(\ref{assump:parameter-domain}\),
Lemma~\(\ref{lem:step-006-scale}\), and
Lemma~\(\ref{lem:step-006-normalizer}\), define the setting-derived public
quantity
\[
  A_k:=\frac{\sigma^kZ_S}{\epsilon^2},
  \qquad x:=\frac{\sigma}{\epsilon}.
\]
Then:

for fixed \(k>2\),
\[
  a_k^{2-k}x^2
  \leq A_k
  \leq\frac{a_k^{2-k}}{1-2^{2-k}}x^2;
\]

for \(k=2\),
\[
  \frac{x^2\log x}{\log2}
  \leq A_2
  <
  \frac{3+\log_2(b_2/a_2)}{\log2}x^2\log x;
\]

and for fixed \(1<k<2\),
\[
  b_k^{2-k}x^{k/(k-1)}
  \leq A_k
  <
  \frac{2^{2-k}b_k^{2-k}}{1-2^{k-2}}
    x^{k/(k-1)}.
\]
In particular,
\[
  A_k\asymp_k
  \begin{cases}
    \sigma^2/\epsilon^2,&k>2,\\[0.25em]
    (\sigma^2/\epsilon^2)\log(\sigma/\epsilon),&k=2,\\[0.25em]
    (\sigma/\epsilon)^{k/(k-1)},&1<k<2,
  \end{cases}
\]
and \(A_k\gtrsim_k1\) with an explicit k-only lower bound.

**Proof / justification.** For \(k>2\), multiplying the two normalizer
bounds by \(\sigma^k/\epsilon^2\) gives
\[
  \frac{\sigma^k}{\epsilon^2}\sigma^{2-k}
  =\frac{\sigma^2}{\epsilon^2}=x^2,
\]
which proves the first pair of bounds with every \(a_k\) and geometric
factor retained.

At \(k=2\),
\[
  A_2=\frac{\sigma^2}{\epsilon^2}Z_S=x^2Z_S.
\]
Multiplying both exact logarithmic bounds of
Lemma~\(\ref{lem:step-006-normalizer}\) by \(x^2\) proves the second
pair. In particular, the additive \(S+1\) and the ceiling contribution have
already been controlled by a displayed inequality; no logarithmic term is
dropped.

For \(1<k<2\), multiplication of the last normalizer bounds by
\(\sigma^k/\epsilon^2\) gives
\[
\begin{aligned}
  \frac{\sigma^k}{\epsilon^2}
  \sigma^{2-k}x^{(2-k)/(k-1)}
  &=x^2x^{(2-k)/(k-1)}\\
  &=x^{\,2+(2-k)/(k-1)}
   =x^{k/(k-1)}.
\end{aligned}
\]
This proves the final pair with the rounding factor
\(2^{2-k}\) and geometric denominator intact.

Finally Lemma~\(\ref{lem:step-006-scale}\) gives \(x\geq2\). The lower
bounds just proved therefore imply, without asymptotic notation,
\[
  A_k\geq
  \begin{cases}
    4a_k^{2-k},&k>2,\\[0.25em]
    4,&k=2,\\[0.25em]
    2^{k/(k-1)}b_k^{2-k},&1<k<2.
  \end{cases}
\]
Every right-hand side is finite, positive, and depends only on fixed \(k\).
This is the exact meaning of \(A_k\gtrsim_k1\) used by the later ceiling
absorption.

All substitutions remain valid at \(\epsilon=c_k\sigma\), where
\(x=1/c_k\geq2\), and at the minimum legal \(S\). The parameter
\(\lambda\) does not enter \(H_\star,H,S,Z_S\), or \(A_k\), so the same
interfaces hold unchanged at \(\lambda=\sigma\). The constants for fixed
\(k>2\) or fixed \(1<k<2\) are allowed to deteriorate as \(k\) approaches
two; the exact \(k=2\) calculation is the separate middle case required by
the theorem. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-006-scale}\) makes a legal k-only design choice
\[
  b_k\geq a_k,\qquad
  b_k^{k-1}\geq4C_k^{\rm rec},
\]
and a legal k-only accuracy threshold. It proves directly from the ceiling
definition that
\[
  H_\star\leq H<2H_\star
\]
and covers \(H_\star/h_0=2\), \(S=1\), and
\(\epsilon=c_k\sigma\).

Proposition~\(\ref{prop:step-006-tail}\) composes the exact accepted
step_003 residual with the accepted step_002 containment and accepted
step_001 moment certificate. Its displayed pointwise moment-tail inequality
and exact threshold substitution prove, for every successful localization
transcript,
\[
  |\mu-m_0-\theta(c)|
  \leq C_k^{\rm rec}\frac{\sigma^k}{H^{k-1}}
  \leq\frac{\epsilon}{4}.
\]
The same proposition proves that outer-padding atoms are correctly typed
under the half-open convention and that support in \(J_{0,j_0}\) gives
zero residual and the exact level-zero baseline.

Lemma~\(\ref{lem:step-006-normalizer}\) evaluates all three finite sums
and retains every first term, last term, ceiling, rounding factor, and
regime denominator. It proves exactly
\[
  Z_S\asymp_k
  \begin{cases}
    \sigma^{2-k},&k>2,\\
    \log(\sigma/\epsilon),&k=2,\\
    H^{2-k},&1<k<2.
  \end{cases}
\]
Proposition~\(\ref{prop:step-006-rate}\) performs every substitution into
\(A_k=\sigma^kZ_S/\epsilon^2\), proves the three public two-sided rates,
and gives an explicit positive k-only lower bound for \(A_k\). These four
named results establish every clause of the binding sketch row using only
the two primitive assumptions and the three accepted dependency pairs.

## Explicit Rate Audit

- Exposed variables:
  \(k,\sigma,\epsilon,S,H,H_\star,Z_S,A_k\), together with the
  setting/design quantities \(a_k,b_k,c_k,h_0\) and the accepted constant
  \(C_k^{\rm rec}\). The proof-local ratio
  \(x=\sigma/\epsilon\) is always expanded in the exported conclusions.
- Hidden constants may depend on:
  only the fixed \(k\), including the k-only choices
  \(a_k,b_k,c_k\) and the accepted
  \(C_k^{\rm rec}\). The explicit regime constants are
  \(a_k^{2-k}\), \(b_k^{2-k}\),
  \(1/(1-2^{2-k})\), \(1/(1-2^{k-2})\),
  \(2^{2-k}\), and
  \(3+\log_2(b_k/a_k)\), in the regimes where they occur.
- Hidden constants may not depend on:
  \(D,\mu,\lambda,\sigma,\epsilon,\delta,S,H,H_\star,Z_S\), any
  localization transcript, cell, boundary atom, sample, or refinement seed.
- Fixed quantities:
  \(k\) and its design constants are fixed separately in each of the
  regimes \(k>2\), \(k=2\), and \(1<k<2\).
  No uniform \(k\to2\) or \(k\to1\) limit is claimed.
- Probability mode:
  the scale, geometric-sum, and \(A_k\) statements are deterministic for
  every admissible \((\sigma,\epsilon)\). The tail statement is a
  deterministic pointwise conclusion for every transcript in the accepted
  derived event \(\mathcal E_{\rm loc}\). This step creates no tail event,
  takes no union bound, and makes no unconditional PAC conversion.
- Horizon mode:
  fixed finite scale horizon \(S=\lceil\log_2(H_\star/h_0)\rceil\);
  no stopping-time, all-time, or asymptotic upgrade.
- Norm mode:
  absolute value for
  \(|\mu-m_0-\theta(c)|\), with the accepted kth absolute recentered
  moment \(M_k(c)\) controlling it.
- Admissibility conditions and auxiliary tolerances:
  \(k>1\), \(\sigma>0\), \(0<\epsilon\leq c_k\sigma\),
  \[
    b_k=\max\{a_k,(4C_k^{\rm rec})^{1/(k-1)}\},
    \qquad
    0<c_k\leq
    \min\{1/2,(b_k/(2a_k))^{k-1}\}.
  \]
  There is no auxiliary stochastic tolerance.
- Term absorption or simplification inequalities:
  \[
    \frac{H_\star}{h_0}\geq2,\qquad
    H_\star\leq H<2H_\star,
  \]
  \[
    H_\star^{k-1}=b_k^{k-1}\sigma^k/\epsilon,\qquad
    C_k^{\rm rec}b_k^{1-k}\epsilon\leq\epsilon/4,
  \]
  the three exact finite-sum formulas in
  Lemma~\(\ref{lem:step-006-normalizer}\), the explicit \(k=2\)
  additive-ceiling inequality, the positive-power rounding inequality
  \[
    H_\star^{2-k}\leq H^{2-k}
      <2^{2-k}H_\star^{2-k}\quad(1<k<2),
  \]
  and every displayed substitution in
  Proposition~\(\ref{prop:step-006-rate}\).
- Probability conversion:
  None. The probability of \(\mathcal E_{\rm loc}\) belongs to the accepted
  step_001 interface and is reserved for final unconditional assembly.
- Contribution to any Rate Specialization Bridge:
  this step exports the \(\epsilon/4\) deterministic-on-success tail
  certificate, exact dyadic admissibility, the three two-sided
  \(Z_S\) formulas, the three two-sided \(A_k\) formulas, and the explicit
  lower bound \(A_k\gtrsim_k1\). Later steps may use these exact interfaces
  for block-size, ceiling, and localization-cost absorption.
- Baseline-reduction check:
  for a fixed decoder value \(c\), if \(D(J_{0,j_0(c)})=1\), accepted
  nesting implies \(D(J_{S,j_S})=1\), so the residual integral is exactly
  zero. The accepted higher-ring inactivity and level-zero mean are
  preserved without replacing the baseline by an \(O(\epsilon)\)
  remainder. At \(D\{m_0\}=1\), the accepted refinement correction and the
  tail residual are both exactly zero.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing setting and output objects.**
  \(a_k,b_k,c_k,h_0,H_\star,S,h_s,H,Z_S\) retain their setting meanings.
  The accepted \(M_k(c)\), \(C_k^{\rm rec}\), and \(\theta(c)\) retain
  their dependency meanings. The sole new public-facing abbreviation is
  \(A_k=\sigma^kZ_S/\epsilon^2\), required verbatim by the accepted sketch
  as the downstream refinement-complexity interface.
- **Proof-local objects.**
  \(x=\sigma/\epsilon\), \(R=H_\star/h_0\),
  \(q=\log_2R\), \(r=|x_{\rm sample}-m_0|\), and
  \(\rho=2^{2-k}\) are proof-local. The sample-value notation
  \(x_{\rm sample}\) in this classification distinguishes the integration
  variable from the proof-local ratio \(x\); the derivations themselves
  use \(r\) after defining the integration variable. None of these helpers
  is exported.
- **Helper-object surface.**
  No appendix-local dictionary is introduced. The geometric denominators
  and two-sided coefficients are displayed inline rather than hidden behind
  new public constants.
- **Constant provenance.**
  \(C_k^{\rm rec}\) is proved by the accepted
  Lemma~\(\ref{lem:step-001-recenter}\).
  The choice of \(b_k\) is a direct k-only expression in accepted constants;
  it simultaneously supplies \(b_k\geq a_k\) and the tail threshold.
  The admissible \(c_k\) bound is a direct expression in \(a_k,b_k,k\).
  The factors \(2\), \(1/4\), \(2^{2-k}\), and the geometric denominators
  are proved by the named local units, not freely assumed.
- **Assumption provenance.**
  The parameter and central-moment class are primitive. Localization success
  and the recentered moment are derived by the accepted step_001 pair.
  Outer containment and nesting are derived by the accepted step_002 pair.
  The exact truncated mean, outer residual, and baseline reduction are
  derived by the accepted step_003 pair. Tail control, scale admissibility,
  normalizer bounds, and public rate interfaces are generated in this step.
  No support condition, tail event, selected-cell event, boundedness
  condition, or final accuracy event is assumed.
- **Conditional and unconditional typing.**
  For the rate algebra, \(c\) is irrelevant and the conclusions are
  unconditional deterministic identities. For the bias, \(c\) is fixed at
  a localization transcript and the moment bound is invoked only when that
  transcript belongs to the already-produced
  \(\mathcal E_{\rm loc}\). The supported-in-\(J_0\) baseline is likewise a
  fixed-\(c\) specialization. The eventual integration over localization
  success and failure is not performed or claimed here.
- **Boundary and endpoint scope.**
  The proof includes \(k=2\) exactly; fixed \(k>2\) and fixed
  \(1<k<2\); \(H_\star/h_0=2\); the minimum \(S=1\);
  \(\epsilon=c_k\sigma\); \(\lambda=\sigma\); atoms at both half-open
  final-padding boundaries and at \(m_0\pm H\); zero outer mass; support
  in \(J_{0,j_0}\); and the point-mass baseline. No conclusion relies on a
  strict accuracy inequality or on atom-free boundaries.
- **Diagnostic boundary.**
  The optional global diagnostic pair was not read or used. It supplies no
  evidence, cited result, assumption, dependency, or authority to alter the
  accepted target claim.
