# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: On every affine root section prove
  \(\lvert F_0\rvert\leq R\sqrt N\|F\|\),
  \(\|\widetilde F\|\leq\sqrt{1+NR^2}\|F\|\), and normal velocity at most
  \((1+NR^2)\widehat\Lambda_{B,T}\).
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:parameter-regime`,
  `assump:anchored-derivative-closure`; derived matrix bound from `step_001`.
- Technical challenge: Control the deterministic offset only from the actual root equation and expose both
  \(\sqrt{1+NR^2}\) factors with no free amplitude bound.
- Intended proof tool or cited result: Root-section Cauchy--Schwarz, closure identity, Euclidean operator bound.
- Output target: Affine normal-velocity certificate.
- Rate objective: R2: exact \((1+NR^2)\widehat\Lambda\) dependence.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the current accepted
  `proof_sketch_review.md`.

Equivalently, the exact pointwise output to be proved is that, for every \(\theta\in\Theta\) and every
\(a\in H_\theta\cap[-R,R]^N\),

\[
\lvert F_0(\theta)\rvert\leq R\sqrt N\,\|F(\theta)\|_2,
\qquad
\|\widetilde F(\theta)\|_2
\leq\sqrt{1+NR^2}\,\|F(\theta)\|_2,
\]

and

\[
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}
{\|F(\theta)\|_2}
\leq(1+NR^2)\widehat\Lambda_{B,T}.
\]

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(N\geq1\), \(R>0\), and \(\Theta\) is a nondegenerate compact interval.
    The quantities \(N,R,B\), and \(\widehat\Lambda_{B,T}\) are finite deterministic instance data. This
    assumption also supplies the cube \([-R,R]^N\) appearing in the target domain.
  - `assump:anchored-derivative-closure`: for a fixed \(j_*\in\{1,\ldots,N\}\),
    \(F_{j_*}\equiv1\), and
    \(\widetilde F'=B\widetilde F\) on the open interval \(U\supseteq\Theta\). The anchor gives
    \(\|F(\theta)\|_2\geq1\), so the target denominator is nonzero.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` matrix/operator certificate gives, for every \(\theta\in\Theta\),
    \[
    \|B(\theta)\|_{\mathrm{op}}
    \leq\|B(\theta)\|_{\mathrm F}
    \leq\widehat\Lambda_{B,T}.
    \]
    This is a static derived certificate, not a generated trajectory condition.
- Local conditional hypotheses: None. The restrictions \(\theta\in\Theta\) and
  \(a\in H_\theta\cap[-R,R]^N\) are the universally quantified target domain, not additional assumptions.
- Accepted dependency artifacts:
  - `perspective_2/idea_1/proof_steps/step_001/proof.md`, SHA-256
    `d55b8e0455d2b2d38b3d72339557df4b1366b5e2cd81cc145fd537dca1e75c11`.
  - `perspective_2/idea_1/proof_steps/step_001/review.md`, SHA-256
    `dd04491bf12d076e4482faa9dcfb484d671d601a35cf64405f9d2afa4e535899`, with status `ACCEPTED`.

No amplitude bound on \(F_0\), law assumption, projective-speed assumption, swept-area estimate, section-volume
estimate, transversality condition, or proof-step result beyond the accepted `step_001` matrix certificate is
allowed or used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:parameter-regime}, if \(\theta\in\Theta\) and \(a\in H_\theta\cap[-R,R]^N\), then \(\lvert F_0(\theta)\rvert\leq R\sqrt N\|F(\theta)\|_2\), \(\|\widetilde F(\theta)\|_2\leq\sqrt{1+NR^2}\|F(\theta)\|_2\), and \(\|(1,a)\|_2\leq\sqrt{1+NR^2}\). | Derives the affine-amplitude control from the actual root equation and exposes both Euclidean factors used in the velocity bound. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure}, the accepted dependency Lemma~\ref{lem:step-001-height}, and Lemma~\ref{lem:step-006-root-amplitude}, if \(\theta\in\Theta\) and \(a\in H_\theta\cap[-R,R]^N\), then \(F_0'(\theta)+\langle a,F'(\theta)\rangle=\langle(1,a),B(\theta)\widetilde F(\theta)\rangle\) and the target normal velocity is at most \((1+NR^2)\widehat\Lambda_{B,T}\). | Combines the exact closure identity with the accepted matrix certificate and multiplies the two literal square-root factors. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure}, the accepted dependency Lemma~\ref{lem:step-001-height}, Lemma~\ref{lem:step-006-root-amplitude}, and Proposition~\ref{prop:step-006-affine-velocity}, the same conclusions hold for empty root sections, \(N=1\), \(F_0(\theta)=0\) (in particular \(F_0\equiv0\)), and \(a=0\); if \(\widehat\Lambda_{B,T}=0\), then \(B=0\) and \(\widetilde F'=0\) on \(\Theta\), so the velocity numerator is exactly zero. | Discharges every required null and boundary regime and explains why the zero certificate gives a sound zero velocity bound. |

Atomic step = no. Root-section amplitude transfer, derivative-closure velocity control, and the zero-certificate
consistency check are distinct auditable subclaims.

## Cited Result Applications

No external paper result is used. The accepted dependency and the elementary facts used below are restated in
the current notation.

1. **Accepted dependency: literal coefficient-height matrix certificate
   (Lemma~\ref{lem:step-001-height}).** Under
   Assumptions~\ref{assump:parameter-regime} and
   \ref{assump:anchored-derivative-closure}, the accepted `step_001` proof establishes
   \[
   \|B(\theta)\|_{\mathrm{op}}
   \leq\|B(\theta)\|_{\mathrm F}
   \leq\widehat\Lambda_{B,T}
   \qquad(\theta\in\Theta).
   \]
   The instantiated object is the actual supplied matrix \(B(\theta)\) in the setting's \(\theta\)-coordinate,
   with Euclidean operator and Frobenius norms. Its primitive assumptions are exactly among the two assumptions
   allowed above, and the matching dependency review is `ACCEPTED`. Proposition~\ref{prop:step-006-affine-velocity}
   uses only the pointwise operator bound. Proposition~\ref{prop:step-006-boundary} uses its zero-height
   specialization.

2. **Finite-dimensional Euclidean Cauchy--Schwarz.** For real vectors \(x,y\) of the same finite dimension,
   \[
   |\langle x,y\rangle|\leq\|x\|_2\|y\|_2.
   \]
   Assumption~\ref{assump:parameter-regime} supplies finite \(N\). The result is applied first to
   \(x=a,y=F(\theta)\), and then to \(x=(1,a),y=B(\theta)\widetilde F(\theta)\). The definition of the induced
   Euclidean operator norm supplies
   \(\|B(\theta)\widetilde F(\theta)\|_2
   \leq\|B(\theta)\|_{\mathrm{op}}\|\widetilde F(\theta)\|_2\).

3. **Zero-derivative criterion on an interval.** If a differentiable finite-dimensional real curve has zero
   derivative at every point of an interval, it is constant there, coordinate by coordinate. In the
   zero-certificate case, the accepted matrix bound gives \(B(\theta)=0\) on \(\Theta\), and
   Assumption~\ref{assump:anchored-derivative-closure} then gives \(\widetilde F'(\theta)=0\). The criterion is
   used only in Proposition~\ref{prop:step-006-boundary} to note that the root hyperplane is static; the target
   velocity conclusion already follows directly from \(\widetilde F'=0\).

4. **Lemma~\ref{lem:step-006-root-amplitude} (Root-section amplitude and norm control).** Under the target-domain
   condition \(a\in H_\theta\cap[-R,R]^N\), it gives the root-derived bound on \(F_0\), the augmented-feature
   norm bound, and the augmented-coefficient norm bound. Proposition~\ref{prop:step-006-affine-velocity} uses
   the latter two conclusions, and Proposition~\ref{prop:step-006-boundary} audits their special cases.

5. **Proposition~\ref{prop:step-006-affine-velocity} (Affine normal velocity from derivative closure).** Under
   the two allowed primitive assumptions, the accepted matrix certificate, and
   Lemma~\ref{lem:step-006-root-amplitude}, it gives the exact numerator identity and the pointwise velocity cap.
   Proposition~\ref{prop:step-006-boundary} checks that its conclusion remains literal in every required
   degenerate regime.

## Local Derivation

### unit_001: lemma

**Lemma (Root-section amplitude and norm control).**
\(\label{lem:step-006-root-amplitude}\)

Under Assumption~\ref{assump:parameter-regime}, if \(\theta\in\Theta\) and
\(a\in H_\theta\cap[-R,R]^N\), then

\[
\lvert F_0(\theta)\rvert\leq R\sqrt N\,\|F(\theta)\|_2,
\]

\[
\|\widetilde F(\theta)\|_2
\leq\sqrt{1+NR^2}\,\|F(\theta)\|_2,
\]

and

\[
\|(1,a)\|_2\leq\sqrt{1+NR^2}.
\]

**Proof / justification.** Fix such \(\theta\) and \(a\). Membership in the actual affine root section means,
by the setting definition of \(H_\theta\),

\[
F_0(\theta)+\langle a,F(\theta)\rangle=0.
\]

Thus the deterministic offset is controlled only at this root point, through the exact equality

\[
\lvert F_0(\theta)\rvert=\lvert\langle a,F(\theta)\rangle\rvert.
\]

Because \(a\in[-R,R]^N\),

\[
\|a\|_2^2=\sum_{i=1}^N a_i^2\leq\sum_{i=1}^N R^2=NR^2,
\qquad
\|a\|_2\leq R\sqrt N.
\]

Cauchy--Schwarz now gives the first target inequality without any global bound on \(F_0\):

\[
\lvert F_0(\theta)\rvert
=\lvert\langle a,F(\theta)\rangle\rvert
\leq\|a\|_2\|F(\theta)\|_2
\leq R\sqrt N\,\|F(\theta)\|_2.
\]

Squaring this derived root-section bound inside the setting-defined augmented norm gives

\[
\begin{aligned}
\|\widetilde F(\theta)\|_2^2
&=|F_0(\theta)|^2+\|F(\theta)\|_2^2\\
&\leq NR^2\|F(\theta)\|_2^2+\|F(\theta)\|_2^2\\
&=(1+NR^2)\|F(\theta)\|_2^2.
\end{aligned}
\]

Both sides are nonnegative, so taking square roots yields

\[
\|\widetilde F(\theta)\|_2
\leq\sqrt{1+NR^2}\,\|F(\theta)\|_2.
\]

Independently, the same cube calculation gives the second square-root factor:

\[
\|(1,a)\|_2^2=1+\|a\|_2^2\leq1+NR^2,
\qquad
\|(1,a)\|_2\leq\sqrt{1+NR^2}.
\]

This proves all three conclusions. \(\square\)

### unit_002: proposition

**Proposition (Affine normal velocity from derivative closure).**
\(\label{prop:step-006-affine-velocity}\)

Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-derivative-closure}, the accepted dependency
Lemma~\ref{lem:step-001-height}, and Lemma~\ref{lem:step-006-root-amplitude}, if
\(\theta\in\Theta\) and \(a\in H_\theta\cap[-R,R]^N\), then

\[
F_0'(\theta)+\langle a,F'(\theta)\rangle
=\langle(1,a),B(\theta)\widetilde F(\theta)\rangle
\]

and

\[
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}
{\|F(\theta)\|_2}
\leq(1+NR^2)\widehat\Lambda_{B,T}.
\]

**Proof / justification.** The primitive anchor gives
\(F_{j_*}(\theta)=1\), with \(j_*\in\{1,\ldots,N\}\). Hence

\[
\|F(\theta)\|_2\geq|F_{j_*}(\theta)|=1,
\]

so division by \(\|F(\theta)\|_2\) is valid. The exact closure identity is the vector identity

\[
\widetilde F'(\theta)
=(F_0'(\theta),F'(\theta))
=B(\theta)\widetilde F(\theta).
\]

Taking its Euclidean inner product with the fixed coefficient vector \((1,a)\) gives the exact equality

\[
\begin{aligned}
F_0'(\theta)+\langle a,F'(\theta)\rangle
&=\langle(1,a),\widetilde F'(\theta)\rangle\\
&=\langle(1,a),B(\theta)\widetilde F(\theta)\rangle.
\end{aligned}
\]

This is a pointwise componentwise use of derivative closure. The vector \(a\) is not being differentiated, so
no trajectory term involving \(a'\) is introduced or needed.

Cauchy--Schwarz, the definition of the induced operator norm, and the accepted dependency certificate yield

\[
\begin{aligned}
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}
{\|F(\theta)\|_2}
&=\frac{|\langle(1,a),B(\theta)\widetilde F(\theta)\rangle|}
{\|F(\theta)\|_2}\\
&\leq
\frac{\|(1,a)\|_2\,\|B(\theta)\|_{\mathrm{op}}\,
\|\widetilde F(\theta)\|_2}{\|F(\theta)\|_2}\\
&\leq
\sqrt{1+NR^2}\;\widehat\Lambda_{B,T}\;
\frac{\sqrt{1+NR^2}\,\|F(\theta)\|_2}{\|F(\theta)\|_2}\\
&=\bigl(\sqrt{1+NR^2}\bigr)
\bigl(\sqrt{1+NR^2}\bigr)\widehat\Lambda_{B,T}\\
&=(1+NR^2)\widehat\Lambda_{B,T}.
\end{aligned}
\]

Both \(\sqrt{1+NR^2}\) factors are displayed at the line where they enter, and their product is the literal
factor \(1+NR^2\). No constant or term is absorbed. \(\square\)

### unit_003: proposition

**Proposition (Boundary and zero-certificate consistency).**
\(\label{prop:step-006-boundary}\)

Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-derivative-closure}, the accepted dependency
Lemma~\ref{lem:step-001-height}, Lemma~\ref{lem:step-006-root-amplitude}, and
Proposition~\ref{prop:step-006-affine-velocity}, the conclusions of those two local results remain valid for
empty sections, \(N=1\), \(F_0(\theta)=0\) (including the specialization \(F_0\equiv0\)), and \(a=0\).
Moreover, if \(\widehat\Lambda_{B,T}=0\), then

\[
B(\theta)=0,
\qquad
\widetilde F'(\theta)=0
\qquad(\theta\in\Theta),
\]

and hence every defined root-section normal velocity in the target is exactly zero.

**Proof / justification.** If \(H_\theta\cap[-R,R]^N=\varnothing\), there is no \(a\) in the quantified
domain. All three pointwise assertions are therefore vacuously true, and no denominator or integrand is
evaluated on the empty section.

If \(N=1\), the cube calculation used in Lemma~\ref{lem:step-006-root-amplitude} reads simply
\(|a|\leq R\). Thus the two displayed factors become \(\sqrt{1+R^2}\), whose literal product is
\(1+R^2\); every line of Proposition~\ref{prop:step-006-affine-velocity} remains valid.

If \(F_0(\theta)=0\), the first target inequality is \(0\leq R\sqrt N\|F(\theta)\|_2\), and in fact

\[
\|\widetilde F(\theta)\|_2=\|F(\theta)\|_2.
\]

The exact closure identity in Proposition~\ref{prop:step-006-affine-velocity} is unchanged. This covers both a
pointwise zero of \(F_0\) and the global homogeneous specialization \(F_0\equiv0\). If \(a=0\) belongs to the
root section, the actual root equation forces \(F_0(\theta)=0\), while
\(\|(1,a)\|_2=1\). Again the exact identity and the stated upper bound remain valid; no claim that
\(F_0'(\theta)\) vanishes is needed.

Finally suppose \(\widehat\Lambda_{B,T}=0\). The accepted pointwise matrix certificate gives

\[
0\leq\|B(\theta)\|_{\mathrm{op}}
\leq\widehat\Lambda_{B,T}=0,
\]

so \(B(\theta)=0\) for every \(\theta\in\Theta\). Exact derivative closure then gives

\[
\widetilde F'(\theta)=B(\theta)\widetilde F(\theta)=0
\qquad(\theta\in\Theta).
\]

Thus \(\widetilde F\) is constant on the interval \(\Theta\), and the affine hyperplane \(H_\theta\) is static
there. More directly, at every \(a\in H_\theta\cap[-R,R]^N\),

\[
F_0'(\theta)+\langle a,F'(\theta)\rangle=0.
\]

The left-hand side of the velocity inequality is therefore zero, exactly matching
\((1+NR^2)\widehat\Lambda_{B,T}=0\). A zero certificate does not assert that the root section is empty; it
asserts, correctly, that any such section has zero normal velocity. This is the required sound static
interpretation. \(\square\)

## Target-Step Assembly

Fix \(\theta\in\Theta\). If \(H_\theta\cap[-R,R]^N\) is empty, the target's universal root-section statement
holds by Proposition~\ref{prop:step-006-boundary}. Otherwise fix an arbitrary
\(a\in H_\theta\cap[-R,R]^N\). Lemma~\ref{lem:step-006-root-amplitude} applies the actual root equality and cube
membership to give

\[
\lvert F_0(\theta)\rvert\leq R\sqrt N\,\|F(\theta)\|_2,
\qquad
\|\widetilde F(\theta)\|_2
\leq\sqrt{1+NR^2}\,\|F(\theta)\|_2,
\]

as well as \(\|(1,a)\|_2\leq\sqrt{1+NR^2}\). The accepted dependency
Lemma~\ref{lem:step-001-height} controls the actual closure matrix, and
Proposition~\ref{prop:step-006-affine-velocity} combines these inputs through the exact equality

\[
F_0'(\theta)+\langle a,F'(\theta)\rangle
=\langle(1,a),B(\theta)\widetilde F(\theta)\rangle
\]

to obtain

\[
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}
{\|F(\theta)\|_2}
\leq(1+NR^2)\widehat\Lambda_{B,T}.
\]

Proposition~\ref{prop:step-006-boundary} verifies the empty-section, \(N=1\), \(F_0=0\), \(a=0\), and
\(\widehat\Lambda_{B,T}=0\) cases without changing any factor. Since \(\theta\) and \(a\) were arbitrary,
these named results prove the exact accepted `step_006` row on every affine root section. The exported interface
is only this deterministic pointwise affine normal-velocity certificate; no section integration, probability
bound, or theorem-level closure is asserted here.

## Explicit Rate Audit

- Exposed variables: \(N\), \(R\), and the exact static coefficient height
  \(\widehat\Lambda_{B,T}\), with pointwise variables \(\theta\in\Theta\) and
  \(a\in H_\theta\cap[-R,R]^N\). The output coefficient is literally
  \((1+NR^2)\widehat\Lambda_{B,T}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: Any instance parameter, \(\theta\), \(a\), root-section offset,
  matrix coefficient, law, interval, pivot, or Pfaffian presentation parameter. No dependence on \(q,M,\Delta\)
  is introduced after the supplied certificate is fixed.
- Fixed quantities: The deterministic instance data \(\Theta,N,R,B,F_0,F\) and the coefficient list defining
  \(\widehat\Lambda_{B,T}\). No law or interval is selected in this step.
- Probability mode: Deterministic; no probability, event, density, or confidence parameter occurs.
- Horizon mode: Pointwise for every \(\theta\in\Theta\) and every coefficient point on its cube-truncated root
  section. The same static constant is simultaneous over these points; there is no integration, asymptotic
  limit, iteration, stopping time, or all-time upgrade.
- Norm mode: Euclidean vector norm and its induced matrix operator norm. The accepted dependency also records
  the Euclidean Frobenius comparison.
- Admissibility conditions and auxiliary tolerances: Exactly \(N\geq1\), \(R>0\), the two named primitive
  assumptions, the accepted `step_001` matrix certificate, and the target-domain membership
  \(a\in H_\theta\cap[-R,R]^N\). There is no auxiliary tolerance, amplitude cap, norm margin beyond the literal
  anchor, or transversality condition.
- Term absorption or simplification inequalities: No term is dropped or absorbed. The complete chain is
  \[
  |F_0|=|\langle a,F\rangle|
  \leq R\sqrt N\|F\|_2,
  \quad
  \|\widetilde F\|_2\leq\sqrt{1+NR^2}\|F\|_2,
  \quad
  \|(1,a)\|_2\leq\sqrt{1+NR^2},
  \]
  followed by
  \[
  \frac{|\langle(1,a),B\widetilde F\rangle|}{\|F\|_2}
  \leq
  \bigl(\sqrt{1+NR^2}\bigr)
  \bigl(\sqrt{1+NR^2}\bigr)\widehat\Lambda_{B,T}
  =(1+NR^2)\widehat\Lambda_{B,T}.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the exact pointwise R2 velocity factor
  consumed downstream. It performs no section-area integration, density multiplication, law supremum, interval
  supremum, or public-rate simplification.
- Baseline-reduction check: When \(F_0=0\), the root-derived amplitude term vanishes and
  \(\|\widetilde F\|_2=\|F\|_2\); when \(a=0\), the augmented coefficient factor is one; when \(N=1\), the
  literal product is \(1+R^2\); and when \(\widehat\Lambda_{B,T}=0\), both the actual velocity and its bound are
  exactly zero. No conservative remainder or hidden factor is introduced in any specialization.

## Blockers

None.

## Notation And Assumption Notes

- `public-facing`: No new symbol is introduced. The setting-defined objects \(H_\theta\), \(\widetilde F\),
  \(B\), and \(\widehat\Lambda_{B,T}\) retain their original meanings. The only exported interface is the three
  displayed root-section inequalities in `## Target-Step Assembly`.
- `proof-local`: \((1,a)\in\mathbb R^{N+1}\) is the direct augmentation of a root-section point by the
  deterministic coefficient of \(F_0\). It is not a new random vector, parameter, or theorem-facing helper;
  it is used only to write the exact inner-product identity.
- `appendix-local`: Lemma~\ref{lem:step-006-root-amplitude},
  Proposition~\ref{prop:step-006-affine-velocity}, and
  Proposition~\ref{prop:step-006-boundary} package the derivation for later paper assembly. Their labels are
  proof references, while `unit_001`--`unit_003` are audit handles only.
- Constant provenance: \(R\) and \(N\) are primitive setting quantities, and
  \(\widehat\Lambda_{B,T}\) is setting-defined and bounded against the actual matrix by the accepted dependency.
  The factor \(1+NR^2\) is proved as the exact product of two displayed square roots. No new constant, radius,
  threshold, margin, admissibility parameter, or finite-tube quantity is introduced.
- Assumption provenance: Cube membership and root membership are target-domain conditions on a fixed pair
  \((\theta,a)\), not generated events or theorem-facing assumptions. The amplitude estimate is proved in
  Lemma~\ref{lem:step-006-root-amplitude}; matrix boundedness is supplied by the accepted dependency; denominator
  nonvanishing and derivative closure are primitive under
  Assumption~\ref{assump:anchored-derivative-closure}; and all boundary behavior is proved in
  Proposition~\ref{prop:step-006-boundary}. There is no local conditional hypothesis, law condition, stability
  condition, recurrence, or hidden boundedness premise.
- Static-mode note: Every equality and inequality is deterministic and pointwise. The proof neither differentiates
  a path \(a(\theta)\) nor integrates over a section or interval. This is exactly the mode exported to the next
  consumer.
