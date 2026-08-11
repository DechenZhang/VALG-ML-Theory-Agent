# Proof Step

## Step Identity

- Sketch attempt: 3
- Step ID: step_005
- Unit attempt: 1
- Source-direction metadata: progress_type=material_partial
- Binding idea.md SHA-256: 5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836
- Binding setting.md SHA-256: 91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e
- Accepted proof_sketch.md SHA-256: 32023800de7b27eca85577e615139a5658106b35406627061879396bb35bf906
- Accepted proof_sketch_review.md SHA-256: 3b626916a9e03b7539ee88961ad973ee2bbe2d6c3649a5bac51e8028cac5335e
- Controller-open proof_tracker.md SHA-256: 10144c663851dfc7f6a2b8a9e5431156955a5a90d7d6f32b37cc69317241a8db
- Accepted dependency step_001 proof SHA-256: 6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838
- Accepted dependency step_001 review SHA-256: c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0

## Target Step Claim

- Intended claim: For \(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\),
  \(R=1\), and \(0<\delta\le1\), prove exactly
  \[
  \Gamma_{\rm piv}(b_\delta,F_\delta;1)=\frac1\delta,
  \]
  including the \(\theta=0\) pivot convention.
- Depends on: step_001.
- Assumptions used: Specialized primitive instances of
  assump:shared-pfaffian-chain and assump:no-forced-root; current attempt-3
  common definitions and legal finite-pivot interface from the fresh accepted
  step_001 dependency.
- Technical challenge: Compute the pointwise minimizing pivot at zero and away
  from zero without adding a law, event, or probability target.
- Intended proof tool or cited result: Direct quotient differentiation in the
  exact setting convention. The current attempt-3 step_001 proof and accepted
  review are identified above by complete SHA-256 values; no attempt-2 or
  earlier digest is dependency evidence.
- Output target: Counter-example 1 static scale certificate.
- Rate objective: R2, the literal \(1/\delta\) conditioning value with no
  hidden dependence or added quantitative output.
- Row-local review status in the accepted sketch: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The fixed specialization is
    \[
    \Theta=[-1,1],\qquad
    b_\delta(\theta)=0,\qquad
    F_\delta(\theta)=\left(1,\frac{\theta}{\delta}\right),\qquad
    R=1,\qquad 0<\delta\le1.
    \]
    Thus \(N=2\), and \(\delta\) is a deterministic scale parameter.
  - Assumption~\ref{assump:shared-pfaffian-chain}: for each admissible
    \(\delta\), the displayed coordinates are \(C^1\) on \(\Theta\) and use
    the setting's common scalar convention. Explicitly, the chain is absent
    (\(q=0\), \(M=0\)); \(b_\delta\), \(F_{\delta,1}\), and
    \(F_{\delta,2}\) are the polynomials \(0\), \(1\), and
    \(\theta/\delta\).
  - Assumption~\ref{assump:no-forced-root}: it holds because
    \(F_{\delta,1}(\theta)=1\) for every \(\theta\in\Theta\), so
    \((b_\delta(\theta),F_\delta(\theta))\ne(0,0)\).
  - The definitions of \(K_R\), \(U_j\), the extended \(V_j\), and
    \(\Gamma_{\rm piv}\) are exactly those in setting.md.
- Derived invariants supplied by accepted dependencies:
  - The sole dependency is the current sketch-attempt-3 step_001 proof with
    SHA-256
    6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838.
    Its review has SHA-256
    c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0
    and records sketch attempt 3, step_001, unit attempt 1, status ACCEPTED,
    and that same proof digest.
  - Under the two assumptions above, the accepted dependency supplies
    compact root feasibility, availability of at least one nonzero pivot at
    every point of a nonempty feasible set, and fixed-family finiteness of
    \(\Gamma_{\rm piv}\). The present step directly sharpens that interface
    to \(K_1=\Theta\), identifies the always-available first pivot, and
    computes the exact finite value.
- Local conditional hypotheses:
  - \(\theta=0\) and \(\theta\ne0\) are exhaustive proof branches, not added
    theorem assumptions.
  - There is no generated event, law, confidence level, local-validity
    condition, recurrence, stability condition, or invariant hypothesis.

Assumption~\ref{assump:joint-density-cap} is neither allowed nor used. No
probability theorem, chart sweep, interval event, auxiliary tolerance, or
limiting argument enters this step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root}, for the displayed family with \(0<\delta\le1\), the root-feasible set is exactly \(K_1=\Theta=[-1,1]\), and the first coordinate is a nonzero available pivot at every point. | Identifies the exact supremum domain and discharges pivot availability, including at zero and both endpoints. |
| unit_002 | lemma | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and Lemma~\ref{lem:step-005-root-feasible-set}, for every \(0<\delta\le1\), \(V_1(\theta)=1/\delta\) on \(\Theta\), \(V_2(\theta)=\delta/\theta^2\) for \(\theta\ne0\), and \(V_2(0)=+\infty\) under the setting's extension convention. | Computes both extended pivot speeds exactly in the original feature coordinates. |
| unit_003 | proposition | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and Lemmas~\ref{lem:step-005-root-feasible-set} and \ref{lem:step-005-exact-pivot-speeds}, for every \(0<\delta\le1\), \(\sup_{\theta\in K_1}\min\{V_1(\theta),V_2(\theta)\}=1/\delta\), hence \(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\). | Supplies the exact upper bound and the matching value attained at \(\theta=0\). |

Atomic step = no. Determining \(K_1\), computing the two extended speeds, and
closing the supremum equality are distinct auditable obligations, so they are
exposed as three local units.

## Cited Result Applications

No paper result or external citation is used.

### Accepted dependency application

- Source and verified identity: the accepted dependency is
  perspective_3/idea_1/proof_steps/step_001/proof.md with SHA-256
  6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838.
  Its matching review is
  perspective_3/idea_1/proof_steps/step_001/review.md with SHA-256
  c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0.
  The review records sketch attempt 3, step_001, unit attempt 1, ACCEPTED
  status, and the matching proof digest.
- Restated statement in current notation:
  Lemma~\ref{lem:step-001-supported-root-compactness} states that \(K_R\)
  is compact under Assumption~\ref{assump:shared-pfaffian-chain}.
  Under both allowed assumptions and nonempty \(K_R\),
  Lemma~\ref{lem:step-001-positive-available-pivot} states that
  \(F(\theta)\ne0\) throughout \(K_R\) and that a nonzero coordinate pivot
  is available pointwise. Under the same basis,
  Proposition~\ref{prop:step-001-fixed-family-pivot-bound} concludes
  \(\Gamma_{\rm piv}(b,F;R)<\infty\).
- Instantiated objects: \(N=2\), \(R=1\), \(\Theta=[-1,1]\),
  \(b=b_\delta\), \(F=F_\delta\), and \(0<\delta\le1\), all in the original
  setting coordinates.
- Assumption discharge:
  Assumption~\ref{assump:shared-pfaffian-chain} holds because the three
  displayed scalar functions are \(C^1\) polynomials for fixed
  \(\delta>0\). Assumption~\ref{assump:no-forced-root} holds because the
  first feature coordinate is identically one. Lemma
  \ref{lem:step-005-root-feasible-set} below proves the dependency's
  nonempty-feasible-set condition directly by showing \(K_1=\Theta\).
- Conclusion used: the dependency certifies the legal nonzero-pivot and
  fixed-family finite-conditioning interface. No numerical bound from its
  proof-local quantities \(B_0,B_1,\rho\) is used to obtain the exact value.
  No sketch-attempt-2 or older proof or review digest is used.

### Checked elementary facts

1. **One-dimensional quotient rule.** If \(g,h\) are \(C^1\) in the setting
   convention and \(h(\theta)\ne0\), then
   \[
   \left(\frac gh\right)'(\theta)
   =
   \frac{g'(\theta)h(\theta)-g(\theta)h'(\theta)}
        {h(\theta)^2}.
   \]
   It is applied only where the displayed denominator is nonzero. At
   \(\theta=0\), the second coordinate is zero, so its quotient is not
   differentiated; the setting's \(+\infty\) extension is used instead.
2. **Supremum sandwich.** If a real-valued function on a nonempty set is at
   most \(c\) everywhere and equals \(c\) at one point, then its supremum is
   \(c\). It is applied with \(c=1/\delta\) and the attaining point
   \(\theta=0\).

The local results used later have the following exact interfaces.

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-005-root-feasible-set} | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and the displayed admissible family, \(K_1=\Theta\) and coordinate one is a legal pivot everywhere. | Supplies the domain and pivot availability to the speed calculation and final supremum. |
| Lemma~\ref{lem:step-005-exact-pivot-speeds} | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and Lemma~\ref{lem:step-005-root-feasible-set}, the two extended speeds are exactly \(1/\delta\), \(\delta/\theta^2\) off zero, and \(+\infty\) at zero. | Supplies the pointwise upper bound and the value at zero. |
| Proposition~\ref{prop:step-005-exact-scale-certificate} | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and Lemmas~\ref{lem:step-005-root-feasible-set} and \ref{lem:step-005-exact-pivot-speeds}, the defining supremum equals \(1/\delta\). | Supplies the exact target-step conclusion. |

## Local Derivation

### unit_001: lemma

**Lemma (Exact root-feasible set and available pivot).**
\(\label{lem:step-005-root-feasible-set}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, fix
\[
\Theta=[-1,1],\qquad
b_\delta(\theta)=0,\qquad
F_\delta(\theta)=\left(1,\frac{\theta}{\delta}\right),\qquad
R=1,\qquad 0<\delta\le1.
\]
Then
\[
K_1=\Theta,
\]
and \(F_{\delta,1}(\theta)=1\ne0\) is an available pivot for every
\(\theta\in K_1\).

Proof / justification:
The setting definition, with \(R=1\), gives
\[
\begin{aligned}
K_1
&=
\left\{\theta\in\Theta:
 \lvert b_\delta(\theta)\rvert
 \le \lVert F_\delta(\theta)\rVert_1\right\}\\
&=
\left\{\theta\in\Theta:
 0\le
 \lvert 1\rvert+
 \left\lvert\frac{\theta}{\delta}\right\rvert\right\}\\
&=
\left\{\theta\in\Theta:
 0\le1+\frac{\lvert\theta\rvert}{\delta}\right\}.
\end{aligned}
\]
Because \(\delta>0\), the final inequality holds for every
\(\theta\in\Theta\). Hence \(\Theta\subseteq K_1\). The reverse inclusion
\(K_1\subseteq\Theta\) is part of the defining set comprehension, so
\(K_1=\Theta=[-1,1]\). In particular, \(K_1\) is nonempty and contains
\(\theta=0\) and both endpoints.

Moreover,
\[
F_{\delta,1}(\theta)=1
\]
at every point. Thus \(F_{\delta,1}\) never vanishes, \(U_1=\Theta\), and
coordinate one is a legal nonzero pivot everywhere. This directly realizes,
for the specialized family, the available-pivot conclusion of
Lemma~\ref{lem:step-001-positive-available-pivot}; it does not assume a new
margin or a globally prescribed pivot for general instances.

### unit_002: lemma

**Lemma (Exact extended pivot speeds).**
\(\label{lem:step-005-exact-pivot-speeds}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root} and
Lemma~\ref{lem:step-005-root-feasible-set}, for every
\(0<\delta\le1\),
\[
V_1(\theta)=\frac1\delta
\quad\text{for every }\theta\in\Theta,
\]
and
\[
V_2(\theta)=
\begin{cases}
\displaystyle\frac{\delta}{\theta^2},&\theta\ne0,\\
+\infty,&\theta=0.
\end{cases}
\]

Proof / justification:
Write the original feature coordinates as
\[
F_{\delta,1}(\theta)=1,
\qquad
F_{\delta,2}(\theta)=\frac{\theta}{\delta}.
\]
By Lemma~\ref{lem:step-005-root-feasible-set}, \(U_1=\Theta\). With
\(R=1\) and \(N=2\), the setting definition gives
\[
V_1(\theta)
=
\left\lvert
\left(\frac{b_\delta}{F_{\delta,1}}\right)'(\theta)
\right\rvert
+
\left\lvert
\left(\frac{F_{\delta,2}}{F_{\delta,1}}\right)'(\theta)
\right\rvert.
\]
The two quotient derivatives, with every numerator and denominator retained,
are
\[
\left(\frac{b_\delta}{F_{\delta,1}}\right)'(\theta)
=
\frac{0\cdot1-0\cdot0}{1^2}
=0
\]
and
\[
\left(\frac{F_{\delta,2}}{F_{\delta,1}}\right)'(\theta)
=
\frac{(1/\delta)\cdot1-(\theta/\delta)\cdot0}{1^2}
=
\frac1\delta.
\]
Since \(\delta>0\),
\[
V_1(\theta)
=
\lvert0\rvert+
\left\lvert\frac1\delta\right\rvert
=
\frac1\delta
\]
for every \(\theta\in\Theta\), including \(\theta=0\) and both endpoints.

Now suppose \(\theta\ne0\). Then
\(F_{\delta,2}(\theta)=\theta/\delta\ne0\), so \(\theta\in U_2\) and
\[
V_2(\theta)
=
\left\lvert
\left(\frac{b_\delta}{F_{\delta,2}}\right)'(\theta)
\right\rvert
+
\left\lvert
\left(\frac{F_{\delta,1}}{F_{\delta,2}}\right)'(\theta)
\right\rvert.
\]
Again applying the exact quotient rule,
\[
\left(\frac{b_\delta}{F_{\delta,2}}\right)'(\theta)
=
\frac{0\cdot(\theta/\delta)-0\cdot(1/\delta)}
     {(\theta/\delta)^2}
=0,
\]
whereas
\[
\begin{aligned}
\left(\frac{F_{\delta,1}}{F_{\delta,2}}\right)'(\theta)
&=
\frac{0\cdot(\theta/\delta)-1\cdot(1/\delta)}
     {(\theta/\delta)^2}\\
&=
-\frac{1/\delta}{\theta^2/\delta^2}
=
-\frac{\delta}{\theta^2}.
\end{aligned}
\]
Therefore
\[
V_2(\theta)
=
\lvert0\rvert+
\left\lvert-\frac{\delta}{\theta^2}\right\rvert
=
\frac{\delta}{\theta^2}
\qquad(\theta\ne0).
\]
At \(\theta=0\), \(F_{\delta,2}(0)=0\), so \(0\notin U_2\). The setting
extends \(V_2\) by \(+\infty\) off \(U_2\) for minimization. Consequently,
\[
V_2(0)=+\infty.
\]
No quotient with zero denominator has been differentiated. All endpoint
derivatives above are the derivatives in the setting's \(C^1\) convention.

### unit_003: proposition

**Proposition (Exact scale-stress pivot conditioning).**
\(\label{prop:step-005-exact-scale-certificate}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root} and
Lemmas~\ref{lem:step-005-root-feasible-set} and
\ref{lem:step-005-exact-pivot-speeds}, for every \(0<\delta\le1\),
\[
\Gamma_{\rm piv}(b_\delta,F_\delta;1)=\frac1\delta.
\]

Proof / justification:
For every \(\theta\in\Theta\),
Lemma~\ref{lem:step-005-exact-pivot-speeds} gives
\[
\min\{V_1(\theta),V_2(\theta)\}
\le V_1(\theta)
=\frac1\delta.
\]
At \(\theta=0\), the same lemma gives
\[
\min\{V_1(0),V_2(0)\}
=
\min\left\{\frac1\delta,+\infty\right\}
=
\frac1\delta.
\]
By Lemma~\ref{lem:step-005-root-feasible-set}, \(K_1=\Theta\) and
\(0\in K_1\). The defining supremum is therefore sandwiched exactly as
\[
\frac1\delta
=
\min\{V_1(0),V_2(0)\}
\le
\sup_{\theta\in K_1}\min\{V_1(\theta),V_2(\theta)\}
\le
\frac1\delta.
\]
Thus
\[
\sup_{\theta\in K_1}\min\{V_1(\theta),V_2(\theta)\}
=
\frac1\delta.
\]
Because \(K_1\ne\varnothing\), the nonempty branch of the setting definition
of \(\Gamma_{\rm piv}\) applies, and hence
\[
\Gamma_{\rm piv}(b_\delta,F_\delta;1)=\frac1\delta.
\]

For completeness about the setting's least-minimizer convention, at
\(\theta=0\) only pivot one has finite speed, so \(j_*(0)=1\). Away from
zero, the two speeds tie exactly when
\[
\frac1\delta=\frac{\delta}{\theta^2},
\]
equivalently \(\theta=\pm\delta\); these points lie in \(\Theta\) because
\(0<\delta\le1\), and the least-index rule again selects pivot one. This
tie rule does not change the pointwise minimum or the defining supremum.

## Target-Step Assembly

The accepted dependency
Lemma~\ref{lem:step-001-positive-available-pivot} and
Proposition~\ref{prop:step-001-fixed-family-pivot-bound} provide the legal
available-pivot and fixed-family finite-conditioning interface under the two
allowed assumptions. Lemma~\ref{lem:step-005-root-feasible-set} discharges
that interface concretely and more sharply for the displayed family by
proving
\[
K_1=\Theta=[-1,1]
\]
and identifying \(F_{\delta,1}=1\) as a nonzero pivot everywhere.

Lemma~\ref{lem:step-005-exact-pivot-speeds} then computes, in the exact
original feature coordinates and extended convention,
\[
V_1(\theta)=\frac1\delta,\qquad
V_2(\theta)=\frac{\delta}{\theta^2}\quad(\theta\ne0),\qquad
V_2(0)=+\infty.
\]
Proposition~\ref{prop:step-005-exact-scale-certificate} composes the global
upper bound from \(V_1\) with the matching value at \(0\in K_1\) and proves
the exact accepted sketch-row claim
\[
\boxed{\Gamma_{\rm piv}(b_\delta,F_\delta;1)=\frac1\delta}
\qquad(0<\delta\le1).
\]
The numerical coefficient is literally one. No law, event, probability
theorem, chart sweep, downstream specialization, or general-instance
conditioning claim is part of this assembly.

## Explicit Rate Audit

- Exposed variables: \(\delta\) and the exact value \(1/\delta\), over the
  full admissible range \(0<\delta\le1\).
- Hidden constants may depend on: None. There is no hidden constant.
- Hidden constants may not depend on: \(\delta\), the displayed family, or
  any Pfaffian-format descriptor. The multiplicative constant in
  \(1/\delta\) is exactly one.
- Fixed quantities: \(\Theta=[-1,1]\), \(N=2\), \(R=1\), \(q=M=0\), the
  coordinate order, and the displayed deterministic feature family
  \(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\).
- Probability mode: Deterministic static scope. There is no probability law,
  expectation, confidence parameter, conditioning event, or union bound.
- Horizon mode: Static evaluation on the fixed compact interval. There is no
  horizon, all-time statement, asymptotic statement, stopping rule, or
  limiting conversion.
- Norm mode: The setting's \(\ell_1\) feasibility test for \(K_1\), followed
  by the exact scalar coordinate-ratio variation mode defining \(V_j\) and
  \(\Gamma_{\rm piv}\).
- Admissibility conditions and auxiliary tolerances: Exactly
  \(0<\delta\le1\). There is no auxiliary tolerance, approximation scale, or
  conservative factor.
- Term absorption or simplification inequalities: No term is dropped,
  dominated by an unstated constant, or absorbed. The complete comparison is
  \[
  \min\{V_1(\theta),V_2(\theta)\}
  \le V_1(\theta)=\frac1\delta
  \quad(\theta\in\Theta),
  \]
  together with
  \[
  \min\{V_1(0),V_2(0)\}=\frac1\delta.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This is the complete R2
  bridge itself, exporting the literal \(1/\delta\) static conditioning
  certificate with zero residual and no additional quantitative output.
- Baseline-reduction check, if applicable: At the included endpoint
  \(\delta=1\), the formula reduces exactly to
  \(\Gamma_{\rm piv}(b_1,F_1;1)=1\), with no loss. The undefined
  \(\delta=0\) regime is not used as a baseline or limit.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects: the exposed scale \(\delta\), the fixed interval
  \(\Theta=[-1,1]\), \(b_\delta\), the two original coordinates
  \(F_{\delta,1},F_{\delta,2}\), \(R=1\), and the setting-defined
  \(K_1,U_j,V_j,\Gamma_{\rm piv}\). The only exported conclusion is the exact
  value \(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\).
- Proof-local helper objects: None. The proof uses the setting objects
  directly and introduces no tolerance, radius, threshold, event, transformed
  coordinate, surrogate feature, or auxiliary rate.
- Appendix-local helper objects: None.
- Constant and rate provenance: \(N=2\), \(R=1\), and the interval are fixed
  by the specialization. The range \(0<\delta\le1\) is the explicit
  admissibility condition. Lemma~\ref{lem:step-005-exact-pivot-speeds}
  derives the rate \(1/\delta\) from
  \((\theta/\delta)'=1/\delta\); Proposition
  \ref{prop:step-005-exact-scale-certificate} proves that the coefficient is
  exactly one. The value \(+\infty\) is the setting's extended-pivot
  convention, not a finite helper constant.
- Assumption provenance: The displayed polynomial family directly discharges
  Assumption~\ref{assump:shared-pfaffian-chain}; the constant first coordinate
  directly discharges Assumption~\ref{assump:no-forced-root}. The accepted
  dependency supplies a legal finite-pivot interface, while the three local
  units prove \(K_1=\Theta\), exact pivot availability, both speed identities,
  and the supremum equality. No generated-object condition is assumed.
- Dependency provenance: The only consumed dependency is the current
  sketch-attempt-3 step_001 proof/review pair identified in Step Identity and
  Cited Result Applications. Its review identity and matching proof digest
  were checked before use. No attempt-2 or older dependency artifact is
  current evidence.
- Coordinate fidelity: Every quotient uses the exact original ordered
  coordinates \(F_{\delta,1}=1\) and
  \(F_{\delta,2}=\theta/\delta\). No reparameterization, rescaling of
  \(\theta\), alternative norm, or surrogate conditioning functional is
  introduced.
- Boundary audit at \(\theta=0\):
  \(F_{\delta,2}(0)=0\), hence \(V_2(0)=+\infty\), while
  \(F_{\delta,1}(0)=1\) and \(V_1(0)=1/\delta\). Thus the minimum is exactly
  \(1/\delta\), and the least legal minimizer is pivot one.
- Boundary audit for \(\theta\ne0\): both pivots are available and the exact
  values are \(1/\delta\) and \(\delta/\theta^2\); no sign of \(\theta\)
  survives the absolute value.
- Endpoint audit: at \(\theta=\pm1\),
  \[
  V_1(\pm1)=\frac1\delta,\qquad V_2(\pm1)=\delta.
  \]
  Since \(0<\delta\le1\), \(\delta^2\le1\) and hence
  \(\delta\le1/\delta\). Thus the endpoint minimum is \(\delta\), with a tie
  exactly when \(\delta=1\).
- Audit at \(\delta=1\): for nonzero \(\theta\in[-1,1]\),
  \(V_1(\theta)=1\) and \(V_2(\theta)=1/\theta^2\ge1\); at zero the second
  speed is \(+\infty\). Hence the pointwise minimum is one on all of
  \(\Theta\), agreeing exactly with the proved formula.
- Tie audit: for \(0<\delta\le1\), the only finite ties occur at
  \(\theta=\pm\delta\), including both endpoints when \(\delta=1\). The
  setting's least-index convention selects pivot one. No partition or chart
  consequence is asserted.
- Excluded regime audit: \(\delta=0\) is outside the accepted admissibility
  range. Both \(F_{\delta,2}(\theta)=\theta/\delta\) and the claimed value
  \(1/\delta\) are undefined there, so no \(C^1\) family, limiting theorem,
  or equality at \(\delta=0\) is asserted.
- Scope audit: Deterministic static scope; there is no probability, confidence, horizon, tolerance, or limiting conversion.
  No same-step historical proof or review is used as mathematical evidence.
- Progress boundary: progress_type=material_partial is preserved. This exact
  fixed-family scale audit does not provide, claim, or imply polynomial
  general-instance control of \(\Gamma_{\rm piv}\) from
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or any other Pfaffian
  descriptor. That remains the explicit source gap.
