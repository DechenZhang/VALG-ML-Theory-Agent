# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_004` | For every arbitrary correlated \(\mu\) and interval \(I\), prove \(\Pr(\exists\mathrm{root})\leq A\sqrt{N/2}\int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta\). | `step_003` | Primitive: `assump:parameter-regime`, `assump:cube-density-laws`; derived: `step_003` incidence-volume interface | Map Ball's source convention exactly, handle \(N=1\), and expose the algebra converting cube support, section area, and density cap to \(A\sqrt{N/2}\). | Ball, *Cube Slicing in \(\mathbb R^n\)*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0; Cauchy--Schwarz and density integration. | Central all-law local-length interface. | R2: exact \(A,N,R,\kappa\) dependence; ordinary probability; interval-uniform. | PENDING |

Equivalently, with the root event written out, the exact claim is that for
every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\),
\[
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]
\leq
A\sqrt{\frac N2}\int_I\|\gamma_F'(\theta)\|_2\,d\theta.
\tag{4.1}
\]

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(N\geq1\), \(R>0\),
    \(0<\kappa<\infty\), \(\Theta=[c-h,c+h]\), the coefficient cube is
    \([-R,R]^N\), and the setting-defined constant is
    \(A=(2R)^N\kappa\). Nonemptiness of
    \(\mathcal D_{N,R,\kappa}\) is part of the parameter regime, although
    the resulting inequality \((2R)^N\kappa\geq1\) is not used.
  - `assump:cube-density-laws`: after the deterministic presentation is
    fixed, \(\mu\) is an arbitrary member of
    \(\mathcal D_{N,R,\kappa}\). Thus it has one full joint Lebesgue
    density \(f_\mu\), supported on \([-R,R]^N\), with
    \(\|f_\mu\|_\infty\leq\kappa\). No factorization, marginal-density
    cap, coordinate independence, or conditional-density cap is assumed.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-003-central-volume} from the accepted
    `step_003` proof gives, for every interval \(I\subseteq\Theta\),
    \[
    \operatorname{Leb}^N
    \left\{a\in[-R,R]^N:
      \exists\theta\in I,\ \langle a,F(\theta)\rangle=0\right\}
    \leq
    \int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
    \left|\langle\gamma_F'(\theta),a\rangle\right|
    \,d\mathcal H^{N-1}(a)\,d\theta.
    \tag{4.2}
    \]
    The accepted dependency also certifies measurability of the coefficient
    root set and covers tangent roots, multiple roots, interval endpoints,
    stationary pieces, identically-zero combinations, and all empty,
    singleton, open, closed, and half-open interval conventions. Its proof is
    `perspective_1/idea_1/proof_steps/step_003/proof.md`, SHA-256
    `721b5a3fbbab80ff7c552a925be233a0b3757c9abaa95f860a40708c3d06e56e`.
    Its review is
    `perspective_1/idea_1/proof_steps/step_003/review.md`, status `ACCEPTED`,
    SHA-256
    `4deff6ec278ea016923b549d572393b3f2a840464ef983d1c6b1ce5722568579`.
- Local conditional hypotheses: None. The restrictions \(N=1\) and
  \(N\geq2\) below are exhaustive proof branches, not theorem-facing
  conditions. Likewise, \(\mu\) and \(I\) are arbitrary quantified objects,
  not conditional hypotheses.

No conclusion from `global_proof.md`, no coordinate-independence property,
and no confidence event is an allowed assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:parameter-regime}, if \(N\geq2\) and \(v\in\mathbb R^N\) satisfies \(\lVert v\rVert_2=1\), then the central section obeys \(\mathcal H^{N-1}(v^\perp\cap[-R,R]^N)\leq\sqrt2(2R)^{N-1}\). | Translates Ball's unit-volume, centered-cube convention to the exact central sections in (4.2), with the full dilation factor and no translated-section use. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:cube-density-laws}, accepted Proposition~\ref{prop:step-003-central-volume}, and, in the branch \(N\geq2\), Lemma~\ref{lem:step-004-scaled-ball}, every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\), including empty, singleton, open, closed, and half-open intervals, satisfy (4.1). | Combines the exact incidence volume, pointwise Euclidean bound, central section cap, and the single full-density cap, and performs the literal constant algebra. |

Atomic step = no. Exact source-convention scaling is logically independent
of the probability conversion and is therefore exposed as its own lemma.

## Cited Result Applications

1. **Ball's central cube-section theorem (paper result, restated in the
   source convention).** Keith Ball, *Cube Slicing in R^n*, Proc. Amer.
   Math. Soc. 97 (1986), no. 3, 465--473, main theorem,
   DOI:10.1090/S0002-9939-1986-0840631-0. For every integer \(n\geq2\), let
   \[
   Q_n=[-1/2,1/2]^n.
   \]
   If \(H\subset\mathbb R^n\) is a Euclidean linear hyperplane through the
   origin, then
   \[
   \mathcal H^{n-1}(Q_n\cap H)\leq\sqrt2.
   \tag{4.3}
   \]
   Here the source's intrinsic \((n-1)\)-dimensional Euclidean volume on
   \(H\) is exactly the restriction of \(\mathcal H^{n-1}\) to \(H\).
   The cube has side length one, volume one, and center zero.

   In Lemma~\ref{lem:step-004-scaled-ball}, the source objects are mapped by
   \(n=N\), \(H=v^\perp\), and the similarity \(y\mapsto2Ry\). Assumption
   \ref{assump:parameter-regime} and the local branch give \(N\geq2\) and
   \(R>0\); \(\|v\|_2=1\) makes \(v^\perp\) a Euclidean linear hyperplane
   through zero. Thus every source hypothesis is discharged. The conclusion
   used is only (4.3). Ball is not used for an affine translate of
   \(v^\perp\), for hyperplane motion, for \(N=1\), or for any probability
   or independence conclusion.

2. **Hausdorff-measure scaling under a Euclidean similarity (standard fact,
   restated).** If \(s>0\), \(m\geq0\), and \(E\subseteq\mathbb R^N\) is
   Borel, then
   \[
   \mathcal H^m(sE)=s^m\mathcal H^m(E).
   \tag{4.4}
   \]
   This follows directly from the definition of Hausdorff measure because
   the dilation multiplies every covering diameter by \(s\), and applying
   the inverse dilation gives the reverse inequality. The application has
   \(s=2R>0\), \(m=N-1\), and
   \(E=Q_N\cap v^\perp\).

3. **Proposition~\ref{prop:step-003-central-volume} (accepted dependency,
   restated).** Under its already discharged assumptions, it proves (4.2)
   for every interval \(I\subseteq\Theta\) using \(N\)-dimensional
   Lebesgue measure in coefficient space and
   \((N-1)\)-dimensional Euclidean Hausdorff measure on the central section.
   It also proves that the coefficient root set is Borel measurable. Its
   area/coarea multiplicity mechanism includes tangent, multiple, endpoint,
   stationary, and identically-zero cases. For \(N=1\), it certifies that
   the central section is \(\{0\}\), the normalized curve is constant, and
   both the root-set coefficient volume and the integral in (4.2) are zero.
   The accepted proof and review identities are recorded in `## Allowed
   Assumptions And Dependencies`. This step uses exactly that exported
   coefficient-volume interface and does not reopen its geometric proof.

4. **Cauchy--Schwarz in Euclidean coefficient space (standard inequality,
   restated).** For all \(u,a\in\mathbb R^N\),
   \[
   |\langle u,a\rangle|\leq\|u\|_2\|a\|_2.
   \tag{4.5}
   \]
   In Proposition~\ref{prop:step-004-correlated-central-sweep},
   \(u=\gamma_F'(\theta)\), while
   \(a\in[-R,R]^N\) gives
   \(\|a\|_2^2\leq NR^2\). Hence the exact pointwise consequence is
   \[
   |\langle\gamma_F'(\theta),a\rangle|
   \leq R\sqrt N\,\|\gamma_F'(\theta)\|_2.
   \tag{4.6}
   \]

5. **Integration against a Lebesgue density (definition, restated).** If a
   Borel probability law \(\mu\) has Lebesgue density \(f_\mu\), then for
   every Borel \(E\subseteq\mathbb R^N\),
   \(\mu(E)=\int_E f_\mu(a)\,da\). Assumption
   \ref{assump:cube-density-laws} gives one full joint density with
   \(0\leq f_\mu\leq\kappa\) almost everywhere and support in
   \([-R,R]^N\). Therefore
   \[
   \mu(E\cap[-R,R]^N)
   \leq\kappa\operatorname{Leb}^N(E\cap[-R,R]^N).
   \tag{4.7}
   \]
   This is one joint-density integration; it uses no coordinate-wise
   conditioning, product formula, or independence assumption.

6. **Lemma~\ref{lem:step-004-scaled-ball} (local section lemma).** Under the
   primitive parameter regime and the local branch \(N\geq2\), it maps
   Ball's checked source result to the exact cube and central hyperplane in
   (4.2). It is proved in `unit_001` and used by
   Proposition~\ref{prop:step-004-correlated-central-sweep}.

7. **Proposition~\ref{prop:step-004-correlated-central-sweep} (local target
   proposition).** Under exactly the target assumptions, accepted dependency,
   and the scaled-section lemma in the \(N\geq2\) branch, it proves (4.1)
   for every admissible law and interval. It is proved in `unit_002` and is
   the sole mathematical output exported by this step.

## Local Derivation

### unit_001: lemma

**Lemma (Exact scaling of Ball's central cube section).**
\label{lem:step-004-scaled-ball}
Under Assumption~\ref{assump:parameter-regime}, suppose \(N\geq2\), and let
\(v\in\mathbb R^N\) satisfy \(\|v\|_2=1\). Then
\[
\mathcal H^{N-1}\!\left(v^\perp\cap[-R,R]^N\right)
\leq\sqrt2(2R)^{N-1}.
\tag{4.8}
\]

**Proof / justification.** Put \(Q_N=[-1/2,1/2]^N\) and
\(H=v^\perp\). The hypotheses \(N\geq2\) and \(\|v\|_2=1\) make \(H\)
a Euclidean linear hyperplane through the origin, so Ball's theorem (4.3)
applies and gives
\[
\mathcal H^{N-1}(Q_N\cap H)\leq\sqrt2.
\tag{4.9}
\]
Let \(D_R(y)=2Ry\). Assumption~\ref{assump:parameter-regime} gives \(R>0\).
The cube and hyperplane transform exactly as
\[
D_R(Q_N)=[-R,R]^N,
\qquad D_R(H)=H,
\]
where the second equality uses that \(H\) is linear. Consequently
\[
D_R(Q_N\cap H)
=D_R(Q_N)\cap D_R(H)
=[-R,R]^N\cap H.
\tag{4.10}
\]
Applying (4.4) with dimension \(N-1\) to (4.10), and then (4.9), yields
\[
\begin{aligned}
\mathcal H^{N-1}\!\left(H\cap[-R,R]^N\right)
&=(2R)^{N-1}\mathcal H^{N-1}(H\cap Q_N)\\
&\leq\sqrt2(2R)^{N-1}.
\end{aligned}
\]
This proves (4.8). Every hyperplane used here contains the origin. In
particular, the proof neither invokes nor derives a bound for a translated
section \((b+v^\perp)\cap[-R,R]^N\). \(\square\)

### unit_002: proposition

**Proposition (Central sweep bound for an arbitrary capped joint law).**
\label{prop:step-004-correlated-central-sweep}
Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:cube-density-laws}, accepted
Proposition~\ref{prop:step-003-central-volume}, and, when \(N\geq2\),
Lemma~\ref{lem:step-004-scaled-ball}, every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\), including empty, singleton, open, closed, and
half-open intervals, satisfy
\[
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]
\leq
A\sqrt{\frac N2}\int_I\|\gamma_F'(\theta)\|_2\,d\theta.
\tag{4.11}
\]

**Proof / justification.** Fix the deterministic setting first. Then fix an
arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\), and only then fix an arbitrary
interval \(I\subseteq\Theta\). Define the proof-local Borel set
\[
E_I:=\left\{a\in[-R,R]^N:
  \exists\theta\in I,\ \langle a,F(\theta)\rangle=0\right\}.
\tag{4.12}
\]
Its Borel measurability is part of accepted
Proposition~\ref{prop:step-003-central-volume}. Since \(\mu\) is supported
on \([-R,R]^N\), (4.7) gives the only probability conversion used here:
\[
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]
=\int_{E_I}f_\mu(a)\,da
\leq\kappa\operatorname{Leb}^N(E_I).
\tag{4.13}
\]

First suppose \(N=1\). The accepted dependency supplies the same \(C^1\)
unit normalized curve used in (4.2). Thus \(\gamma_F(\theta)^2=1\) for every
\(\theta\). Differentiating gives
\(2\gamma_F(\theta)\gamma_F'(\theta)=0\); since
\(|\gamma_F(\theta)|=1\), it follows that \(\gamma_F'=0\). For either
possible unit value,
\[
\gamma_F(\theta)^\perp\cap[-R,R]=\{0\}.
\]
Although \(\mathcal H^0(\{0\})=1\), the section integrand is
\(|\langle\gamma_F'(\theta),0\rangle|=0\). Hence (4.2) gives
\(\operatorname{Leb}^1(E_I)=0\), (4.13) makes the probability zero, and the
right side of (4.11) is also zero. This proves the \(N=1\) branch directly
for every interval convention, including the empty and singleton cases.

Now suppose \(N\geq2\). Accepted
Proposition~\ref{prop:step-003-central-volume} and (4.13) imply
\[
\begin{aligned}
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]
&\leq\kappa\int_I
 \int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
 |\langle\gamma_F'(\theta),a\rangle|
 \,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\tag{4.14}
\]
For every fixed \(\theta\), (4.6) and
Lemma~\ref{lem:step-004-scaled-ball}, applied with the unit vector
\(v=\gamma_F(\theta)\), give
\[
\begin{aligned}
&\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
 |\langle\gamma_F'(\theta),a\rangle|
 \,d\mathcal H^{N-1}(a)\\
&\quad\leq
R\sqrt N\,\|\gamma_F'(\theta)\|_2\,
\mathcal H^{N-1}\!\left(
  \gamma_F(\theta)^\perp\cap[-R,R]^N\right)\\
&\quad\leq
R\sqrt N\,\sqrt2(2R)^{N-1}
\|\gamma_F'(\theta)\|_2.
\end{aligned}
\tag{4.15}
\]
This application is to the central linear hyperplane
\(\gamma_F(\theta)^\perp\); no translated section occurs.

Substitution of (4.15) into (4.14) gives
\[
\Pr_{\alpha\sim\mu}[\exists\mathrm{root\ in\ }I]
\leq
\kappa R\sqrt N\,\sqrt2(2R)^{N-1}
\int_I\|\gamma_F'(\theta)\|_2\,d\theta.
\tag{4.16}
\]
The coefficient in (4.16) simplifies with no inequality and no hidden
constant. Indeed,
\[
\begin{aligned}
\kappa R\sqrt N\,\sqrt2(2R)^{N-1}
&=\kappa(2R)^N\frac{\sqrt{2N}}2\\
&=\kappa(2R)^N\sqrt{\frac N2}\\
&=A\sqrt{\frac N2},
\end{aligned}
\tag{4.17}
\]
where the first equality uses
\(R(2R)^{N-1}=(2R)^N/2\), and the last uses the setting's exact definition
\(A=(2R)^N\kappa\). Equations (4.16)--(4.17) prove (4.11).

Nothing in the derivation depends on endpoint inclusion. For an empty or
singleton interval the accepted interface already gives zero coefficient
volume and the Lebesgue integral is zero. For a nondegenerate open, closed,
or half-open interval, the same accepted interface has already accounted for
endpoint root hyperplanes, tangent and multiple roots, stationary pieces,
and identically-zero combinations by null coefficient sets or projection
multiplicity. Applying the single full-density bound (4.13) preserves those
null sets under every admissible correlated law. Since \(\mu\) and \(I\)
were arbitrary after the deterministic presentation was fixed, (4.11) has
the claimed all-law, all-interval quantifier order. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-003-central-volume} supplies the exact
root-set coefficient-volume inequality, its Borel measurability, and all
root-multiplicity and interval-boundary handling. Lemma~\ref{lem:step-004-scaled-ball}
checks Ball's source convention and gives the exact orientation-uniform
central section measure for \(N\geq2\); the accepted dependency supplies the
zero-volume mechanism directly for \(N=1\). Cauchy--Schwarz and cube support
give the pointwise factor \(R\sqrt N\|\gamma_F'\|_2\), while the single full
joint-density integration gives
\(\Pr(E_I)\leq\kappa\operatorname{Leb}^N(E_I)\) without independence.
Proposition~\ref{prop:step-004-correlated-central-sweep} composes these
inputs and the exact identity
\[
\kappa R\sqrt N\,\sqrt2(2R)^{N-1}
=A\sqrt{\frac N2}
\]
to prove, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\),
\[
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]
\leq
A\sqrt{\frac N2}\int_I\|\gamma_F'(\theta)\|_2\,d\theta.
\]
This is exactly the accepted `step_004` claim and exports no stronger or
weaker statement.

## Explicit Rate Audit

- Exposed variables: \(N\), \(R\), \(\kappa\),
  \(A=(2R)^N\kappa\), the interval \(I\), and the exact Euclidean local
  speed \(\|\gamma_F'(\theta)\|_2\). No \(q,M,\Delta,B_P,B_Q\), or \(h^{-1}\)
  specialization is performed in this step.
- Hidden constants may depend on: None. The only numerical section constant
  is Ball's literal \(\sqrt2\), and every dilation and radius factor is
  displayed.
- Hidden constants may not depend on: \(N,R,\kappa,A,\mu,I,F\), coefficient
  correlation, section orientation, root multiplicity, or endpoint
  convention.
- Fixed quantities: The deterministic feature presentation, \(\Theta\), and
  \(N,R,\kappa\) are fixed first. The result then ranges over every
  \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
  \(I\subseteq\Theta\).
- Probability mode: Ordinary probability for each fixed arbitrary correlated
  law. There is no expectation, high-probability event, confidence parameter,
  conditioning conversion, marginalization argument, or union bound.
- Horizon mode: A deterministic per-interval inequality for every interval,
  including empty and singleton intervals and all endpoint conventions. It is
  therefore available for every positive-length interval, but no supremum or
  all-time upgrade is taken in this step.
- Norm mode: The Euclidean inner product and \(\ell_2\) norm on
  \(\mathbb R^N\), \(N\)-dimensional Lebesgue measure in coefficient space,
  and \((N-1)\)-dimensional Euclidean Hausdorff measure on central sections.
  For \(N=1\), the section measure is \(\mathcal H^0\).
- Admissibility conditions and auxiliary tolerances: Exactly
  Assumptions~\ref{assump:parameter-regime} and
  \ref{assump:cube-density-laws}, together with accepted
  Proposition~\ref{prop:step-003-central-volume}. There is no auxiliary
  tolerance, transversality threshold, simple-root condition, or density
  factorization.
- Term absorption or simplification inequalities: The sole pointwise
  domination is
  \[
  |\langle\gamma_F'(\theta),a\rangle|
  \leq R\sqrt N\|\gamma_F'(\theta)\|_2,
  \]
  and the constant simplification is the exact equality
  \[
  \kappa R\sqrt N\sqrt2(2R)^{N-1}
  =\kappa(2R)^N\sqrt{N/2}
  =A\sqrt{N/2}.
  \]
  No term is dropped, absorbed, or declared lower order.
- Probability conversion: For the Borel coefficient root set \(E_I\),
  \[
  \Pr_{\alpha\sim\mu}(E_I)
  =\int_{E_I}f_\mu(a)\,da
  \leq\kappa\operatorname{Leb}^N(E_I).
  \]
  This uses only the one full joint-density cap and remains valid under
  arbitrary coordinate correlation.
- Contribution to any Rate Specialization Bridge: This step completes the R2
  incidence-to-probability bridge with exact \(A,N,R,\kappa\) dependence.
  The later `step_005` may bound the speed integral and take the specified
  positive-length interval suprema; neither operation is performed here.
- Baseline-reduction check, if applicable: For \(N=1\), the central section
  is \(\{0\}\), the integrand is zero, the root coefficient set has
  one-dimensional Lebesgue measure zero, and (4.1) reduces exactly to
  \(0\leq0\). More generally, a zero normalized speed on the interval makes
  the accepted incidence integral and hence the probability zero. There is
  no conservative loss. The separate affine-monic baseline is neither used
  nor altered by this central step.

## Blockers

None

## Notation And Assumption Notes

- The setting-defined objects \(F\), \(\gamma_F\), \(\Theta\), \(N\),
  \(R\), \(\kappa\), and \(A=(2R)^N\kappa\) retain their original meanings.
  The final inequality (4.1) is the sole `public-facing` interface.
- \(Q_N=[-1/2,1/2]^N\) is a `proof-local` translation of Ball's source cube.
  It is used only in Lemma~\ref{lem:step-004-scaled-ball} and is not exported.
- \(H=v^\perp\) and \(D_R(y)=2Ry\) are `proof-local` cited-result mapping
  objects. Their centrality and scaling properties are proved in
  Lemma~\ref{lem:step-004-scaled-ball}; no translated hyperplane or new
  radius is introduced.
- \(E_I\) is a `proof-local` Borel root coefficient set defined from the
  setting objects and the quantified interval. Its measurability and volume
  interface are supplied by accepted
  Proposition~\ref{prop:step-003-central-volume}; it is not an assumed good
  event or a local conditional hypothesis.
- \(f_\mu\) is the `proof-local` name for the setting-authorized full joint
  density of the arbitrary law \(\mu\). Its support and cap are primitive
  facts from Assumption~\ref{assump:cube-density-laws}, not generated
  invariants.
- Constant provenance: \(\sqrt2\) is the checked literal conclusion of
  Ball's theorem; \((2R)^{N-1}\) is proved by Euclidean Hausdorff scaling;
  \(R\sqrt N\) is proved from cube support and Cauchy--Schwarz; \(\kappa\)
  is the primitive full-density cap; and \(A\) is defined exactly in the
  setting. No free constant, threshold, margin, rate, or bounded quantity is
  introduced.
- Assumption provenance: only the primitive parameter regime and full
  joint-density law condition are invoked directly. Root-set measurability,
  the incidence-volume estimate, the unit normalized section convention, and
  the \(N=1\) zero-volume mechanism are accepted derived outputs of
  Proposition~\ref{prop:step-003-central-volume}. No generated condition is
  promoted to a primitive assumption.
- The optional `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was verified to have status `ACCEPTED`, with
  supplied hashes
  `ab5340e84579424a3359d13063e91ed62e3db868b3b126c0bf10e5073f98153f`
  and
  `bc4164bc1cad6e4856ee1268a586fbd17d5f8aa319f69716ea73b3da580f28c2`.
  Its step-relevant planning suggestion was the same section-cap,
  cube-radius, and density-cap composition independently proved above. It was
  not used as evidence, a cited result, an assumption source, or authority to
  change the target claim, dependency, scope, measures, or constants.
