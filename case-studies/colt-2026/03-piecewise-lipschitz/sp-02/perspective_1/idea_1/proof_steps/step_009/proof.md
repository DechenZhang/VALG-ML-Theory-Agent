# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_009`
- Unit attempt: 1
- Binding idea SHA-256: `90d54348c0603de55463b9e61611436feb86a1c329966f786db2fc8bc43ba910`
- Binding setting SHA-256: `f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83`
- Accepted sketch SHA-256: `2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a`
- Accepted sketch review SHA-256: `40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8`

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_009` | For Counter-example 1, prove the specialized tuple and (B_Q=1/\delta), compute the exact probability (\epsilon/(4\delta)), conclude (C\geq1/(4\delta)), and compare it with the theorem's (1/\delta) upper scale. | `step_005` | Primitive specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:cube-density-laws`; derived central upper rate from `step_005` | Identify the exact coefficient wedge, include both sign branches, and ensure presentation normalization records rather than hides the metric scale. | Direct planar Lebesgue-area calculation and monomial coefficient audit. | Counter-example 1 scale-audit clause. | R5 and consistency with R1--R2. | PENDING |

The exact specialized feature presentation is
\[
\Theta=[-1,1],\qquad c=0,\qquad h=1,\qquad x(\theta)=\theta,
\]
\[
q=0,\qquad Q_1(x)=1,\qquad Q_2(x)=\frac{x}{\delta},
\qquad
G(x)=\left(1,\frac{x}{\delta}\right),\qquad
F(\theta)=G(x(\theta))=\left(1,\frac{\theta}{\delta}\right),
\qquad 0<\delta\leq1.
\]
The required audit includes the exact Euclidean normalized-curve speed, both
closed coefficient-sign wedges and all boundary cases, the exact
uniform-square probability for every \(0<\epsilon\leq\delta\), the capacity
lower certificate, and comparison with the central/projective coefficient
\(1/\delta\) and raw-presentation coefficient \(\sqrt2/\delta\). It does not
assert equality or optimality of the capacity.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: specialize to \(N=2\), \(c=0\), \(h=1\),
    \(R=1\), and \(\kappa=1/4\), with \(0<\delta\leq1\).
    The interval \([0,\epsilon]\) is used under
    \(0<\epsilon\leq\delta\), so it is a positive-length subinterval of
    \(\Theta=[-1,1]\).
  - `assump:balcan-common-chain`: specialize to \(q=0\), so there is no
    chain and the setting conventions give \(M=0\) and \(B_P=0\).
    The output polynomials are the displayed \(Q_1,Q_2\).
  - `assump:anchored-unit-range`: \(Q_1\equiv1\), hence
    \(F_1\equiv1\). This preserves the original deterministic anchor and
    defines the setting normalized curve everywhere on \(\Theta\).
  - `assump:cube-density-laws`: use the ordinary uniform law
    \(\mu_\square\) on \([-1,1]^2\), whose full joint density is
    \(f_\square=1/4\) on the square and zero outside it. Thus
    \(\mu_\square\in\mathcal D_{2,1,1/4}\). No independence property is used.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-005-central-rate-bridge} supplies
    only the upper comparison
    \[
    C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
    \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
    \leq
    \frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
    \tag{9.1}
    \]
    Its current proof is
    `perspective_1/idea_1/proof_steps/step_005/proof.md`, SHA-256
    `e3dbe02dd8b6b20828d0e2ff563c95e91d9000865c4d8002db18f746f65d2737`;
    its current review is
    `perspective_1/idea_1/proof_steps/step_005/review.md`, status
    `ACCEPTED`, SHA-256
    `d8d4ddf8f57ba935f27eac6437e0ee3921b1323b6b9f1cd6cd8550e58c930135`.
    Both artifacts identify sketch attempt 2 and unit attempt 1. Neither is
    used to establish the lower-event geometry.
- Local conditional hypotheses: None. The restrictions
  \(0<\delta\leq1\) and \(0<\epsilon\leq\delta\) are static
  theorem/admissibility conditions from the formalized goal, not facts about
  generated or realized objects.

No affine-monic result, independent polynomial-root theorem, altered law,
randomized feature coordinate, later assembly claim, stale proof, or global
diagnostic conclusion is an allowed input.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:cube-density-laws}, if the Counter-example 1 specialization holds with \(0<\delta\leq1\), then its exact tuple has \(q=M=B_P=0\), \(\Delta=1\), \(N=2\), \(R=1\), \(\kappa=1/4\), \(A=1\), \(B_Q=1/\delta\), and \(h=1\), while \(\lVert\gamma_F'(\theta)\rVert_2=\delta/(\delta^2+\theta^2)\) and \(\Gamma_{\mathrm{proj}}(F)=1/\delta\). | Verifies the prescribed presentation, coefficient convention, deterministic anchor, every specialized parameter, and exact Euclidean projective scale. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:cube-density-laws}, and Proposition~\ref{prop:step-009-s2-presentation-speed}, if \(0<\epsilon\leq\delta\leq1\), then the closed root event in \([-1,1]^2\) is exactly the union of the two stated opposite-sign wedges, their intersection is only the origin, all coefficient-axis and interval-endpoint cases are included, and its uniform-square probability is \(\epsilon/(4\delta)\). | Proves the lower event from direct geometry, including both signs, closed boundaries, null overlap, axes, endpoints, \(\epsilon=\delta\), and \(\delta=1\). |
| `unit_003` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:cube-density-laws}, accepted Proposition~\ref{prop:step-005-central-rate-bridge}, Proposition~\ref{prop:step-009-s2-presentation-speed}, and Lemma~\ref{lem:step-009-s2-closed-wedges}, the specialized capacity satisfies \(1/(4\delta)\leq C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\leq1/\delta\leq\sqrt2/\delta\), where the two upper coefficients are the exact central/projective and raw-presentation coefficients, without an equality or optimality claim for the capacity. | Converts the exact probability into the required lower certificate and uses `step_005` only to compare the two accepted upper scales. |

Atomic step = no. The presentation and speed calculation, exact event
geometry, and capacity/upper-interface comparison are independent nontrivial
claims, so they are separated into three theorem-style units.

## Cited Result Applications

External paper results: None.

1. **Accepted Proposition~\ref{prop:step-005-central-rate-bridge}
   (central upper interface).** Its restated conclusion is (9.1), for the
   setting-defined deterministic feature, law class, Euclidean projective
   speed, and capacity. Its upstream assumptions were discharged in the
   accepted proof/review pair whose hashes are recorded above. Here the
   instantiated objects are
   \[
   \Theta=[-1,1],\qquad F(\theta)=(1,\theta/\delta),\qquad
   \mathcal D=\mathcal D_{2,1,1/4}.
   \]
   Proposition~\ref{prop:step-009-s2-presentation-speed} checks this
   specialization. The only consumed conclusion is the pair of capacity upper
   bounds. The accepted result supplies no lower-event identity, wedge,
   probability equality, or capacity lower bound.

2. **Proposition~\ref{prop:step-009-s2-presentation-speed}
   (local presentation and speed certificate).** Under the four named
   primitive assumptions and \(0<\delta\leq1\), it checks the exact feature,
   tuple, law membership, normalized derivative, and Euclidean speed maximum.
   It is proved in `unit_001` and used by
   Lemma~\ref{lem:step-009-s2-closed-wedges} and
   Proposition~\ref{prop:step-009-s2-scale-certificate}.

3. **Lemma~\ref{lem:step-009-s2-closed-wedges}
   (local exact root-event geometry).** Under
   Assumptions~\ref{assump:parameter-regime},
   \ref{assump:balcan-common-chain},
   \ref{assump:anchored-unit-range}, and
   \ref{assump:cube-density-laws},
   Proposition~\ref{prop:step-009-s2-presentation-speed}, and
   \(0<\epsilon\leq\delta\leq1\), it identifies the exact closed event,
   checks all axes and interval endpoints, and computes probability
   \(\epsilon/(4\delta)\). It is proved in `unit_002` and used by
   Proposition~\ref{prop:step-009-s2-scale-certificate}.

4. **Proposition~\ref{prop:step-009-s2-scale-certificate}
   (local target proposition).** It combines the locally proved lower event
   with the accepted upper interface on the same feature, law class, interval
   convention, and Euclidean norm. It is proved in `unit_003` and supplies
   the minimal public-facing interface in the target-step assembly.

## Local Derivation

### unit_001: proposition

**Proposition (Counter-example presentation and exact projective speed).**
\label{prop:step-009-s2-presentation-speed}
Under Assumptions~\ref{assump:parameter-regime},
\ref{assump:balcan-common-chain},
\ref{assump:anchored-unit-range}, and
\ref{assump:cube-density-laws}, suppose
\[
0<\delta\leq1,\qquad
\Theta=[-1,1],\qquad
Q_1(x)=1,\qquad Q_2(x)=x/\delta,
\]
with \(c=0\), \(h=1\), \(q=0\), and the uniform law on
\([-1,1]^2\). Then, in the original coefficient convention
\[
\langle\alpha,F(\theta)\rangle
=\alpha_1F_1(\theta)+\alpha_2F_2(\theta),
\]
\[
F(\theta)=\left(1,\frac{\theta}{\delta}\right),
\]
and the exact specialized tuple is
\[
q=0,\quad M=0,\quad B_P=0,\quad \Delta=1,\quad N=2,\quad
R=1,\quad \kappa=\frac14,\quad A=1,\quad
B_Q=\frac1\delta,\quad h=1.
\tag{9.2}
\]
Moreover,
\[
\gamma_F(\theta)
=\frac{(\delta,\theta)}{\sqrt{\delta^2+\theta^2}},
\qquad
\gamma_F'(\theta)
=\frac{(-\delta\theta,\delta^2)}
       {(\delta^2+\theta^2)^{3/2}},
\tag{9.3}
\]
so
\[
\lVert\gamma_F'(\theta)\rVert_2
=\frac{\delta}{\delta^2+\theta^2},
\qquad
\Gamma_{\mathrm{proj}}(F)=\frac1\delta.
\tag{9.4}
\]

**Proof / justification.**
Because \(c=0\) and \(h=1\), \(x(\theta)=\theta\). There is no chain when
\(q=0\), so the setting conventions give \(M=B_P=0\). The two
standard-monomial coefficient norms are
\[
\lVert\operatorname{coeff}(Q_1)\rVert_1=1,
\qquad
\lVert\operatorname{coeff}(Q_2)\rVert_1=\frac1\delta.
\]
Since \(0<\delta\leq1\),
\[
B_Q=\max\left\{1,\frac1\delta\right\}=\frac1\delta.
\]
The output degrees are \(0\) and \(1\), hence \(\Delta=1\), and there are
\(N=2\) feature coordinates (with the fixed ambient input dimension \(p=1\)).
The first feature is literally \(F_1\equiv1\),
so the deterministic anchor and original random-coefficient ordering are
unchanged.

The density
\[
f_\square(a_1,a_2)
=\frac14\mathbf 1_{[-1,1]^2}(a_1,a_2)
\]
is supported on the square, has essential supremum \(1/4\), and integrates to
one. Thus \(\mu_\square\in\mathcal D_{2,1,1/4}\). With \(R=1\),
\[
A=(2R)^N\kappa=2^2\cdot\frac14=1.
\]
This verifies every entry of (9.2) from the setting quantities.

Because \(\delta>0\), multiplying numerator and denominator of
\(F/\lVert F\rVert_2\) by \(\delta\) gives the first identity in (9.3).
Direct differentiation gives the second. Therefore
\[
\begin{aligned}
\lVert\gamma_F'(\theta)\rVert_2
&=\frac{\sqrt{\delta^2\theta^2+\delta^4}}
        {(\delta^2+\theta^2)^{3/2}}\\
&=\frac{\delta\sqrt{\delta^2+\theta^2}}
        {(\delta^2+\theta^2)^{3/2}}
=\frac{\delta}{\delta^2+\theta^2}.
\end{aligned}
\]
This continuous speed is maximized on \([-1,1]\) at \(\theta=0\), where it
equals \(1/\delta\). Its maximum and essential supremum coincide, proving
(9.4). At \(\theta=\pm1\), its exact value is
\(\delta/(\delta^2+1)\), so no endpoint or finiteness issue is hidden.
\(\square\)

### unit_002: lemma

**Lemma (Exact closed coefficient wedges for Counter-example 1).**
\label{lem:step-009-s2-closed-wedges}
Under Assumptions~\ref{assump:parameter-regime},
\ref{assump:balcan-common-chain},
\ref{assump:anchored-unit-range}, and
\ref{assump:cube-density-laws}, and
Proposition~\ref{prop:step-009-s2-presentation-speed}, let
\(0<\epsilon\leq\delta\leq1\) and set
\[
t:=\frac{\epsilon}{\delta}\in(0,1].
\]
Define the closed wedges
\[
W_+(t):=
\{(a_1,a_2)\in[-1,1]^2:0\leq a_2\leq1,
   -t a_2\leq a_1\leq0\},
\tag{9.5}
\]
\[
W_-(t):=
\{(a_1,a_2)\in[-1,1]^2:-1\leq a_2\leq0,
   0\leq a_1\leq-t a_2\}.
\tag{9.6}
\]
Then the closed-interval root event is exactly
\[
\left\{a\in[-1,1]^2:
\exists\theta\in[0,\epsilon],
a_1+a_2\theta/\delta=0\right\}
=W_+(t)\cup W_-(t),
\tag{9.7}
\]
\[
W_+(t)\cap W_-(t)=\{(0,0)\},
\]
and
\[
\Pr_{\alpha\sim\mu_\square}
\left[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0\right]
=\frac{\epsilon}{4\delta}.
\tag{9.8}
\]

**Proof / justification.**
For \(\theta\in[0,\epsilon]\), put \(s=\theta/\delta\). The restriction
\(0<\epsilon\leq\delta\) gives \(s\in[0,t]\) with \(0<t\leq1\).
If \(a_2\neq0\), the equation has the unique candidate
\[
s_*=-\frac{a_1}{a_2},
\]
which lies in the interval exactly when
\[
0\leq-\frac{a_1}{a_2}\leq t.
\tag{9.9}
\]
For \(a_2>0\), (9.9) is \(-ta_2\leq a_1\leq0\), the first wedge.
For \(a_2<0\), it is \(0\leq a_1\leq-ta_2\), the second wedge.

The coefficient-axis cases make (9.7) exact rather than merely
almost-everywhere. If \(a_1=0\) and \(a_2\neq0\), the root is the left
endpoint \(\theta=0\), and the appropriate closed wedge includes it. If
\(a_2=0\) and \(a_1\neq0\), there is no root, and both wedges exclude it.
At the origin the combination vanishes for every \(\theta\), and both wedges
include it. Thus the \(a_2=0\) coefficient axis contributes only the origin,
whereas the \(a_1=0\) coefficient axis records all left-endpoint roots. For
nonzero opposite-sign coefficients,
\[
|a_1|=t|a_2|
\]
is exactly the right-endpoint case \(\theta=\epsilon\), and strict inequality
gives an interior root. Nonzero same-sign coefficients have no root for
\(s\geq0\).

The complete boundaries of the closed triangles are
\[
\begin{aligned}
\partial W_+(t)
={}&\{(0,u):0\leq u\leq1\}
\cup\{(-tu,u):0\leq u\leq1\}\\
&\cup\{(v,1):-t\leq v\leq0\},
\end{aligned}
\tag{9.10}
\]
\[
\begin{aligned}
\partial W_-(t)
={}&\{(0,u):-1\leq u\leq0\}
\cup\{(-tu,u):-1\leq u\leq0\}\\
&\cup\{(v,-1):0\leq v\leq t\}.
\end{aligned}
\tag{9.11}
\]
These include the coefficient-axis edges, root-at-\(\epsilon\) edges,
square-support edges, and vertices. The two triangles can overlap only at
\(a_2=0\), where their inequalities force \(a_1=0\); hence the overlap is
exactly the origin. Each boundary is a finite union of line segments and the
overlap is a point, so all have planar Lebesgue measure zero. They nevertheless
remain included in the exact event (9.7).

Writing \(\lambda_2\) for planar Lebesgue measure, direct integration gives
\[
\lambda_2(W_+(t))=\int_0^1tu\,du=\frac t2,
\qquad
\lambda_2(W_-(t))=\int_{-1}^0t|u|\,du=\frac t2.
\]
The null overlap gives
\[
\lambda_2(W_+(t)\cup W_-(t))=t.
\tag{9.12}
\]
Since the law has constant density \(1/4\) on the square,
\[
\Pr_{\mu_\square}(\text{root in }[0,\epsilon])
=\frac14t
=\frac{\epsilon}{4\delta},
\]
proving (9.8).

When \(\epsilon=\delta\), \(t=1\), each wedge has area \(1/2\), their union
has area \(1\), and the probability is exactly \(1/4\). When \(\delta=1\),
the formula becomes \(\epsilon/4\) for every \(0<\epsilon\leq1\); if also
\(\epsilon=\delta=1\), it again gives \(1/4\). Thus both parameter boundaries
and both interval endpoints are included without a limiting argument.
\(\square\)

### unit_003: proposition

**Proposition (Counter-example lower certificate and upper-scale comparison).**
\label{prop:step-009-s2-scale-certificate}
Under Assumptions~\ref{assump:parameter-regime},
\ref{assump:balcan-common-chain},
\ref{assump:anchored-unit-range}, and
\ref{assump:cube-density-laws}, accepted
Proposition~\ref{prop:step-005-central-rate-bridge},
Proposition~\ref{prop:step-009-s2-presentation-speed}, and
Lemma~\ref{lem:step-009-s2-closed-wedges}, the Counter-example 1
specialization, with \(\mathcal D=\mathcal D_{2,1,1/4}\), satisfies
\[
\frac1{4\delta}
\leq C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])
\leq\frac1\delta
\leq\frac{\sqrt2}{\delta}.
\tag{9.13}
\]
Here \(1/\delta\) is the accepted central/projective upper coefficient and
\(\sqrt2/\delta\) is the accepted raw-presentation upper coefficient. No
equality or optimality conclusion for \(C^{\mathrm{Pf}}_{\mathcal D}\) is
asserted.

**Proof / justification.**
Fix any \(\epsilon\) with \(0<\epsilon\leq\delta\). By
Proposition~\ref{prop:step-009-s2-presentation-speed},
\(\mu_\square\in\mathcal D_{2,1,1/4}\), and
\([0,\epsilon]\subseteq[-1,1]\) has positive length \(\epsilon\).
Lemma~\ref{lem:step-009-s2-closed-wedges} gives
\[
\frac{
\Pr_{\alpha\sim\mu_\square}
[\exists\theta\in[0,\epsilon]:
\langle\alpha,F(\theta)\rangle=0]}
{|[0,\epsilon]|}
=\frac{\epsilon/(4\delta)}{\epsilon}
=\frac1{4\delta}.
\tag{9.14}
\]
The capacity is a supremum over all admissible laws and all positive-length
intervals. The single admissible pair
\((\mu_\square,[0,\epsilon])\) therefore proves
\[
C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])
\geq\frac1{4\delta}.
\tag{9.15}
\]
This lower certificate uses only
Lemma~\ref{lem:step-009-s2-closed-wedges}.

For comparison only, apply accepted
Proposition~\ref{prop:step-005-central-rate-bridge}. The tuple and speed from
Proposition~\ref{prop:step-009-s2-presentation-speed} give
\[
A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
=1\cdot\sqrt{\frac22}\cdot\frac1\delta
=\frac1\delta,
\tag{9.16}
\]
\[
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}
=\frac{1\cdot2\cdot1\cdot(1/\delta)\cdot1}
       {\sqrt2\cdot1}
=\frac{\sqrt2}{\delta}.
\tag{9.17}
\]
Substitution into (9.1), combined with (9.15), proves (9.13). At
\(\delta=1\), the three scales are \(1/4\), \(1\), and \(\sqrt2\).
At \(\epsilon=\delta\), the witness probability is \(1/4\) and its quotient
is still \(1/(4\delta)\). Neither boundary changes the law, coefficient
convention, deterministic feature, ordinary-probability mode, or Euclidean
norm. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-009-s2-presentation-speed} (`unit_001`) proves
the prescribed \(q=0\) monomial presentation, complete tuple
\[
(q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h)
=\left(0,0,1,2,1,\frac14,1,0,\frac1\delta,1\right),
\]
and exact Euclidean speed
\[
\lVert\gamma_F'(\theta)\rVert_2
=\frac{\delta}{\delta^2+\theta^2},
\qquad
\Gamma_{\mathrm{proj}}(F)=\frac1\delta.
\]
Lemma~\ref{lem:step-009-s2-closed-wedges} (`unit_002`) proves, on the same
feature and unaltered law, that the exact closed root event is the union of
both opposite-sign wedges, including the origin, both coefficient-axis cases,
the \(\theta=0\) and \(\theta=\epsilon\) edges, square-support edges, and null
overlap. Direct area integration gives, for every
\(0<\epsilon\leq\delta\),
\[
\Pr[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}.
\]
Proposition~\ref{prop:step-009-s2-scale-certificate} (`unit_003`) divides
only by the positive interval length and uses the defining suprema to obtain
\[
C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\geq\frac1{4\delta}.
\]
It uses accepted Proposition~\ref{prop:step-005-central-rate-bridge} only for
the upper comparison, whose central/projective and raw-presentation
coefficients are exactly \(1/\delta\) and \(\sqrt2/\delta\). Thus the named
results prove the exact sketch-row claim and every frozen boundary audit,
while asserting neither capacity equality nor optimality. The minimal direct
export to `step_010` is the tuple, speed, probability, lower certificate,
and two upper-scale values.

## Explicit Rate Audit

- Exposed variables: \(\delta,\epsilon\), with
  \(0<\epsilon\leq\delta\leq1\), and the specialized central tuple
  \[
  (q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1})
  =\left(0,0,1,2,1,\frac14,1,0,\frac1\delta,1\right).
  \]
  The speed \(\lVert\gamma_F'(\theta)\rVert_2
  =\delta/(\delta^2+\theta^2)\) and maximum \(1/\delta\) remain visible.
- Hidden constants may depend on: None. The factors \(1/4\), \(1\), and
  \(\sqrt2\) are literal.
- Hidden constants may not depend on: \(\delta,\epsilon\), the coefficient
  vector, interval endpoints, law, feature presentation, or any tuple entry.
- Fixed quantities: For each capacity statement, \(\delta\), the deterministic
  feature, \(\Theta=[-1,1]\), and \(\mathcal D_{2,1,1/4}\) are fixed. The
  probability equality uses the fixed uniform law and arbitrary admissible
  \(\epsilon\). No asymptotic limit or auxiliary parameter is used.
- Probability mode: Exact ordinary probability under the uniform-square law
  for the lower event; ordinary probability and the law-then-interval capacity
  suprema for the accepted upper interface. There is no expectation,
  confidence parameter, conditioning, union bound, or law alteration.
- Horizon mode: One static closed interval \([0,\epsilon]\) for each
  \(0<\epsilon\leq\delta\), followed by the setting interval-uniform
  capacity. There is no iterative, stopping-time, all-time, or asymptotic mode.
- Norm mode: Euclidean \(\ell_2\) norm for the normalized-curve derivative,
  planar Lebesgue measure for the coefficient wedges, and Lebesgue interval
  length for the capacity quotient.
- Admissibility conditions and auxiliary tolerances: Exactly
  \(0<\epsilon\leq\delta\leq1\), the four primitive assumptions, and the
  current accepted `step_005` upper interface. The inequality
  \(t=\epsilon/\delta\leq1\) keeps both triangular wedges inside the square.
  There is no tolerance, threshold, confidence level, transversality
  condition, or generated-event assumption.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. Every simplification is displayed:
  \[
  B_Q=\max\{1,1/\delta\}=1/\delta,\qquad
  A=2^2(1/4)=1,\qquad
  \lambda_2(W_+\cup W_-)=\epsilon/\delta,
  \]
  \[
  A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}=1/\delta,\qquad
  \frac{AN\Delta B_Q(1+qB_P)}{\sqrt2h}
  =\frac{\sqrt2}{\delta}.
  \]
- Probability conversion: Exact density integration only:
  \[
  \mu_\square(W_+\cup W_-)
  =\frac14\lambda_2(W_+\cup W_-)
  =\frac{\epsilon}{4\delta}.
  \]
  No independence factorization or probability-mode conversion is used.
- Contribution to any Rate Specialization Bridge: This is the complete R5
  scale audit exported directly to `step_010`. The lower witness is proved
  independently; accepted `step_005` is instantiated only afterward to
  expose the exact upper coefficients.
- Baseline-reduction check, if applicable: At \(\delta=1\), the probability
  is \(\epsilon/4\), the lower capacity certificate is \(1/4\), and the two
  upper coefficients are \(1\) and \(\sqrt2\). At \(\epsilon=\delta\), the
  event probability is \(1/4\) and the quotient remains \(1/(4\delta)\). No
  conservative loss, remainder, conditioning, weakened interval class,
  equality claim, or optimality claim replaces the required lower certificate.

## Blockers

None

## Notation And Assumption Notes

- The setting defines \(\Theta,x,q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h,F,
  \gamma_F,\Gamma_{\mathrm{proj}},\mathcal D\), and
  \(C^{\mathrm{Pf}}_{\mathcal D}\). Their specialized values and the exact
  speed/probability/capacity conclusions are the minimal `public-facing`
  interface required by `step_010`.
- The displayed \(Q_1,Q_2\), deterministic anchor \(F_1=1\), and coefficient
  order \(\alpha_1F_1+\alpha_2F_2\) are original setting objects under the
  specialization, not helper notation. They remain `public-facing` because
  the target requires the prescribed presentation.
- The symbol \(\mu_\square\) is `proof-local`; it names the original
  uniform-square law. Its density and membership in
  \(\mathcal D_{2,1,1/4}\) are proved in
  Proposition~\ref{prop:step-009-s2-presentation-speed}, not assumed as a
  generated event.
- The ratio \(t=\epsilon/\delta\), wedges \(W_+(t),W_-(t)\), planar measure
  \(\lambda_2\), and root event (9.7) are `proof-local`. The ratio is
  directly defined from goal parameters; the wedge and event identities are
  proved in Lemma~\ref{lem:step-009-s2-closed-wedges}. None is exported as an
  assumption.
- There are no `appendix-local` objects or helper dictionaries. The only
  public-facing outputs beyond setting objects are the tuple, speed formula,
  probability equality, capacity lower certificate, and comparison
  coefficients.
- Constant provenance is explicit. The values \(M=B_P=0\) are setting
  conventions at \(q=0\); \(\Delta=1\) and \(B_Q=1/\delta\) follow from the
  monomials; \(R=1,\kappa=1/4\) come from the uniform-square law; \(A=1\)
  follows from its definition; \(\Gamma_{\mathrm{proj}}=1/\delta\) is proved
  by Proposition~\ref{prop:step-009-s2-presentation-speed};
  \(\epsilon/(4\delta)\) is proved by
  Lemma~\ref{lem:step-009-s2-closed-wedges}; and the lower and upper
  coefficients are proved or instantiated in
  Proposition~\ref{prop:step-009-s2-scale-certificate}. There are no free
  constants, radii, margins, thresholds, rates, or bounded quantities.
- Assumption provenance is exact. The four setting assumptions are primitive
  static conditions. The accepted `step_005` capacity inequality is a
  derived dependency conclusion. The normalized speed, closed root event,
  wedge geometry, probability equality, and capacity certificate are proved
  by the three local units. No generated-object, event, boundedness,
  recurrence, stability, or local-validity fact is reclassified as primitive
  or used as a local conditional hypothesis.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified current and `ACCEPTED`, at
  SHA-256 values
  `45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9`
  and
  `cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db`.
  Its step-relevant planning note was to expose the exact speed, closed
  wedges, null boundaries, and separation of lower geometry from the accepted
  upper comparison. Those facts were independently proved here. The
  diagnostic was not used as evidence, a cited result, an assumption source,
  or authority to change the target.
- The pre-overwrite sketch-attempt-1 `step_009` proof and review were not
  read for proof content. Their binding hashes were checked only to identify
  the stale artifacts before overwrite. No stale unit, label, dependency
  digest, statement, or derivation is used here.
