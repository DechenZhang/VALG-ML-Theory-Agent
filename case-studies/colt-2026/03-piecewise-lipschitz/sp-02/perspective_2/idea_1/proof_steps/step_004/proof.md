# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_004`
- Unit attempt: 1
- Binding idea SHA-256:
  `5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596`
- Binding setting SHA-256:
  `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding accepted sketch SHA-256:
  `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Binding accepted sketch-review SHA-256:
  `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Accepted dependency `step_003` proof SHA-256:
  `e49284222ce24bde4b3ae8b5f8d1434622c09bfd3a39eb512641169e55e2d7a0`
- Accepted dependency `step_003` review SHA-256:
  `4d6a93d359e6559d49d306809fe8ad925eb03a262c36446591c846632a6e1ff8`
- Diagnostic-only accepted global proof SHA-256:
  `bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc`
- Diagnostic-only accepted global review SHA-256:
  `c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146`
- Consumed sketch-attempt-1 same-step proof SHA-256:
  `cbda35c61b01723ae2ccf9c9e052048bdafc6e8d87a108436c750c8a6574a064`
- Consumed sketch-attempt-1 same-step review SHA-256:
  `9c9587b882088cca10d00e7bb53d040f55f2ba0425cd4c6e44c5d82647e671f3`
- Same-step archive identity: the two consumed hashes are reproduced byte-identically at
  `perspective_2/idea_1/proof_history/sketch_001/proof_steps/step_004/attempt_001/`.
- Evidence boundary: only the current setting, accepted sketch and sketch review, and the current accepted
  `step_003` proof/review pair are proof evidence. The accepted global pair supplied planning context only.
  The consumed sketch-attempt-1 proof/review pair and its archive supplied same-step diagnostic prompts only.
  No statement, dependency claim, theorem label, or derivation from either diagnostic source is used as
  mathematical authority below.

## Target Step Claim

The exact accepted sketch-attempt-2 row is:

- Intended claim: Prove the fixed-section identity
  \(\lvert T_j'\rvert d\beta=\lvert F_0'+\langle a,F'\rangle\rvert
  d\mathcal H^{N-1}/\lVert F\rVert\), sum it over the partition, and derive the coordinate-free first affine
  swept-area inequality.
- Depends on: `step_003`.
- Assumptions used: Derived: `step_003`; primitive feature definitions from
  `assump:anchored-derivative-closure`.
- Technical challenge: Match the chart and Hausdorff Jacobians exactly so pivot denominators cancel and no
  second root theorem is introduced.
- Intended proof tool or cited result: Direct differentiation of the chart equation and Euclidean graph/section
  Jacobian calculation.
- Output target: Coordinate-free affine normal-velocity interface.
- Rate objective: R2 and R3: exact first sweep integral.
- Row-local review status: PENDING. Sketch-level acceptance is supplied by the binding accepted
  proof-sketch review recorded above.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:anchored-derivative-closure`: this step uses only the original setting-defined feature tuple
    \((F_0,F)\), its setting-defined derivatives, the original coefficient coordinates, and the literal anchor
    \(F_{j_*}\equiv1\). Thus \(F(\theta)\neq0\) and \(\lVert F(\theta)\rVert_2\geq1\) on \(\Theta\), so the
    target normal-velocity denominator is defined and the anchor supplies a measurable fallback pivot
    partition. The matrix identity \(\widetilde F'=B\widetilde F\), the matrix \(B\), its coefficient height,
    and every consequence concerning section size, velocity size, projective speed, or a final probability
    rate are unused.
- Derived invariants supplied by accepted dependencies:
  - The current accepted Exhausted affine pivot-sweep
    Proposition~\ref{prop:step-003-pivot-sweep}, from the `step_003` proof/review pair whose hashes appear in
    Step Identity, supplies the indicator-form chart inequality for the original \(N\)-dimensional coefficient
    vector. Its exact statement is restated in Cited Result Applications.
- Local conditional hypotheses: None. Fixing an arbitrary \(\theta\in E_j\), or equivalently fixing a legal
  pivot with \(F_j(\theta)\neq0\), instantiates the universally quantified measurable legal partition; it is
  not a theorem-facing pivot margin. No positive lower bound on \(\lvert F_j\rvert\) is assumed or exported.
- Accepted dependency artifacts used:
  - `perspective_2/idea_1/proof_steps/step_003/proof.md`, sketch attempt 2, unit attempt 1, with SHA-256
    `e49284222ce24bde4b3ae8b5f8d1434622c09bfd3a39eb512641169e55e2d7a0`.
  - `perspective_2/idea_1/proof_steps/step_003/review.md`, with matching step identity, reviewed-proof digest
    equal to the preceding digest, and review status `ACCEPTED`; its own SHA-256 is
    `4d6a93d359e6559d49d306809fe8ad925eb03a262c36446591c846632a6e1ff8`.
  - No undeclared dependency proof, later proof step, final theorem, or diagnostic statement is consumed.

A measurable legal pivot partition has the exact dependency meaning

\[
I=\bigsqcup_{j=1}^N E_j,
\qquad E_j\text{ Lebesgue measurable},
\qquad F_j(\theta)\neq0\quad(\theta\in E_j).
\]

The deterministic instance is fixed first. The law \(\mu\), the positive-length interval \(I\) with its
literal endpoint convention, and the measurable legal partition are then arbitrary in that order. All
nonnegative integrals below take values in \([0,\infty]\).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:anchored-derivative-closure}, if \(\theta\in\Theta\) and \(F_j(\theta)\neq0\), then \(\beta\mapsto\Psi_j(\theta,\beta)\) bijects the exact indicator domain onto \(H_\theta\cap[-R,R]^N\), and its Euclidean graph Jacobian is \(\lVert F(\theta)\rVert_2/\lvert F_j(\theta)\rvert\), including \(N=1\). | Identifies the actual section and computes the exact Hausdorff pullback factor. |
| unit_002 | lemma | Under Assumption~\ref{assump:anchored-derivative-closure} and Lemma~\ref{lem:step-004-s2-section-parametrization}, if \(F_j(\theta)\neq0\), then fixed-beta differentiation gives the exact signed chart derivative and the chart-Jacobian measure pushes forward to the coordinate-free normal-velocity measure, including zero velocity and \(N=1\). | Proves the literal pivot-denominator cancellation and fixed-section measure identity. |
| unit_003 | lemma | Under Assumption~\ref{assump:anchored-derivative-closure} and Lemma~\ref{lem:step-004-s2-normal-density}, every positive-length interval and measurable legal partition has measurable chart and section masses whose finite partition sums agree in \([0,\infty]\). | Audits measurability and removes the pivot partition without loss or overlap. |
| unit_004 | proposition | Under Assumption~\ref{assump:anchored-derivative-closure}, accepted Proposition~\ref{prop:step-003-pivot-sweep}, and Lemma~\ref{lem:step-004-s2-measurable-partition}, every admissible law and positive-length interval satisfies the exact coordinate-free first affine swept-area inequality with coefficient \(\kappa\). | Assembles and exports the exact target interface to `step_007`, `step_008`, and `step_012`. |

Atomic step = no. The fixed-section parametrization, the graph Jacobian and signed derivative cancellation,
moving-section measurability through chart representatives, and the dependency-to-target probability assembly
are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: exhausted affine pivot sweep

- Source or name: accepted Exhausted affine pivot-sweep
  Proposition~\ref{prop:step-003-pivot-sweep}.
- Artifact identity: the accepted proof/review pair has the exact digests, sketch attempt, step ID, unit attempt,
  reviewed-proof identity, and `ACCEPTED` status recorded in Step Identity and Allowed Assumptions And
  Dependencies.
- Restated statement in current notation: under the dependency's declared basis
  Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain},
  \ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, together with its own accepted
  declared dependencies, for every \(\mu\in\mathcal D_{N,R,\kappa}\), every interval
  \(I\subseteq\Theta\) with \(\lvert I\rvert>0\) and its literal endpoint convention, and every
  Lebesgue-measurable legal partition \(I=\bigsqcup_jE_j\),
  \[
  \begin{aligned}
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  &\leq
  \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  \mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
  &\leq
  \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta
  \end{aligned}
  \]
  in the extended nonnegative reals.
- Instantiated objects: the original deterministic offset \(F_0\), original random-coordinate feature vector
  \(F=(F_1,\ldots,F_N)\), original coefficient vector \(\alpha\in\mathbb R^N\), the same cube, law, interval,
  endpoint convention, partition cells, and chart \(\Psi_j\) as in this step.
- Assumption discharge: the accepted dependency proof and review discharge root-event measurability, arbitrary
  full joint correlation, the density cap, measurable exhaustion, all endpoint conventions, cube faces and
  corners, tangent and multiple roots, zero Jacobians, finite or infinite fibers, and persistent roots. This
  proof does not reopen or replace any of those arguments.
- Conclusion used: only the first, indicator-retaining inequality. The indicator-dropped inequality remains an
  accepted dependency output but is not needed for the coordinate-free conversion.

### Standard Euclidean injective affine area formula

- Source or name: the Euclidean area formula specialized to an injective affine parametrization.
- Restated statement: let \(k\geq0\), let \(L:\mathbb R^k\to\mathbb R^n\) be injective linear, let
  \(b\in\mathbb R^n\), and let \(\Xi(x)=b+Lx\). For every Lebesgue-measurable
  \(D\subseteq\mathbb R^k\) and every nonnegative Borel function \(h\) on \(\Xi(D)\),
  \[
  \int_{\Xi(D)}h(y)\,d\mathcal H^k(y)
  =\int_D h(\Xi(x))\sqrt{\det(L^{\mathsf T}L)}\,d\lambda_k(x).
  \]
  Both sides are interpreted in \([0,\infty]\). For \(k=0\), the empty Gram determinant is one,
  \(\lambda_0\) gives mass one to the unique point of \(\mathbb R^0\), and \(\mathcal H^0\) is counting
  measure.
- Instantiated objects: \(k=N-1\), \(n=N\), \(D\) is the exact beta indicator domain at fixed \(\theta\), and
  \(\Xi=\Psi_j(\theta,\cdot)\).
- Assumption discharge: Lemma~\ref{lem:step-004-s2-section-parametrization} proves exact bijectivity, computes
  the Gram determinant, and proves domain measurability before applying the formula.
- Conclusion used: the section Hausdorff measure pulls back by the literal graph Jacobian, without an
  orientation sign, multiplicity factor, or boundary deletion.

### Standard nonnegative parameter integration and finite partition additivity

- Source or name: Tonelli's theorem and finite additivity of the nonnegative Lebesgue integral.
- Restated statement: if \(g\geq0\) is Borel on a product of finite-dimensional Euclidean spaces, then its
  parameter integral is measurable and either iterated integral equals the product integral in
  \([0,\infty]\). If \(I=\bigsqcup_{j=1}^NE_j\) is a finite Lebesgue-measurable partition and
  \(v:I\to[0,\infty]\) is measurable, then
  \[
  \int_Iv(\theta)\,d\theta
  =\sum_{j=1}^N\int_{E_j}v(\theta)\,d\theta,
  \]
  including when either side is infinite.
- Instantiated objects: the nonnegative indicator-chart functions, their beta integrals, and the
  coordinate-free section mass represented cellwise by those beta integrals.
- Assumption discharge: Borel measurability on each open nonzero-pivot set is proved in
  Lemma~\ref{lem:step-004-s2-measurable-partition}; each cell is Lebesgue measurable and the partition is
  finite and disjoint.
- Conclusion used: the section integrand is measurable without a separate moving-section theorem, and the
  chart masses sum exactly to the single section integral.

### Local result application map

- Lemma~\ref{lem:step-004-s2-section-parametrization}: under the named primitive assumption and local legal
  pivot condition, it proves the exact beta-section bijection, graph Jacobian, and affine Hausdorff
  change of variables. It is used by Lemma~\ref{lem:step-004-s2-normal-density}.
- Lemma~\ref{lem:step-004-s2-normal-density}: under the named primitive assumption and preceding lemma, it
  proves the signed fixed-beta derivative and exact equality of nonnegative measures on the actual section.
  It is used by Lemma~\ref{lem:step-004-s2-measurable-partition}.
- Lemma~\ref{lem:step-004-s2-measurable-partition}: under the named primitive assumption and preceding density
  lemma, it proves chart-mass measurability, section-mass measurability, cellwise equality, and exact finite
  partition summation. It is used by Proposition~\ref{prop:step-004-s2-affine-swept-area}.
- Proposition~\ref{prop:step-004-s2-affine-swept-area}: under the named primitive assumption, the accepted
  pivot-sweep proposition, and the measurable-partition lemma, it supplies the exact coordinate-free first
  affine swept-area inequality. It is the sole public-facing output of this step.

## Local Derivation

### unit_001: lemma

**Lemma (Exact fixed-section parametrization and graph Jacobian).**
\(\label{lem:step-004-s2-section-parametrization}\)

Under Assumption~\ref{assump:anchored-derivative-closure}, fix
\(\theta\in\Theta\) and \(j\in\{1,\ldots,N\}\) such that \(F_j(\theta)\neq0\). Define the exact
fixed-section beta domain

\[
\mathcal B_{j,\theta}
:=\{\beta\in[-R,R]^{N-1}:
\lvert T_j(\theta,\beta)\rvert\leq R\}.
\]

Then \(\mathcal B_{j,\theta}\) is Borel and

\[
\Psi_j(\theta,\cdot):\mathcal B_{j,\theta}
\longrightarrow H_\theta\cap[-R,R]^N
\]

is a bijection in the original coefficient coordinates. Its Euclidean
\((N-1)\)-dimensional Jacobian is constant in beta and equals

\[
J_{N-1}\Psi_j(\theta,\cdot)
=\frac{\lVert F(\theta)\rVert_2}{\lvert F_j(\theta)\rvert}.
\]

Consequently, for every nonnegative Borel function \(h\) on the section,

\[
\int_{H_\theta\cap[-R,R]^N}h(a)\,d\mathcal H^{N-1}(a)
=
\frac{\lVert F(\theta)\rVert_2}{\lvert F_j(\theta)\rvert}
\int_{\mathcal B_{j,\theta}}
h(\Psi_j(\theta,\beta))\,d\beta.
\]

The assertions remain literal for an empty section and for \(N=1\), where \(\mathcal H^0\) counts the
unique point of a nonempty section.

**Proof / justification.** At fixed \(\theta\), \(T_j(\theta,\cdot)\) is affine and hence continuous.
Therefore \(\mathcal B_{j,\theta}\) is the intersection of the closed beta cube with the inverse image of the
closed interval \([-R,R]\), so it is closed and Borel.

For every \(\beta\in\mathcal B_{j,\theta}\), the setting-defined chart uses the original coefficient
coordinates:

\[
(\Psi_j(\theta,\beta))_j=T_j(\theta,\beta),
\qquad
(\Psi_j(\theta,\beta))_i=\beta_i\quad(i\neq j).
\]

All nonpivot coordinates lie in \([-R,R]\), and the defining weak inequality for
\(\mathcal B_{j,\theta}\) puts the pivot coordinate in the same closed interval. Direct substitution into
the affine equation gives

\[
\begin{aligned}
F_0(\theta)+\langle\Psi_j(\theta,\beta),F(\theta)\rangle
&=F_0(\theta)+F_j(\theta)T_j(\theta,\beta)
+\sum_{i\neq j}\beta_iF_i(\theta)\\
&=0.
\end{aligned}
\]

Thus the chart image is contained in \(H_\theta\cap[-R,R]^N\).

Conversely, take \(a\in H_\theta\cap[-R,R]^N\) and set \(\beta_i=a_i\) for \(i\neq j\). Since the pivot
is nonzero, the section equation has exactly one solution in the pivot coordinate:

\[
a_j
=-\frac{F_0(\theta)}{F_j(\theta)}
-\sum_{i\neq j}a_i\frac{F_i(\theta)}{F_j(\theta)}
=T_j(\theta,\beta).
\]

The cube membership of \(a\) implies \(\beta\in\mathcal B_{j,\theta}\), and then
\(a=\Psi_j(\theta,\beta)\). This proves surjectivity. Because the map copies all nonpivot coordinates, two
equal images have equal beta tuples, proving injectivity. No coefficient transformation or extra random
coordinate has been introduced; \(F_0\) remains the same deterministic offset.

Assume first \(N\geq2\), and order the nonpivot indices as \(i_1,\ldots,i_{N-1}\). Differentiating only with
respect to beta gives the columns

\[
c_i
:=\partial_{\beta_i}\Psi_j(\theta,\beta)
=e_i-\frac{F_i(\theta)}{F_j(\theta)}e_j,
\qquad i\neq j.
\]

Let \(v\in\mathbb R^{N-1}\) have coordinates \(v_i=F_i(\theta)/F_j(\theta)\) for \(i\neq j\). The Gram
matrix of the derivative columns is

\[
G=(\langle c_i,c_k\rangle)_{i,k\neq j}
=I_{N-1}+vv^{\mathsf T}.
\]

If \(v=0\), \(G=I_{N-1}\). If \(v\neq0\), \(G\) acts as the identity on \(v^\perp\) and sends \(v\) to
\((1+\lVert v\rVert_2^2)v\). Hence in both cases

\[
\det G
=1+\lVert v\rVert_2^2
=1+\sum_{i\neq j}\frac{F_i(\theta)^2}{F_j(\theta)^2}
=\frac{\lVert F(\theta)\rVert_2^2}{F_j(\theta)^2}.
\]

The Euclidean graph Jacobian is the nonnegative square root of the Gram determinant, so

\[
J_{N-1}\Psi_j(\theta,\cdot)
=\sqrt{\det G}
=\frac{\lVert F(\theta)\rVert_2}{\lvert F_j(\theta)\rvert}.
\]

This computation explicitly retains either sign of the pivot. Applying the restated injective affine area
formula on the measurable domain \(\mathcal B_{j,\theta}\) proves the displayed integral identity. Because
the parametrization is affine, its graph Jacobian is constant in beta.

If \(N=1\), then \(j=1\), the beta space is \(\mathbb R^0=\{()\}\), and the empty Gram determinant is one.
Moreover

\[
\frac{\lVert F(\theta)\rVert_2}{\lvert F_1(\theta)\rvert}=1.
\]

The hyperplane \(H_\theta\subseteq\mathbb R\) is the singleton
\(\{-F_0(\theta)/F_1(\theta)\}\). It meets the cube exactly when
\(\lvert T_1(\theta,())\rvert\leq R\). In the nonempty case both \(\lambda_0\) on the beta point and
\(\mathcal H^0\) on the unique section point have mass one; in the empty case both integrals are zero. This
also proves the asserted dimension-zero formula. Cube faces and corners are retained throughout because every
cube inequality is weak. \(\square\)

### unit_002: lemma

**Lemma (Exact normal-density identity and pivot cancellation).**
\(\label{lem:step-004-s2-normal-density}\)

Under Assumption~\ref{assump:anchored-derivative-closure} and
Lemma~\ref{lem:step-004-s2-section-parametrization}, fix \(\theta\in\Theta\) and a legal pivot
\(F_j(\theta)\neq0\). For every \(\beta\in\mathbb R^{N-1}\), fixed-beta differentiation of the same chart
root identity gives

\[
\partial_\theta T_j(\theta,\beta)
=-
\frac{F_0'(\theta)
+\langle\Psi_j(\theta,\beta),F'(\theta)\rangle}
{F_j(\theta)}.
\]

On \(\mathcal B_{j,\theta}\), the following is an equality of nonnegative measures under the bijection
\(a=\Psi_j(\theta,\beta)\):

\[
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta
=
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a).
\]

Precisely, for every nonnegative Borel function \(h\) on the section,

\[
\begin{aligned}
&\int_{\mathcal B_{j,\theta}}
h(\Psi_j(\theta,\beta))
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\\
&\qquad=
\int_{H_\theta\cap[-R,R]^N}
h(a)
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a).
\end{aligned}
\]

The identities include either pivot sign, a zero numerator, zero chart velocity, an empty section, cube faces
and corners, and \(N=1\).

**Proof / justification.** The setting-defined chart identity, already verified directly in
Lemma~\ref{lem:step-004-s2-section-parametrization}, is

\[
F_0(\theta)+F_j(\theta)T_j(\theta,\beta)
+\sum_{i\neq j}\beta_iF_i(\theta)=0.
\]

Hold beta fixed and differentiate with respect to \(\theta\) on the open set where \(F_j\neq0\). The
setting-defined feature functions and the quotient chart are continuously differentiable there. The product
rule gives

\[
F_0'(\theta)
+F_j'(\theta)T_j(\theta,\beta)
+F_j(\theta)\partial_\theta T_j(\theta,\beta)
+\sum_{i\neq j}\beta_iF_i'(\theta)=0.
\]

Because \(\Psi_j\) inserts \(T_j\) in the original \(j\)-th coordinate and beta in every other original
coordinate,

\[
F_j'(\theta)T_j(\theta,\beta)
+\sum_{i\neq j}\beta_iF_i'(\theta)
=\langle\Psi_j(\theta,\beta),F'(\theta)\rangle.
\]

Dividing by the legal nonzero pivot yields exactly

\[
\partial_\theta T_j(\theta,\beta)
=-
\frac{F_0'(\theta)+\langle\Psi_j(\theta,\beta),F'(\theta)\rangle}
{F_j(\theta)}.
\]

This is the derivative of the same algebraic chart root identity, not a root theorem and not an implicit-root
argument. No root is selected as a function of theta, and no simple-root or transversality condition appears.

Taking absolute values retains both pivot signs:

\[
\lvert\partial_\theta T_j(\theta,\beta)\rvert
=
\frac{\lvert F_0'(\theta)
+\langle\Psi_j(\theta,\beta),F'(\theta)\rangle\rvert}
{\lvert F_j(\theta)\rvert}.
\]

Lemma~\ref{lem:step-004-s2-section-parametrization} gives, under the same bijection,

\[
d\mathcal H^{N-1}(a)
=\frac{\lVert F(\theta)\rVert_2}{\lvert F_j(\theta)\rvert}\,d\beta,
\qquad
d\beta
=\frac{\lvert F_j(\theta)\rvert}{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a).
\]

Multiplying the preceding two literal identities cancels the same absolute pivot factor exactly and gives

\[
\lvert\partial_\theta T_j\rvert\,d\beta
=
\frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\lVert F\rVert_2}
\,d\mathcal H^{N-1}(a).
\]

Applying the affine change-of-variables formula from
Lemma~\ref{lem:step-004-s2-section-parametrization} with the nonnegative test function

\[
h(a)\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\]

makes this differential notation the rigorous displayed integral equality. In particular, taking \(h\equiv1\)
gives the exact fixed-section identity used below.

If the numerator is zero at a point, the signed derivative identity makes
\(\partial_\theta T_j=0\) at its unique beta preimage, so both densities vanish. If the whole chart velocity
vanishes, both measures are zero. If the section is empty, both measures are supported on the empty set.
Touching cube faces or corners does not change the affine area formula. For \(N=1\), the Hausdorff Jacobian is
one, \(\lVert F\rVert_2=\lvert F_1\rvert\), and \(\mathcal H^0\) evaluates the right-hand density at the unique
point of a nonempty section; hence the same formulas remain literal. \(\square\)

### unit_003: lemma

**Lemma (Measurable section mass and exact partition summation).**
\(\label{lem:step-004-s2-measurable-partition}\)

Under Assumption~\ref{assump:anchored-derivative-closure} and
Lemma~\ref{lem:step-004-s2-normal-density}, fix an interval \(I\subseteq\Theta\) with
\(\lvert I\rvert>0\), retaining its literal endpoint convention, and a Lebesgue-measurable legal partition

\[
I=\bigsqcup_{j=1}^N E_j.
\]

For \(\theta\in E_j\), define the chart mass

\[
\mathcal W_j(\theta)
:=\int_{[-R,R]^{N-1}}
\mathbf1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta,
\]

and define the coordinate-free section mass

\[
\mathcal V(\theta)
:=\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a).
\]

Then the cellwise functions are Lebesgue measurable, \(\mathcal V\) is Lebesgue measurable on \(I\), and

\[
\mathcal W_j(\theta)=\mathcal V(\theta)
\qquad(\theta\in E_j).
\]

Consequently, in \([0,\infty]\),

\[
\sum_{j=1}^N\int_{E_j}\mathcal W_j(\theta)\,d\theta
=\int_I\mathcal V(\theta)\,d\theta.
\]

This equality holds for every measurable legal partition, including disconnected or empty cells, and its
right-hand side is independent of the legal pivot assignment.

**Proof / justification.** For each \(j\), let

\[
\Omega_j:=\{\theta\in\Theta:F_j(\theta)\neq0\}.
\]

The setting-defined feature functions are continuous, so \(\Omega_j\) is relatively open. On
\(\Omega_j\times\mathbb R^{N-1}\), the quotient formula for \(T_j\) and its fixed-beta theta derivative are
continuous. Define on the entire product \(\Theta\times[-R,R]^{N-1}\)

\[
g_j(\theta,\beta)
:=
\begin{cases}
\mathbf1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert,
&\theta\in\Omega_j,\\
0,&\theta\notin\Omega_j.
\end{cases}
\]

This piecewise function is Borel and nonnegative: it is a Borel function on the Borel open set
\(\Omega_j\times[-R,R]^{N-1}\) and is zero on its Borel complement. Tonelli's measurability conclusion gives
the Borel function

\[
\widehat{\mathcal W}_j(\theta)
:=\int_{[-R,R]^{N-1}}g_j(\theta,\beta)\,d\beta
\quad(\theta\in\Theta),
\]

with values in \([0,\infty]\). Since legality gives \(E_j\subseteq\Omega_j\), the restriction of
\(\widehat{\mathcal W}_j\) to \(E_j\) is exactly \(\mathcal W_j\). It is therefore Lebesgue measurable even
when \(E_j\) is not Borel.

For each \(\theta\in E_j\), the beta points selected by the indicator are exactly
\(\mathcal B_{j,\theta}\). Taking \(h\equiv1\) in
Lemma~\ref{lem:step-004-s2-normal-density} gives the pointwise identity

\[
\mathcal W_j(\theta)=\mathcal V(\theta).
\]

Thus, pointwise on \(I\),

\[
\mathcal V(\theta)
=\sum_{j=1}^N\mathbf1_{E_j}(\theta)
\widehat{\mathcal W}_j(\theta).
\]

The right-hand side is a finite sum of nonnegative Lebesgue-measurable functions, so this identity proves
measurability of the moving-section mass \(\mathcal V\) without invoking a separate moving-hyperplane,
coarea, or root theorem.

Finite additivity for the exact disjoint partition now yields

\[
\begin{aligned}
\sum_{j=1}^N\int_{E_j}\mathcal W_j(\theta)\,d\theta
&=\sum_{j=1}^N\int_{E_j}\mathcal V(\theta)\,d\theta\\
&=\int_I\mathcal V(\theta)\,d\theta.
\end{aligned}
\]

Every term is nonnegative, so the calculation is valid if the common value is \(+\infty\); no expression of
the form \(\infty-\infty\) occurs. The cells are disjoint, so different legal charts never double charge a
single theta in the sum. Although two pivot coordinates may both be legal at the same theta, the exact
fixed-section equality shows that either chosen chart represents the same \(\mathcal V(\theta)\). Empty cells
contribute zero. Included interval endpoints remain literal members of their cells and excluded endpoints do
not enter; no closure of \(I\) is substituted.

For \(N=1\), the sole beta integral is integration over \(\mathbb R^0\) with mass one, the partition has the
single legal cell \(E_1=I\), and the pointwise equality is exactly the \(\mathcal H^0\) evaluation established
in Lemma~\ref{lem:step-004-s2-normal-density}. \(\square\)

### unit_004: proposition

**Proposition (Coordinate-free first affine swept-area inequality).**
\(\label{prop:step-004-s2-affine-swept-area}\)

Under Assumption~\ref{assump:anchored-derivative-closure}, the accepted Exhausted affine pivot-sweep
Proposition~\ref{prop:step-003-pivot-sweep}, and
Lemma~\ref{lem:step-004-s2-measurable-partition}, for every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with
\(\lvert I\rvert>0\), retaining the interval's literal endpoint convention,

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\]

The inequality is in \([0,\infty]\), keeps the original coefficient coordinates and deterministic offset,
and has the literal factor \(\kappa\). It applies to every arbitrary correlated full joint law in
\(\mathcal D_{N,R,\kappa}\), and includes all endpoint, root-multiplicity, cube-boundary, empty-section,
zero-velocity, and \(N=1\) cases covered by its stated inputs.

**Proof / justification.** Fix the deterministic setting instance. Then fix an arbitrary
\(\mu\in\mathcal D_{N,R,\kappa}\) and, after the law, an arbitrary interval
\(I\subseteq\Theta\) with \(\lvert I\rvert>0\) and its literal endpoint convention.

At least one measurable legal partition exists directly from the primitive anchor: take

\[
E_{j_*}=I,
\qquad
E_j=\varnothing\quad(j\neq j_*),
\]

because \(F_{j_*}\equiv1\). More generally, fix any measurable legal partition. The indicator form of the
accepted Proposition~\ref{prop:step-003-pivot-sweep} gives, without any new event or root argument,

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq
\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta.
\end{aligned}
\]

Lemma~\ref{lem:step-004-s2-measurable-partition} identifies the entire chart sum, exactly and in the extended
nonnegative reals, with

\[
\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\lVert F(\theta)\rVert_2}
\,d\mathcal H^{N-1}(a)\,d\theta.
\]

Substitution proves the claimed inequality with no residual, pivot factor, chart-count factor, or change to
\(\kappa\). The accepted dependency already treats the original full joint density, so the deterministic
fixed-section conversion neither conditions on nor marginalizes a coordinate and preserves arbitrary
correlation. It also deletes no coefficient, parameter endpoint, root, cube face, or corner. Tangent, multiple,
and persistent roots remain covered exactly as in the accepted dependency; this proof has invoked no second
root theorem. Because \(\mu\) and then \(I\) were arbitrary, the accepted quantifier order is preserved.
\(\square\)

## Target-Step Assembly

Fix the deterministic instance, then an arbitrary admissible law, then an arbitrary positive-length interval
with its literal endpoint convention, and finally any measurable legal pivot partition.

Lemma~\ref{lem:step-004-s2-section-parametrization} proves that for every fixed
\(\theta\in E_j\), the original-coordinate map \(\beta\mapsto\Psi_j(\theta,\beta)\) is an exact bijection
from

\[
\{\beta\in[-R,R]^{N-1}:\lvert T_j(\theta,\beta)\rvert\leq R\}
\]

onto \(H_\theta\cap[-R,R]^N\), and computes its Euclidean graph Jacobian as

\[
\frac{\lVert F(\theta)\rVert_2}{\lvert F_j(\theta)\rvert}.
\]

Lemma~\ref{lem:step-004-s2-normal-density} independently differentiates the same chart root identity at fixed
beta and obtains the required signed formula

\[
\partial_\theta T_j(\theta,\beta)
=-
\frac{F_0'(\theta)+\langle\Psi_j(\theta,\beta),F'(\theta)\rangle}
{F_j(\theta)}.
\]

Combining these two literal identities gives the exact fixed-section measure identity

\[
\lvert\partial_\theta T_j\rvert\,d\beta
=
\frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\lVert F\rVert_2}
\,d\mathcal H^{N-1}(a),
\]

with the pivot denominator cancelled rather than bounded.

Lemma~\ref{lem:step-004-s2-measurable-partition} proves measurability of both sides through the chart
representatives and sums the equality over the finite disjoint partition in \([0,\infty]\). Finally,
accepted Proposition~\ref{prop:step-003-pivot-sweep} supplies the sole root-event inequality, in its
indicator-retaining form, and Proposition~\ref{prop:step-004-s2-affine-swept-area} substitutes the exact
partition sum. These named results prove the coordinate-free first affine swept-area inequality exactly.

The coefficient coordinates, deterministic \(F_0\), full arbitrary-correlated law, literal \(\kappa\), every
positive-length interval and endpoint convention, and extended-real interpretation are unchanged. Alternate
legal pivots, empty cells, either pivot sign, zero numerator, zero chart velocity, cube faces and corners, and
\(N=1\) are discharged in the local lemmas. Tangent, multiple, endpoint, and persistent roots are inherited
without alteration from the accepted dependency. No second root theorem, transversality, simple-root
condition, uniform pivot margin, independence, section-volume bound, velocity bound, homogeneous
specialization, monic specialization, or final-theorem result is used.

The only public-facing export is
Proposition~\ref{prop:step-004-s2-affine-swept-area}. It is the minimal direct normal-velocity interface for
`step_007`, `step_008`, and `step_012`.

## Explicit Rate Audit

- Exposed variables: \(N,R,\kappa\), the arbitrary law \(\mu\), the interval \(I\), the original
  setting-defined \(F_0,F\), and the exact section integral. The probability coefficient is literally
  \(\kappa\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mu\), coefficient correlation, \(I\), endpoint convention, pivot
  choice, pivot sign, pivot margin, chart overlap, root multiplicity, section orientation or translation,
  \(q,M,\Delta\), or any later section or velocity estimate.
- Fixed quantities: the complete deterministic setting instance
  \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B,F_0,F)\) is fixed before \(\mu\), \(I\), and any legal partition
  are selected.
- Probability mode: ordinary probability for each fixed arbitrary full joint law. There is no confidence
  parameter, conditional event, marginal-density step, independence conversion, or simultaneous random
  statement over laws.
- Horizon mode: every interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), with its actual open, closed,
  or half-open endpoint convention. No asymptotic or uniform-pivot limit is introduced here.
- Norm mode: Euclidean vector norm in the actual coefficient coordinates and Euclidean
  \((N-1)\)-dimensional Hausdorff measure on the actual affine section. For \(N=1\), the mode is
  \(0\)-dimensional Lebesgue mass one on beta and \(\mathcal H^0\) counting measure on the unique nonempty
  section point.
- Admissibility conditions and auxiliary tolerances: exactly the declared primitive feature/anchor interface
  and the current accepted `step_003` dependency. A legal pivot is selected cellwise; no auxiliary tolerance,
  lower pivot margin, transversality condition, simple-root condition, or section regularity event survives.
- Term absorption or simplification inequalities: None. Both transformations are equalities. In particular,
  \[
  \frac{1}{\lvert F_j\rvert}
  \frac{\lvert F_j\rvert}{\lVert F\rVert_2}
  =\frac1{\lVert F\rVert_2}
  \]
  is an exact cancellation, not an inequality or hidden loss.
- Probability conversion: None in this step. The literal density factor \(\kappa\) is inherited from the
  accepted indicator-form dependency and is unchanged.
- Contribution to any Rate Specialization Bridge: this step exports only the exact R2/R3 first affine sweep
  integral. It does not bound section volume, bound normal velocity, take a law or interval supremum, or derive
  a homogeneous, monic, certificate, capacity, or final-theorem rate.
- Baseline-reduction check, if applicable: the coordinate-free conversion is an equality on every legal chart
  and therefore does not replace or weaken the accepted indicator or indicator-dropped chart interfaces. The
  original deterministic-offset chart theorem remains available unchanged for the later exact affine-monic
  baseline; no random leading coordinate or conservative remainder is introduced.

## Blockers

None

## Notation And Assumption Notes

- public-facing: Proposition~\ref{prop:step-004-s2-affine-swept-area} is the sole exported result. Its statement
  uses only the setting-defined \(F_0,F,H_\theta\), coefficient cube, law class, \(\kappa\), Euclidean norm,
  and Hausdorff measure. Its direct consumers are exactly `step_007`, `step_008`, and `step_012`.
- appendix-local: \(\mathcal B_{j,\theta}\) is the exact fixed-section indicator domain, defined from
  setting-defined \(T_j,R\). It appears only in the fixed-section lemmas and is not an admissibility condition
  or downstream object.
- proof-local: the ordered nonpivot indices, derivative columns \(c_i\), vector \(v\), Gram matrix \(G\), open
  pivot sets \(\Omega_j\), Borel functions \(g_j\), chart masses \(\mathcal W_j\) and
  \(\widehat{\mathcal W}_j\), and section mass \(\mathcal V\) are derived directly in the named local lemmas.
  They disappear from the exported proposition.
- proof-local checked-result notation: \(\lambda_k\) is ordinary \(k\)-dimensional Lebesgue measure, while
  \(L,b,\Xi,D,h\) are locally quantified dummy objects in the restated affine area formula. They are not
  setting quantities, conditions, constants, or exported objects; in particular, the setting-defined
  \(A=(2R)^N\kappa\) is never renamed or reused.
- Constant provenance: \(R\) and \(\kappa\) are original setting quantities. The factors
  \(\lVert F\rVert_2/\lvert F_j\rvert\) and
  \(1/\lvert F_j\rvert\) are exact locally derived Jacobian factors, not constants or assumed margins. No new
  constant, radius, threshold, rate, tolerance, finite-tube quantity, or hidden bound is introduced.
- Assumption provenance: the original features, derivatives, coefficient coordinates, deterministic offset,
  and literal anchor are primitive and are the only parts of
  Assumption~\ref{assump:anchored-derivative-closure} used directly. The root-event chart inequality, full
  joint-density domination, pivot exhaustion, endpoint handling, root multiplicity handling, and persistent
  nullity are all derived outputs supplied only through accepted
  Proposition~\ref{prop:step-003-pivot-sweep}. Fixed-section bijectivity, the graph Jacobian, the signed chart
  derivative, pivot cancellation, section-mass measurability, and partition removal are proved in this step.
  No generated-object fact is promoted to a primitive condition.
- Measurability audit: the exact beta domain is Borel for fixed theta. The full indicator-chart function is
  Borel after a zero extension off the open nonzero-pivot set. Tonelli makes its beta integral measurable.
  Cellwise equality with the coordinate-free section mass then proves measurability of the latter, so no
  unproved moving-section theorem is assumed. The finite summed integrand is nonnegative and measurable.
- Chart and cell audit: each fixed legal chart is bijective onto the actual section. The partition cells are
  disjoint, so no theta is summed twice; if several pivots are legal, the cell assignment chooses one, and the
  fixed-section equality makes the result pivot-independent. Overlaps of chart images in coefficient space are
  already handled in the favorable multiplicity direction by accepted
  Proposition~\ref{prop:step-003-pivot-sweep}; the present equality adds no overlap factor. Empty cells and
  empty sections contribute zero.
- Sign and zero audit: the graph Jacobian and chart derivative use \(\lvert F_j\rvert\), so both pivot signs are
  retained. A zero numerator is exactly a zero chart velocity at its corresponding coefficient. A chart whose
  theta velocity vanishes identically contributes the zero measure on both sides.
- Boundary audit: all beta and pivot constraints are weak, so cube faces and corners remain in the domains and
  sections. Whenever a section-cube contact has zero \((N-1)\)-dimensional measure, for example because it is
  confined to a cube face of dimension below \(N-1\), its beta preimage has zero
  \(\lambda_{N-1}\)-measure by the positive constant graph Jacobian. A contact containing an
  \((N-1)\)-dimensional cube face is retained and measured normally. The affine area formula covers both cases
  without deleting the contact. Included interval endpoints remain in their cells and excluded endpoints remain
  outside \(I\). The accepted dependency, not this deterministic conversion, covers tangent and multiple
  roots, endpoint-only roots, persistent roots, and pivots approaching zero.
- Dimension-one audit: for \(N=1\), beta is the unique point of \(\mathbb R^0\), its Lebesgue mass is one,
  the empty Gram determinant and graph Jacobian equal one, a nonempty section consists of its unique point and
  has \(\mathcal H^0\)-mass one, and the derivative, fixed-section measure, partition, and final probability
  formulas remain literal.
- Extended-real audit: every integrand is nonnegative, Tonelli and finite additivity are applied in
  \([0,\infty]\), and the final inequality remains valid if its right-hand side is infinite. No integrability
  assumption or subtraction of infinite quantities is used.
- Forbidden-shortcut audit: no second root theorem, implicit-root theorem, coarea theorem for a new incidence
  set, transversality, simple-root assumption, uniform pivot margin, coordinate independence, marginal or
  conditional density, later section-volume estimate, later normal-velocity bound, homogeneous result, monic
  result, certificate result, capacity conclusion, or final-theorem result is invoked.
- Global-diagnostic boundary: the paired global review has status `ACCEPTED` and the two binding global hashes
  in Step Identity match. Its step-relevant planning prompt was to combine the Euclidean graph Jacobian with
  the differentiated chart identity. Both calculations were independently stated and proved in the fresh
  local units above. The global pair is not evidence, a cited result, an assumption source, or authority for
  the target claim.
- Same-step diagnostic boundary: the consumed sketch-attempt-1 proof/review hashes and their byte-identical
  archive copies match Step Identity. The old review was consulted only for diagnostic audit categories such as
  measurability, pivot signs, cube boundaries, empty sections, and \(N=1\). All Step Identity fields,
  dependency digests, statements, derivations, local units, and theorem labels in this file were regenerated
  for sketch attempt 2. No archived statement is current evidence.
