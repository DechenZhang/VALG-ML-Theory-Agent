# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_005`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove every translated section of \([-R,R]^N\) has \((N-1)\)-measure at most its parallel central section and hence at most \(\sqrt2(2R)^{N-1}\), including \(N=1\).
- Depends on: None
- Assumptions used: Primitive: `assump:parameter-regime`
- Technical challenge: Supply a source-adequate translated-section bound, not merely Ball's central result, with exact scaling and dimension boundary.
- Intended proof tool or cited result: Direct Brunn--Minkowski concavity/evenness argument; Ball, *Cube Slicing in \(\mathbb R^n\)*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0.
- Output target: Uniform translated cube-section certificate.
- Rate objective: R2 and R3: literal \(\sqrt2(2R)^{N-1}\) factor.
- Row-local review status: PENDING. Sketch-level acceptance is supplied by the accepted attempt-2 `proof_sketch_review.md`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Setting assumptions: `assump:parameter-regime` only. In particular, \(N\geq1\) is an integer and \(R>0\).
- Accepted dependency step proof/review artifacts: None.
- Primitive conditions: Assumption~\ref{assump:parameter-regime} supplies exactly \(N\geq1\), \(R>0\), and the Euclidean coefficient cube \([-R,R]^N\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: The algebraic root-section mapping fixes a \(\theta\) for which \(F(\theta)\ne0\). This is not an extra condition on the geometric certificate, which is proved for every nonzero normal. For actual branch root sections, the accepted setting's anchor in `assump:anchored-derivative-closure` guarantees \(F(\theta)\ne0\); no derivative-closure consequence is used in the section estimate.

No product coefficient law, density statement, transversality, pivot margin, section derivative, root-count assertion, motion condition, or generated event is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:parameter-regime}, if \(N\geq2\), \(u\in\mathbb R^N\) is a Euclidean unit vector, and \(v(t)=\mathcal H^{N-1}([-R,R]^N\cap(u^\perp+tu))\), then \(v^{1/(N-1)}\) is concave on the closed interval of nonempty sections, \(v\) is even, and \(v(t)\leq v(0)\) for every \(t\in\mathbb R\). | Proves parallel central maximality, including support endpoints, zero-volume sections, and empty translates. |
| `unit_002` | lemma | Under Assumption~\ref{assump:parameter-regime}, if \(N\geq2\) and \(u\) is a Euclidean unit vector, then Ball's main theorem for the unit-volume cube, under the dilation by \(2R\), gives \(\mathcal H^{N-1}([-R,R]^N\cap u^\perp)\leq\sqrt2(2R)^{N-1}\). | Supplies the exact orientation-uniform central-section constant and literal Hausdorff-measure scaling. |
| `unit_003` | proposition | Under Assumption~\ref{assump:parameter-regime} and, for \(N\geq2\), Lemmas~\ref{lem:step-005-central-maximality} and \ref{lem:step-005-ball-scaling}, every translated section of \([-R,R]^N\) has \((N-1)\)-dimensional Euclidean Hausdorff measure at most its parallel central section and at most \(\sqrt2(2R)^{N-1}\), including \(N=1\); if \(F(\theta)\ne0\), this applies to the actual affine root section with \(u=F(\theta)/\lVert F(\theta)\rVert_2\) and \(t=-F_0(\theta)/\lVert F(\theta)\rVert_2\). | Exports the sole public-facing uniform translated cube-section certificate consumed by the affine and homogeneous branches. |

Atomic step = no. Central maximality, source scaling, and the all-dimensional/root-section assembly are independent auditable obligations.

## Cited Result Applications

### Euclidean Brunn--Minkowski inequality

- Source or name: The standard Brunn--Minkowski inequality in a \(d\)-dimensional Euclidean affine space.
- Restated statement in current notation: If \(d\geq1\), \(X,Y\) are nonempty compact subsets of the Euclidean space \(u^\perp\), and \(0\leq\lambda\leq1\), then

  \[
  \operatorname{vol}_d((1-\lambda)X+\lambda Y)^{1/d}
  \geq
  (1-\lambda)\operatorname{vol}_d(X)^{1/d}
  +\lambda\operatorname{vol}_d(Y)^{1/d}.
  \]

  The statement permits either input to have zero \(d\)-volume.
- Instantiated objects: \(d=N-1\), \(X=A_s\), and \(Y=A_t\), where \(A_t=\{x\in u^\perp:x+tu\in[-R,R]^N\}\).
- Required assumptions and discharge: \(d\geq1\) follows from \(N\geq2\); the sets \(A_s,A_t\) are nonempty compact convex slices whenever \(s,t\) lie in the interval of nonempty sections; \(u^\perp\) has its induced Euclidean metric and volume, equal to \(\mathcal H^{N-1}\) under the slice isometry.
- Conclusion used: Together with the direct inclusion

  \[
  (1-\lambda)A_s+\lambda A_t
  \subseteq A_{(1-\lambda)s+\lambda t},
  \]

  it yields concavity of \(v^{1/(N-1)}\) on the entire closed support interval.

### Ball's central cube-slicing theorem

- Source: Keith Ball, *Cube Slicing in \(\mathbb R^n\)*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0.
- Restated source statement: For \(n\geq2\), let \(Q_n=[-1/2,1/2]^n\), the axis-aligned Euclidean cube of \(n\)-dimensional volume one. For every Euclidean linear hyperplane \(L\) through the origin,

  \[
  \mathcal H^{n-1}(Q_n\cap L)\leq\sqrt2.
  \]
- Instantiated objects: \(n=N\), \(L=u^\perp\), and the positive scalar dilation \(x\mapsto(2R)x\), which sends \(Q_N\) to \([-R,R]^N\) and preserves the central hyperplane \(u^\perp\).
- Required assumptions and discharge: \(N\geq2\) is the local condition of Lemma~\ref{lem:step-005-ball-scaling}; \(u\) is a Euclidean unit vector, so \(u^\perp\) is a central Euclidean hyperplane; \(R>0\) follows from Assumption~\ref{assump:parameter-regime}, so the dilation is valid.
- Conclusion used: Exact Hausdorff scaling gives

  \[
  \mathcal H^{N-1}([-R,R]^N\cap u^\perp)
  =(2R)^{N-1}\mathcal H^{N-1}(Q_N\cap u^\perp)
  \leq\sqrt2(2R)^{N-1}.
  \]
- Nonoutputs: Ball's theorem is used only for central sections. It supplies neither translated central maximality nor motion, root probability, density domination, section differentiation, affine/homogeneous specialization, or a monic baseline.

### Local result application register

- Lemma~\ref{lem:step-005-central-maximality}: Under Assumption~\ref{assump:parameter-regime}, for \(N\geq2\), a Euclidean unit normal \(u\), and the displayed \(v\), its exact conclusion is \(v(t)\leq v(0)\) for every real offset. It is used by Proposition~\ref{prop:step-005-translated-section-certificate}; its assumptions are discharged there by the same \(N,R,u\).
- Lemma~\ref{lem:step-005-ball-scaling}: Under Assumption~\ref{assump:parameter-regime}, for \(N\geq2\) and a Euclidean unit normal \(u\), its exact conclusion is the central bound \(v(0)\leq\sqrt2(2R)^{N-1}\). It is used by Proposition~\ref{prop:step-005-translated-section-certificate}; its assumptions are discharged there by the same \(N,R,u\).
- Proposition~\ref{prop:step-005-translated-section-certificate}: Under Assumption~\ref{assump:parameter-regime}, its exact exported conclusion is the all-dimensional uniform translated-section certificate and its actual-root-section instantiation. The target-step assembly uses it with no additional geometric assumption.

## Local Derivation

### unit_001: lemma

**Lemma (Central maximality of parallel cube sections).**
\(\label{lem:step-005-central-maximality}\)

Statement:
Under Assumption~\ref{assump:parameter-regime}, if \(N\geq2\), \(u\in\mathbb R^N\) satisfies \(\|u\|_2=1\), and

\[
v(t):=\mathcal H^{N-1}\bigl([-R,R]^N\cap(u^\perp+tu)\bigr),
\qquad t\in\mathbb R,
\]

then the function \(t\mapsto v(t)^{1/(N-1)}\) is concave on the closed interval on which the sections are nonempty, \(v(-t)=v(t)\), and

\[
v(t)\leq v(0)\qquad\text{for every }t\in\mathbb R.
\]

Proof / justification:
Put \(K=[-R,R]^N\), set \(d=N-1\), and identify each affine slice isometrically with a subset of \(u^\perp\) by defining

\[
A_t:=\{x\in u^\perp:x+tu\in K\}.
\]

The translation \(x\mapsto x+tu\) is a Euclidean isometry from \(A_t\) onto \(K\cap(u^\perp+tu)\). Therefore

\[
v(t)=\operatorname{vol}_d(A_t).
\]

The projection of \(K\) onto the line spanned by \(u\) is

\[
\bigl\{\langle x,u\rangle:x\in K\bigr\}
=\left[-R\sum_{i=1}^N|u_i|,\ R\sum_{i=1}^N|u_i|\right].
\]

Indeed, the two extrema follow by choosing each cube coordinate with the sign opposite to, or equal to, the sign of \(u_i\), and convexity fills the interval between them. Thus this is exactly the closed interval of nonempty sections; in particular, its endpoints are retained.

Fix \(s,t\) in this interval and \(0\leq\lambda\leq1\). If \(x_s\in A_s\) and \(x_t\in A_t\), convexity of \(K\) gives

\[
(1-\lambda)(x_s+su)+\lambda(x_t+tu)
=\bigl((1-\lambda)x_s+\lambda x_t\bigr)
 +\bigl((1-\lambda)s+\lambda t\bigr)u\in K.
\]

Because \((1-\lambda)x_s+\lambda x_t\in u^\perp\), this proves

\[
(1-\lambda)A_s+\lambda A_t
\subseteq A_{(1-\lambda)s+\lambda t}.
\]

The restated \(d\)-dimensional Brunn--Minkowski inequality and monotonicity of Euclidean volume now yield

\[
v((1-\lambda)s+\lambda t)^{1/d}
\geq(1-\lambda)v(s)^{1/d}+\lambda v(t)^{1/d}.
\]

This argument remains valid when an endpoint slice has zero \(d\)-volume; Brunn--Minkowski does not require positive input volume. Hence \(v^{1/d}\) is concave on the full closed interval of nonempty sections, including tangent slices supported on faces, lower-dimensional faces, edges, or corners.

Central symmetry \(K=-K\) gives \(A_{-t}=-A_t\), so \(v(-t)=v(t)\). Applying concavity to the midpoint \(0=(t+(-t))/2\) gives, for every \(t\) in the support interval,

\[
v(0)^{1/d}
\geq\frac12v(t)^{1/d}+\frac12v(-t)^{1/d}
=v(t)^{1/d}.
\]

Since \(d\geq1\), raising both sides to the power \(d\) gives \(v(t)\leq v(0)\). For \(t\) outside the support interval the translated section is empty, so \(v(t)=0\leq v(0)\). This proves the assertion for all real offsets, without extending the concave function by zero outside an endpoint where a facet section may have positive measure.

### unit_002: lemma

**Lemma (Euclidean scaling of Ball's cube-slicing bound).**
\(\label{lem:step-005-ball-scaling}\)

Statement:
Under Assumption~\ref{assump:parameter-regime}, if \(N\geq2\) and \(u\in\mathbb R^N\) satisfies \(\|u\|_2=1\), then

\[
\mathcal H^{N-1}\bigl([-R,R]^N\cap u^\perp\bigr)
\leq\sqrt2(2R)^{N-1}.
\]

Proof / justification:
Let \(Q_N=[-1/2,1/2]^N\), which has \(N\)-dimensional volume one. Ball's main theorem, restated above in the same Euclidean metric, gives

\[
\mathcal H^{N-1}(Q_N\cap u^\perp)\leq\sqrt2.
\]

Assumption~\ref{assump:parameter-regime} gives \(R>0\), and scalar dilation by \(2R\) satisfies the literal set identity

\[
(2R)(Q_N\cap u^\perp)
=([-R,R]^N)\cap u^\perp.
\]

For every subset \(E\) of a Euclidean \((N-1)\)-plane and every \(c>0\), Hausdorff measure obeys the exact metric scaling identity

\[
\mathcal H^{N-1}(cE)=c^{N-1}\mathcal H^{N-1}(E).
\]

Taking \(c=2R\) proves

\[
\mathcal H^{N-1}\bigl([-R,R]^N\cap u^\perp\bigr)
=(2R)^{N-1}\mathcal H^{N-1}(Q_N\cap u^\perp)
\leq\sqrt2(2R)^{N-1}.
\]

No normalization factor is hidden: both the source and target use Euclidean Hausdorff measure, and a scalar dilation multiplies every tangent length by exactly \(2R\).

### unit_003: proposition

**Proposition (Uniform translated cube-section certificate).**
\(\label{prop:step-005-translated-section-certificate}\)

Statement:
Under Assumption~\ref{assump:parameter-regime} and, when \(N\geq2\), Lemmas~\ref{lem:step-005-central-maximality} and \ref{lem:step-005-ball-scaling}, for every Euclidean unit vector \(u\in\mathbb R^N\) and every \(t\in\mathbb R\),

\[
\mathcal H^{N-1}\bigl([-R,R]^N\cap(u^\perp+tu)\bigr)
\leq
\mathcal H^{N-1}\bigl([-R,R]^N\cap u^\perp\bigr)
\leq\sqrt2(2R)^{N-1}.
\]

Moreover, if a setting-defined affine root section has \(F(\theta)\ne0\), then with

\[
u_\theta:=\frac{F(\theta)}{\|F(\theta)\|_2},
\qquad
t_\theta:=-\frac{F_0(\theta)}{\|F(\theta)\|_2},
\]

one has the exact same-normal identity

\[
H_\theta=u_\theta^\perp+t_\theta u_\theta
\]

and therefore

\[
\mathcal H^{N-1}\bigl(H_\theta\cap[-R,R]^N\bigr)
\leq
\mathcal H^{N-1}\bigl(F(\theta)^\perp\cap[-R,R]^N\bigr)
\leq\sqrt2(2R)^{N-1}.
\]

Proof / justification:
First suppose \(N\geq2\). Lemma~\ref{lem:step-005-central-maximality} gives the first inequality for every real offset, including support endpoints and offsets producing empty sections. Lemma~\ref{lem:step-005-ball-scaling} gives the second inequality, uniformly over the Euclidean unit normal \(u\). Their composition proves the displayed translated-section certificate.

Now suppose \(N=1\). A Euclidean unit normal is \(u=1\) or \(u=-1\), and \(u^\perp=\{0\}\). Thus \(u^\perp+tu=\{tu\}\). Its intersection with \([-R,R]\) is either one point or empty, while the central section is the singleton \(\{0\}\). Since \(\mathcal H^0\) counts a singleton as one and the empty set as zero,

\[
\mathcal H^0([-R,R]\cap\{tu\})
\leq1
=\mathcal H^0([-R,R]\cap\{0\})
\leq\sqrt2(2R)^0.
\]

This proves both inequalities literally in dimension one.

It remains to verify that the actual affine section is the same object, rather than a substituted central section. For \(F(\theta)\ne0\), division of

\[
F_0(\theta)+\langle a,F(\theta)\rangle=0
\]

by \(\|F(\theta)\|_2\) shows that \(a\in H_\theta\) exactly when

\[
\langle a,u_\theta\rangle=t_\theta.
\]

Every \(a\in\mathbb R^N\) has the orthogonal decomposition

\[
a=\bigl(a-\langle a,u_\theta\rangle u_\theta\bigr)
 +\langle a,u_\theta\rangle u_\theta,
\]

so this level set is precisely \(u_\theta^\perp+t_\theta u_\theta\). Its parallel central section is precisely \(u_\theta^\perp=F(\theta)^\perp\). In the actual branch, the accepted setting anchor gives \(F_{j_*}(\theta)=1\), hence \(F(\theta)\ne0\) at every \(\theta\). In particular, when \(N=1\), \(F(\theta)\) is a nonzero scalar, \(H_\theta=\{-F_0(\theta)/F(\theta)\}\), and its intersection with \([-R,R]\) is a singleton or empty, exactly as audited above.

The proof uses no regularity of \(t_\theta\) as \(\theta\) varies. A central offset, a noncentral offset, tangency to a cube face, intersection through a face, edge, or corner, a coordinate-aligned normal, a diagonal normal, a support endpoint, and a zero-measure or empty section are all already covered by the quantified geometric argument.

## Target-Step Assembly

For \(N\geq2\), Lemma~\ref{lem:step-005-central-maximality} proves, via the checked Brunn--Minkowski application, that each actual translated section is no larger than the central section with the same normal. Lemma~\ref{lem:step-005-ball-scaling} correctly instantiates Ball's main theorem on the unit-volume cube and proves the exact Euclidean Hausdorff scaling to \([-R,R]^N\). Proposition~\ref{prop:step-005-translated-section-certificate} composes these results, supplies the literal \(N=1\) argument, and maps every actual affine root section using

\[
u_\theta=F(\theta)/\|F(\theta)\|_2,
\qquad
t_\theta=-F_0(\theta)/\|F(\theta)\|_2.
\]

Consequently, for every \(N\geq1\), every allowed \(R>0\), every orientation and offset, and hence every actual \(H_\theta\),

\[
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
\leq
\mathcal H^{N-1}(F(\theta)^\perp\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1}.
\]

This is exactly the accepted sketch-row claim and exports only its uniform translated cube-section certificate.

## Explicit Rate Audit

- Exposed variables: \(N\geq1\) and \(R>0\), with the literal factor \(\sqrt2(2R)^{N-1}\). The orientation \(u\), offset \(t\), and root-section parameter \(\theta\) are uniformly quantified rather than absorbed into a constant.
- Hidden constants may depend on: None; there are no hidden constants.
- Hidden constants may not depend on: \(N\), \(R\), \(u\), \(t\), \(\theta\), \(F_0(\theta)\), \(F(\theta)\), a section orientation, an affine offset, or a boundary configuration.
- Fixed quantities: For each pointwise application, \(N\), \(R\), and the setting-defined cube are fixed; the bound remains the same for every orientation and offset.
- Probability mode: Deterministic and pointwise. There is no probability or confidence parameter and no density input.
- Horizon mode: Pointwise in the translated section and uniform over all orientations and offsets. This step performs no interval integration, supremum conversion, or temporal accumulation.
- Norm mode: The normal is normalized in \(\|\cdot\|_2\); orthogonal complements and dilations use the Euclidean metric; section size is exactly \(\mathcal H^{N-1}\), with \(\mathcal H^0\) as counting measure for \(N=1\).
- Admissibility conditions and auxiliary tolerances: Exactly integer \(N\geq1\), \(R>0\), and \(\|u\|_2=1\); the root-section instantiation additionally requires the already-guaranteed legality condition \(F(\theta)\ne0\). There are no auxiliary tolerances, pivot margins, transversality conditions, or section-motion assumptions.
- Term absorption or simplification inequalities: No term is dropped or absorbed. The complete chain is

  \[
  \mathcal H^{N-1}(K\cap(u^\perp+tu))
  \leq\mathcal H^{N-1}(K\cap u^\perp)
  =(2R)^{N-1}\mathcal H^{N-1}(Q_N\cap u^\perp)
  \leq\sqrt2(2R)^{N-1}
  \]

  for \(N\geq2\), while for \(N=1\), \(0\) or \(1\leq\sqrt2(2R)^0\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: Proposition~\ref{prop:step-005-translated-section-certificate} supplies exactly the factor consumed by the general affine branch and the sharper homogeneous branch, with no law-, interval-, orientation-, or offset-dependent loss. Those later steps, not this one, combine it with velocity and density factors.
- Baseline-reduction check, if applicable: The certificate supports both the general affine and sharper homogeneous branches. It does not replace or weaken the separate exact affine-monic baseline, whose prescribed chart proof and literal constant are produced through `step_010`; no conclusion about that baseline is asserted here.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: Only Proposition~\ref{prop:step-005-translated-section-certificate}, namely the uniform translated cube-section inequality and its exact affine-root-section instantiation. This is the interface needed by `step_007` and `step_008`.
- `Appendix-local`: Lemma~\ref{lem:step-005-central-maximality} and Lemma~\ref{lem:step-005-ball-scaling}, which expose the two independent proof mechanisms behind the public-facing certificate.
- `Proof-local`: \(K=[-R,R]^N\), \(d=N-1\), the pullback slices \(A_t\), their section-volume function \(v(t)\), and the unit-volume source cube \(Q_N=[-1/2,1/2]^N\). Each is defined directly from setting quantities or from Ball's checked source object and is not exported.
- `Proof-local`: The quantified inputs \(u,t\) and the root-section abbreviations \(u_\theta=F(\theta)/\|F(\theta)\|_2\), \(t_\theta=-F_0(\theta)/\|F(\theta)\|_2\). They introduce no new parameter or assumption; \(u_\theta,t_\theta\) are used only to prove the exact object mapping.
- Constant provenance: \(R>0\) and \(N\geq1\) come directly from Assumption~\ref{assump:parameter-regime}. The factor \(2R\) is the exact dilation from the unit-volume cube to the setting cube. The power \((2R)^{N-1}\) is forced by exact Euclidean Hausdorff scaling. The literal \(\sqrt2\) is exactly Ball's theorem constant. No finite constant, radius, threshold, rate, margin, or bounded quantity is chosen freely.
- Assumption provenance: There are no generated-object, event, recurrence, local-validity, stability, or boundedness hypotheses. The only local condition is \(F(\theta)\ne0\) for writing the actual section's unit normal; the accepted anchor proves it in the branch, and the universal geometric certificate itself is independent of \(F\).
- Boundary audit: Assumption~\ref{assump:parameter-regime} excludes \(R=0\). The proof covers central and noncentral offsets, both endpoints of the slice-support interval, empty translates beyond support, zero-measure endpoint slices, facet slices with positive endpoint measure, tangency and intersections through faces/edges/corners, coordinate-aligned and diagonal normals, and both signs of a chosen normal. It does not extend concavity by zero beyond support, so positive-measure endpoint facets create no discontinuity error.
- Scope audit: The result is deterministic, pointwise, and orientation-uniform. It proves no section motion, derivative, root probability, density domination, root count, affine-rate assembly, homogeneous-rate assembly, monic specialization, or final theorem. The accepted global diagnostic pair was not read or used.
