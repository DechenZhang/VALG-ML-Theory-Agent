# Proof Step

## Step Identity

- Sketch attempt: 3
- Step ID: `step_006`
- Unit attempt: 1
- Binding `idea.md` SHA-256:
  `5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836`
- Binding `setting.md` SHA-256:
  `91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e`
- Accepted `proof_sketch.md` SHA-256:
  `32023800de7b27eca85577e615139a5658106b35406627061879396bb35bf906`
- Accepted `proof_sketch_review.md` SHA-256:
  `3b626916a9e03b7539ee88961ad973ee2bbe2d6c3649a5bac51e8028cac5335e`
- Controller-open `proof_tracker.md` SHA-256:
  `9d7d64c75caab8070de919b9fbabef54804db59e751461548c7c215f159a316c`
- Accepted dependency `step_001` proof SHA-256:
  `6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838`
- Accepted dependency `step_001` review SHA-256:
  `c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0`
- Accepted dependency `step_004` proof SHA-256:
  `ef99e98a57f58c58b2354c87d7a179ca79f108854ee0b0049c4ed194a4d12b57`
- Accepted dependency `step_004` review SHA-256:
  `2aa2def5be97c2452007dc829582c926641992beede69e37ef86f5e04fd38351`
- Consumed archival provenance, not consulted and not current proof evidence:
  the pre-overwrite same-step proof had SHA-256
  `1a3400a6c132242fb0b8be9dbdad7bdbea8482765f81bc80f9dbb9f880cfee40`,
  and its stale review had SHA-256
  `49b03b628a445ddd04df1f4b5a31dc217734df9c67d085b9bc2d83491b62d4d8`.
  Before this overwrite, byte-identical copies of those two artifacts were
  present under
  `proof_history/sketch_001/proof_steps/step_006/attempt_001/`.

## Target Step Claim

- Intended claim: For every \(d\ge1\), calculate the constant-pivot and
  top-pivot velocities, prove
  \(\Gamma_{\rm piv}\le d+Rd(d-1)/2\), localize any positive-length bounded
  interval inside a compact \(\Theta\), handle zero-length intervals by the
  proper-affine-hyperplane null-set argument, verify exact equality with the
  monic polynomial and the
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N,A)\) tuple, and apply only the
  pairwise probability output of `step_004` to recover the exact Theorem 2
  bound.
- Depends on: `step_001`, `step_004`.
- Assumptions used: Primitive `assump:shared-pfaffian-chain`,
  `assump:no-forced-root`, `assump:joint-density-cap`; pairwise theorem from
  `step_004`.
- Technical challenge: Handling \(\lvert\theta\rvert\le1\),
  \(\lvert\theta\rvert>1\), \(d=1\), zero-length and positive-length bounded
  intervals, and the lower-dimensional density without singular
  augmentation; no supremum-branch semantic is consumed.
- Intended proof tool or cited result: Direct monomial quotient
  differentiation, affine-hyperplane nullity, and exact specialization of
  the pairwise `step_004` theorem.
- Output target: Exact affine-monic baseline bridge.
- Rate objective: R3: literal
  \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert I\rvert\), no auxiliary threshold,
  probability conversion, or conservative loss.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The quantified parameters are an integer \(d\ge1\), \(R>0\), and
    \(\kappa>0\). On each auxiliary compact interval \(\Theta\), the scalar
    parameter convention is the one in `setting.md`.
  - `assump:shared-pfaffian-chain` is discharged directly for the monic
    family in Proposition~\ref{prop:step-006-a3-monic-presentation}: the
    functions are polynomials, the Pfaffian chain is vacuous, and the exact
    degree descriptors are computed there.
  - `assump:no-forced-root` is discharged directly in
    Proposition~\ref{prop:step-006-a3-monic-presentation} from the feature
    coordinate equal to one.
  - `assump:joint-density-cap` means that the fixed arbitrary Borel
    probability law \(\mu\) on \(\mathbb R^d\) has a full joint Lebesgue
    density \(f_\mu\), with \(f_\mu=0\) almost everywhere outside
    \([-R,R]^d\) and \(\lVert f_\mu\rVert_{L^\infty}\le\kappa\). This is a
    primitive condition on the original \(d\) lower coefficients and has no
    independence or product-law clause.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof/review pair supplies only the common
    supported-root implication, legal root-feasible pivot interface, the
    empty-\(K_R\) convention, and strict fixed-family finiteness of
    \(\Gamma_{\rm piv}\).
  - The accepted `step_004` proof/review pair supplies only
    Proposition~\ref{prop:step-004-a3-exact-density-transfer}, the universal
    pairwise ordinary-probability inequality for one fixed admissible law and
    one fixed positive-length interval. No ordered supremum, capacity
    interpretation, or empty-index semantic proposition is an allowed input.
- Local conditional hypotheses:
  - In Proposition~\ref{prop:step-006-a3-positive-interval-transfer}, a
    bounded interval with positive length and a compact interval containing
    its closure are quantified local inputs, not additional theorem
    assumptions.
  - In Proposition~\ref{prop:step-006-a3-complete-monic-baseline}, the point
    \(\theta_0\) appears only in the singleton-interval branch.

There is no generated event, stability condition, recurrence, auxiliary
pivot threshold, compact-interval-dependent constant, confidence parameter,
or local conditional hypothesis used to obtain the unconditional target.
No undeclared step artifact or older-sketch digest is an input.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Proposition~\ref{prop:step-006-a3-monic-presentation}: under Assumption~\ref{assump:joint-density-cap} and the primitive conditions \(d\ge1\), \(R>0\), \(\kappa>0\), if \(b_d(\theta)=\theta^d\), \(F_d(\theta)=(1,\theta,\ldots,\theta^{d-1})\), and \(p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k\), then \(b_d+\langle\alpha,F_d\rangle=p_\alpha\) in the original \(d\)-dimensional coefficient space, Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} hold, and the descriptor tuple is exact. | Establishes the same-object monic presentation, all primitive-assumption discharges, and the fixed descriptor and density interfaces. |
| `unit_002` | lemma | Lemma~\ref{lem:step-006-a3-constant-pivot}: under Proposition~\ref{prop:step-006-a3-monic-presentation}, if \(\lvert\theta\rvert\le1\), then the constant feature is a legal pivot; for \(d=1\) its speed is exactly one, while for \(d\ge2\) its exact speed is \(d\lvert\theta\rvert^{d-1}+R\sum_{k=1}^{d-1}k\lvert\theta\rvert^{k-1}\), bounded by \(d+Rd(d-1)/2\). | Controls zero, both signs, the closed unit region, and the entire \(d=1\) branch. |
| `unit_003` | proposition | Proposition~\ref{prop:step-006-a3-global-pivot-certificate}: under Proposition~\ref{prop:step-006-a3-monic-presentation}, Lemma~\ref{lem:step-006-a3-constant-pivot}, and the accepted common `step_001` interface, if \(d\ge2\) and \(\lvert\theta\rvert>1\), then the top feature is legal and has exact speed \(1+R\sum_{m=1}^{d-1}m/\lvert\theta\rvert^{m+1}\); for every \(d\ge1\) and every auxiliary compact \(\Theta\), the pointwise legal-pivot minimum on the exact \(K_R\) yields \(\Gamma_{\rm piv}(b_d,F_d;R)\le d+Rd(d-1)/2\). | Supplies the global, auxiliary-interval-independent conditioning certificate with exact boundary assignment. |
| `unit_004` | proposition | Proposition~\ref{prop:step-006-a3-positive-interval-transfer}: under Assumption~\ref{assump:joint-density-cap}, Propositions~\ref{prop:step-006-a3-monic-presentation} and \ref{prop:step-006-a3-global-pivot-certificate}, and accepted Proposition~\ref{prop:step-004-a3-exact-density-transfer}, if \(I\subset\mathbb R\) is a bounded interval with \(\lvert I\rvert>0\), then the exact requested monic probability bound and its equal \(A/(2R)\) form hold. | Applies only the legal pairwise dependency output after checking every hypothesis on one compact localization. |
| `unit_005` | proposition | Proposition~\ref{prop:step-006-a3-complete-monic-baseline}: under Assumption~\ref{assump:joint-density-cap}, Proposition~\ref{prop:step-006-a3-monic-presentation}, and Proposition~\ref{prop:step-006-a3-positive-interval-transfer}, every zero-length interval has root probability zero by proper-affine-hyperplane nullity, and therefore the exact bound holds for every bounded interval. | Closes empty and singleton intervals and states the complete exact baseline theorem. |

Atomic step = no. The same-object presentation, two different pivot
calculations, positive-length dependency transfer, and null-set completion are
five independent nontrivial obligations, so exactly five local units are
used.

## Cited Result Applications

### Accepted dependency: common root-feasibility and finiteness interface

- Source and verified identity: accepted `step_001` proof
  `6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838`,
  certified by review
  `c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0`.
  The review records sketch attempt 3, Step ID `step_001`, unit attempt 1,
  status `ACCEPTED`, and the same reviewed-proof digest.
- Restated statement in current notation: under
  Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}, the setting-defined
  \[
  K_R=\{\theta\in\Theta:\lvert b(\theta)\rvert
  \le R\lVert F(\theta)\rVert_1\}
  \]
  is compact and contains every root generated by a coefficient vector in
  \([-R,R]^N\). If \(K_R=\varnothing\), the supported-root event is empty and
  the setting definition gives \(\Gamma_{\rm piv}=0\). If
  \(K_R\ne\varnothing\), at least one feature is a legal pivot at every point
  and \(\Gamma_{\rm piv}(b,F;R)<\infty\) for the fixed family.
- Instantiated objects: \(N=d\), \(b=b_d\), \(F=F_d\), and the exact
  \(K_R\) displayed in
  Proposition~\ref{prop:step-006-a3-global-pivot-certificate}.
- Assumption discharge: Proposition~\ref{prop:step-006-a3-monic-presentation}
  proves both required primitive family assumptions directly. The dependency
  is used only for the common root-feasibility, legal-pivot, empty-set, and
  fixed-family finiteness interface. None of its proof-local crude constants
  is imported.
- Conclusion used: the interface is used in
  Proposition~\ref{prop:step-006-a3-global-pivot-certificate} to align the
  direct two-pivot calculation with the authoritative setting definition and
  in Proposition~\ref{prop:step-006-a3-positive-interval-transfer} to audit
  intervals outside \(K_R\).

### Accepted dependency: universal pairwise probability proposition

- Source and verified identity: accepted `step_004` proof
  `ef99e98a57f58c58b2354c87d7a179ca79f108854ee0b0049c4ed194a4d12b57`,
  certified by review
  `2aa2def5be97c2452007dc829582c926641992beede69e37ef86f5e04fd38351`.
  The review records sketch attempt 3, Step ID `step_004`, unit attempt 1,
  status `ACCEPTED`, and the same reviewed-proof digest.
- Restated statement in current notation: for a fixed admissible affine
  family on a compact interval \(\Theta\), a fixed law
  \(\mu\in\mathcal D_{N,R,\kappa}\), and a fixed interval
  \(I\subseteq\Theta\) with \(\lvert I\rvert>0\),
  Proposition~\ref{prop:step-004-a3-exact-density-transfer} gives
  \[
  \Pr_{\alpha\sim\mu}\!\left[
    \exists\theta\in I:b(\theta)+\langle\alpha,F(\theta)\rangle=0
  \right]
  \le
  \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert
  =\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}\lvert I\rvert.
  \tag{1}
  \]
  It is ordinary probability under the original full joint law, allows
  arbitrary coordinate correlation, uses cube support only almost
  everywhere, and remains a valid inequality when its right-hand side
  exceeds one.
- Instantiated objects: \(N=d\), the original lower-coefficient vector
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\), the same law \(\mu\), the same
  interval \(I\), and \(b=b_d\), \(F=F_d\). No coefficient transformation,
  augmentation, marginalization, or singular law is introduced.
- Assumption discharge: Proposition~\ref{prop:step-006-a3-monic-presentation}
  checks the two deterministic family assumptions and the original-space law
  interface; Proposition~\ref{prop:step-006-a3-global-pivot-certificate}
  supplies the finite explicit conditioning bound; the positive-length and
  compact-domain conditions are checked in
  Proposition~\ref{prop:step-006-a3-positive-interval-transfer}.
- Conclusion used: only (1) is substituted in
  Proposition~\ref{prop:step-006-a3-positive-interval-transfer}. No
  ordered-supremum output, capacity interpretation, law-class nonemptiness
  branch, or interval-index empty-branch proposition is restated or used.

### Elementary facts proved or instantiated locally

1. For every integer \(n\ge1\),
   \((\theta^n)'=n\theta^{n-1}\). For every integer \(m\ge1\) and
   \(\theta\ne0\), \((\theta^{-m})'=-m\theta^{-m-1}\). Absolute values give
   \(n\lvert\theta\rvert^{n-1}\) and
   \(m/\lvert\theta\rvert^{m+1}\), respectively, for both signs of
   \(\theta\). These identities are applied directly to the setting's exact
   quotient definition of \(V_j\) in the next two local results.
2. If a real interval \(I\) is bounded and \(\lvert I\rvert>0\), then, with
   \(a=\inf I\) and \(c=\sup I\), one has \(a<c\) and
   \(\overline I=[a,c]\), a nondegenerate compact interval. If
   \(\lvert I\rvert=0\), the interval contains at most one point. Both facts
   follow from the defining between-points property of an interval and are
   proved where used.
3. If \(\mu\) has a Lebesgue density \(f_\mu\), then
   \(\mu\ll\lambda_d\) and every Lebesgue-null Borel set \(B\) satisfies
   \(\mu(B)=\int_B f_\mu\,d\lambda_d=0\). The only new null set used below is
   a proper affine hyperplane; its nullity, including \(d=1\), is proved
   explicitly in Proposition~\ref{prop:step-006-a3-complete-monic-baseline}.
4. **Tonelli's theorem for a nonnegative indicator.** If
   \(g:\mathbb R\times\mathbb R^{d-1}\to[0,\infty]\) is Lebesgue
   measurable, then
   \[
   \int_{\mathbb R^d}g\,d\lambda_d
   =\int_{\mathbb R^{d-1}}
     \left(\int_{\mathbb R}g(\alpha_0,\beta)\,d\alpha_0\right)d\beta,
   \]
   with equality in \([0,\infty]\). It is instantiated only for
   \(g=\mathbf 1_{H_{\theta_0}}\) when \(d\ge2\). The graph
   \(H_{\theta_0}\) is proved closed before the application, so the
   measurability hypothesis holds; each inner section is proved to be a
   singleton of one-dimensional measure zero. The conclusion used is
   \(\lambda_d(H_{\theta_0})=0\).

The local results used later have the following exact interfaces.

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Proposition~\ref{prop:step-006-a3-monic-presentation} | Under the primitive parameter and full joint-density conditions, the exact monic objects satisfy the two deterministic setting assumptions, remain in the original \(d\)-dimensional coefficient space, obey \(b_d+\langle\alpha,F_d\rangle=p_\alpha\), and have the exact descriptor tuple. | Supplies the objects, assumptions, identity, and descriptors to every later local result. |
| Lemma~\ref{lem:step-006-a3-constant-pivot} | Under the exact monic presentation, the constant pivot has speed one for \(d=1\) and has the displayed exact speed and requested bound for \(d\ge2\) on \(\lvert\theta\rvert\le1\). | Supplies the closed inner-region branch to Proposition~\ref{prop:step-006-a3-global-pivot-certificate}. |
| Proposition~\ref{prop:step-006-a3-global-pivot-certificate} | Under the monic presentation, the constant-pivot lemma, and the accepted common `step_001` interface, the top pivot has the displayed exact speed for \(d\ge2\) on \(\lvert\theta\rvert>1\), and the legal-pivot minimum yields the global conditioning bound for every compact \(\Theta\). | Supplies the exact conditioning coefficient to the positive-length transfer. |
| Proposition~\ref{prop:step-006-a3-positive-interval-transfer} | Under the original full joint-density condition, the exact monic presentation, the global conditioning certificate, and only accepted pairwise Proposition~\ref{prop:step-004-a3-exact-density-transfer}, every positive-length bounded interval satisfies the requested \(\kappa\)-form and equal \(A/(2R)\)-form bounds. | Supplies the positive-length branch to Proposition~\ref{prop:step-006-a3-complete-monic-baseline}. |
| Proposition~\ref{prop:step-006-a3-complete-monic-baseline} | Under the same primitive conditions and the positive-length result, affine-hyperplane nullity supplies probability zero on empty and singleton intervals, so the requested bound holds for every bounded interval. | Supplies the complete target and final assembly interface. |

## Local Derivation

### unit_001: proposition

**Proposition (Exact original-space monic presentation and admissibility).**
\(\label{prop:step-006-a3-monic-presentation}\)

Statement:
Fix an integer \(d\ge1\), \(R>0\), \(\kappa>0\), and a compact interval
\(\Theta\subset\mathbb R\). Under
Assumption~\ref{assump:joint-density-cap}, let \(\mu\) be any Borel
probability law on \(\mathbb R^d\) with full joint Lebesgue density
\(f_\mu\), supported almost everywhere on \([-R,R]^d\) and bounded almost
everywhere by \(\kappa\). Define, on \(\Theta\),
\[
p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k,
\qquad
b_d(\theta)=\theta^d,
\qquad
F_d(\theta)=(1,\theta,\ldots,\theta^{d-1}).
\tag{2}
\]
Then, for every \(\alpha\in\mathbb R^d\) and \(\theta\in\Theta\),
\[
b_d(\theta)+\langle\alpha,F_d(\theta)\rangle
=p_\alpha(\theta)
\tag{3}
\]
in the original \(d\)-dimensional lower-coefficient space. The family
directly satisfies Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, and its exact descriptor tuple is
\[
q=0,\qquad M=0,\qquad
\Delta_{\rm rnd}=d-1,\qquad
\Delta_{\rm aff}=d,\qquad
N=d,\qquad A=(2R)^d\kappa.
\tag{4}
\]

Proof / justification:
Index the feature coordinates from \(1\) to \(d\), so that
\((F_d)_i(\theta)=\theta^{i-1}\). The Euclidean inner product in the exact
setting convention is therefore
\[
\langle\alpha,F_d(\theta)\rangle
=\sum_{i=1}^d\alpha_{i-1}\theta^{i-1}
=\sum_{k=0}^{d-1}\alpha_k\theta^k.
\]
Adding the deterministic offset \(b_d(\theta)=\theta^d\) proves (3). This is
an equality of the actual random object and the target polynomial for the
same \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\). In
particular, the leading coefficient one is deterministic and remains in
\(b_d\); there is no \((d+1)\)-st coordinate, transformed law, singular law,
or coefficient-space change.

For Assumption~\ref{assump:shared-pfaffian-chain}, take the vacuous-chain
presentation \(q=0\), with no \(\eta\) and no chain polynomials \(P_j\). By
the setting convention this gives \(M=0\). The output polynomials are
\[
Q_0(\theta)=\theta^d,
\qquad Q_i(\theta)=\theta^{i-1}\quad(1\le i\le d).
\]
They are polynomials, hence \(C^1\) on every compact interval in the same
scalar parameter convention \(p=1\). Their exact degrees give
\[
\max_{1\le i\le d}\deg Q_i=d-1,
\qquad
\max_{0\le i\le d}\deg Q_i=d,
\]
including \(d=1\), where the sole random feature is the degree-zero
constant. Thus \(\Delta_{\rm rnd}=d-1\) and
\(\Delta_{\rm aff}=d\). There are exactly \(N=d\) random lower
coefficients. This proves the entire deterministic regularity and descriptor
part of (4).

For Assumption~\ref{assump:no-forced-root}, the first feature is identically
one:
\[
(F_d)_1(\theta)=1\qquad(\theta\in\Theta).
\]
Consequently \(F_d(\theta)\ne0\), so
\((b_d(\theta),F_d(\theta))\ne(0,0)\) for every \(\theta\), including
\(\theta=0\) and both endpoints. The law hypothesis is exactly
Assumption~\ref{assump:joint-density-cap} with \(N=d\): it is a cap on the
full joint density in this same original coefficient space, and its support
is required only almost everywhere. Finally, substituting \(N=d\) in the
setting definition \(A=(2R)^N\kappa\) gives the last identity in (4). No
coordinate independence has been used or inferred.

### unit_002: lemma

**Lemma (Constant-pivot velocity on the closed unit region).**
\(\label{lem:step-006-a3-constant-pivot}\)

Statement:
Under Proposition~\ref{prop:step-006-a3-monic-presentation}, the constant
feature \((F_d)_1=1\) is a legal pivot at every \(\theta\). If \(d=1\), its
speed is exactly
\[
V_{\rm const}(\theta)=1.
\tag{5}
\]
If \(d\ge2\) and \(\lvert\theta\rvert\le1\), its speed in the exact setting
definition is
\[
V_{\rm const}(\theta)
=d\lvert\theta\rvert^{d-1}
 +R\sum_{k=1}^{d-1}k\lvert\theta\rvert^{k-1}
\le d+R\frac{d(d-1)}2.
\tag{6}
\]
Thus, for every \(d\ge1\) and \(\lvert\theta\rvert\le1\), the constant-pivot
speed is at most \(d+Rd(d-1)/2\), with exact speed one in the entire
\(d=1\) branch.

Proof / justification:
Because the pivot is the nonzero constant feature, the authoritative setting
definition gives
\[
V_{\rm const}(\theta)
=\left\lvert\left(\frac{b_d}{1}\right)'(\theta)\right\rvert
 +R\sum_{k=1}^{d-1}
 \left\lvert\left(\frac{\theta^k}{1}\right)'(\theta)\right\rvert.
\tag{7}
\]
There are precisely \(d-1\) nonpivot features in this sum; the deterministic
leading monomial occurs only in the first term. For \(d=1\), (7) is
\[
\left\lvert(\theta)'\right\rvert+R\sum_{k=1}^{0}(\cdots)=1,
\]
which proves (5). The constant feature is then the sole feature, so its pivot
speed is exactly one, not merely bounded by one.

For \(d\ge2\), direct differentiation in (7) gives
\[
\left\lvert(d\theta^{d-1})\right\rvert
=d\lvert\theta\rvert^{d-1},
\qquad
\left\lvert(k\theta^{k-1})\right\rvert
=k\lvert\theta\rvert^{k-1},
\]
for positive and negative \(\theta\), proving the equality in (6). At
\(\theta=0\), this derivative calculation is read directly: the leading
term is zero, the \(k=1\) feature derivative is one, and every \(k\ge2\)
feature derivative is zero. Thus there is no undefined \(0^0\) convention
hidden in (6).

If \(\lvert\theta\rvert\le1\), then
\(\lvert\theta\rvert^{d-1}\le1\) and
\(\lvert\theta\rvert^{k-1}\le1\) for every \(1\le k\le d-1\). Hence
\[
V_{\rm const}(\theta)
\le d+R\sum_{k=1}^{d-1}k.
\]
The required arithmetic identity remains visible and exact:
\[
2\sum_{k=1}^{d-1}k
=\sum_{k=1}^{d-1}\bigl(k+(d-k)\bigr)
=d(d-1),
\qquad
\sum_{k=1}^{d-1}k=\frac{d(d-1)}2.
\tag{8}
\]
This proves (6). Equality points \(\theta=1\) and \(\theta=-1\) belong to
this constant chart; they are not reassigned to the top chart.

### unit_003: proposition

**Proposition (Top-pivot velocity and global monic conditioning).**
\(\label{prop:step-006-a3-global-pivot-certificate}\)

Statement:
Under Proposition~\ref{prop:step-006-a3-monic-presentation},
Lemma~\ref{lem:step-006-a3-constant-pivot}, and the accepted common
root-feasibility and finiteness interface from `step_001`, if \(d\ge2\) and
\(\lvert\theta\rvert>1\), then the top feature
\((F_d)_d(\theta)=\theta^{d-1}\) is nonzero and its exact setting speed is
\[
V_{\rm top}(\theta)
=1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
\le1+R\frac{d(d-1)}2
\le d+R\frac{d(d-1)}2.
\tag{9}
\]
For every integer \(d\ge1\), every \(R>0\), and every compact interval
\(\Theta\), the exact root-feasible set for the restricted monic family is
\[
K_R=\left\{\theta\in\Theta:
\lvert\theta\rvert^d
\le R\sum_{k=0}^{d-1}\lvert\theta\rvert^k\right\},
\tag{10}
\]
and
\[
\Gamma_{\rm piv}(b_d,F_d;R)
\le d+R\frac{d(d-1)}2.
\tag{11}
\]
The bound in (11) is independent of \(\Theta\).

Proof / justification:
Assume first that \(d\ge2\) and \(\lvert\theta\rvert>1\). Then
\(\theta\ne0\), so \(\theta^{d-1}\ne0\) and the top pivot is legal. Its
offset ratio is exactly
\[
\frac{b_d(\theta)}{(F_d)_d(\theta)}
=\frac{\theta^d}{\theta^{d-1}}=\theta,
\qquad
\left\lvert\left(\frac{b_d}{(F_d)_d}\right)'(\theta)\right\rvert=1.
\tag{12}
\]
The lower nonpivot features have exponents \(k=0,\ldots,d-2\). Reindex each
ratio by
\[
m=d-1-k\in\{1,\ldots,d-1\},
\qquad
k-(d-1)=-m.
\tag{13}
\]
Thus
\[
\frac{\theta^k}{\theta^{d-1}}
=\theta^{k-(d-1)}=\theta^{-m},
\qquad
\left\lvert(\theta^{-m})'\right\rvert
=\left\lvert-m\theta^{-m-1}\right\rvert
=\frac{m}{\lvert\theta\rvert^{m+1}}.
\tag{14}
\]
Equations (12)--(14), substituted into the exact setting definition
\[
V_j=\left\lvert(b/F_j)'\right\rvert
 +R\sum_{i\ne j}\left\lvert(F_i/F_j)'\right\rvert,
\]
give the equality in (9), including both signs of \(\theta\). Since
\(\lvert\theta\rvert>1\), each
\(m/\lvert\theta\rvert^{m+1}\le m\). Therefore (8) gives the first
inequality in (9), and the second follows from \(1\le d\). No remainder or
large-radius threshold is used.

Equation (10) is the setting definition of \(K_R\) with the actual monic
objects substituted:
\[
\lvert b_d(\theta)\rvert=\lvert\theta\rvert^d,
\qquad
\lVert F_d(\theta)\rVert_1
=\sum_{k=0}^{d-1}\lvert\theta^k\rvert
=\sum_{k=0}^{d-1}\lvert\theta\rvert^k.
\]
For every \(\theta\in K_R\), take the pointwise minimum over exactly the
legal pivots. If \(d=1\), the sole feature is the constant feature and
Lemma~\ref{lem:step-006-a3-constant-pivot} gives
\[
\min_{j:(F_1)_j(\theta)\ne0}V_j(\theta)=1
=d+R\frac{d(d-1)}2.
\tag{15}
\]
If \(d\ge2\) and \(\lvert\theta\rvert\le1\), the constant feature is legal,
and the same lemma gives
\[
\min_{j:(F_d)_j(\theta)\ne0}V_j(\theta)
\le V_{\rm const}(\theta)
\le d+R\frac{d(d-1)}2.
\tag{16}
\]
If \(d\ge2\) and \(\lvert\theta\rvert>1\), the top feature is legal, and
(9) gives
\[
\min_{j:(F_d)_j(\theta)\ne0}V_j(\theta)
\le V_{\rm top}(\theta)
\le d+R\frac{d(d-1)}2.
\tag{17}
\]
At \(\lvert\theta\rvert=1\), only (16) is used. Thus there is neither a
duplicated boundary nor a chart-count or interval-length cost.

If the exact set (10) is nonempty, taking its defining supremum after the
pointwise minimum in (15)--(17) proves (11). If \(K_R=\varnothing\), the
setting definition and the accepted `step_001` empty-set interface give
\(\Gamma_{\rm piv}=0\), so (11) again holds. A chart region may itself be
empty, for example when \(K_R\) lies wholly inside or wholly outside the
closed unit region; the corresponding unused pointwise branch contributes
nothing and creates no coverage gap.

For the explicit \(d=2\) audit, (6) and (9) reduce to
\[
V_{\rm const}(\theta)=2\lvert\theta\rvert+R\le2+R
\quad(\lvert\theta\rvert\le1),
\qquad
V_{\rm top}(\theta)=1+\frac{R}{\lvert\theta\rvert^2}
\le1+R\le2+R
\quad(\lvert\theta\rvert>1).
\]
Hence the split also covers the first nontrivial dimension exactly. The
right-hand side of (11) depends only on \(d\) and \(R\), not on the location,
diameter, or endpoints of \(\Theta\). This proves the claimed global
conditioning certificate for every compact localization.

### unit_004: proposition

**Proposition (Positive-length bounded-interval transfer).**
\(\label{prop:step-006-a3-positive-interval-transfer}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap},
Propositions~\ref{prop:step-006-a3-monic-presentation} and
\ref{prop:step-006-a3-global-pivot-certificate}, and accepted
Proposition~\ref{prop:step-004-a3-exact-density-transfer}, let
\(I\subset\mathbb R\) be any bounded interval with
\(\lvert I\rvert>0\). Then, for the same arbitrary full joint law \(\mu\) on
the original \(d\) lower coefficients,
\[
\Pr_{\alpha\sim\mu}\!\left[
\exists\theta\in I:p_\alpha(\theta)=0
\right]
\le
\kappa(2R)^{d-1}
\left(d+R\frac{d(d-1)}2\right)\lvert I\rvert.
\tag{18}
\]
Equivalently, without replacing the requested \(\kappa\)-form,
\[
\kappa(2R)^{d-1}
\left(d+R\frac{d(d-1)}2\right)\lvert I\rvert
=\frac{A}{2R}
\left(d+R\frac{d(d-1)}2\right)\lvert I\rvert.
\tag{19}
\]

Proof / justification:
Set \(a=\inf I\) and \(c=\sup I\). Boundedness makes \(a,c\) finite. If
\(a=c\), the between-points property of an interval would force \(I\) to
contain at most that one point and hence to have length zero, contrary to the
hypothesis. Thus \(a<c\), and the interval property gives
\(\overline I=[a,c]\). Choose the nondegenerate compact interval
\[
\Theta=[a,c],
\]
which contains the closure of \(I\). The following checks discharge every
hypothesis of accepted
Proposition~\ref{prop:step-004-a3-exact-density-transfer} for one fixed
admissible pair:

1. Proposition~\ref{prop:step-006-a3-monic-presentation} gives \(N=d\ge1\),
   the exact \(C^1\) vacuous-chain representation on this \(\Theta\), and
   Assumption~\ref{assump:no-forced-root} from the constant feature one.
2. The given \(R>0\), \(\kappa>0\), and law \(\mu\) satisfy
   Assumption~\ref{assump:joint-density-cap} in the same original
   \(d\)-dimensional coefficient space. The support condition is only
   almost-everywhere support on \([-R,R]^d\), exactly as the dependency
   requires; no independence is added.
3. The selected \(I\) is an interval contained in \(\Theta\) and has
   positive length.
4. Proposition~\ref{prop:step-006-a3-global-pivot-certificate} applies to
   this very restriction and gives the finite bound
   \[
   \Gamma_{\rm piv}(b_d,F_d;R)
   \le d+R\frac{d(d-1)}2,
   \]
   independently of the chosen \(\Theta\).
5. Equation (3) identifies the affine event with the requested polynomial
   event for the same \(\alpha\), \(\theta\), \(I\), and \(\mu\); there is no
   residual or probability conversion.

The accepted pairwise proposition (1), with \(N=d\), now gives literally
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}\!\left[
\exists\theta\in I:p_\alpha(\theta)=0
\right]
&=\Pr_{\alpha\sim\mu}\!\left[
\exists\theta\in I:
b_d(\theta)+\langle\alpha,F_d(\theta)\rangle=0
\right]\\
&\le\kappa(2R)^{d-1}
\Gamma_{\rm piv}(b_d,F_d;R)\lvert I\rvert\\
&\le\kappa(2R)^{d-1}
\left(d+R\frac{d(d-1)}2\right)\lvert I\rvert,
\end{aligned}
\]
which is (18). The alternate algebra is exact because \(R>0\):
\[
\kappa(2R)^{d-1}
=\frac{\kappa(2R)^d}{2R}
=\frac{A}{2R}.
\]
This proves (19) while retaining (18) as the requested form.

For the root-feasibility audit, if \(I\cap K_R=\varnothing\), the accepted
`step_001` supported-root implication rules out roots on \(I\) for every
\(\alpha\in[-R,R]^d\). Assumption~\ref{assump:joint-density-cap} assigns
probability one to that cube despite requiring support only almost
everywhere, so the unrestricted root event then has probability zero. The
same reasoning includes \(K_R=\varnothing\). No nonemptiness premise enters
the application. Finally, the right-hand side of (18) is allowed to exceed
one; the pairwise inequality remains valid without clipping, a
small-interval restriction, or a probability-mode change. No ordered
supremum or capacity statement has been used.

### unit_005: proposition

**Proposition (Complete exact monic baseline, including zero length).**
\(\label{prop:step-006-a3-complete-monic-baseline}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap},
Proposition~\ref{prop:step-006-a3-monic-presentation}, and
Proposition~\ref{prop:step-006-a3-positive-interval-transfer}, for every
bounded interval \(I\subset\mathbb R\), including \(\lvert I\rvert=0\),
\[
\Pr_{\alpha\sim\mu}\!\left[
\exists\theta\in I:p_\alpha(\theta)=0
\right]
\le
\kappa(2R)^{d-1}
\left(d+R\frac{d(d-1)}2\right)\lvert I\rvert.
\tag{20}
\]
When \(I\) is a singleton, its coefficient root set is a proper affine
hyperplane of \(\mathbb R^d\) and has both \(d\)-dimensional Lebesgue measure
and \(\mu\)-probability zero, including when \(d=1\).

Proof / justification:
If \(\lvert I\rvert>0\), (20) is exactly
Proposition~\ref{prop:step-006-a3-positive-interval-transfer}. It remains to
prove the zero-length branch.

A real interval containing two distinct points \(x<y\) contains every point
strictly between them. It therefore contains \((x,y)\), whose Lebesgue
length is \(y-x>0\). Hence an interval of length zero has at most one point:
it is either empty or a singleton. If \(I=\varnothing\), the existential root
event is empty and has probability zero.

Suppose \(I=\{\theta_0\}\). By the exact identity (3), its coefficient root
set is obtained by instantiating
Proposition~\ref{prop:step-006-a3-monic-presentation} on the compact interval
\(\Theta=\{\theta_0\}\), and it is
\[
\begin{aligned}
H_{\theta_0}
&:=\left\{\alpha\in\mathbb R^d:
p_\alpha(\theta_0)=0\right\}\\
&=\left\{\alpha\in\mathbb R^d:
\alpha_0=-\theta_0^d-
\sum_{k=1}^{d-1}\alpha_k\theta_0^k\right\}.
\end{aligned}
\tag{21}
\]
The coefficient of \(\alpha_0\) is exactly one. Equivalently,
\(H_{\theta_0}\) is the affine level set with nonzero normal
\[
F_d(\theta_0)=(1,\theta_0,\ldots,\theta_0^{d-1}).
\]
Thus it is a proper affine hyperplane, rather than all of \(\mathbb R^d\),
for every \(\theta_0\), including \(\theta_0=0\) and \(d=1\).

We now prove the required affine-hyperplane nullity in these exact
coordinates. If \(d=1\), (21) is the singleton
\(H_{\theta_0}=\{-\theta_0\}\). For every \(\varepsilon>0\), that point is
covered by an interval of length \(\varepsilon\), so its one-dimensional
Lebesgue outer measure is at most \(\varepsilon\). Letting
\(\varepsilon\downarrow0\) proves \(\lambda_1(H_{\theta_0})=0\).

If \(d\ge2\), write
\(\beta=(\alpha_1,\ldots,\alpha_{d-1})\in\mathbb R^{d-1}\). The set in
(21) is the graph of the continuous affine function
\[
\beta\longmapsto
-\theta_0^d-\sum_{k=1}^{d-1}\beta_k\theta_0^k,
\]
so it is closed and hence Lebesgue measurable. For every fixed \(\beta\),
its section in the \(\alpha_0\)-coordinate is exactly one singleton and has
one-dimensional Lebesgue measure zero. Tonelli's theorem applied to the
nonnegative indicator of this measurable graph gives
\[
\begin{aligned}
\lambda_d(H_{\theta_0})
&=\int_{\mathbb R^{d-1}}
  \int_{\mathbb R}
  \mathbf 1_{H_{\theta_0}}(\alpha_0,\beta)
  \,d\alpha_0\,d\beta\\
&=\int_{\mathbb R^{d-1}}0\,d\beta=0.
\end{aligned}
\tag{22}
\]
This proves affine-hyperplane nullity rather than citing it as an unverified
standard assertion.

Because \(\mu\) has the full joint density \(f_\mu\), (22) and its
\(d=1\) counterpart imply
\[
\Pr_{\alpha\sim\mu}[p_\alpha(\theta_0)=0]
=\mu(H_{\theta_0})
=\int_{H_{\theta_0}}f_\mu\,d\lambda_d=0.
\tag{23}
\]
This uses neither a marginal density nor independence. Almost-everywhere
cube support is sufficient and creates no exceptional mass because the full
law is absolutely continuous. Since the right-hand side of (20) is also
exactly zero when \(\lvert I\rvert=0\), (23) completes both the singleton and
empty-interval branches. Together with the positive-length branch, (20)
holds for every bounded interval.

## Target-Step Assembly

Proposition~\ref{prop:step-006-a3-monic-presentation} keeps the deterministic
leading coefficient one in \(b_d\), keeps exactly the \(d\) lower
coefficients in the original random vector, proves the object identity
\[
b_d+\langle\alpha,F_d\rangle=p_\alpha,
\]
directly discharges Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root}, and proves the descriptor tuple
\[
(q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N,A)
=(0,0,d-1,d,d,(2R)^d\kappa).
\]

Lemma~\ref{lem:step-006-a3-constant-pivot} computes the exact constant-pivot
speed, including the sole speed one when \(d=1\), \(\theta=0\), both signs,
and the boundary \(\lvert\theta\rvert=1\). Proposition~\ref{prop:step-006-a3-global-pivot-certificate}
explicitly reindexes every lower-feature/top-feature ratio using
\(k-(d-1)=-m\), computes the exact top-pivot speed on
\(\lvert\theta\rvert>1\), takes the pointwise minimum over legal pivots, and
then takes the supremum over the exact \(K_R\). These two results prove
\[
\Gamma_{\rm piv}(b_d,F_d;R)
\le d+R\frac{d(d-1)}2
\]
for every compact localization, with no auxiliary-interval dependence.

For a bounded positive-length interval,
Proposition~\ref{prop:step-006-a3-positive-interval-transfer} verifies every
hypothesis of accepted
Proposition~\ref{prop:step-004-a3-exact-density-transfer} for the same
objects and substitutes only that pairwise output. It obtains the literal
rate
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:p_\alpha(\theta)=0]
\le\kappa(2R)^{d-1}
\left(d+R\frac{d(d-1)}2\right)\lvert I\rvert
=\frac{A}{2R}
\left(d+R\frac{d(d-1)}2\right)\lvert I\rvert.
\]
Proposition~\ref{prop:step-006-a3-complete-monic-baseline} proves proper
affine-hyperplane nullity and adds exactly the empty and singleton intervals.
The five named results therefore prove every clause of the accepted
`step_006` row and the exact all-bounded-interval baseline theorem.

The result remains `material_partial`. It is a rate-bearing exact
fixed-family baseline bridge, not a solution of the remaining source
direction: this monic-family certificate does not provide polynomial
general-instance control of \(\Gamma_{\rm piv}\) from
\(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or from any other
Pfaffian-format descriptors.

## Explicit Rate Audit

- Exposed variables: the integer \(d\ge1\), \(R>0\), \(\kappa>0\),
  \(\lvert I\rvert\), \(A=(2R)^d\kappa\), and the literal coefficient
  \(d+Rd(d-1)/2\). The fixed-family conditioning quantity is exposed before
  substitution through
  \(\Gamma_{\rm piv}(b_d,F_d;R)\le d+Rd(d-1)/2\). The descriptors are
  \(q=0\), \(M=0\), \(\Delta_{\rm rnd}=d-1\),
  \(\Delta_{\rm aff}=d\), and \(N=d\).
- Hidden constants may depend on: None. There is no hidden constant.
- Hidden constants may not depend on: \(d,R,\kappa,A,\mu,I,\Theta\),
  coefficient correlations, a confidence parameter, a leading-coordinate
  approximation, a tolerance, or a new conditioning parameter.
- Fixed quantities: for each theorem instance, \(d,R,\kappa\) and the monic
  presentation are fixed while the admissible full joint law and bounded
  interval are arbitrary. The compact \(\Theta\) used for a positive-length
  interval is proof-local and does not enter the bound.
- Probability mode: ordinary probability under one fixed arbitrary Borel
  probability law with the stated full joint Lebesgue density. Universal
  quantification over all such laws preserves arbitrary correlation. There
  is no confidence parameter, conditioning event, high-probability mode,
  marginal-density step, or independence condition.
- Horizon mode: static and uniform over every bounded interval in
  \(\mathbb R\), including empty and singleton intervals. There is no
  horizon, asymptotic limit, or time-uniform upgrade.
- Norm mode: the setting's \(\ell_1\) root-feasibility test in \(K_R\),
  scalar absolute quotient-derivative variation in \(V_j\) and
  \(\Gamma_{\rm piv}\), one-dimensional Lebesgue interval length, and
  \(d\)-dimensional Lebesgue measure for the full coefficient density.
- Admissibility conditions and auxiliary tolerances: exactly \(d\ge1\),
  \(R>0\), \(\kappa>0\), a Borel probability law with full joint density
  supported almost everywhere on \([-R,R]^d\) and capped almost everywhere
  by \(\kappa\), and a bounded real interval. There is no auxiliary
  tolerance, pivot threshold, small-interval restriction, transversality
  condition, or product-law assumption.
- Term absorption or simplification inequalities: all steps are displayed:
  \[
  \sum_{k=1}^{d-1}k=\frac{d(d-1)}2,
  \qquad
  \frac{m}{\lvert\theta\rvert^{m+1}}\le m
  \quad(\lvert\theta\rvert>1),
  \qquad
  1\le d.
  \]
  No term is dropped, asymptotically absorbed, or replaced by a conservative
  remainder.
- Probability conversion: none. Accepted pairwise ordinary probability is
  applied to the identical polynomial event in the identical coefficient
  space. No union bound, marginalization, clipping by one, or capacity
  interpretation is used. A right-hand side larger than one remains valid.
- Contribution to any Rate Specialization Bridge: the bridge is the exact
  substitution
  \[
  \kappa(2R)^{d-1}\Gamma_{\rm piv}\lvert I\rvert
  \le\kappa(2R)^{d-1}
  \left(d+R\frac{d(d-1)}2\right)\lvert I\rvert,
  \]
  together with the exact algebra
  \(\kappa(2R)^{d-1}=A/(2R)\). Every dependency hypothesis is checked in
  Proposition~\ref{prop:step-006-a3-positive-interval-transfer}.
- Baseline-reduction check: this is the baseline itself. The affine object is
  identically \(p_\alpha\), the leading coefficient remains deterministic,
  the law remains \(d\)-dimensional and arbitrarily correlated, and the
  output is literally
  \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert I\rvert\) for all bounded intervals.
  There is no residual, probability conversion, independent baseline
  citation, circular appeal to the monic theorem, or conservative loss.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects: \(d,R,\kappa,A\),
  \(b_d,F_d,p_\alpha\), the original coefficient vector
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\), bounded interval \(I\),
  \(\lvert I\rvert\), and the literal coefficient
  \(d+Rd(d-1)/2\). The setting-defined \(K_R,V_j\), and
  \(\Gamma_{\rm piv}\) retain their original meanings and are not renamed.
- Appendix-local objects: \(V_{\rm const}\) and \(V_{\rm top}\) are the two
  setting-authorized pivot aliases already named in `setting.md`. They expose
  the derivative calculation but do not add public assumptions or constants.
  The vacuous-chain polynomials \(Q_0,\ldots,Q_d\) are used only to certify
  the descriptor tuple.
- Proof-local objects: the positive-length localization \(\Theta=[a,c]\),
  the reindexing variable \(m=d-1-k\), the singleton point \(\theta_0\), the
  affine hyperplane \(H_{\theta_0}\), and its section variable \(\beta\).
  None is exported into the theorem rate.
- Constant provenance: \(A=(2R)^d\kappa\) is the setting definition with
  \(N=d\). The coefficient \(d+Rd(d-1)/2\) is proved by
  Lemma~\ref{lem:step-006-a3-constant-pivot} and
  Proposition~\ref{prop:step-006-a3-global-pivot-certificate}; it is not an
  assumed bound. No unnamed finite constant is introduced.
- Assumption provenance: the parameter ranges and full joint-density cap are
  primitive. Proposition~\ref{prop:step-006-a3-monic-presentation} directly
  proves the shared-chain and no-forced-root conditions for the specialized
  family. The common root-feasibility/finiteness facts are supplied by the
  current accepted `step_001` pair, and the positive-length probability
  inequality is supplied by only the current accepted pairwise `step_004`
  proposition. All other controls are proved by the five local units. There
  are no generated invariants or local conditional hypotheses used in final
  assembly.
- Boundary audit: \(d=1\) has one feature and speed exactly one; \(d=2\) is
  computed explicitly; \(\theta=0\) uses the constant pivot;
  \(\lvert\theta\rvert=1\) belongs only to the constant chart;
  \(\lvert\theta\rvert>1\) uses the nonzero top pivot for both signs. Empty
  chart regions and empty \(K_R\) are harmless pointwise branches. Intervals
  outside \(K_R\), empty intervals, and singleton intervals are proved
  separately. Almost-everywhere cube support and arbitrary correlation are
  preserved, and a numerical upper bound above one is left unclipped.
- Excluded mechanisms: no polynomial-root-count theorem, union bound,
  marginal density, independence, random leading coefficient, augmented
  coefficient law, singular law, transformed coefficient space, auxiliary
  pivot threshold, small-interval premise, probability clipping,
  conservative remainder, or monic-baseline circularity appears.
- Source-direction boundary: progress type remains `material_partial`. This
  exact monic fixed-family certificate does not yield polynomial
  general-instance control of \(\Gamma_{\rm piv}\) from
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or any other Pfaffian-format
  descriptors; that is the explicit remaining source gap.
