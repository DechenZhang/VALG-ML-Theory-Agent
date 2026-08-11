# Proof Step

## Step Identity

- Sketch attempt: 3
- Step ID: `step_004`
- Unit attempt: 1
- Binding `idea.md` SHA-256:
  `5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836`
- Binding `setting.md` SHA-256:
  `91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e`
- Accepted `proof_sketch.md` SHA-256:
  `32023800de7b27eca85577e615139a5658106b35406627061879396bb35bf906`
- Accepted `proof_sketch_review.md` SHA-256:
  `3b626916a9e03b7539ee88961ad973ee2bbe2d6c3649a5bac51e8028cac5335e`
- Optional diagnostic `global_proof.md` SHA-256, verified but not consulted:
  `80b090266336b304ff4ca0184709b45eff448c3f1758efdaa09d923c8dbfaee8`
- Optional diagnostic `global_proof_review.md` SHA-256, verified but not
  consulted:
  `24ad84083a200f89cc8c7973ee168783bca0c81c3432ac73e24f50e4606184dd`
- Controller-open `proof_tracker.md` SHA-256:
  `9958acac74b43d5b8da0a25225106ad56c23ee0c345e05f746828ffdb1f0187b`
- Accepted dependency `step_001` proof SHA-256:
  `6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838`
- Accepted dependency `step_001` review SHA-256:
  `c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0`
- Accepted dependency `step_003` proof SHA-256:
  `9dc61d50827f3e217dec04dca87907d1053ab0b3170253952b65d40efe5071dd`
- Accepted dependency `step_003` review SHA-256:
  `b5c44676d15e9043ad74c2943e2f42d3ea2e87a3ccb5f7efc38712f1a8986087`
- Consumed sketch-attempt-2 same-step proof SHA-256:
  `5ba08d410b755f28421fa6ba4b0ca9d711c6b22bcc5a2ab495cbede7c400da31`
- Consumed sketch-attempt-2 same-step review SHA-256:
  `54ae9ba06258838d123af6f4a5b70ce1cb8f77383d89b636906783112faa712a`

## Target Step Claim

- Intended claim: Using direct dependencies `step_001` and `step_003`, apply
  the full joint-density cap to prove for every admissible law and
  positive-length interval the exact probability inequality and literal
  \(A/(2R)\) form. Prove directly
  \(\mathcal D_{N,R,\kappa}\ne\varnothing\iff A\ge1\) and positive-length
  interval-index nonemptiness \(\iff\lvert\Theta\rvert>0\). Take the inner
  interval supremum and then the outer law supremum: when both classes are
  nonempty, obtain a finite nonnegative real bounded by
  \(A\Gamma_{\rm piv}/(2R)\) using direct `step_001` finiteness; if either
  class is empty, retain the literal universal theorem and displayed
  consequence as vacuous under \(\sup\varnothing=-\infty\), without calling
  it a capacity.
- Depends on: `step_001`, `step_003`.
- Assumptions used: Primitive `assump:joint-density-cap`; derived finiteness
  from `step_001`; only exact event measurability and the volume bound from
  `step_003`. Neither \(A\ge1\) nor \(\lvert\Theta\rvert>0\) is assumed.
- Technical challenge: Preserving arbitrary correlation, exact quantifier and
  supremum order, literal constants, and the distinction between nonvacuous
  capacity and empty-index semantics without importing finiteness through
  `step_003`.
- Intended proof tool or cited result: Lebesgue density domination; direct
  algebra; \(1=\int f_\mu\le A\); uniform cube density for sufficiency;
  elementary compact-interval geometry; standard extended-real
  empty-supremum convention.
- Output target: Exact pairwise affine probability theorem plus
  branch-qualified ordered-supremum consequence.
- Rate objective: R1:
  \(\Pr(S_I)\le\kappa(2R)^{N-1}\Gamma\lvert I\rvert
  =A\Gamma\lvert I\rvert/(2R)\), ordinary probability and no hidden constant
  in every admissible pair; finite nonnegative capacity interpretation only
  when \(A\ge1\) and \(\lvert\Theta\rvert>0\).
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting fixes \(N\ge1\), \(R>0\),
    \(\kappa\in(0,\infty)\), a compact interval \(\Theta\), the deterministic
    affine family \(\phi_\alpha=b+\langle\alpha,F\rangle\),
    \(A=(2R)^N\kappa\), and the class
    \(\mathcal D_{N,R,\kappa}\).
  - Assumption~\ref{assump:joint-density-cap}: every quantified
    \(\mu\in\mathcal D_{N,R,\kappa}\) has one full \(N\)-dimensional
    Lebesgue density \(f_\mu\), vanishing almost everywhere outside
    \([-R,R]^N\), with \(0\le f_\mu\le\kappa\) almost everywhere. This is a
    full joint-density condition and contains no coordinate independence or
    product-law premise.
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_001` proof
    `6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838`,
    certified by accepted review
    `c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0`,
    supplies directly
    \(\Gamma_{\rm piv}(b,F;R)<\infty\) for the fixed deterministic family,
    including the defining zero value when \(K_R=\varnothing\).
  - Accepted `step_003` proof
    `9dc61d50827f3e217dec04dca87907d1053ab0b3170253952b65d40efe5071dd`,
    certified by accepted review
    `b5c44676d15e9043ad74c2943e2f42d3ea2e87a3ccb5f7efc38712f1a8986087`,
    supplies only the exact original-coordinate event's Lebesgue
    measurability and the coefficient-volume certificate
    \[
    \lambda_N(S_I)\le
    (2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
    \]
    It does not carry or retransmit strict finiteness.
- Local conditional hypotheses: None. A fixed law
  \(\mu\in\mathcal D_{N,R,\kappa}\) and a fixed interval
  \(I\subseteq\Theta\) with \(|I|>0\) are quantified inputs, not added
  assumptions. The predicates \(A\ge1\) and \(|\Theta|>0\) are proved below
  to characterize index-class nonemptiness and are used only to distinguish
  conclusions; neither is a primitive assumption.

Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root} were discharged inside the accepted dependency
proofs. They are not invoked anew here. No generated event, independence
condition, marginal-density bound, small-interval condition, confidence
parameter, or polynomial Pfaffian-format conditioning estimate is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:joint-density-cap}, accepted Lemma~\ref{lem:step-003-a3-analytic-chart-events}, and accepted Proposition~\ref{prop:step-003-a3-volume-certificate}, if \(\mu\in\mathcal D_{N,R,\kappa}\) and \(I\subseteq\Theta\) is an interval with \(\lvert I\rvert>0\), then the exact original-coordinate event \(S_I\) has ordinary probability \(\Pr_\mu(S_I)\le\kappa\lambda_N(S_I)\le\kappa(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert=A\Gamma_{\rm piv}\lvert I\rvert/(2R)\). | Proves the exact universal pairwise interface using no independence, marginal, finiteness, supremum, or new root theorem. |
| `unit_002` | lemma | Under the basic setting and the definition of \(\mathcal D_{N,R,\kappa}\), with no additional theorem assumption, \(\mathcal D_{N,R,\kappa}\ne\varnothing\) if and only if \(A\ge1\). | Classifies the outer index set, including the sharp \(A=1\) boundary, without promoting nonemptiness to an assumption. |
| `unit_003` | lemma | Under the basic setting that \(\Theta\) is a compact interval, with no additional theorem assumption, the class of intervals \(I\subseteq\Theta\) satisfying \(\lvert I\rvert>0\) is nonempty if and only if \(\lvert\Theta\rvert>0\). | Classifies the inner index set, including degenerate \(\Theta\), without adding parameter-domain nondegeneracy. |
| `unit_004` | proposition | Under accepted Lemma~\ref{lem:step-001-supported-root-compactness}, accepted Proposition~\ref{prop:step-001-fixed-family-pivot-bound}, Proposition~\ref{prop:step-004-a3-exact-density-transfer}, Lemma~\ref{lem:step-004-a3-law-index}, and Lemma~\ref{lem:step-004-a3-interval-index}, the inner interval supremum followed by the outer law supremum is a finite nonnegative real bounded by \(A\Gamma_{\rm piv}/(2R)\) when \(A\ge1\) and \(\lvert\Theta\rvert>0\); if either index class is empty, the same displayed extended-real expression equals \(-\infty\) under \(\sup\varnothing=-\infty\) and is not called a capacity. | Proves the exact ordered-supremum consequence and its nonempty/vacuous semantic split, using strict finiteness only from `step_001`. |

Atomic step = no. Density transfer, the two logically independent index-set
classifications, and the ordered extended-real assembly are four distinct
nontrivial obligations.

## Cited Result Applications

### Accepted dependency: exact measurable event and coefficient volume

- Source identity: accepted `step_003` proof SHA-256
  `9dc61d50827f3e217dec04dca87907d1053ab0b3170253952b65d40efe5071dd`,
  certified by accepted review SHA-256
  `b5c44676d15e9043ad74c2943e2f42d3ea2e87a3ccb5f7efc38712f1a8986087`.
  The review records sketch attempt 3, `step_003`, unit attempt 1,
  `ACCEPTED`, and the matching proof digest.
- Restated statement in current notation: for every interval
  \(I\subseteq\Theta\), accepted
  Lemma~\ref{lem:step-003-a3-analytic-chart-events} proves that the exact set
  \[
  S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,
  \ b(\theta)+\langle\alpha,F(\theta)\rangle=0\}
  \tag{1}
  \]
  is analytic and Lebesgue measurable in the original coefficient
  coordinates. Accepted
  Proposition~\ref{prop:step-003-a3-volume-certificate} proves
  \[
  \lambda_N(S_I)\le
  (2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|.
  \tag{2}
  \]
- Instantiated objects: exactly the present \(b,F,N,R,\Theta,I\), the closed
  original coefficient cube, the setting event \(S_I\), Lebesgue measure
  \(\lambda_N\), and \(\Gamma_{\rm piv}(b,F;R)\). There is no transformed,
  permuted, augmented, marginal, or surrogate coefficient object.
- Required assumptions and discharge: the accepted proof and matching review
  discharge Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}, their accepted earlier chart interfaces, and
  the cited descriptive-set and area-formula hypotheses. The current proof
  consumes only (1), its measurability, and (2).
- Conclusion used: measurability and (2) are used only in
  Proposition~\ref{prop:step-004-a3-exact-density-transfer}.
- Boundary content of the accepted interface: (1)--(2) retain actual interval
  endpoints; all closed cube faces and corners; empty \(K_R\), cells, and
  events; \(N=1\) with zero-dimensional beta volume one; selected
  denominators approaching zero; noninjective charts; tangent and multiple
  roots; identically-zero affine combinations; and finite, countably
  infinite, or uncountable fibers. No simple-root, transversality,
  regular-value, or finite-fiber premise occurs.
- Nonoutputs: `step_003` supplies no density conversion, probability bound,
  law-class or interval-class nonemptiness, supremum conclusion, or strict
  finiteness of \(\Gamma_{\rm piv}\). In particular, this proof does not
  treat `step_003` as retransmitting `step_001` finiteness and does not
  reprove or newly cite the area formula or a root theorem.

### Accepted dependency: direct fixed-family finiteness

- Source identity: accepted `step_001` proof SHA-256
  `6047515d7ff08ed24d827795e182670e99406e9a704427ecd3a659b3729fd838`,
  certified by accepted review SHA-256
  `c046344169b935f169d7651e50289927fdd01c48ae14c054386fbd09af779aa0`.
  The review records sketch attempt 3, `step_001`, unit attempt 1,
  `ACCEPTED`, and the matching proof digest.
- Restated statement in current notation: accepted
  Lemma~\ref{lem:step-001-supported-root-compactness} proves
  \(\Gamma_{\rm piv}(b,F;R)=0\) when \(K_R=\varnothing\). In the nonempty
  branch, accepted
  Proposition~\ref{prop:step-001-fixed-family-pivot-bound} proves a finite
  upper bound and hence
  \(\Gamma_{\rm piv}(b,F;R)<\infty\). Together with the nonnegative
  definition of the pivot variations, the all-branch conclusion is
  \[
  0\le\Gamma_{\rm piv}(b,F;R)<\infty.
  \tag{3}
  \]
- Instantiated objects: the identical fixed deterministic family,
  \(\Theta,N,R,K_R,V_j\), and \(\Gamma_{\rm piv}(b,F;R)\).
- Required assumptions and discharge: the accepted proof and review discharge
  Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}. No density or probability premise occurs.
- Conclusion used: (3) is used only in
  Proposition~\ref{prop:step-004-a3-ordered-suprema}, after both index
  classes have been proved nonempty, to make the upper bound a finite real.
- Nonoutputs: `step_001` supplies no event measurability, coefficient-volume
  certificate, density conversion, law-class nonemptiness, interval-class
  nonemptiness, or probability theorem. Its proof-local \(B_0,B_1,\rho\)
  are not imported here and are not public rate factors.

### Standard density and completion identity

- Restated statement in current notation: if a Borel probability law
  \(\mu\) has Lebesgue density \(f_\mu\), then \(\mu\ll\lambda_N\). Every
  Lebesgue-measurable set belongs to the completion of \(\mu\), and on such a
  set \(B\),
  \[
  \mu(B)=\int_B f_\mu\,d\lambda_N.
  \tag{4}
  \]
  If \(0\le f_\mu\le\kappa\) almost everywhere, then
  \(\mu(B)\le\kappa\lambda_N(B)\).
- Instantiated objects: \(B=S_I\), with Lebesgue measurability supplied by
  accepted Lemma~\ref{lem:step-003-a3-analytic-chart-events}.
- Assumption discharge: Assumption~\ref{assump:joint-density-cap} supplies
  the full joint density and its almost-everywhere cap. No coordinate
  conditioning, marginalization, independence, or product decomposition is
  used.
- Conclusion used: (4) supplies the first probability-to-volume inequality
  in Proposition~\ref{prop:step-004-a3-exact-density-transfer}.

### Standard cube, interval, and supremum facts

- Cube fact: for \(N\ge1\) and \(R>0\), the closed cube
  \([-R,R]^N\) has Lebesgue volume \((2R)^N\). Hence
  \((2R)^{-N}\mathbf 1_{[-R,R]^N}\) is a probability density. This is used
  in Lemma~\ref{lem:step-004-a3-law-index}.
- Interval fact: if \(I\subseteq\Theta\) are intervals, monotonicity of
  Lebesgue measure gives \(|I|\le|\Theta|\). If the interval \(\Theta\) has
  positive length, it is itself an allowed positive-length subinterval. This
  is used in Lemma~\ref{lem:step-004-a3-interval-index}.
- Supremum fact: in the extended reals, \(\sup\varnothing=-\infty\). A
  nonempty set of nonnegative real numbers bounded above by a finite real
  \(C\) has a supremum in \([0,C]\). Applying this fact first to the interval
  index and then to the law index preserves the displayed order. This is used
  in Proposition~\ref{prop:step-004-a3-ordered-suprema}.
- Nonoutputs: these elementary facts supply no probability union bound,
  confidence conversion, limiting argument, or new theorem assumption.

### Local result applications

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Proposition~\ref{prop:step-004-a3-exact-density-transfer} | Under Assumption~\ref{assump:joint-density-cap} and only the accepted `step_003` event/volume interface, every admissible law and positive-length interval satisfy the exact ordinary-probability chain with coefficient \(A\Gamma_{\rm piv}/(2R)\). | Supplies every indexed ratio to Proposition~\ref{prop:step-004-a3-ordered-suprema}; its pairwise statement is the sole output intended for `step_006`. |
| Lemma~\ref{lem:step-004-a3-law-index} | Under the basic definitions and no extra assumption, \(\mathcal D_{N,R,\kappa}\ne\varnothing\) exactly when \(A\ge1\). | Determines whether the outer supremum is nonempty in Proposition~\ref{prop:step-004-a3-ordered-suprema}. |
| Lemma~\ref{lem:step-004-a3-interval-index} | Under compact-interval geometry and no extra assumption, the positive-length interval class is nonempty exactly when \(\lvert\Theta\rvert>0\). | Determines whether each inner supremum is nonempty in Proposition~\ref{prop:step-004-a3-ordered-suprema}. |
| Proposition~\ref{prop:step-004-a3-ordered-suprema} | Under the pairwise theorem, both index classifications, and direct accepted `step_001` finiteness, the inner-then-outer supremum has the exact finite/nonnegative or empty/\(-\infty\) branch semantics. | Supplies the assembly-only ordered-supremum consequence. |

No external paper result is newly cited in this step. In particular, the
accepted area-formula and descriptive-set derivations are not reopened.

## Local Derivation

### unit_001: proposition

**Proposition (Exact joint-density transfer for the swept root event).**
\(\label{prop:step-004-a3-exact-density-transfer}\)

Statement:
Under Assumption~\ref{assump:joint-density-cap}, accepted
Lemma~\ref{lem:step-003-a3-analytic-chart-events}, and accepted
Proposition~\ref{prop:step-003-a3-volume-certificate}, for every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\) with \(|I|>0\), the exact original-coordinate event
\(S_I\) in (1) is measurable for the completed law of \(\mu\), and
\[
\begin{aligned}
\Pr_{\mu}(S_I)
&\le \kappa\lambda_N(S_I)\\
&\le \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|\\
&=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
\end{aligned}
\tag{5}
\]
Moreover, because every \(\mu\in\mathcal D_{N,R,\kappa}\) is supported on
\([-R,R]^N\) up to a null set,
\[
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
\phi_\alpha(\theta)=0\right]=\Pr_\mu(S_I).
\tag{6}
\]
These are ordinary probability statements. They do not use independence,
marginal densities, a conditioning event, a confidence parameter, or a
small-interval threshold.

Proof / justification:
Fix an admissible \(\mu\) and a positive-length interval \(I\). Write
\(C=[-R,R]^N\) only within this proof. Assumption~\ref{assump:joint-density-cap}
gives a nonnegative density \(f_\mu\) such that
\[
f_\mu=0\quad\lambda_N\text{-a.e. on }C^c,
\qquad
f_\mu\le\kappa\quad\lambda_N\text{-a.e. on }\mathbb R^N.
\tag{7}
\]
Accepted Lemma~\ref{lem:step-003-a3-analytic-chart-events} makes the exact
set \(S_I\subseteq C\) Lebesgue measurable. By the completed-density identity
(4), this same set is measurable for the completed law and
\[
\Pr_\mu(S_I)
=\int_{S_I}f_\mu(\alpha)\,d\lambda_N(\alpha)
\le\kappa\lambda_N(S_I).
\tag{8}
\]
This is a direct use of the cap on the full joint density. No coordinate is
integrated out, and arbitrary dependence among the coordinates creates no
additional term.

Accepted Proposition~\ref{prop:step-003-a3-volume-certificate} applies to
the identical set \(S_I\), in the identical original coefficient
coordinates, and gives (2). Substitution into (8) gives the first two lines
of (5). The last line is exact algebra:
\[
\kappa(2R)^{N-1}
=\frac{\kappa(2R)^N}{2R}
=\frac{A}{2R},
\tag{9}
\]
where division is legal because \(R>0\). No constant is hidden, dropped, or
absorbed.

Equation (7) also gives \(\mu(C^c)=0\). The unrestricted root event in (6)
differs from \(S_I\) only by a subset of \(C^c\). That subset is measurable
in the completion and has probability zero, proving (6) without enlarging
or changing the event on the support of the law. Thus (5) is the exact
pairwise theorem appearing in the formalized goal.

Every geometric degeneracy was resolved before this density conversion by
accepted Proposition~\ref{prop:step-003-a3-volume-certificate}. If
\(K_R=\varnothing\), its exact event interface gives
\(S_I=\varnothing\), while the setting definition gives
\(\Gamma_{\rm piv}=0\), so (5) is \(0\le0\).
If \(S_I=\varnothing\) for any other reason, both its volume and probability
are zero. If \(\Gamma_{\rm piv}=0\) with nonempty \(K_R\), (2) forces
\(\lambda_N(S_I)=0\), and (8) forces \(\Pr_\mu(S_I)=0\). For positive
\(\Gamma_{\rm piv}\), the same literal chain applies. When \(N=1\),
\((2R)^{N-1}=1\) and \(A/(2R)=\kappa\), so there is no missing
zero-dimensional factor.

The event in (1) retains all interval endpoints and closed coefficient-cube
faces. Tangent roots, multiple roots, identically-zero affine combinations,
and finite or infinite fibers remain inside that same event; the accepted
volume certificate already covers them through its multiplicity-safe
argument, and no root theorem or area formula is reproved here. Finally, the
right-hand side of (5) may exceed one; it remains a valid upper bound and is
not silently replaced by a clipped or small-interval statement.

### unit_002: lemma

**Lemma (Exact nonemptiness threshold for the admissible law class).**
\(\label{lem:step-004-a3-law-index}\)

Statement:
Under the basic setting \(N\ge1\), \(R>0\),
\(\kappa\in(0,\infty)\), \(A=(2R)^N\kappa\), and the definition of
\(\mathcal D_{N,R,\kappa}\), with no additional theorem assumption,
\[
\mathcal D_{N,R,\kappa}\ne\varnothing
\quad\Longleftrightarrow\quad
A\ge1.
\tag{10}
\]
At \(A=1\), the uniform cube density is admissible and saturates the cap; if
\(A<1\), the law class is empty.

Proof / justification:
First suppose \(\mathcal D_{N,R,\kappa}\ne\varnothing\), and choose
\(\mu\) in that class. Its density is nonnegative, vanishes almost
everywhere outside \(C=[-R,R]^N\), integrates to one, and is at most
\(\kappa\) almost everywhere. Therefore
\[
\begin{aligned}
1
&=\int_{\mathbb R^N}f_\mu(\alpha)\,d\lambda_N(\alpha)\\
&=\int_C f_\mu(\alpha)\,d\lambda_N(\alpha)\\
&\le\kappa\lambda_N(C)\\
&=\kappa(2R)^N
=A.
\end{aligned}
\tag{11}
\]
Thus nonemptiness implies \(A\ge1\). In particular, (11) rules out every
admissible density when \(A<1\); correlation cannot change the integral
constraint.

Conversely, suppose \(A\ge1\), and define
\[
f_{\rm unif}(\alpha)
=(2R)^{-N}\mathbf 1_{[-R,R]^N}(\alpha).
\tag{12}
\]
The cube-volume identity gives
\(\int_{\mathbb R^N}f_{\rm unif}\,d\lambda_N=1\), and this density vanishes
outside the cube. Moreover,
\[
(2R)^{-N}\le\kappa
\quad\Longleftrightarrow\quad
1\le\kappa(2R)^N=A.
\tag{13}
\]
Hence (12) defines a law in \(\mathcal D_{N,R,\kappa}\). At \(A=1\),
(13) is equality, so the boundary is included exactly. This proves (10)
without adding \(A\ge1\) to the theorem assumptions.

### unit_003: lemma

**Lemma (Exact nonemptiness threshold for positive-length intervals).**
\(\label{lem:step-004-a3-interval-index}\)

Statement:
Under the basic setting that \(\Theta\subset\mathbb R\) is a compact
interval, with no additional theorem assumption,
\[
\left\{I\subseteq\Theta:I\text{ is an interval and }|I|>0\right\}\ne
\varnothing
\quad\Longleftrightarrow\quad
|\Theta|>0.
\tag{14}
\]

Proof / justification:
If the class on the left is nonempty, choose one of its intervals \(I\).
Lebesgue-measure monotonicity under \(I\subseteq\Theta\) gives
\[
0<|I|\le|\Theta|,
\]
so \(|\Theta|>0\). Conversely, if \(|\Theta|>0\), the compact interval
\(\Theta\) itself is an interval contained in \(\Theta\) and has positive
length. Taking \(I=\Theta\) proves that the class is nonempty. Thus a
singleton or any other zero-length compact interval has no positive-length
subinterval, while every positive-length compact interval supplies one.
No endpoint convention or openness choice changes this equivalence.

### unit_004: proposition

**Proposition (Ordered suprema with exact nonempty and vacuous semantics).**
\(\label{prop:step-004-a3-ordered-suprema}\)

Statement:
Under accepted Lemma~\ref{lem:step-001-supported-root-compactness}, accepted
Proposition~\ref{prop:step-001-fixed-family-pivot-bound},
Proposition~\ref{prop:step-004-a3-exact-density-transfer},
Lemma~\ref{lem:step-004-a3-law-index}, and
Lemma~\ref{lem:step-004-a3-interval-index}, the following exhaustive branch
conclusions hold.

If \(A\ge1\) and \(|\Theta|>0\), then the interval supremum is taken first
and the law supremum second, and
\[
0\le
\sup_{\mu\in\mathcal D_{N,R,\kappa}}
\sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\phi_\alpha(\theta)=0]}{|I|}
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}
<\infty.
\tag{15}
\]
The middle quantity is therefore a finite nonnegative real.

If \(A<1\) or \(|\Theta|=0\), then at least one index class is empty and,
under the literal extended-real convention \(\sup\varnothing=-\infty\),
\[
\sup_{\mu\in\mathcal D_{N,R,\kappa}}
\sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\phi_\alpha(\theta)=0]}{|I|}
=-\infty
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
\tag{16}
\]
Equation (16) is a vacuous extended-real consequence, not a finite
nonnegative capacity. The universal pairwise theorem in
Proposition~\ref{prop:step-004-a3-exact-density-transfer} remains valid in
every branch.

Proof / justification:
Suppose first that \(A\ge1\) and \(|\Theta|>0\).
Lemmas~\ref{lem:step-004-a3-law-index} and
\ref{lem:step-004-a3-interval-index} show directly that the outer and inner
index classes are both nonempty. For a fixed
\(\mu\in\mathcal D_{N,R,\kappa}\),
Proposition~\ref{prop:step-004-a3-exact-density-transfer} gives, for every
indexed interval,
\[
0\le
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\phi_\alpha(\theta)=0]}{|I|}
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R},
\tag{17}
\]
where division is legal because \(|I|>0\). Take the supremum over intervals
in (17), for this fixed law, to obtain
\[
0\le
\sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\phi_\alpha(\theta)=0]}{|I|}
\le
\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
\tag{18}
\]
Now take the supremum of (18) over
\(\mu\in\mathcal D_{N,R,\kappa}\), yielding the first two comparisons in
(15) in the required inner-then-outer order. This is an order operation, not
a union bound over intervals or laws.

The right-hand side is finite only through the direct accepted `step_001`
interface: Lemma~\ref{lem:step-001-supported-root-compactness} handles empty
\(K_R\), and Proposition~\ref{prop:step-001-fixed-family-pivot-bound} handles
nonempty \(K_R\), jointly giving (3). Since \(A\) is a finite positive
setting quantity and \(R>0\), (3) proves the final strict inequality in
(15). Because both index classes are nonempty and every indexed ratio is
nonnegative, the two suprema are nonnegative real suprema rather than empty
extended-real values. If \(\Gamma_{\rm piv}=0\), (17) forces every ratio to
be zero and the ordered supremum is exactly zero. If
\(\Gamma_{\rm piv}>0\), the same finite upper bound applies.

Now suppose \(A<1\). Lemma~\ref{lem:step-004-a3-law-index} makes the outer
law class empty, so its supremum is \(-\infty\), regardless of the inner
class. This proves (16). Alternatively, suppose \(|\Theta|=0\).
Lemma~\ref{lem:step-004-a3-interval-index} makes the inner interval class
empty. If the law class is nonempty, every inner supremum is \(-\infty\) and
the outer supremum of the constant extended-real value \(-\infty\) is
\(-\infty\); if the law class is also empty, the outer empty-supremum
convention gives the same value. Thus (16) covers each single-empty and
double-empty branch.

At \(A=1\), Lemma~\ref{lem:step-004-a3-law-index} supplies the uniform cube
law, so this boundary belongs to (15) whenever \(|\Theta|>0\). No branch
condition is inserted into the pairwise proposition: when a class is empty,
its universal quantifier is simply vacuous, and when both are nonempty the
same pairwise statement is used before either supremum.

## Target-Step Assembly

Accepted Lemma~\ref{lem:step-003-a3-analytic-chart-events} and accepted
Proposition~\ref{prop:step-003-a3-volume-certificate} supply exactly the
Lebesgue-measurable original-coordinate event (1) and coefficient-volume
certificate (2). Under only the primitive full joint-density cap,
Proposition~\ref{prop:step-004-a3-exact-density-transfer} integrates the
same event against the same joint coefficient density and proves, for every
admissible law and every interval \(I\subseteq\Theta\) with \(|I|>0\),
\[
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
\phi_\alpha(\theta)=0\right]
=\Pr_\mu(S_I)
\le\kappa\lambda_N(S_I)
\le\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
\tag{19}
\]
This exact pairwise theorem is unconditional within the formalized setting
and is the only output from this step intended for `step_006`.

Lemma~\ref{lem:step-004-a3-law-index} proves directly that the outer law
class is nonempty exactly for \(A\ge1\), including \(A=1\), and
Lemma~\ref{lem:step-004-a3-interval-index} proves directly that the inner
interval class is nonempty exactly for \(|\Theta|>0\). Neither fact is an
assumption. Proposition~\ref{prop:step-004-a3-ordered-suprema} then takes the
inner interval supremum and the outer law supremum in that order. In the
nonempty branch it invokes strict finiteness directly from accepted
Lemma~\ref{lem:step-001-supported-root-compactness} and accepted
Proposition~\ref{prop:step-001-fixed-family-pivot-bound}, not from
`step_003`, and obtains the finite nonnegative real in (15). In every empty
branch it retains the literal value and inequality (16), without calling
\(-\infty\) a capacity. This ordered-supremum qualification is intended only
for final assembly.

The four named local results therefore prove every clause of the exact
accepted `step_004` row. No area formula is reproved, no new root theorem is
imported, and no finiteness conclusion is carried along the `step_003`
interface.

## Explicit Rate Audit

- Exposed variables: exactly \(N,R,\kappa,A=(2R)^N\kappa\),
  \(\Gamma_{\rm piv}(b,F;R)\), and \(|I|\). The pairwise rate is exactly
  \[
  \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
  =\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
  \]
- Hidden constants may depend on: None. There is no hidden constant.
- Hidden constants may not depend on: the deterministic family, its
  Pfaffian presentation, \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\),
  \(N,R,\kappa,A,\mu,I\), coefficient correlations, root multiplicity, a
  chart or pivot margin, or any unrecorded scale. Dependence on the fixed
  family is represented explicitly by \(\Gamma_{\rm piv}\), not hidden.
- Fixed quantities: the deterministic family \((b,F)\), its exact common
  Pfaffian presentation, compact \(\Theta\), and \(N,R,\kappa,A\) are fixed.
  The law \(\mu\) and positive-length interval \(I\) vary pairwise, followed
  by the displayed inner interval and outer law suprema when interpreted.
- Probability mode: ordinary completed-law probability for each fixed
  \((\mu,I)\); then, only in the assembly-only consequence, an inner interval
  supremum and outer law supremum. There is no expectation, conditioning,
  confidence level, high-probability conversion, or union bound.
- Horizon mode: static pairwise and interval-uniform scope. There is no time
  horizon, asymptotic regime, stopping rule, recurrence, or all-time upgrade.
- Norm mode: the setting's \(\ell_1\) feasibility test defining \(K_R\), the
  coordinate-ratio variation defining \(\Gamma_{\rm piv}\), one-dimensional
  Lebesgue interval length, and \(N\)-dimensional Lebesgue measure in the
  original coefficient coordinates.
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  \(\kappa>0\), \(\mu\in\mathcal D_{N,R,\kappa}\), and an interval
  \(I\subseteq\Theta\) with \(|I|>0\). There is no auxiliary tolerance or
  small-interval threshold. The conditions \(A\ge1\) and \(|\Theta|>0\)
  classify only whether the supremum indices are nonempty; they are not
  assumptions of (19).
- Term absorption or simplification inequalities: no term is dropped or
  absorbed. The only simplification is the equality
  \(\kappa(2R)^{N-1}=A/(2R)\). The factor \((2R)^{N-1}\), including its
  \(N=1\) value one, is inherited literally from accepted `step_003`.
- Probability conversion: exactly
  \(\Pr_\mu(S_I)=\int_{S_I}f_\mu\,d\lambda_N
  \le\kappa\lambda_N(S_I)\). This uses the full joint density and no
  marginalization, conditioning, confidence conversion, or law/interval
  union bound.
- Contribution to any Rate Specialization Bridge: (19), and only (19), is
  exported to `step_006` for the exact affine-monic substitution. The
  branch-qualified ordered-supremum semantics are routed only to final
  assembly.
- Baseline-reduction check, if applicable: the pairwise theorem remains on
  the original random lower-coefficient vector and the identical affine
  event, with exact constant and arbitrary dependence allowed by the joint
  density class. Thus `step_006` can recover the exact monic baseline without
  using \(A\ge1\), \(|\Theta|>0\), or the ordered-supremum interpretation.
  No conservative remainder, clipped probability, changed dimension, or
  independent baseline theorem is introduced.

## Blockers

None

## Notation And Assumption Notes

- Public-facing objects: the setting-defined
  \(N,R,\kappa,A,\Gamma_{\rm piv}(b,F;R),|I|\), and the accepted exact event
  \(S_I\). The minimal public export is the pairwise theorem (19). The
  ordered-supremum formula is an assembly-only semantic consequence, not an
  additional output to `step_006`.
- Proof-local helper objects: \(C=[-R,R]^N\), the per-law density \(f_\mu\),
  the uniform density \(f_{\rm unif}\), and the individual ratio in (17).
  Each is directly defined from setting objects. No helper is exported or
  hides a bound. The positive-length interval class is always written in its
  full displayed form rather than exported under a new symbol.
- Appendix-local helper objects: None.
- Constant provenance: \(A=(2R)^N\kappa\) is setting-defined;
  \((2R)^{N-1}\) is inherited literally from accepted
  Proposition~\ref{prop:step-003-a3-volume-certificate}; and
  \(A/(2R)\) is proved by (9). The finite value of
  \(\Gamma_{\rm piv}\) comes directly from accepted
  Lemma~\ref{lem:step-001-supported-root-compactness} and accepted
  Proposition~\ref{prop:step-001-fixed-family-pivot-bound}. No new constant,
  radius, margin, threshold, or tolerance is introduced.
- Assumption provenance: the full joint-density cap is primitive through
  Assumption~\ref{assump:joint-density-cap}. Event measurability and
  coefficient volume are accepted derived outputs of `step_003`; strict
  fixed-family finiteness is a separate accepted derived output of
  `step_001`. Law-class and interval-class nonemptiness are proved locally by
  Lemmas~\ref{lem:step-004-a3-law-index} and
  \ref{lem:step-004-a3-interval-index}. No generated-object, event,
  local-validity, stability, boundedness, recurrence, or invariant fact is
  promoted to a primitive condition.
- Quantifier and probability audit: the order is fixed deterministic family,
  then each admissible law, then each positive-length interval for the
  pairwise theorem. Only afterward is the interval supremum taken, followed
  by the law supremum. Every probability is ordinary probability under the
  completed law, not outer probability, conditional probability, or a
  confidence statement.
- Correlation audit: (8) integrates the complete \(N\)-dimensional density
  over \(S_I\). It does not factor \(f_\mu\), invoke coordinate
  independence, or assert a marginal or conditional density cap. Any
  coefficient dependence compatible with \(\mathcal D_{N,R,\kappa}\) is
  retained.
- Boundary and degeneracy audit: \(A=1\) belongs to the nonempty law branch;
  \(A<1\) gives an empty law class; and \(|\Theta|=0\) gives an empty inner
  interval class. Empty \(K_R\) and empty \(S_I\) give zero pairwise
  probability. Zero \(\Gamma_{\rm piv}\) forces every nonempty-branch ratio
  to zero; positive \(\Gamma_{\rm piv}\) uses the same bound. Bounds above
  one are allowed. The accepted `step_003` interface retains every actual
  interval endpoint, cube face and corner, tie, arbitrarily small selected
  pivot, tangent or multiple root, identically-zero affine combination,
  finite or infinite fiber, and the \(N=1\) convention. Density transfer
  does not alter any of these cases.
- Empty-supremum audit: if the outer law class is empty, the ordered
  expression is \(-\infty\). If the inner interval class is empty, every
  available inner supremum is \(-\infty\), and the outer result is also
  \(-\infty\); if both are empty, the same value follows immediately. These
  are literal extended-real inequalities only and are never described as a
  finite nonnegative capacity.
- Forbidden-shortcut audit: there is no small-interval threshold, confidence
  conversion, union bound over laws or intervals, clipping by one, hidden
  constant, independence assumption, marginal density, conditional density,
  transformed coefficient system, new root theorem, or reproof of the area
  formula. No polynomial general-instance control of
  \(\Gamma_{\rm piv}\) is claimed from \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\)
  or any other Pfaffian descriptor.
- Producer-consumer boundary: `step_003` produces only exact event
  measurability and coefficient volume for
  Proposition~\ref{prop:step-004-a3-exact-density-transfer}; `step_001`
  directly produces strict finiteness only for
  Proposition~\ref{prop:step-004-a3-ordered-suprema}. The pairwise output is
  consumed by `step_006` and final assembly. The branch-qualified
  ordered-supremum output is consumed only by final assembly.
- Optional diagnostic boundary: the accepted global proof/review pair was
  hash-verified but not read. It supplies no evidence, cited result,
  assumption, notation, local unit, or authority to change the target.
- Same-step history boundary: before overwrite, the live sketch-attempt-2
  proof/review pair had SHA-256 values
  `5ba08d410b755f28421fa6ba4b0ca9d711c6b22bcc5a2ab495cbede7c400da31`
  and
  `54ae9ba06258838d123af6f4a5b70ce1cb8f77383d89b636906783112faa712a`.
  Byte-identical copies were verified in
  `proof_history/sketch_002/proof_steps/step_004/attempt_001/`. Only the old
  review was consulted, and only as failure-diagnostic history; the old proof
  was hash-verified but not read. Neither supplies current evidence. Every
  identity, dependency restatement, local unit, theorem label, and derivation
  in this artifact is regenerated for sketch attempt 3.
- Freshness and scope audit: the binding idea, setting, accepted sketch,
  accepted sketch review, optional diagnostic pair, controller-open tracker,
  and both declared dependency pairs were hash-verified before overwrite.
  No undeclared dependency step was inspected or consumed as mathematical
  input. This producer changes only the live
  `proof_steps/step_004/proof.md`; it does not change the consumed
  attempt-2 review or any controller-owned or accepted artifact.
- Progress boundary: the result remains `material_partial`. It proves exact
  fixed-family pairwise anti-concentration and the exact branch semantics,
  but the full-source problem of polynomial general-instance control of
  \(\Gamma_{\rm piv}(b,F;R)\) from
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or other meaningful Pfaffian
  instance descriptors remains unresolved and is not disguised as a local
  blocker or hidden dependence.
