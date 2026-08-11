# Proof Step

## Step Identity

- Perspective / idea: `perspective_2/idea_1`
- Sketch attempt: 2
- Step ID: `step_006`
- Unit attempt: 1
- Idea SHA-256: `5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596`
- Setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Accepted sketch SHA-256: `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Accepted sketch-review SHA-256: `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Controller-open proof-tracker SHA-256: `527de008b76d2360ab66bb04234add582c1c3c02cb64432b3783cedb262b1c2f`
- Accepted dependency proof SHA-256: `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`
- Accepted dependency review SHA-256: `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`
- Optional global diagnostic pair: not consulted and not used as proof evidence. Their protected hashes were checked as
  `bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc` and
  `c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146`.

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: On every affine root section prove
  \(\lvert F_0\rvert\leq R\sqrt N\lVert F\rVert\),
  \(\lVert\widetilde F\rVert\leq\sqrt{1+NR^2}\lVert F\rVert\), and normal velocity at most
  \((1+NR^2)\widehat\Lambda_{B,T}\).
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:parameter-regime`,
  `assump:anchored-derivative-closure`; derived matrix bound from `step_001`.
- Technical challenge: Control the deterministic offset only from the actual root equation and expose both
  \(\sqrt{1+NR^2}\) factors with no free amplitude bound.
- Intended proof tool or cited result: Root-section Cauchy--Schwarz, closure identity, Euclidean operator bound.
- Output target: Affine normal-velocity certificate.
- Rate objective: R2: exact \((1+NR^2)\widehat\Lambda\) dependence.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the accepted sketch review identified
  above.

Equivalently, the pointwise target is the following statement in the setting's original objects. For every
\(\theta\in\Theta\) and every
\(a\in H_\theta\cap[-R,R]^N\), prove

\[
\lvert F_0(\theta)\rvert
=\lvert\langle a,F(\theta)\rangle\rvert
\leq R\sqrt N\,\lVert F(\theta)\rVert_2,
\]

\[
\lVert\widetilde F(\theta)\rVert_2
\leq\sqrt{1+NR^2}\,\lVert F(\theta)\rVert_2,
\]

and

\[
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\leq(1+NR^2)\widehat\Lambda_{B,T}.
\]

The denominator is legal because Assumption~\ref{assump:anchored-derivative-closure} gives
\(F_{j_*}(\theta)=1\), hence \(\lVert F(\theta)\rVert_2\geq1\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: Assumption~\ref{assump:parameter-regime} supplies \(N\geq1\), \(R>0\), the
    compact interval \(\Theta\), the cube \([-R,R]^N\), and the setting-defined affine sections
    \(H_\theta\). Only these static deterministic clauses are used here.
  - `assump:anchored-derivative-closure`:
    Assumption~\ref{assump:anchored-derivative-closure} supplies
    \(F_{j_*}\equiv1\), the exact identity
    \(\widetilde F'=B\widetilde F\) on the open interval \(U\supseteq\Theta\), and therefore
    \(\lVert F(\theta)\rVert_2\geq1\) for every \(\theta\in\Theta\).
- Derived invariants supplied by accepted dependencies:
  - The sole accepted dependency is the proof/review pair
    `proof_steps/step_001/proof.md` / `proof_steps/step_001/review.md` with the hashes recorded in
    `## Step Identity`. Its review has identity `(Sketch attempt, Step ID, Unit attempt) = (2, step_001, 2)`,
    reviews the stated proof hash, and has status `ACCEPTED`.
  - The only dependency conclusion used is the exact matrix certificate from
    Lemma~\ref{lem:step-001-height}:
    \[
    \sup_{\vartheta\in\Theta}\lVert B(\vartheta)\rVert_{\mathrm{op}}
    \leq\widehat\Lambda_{B,T}.
    \]
    No anchor, projective, homogeneous-block, boundary, coefficientwise, or probability conclusion from that
    dependency is used.
- Local conditional hypotheses:
  - A point \(\theta\in\Theta\) and a coefficient vector
    \(a\in H_\theta\cap[-R,R]^N\) are fixed only inside the pointwise argument. This is exactly the quantified
    domain of the target, not an added theorem-facing assumption or a generated invariant.

No deterministic-offset amplitude bound, transversality, root simplicity, pivot margin, section measure,
density condition, probability event, or distributional property is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure}, if \(\theta\in\Theta\) and \(a\in H_\theta\cap[-R,R]^N\), then \(\lvert F_0(\theta)\rvert=\lvert\langle a,F(\theta)\rangle\rvert\leq R\sqrt N\lVert F(\theta)\rVert_2\), \(\lVert\widetilde F(\theta)\rVert_2\leq\sqrt{1+NR^2}\lVert F(\theta)\rVert_2\), and \(\lVert(1,a)\rVert_2\leq\sqrt{1+NR^2}\). | Derives the root-offset and both Euclidean square-root controls directly on the actual section. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure}, Lemma~\ref{lem:step-006-s2-root-coupling}, and the accepted dependency certificate in Lemma~\ref{lem:step-001-height}, if \(\theta\in\Theta\) and \(a\in H_\theta\cap[-R,R]^N\), then \(F_0'(\theta)+\langle a,F'(\theta)\rangle=\langle(1,a),B(\theta)\widetilde F(\theta)\rangle\) and the normalized absolute value is at most \((1+NR^2)\widehat\Lambda_{B,T}\), with the two factors \(\sqrt{1+NR^2}\) displayed before multiplication. | Proves the exact affine normal-velocity certificate consumed downstream. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure}, Lemma~\ref{lem:step-006-s2-root-coupling}, Proposition~\ref{prop:step-006-s2-affine-velocity}, and the accepted dependency certificate in Lemma~\ref{lem:step-001-height}, the same pointwise conclusions remain valid for \(N=1\), \(F_0\equiv0\), \(a=0\), empty root sections, endpoints of \(\Theta\), every allowed \(R>0\), and \(\widehat\Lambda_{B,T}=0\); in the last case \(B=0\) and \(\widetilde F'=0\) on \(\Theta\), so the velocity numerator is exactly zero. | Discharges the requested boundary and zero-certificate audits without adding a law-level conclusion. |

Atomic step = no. The root-section amplitude coupling, the closure-to-velocity calculation, and the requested
degenerate/boundary audit are distinct proof obligations and are separated into exactly three local units.

## Cited Result Applications

No external paper result is used. The only accepted dependency conclusion and the elementary Euclidean facts
used in the derivation are restated below in the current notation. Local results used later are also restated so
that every mathematical reference has a theorem-style label.

| Result used later | Restated statement in current notation | Instantiated objects | Required assumptions and discharge | Conclusion used |
| ----------------- | ---------------------------------------- | -------------------- | ---------------------------------- | --------------- |
| Euclidean Cauchy--Schwarz and induced operator-norm inequalities | For finite-dimensional real vectors \(x,y\), \(\lvert\langle x,y\rangle\rvert\leq\lVert x\rVert_2\lVert y\rVert_2\); for a real matrix \(M\), \(\lVert Mx\rVert_2\leq\lVert M\rVert_{\mathrm{op}}\lVert x\rVert_2\). | First \(a,F(\theta)\), then \((1,a),B(\theta)\widetilde F(\theta)\), and finally \(B(\theta),\widetilde F(\theta)\). | Assumption~\ref{assump:parameter-regime} gives finite \(N\), and the setting defines all objects over the real Euclidean spaces of dimensions \(N\) and \(N+1\). The operator inequality is the definition of the induced Euclidean operator norm. | Lemma~\ref{lem:step-006-s2-root-coupling} and Proposition~\ref{prop:step-006-s2-affine-velocity}. |
| Lemma~\ref{lem:step-001-height} (accepted dependency: Literal coefficient-height matrix certificate) | \(\sup_{\vartheta\in\Theta}\lVert B(\vartheta)\rVert_{\mathrm{op}}\leq\widehat\Lambda_{B,T}\). | The identical setting matrix \(B\), compact interval \(\Theta\), parameter coordinate, induced Euclidean operator norm, and certificate \(\widehat\Lambda_{B,T}\). | The dependency proof hash is `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`; its matching review hash is `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`, and that review is `ACCEPTED` for sketch attempt 2 and the reviewed proof hash. | The pointwise consequence \(\lVert B(\theta)\rVert_{\mathrm{op}}\leq\widehat\Lambda_{B,T}\) for the fixed \(\theta\in\Theta\). No other dependency conclusion is used. |
| Lemma~\ref{lem:step-006-s2-root-coupling} (Root-section Euclidean coupling) | On the actual root section and coefficient cube, \(\lvert F_0\rvert=\lvert\langle a,F\rangle\rvert\leq R\sqrt N\lVert F\rVert_2\), \(\lVert\widetilde F\rVert_2\leq\sqrt{1+NR^2}\lVert F\rVert_2\), and \(\lVert(1,a)\rVert_2\leq\sqrt{1+NR^2}\). | The same fixed \(\theta,a,F_0,F,\widetilde F,N,R\) used by the target integrand. | Its statement assumes exactly the two row assumptions and the target's local membership \(a\in H_\theta\cap[-R,R]^N\); its proof uses only the definition of \(H_\theta\), cube membership, and Euclidean Cauchy--Schwarz. | Proposition~\ref{prop:step-006-s2-affine-velocity}, the boundary audit, and target-step assembly. |
| Proposition~\ref{prop:step-006-s2-affine-velocity} (Exact affine root-section velocity) | On the same root-section point, the exact closure identity gives \(F_0'+\langle a,F'\rangle=\langle(1,a),B\widetilde F\rangle\), and its normalized absolute value is at most \((1+NR^2)\widehat\Lambda_{B,T}\). | The original \(a,\theta,F_0,F,B,\widetilde F\), Euclidean norm, and affine normal-velocity numerator. | Its statement lists the two primitive assumptions, Lemma~\ref{lem:step-006-s2-root-coupling}, and the sole accepted dependency conclusion. The anchor discharges the denominator. | Proposition~\ref{prop:step-006-s2-boundary} and target-step assembly. |
| Proposition~\ref{prop:step-006-s2-boundary} (Boundary and zero-certificate consistency) | The root-section and velocity conclusions survive all requested static, empty-section, endpoint, and zero-certificate regimes; when \(\widehat\Lambda_{B,T}=0\), closure makes the numerator zero on \(\Theta\). | The same target objects, without a surrogate section, curve, residual, event, or law. | Its statement lists both primitive assumptions, both preceding local results, and the accepted matrix certificate; each case is checked directly. | Target-step assembly and explicit-rate audit. |

## Local Derivation

### unit_001: lemma

**Lemma (Root-section Euclidean coupling).**
\(\label{lem:step-006-s2-root-coupling}\)

Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-derivative-closure}, if \(\theta\in\Theta\) and
\(a\in H_\theta\cap[-R,R]^N\), then

\[
\lvert F_0(\theta)\rvert
=\lvert\langle a,F(\theta)\rangle\rvert
\leq R\sqrt N\,\lVert F(\theta)\rVert_2,
\tag{1}
\]

\[
\lVert\widetilde F(\theta)\rVert_2
\leq\sqrt{1+NR^2}\,\lVert F(\theta)\rVert_2,
\tag{2}
\]

and

\[
\lVert(1,a)\rVert_2\leq\sqrt{1+NR^2}.
\tag{3}
\]

**Proof / justification.** Membership in the actual affine root section means, by the setting definition of
\(H_\theta\),

\[
F_0(\theta)+\langle a,F(\theta)\rangle=0.
\]

Thus, pointwise for this identical \(a\) and \(\theta\),

\[
F_0(\theta)=-\langle a,F(\theta)\rangle,
\qquad
\lvert F_0(\theta)\rvert=\lvert\langle a,F(\theta)\rangle\rvert.
\tag{4}
\]

No bound on \(F_0\) away from the root section has been introduced. Cube membership gives, coordinate by
coordinate, \(\lvert a_i\rvert\leq R\), and hence

\[
\lVert a\rVert_2^2=\sum_{i=1}^N a_i^2\leq NR^2,
\qquad
\lVert a\rVert_2\leq R\sqrt N.
\tag{5}
\]

Applying Euclidean Cauchy--Schwarz to the right-hand side of (4) and then using (5) proves (1):

\[
\lvert F_0(\theta)\rvert
=\lvert\langle a,F(\theta)\rangle\rvert
\leq\lVert a\rVert_2\lVert F(\theta)\rVert_2
\leq R\sqrt N\,\lVert F(\theta)\rVert_2.
\]

Squaring this derived bound, and using the setting's actual augmented feature vector rather than a surrogate,
gives

\[
\begin{aligned}
\lVert\widetilde F(\theta)\rVert_2^2
&=\lvert F_0(\theta)\rvert^2+\lVert F(\theta)\rVert_2^2\\
&\leq NR^2\lVert F(\theta)\rVert_2^2+\lVert F(\theta)\rVert_2^2\\
&=(1+NR^2)\lVert F(\theta)\rVert_2^2.
\end{aligned}
\]

Both sides are nonnegative, so taking square roots proves (2). Finally, the same cube calculation gives

\[
\lVert(1,a)\rVert_2^2=1+\lVert a\rVert_2^2\leq1+NR^2,
\]

and taking the nonnegative square root proves (3). Every constant in (1)--(3) has been derived from the actual
root equation and cube membership. \(\square\)

### unit_002: proposition

**Proposition (Exact affine root-section velocity).**
\(\label{prop:step-006-s2-affine-velocity}\)

Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-derivative-closure}, Lemma~\ref{lem:step-006-s2-root-coupling}, and the accepted dependency
certificate in Lemma~\ref{lem:step-001-height}, if \(\theta\in\Theta\) and
\(a\in H_\theta\cap[-R,R]^N\), then

\[
F_0'(\theta)+\langle a,F'(\theta)\rangle
=\langle(1,a),B(\theta)\widetilde F(\theta)\rangle,
\tag{6}
\]

and

\[
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\leq(1+NR^2)\widehat\Lambda_{B,T}.
\tag{7}
\]

More precisely, the coefficient and feature square-root factors in (7) multiply exactly as

\[
\sqrt{1+NR^2}\,\sqrt{1+NR^2}=1+NR^2.
\tag{8}
\]

**Proof / justification.** The vector \(a\) is held fixed in this pointwise velocity evaluation; no
\(\theta\)-dependent section parametrization and no derivative of \(a\) is introduced. The exact primitive
closure identity is

\[
\widetilde F'(\theta)
=\bigl(F_0'(\theta),F'(\theta)\bigr)
=B(\theta)\widetilde F(\theta).
\]

Taking its Euclidean inner product with the identical augmented coefficient vector \((1,a)\) gives

\[
\begin{aligned}
F_0'(\theta)+\langle a,F'(\theta)\rangle
&=\langle(1,a),\bigl(F_0'(\theta),F'(\theta)\bigr)\rangle\\
&=\langle(1,a),\widetilde F'(\theta)\rangle\\
&=\langle(1,a),B(\theta)\widetilde F(\theta)\rangle.
\end{aligned}
\]

This proves the requested identity (6) on the actual objects. Euclidean Cauchy--Schwarz and the definition of
the induced operator norm then give

\[
\begin{aligned}
\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert
&=\lvert\langle(1,a),B(\theta)\widetilde F(\theta)\rangle\rvert\\
&\leq\lVert(1,a)\rVert_2\,
       \lVert B(\theta)\widetilde F(\theta)\rVert_2\\
&\leq\lVert(1,a)\rVert_2\,
       \lVert B(\theta)\rVert_{\mathrm{op}}\,
       \lVert\widetilde F(\theta)\rVert_2.
\end{aligned}
\tag{9}
\]

Assumption~\ref{assump:anchored-derivative-closure} supplies the legal normalization

\[
\lVert F(\theta)\rVert_2\geq\lvert F_{j_*}(\theta)\rvert=1.
\tag{10}
\]

The exact accepted dependency conclusion yields

\[
\lVert B(\theta)\rVert_{\mathrm{op}}
\leq\sup_{\vartheta\in\Theta}\lVert B(\vartheta)\rVert_{\mathrm{op}}
\leq\widehat\Lambda_{B,T}.
\tag{11}
\]

Divide (9) by the positive quantity in (10), and substitute (2), (3), and (11) without dropping or absorbing
any term. The two separate square-root factors remain visible:

\[
\begin{aligned}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
     {\lVert F(\theta)\rVert_2}
&\leq
\frac{
\underbrace{\sqrt{1+NR^2}}_{\text{from }\lVert(1,a)\rVert_2}
\,\widehat\Lambda_{B,T}\,
\underbrace{\sqrt{1+NR^2}\lVert F(\theta)\rVert_2}_{\text{from }\lVert\widetilde F(\theta)\rVert_2}}
{\lVert F(\theta)\rVert_2}\\
&=\bigl(\sqrt{1+NR^2}\bigr)
   \bigl(\sqrt{1+NR^2}\bigr)\widehat\Lambda_{B,T}\\
&=(1+NR^2)\widehat\Lambda_{B,T}.
\end{aligned}
\tag{12}
\]

The cancellation in the first equality of (12) is exact because the anchor proves the denominator is nonzero.
Equation (12) proves (7) and (8), with no residual or hidden factor. \(\square\)

### unit_003: proposition

**Proposition (Boundary and zero-certificate consistency).**
\(\label{prop:step-006-s2-boundary}\)

Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-derivative-closure}, Lemma~\ref{lem:step-006-s2-root-coupling},
Proposition~\ref{prop:step-006-s2-affine-velocity}, and the accepted dependency certificate in
Lemma~\ref{lem:step-001-height}, the conclusions of those local results remain valid for \(N=1\),
\(F_0\equiv0\), \(a=0\), empty root sections, endpoints of \(\Theta\), every allowed \(R>0\), and
\(\widehat\Lambda_{B,T}=0\). In the zero-certificate case, for every \(\theta\in\Theta\),

\[
B(\theta)=0,
\qquad
\widetilde F'(\theta)=0,
\]

and for every \(a\in H_\theta\cap[-R,R]^N\),

\[
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}=0.
\tag{13}
\]

**Proof / justification.** Each requested case is a direct specialization of the same pointwise identities.

1. If \(N=1\), cube membership gives \(\lVert a\rVert_2=\lvert a\rvert\leq R\), so the two factors are
   \(\sqrt{1+R^2}\), and their product is exactly \(1+R^2\). The anchor is the sole feature coordinate and
   still gives \(\lVert F(\theta)\rVert_2\geq1\). No positive-dimensional section geometry is used.

2. If \(F_0\equiv0\), then at every root-section point
   \(\langle a,F(\theta)\rangle=0\) and
   \(\lVert\widetilde F(\theta)\rVert_2=\lVert F(\theta)\rVert_2\) exactly. Also \(F_0'=0\), so (6)
   specializes to
   \[
   \langle a,F'(\theta)\rangle
   =\langle(1,a),B(\theta)\widetilde F(\theta)\rangle.
   \]
   The general velocity bound remains valid. If only \(F_0(\theta)=0\) at the tested point, the root and
   augmented-norm conclusions remain exact there; no derivative conclusion about \(F_0'\) is inferred.

3. If \(a=0\) belongs to the tested section, the actual root equation gives \(F_0(\theta)=0\), while
   \(\lVert(1,a)\rVert_2=1\) and
   \(\lVert\widetilde F(\theta)\rVert_2=\lVert F(\theta)\rVert_2\). Membership at one point does not imply
   \(F_0'(\theta)=0\); the derivative numerator is controlled by the exact closure calculation in (6)--(12).

4. If \(H_\theta\cap[-R,R]^N\) is empty, the assertion quantified over its elements is vacuous. No
   normalization, section measure, or event is evaluated on a nonexistent coefficient point.

5. If \(\theta\) is an endpoint of the compact interval \(\Theta\), the exact closure identity remains valid
   because it is assumed on the open interval \(U\supseteq\Theta\). Thus all derivatives and every pointwise
   equality above are the restrictions of identities valid on an open neighborhood of the endpoint.

6. The primitive regime requires \(R>0\). Therefore \(R\sqrt N\), \(1+NR^2\), and
   \(\sqrt{1+NR^2}\) are finite, with the square-root factor strictly positive. The proof never divides by
   \(R\) and needs no additional lower bound or limiting convention for it.

7. If \(\widehat\Lambda_{B,T}=0\), the accepted certificate and nonnegativity of the operator norm give, for
   every \(\theta\in\Theta\),
   \[
   0\leq\lVert B(\theta)\rVert_{\mathrm{op}}
   \leq\sup_{\vartheta\in\Theta}\lVert B(\vartheta)\rVert_{\mathrm{op}}
   \leq0.
   \]
   Hence \(\lVert B(\theta)\rVert_{\mathrm{op}}=0\), so \(B(\theta)=0\). The exact primitive closure, rather
   than a law-level argument, now gives
   \[
   \widetilde F'(\theta)=B(\theta)\widetilde F(\theta)=0.
   \]
   The primitive anchor still gives \(\lVert F(\theta)\rVert_2\geq1\), so the normalization in (13) is legal,
   while its numerator is exactly zero. This proves (13). No root-event probability conclusion is asserted or
   needed in this local velocity step.

These checks use the identical pointwise objects and introduce no section-size, density, transversality,
root-simplicity, pivot, or probabilistic claim. \(\square\)

## Target-Step Assembly

Fix an arbitrary \(\theta\in\Theta\) and an arbitrary
\(a\in H_\theta\cap[-R,R]^N\). Lemma~\ref{lem:step-006-s2-root-coupling} applies to this identical pair and
uses only the actual root equation, cube membership, and Euclidean Cauchy--Schwarz to give

\[
\lvert F_0(\theta)\rvert
=\lvert\langle a,F(\theta)\rangle\rvert
\leq R\sqrt N\,\lVert F(\theta)\rVert_2
\]

and

\[
\lVert\widetilde F(\theta)\rVert_2
\leq\sqrt{1+NR^2}\,\lVert F(\theta)\rVert_2.
\]

Proposition~\ref{prop:step-006-s2-affine-velocity} then applies the exact closure identity to the same
\(a,\theta,F_0,F,B,\widetilde F\), invokes only the matrix-bound conclusion in the accepted dependency
Lemma~\ref{lem:step-001-height}, and proves

\[
F_0'(\theta)+\langle a,F'(\theta)\rangle
=\langle(1,a),B(\theta)\widetilde F(\theta)\rangle
\]

and

\[
\begin{aligned}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
&\leq
\bigl(\sqrt{1+NR^2}\bigr)
\bigl(\sqrt{1+NR^2}\bigr)\widehat\Lambda_{B,T}\\
&=(1+NR^2)\widehat\Lambda_{B,T}.
\end{aligned}
\]

Proposition~\ref{prop:step-006-s2-boundary} verifies that the requested boundary and zero-certificate regimes do
not alter this conclusion. Because the fixed pair was arbitrary, these statements hold for every point of every
actual section \(H_\theta\cap[-R,R]^N\). This is exactly the affine normal-velocity certificate required by
`step_007`. The exported object is the original affine normal-velocity integrand; there is no
surrogate object, residual, section-measure statement, density statement, or probability conclusion.

## Explicit Rate Audit

- Exposed variables: Exactly \(N\), \(R\), and \(\widehat\Lambda_{B,T}\), through the literal factor
  \((1+NR^2)\widehat\Lambda_{B,T}\). The supporting offset factor is \(R\sqrt N\), and each of the two
  Euclidean augmentation factors is exactly \(\sqrt{1+NR^2}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(N\), \(R\), \(T\), \(m\), any coefficient of \(B\),
  \(\widehat\Lambda_{B,T}\), \(q\), \(M\), \(\Delta\), \(\theta\), \(a\), \(F_0\), \(F\), or any law,
  interval, confidence level, margin, or tolerance.
- Fixed quantities: A fixed admissible deterministic instance and its original objects
  \((\Theta,F_0,F,\widetilde F,B)\). The calculation is then uniform over the explicitly quantified
  \(\theta\in\Theta\) and \(a\in H_\theta\cap[-R,R]^N\).
- Probability mode: Deterministic and pointwise. No law, expectation, probability, conditioning event, or
  confidence parameter occurs.
- Horizon mode: Pointwise on all of \(\Theta\), including its endpoints. There is no interval integration,
  asymptotic limit, recursion, stopping time, or scope upgrade.
- Norm mode: Euclidean vector norm on \(\mathbb R^N\) and \(\mathbb R^{N+1}\), and the induced Euclidean
  operator norm on \(\mathbb R^{(N+1)\times(N+1)}\).
- Admissibility conditions and auxiliary tolerances: Exactly \(N\geq1\), \(R>0\),
  \(\theta\in\Theta\), \(a\in H_\theta\cap[-R,R]^N\), the two named primitive assumptions, and the accepted
  matrix certificate. There is no auxiliary tolerance, transversality condition, root-simplicity condition,
  pivot margin, lower-norm margin beyond the literal anchor, section-size condition, or density condition.
- Term absorption or simplification inequalities: No term is dropped, dominated, or absorbed. The complete
  quantitative chain is
  \[
  \lVert a\rVert_2\leq R\sqrt N,
  \qquad
  \lVert(1,a)\rVert_2\leq\sqrt{1+NR^2},
  \qquad
  \lVert\widetilde F\rVert_2\leq\sqrt{1+NR^2}\lVert F\rVert_2,
  \]
  \[
  \lVert B(\theta)\rVert_{\mathrm{op}}
  \leq\widehat\Lambda_{B,T},
  \]
  and
  \[
  \frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\lVert F\rVert_2}
  \leq
  \bigl(\sqrt{1+NR^2}\bigr)
  \bigl(\sqrt{1+NR^2}\bigr)\widehat\Lambda_{B,T}
  =(1+NR^2)\widehat\Lambda_{B,T}.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports only the exact deterministic affine
  normal-velocity factor for the downstream affine-rate integration. It performs no section integration, density
  domination, law supremum, interval supremum, or public probability conversion.
- Baseline-reduction check, if applicable: For \(N=1\), the factor reduces exactly to
  \((1+R^2)\widehat\Lambda_{B,T}\). For \(F_0\equiv0\) or \(a=0\) on the actual root section, the augmented
  feature bound reduces to equality \(\lVert\widetilde F\rVert_2=\lVert F\rVert_2\). For
  \(\widehat\Lambda_{B,T}=0\), the exact closure makes the normalized velocity zero. There is no conservative
  loss and no separate prior-theorem baseline in this local step.
- Pfaffian-format dependence: Once the supplied certificate \(\widehat\Lambda_{B,T}\) is fixed, additional
  dependence on \(q,M,\Delta\) is exactly degree zero. There is no hidden or unrecorded Pfaffian-format
  dependence.

## Blockers

None

## Notation And Assumption Notes

- `public-facing`: No new public helper object is introduced. The proof exports only the setting-defined
  \(F_0,F,\widetilde F,B,H_\theta,N,R,\widehat\Lambda_{B,T}\) and the exact affine normal-velocity certificate
  displayed in `## Target-Step Assembly`.
- `proof-local`: The expression \((1,a)\in\mathbb R^{N+1}\) is the direct augmentation of the fixed coefficient
  vector used to take the Euclidean inner product with \(\widetilde F'\). It is not a surrogate coefficient, a
  new random vector, or a separately exported object.
- `proof-local`: The symbol \(\vartheta\) is only the dummy variable in the accepted supremum certificate. It
  distinguishes that supremum from the fixed target point \(\theta\) and carries no new assumption.
- Helper-object surface: There are no appendix-local helper objects and no constant dictionary. The two
  square-root expressions are left visible rather than hidden behind a shorthand.
- Constant provenance: \(N\) and \(R\) come directly from
  Assumption~\ref{assump:parameter-regime}; \(R\sqrt N\) and both factors
  \(\sqrt{1+NR^2}\) are proved in Lemma~\ref{lem:step-006-s2-root-coupling};
  \(\widehat\Lambda_{B,T}\) is setting-defined and its exact operator-norm domination is inherited from the
  accepted dependency Lemma~\ref{lem:step-001-height}. No other constant, radius, threshold, margin, or bounded
  quantity is introduced.
- Assumption provenance: The root identity is the definition of membership in the actual setting section
  \(H_\theta\); cube membership is part of the target's local quantified domain; derivative closure and the
  anchor are primitive; the matrix norm bound is the sole accepted derived input. No generated event,
  local-validity condition, stability statement, recurrence, boundedness invariant, density condition, or
  probability hypothesis is used.
- Norm and scope provenance: Every norm is Euclidean, every statement is deterministic and pointwise, and
  \(a\) is held fixed when the \(\theta\)-derivative supplied by closure is evaluated. No moving-section
  derivative or implicit residual is present.
- Diagnostic boundary: The optional global proof/review pair was not read and supplied no planning statement,
  evidence, cited result, assumption, or change to the target. The pre-overwrite live same-step proof and review,
  with hashes `5795f2ed4685bc1f60ea1f02206d64fd14dc344a6634b9506c7e8aa8d0715da0` and
  `9919776062a8f13452ce1570df329fdae4bc610a46bdff4c0422afbc7c4b362a`, were hash-checked only and were not
  used as current evidence or as sources for this artifact's identity, unit split, labels, dependency mapping,
  or derivation. Their archived copies under sketch attempt 1 were verified byte-identical before this fresh
  sketch-attempt-2 proof was written.
- Export boundary: This artifact makes no law-level statement. It exports only the affine normal-velocity
  certificate required by `step_007` and does not assert a root-event probability,
  section measure, density bound, or correlation property.
