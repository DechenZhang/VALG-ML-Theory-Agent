# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For \(b=0,F=(1,\theta/\delta),R=1\), prove
  \(\Gamma_{\rm piv}=1/\delta\); for the uniform law prove exactly
  \[
  \Pr\!\left[\exists\theta\in[0,\epsilon]:
  \phi_\alpha(\theta)=0\right]
  =\frac{\epsilon}{4\delta},
  \qquad 0<\epsilon\le\delta.
  \]
- Depends on: `step_001`.
- Assumptions used: Specialized primitive instances of
  `assump:shared-pfaffian-chain`, `assump:no-forced-root`, and
  `assump:joint-density-cap`.
- Technical challenge: Computing the minimizing pivot at zero and away from
  zero and matching it to the exact wedge event.
- Intended proof tool or cited result: Direct differentiation and planar
  integration.
- Output target: Counter-example 1 scale certificate.
- Rate objective: R2, namely literal \(1/\delta\) conditioning and
  \(\epsilon/(4\delta)\) probability, with no hidden dependence.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:shared-pfaffian-chain`: specialized here to
    \(\Theta=[-1,1]\), \(b(\theta)=0\),
    \(F_1(\theta)=1\), and \(F_2(\theta)=\theta/\delta\), where
    \(0<\delta\le1\). These functions are \(C^1\) and have a chain-free
    Pfaffian representation.
  - `assump:no-forced-root`: the specialization satisfies it because
    \(F_1(\theta)=1\) for every \(\theta\in[-1,1]\).
  - `assump:joint-density-cap`: for the probability calculation, the law is
    the uniform law on \([-1,1]^2\), with density
    \(f_\mu=\tfrac14\mathbf 1_{[-1,1]^2}\). Thus
    \(N=2\), \(R=1\), \(\kappa=1/4\), and
    \(A=(2R)^N\kappa=1\). This is the exact law specified by the target,
    not an added independence hypothesis.
  - The parameter restrictions \(0<\delta\le1\) and
    \(0<\epsilon\le\delta\) are primitive, pre-sampling conditions in the
    specialized setting and accepted R2 objective.
- Accepted dependency artifacts:
  - `perspective_3/idea_1/proof_steps/step_001/proof.md`, SHA-256
    `2a44be9fcaa15c23fdfcde0d473d4cd3019c264628c431a082c1d90f1bcb634a`.
  - `perspective_3/idea_1/proof_steps/step_001/review.md`, SHA-256
    `c935a43af6c57c18a18af36c36ce74083a6c04339e489`, with status
    `ACCEPTED` for sketch attempt 1, step `step_001`, unit attempt 1, and the
    preceding proof hash.
- Derived invariants supplied by accepted dependencies:
  - Lemma~\ref{lem:step-001-root-feasible} supplies compact root feasibility
    for the specialized \(K_1\).
  - Proposition~\ref{prop:step-001-fixed-family-bound} supplies qualitative
    finiteness of \(\Gamma_{\rm piv}\) for this fixed family. The exact value
    \(1/\delta\) is not imported from that proposition; it is derived below.
- Local conditional hypotheses: None. The cases \(\theta=0\),
  \(\theta\ne0\), \(\alpha_2=0\), and \(\alpha_2\ne0\) are exhaustive
  branches proved within the local units, not theorem-facing assumptions.

No generated event, realized regularity condition, or pivot-selection property
is assumed. In particular, the wedge event used below is derived exactly from
the root equation before its area is computed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, the accepted fixed-family interface from `step_001`, and \(0<\delta\le1\), the scale-stress family has \(K_1=[-1,1]\), \(V_1=1/\delta\), \(V_2(0)=+\infty\), and \(V_2(\theta)=\delta/\theta^2\) for \(\theta\ne0\); its minimizing pivot is identified on every boundary regime, and \(\Gamma_{\rm piv}=1/\delta\). | Proves the exact conditioning value and the requested pivot audit at zero, away from zero, and at ties. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, if \(\Theta=[-1,1]\), \(b=0\), \(F=(1,\theta/\delta)\), and \(0<\epsilon\le\delta\le1\), then the coefficient vectors having a root in the closed interval \([0,\epsilon]\) are exactly those satisfying \(\alpha_1\alpha_2\le0\) and \(\lvert\alpha_1\rvert\le(\epsilon/\delta)\lvert\alpha_2\rvert\), with the coefficient axes and both interval endpoints handled exactly. | Identifies the original root event with the exact two-dimensional closed wedge, with zero residual. |
| `unit_003` | proposition | Under Assumption~\ref{assump:joint-density-cap} specialized to the uniform law, Lemma~\ref{lem:step-005-wedge-event}, and \(0<\epsilon\le\delta\), the two wedge components have total area \(\epsilon/\delta\), so the exact root probability is \(\epsilon/(4\delta)\). | Converts the exact wedge event into the target probability without a hidden constant or boundary loss. |

Atomic step = no. The pivot minimization, root-event equivalence, and planar
measure calculation are independent nontrivial obligations and are therefore
exposed as three local units.

## Cited Result Applications

No paper result or external citation is used in this step.

### Accepted dependency: fixed-family feasibility and finiteness

- Source or name: accepted `step_001` proof and review, with the hashes listed
  in `## Allowed Assumptions And Dependencies`.
- Restated statement in current notation:
  Lemma~\ref{lem:step-001-root-feasible} states that under
  Assumption~\ref{assump:shared-pfaffian-chain}, \(K_R\) is compact and every
  root generated by a coefficient vector in \([-R,R]^N\) lies in \(K_R\).
  Proposition~\ref{prop:step-001-fixed-family-bound} states, using also the
  accepted compact available-pivot conclusion under
  Assumption~\ref{assump:no-forced-root}, that
  \(\Gamma_{\rm piv}(b,F;R)<\infty\) for each fixed family.
- Instantiated objects: \(N=2\), \(R=1\), \(\Theta=[-1,1]\),
  \(b=0\), and \(F=(1,\theta/\delta)\).
- Required assumptions: \(C^1\) regularity on compact \(\Theta\) and no
  simultaneous zero of \((b,F)\).
- Assumption discharge: the displayed functions are \(C^1\) for
  \(\delta>0\), and \(F_1=1\) excludes a simultaneous zero.
- Conclusion used: the specialization is within the accepted compact
  root-feasible and finite-conditioning interface. Proposition
  \ref{prop:step-005-pivot-profile} independently computes and sharpens the
  qualitative finite value to exactly \(1/\delta\).

### Elementary planar slicing formula

- Source or name: the elementary Cavalieri/Tonelli slicing identity for a
  nonnegative indicator.
- Restated statement in current notation: if \(B\subseteq[-1,1]^2\) is
  Borel and its vertical section
  \(B_y=\{x\in[-1,1]:(x,y)\in B\}\) is an interval for every \(y\), then
  \[
  \lambda_2(B)=\int_{-1}^1\lambda_1(B_y)\,dy.
  \]
- Instantiated objects: the two closed triangular wedge components in
  Proposition~\ref{prop:step-005-wedge-probability}.
- Required assumptions: Borel measurability and nonnegative measurable
  indicator.
- Assumption discharge: each component is defined by finitely many closed
  linear inequalities, hence is closed and Borel; its sections are the
  explicit closed intervals displayed in that proposition.
- Conclusion used: each component has area
  \(\tfrac12(\epsilon/\delta)\).

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Proposition~\ref{prop:step-005-pivot-profile} | Under the specialized instances of Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, the accepted `step_001` interface, and \(0<\delta\le1\), the exact pivot profile yields \(\Gamma_{\rm piv}=1/\delta\). | Supplies the conditioning clause to the target-step assembly. |
| Lemma~\ref{lem:step-005-wedge-event} | Under the specialized family and \(0<\epsilon\le\delta\), the closed-interval root event equals the exact closed two-wedge event, including coefficient-axis cases. | Supplies the measurable coefficient set to Proposition~\ref{prop:step-005-wedge-probability} and the exact event bridge to the assembly. |
| Proposition~\ref{prop:step-005-wedge-probability} | Under the uniform-law instance of Assumption~\ref{assump:joint-density-cap} and Lemma~\ref{lem:step-005-wedge-event}, the root event has area \(\epsilon/\delta\) and probability \(\epsilon/(4\delta)\). | Supplies the exact probability clause to the target-step assembly. |

## Local Derivation

### unit_001: proposition

**Proposition (Exact scale-stress pivot profile).**
\(\label{prop:step-005-pivot-profile}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, the accepted fixed-family feasibility and
finiteness conclusions of Lemma~\ref{lem:step-001-root-feasible} and
Proposition~\ref{prop:step-001-fixed-family-bound}, and the conditions
\[
0<\delta\le1,\qquad
\Theta=[-1,1],\qquad b(\theta)=0,\qquad
F(\theta)=(1,\theta/\delta),\qquad R=1,
\]
one has \(K_1=[-1,1]\) and
\[
V_1(\theta)=\frac1\delta\quad(-1\le\theta\le1),
\]
\[
V_2(0)=+\infty,
\qquad
V_2(\theta)=\frac{\delta}{\theta^2}quad(\theta\ne0).
\]
At \(\theta=0\), coordinate 1 is the unique finite minimizing pivot. For
\(\theta\ne0\), coordinate 1 uniquely minimizes when
\(0<\lvert\theta\rvert<\delta\), both coordinates minimize when
\(\lvert\theta\rvert=\delta\), and coordinate 2 uniquely minimizes when
\(\delta<\lvert\theta\rvert\le1\). Under the setting's least-index tie rule,
\(j_*(\theta)=1\) at \(\lvert\theta\rvert=\delta\). Consequently,
\[
\Gamma_{\rm piv}(0,(1,\theta/\delta);1)=\frac1\delta.
\]

Proof / justification:
For every \(\theta\in[-1,1]\),
\[
\lvert b(\theta)\rvert=0
\le \lvert F_1(\theta)\rvert+\lvert F_2(\theta)\rvert
=1+\frac{\lvert\theta\rvert}{\delta}.
\]
Thus the setting definition gives \(K_1=\Theta=[-1,1]\), consistently with
the accepted root-feasibility interface.

For the constant pivot \(F_1=1\), the definition of \(V_1\) and \(R=1\)
give
\[
\begin{aligned}
V_1(\theta)
&=\left\lvert\left(\frac0{1}\right)'\right\rvert
 +\left\lvert\left(\frac{\theta/\delta}{1}\right)'\right\rvert
=\frac1\delta.
\end{aligned}
\]
The second pivot vanishes exactly at \(\theta=0\), so the setting's extended
definition gives \(V_2(0)=+\infty\). On its ordinary domain
\(\theta\ne0\),
\[
\begin{aligned}
V_2(\theta)
&=\left\lvert\left(\frac0{\theta/\delta}\right)'\right\rvert
 +\left\lvert\left(\frac1{\theta/\delta}\right)'\right\rvert\\
&=0+\left\lvert\left(\frac\delta\theta\right)'\right\rvert
=\frac\delta{\theta^2}.
\end{aligned}
\]
This also shows directly that coordinate 1 is the unique finite minimizer at
zero. Away from zero,
\[
\frac{\delta}{\theta^2}
\begin{cases}
>1/\delta,&0<\lvert\theta\rvert<\delta,\\
=1/\delta,&\lvert\theta\rvert=\delta,\\
<1/\delta,&\delta<\lvert\theta\rvert\le1.
\end{cases}
\]
Therefore
\[
\min\{V_1(\theta),V_2(\theta)\}
=
\begin{cases}
1/\delta,&\lvert\theta\rvert\le\delta,\\
\delta/\theta^2,&\delta<\lvert\theta\rvert\le1.
\end{cases}
\]
When \(\delta=1\), the second branch is empty and the two pivots tie only at
the endpoints \(\theta=\pm1\); the displayed formula and least-index rule
remain valid. The pointwise minimum never exceeds \(1/\delta\), and it equals
\(1/\delta\) throughout \([-\delta,\delta]\), in particular at
\(\theta=0\). Taking the supremum over \(K_1=[-1,1]\) proves the exact
conditioning value.

### unit_002: lemma

**Lemma (Exact closed-wedge characterization of the root event).**
\(\label{lem:step-005-wedge-event}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, suppose
\(\Theta=[-1,1]\), \(b(\theta)=0\),
\(F(\theta)=(1,\theta/\delta)\), and
\(0<\epsilon\le\delta\le1\). Then, as an exact equality of subsets of
\([-1,1]^2\),
\[
\begin{aligned}
&\left\{\alpha:\exists\theta\in[0,\epsilon],\
\alpha_1+\alpha_2\theta/\delta=0\right\}\\
&\qquad=
\left\{\alpha:\alpha_1\alpha_2\le0,\
\lvert\alpha_1\rvert
\le\frac{\epsilon}{\delta}\lvert\alpha_2\rvert\right\}.
\end{aligned}
\]
The equality includes all coefficient-axis cases. The non-strict sign and
magnitude inequalities correspond respectively to the closed interval
endpoints \(\theta=0\) and \(\theta=\epsilon\).

Proof / justification:
Put \(r=\epsilon/\delta\), so \(0<r\le1\). Since \(\delta>0\), the change of
variable
\[
t=\theta/\delta
\]
maps the closed interval \([0,\epsilon]\) bijectively onto \([0,r]\). Thus
the left-hand event is exactly
\[
\left\{\alpha:\exists t\in[0,r],\
\alpha_1+\alpha_2t=0\right\}.
\]

First suppose \(\alpha_2\ne0\). The only possible root parameter is
\(t=-\alpha_1/\alpha_2\), and
\[
-\frac{\alpha_1}{\alpha_2}\in[0,r]
\quad\Longleftrightarrow\quad
\alpha_1\alpha_2\le0
\quad\text{and}\quad
\lvert\alpha_1\rvert\le r\lvert\alpha_2\rvert.
\]
The weak inequality at zero includes \(t=0\), or equivalently
\(\theta=0\), and equality in the magnitude constraint includes \(t=r\),
or equivalently \(\theta=\epsilon\).

Now suppose \(\alpha_2=0\). A root exists if and only if
\(\alpha_1=0\). On the proposed wedge, the magnitude inequality becomes
\(\lvert\alpha_1\rvert\le0\), which has exactly the same conclusion. Thus
the whole \(\alpha_2\)-axis contributes only the origin. On the other
coefficient axis, \(\alpha_1=0\) gives a root at \(\theta=0\) for every
\(\alpha_2\), and both wedge inequalities hold. At the origin every
\(\theta\in[0,\epsilon]\) is a root. Hence the set identity is exact on the
axes as well as off them; no null-boundary modification is being used.

### unit_003: proposition

**Proposition (Exact planar wedge probability).**
\(\label{prop:step-005-wedge-probability}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap} specialized to the uniform
law on \([-1,1]^2\), Lemma~\ref{lem:step-005-wedge-event}, and
\(0<\epsilon\le\delta\), the coefficient set with a root in
\([0,\epsilon]\) has two-dimensional Lebesgue measure
\(\epsilon/\delta\). Consequently,
\[
\Pr\!\left[\exists\theta\in[0,\epsilon]:
\phi_\alpha(\theta)=0\right]
=\frac{\epsilon}{4\delta}.
\]

Proof / justification:
Again set \(r=\epsilon/\delta\in(0,1]\). By
Lemma~\ref{lem:step-005-wedge-event}, the root event is the exact closed set
\[
W_r=\left\{\alpha\in[-1,1]^2:
\alpha_1\alpha_2\le0,\
\lvert\alpha_1\rvert\le r\lvert\alpha_2\rvert\right\}.
\]
It is the union of the two closed triangular components
\[
W_r^+=\left\{0\le\alpha_2\le1,
-r\alpha_2\le\alpha_1\le0\right\},
\]
\[
W_r^-=\left\{-1\le\alpha_2\le0,
0\le\alpha_1\le-r\alpha_2\right\}.
\]
The condition \(r\le1\) ensures that all displayed horizontal endpoints lie
inside \([-1,1]\), so neither triangle is clipped by a vertical side of the
coefficient square. Their intersection is only the origin. Applying the
restated planar slicing identity gives
\[
\lambda_2(W_r^+)
=\int_0^1 r\alpha_2\,d\alpha_2
=\frac r2,
\]
and
\[
\lambda_2(W_r^-)
=\int_{-1}^0(-r\alpha_2)\,d\alpha_2
=\frac r2.
\]
The intersection has area zero, and therefore
\[
\lambda_2(W_r)=r=\frac\epsilon\delta.
\]

For completeness, the coefficient axes are one-dimensional subsets of the
plane and have \(\lambda_2\)-measure zero: applying the same slicing identity
to either axis gives an integral of singleton-section lengths, all equal to
zero. The sloping endpoint edges also have singleton vertical sections and
area zero. These facts prevent boundary double counting in the area
calculation, while Lemma~\ref{lem:step-005-wedge-event} already established
that the axes and edges are included in the root event with the correct
closed-endpoint convention.

Finally the uniform law has density \(1/4\) on the square. Hence
\[
\begin{aligned}
\Pr\!\left[\exists\theta\in[0,\epsilon]:
\phi_\alpha(\theta)=0\right]
&=\int_{W_r}\frac14\,d\alpha\\
&=\frac14\lambda_2(W_r)
=\frac{\epsilon}{4\delta}.
\end{aligned}
\]
There is no conditioning, union bound, or independence step in this equality.

## Target-Step Assembly

The accepted dependency results
Lemma~\ref{lem:step-001-root-feasible} and
Proposition~\ref{prop:step-001-fixed-family-bound} place the scale-stress
specialization inside the compact root-feasible, finite-conditioning
interface proved by `step_001`. Proposition~\ref{prop:step-005-pivot-profile}
then sharpens that qualitative interface by direct calculation: the constant
pivot has speed \(1/\delta\), the second pivot has speed
\(\delta/\theta^2\) away from zero and is unavailable at zero, and their
pointwise minimum has supremum exactly \(1/\delta\). Its piecewise minimizer
description covers \(\theta=0\), both regions away from zero, the tie
\(\lvert\theta\rvert=\delta\), and the endpoint case \(\delta=1\).

For the probability clause, Lemma~\ref{lem:step-005-wedge-event} identifies
the original closed-interval root event exactly, not merely modulo a null set,
with the two opposite-sign wedges. It explicitly accounts for roots at
\(\theta=0\) and \(\theta=\epsilon\), the full \(\alpha_1=0\) axis segment,
and the fact that the \(\alpha_2=0\) axis contributes only the origin.
Proposition~\ref{prop:step-005-wedge-probability} computes the two wedge areas
as \(\epsilon/(2\delta)\) each and multiplies their total by the exact uniform
density \(1/4\). Together these named results prove every clause of the exact
accepted `step_005` row.

This assembly is only an exact audit of the fixed scale-stress family. It does
not claim or imply polynomial general-instance control of
\(\Gamma_{\rm piv}\) from \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or any
other Pfaffian-format data. That full-source gap remains unresolved, exactly as
required by the branch's `material_partial` theorem contract.

## Explicit Rate Audit

- Exposed variables: \(\delta\) and \(\epsilon\), with
  \(0<\epsilon\le\delta\le1\), together with the specialized exact values
  \(N=2\), \(R=1\), \(\kappa=1/4\), \(A=1\), and
  \(\Gamma_{\rm piv}=1/\delta\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\delta\), \(\epsilon\), the
  coefficient vector, a pivot margin, coefficient-axis conventions, or any
  unrecorded Pfaffian scale.
- Fixed quantities: \(\Theta=[-1,1]\), the displayed scale-stress feature
  form, the coefficient square, and the uniform-law convention are fixed.
  The exposed \(\delta\) and \(\epsilon\) range over the stated admissible
  set.
- Probability mode: Exact ordinary probability under the uniform law; there
  is no conditioning event, expectation, confidence parameter, or supremum.
- Horizon mode: The single closed interval \([0,\epsilon]\); there is no
  time horizon, asymptotic limit, or stopping rule.
- Norm mode: The setting's \(\ell_1\) support-feasibility test in \(K_1\),
  scalar absolute coordinate-ratio velocity in \(V_1,V_2\), and planar
  Lebesgue measure on the original coefficient square.
- Admissibility conditions and auxiliary tolerances:
  \(0<\epsilon\le\delta\le1\). The derived ratio
  \(r=\epsilon/\delta\in(0,1]\) is exact and ensures that the wedges are not
  clipped by \(\lvert\alpha_1\rvert\le1\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: No term is absorbed or
  discarded. The pivot comparison is exactly
  \[
  \frac{\delta}{\theta^2}\le\frac1\delta
  \quad\Longleftrightarrow\quad
  \lvert\theta\rvert\ge\delta,
  \qquad
  \frac{\delta}{\theta^2}\ge\frac1\delta
  \quad\Longleftrightarrow\quad
  \lvert\theta\rvert\le\delta
  \]
  for \(\theta\ne0\), with equality at
  \(\lvert\theta\rvert=\delta\). The area calculation is
  exactly
  \[
  \int_0^1r y\,dy+\int_{-1}^0(-r y)\,dy
  =\frac r2+\frac r2=r.
  \]
- Probability conversion: The exact event area
  \(\lambda_2(W_r)=\epsilon/\delta\) is multiplied by the exact density
  \(1/4\), yielding \(\epsilon/(4\delta)\). There is no inequality or union
  bound in this conversion.
- Contribution to any Rate Specialization Bridge: This is the complete R2
  fixed-family bridge. It exposes the mandatory \(1/\delta\) scale both in
  \(\Gamma_{\rm piv}\) and in the matching exact root probability.
- Baseline-reduction check, if applicable: At \(\delta=1\), the formulas give
  \(\Gamma_{\rm piv}=1\) and probability \(\epsilon/4\) for
  \(0<\epsilon\le1\). At the closed endpoint \(\epsilon=\delta\), the wedge
  ratio is \(r=1\), its area is exactly one, and the probability is exactly
  \(1/4\). Thus the endpoint and unit-scale specializations retain the same
  conclusion with no conservative loss.

## Blockers

None.

The unresolved full-source question is not a blocker for this exact
`material_partial` row: no polynomial bound on a general family's
\(\Gamma_{\rm piv}\) in Pfaffian-format data is proved here, and that gap
remains explicit.

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(K_1\), \(V_1\), \(V_2\),
  \(\Gamma_{\rm piv}\), and the displayed root-event probability retain the
  exact meanings from `setting.md`. The minimal exported interface is only
  \(\Gamma_{\rm piv}=1/\delta\) and
  \(\Pr[\exists\theta\in[0,\epsilon]:\phi_\alpha(\theta)=0]
  =\epsilon/(4\delta)\).
- Proof-local helper objects: \(t=\theta/\delta\),
  \(r=\epsilon/\delta\), the exact wedge \(W_r\), and its two components
  \(W_r^+,W_r^-\). The ratios \(t,r\) are directly defined from the
  setting's specialized quantities, and \(W_r\) is proved equal to the target
  root event by Lemma~\ref{lem:step-005-wedge-event}. None is exported as a
  new theorem parameter.
- Appendix-local helper objects: None.
- Constant provenance: \(\delta\) and \(\epsilon\) are explicit primitive
  specialized parameters; \(1/\delta\) is proved by
  Proposition~\ref{prop:step-005-pivot-profile}; \(r\) is their exact ratio;
  and \(1/4\) is the normalized density of the square of area four. There is
  no free constant, radius, margin, or bounded quantity.
- Assumption provenance: \(C^1\) regularity and no forced root are primitive
  specialized setting conditions. Compact root feasibility and qualitative
  finiteness are accepted dependency conclusions. The equality
  \(K_1=[-1,1]\), the full pivot profile, the wedge event, its area, and the
  exact probability are all proved in this step. No generated-object fact,
  event membership, local-validity condition, stability property, recurrence,
  or invariant is assumed.
- Coefficient-axis and endpoint conventions: The event equality uses the
  closed interval \([0,\epsilon]\) and weak wedge inequalities. The line
  \(\alpha_1=0\) is included through the endpoint \(\theta=0\); on
  \(\alpha_2=0\), only the origin is included; and the sloping boundary
  \(\lvert\alpha_1\rvert=r\lvert\alpha_2\rvert\) with opposite signs is
  included through \(\theta=\epsilon\). These sets have planar measure zero,
  but the set identity was proved exactly before nullity was used to avoid
  boundary double counting in the area computation.
- Dependency provenance: only the two accepted `step_001` conclusions
  restated in `## Cited Result Applications` are consumed. Its proof-local
  witnesses \(B_0,B_1,\rho\) are not imported into this step's public or
  local rate.
- Diagnostic boundary: the optional `global_proof.md` was not read or used.
- Progress boundary: this is an exact calculation for one fixed family and
  remains `material_partial`. It neither claims nor implies polynomial
  general-instance control of \(\Gamma_{\rm piv}\) in Pfaffian-format data;
  the unresolved full-source gap remains open.
