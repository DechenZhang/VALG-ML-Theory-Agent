# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_009` | For Counter-example 1, prove the specialized tuple and (B_Q=1/\delta), compute the exact probability (\epsilon/(4\delta)), conclude (C\geq1/(4\delta)), and compare it with the theorem's (1/\delta) upper scale. | `step_005` | Primitive specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:cube-density-laws`; derived central upper rate from `step_005` | Identify the exact coefficient wedge, include both sign branches, and ensure presentation normalization records rather than hides the metric scale. | Direct planar Lebesgue-area calculation and monomial coefficient audit. | Counter-example 1 scale-audit clause. | R5 and consistency with R1--R2. | PENDING |

The exact assigned scope includes the closed coefficient event, all of its
axis and endpoint cases, its literal planar area, the setting-defined
coefficient normalization, and only the upper-scale interface accepted from
`step_005`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: specialize the setting to
    \(c=0\), \(h=1\), \(\Theta=[-1,1]\), \(N=2\), \(R=1\), and
    \(\kappa=1/4\). The deterministic scalar satisfies
    \(0<\delta\leq1\), and every interval parameter used below satisfies
    \(0<\epsilon\leq\delta\). The definitions of \(A\),
    \(\mathcal D_{N,R,\kappa}\), interval length, and
    \(C^{\mathrm{Pf}}_{\mathcal D}\) are used literally.
  - `assump:balcan-common-chain`: use the empty common chain \(q=0\) and
    output polynomials \(Q_1(x)=1\), \(Q_2(x)=x/\delta\) in the setting's
    standard monomial convention.
  - `assump:anchored-unit-range`: the empty chain has no range condition to
    check, and \(Q_1\equiv1\) is the required literal anchor. No norm margin
    or projective-speed bound is added as an assumption.
  - `assump:cube-density-laws`: use the explicitly fixed uniform law on
    \([-1,1]^2\), whose full joint density is \(1/4\) on the square and zero
    outside it. This is an admissible member of
    \(\mathcal D_{2,1,1/4}\). No coordinate-independence property is used.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-005-central-rate-bridge} supplies
    only the upper comparison
    \[
    C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
    \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
    \leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
    \tag{9.1}
    \]
    Its accepted proof is
    `perspective_1/idea_1/proof_steps/step_005/proof.md`, SHA-256
    `8af0c8f33a8e26e96adcc9808aadcd77e6464d930d6acdbcf0e7f255934cc68d`,
    and its review has status `ACCEPTED`, SHA-256
    `97aad3d3cc66eea47cf89b8896cc4482387b35decf484914e092b901e58c8712`.
    The exact lower calculation below is not inherited from this dependency.
- Local conditional hypotheses: None. The restrictions
  \(0<\delta\leq1\) and \(0<\epsilon\leq\delta\) are primitive static
  specialization conditions from the formalized goal, not generated-event
  hypotheses.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:cube-density-laws}, if \(\Theta=[-1,1]\), \(G(x)=(1,x/\delta)\), and \(0<\delta\leq1\), then the exact tuple is \(h=1,q=0,M=0,\Delta=1,N=2,R=1,\kappa=1/4,A=1,B_P=0,B_Q=1/\delta\), the normalized coordinate is \(x=\theta\), the anchor is \(G_1=1\), and the Euclidean projective speed is exactly \(1/\delta\). | Proves the convention-sensitive coefficient audit and exhibits the same metric scale directly in the normalized Euclidean curve. |
| `unit_002` | lemma | Under the assumptions and specialization of Proposition~\ref{prop:step-009-exact-presentation}, if \(0<\epsilon\leq\delta\), then the original closed coefficient event is exactly the union of two explicitly stated closed triangular wedges, including all axes and endpoint cases; each wedge has area \(\epsilon/(2\delta)\), their overlap and boundaries have planar measure zero, and the fixed uniform-square law gives exact probability \(\epsilon/(4\delta)\). | Establishes the exact lower-event geometry and probability without an almost-everywhere event replacement. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and \ref{assump:cube-density-laws}, accepted Proposition~\ref{prop:step-005-central-rate-bridge}, Proposition~\ref{prop:step-009-exact-presentation}, and Lemma~\ref{lem:step-009-closed-wedges}, if \(0<\epsilon\leq\delta\leq1\), then \(C^{\mathrm{Pf}}_{\mathcal D}(G;[-1,1])\geq1/(4\delta)\), while the projective-speed and raw-presentation upper certificates are respectively \(1/\delta\) and \(\sqrt2/\delta\). | Completes R5, separating the direct lower proof from the accepted upper theorem and making no equality claim beyond the displayed certificates. |

Atomic step = no. The presentation audit, exact closed-event geometry, and
supremum/upper-comparison conclusion are independent nontrivial obligations
and are therefore separated into three named local units.

## Cited Result Applications

External paper results: None.

1. **Proposition~\ref{prop:step-005-central-rate-bridge} (accepted
   dependency, central upper-rate interface).** In the current setting
   notation, its accepted conclusion is (9.1), under the primitive setting
   assumptions already discharged in its dependency chain. Proposition~\ref{prop:step-009-exact-presentation}
   verifies the exact specialized objects and tuple used here. Substitution
   into the last coefficient of (9.1) gives \(\sqrt2/\delta\); substitution
   into its projective-speed coefficient gives \(1/\delta\). The dependency
   is used only after the lower certificate has been proved directly.

2. **Proposition~\ref{prop:step-009-exact-presentation} (local exact
   presentation proposition).** Under the four named primitive assumptions
   and \(0<\delta\leq1\), it proves the complete specialized tuple,
   \(B_Q=1/\delta\), the exact Euclidean normalized curve, and
   \(\Gamma_{\mathrm{proj}}=1/\delta\). It is proved in `unit_001` and used
   by Lemma~\ref{lem:step-009-closed-wedges} and
   Proposition~\ref{prop:step-009-scale-certificate}.

3. **Lemma~\ref{lem:step-009-closed-wedges} (local exact wedge lemma).**
   Under the exact presentation and \(0<\epsilon\leq\delta\), it identifies
   the original closed event set, proves its planar area by two explicit
   slices, and obtains its probability under the fixed joint density. It is
   proved in `unit_002` and used by
   Proposition~\ref{prop:step-009-scale-certificate}.

4. **Proposition~\ref{prop:step-009-scale-certificate} (local R5
   proposition).** It combines the exact probability with the setting
   definition of \(C^{\mathrm{Pf}}_{\mathcal D}\), then uses accepted
   Proposition~\ref{prop:step-005-central-rate-bridge} only to display the
   two upper certificates. It is proved in `unit_003` and is the minimal
   interface exported in the target-step assembly.

## Local Derivation

### unit_001: proposition

**Proposition (Exact Counter-example presentation and Euclidean speed).**
\label{prop:step-009-exact-presentation}
Under Assumptions~\ref{assump:parameter-regime},
\ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and
\ref{assump:cube-density-laws}, if
\[
\Theta=[-1,1],\qquad G(x)=\left(1,\frac{x}{\delta}\right),
\qquad 0<\delta\leq1,
\]
and the coefficient law is uniform on \([-1,1]^2\), then, in the setting's
standard-monomial coefficient convention,
\[
h=1,\quad q=0,\quad M=0,\quad \Delta=1,\quad N=2,
\quad R=1,\quad \kappa=\frac14,\quad A=1,
\quad B_P=0,\quad B_Q=\frac1\delta.
\tag{9.2}
\]
Moreover, \(c=0\), \(x(\theta)=\theta\), \(F(\theta)=G(\theta)\),
\(G_1=F_1=1\), and the exact Euclidean projective presentation is
\[
\gamma_F(\theta)
=\frac{(1,\theta/\delta)}{\sqrt{1+\theta^2/\delta^2}},
\qquad
\|\gamma_F'(\theta)\|_2
=\frac{1}{\delta(1+\theta^2/\delta^2)},
\tag{9.3}
\]
so
\[
\Gamma_{\mathrm{proj}}(F)=\frac1\delta.
\tag{9.4}
\]

**Proof / justification.** The interval \([-1,1]\) has center \(c=0\) and
half-width \(h=1\). Hence the setting's normalized coordinate is exactly
\[
x(\theta)=\frac{\theta-c}{h}=\theta.
\]
There is no triangular chain, so the setting conventions give
\(q=0\), \(M=0\), and \(B_P=0\). The two output polynomials are
\[
Q_1(x)=1,\qquad Q_2(x)=\frac{x}{\delta}.
\]
Their total degrees are zero and one, respectively, and therefore
\(\Delta=1\). Their standard-monomial coefficient \(\ell_1\)-norms are
\[
\|\operatorname{coeff}(Q_1)\|_1=1,
\qquad
\|\operatorname{coeff}(Q_2)\|_1
=\left|0\right|+\left|\frac1\delta\right|=\frac1\delta.
\]
Because \(0<\delta\leq1\), one has \(1/\delta\geq1\), and hence the
maximum required by the setting is exactly
\[
B_Q=\max\left\{1,\frac1\delta\right\}=\frac1\delta,
\tag{9.5}
\]
not an imported or convention-dependent value. There are \(N=2\) outputs,
and \(Q_1\equiv1\) preserves the literal anchor.

The fixed uniform-square law has full joint density
\[
f(\alpha_1,\alpha_2)
=\frac14\,\mathbf 1_{[-1,1]^2}(\alpha_1,\alpha_2).
\]
Thus its support parameter is \(R=1\), its density cap is
\(\kappa=1/4\), and
\[
A=(2R)^N\kappa=2^2\cdot\frac14=1.
\]
This verifies every value in (9.2) directly from the primitive
specialization.

Since \(x=\theta\), the setting's actual feature vector is
\(F(\theta)=(1,\theta/\delta)\). Its Euclidean norm is
\(\sqrt{1+\theta^2/\delta^2}\), which gives the first identity in (9.3).
Direct differentiation gives
\[
\gamma_F'(\theta)
=\frac{1}{(1+\theta^2/\delta^2)^{3/2}}
\left(-\frac{\theta}{\delta^2},\frac1\delta\right).
\]
Consequently,
\[
\begin{aligned}
\|\gamma_F'(\theta)\|_2^2
&=\frac{\theta^2/\delta^4+1/\delta^2}
        {(1+\theta^2/\delta^2)^3}\\
&=\frac{1}{\delta^2(1+\theta^2/\delta^2)^2},
\end{aligned}
\]
which proves the second identity in (9.3). This continuous speed is at most
\(1/\delta\) everywhere and equals \(1/\delta\) at \(\theta=0\). Its
essential supremum is therefore exactly (9.4). Thus both the coefficient
budget and the exact Euclidean normalized curve display the same metric
scale. \(\square\)

### unit_002: lemma

**Lemma (Exact closed coefficient wedges and their area).**
\label{lem:step-009-closed-wedges}
Under the assumptions and specialization of
Proposition~\ref{prop:step-009-exact-presentation}, if
\(0<\epsilon\leq\delta\) and \(t=\epsilon/\delta\), then
\(t\in(0,1]\) and the original closed coefficient event satisfies the exact
set identity
\[
\begin{aligned}
&\left\{(\alpha_1,\alpha_2)\in[-1,1]^2:
  \exists\theta\in[0,\epsilon],\
  \alpha_1+\alpha_2\frac{\theta}{\delta}=0\right\}\\
&\quad=
\underbrace{\left\{(\alpha_1,\alpha_2)\in[-1,1]^2:
  0\leq\alpha_2\leq1,\ -t\alpha_2\leq\alpha_1\leq0\right\}}_{W_t^+}
\ \cup\\
&\qquad
\underbrace{\left\{(\alpha_1,\alpha_2)\in[-1,1]^2:
  -1\leq\alpha_2\leq0,\ 0\leq\alpha_1\leq-t\alpha_2\right\}}_{W_t^-}.
\end{aligned}
\tag{9.6}
\]
Both \(W_t^+\) and \(W_t^-\) are closed triangular wedges,
\[
\operatorname{Leb}_2(W_t^+)=\operatorname{Leb}_2(W_t^-)=\frac t2,
\qquad
\operatorname{Leb}_2(W_t^+\cup W_t^-)=t.
\tag{9.7}
\]
Their intersection and all wedge-boundary contributions have planar
Lebesgue measure zero. Under the fixed uniform-square joint density,
\[
\Pr\!\left[
  \exists\theta\in[0,\epsilon]:
  \alpha_1+\alpha_2\frac{\theta}{\delta}=0
\right]
=\frac{\epsilon}{4\delta}.
\tag{9.8}
\]

**Proof / justification.** Since \(\delta>0\), setting
\(s=\theta/\delta\) maps the closed interval \([0,\epsilon]\) exactly
onto \([0,t]\). Thus the event on the left of (9.6) is
\[
\left\{(\alpha_1,\alpha_2)\in[-1,1]^2:
  \exists s\in[0,t],\ \alpha_1+\alpha_2s=0\right\}.
\tag{9.9}
\]
We now identify (9.9) without discarding any coefficient axis.

If \(\alpha_2>0\), its unique root is
\(s=-\alpha_1/\alpha_2\), and
\[
0\leq-\frac{\alpha_1}{\alpha_2}\leq t
\quad\Longleftrightarrow\quad
-t\alpha_2\leq\alpha_1\leq0.
\tag{9.10}
\]
This is the positive-\(\alpha_2\) branch of \(W_t^+\). If
\(\alpha_2<0\), multiplication by the negative denominator reverses the
relevant inequality and gives
\[
0\leq-\frac{\alpha_1}{\alpha_2}\leq t
\quad\Longleftrightarrow\quad
0\leq\alpha_1\leq-t\alpha_2,
\tag{9.11}
\]
which is the negative-\(\alpha_2\) branch of \(W_t^-\).

If \(\alpha_2=0\), a root exists exactly when \(\alpha_1=0\); the origin
belongs to both displayed wedges. If \(\alpha_1=0\) and \(\alpha_2\) is
arbitrary, \(s=0\), equivalently \(\theta=0\), is a root; the two weak-sign
branches in (9.6) include the entire segment \(\{0\}\times[-1,1]\).
The origin therefore handles the case in which both coefficients vanish.
The sloped edges \(\alpha_1=-t\alpha_2\) give \(s=t\), equivalently
\(\theta=\epsilon\), while the vertical edges \(\alpha_1=0\) give
\(\theta=0\). The square-boundary slices \(\alpha_2=1\) and
\(\alpha_2=-1\) are also included because all inequalities are weak.
Conversely, every point in either wedge yields the indicated
\(s\in[0,t]\), with the origin handled by \(s=0\). This proves the exact
closed-set identity (9.6), including both sign branches, both interval
endpoints, all coefficient-axis cases, the origin, and every wedge edge.

The condition \(t\leq1\) places the nonzero wedge vertices
\((-t,1)\) and \((t,-1)\) inside the coefficient square. Slicing
\(W_t^+\) at a fixed \(\alpha_2\in[0,1]\) gives the closed interval
\([-t\alpha_2,0]\), of length \(t\alpha_2\). Therefore
\[
\operatorname{Leb}_2(W_t^+)
=\int_0^1 t\alpha_2\,d\alpha_2
=\frac t2.
\tag{9.12}
\]
Similarly, a slice of \(W_t^-\) at
\(\alpha_2\in[-1,0]\) is \([0,-t\alpha_2]\), and hence
\[
\operatorname{Leb}_2(W_t^-)
=\int_{-1}^0(-t\alpha_2)\,d\alpha_2
=\frac t2.
\tag{9.13}
\]
The two wedges intersect only at \((0,0)\), because their simultaneous
constraints force \(\alpha_2=0\) and then \(\alpha_1=0\). Each wedge
boundary is a finite union of line segments. Thus the overlap and every
boundary component have planar measure zero, and exact inclusion-exclusion
with (9.12)--(9.13) gives
\[
\operatorname{Leb}_2(W_t^+\cup W_t^-)
=\frac t2+\frac t2=t.
\]
This is an equality of areas of the closed event, not a probabilistic union
bound and not an almost-everywhere replacement of (9.6).

Finally, the fixed law has joint density \(1/4\) throughout the square.
Integration over the exact event gives
\[
\Pr[(9.9)]
=\int_{W_t^+\cup W_t^-}\frac14\,d\alpha_1d\alpha_2
=\frac14\,t
=\frac{\epsilon}{4\delta}.
\]
No coordinate factorization, independence, conditioning, or auxiliary
tolerance enters this equality. This proves (9.8). \(\square\)

### unit_003: proposition

**Proposition (Counter-example lower certificate and upper-scale audit).**
\label{prop:step-009-scale-certificate}
Under Assumptions~\ref{assump:parameter-regime},
\ref{assump:balcan-common-chain}, \ref{assump:anchored-unit-range}, and
\ref{assump:cube-density-laws}, accepted
Proposition~\ref{prop:step-005-central-rate-bridge},
Proposition~\ref{prop:step-009-exact-presentation}, and
Lemma~\ref{lem:step-009-closed-wedges}, if
\(0<\epsilon\leq\delta\leq1\), then, for
\(\mathcal D=\mathcal D_{2,1,1/4}\),
\[
\frac{
 \Pr[\exists\theta\in[0,\epsilon]:
      \alpha_1+\alpha_2\theta/\delta=0]
}{\lvert[0,\epsilon]\rvert}
=\frac1{4\delta}
\tag{9.14}
\]
under the fixed uniform-square law, and
\[
\frac1{4\delta}
\leq C^{\mathrm{Pf}}_{\mathcal D}(G;[-1,1])
\leq\frac1\delta
\leq\frac{\sqrt2}{\delta}.
\tag{9.15}
\]
Here \(1/\delta\) is the exact projective-speed upper certificate and
\(\sqrt2/\delta\) is the exact raw-presentation coefficient supplied by
the accepted central theorem.

**Proof / justification.** Lemma~\ref{lem:step-009-closed-wedges} proves
the probability in the numerator of (9.14) directly, without using the
accepted upper theorem. Since \(\epsilon>0\), the interval
\([0,\epsilon]\) has positive length exactly \(\epsilon\), and hence
\[
\frac{\epsilon/(4\delta)}{\epsilon}=\frac1{4\delta}.
\]
The uniform-square law is an element of
\(\mathcal D_{2,1,1/4}\), and \([0,\epsilon]\subseteq[-1,1]\) because
\(0<\epsilon\leq\delta\leq1\). Applying the two suprema in the setting
definition to this one admissible law and this one positive-length interval
therefore gives
\[
C^{\mathrm{Pf}}_{\mathcal D}(G;[-1,1])
\geq
\frac{\Pr[\exists\theta\in[0,\epsilon]:
 \alpha_1+\alpha_2\theta/\delta=0]}{\epsilon}
=\frac1{4\delta}.
\tag{9.16}
\]
The only division in this supremum argument is by the positive interval
length \(\epsilon\). Equation (9.16) holds separately for every
\(0<\epsilon\leq\delta\); no limit as \(\epsilon\) tends to zero is taken.

Only now do we invoke accepted
Proposition~\ref{prop:step-005-central-rate-bridge}, and only for the upper
comparison (9.1). Proposition~\ref{prop:step-009-exact-presentation} gives
\(A=1\), \(N=2\), and
\(\Gamma_{\mathrm{proj}}(G)=1/\delta\), so its projective-speed coefficient
is exactly
\[
A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(G)
=1\cdot\sqrt{\frac22}\cdot\frac1\delta
=\frac1\delta.
\tag{9.17}
\]
The same proposition gives the full raw tuple, and direct substitution into
the last coefficient of (9.1) yields
\[
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}
=\frac{1\cdot2\cdot1\cdot(1/\delta)\cdot(1+0)}{\sqrt2\cdot1}
=\frac{\sqrt2}{\delta}.
\tag{9.18}
\]
Equations (9.16)--(9.18) prove (9.15). The lower calculation is independent
of the accepted theorem; the dependency supplies only the displayed upper
certificates. These inequalities show that both the coefficient budget and
the exact Euclidean projective presentation expose the \(1/\delta\) metric
scale. They do not identify the exact value of
\(C^{\mathrm{Pf}}_{\mathcal D}\) and make no constant-factor equality claim
beyond (9.14)--(9.15). \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-009-exact-presentation} proves, in the setting's
exact monomial coefficient convention and normalized coordinate, the complete
tuple
\[
h=1,\quad q=0,\quad M=0,\quad \Delta=1,\quad N=2,
\quad R=1,\quad \kappa=\frac14,\quad A=1,
\quad B_P=0,
\quad B_Q=\max\left\{1,\frac1\delta\right\}=\frac1\delta,
\]
preserves \(x=\theta\) and \(G_1=1\), and gives the exact Euclidean
projective presentation with speed \(1/\delta\).

Lemma~\ref{lem:step-009-closed-wedges} proves the exact closed-set identity
for the original coefficient event. Its two weak-sign branches contain
\(\alpha_1=0\), handle \(\alpha_2=0\) exactly at the origin, and contain the
\(\theta=0\) and \(\theta=\epsilon\) edges. Explicit slicing gives total
area \(\epsilon/\delta\), with overlap and boundary contributions of planar
measure zero, so the fixed uniform joint density gives exactly
\(\epsilon/(4\delta)\) for every \(0<\epsilon\leq\delta\).

Proposition~\ref{prop:step-009-scale-certificate} divides only by the
positive interval length, applies the setting definition, and proves
\[
\boxed{C^{\mathrm{Pf}}_{\mathcal D}(G;[-1,1])\geq\frac1{4\delta}}.
\]
It then consumes accepted
Proposition~\ref{prop:step-005-central-rate-bridge} solely to compare this
direct lower certificate with the exact raw upper coefficient
\(\sqrt2/\delta\) and the exact projective-speed upper certificate
\(1/\delta\). These named results prove the full accepted `step_009` row and
the complete R5 scale audit, with `full` progress type and no claim beyond the
displayed lower and upper certificates.

## Explicit Rate Audit

- Exposed variables: \(\delta\) and \(\epsilon\), with
  \(0<\epsilon\leq\delta\leq1\), together with the literal specialized
  tuple
  \[
  (h,q,M,\Delta,N,R,\kappa,A,B_P,B_Q)
  =\left(1,0,0,1,2,1,\frac14,1,0,\frac1\delta\right).
  \]
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\delta\), \(\epsilon\), a
  coefficient sign branch, a wedge boundary, the law, the interval, or any
  presentation quantity.
- Fixed quantities: For each displayed calculation, the deterministic feature
  vector \(G=(1,x/\delta)\), \(\delta\), and the full uniform joint law on
  \([-1,1]^2\) are fixed. The lower probability is then evaluated for every
  allowed \(\epsilon\).
- Probability mode: Exact ordinary probability under the fixed joint law.
  There is no confidence parameter, expectation, conditioning, union bound,
  simultaneous-law event, or independence argument.
- Horizon mode: Exactly the closed intervals \([0,\epsilon]\) for every
  \(0<\epsilon\leq\delta\). Arbitrarily small positive \(\epsilon\) are
  covered by the same identity; no asymptotic limit replaces them.
- Norm mode: The projective norm is the Euclidean \(\ell_2\) norm in (9.3),
  and the coefficient-event calculation uses ordinary planar Lebesgue measure
  on the original square. The quotient uses ordinary interval length.
- Admissibility conditions and auxiliary tolerances: Exactly
  \(0<\epsilon\leq\delta\leq1\). There is no auxiliary tolerance,
  transversality condition, selected margin, or alternate Pfaffian
  convention.
- Term absorption or simplification inequalities: No term is absorbed or
  dropped. The exact identities are
  \[
  t=\frac\epsilon\delta,
  \qquad
  2\int_0^1t u\,du=t,
  \qquad
  \frac14t=\frac\epsilon{4\delta},
  \qquad
  \frac{2/\delta}{\sqrt2}=\frac{\sqrt2}{\delta}.
  \]
- Probability conversion: Exact integration of the fixed full joint density
  \(1/4\) over the exact closed event. There is no conditional-density or
  coordinatewise conversion.
- Contribution to any Rate Specialization Bridge: This is the complete R5
  bridge. It first proves the lower certificate independently, then maps the
  accepted central upper interface to \(1/\delta\) in projective-speed form
  and \(\sqrt2/\delta\) in raw-presentation form.
- Baseline-reduction check, if applicable: At \(\epsilon=\delta\), one has
  \(t=1\), total wedge area one, probability \(1/4\), and quotient
  \(1/(4\delta)\). At \(\delta=1\), the same formulas give
  \(B_Q=1\), probability \(\epsilon/4\), and quotient \(1/4\). For every
  arbitrarily small but positive \(\epsilon\), the ratio remains exactly
  \(1/(4\delta)\) without passing to a limit. The axes, origin, square
  edges, wedge edges, \(\theta=0\), and \(\theta=\epsilon\) are included in
  the exact event identity.

## Blockers

None

## Notation And Assumption Notes

- The specialized feature vector \(G\), the tuple in (9.2), the exact
  Euclidean normalized curve in (9.3), and the lower and upper certificates
  in (9.15) are `public-facing`. They are direct specializations of objects
  already defined in `setting.md`; no surrogate coordinate, norm, or feature
  vector is introduced.
- The ratio \(t=\epsilon/\delta\) is `proof-local` and is directly defined
  from the formalized-goal variables. Its bound \(0<t\leq1\) follows from
  the primitive scalar range and is not assumed separately.
- The event in (9.6) is a `proof-local` abbreviation of the original setting
  event, not a generated good event or conditional hypothesis. The wedges
  \(W_t^+\) and \(W_t^-\) are `proof-local` derived sets; their exact event
  identity and areas are proved by
  Lemma~\ref{lem:step-009-closed-wedges} before they are used.
- The notation \(\operatorname{Leb}_2\) is `proof-local` notation for planar
  Lebesgue measure. It introduces no new measure convention. There are no
  `appendix-local` helper objects.
- Constant provenance is literal. The values \(h,q,M,\Delta,N,R,\kappa\),
  \(B_P\), and \(B_Q\) come directly from the specialized setting
  presentation; \(A=(2R)^N\kappa=1\) is setting-defined;
  \(t=\epsilon/\delta\) is directly defined; the factors \(1/4\),
  \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\) are proved by the
  displayed equalities. There is no free bounded quantity or hidden
  constant.
- Assumption provenance is exact. The tuple, fixed law, and scalar ranges are
  primitive static conditions. The exact event identity, its area, its
  probability, and the Euclidean speed are proved in this step. The only
  accepted derived input is the `step_005` upper-rate interface, and it is
  not used to prove the lower event or lower bound. No generated invariant,
  stability condition, recurrence, boundedness condition, or local-validity
  event is assumed.
- The cases \(\alpha_1=0\), \(\alpha_2=0\), the origin, all closed wedge
  edges, \(\theta=0\), \(\theta=\epsilon\), \(\epsilon=\delta\),
  \(\delta=1\), and every positive \(\epsilon\) in the allowed range are
  handled inside the named local results. No coefficient-null case is used to
  weaken the exact set identity.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified to have status `ACCEPTED`, with
  current SHA-256 values
  `ab5340e84579424a3359d13063e91ed62e3db868b3b126c0bf10e5073f98153f`
  and
  `bc4164bc1cad6e4856ee1268a586fbd17d5f8aa319f69716ea73b3da580f28c2`.
  Its step-relevant planning observation was to expose both sign wedges and
  their slice areas. The exact closed-set identity, boundary cases,
  presentation tuple, projective speed, lower certificate, and upper
  comparison were independently proved here. The diagnostic was not used as
  evidence, a cited result, an assumption source, or authority to change the
  target claim.
