# Proof Sketch

## Formalized Setting

This is exact-goal mode for the approved `material_partial` claim. Fix
\(N\ge1\), \(R>0\), \(\kappa\in(0,\infty)\), and a compact interval
\(\Theta\subset\mathbb R\). Let
\[
b:\Theta\to\mathbb R,\qquad
F=(F_1,\ldots,F_N):\Theta\to\mathbb R^N,
\qquad
\phi_\alpha(\theta)=b(\theta)+\langle\alpha,F(\theta)\rangle.
\]
The primitive assumptions are exactly:

- `assump:shared-pfaffian-chain`: \(b,F_1,\ldots,F_N\) are \(C^1\) and share
  the Balcan--Nguyen--Sharma triangular Pfaffian representation
  \(\eta_j'=P_j(\theta,\eta_1,\ldots,\eta_j)\), with ambient dimension
  \(p=1\), chain length \(q\), chain degree
  \(M=\max_j\deg P_j\), random-output degree
  \(\Delta_{\rm rnd}=\max_{1\le i\le N}\deg Q_i\), and affine-envelope
  degree \(\Delta_{\rm aff}=\max_{0\le i\le N}\deg Q_i\). For \(q=0\), the
  chain is absent and \(M=0\). The offset \(b=Q_0(\theta,\eta)\) is not a
  random coefficient.
- `assump:no-forced-root`: \((b(\theta),F(\theta))\ne(0,0)\) for every
  \(\theta\in\Theta\).
- `assump:joint-density-cap`: \(\alpha\) has an arbitrary, possibly
  correlated, Lebesgue density \(f_\mu\) supported on \([-R,R]^N\) and
  \(\|f_\mu\|_\infty\le\kappa\).

Write \(\mathcal D_{N,R,\kappa}\) for the class of all laws satisfying
`assump:joint-density-cap`. Set \(A=(2R)^N\kappa\) and
\[
K_R=\{\theta\in\Theta:|b(\theta)|\le R\|F(\theta)\|_1\}.
\]
For \(F_j(\theta)\ne0\), define
\[
V_j(\theta)
=\left|\left(\frac b{F_j}\right)'(\theta)\right|
 +R\sum_{i\ne j}
 \left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|,
\]
and extend \(V_j\) by \(+\infty\) when \(F_j=0\). Define
\[
\Gamma_{\rm piv}(b,F;R)=
\begin{cases}
\displaystyle\sup_{\theta\in K_R}\min_{1\le j\le N}V_j(\theta),
&K_R\ne\varnothing,\\
0,&K_R=\varnothing.
\end{cases}
\]
Let \(j_*(\theta)\) be the least minimizing index, let
\(E_j=\{\theta\in K_R:j_*(\theta)=j\}\), and let
\(E_{j,m}=E_j\cap\{|F_j|\ge1/m\}\). For
\(\beta=\alpha_{-j}\in[-R,R]^{N-1}\), set
\[
T_j(\theta,\beta)
=-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}.
\]
When \(N=1\), \([-R,R]^0\) has zero-dimensional volume one.

The two fixed audits are the scale-stress family
\(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\) on \([-1,1]\), with
\(0<\delta\le1\) and \(R=1\), and the monic family
\[
b_d(\theta)=\theta^d,\qquad
F_d(\theta)=(1,\theta,\ldots,\theta^{d-1}),\qquad
p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
\]
For the latter, only the \(d\) lower coefficients are random; its descriptors
are \(q=0\), \(M=0\), \(N=d\),
\(\Delta_{\rm rnd}=d-1\), \(\Delta_{\rm aff}=d\), and
\(A=(2R)^d\kappa\).

## Formalized Goal

Prove, without strengthening the primitive assumptions, that
\(\Gamma_{\rm piv}(b,F;R)<\infty\) and, for every admissible \(\mu\) and every
positive-length interval \(I\subseteq\Theta\),
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\le \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
\]
Consequently,
\[
\sup_{\mu\in\mathcal D_{N,R,\kappa}}
\sup_{\substack{I\subseteq\Theta\text{ interval}\\\lvert I\rvert>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\phi_\alpha(\theta)=0]}{|I|}
\le\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
\]

For the scale-stress family, prove
\(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\), and retain the exact
uniform-law calculation
\[
\Pr[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta},
\qquad 0<\epsilon\le\delta.
\]
For every \(d\ge1\), prove
\[
\Gamma_{\rm piv}(b_d,F_d;R)
\le d+\frac{Rd(d-1)}2
\]
and derive from the same affine theorem, for every bounded interval
\(I\subset\mathbb R\) and every admissible, possibly correlated law on the
lower coefficients,
\[
\Pr[\exists\theta\in I:p_\alpha(\theta)=0]
\le \kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|I|.
\]
This is exact internal recovery of the stated Theorem 2 constant: no random
leading coordinate, singular augmented law, independent baseline proof, hidden
constant, asymptotic qualification, or independence assumption is allowed.

The progress type remains `material_partial`. The proof targets a nontrivial
affine \(C^1\) Pfaffian family and closes the exact monic interface, but does
not claim that \(\Gamma_{\rm piv}\) is polynomially controlled by general
Pfaffian instance complexity. The latter is an explicitly open full-source
obligation.

## Sketch Identity

- Sketch attempt: 1
- Attempt type: Initial sketch
- Search mode: `OPEN`
- Run mode: `interactive`
- Target mode: Exact-goal, unconditional, `material_partial`

## Proof Roadmap

Use the selected framework `Adaptive affine coordinate-fiber area sweep` from
`technical_survey.md`. Its source provenance is Balcan--Dick--Pegden,
*Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014,
Theorem 18, for the affine lower-coefficient viewpoint, and Azais--Wschebor,
*Level Sets and Extrema of Random Processes and Fields*,
DOI:10.1002/9780470434642, for area/coarea measure-theoretic machinery.

The proof itself uses the Euclidean Lipschitz area formula in the following
current-notation form: if \(\Psi:U\subset\mathbb R^N\to\mathbb R^N\) is
locally Lipschitz and \(D\subset U\) is measurable, then
\[
\lambda_N(\Psi(D))
\le \int_D J_N\Psi(x)\,dx.
\]
This is the image-measure consequence of the multiplicity formula; it needs
neither injectivity nor a simple-root condition. The source and branch
conventions are both finite-dimensional Euclidean Lebesgue measure. Here the
domain coordinates are \((\theta,\beta)\), the target is the original
coefficient vector \(\alpha\), and
\(J_N\Psi_j=|\partial_\theta T_j|\). Thus there is no transformed-object or
metric mismatch.

First prove compact root feasibility and a uniform available-pivot margin on
\(K_R\), which gives finiteness of \(\Gamma_{\rm piv}\). Next construct the
Borel minimizing-coordinate partition and record the exact chart derivative.
Then identify the root event with a finite/countable union of exhausted graph
images, apply the area formula, and use disjointness of the \(E_j\) in
\(\theta\) to avoid a factor \(N\). Finally apply the full joint-density cap.
The scale-stress and monic clauses are direct calculations consumed by the
same general theorem.

## Rate Objectives

### Rate objective R1: Pivot finiteness and exact affine anti-concentration

- Objective type: structural-parameter explicit, regularity-explicit, and
  interval-uniform probability bound.
- Exposed variables: \(N,R,\kappa,A=(2R)^N\kappa\),
  \(\Gamma_{\rm piv}(b,F;R)\), and \(|I|\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\),
  the deterministic family, \(\mu\), \(I\), coefficient correlations, a pivot
  margin, root multiplicity, or an unrecorded Pfaffian scale.
- Fixed quantities: The deterministic affine family and its exact Pfaffian
  presentation, together with \(N,R,\kappa\), while \(\mu\) and \(I\) range
  over their stated suprema.
- Probability mode: Ordinary probability for each fixed law, then a uniform
  supremum over all admissible laws; no confidence parameter or conditioning
  event.
- Horizon mode: Every positive-length interval, with no time horizon,
  asymptotic limit, or stopping condition.
- Norm mode: The \(\ell_1\) support-feasibility test in \(K_R\), scalar
  absolute chart velocity in \(V_j\), and Lebesgue measure in coefficient
  space.
- Required bridge or simplification obligations: Prove root inclusion in
  \(K_R\), exact Jacobian identity, the zero-dimensional \(N=1\) convention,
  \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}|I|\), density domination,
  and the identity
  \(\kappa(2R)^{N-1}=A/(2R)\). No term is dropped or absorbed.
- Baseline invariance obligations: The general theorem must remain applicable
  to the exact monic affine family with only the lower coefficients random.

### Rate objective R2: Counter-example scale audit

- Objective type: exact conditioning-value and matching lower-scale audit.
- Exposed variables: \(\delta,\epsilon\), with
  \(0<\epsilon\le\delta\le1\), and specialized values
  \(N=2,R=1,\kappa=1/4,A=1,q=M=0\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\delta\) or \(\epsilon\).
- Fixed quantities: \(\Theta=[-1,1]\), the displayed feature family, and the
  uniform law on \([-1,1]^2\).
- Probability mode: Exact ordinary probability.
- Horizon mode: The interval \([0,\epsilon]\) in the stated range.
- Norm mode: Scalar coordinate-ratio velocity and planar Lebesgue area.
- Required bridge or simplification obligations: Compute both pivot speeds,
  their pointwise minimum, its supremum, and the two opposite-sign wedges of
  total area \(\epsilon/\delta\), then multiply by density \(1/4\).
- Baseline invariance obligations: The \(1/\delta\) metric scale must remain
  visible rather than being hidden in formal Pfaffian degree data.

### Rate objective R3: Exact affine-monic recovery

- Objective type: exact baseline specialization and structural-parameter
  explicit probability bound.
- Exposed variables: \(d,R,\kappa,|I|\), with
  \(q=M=0\), \(N=d\), \(\Delta_{\rm rnd}=d-1\),
  \(\Delta_{\rm aff}=d\), and \(A=(2R)^d\kappa\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: The bounded interval, an auxiliary
  compact containing interval, coefficient correlations, a leading-coordinate
  approximation, or any new conditioning parameter.
- Fixed quantities: \(d,R,\kappa\) while the law and bounded interval range.
- Probability mode: Ordinary probability for every admissible correlated
  lower-coefficient law.
- Horizon mode: Uniform over every bounded interval in \(\mathbb R\).
- Norm mode: Scalar absolute coordinate-ratio velocity and \(d\)-dimensional
  Lebesgue coefficient volume.
- Required bridge or simplification obligations: Verify the constant-pivot
  estimate on \(|\theta|\le1\), the top-pivot estimate on
  \(|\theta|>1\), the \(d=1\) branch, the pointwise minimum-to-\(\Gamma\)
  transfer, compact localization for a bounded interval, the exact identity
  \(\phi_\alpha=p_\alpha\), and the factor \((2R)^{d-1}\).
- Baseline invariance obligations: Recover literally
  \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)|I|\) from R1 itself, with no weaker
  remainder or independent citation.

## Assumption Provenance Objectives

No generated event, recurrence, trajectory condition, stability property, or
boundedness fact is promoted to a theorem-facing assumption. The required
derived controls are:

| Derived control | Primitive source | Producer step | Legal consumers / conditional use |
| --------------- | ---------------- | ------------- | --------------------------------- |
| Root feasibility \(\{\phi_\alpha=0,\alpha\in[-R,R]^N\}\Rightarrow\theta\in K_R\), uniform nonzero pivot margin on \(K_R\), and \(\Gamma_{\rm piv}<\infty\) | `assump:shared-pfaffian-chain`, `assump:no-forced-root` | `step_001` | `step_002`, `step_003`, `step_004`, `step_005`, `step_006` |
| Borel least-minimizer partition and exact derivative interface \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\) | `step_001` and direct quotient differentiation | `step_002` | `step_003` |
| Root-event coefficient-volume bound \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\) | `step_001`, `step_002`, Euclidean area formula | `step_003` | `step_004` |
| General law- and interval-uniform probability theorem | `assump:joint-density-cap`, `step_003` | `step_004` | `step_006` and final theorem assembly |
| Exact \(1/\delta\) conditioning and wedge probability | Specialized primitive family and uniform density, with `step_001` definitions | `step_005` | Final theorem assembly and progress audit |
| Monic chart certificate, exact object identity, and exact baseline probability bound | Exact polynomial specialization and `step_004` | `step_006` | Final theorem assembly |

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`
- Claim class: Structural nondegeneracy, positive available-pivot lower bound,
  and finiteness of the conditioning functional.
- Theorem role: It proves that the adaptive charts exist wherever a supported
  root can occur and that the theorem's displayed constant is finite.
- Mechanism source: Primitive `assump:no-forced-root`, the exact cube-support
  feasibility inequality, compactness of \(K_R\), and \(C^1\) boundedness from
  `assump:shared-pfaffian-chain`. This is a direct primitive-source derivation
  in the branch's scalar \(\theta\) convention.
- Source-to-claim adequacy: A supported root gives
  \(|b|=|\langle\alpha,F\rangle|\le R\|F\|_1\), hence \(\theta\in K_R\).
  On \(K_R\), \(F=0\) would force \(b=0\), contradicting the primitive
  condition. Therefore
  \(\rho=\min_{\theta\in K_R}\max_j|F_j(\theta)|>0\). If
  \(B_0=\max_{\Theta}\max(|b|,|F_1|,\ldots,|F_N|)\) and
  \(B_1=\max_{\Theta}\max(|b'|,|F_1'|,\ldots,|F_N'|)\), choosing a coordinate
  with \(|F_j|\ge\rho\) gives
  \[
  \min_jV_j(\theta)\le
  \frac{2B_0B_1}{\rho^2}\bigl(1+R(N-1)\bigr).
  \]
  This proves finiteness without claiming any polynomial Pfaffian-complexity
  bound. Source convention and target convention coincide.
- Residual-to-target adequacy: N/A because the produced controls concern the
  same \(b,F,K_R\), and \(V_j\) consumed downstream; there is no surrogate or
  metric transfer.
- Key positive/control term or structural source: The compact pivot margin
  \(\rho>0\).
- Opposing defect terms: Possible small denominators \(F_j\) and points where
  some individual coordinates vanish.
- Closure/dominance/absorption relation: Select a largest-magnitude coordinate
  at each point; \(|F_j|\ge\rho\) dominates both powers of the quotient-rule
  denominator, while \(B_0,B_1\) bound every numerator.
- Accumulation behavior / scope compatibility: Static on one compact set; no
  repeated or all-time scope and no accumulated defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The producer path is primitive assumptions
  \(\to\rho>0\to\Gamma_{\rm piv}<\infty\); it does not assume the desired
  probability bound. Consumers are `step_002`--`step_006`.
- Entry-state / first-update stress result: N/A because there is no recursive,
  iterative, or dynamical process.
- Baseline conclusion preserved: N/A at this step; monic recovery is localized
  in `step_006`.
- Producer-consumer provenance: `step_001` produces root feasibility, pivot
  availability, and finiteness for `step_002`, `step_003`, `step_004`, and the
  two specialization steps.
- Null or boundary regime tested: If \(K_R=\varnothing\), no supported root is
  possible and \(\Gamma_{\rm piv}=0\). If \(K_R\ne\varnothing\), coordinate
  zeros are allowed but simultaneous \(F=0\) is excluded there.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: If a forced root \((b,F)=(0,0)\) is allowed, every coefficient has
  that root, so arbitrarily short intervals containing it have probability
  one and no finite linear ratio.
- Repair route if source is unsupported: It is supported. Removing
  `assump:no-forced-root` would require an idea/theorem-contract change, not a
  local proof repair.

### `step_002`

- Step ID: `step_002`
- Claim class: Measurable generated chart certificate and exact local
  Jacobian upper bound.
- Theorem role: It exports a disjoint parameter partition and a chartwise
  integrand that the area formula can consume.
- Mechanism source: The extended-valued \(V_j\) are Borel because they are
  continuous on \(\{F_j\ne0\}\) and set to \(+\infty\) on its closed
  complement. Finite-coordinate minimization with least-index tie breaking is
  a direct Borel construction. Quotient differentiation in the exact branch
  convention gives
  \[
  \partial_\theta T_j
  =-\left(\frac b{F_j}\right)'
   -\sum_{i\ne j}\beta_i
    \left(\frac{F_i}{F_j}\right)'.
  \]
- Source-to-claim adequacy: `step_001` ensures at least one finite \(V_j\) at
  each point of \(K_R\); the least minimizer is therefore defined and has a
  nonzero pivot. The cube constraint \(|\beta_i|\le R\) yields exactly
  \(|\partial_\theta T_j|\le V_j\le\Gamma_{\rm piv}\) on \(E_j\).
- Residual-to-target adequacy: N/A. \(T_j\) solves the original root equation
  exactly for the original coefficient \(\alpha_j\); no transformed target or
  residual is introduced.
- Key positive/control term or structural source: The nonzero selected pivot
  produced by `step_001`.
- Opposing defect terms: Ties, zeros of nonselected coordinates, and absence of
  a uniform lower bound for one prescribed coordinate.
- Closure/dominance/absorption relation: Least-index tie breaking makes the
  cells disjoint; pointwise minimization gives the common \(\Gamma_{\rm piv}\)
  bound without summing \(N\) chart speeds.
- Accumulation behavior / scope compatibility: Static finite partition; no
  accumulated forcing term. The later countable exhaustion is handled in
  `step_003`.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` produces pivot availability before
  `step_002` constructs the cells; `step_003` consumes them. The construction
  does not assume event-volume control.
- Entry-state / first-update stress result: N/A because no dynamics are used.
- Baseline conclusion preserved: The construction allows the monic constant
  and top pivots; it does not augment the random vector.
- Producer-consumer provenance: `step_002` produces \((E_j,E_{j,m},T_j)\) and
  the derivative inequality for `step_003`.
- Null or boundary regime tested: At a tie, the least index is selected; at
  \(F_j=0\), that coordinate has \(V_j=+\infty\) and cannot be selected when a
  finite pivot exists. Points with very small selected \(F_j\) still belong to
  some exhaustion level.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without a nonzero pivot, the graph representation is undefined at
  a root-feasible point.
- Repair route if source is unsupported: It is supported by `step_001` and
  direct finite-coordinate measurability.

### `step_003`

- Step ID: `step_003`
- Claim class: Theorem-critical swept-volume inequality, countable limiting
  closure, and multiplicity-safe root-event coverage.
- Theorem role: It converts local chart velocity into the exact
  \(N\)-dimensional coefficient-volume bound used by the density cap.
- Mechanism source: The current-notation Euclidean area formula stated in the
  roadmap. On the open set \(\{F_j\ne0\}\times\mathbb R^{N-1}\), the map
  \(\Psi_j(\theta,\beta)\) that inserts \(T_j\) into coordinate \(j\) is
  \(C^1\), hence locally Lipschitz, and
  \(|\det D\Psi_j|=|\partial_\theta T_j|\). A countable compact localization
  inside that open set discharges the tool's regularity convention for the
  measurable cells.
- Source-to-claim adequacy: For
  \[
  D_{j,m}=\{(\theta,\beta):\theta\in I\cap E_{j,m},\ 
  \beta\in[-R,R]^{N-1},\ |T_j(\theta,\beta)|\le R\},
  \]
  the area formula gives
  \(\lambda_N(\Psi_j(D_{j,m}))\le
  \int_{D_{j,m}}|\partial_\theta T_j|\), and `step_002` then gives
  \[
  \int_{D_{j,m}}|\partial_\theta T_j|
  \le (2R)^{N-1}\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
  \]
  Every supported root chooses exactly one \(E_j\) and some finite \(m\), so
  its coefficient lies in one of these images. The conclusion is an upper
  bound on the union image, precisely the needed claim class; it does not
  estimate expected multiplicity instead.
- Residual-to-target adequacy: The produced image lies in the same coefficient
  cube and equals the original coefficient vector coordinate by coordinate.
  The consumed target is the root-event set \(S_I\) in \(\lambda_N\); the
  relation is exact set equality
  \(S_I=\bigcup_{j,m}\Psi_j(D_{j,m})\), with no residual term.
- Key positive/control term or structural source: The nonnegative Jacobian
  integral \(\int|\partial_\theta T_j|\), bounded by the `step_002` velocity
  certificate.
- Opposing defect terms: Multiple preimages, tangent roots with zero
  derivative, identically-zero affine combinations, measurable chart
  boundaries, and denominators approaching zero as \(m\to\infty\).
- Closure/dominance/absorption relation: Image measure is at most the
  multiplicity integral, so multiple roots only increase the right-hand side;
  tangent or identically-zero fibers have zero \(N\)-Jacobian and contribute
  only null coefficient sets. For each \(j\), the domains and images increase
  with \(m\), and
  \[
  \lambda_N\!\left(\bigcup_m\Psi_j(D_{j,m})\right)
  =\lim_m\lambda_N(\Psi_j(D_{j,m}))
  \le\lim_m\int_{D_{j,m}}J_N\Psi_j
  =\int_{D_j}J_N\Psi_j.
  \]
- Accumulation behavior / scope compatibility: The only accumulated scope is
  the monotone exhaustion. Its forcing term is the nonnegative Jacobian
  integrand, so there is no adversarial-sign or persistent additive defect;
  monotone convergence gives the exact limiting integral. The finite chart sum
  satisfies
  \[
  \sum_j\int_{I\cap E_j}V_j(\theta)\,d\theta
  \le\Gamma_{\rm piv}\sum_j|I\cap E_j|
  =\Gamma_{\rm piv}|I\cap K_R|\le\Gamma_{\rm piv}|I|.
  \]
  This relation is valid for the entire declared interval scope and is the
  finite budget controlling chart accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` and `step_002` produce all chart and
  Jacobian controls before the area formula is applied. The displayed
  monotone relation proves, rather than assumes, limiting event coverage.
- Entry-state / first-update stress result: N/A; the exhaustion is a static
  measure limit, not an iterative theorem state or generated trajectory.
- Baseline conclusion preserved: The map targets the original
  \(N\)-dimensional lower-coefficient vector, preserving the monic law's
  dimension for `step_006`.
- Producer-consumer provenance: `step_002` \(\to\) `step_003` swept-volume
  certificate \(\to\) `step_004` density conversion.
- Null or boundary regime tested: \(N=1\) uses zero-dimensional beta volume
  one. Interval endpoints and chart ties are measurable and cause no length
  duplication. If \(\partial_\theta T_j=0\), the image can be lower
  dimensional, which is consistent with the upper bound.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without an image-measure inequality, root multiplicity prevents a
  valid one-to-one change of variables and the coefficient-volume bound is
  unsupported.
- Repair route if source is unsupported: It is supported by the standard
  Euclidean area formula with an exact current-object mapping.

### `step_004`

- Step ID: `step_004`
- Claim class: Unconditional probability bound, exact rate conversion, and
  law/interval scope closure.
- Theorem role: It proves the general affine coordinate-pivot theorem and its
  anti-concentration-ratio consequence.
- Mechanism source: Primitive `assump:joint-density-cap` and the exact
  coefficient-volume output of `step_003`.
- Source-to-claim adequacy: The root event is Lebesgue measurable (indeed a
  finite/countable union of analytic graph images), and support plus the
  density cap gives
  \[
  \Pr_\mu(S_I)=\int_{S_I}f_\mu(\alpha)\,d\alpha
  \le\kappa\lambda_N(S_I).
  \]
  Substitution of `step_003` has exactly the probability, scope, and event
  interface consumed by the goal.
- Residual-to-target adequacy: The volume certificate and probability concern
  the identical root-event set \(S_I\). There is no event enlargement after
  `step_003` and no residual probability term.
- Key positive/control term or structural source: The primitive pointwise
  density ceiling \(f_\mu\le\kappa\) almost everywhere.
- Opposing defect terms: Arbitrary coefficient correlation and possible
  concentration of density near the swept set.
- Closure/dominance/absorption relation: Correlation is irrelevant because the
  full joint density, not its marginals, is capped. The exact identity
  \(\kappa(2R)^{N-1}=A/(2R)\) performs the only rate conversion.
- Accumulation behavior / scope compatibility: No accumulation over laws or
  intervals is used. The same pointwise bound holds for each pair
  \((\mu,I)\), so taking the two suprema preserves it exactly.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_003` produces volume control before the
  density cap is applied; the proof never assumes finite
  \(C^{\rm Pf}_{\mathcal D}\).
- Entry-state / first-update stress result: N/A because no dynamical procedure
  or mode conversion is present.
- Baseline conclusion preserved: The output remains an affine theorem on the
  original random lower coefficients and is the legal producer for
  `step_006`.
- Producer-consumer provenance: `step_003` plus
  `assump:joint-density-cap` \(\to\) `step_004`; its general theorem is
  consumed by `step_006` and final assembly.
- Null or boundary regime tested: If \(K_R=\varnothing\), \(S_I=\varnothing\)
  and both sides are zero. Bounds larger than one remain valid upper bounds;
  no unstated small-interval threshold is needed.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without a full joint density cap, a law may place singular mass on
  a swept hypersurface, and Lebesgue-volume control need not imply probability
  control.
- Repair route if source is unsupported: It is exactly primitive
  `assump:joint-density-cap`; no repair is needed.

### `step_005`

- Step ID: `step_005`
- Claim class: Exact conditioning value and matching root-probability lower
  scale.
- Theorem role: It proves that the proposed conditioning records the source's
  mandatory \(1/\delta\) obstruction.
- Mechanism source: Direct calculation in the exact scale-stress family.
  Here \(K_1=[-1,1]\), \(V_1=1/\delta\), and for \(\theta\ne0\),
  \(V_2=\delta/\theta^2\), with \(V_2(0)=+\infty\).
- Source-to-claim adequacy: Thus
  \(\sup_{[-1,1]}\min(V_1,V_2)=1/\delta\). For
  \(r=\epsilon/\delta\le1\), the root event in \([0,\epsilon]\) is, up to a
  null boundary, the two wedges
  \(\alpha_1\alpha_2\le0\) and
  \(|\alpha_1|\le r|\alpha_2|\), whose total area is \(r\). Uniform density
  \(1/4\) gives \(r/4\).
- Residual-to-target adequacy: The wedge condition is algebraically equivalent
  to existence of a root in the exact target interval; there is no surrogate
  event or approximation residual.
- Key positive/control term or structural source: The derivative
  \((\theta/\delta)'=1/\delta\) and the wedge area it induces.
- Opposing defect terms: The second pivot is undefined at \(\theta=0\) and its
  speed varies with \(\theta\).
- Closure/dominance/absorption relation: The constant pivot is available at
  zero and has speed \(1/\delta\); away from zero, taking the pointwise minimum
  cannot increase that value. The value at zero attains the supremum.
- Accumulation behavior / scope compatibility: Static exact calculation; no
  accumulated defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The deterministic features and uniform density
  directly produce the conditioning value and probability; no theorem target
  is assumed.
- Entry-state / first-update stress result: N/A because there is no recursive
  process.
- Baseline conclusion preserved: The source counterexample's exact
  \(\epsilon/(4\delta)\) conclusion is retained.
- Producer-consumer provenance: `step_005` supplies the scale audit to final
  theorem assembly and the `material_partial` progress boundary.
- Null or boundary regime tested: \(\theta=0\), \(\epsilon=\delta\), and
  coefficient-axis boundaries are included; axes have zero area. The excluded
  \(\delta=0\) regime is not a defined \(C^1\) family.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Omitting the \(1/\delta\) scale would assert a formal-complexity-only
  bound contradicted by the exact wedge probability.
- Repair route if source is unsupported: It is supported by direct algebra.

### `step_006`

- Step ID: `step_006`
- Claim class: Exact baseline specialization, same-target object bridge, and
  public-rate recovery.
- Theorem role: It recovers the monic-polynomial Theorem 2 constant from the
  general affine theorem itself.
- Mechanism source: Direct quotient differentiation for the two primitive
  polynomial pivots, followed by `step_004`. On \(|\theta|\le1\), the constant
  pivot gives
  \[
  V_{\rm const}
  =d|\theta|^{d-1}+R\sum_{k=1}^{d-1}k|\theta|^{k-1}
  \le d+\frac{Rd(d-1)}2.
  \]
  For \(d\ge2\) and \(|\theta|>1\), the top pivot gives
  \[
  V_{\rm top}
  =1+R\sum_{m=1}^{d-1}\frac{m}{|\theta|^{m+1}}
  \le1+\frac{Rd(d-1)}2
  \le d+\frac{Rd(d-1)}2.
  \]
- Source-to-claim adequacy: At every \(\theta\), the minimum defining
  \(\Gamma_{\rm piv}\) is at most the displayed legal pivot speed. For a
  bounded interval \(I\), choose any compact interval \(\Theta\) containing
  its closure; the bounds are independent of that auxiliary choice, all
  primitive assumptions hold, and `step_004` applies with \(N=d\).
- Residual-to-target adequacy: The produced affine object is exactly
  \(b_d+\langle\alpha,F_d\rangle=p_\alpha\), and the consumed target uses the
  same \(d\)-vector of lower coefficients, the same density \(f_\mu\), the
  same interval, and ordinary probability. Equality leaves zero residual, so
  no scale domination beyond the explicit \(\Gamma\) bound is needed.
- Key positive/control term or structural source: The constant coordinate on
  \(|\theta|\le1\) and degree-\((d-1)\) coordinate on \(|\theta|>1\).
- Opposing defect terms: Growth of positive powers for large \(|\theta|\),
  singularity of the top pivot at zero, the \(d=1\) coincidence of the two
  pivots, and the temptation to augment by a deterministic leading
  coefficient.
- Closure/dominance/absorption relation: The parameter-domain split assigns
  each defect to the chart where it is absent. For \(d=1\), the sole constant
  pivot has \(V=1\). Substituting
  \(\Gamma\le d+Rd(d-1)/2\) into
  \(\kappa(2R)^{d-1}\Gamma|I|\) gives the target literally; no term is
  asymptotically absorbed.
- Accumulation behavior / scope compatibility: No iterative accumulation. The
  two chart regions are disjoint in \(\theta\), and the pointwise speed bound
  is global, so it is valid for every bounded interval without a
  length-dependent defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Direct polynomial algebra produces the
  \(\Gamma\) certificate, and `step_004` already produces the probability
  theorem. The path is `step_004` plus the specialization calculation
  \(\to\) exact baseline; it does not cite the baseline as proof authority.
- Entry-state / first-update stress result: N/A because exact specialization is
  static and no initialized or recursive process is involved.
- Baseline conclusion preserved: Exactly
  \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)|I|\), with the deterministic monic
  coefficient outside the random law and no conservative remainder.
- Producer-consumer provenance: `step_001` supplies the conditioning
  definition, `step_004` supplies the affine theorem, and `step_006` supplies
  the exact baseline conclusion to final assembly.
- Null or boundary regime tested: \(d=1\), \(|\theta|=1\), \(\theta=0\), and
  intervals lying outside the root-feasible region. At \(|\theta|=1\), use the
  constant chart; boundaries have no duplicated length cost. If a bounded
  interval has length zero, it is empty or a singleton; for a singleton the
  root event is one proper affine hyperplane because the constant feature is
  one, hence it has probability zero under the density assumption and the
  displayed zero right-hand side remains exact.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Using only the constant pivot for large \(|\theta|\) yields
  unbounded speed; augmenting the leading coefficient invalidates the density
  interface. The two exact pivots exclude both failures.
- Repair route if source is unsupported: It is supported by direct polynomial
  identities and `step_004`.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Root feasibility, uniform available-pivot margin \(\rho>0\), and \(\Gamma_{\rm piv}<\infty\) | `step_001` | Compact \(K_R\); cube inequality; primitive no-forced-root; global \(C^1\) bounds \(B_0,B_1\) | Small individual pivots are controlled by selecting a largest coordinate; simultaneous \(F=0\) on \(K_R\) is source-excluded; no claim controls \(\rho\) polynomially in Pfaffian format | Same \(b,F,K_R,V_j\) are produced and consumed; no residual | \(\min_jV_j\le2B_0B_1\rho^{-2}(1+R(N-1))\) | \(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\) from compactness and `assump:no-forced-root` | `step_002`, `step_003`, `step_004`, `step_005`, `step_006` | None for finiteness; general polynomial complexity control is intentionally outside the target |
| Borel disjoint pivot cells and \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\) | `step_002` | `step_001`; Borel extended \(V_j\); exact quotient rule; \(\lvert\beta_i\rvert\le R\) | Ties controlled by least index; selected-pivot zeros excluded; other-coordinate zeros harmless; no global prescribed-coordinate margin is needed | \(T_j\) exactly solves the original root equation for \(\alpha_j\), so residual is zero in the original coefficient coordinates | Triangle inequality applied to the exact derivative; disjoint \(E_j\) prevents chart-length duplication | Nonzero selected pivot from `step_001`; threshold \(1/m\) only exhausts and is not theorem-facing | `step_003` | None |
| \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\) | `step_003` | `step_002`; locally Lipschitz graph maps; Euclidean area formula; beta-cube volume | Multiplicity/tangency controlled by image-measure inequality; denominator boundary controlled by monotone exhaustion; endpoints and ties are measurable; no uncontrolled volume term | Exact equality \(S_I=\bigcup_{j,m}\Psi_j(D_{j,m})\) in the original coefficient space; every residual term is zero | \(\lambda(\Psi(D))\le\int_DJ\), monotone convergence in \(m\), and \(\sum_j\lvert I\cap E_j\rvert=\lvert I\cap K_R\rvert\le\lvert I\rvert\) | Jacobian control from `step_002`; no positive transversality margin required | `step_004` | None |
| General probability and anti-concentration bounds \(\kappa(2R)^{N-1}\Gamma\lvert I\rvert=A\Gamma\lvert I\rvert/(2R)\) | `step_004` | `step_003`; primitive full joint-density cap and cube support | Arbitrary correlations are controlled by the joint cap; no marginal or independence defect; no hidden event probability remains | Same root event \(S_I\) under Lebesgue volume and \(\mu\); \(\Pr(S_I)\le\kappa\lambda_N(S_I)\) exactly | Density domination followed by the algebraic identity \(\kappa(2R)^{N-1}=A/(2R)\); suprema preserve a pairwise uniform bound | Primitive \(\kappa\); no auxiliary slack | `step_006`, final theorem assembly | None |
| Exact scale certificate \(\Gamma_{\rm piv}=1/\delta\) and probability \(\epsilon/(4\delta)\) | `step_005` | Explicit feature derivatives and uniform density \(1/4\) | Pivot-2 singularity at zero controlled by pivot 1; coefficient-axis boundaries are null; \(\delta=0\) is outside the family | Root event equals the two wedge event; zero residual at target interval scale | Pointwise minimum of \(1/\delta\) and \(\delta/\theta^2\); wedge area \(\epsilon/\delta\) times \(1/4\) | Primitive \(\delta>0\) | Final theorem assembly and progress audit | None |
| Monic \(\Gamma\) certificate and exact Theorem 2 probability rate | `step_006` | Direct two-pivot derivatives; `step_004`; exact \(d\)-dimensional lower-coefficient law | Large-\(\lvert\theta\rvert\) power growth controlled by top pivot; zero controlled by constant pivot; \(d=1\) handled separately; no singular augmentation | Produced \(b_d+\langle\alpha,F_d\rangle\) equals consumed \(p_\alpha\) identically in the same probability space and interval; zero residual | Pointwise chart inequalities imply \(\Gamma\le d+Rd(d-1)/2\); literal substitution into the general rate | Constant and top polynomial coordinates; no new margin or threshold | Final theorem assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Root-feasible set restriction, positive available-pivot margin, and finite \(\Gamma_{\rm piv}\) | `step_001`, derived directly from `assump:shared-pfaffian-chain` and `assump:no-forced-root` in the same scalar convention | `step_002`, `step_003`, `step_004`, `step_005`, `step_006` | Finiteness clause and legal chart availability | Primitive assumptions \(\to\) `step_001` \(\to\) every listed consumer | `derived` | None |
| Borel minimizing partition, exhaustion, exact graph map, and derivative certificate | `step_002`, from `step_001` and direct quotient differentiation | `step_003` | Supplies the area-formula domain and integrand | `step_001` \(\to\) `step_002` \(\to\) `step_003` | `derived` | None |
| Swept root-event coefficient-volume bound | `step_003`, using the current-notation Euclidean area formula with source-compatible coefficient coordinates | `step_004` | Converts chart speed into an event-volume rate | `step_001`,`step_002` \(\to\) `step_003` \(\to\) `step_004` | `derived` | None |
| General arbitrary-law, all-interval affine probability theorem | `step_004`, from `step_003` and primitive `assump:joint-density-cap` | `step_006`, final theorem assembly | Main affine anti-concentration conclusion and producer of baseline recovery | `step_003` plus primitive density cap \(\to\) `step_004` \(\to\) `step_006`/assembly | `derived` | None |
| Exact scale-stress conditioning and wedge probability | `step_005`, direct derivation in the exact specialized objects | Final theorem assembly and progress audit | Counter-example 1 quantitative accounting | Specialized primitive data plus `step_001` definitions \(\to\) `step_005` \(\to\) assembly | `derived` | None |
| Exact same-object monic bridge and Theorem 2 constant | `step_006`, from direct polynomial chart identities and `step_004` | Final theorem assembly | Baseline invariance conclusion | `step_004` plus direct monic calculation \(\to\) `step_006` \(\to\) assembly | `derived` | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Prove every supported root lies in compact \(K_R\); if \(K_R=\varnothing\), the root event is empty and \(\Gamma=0\); otherwise prove \(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\), derive the explicit crude quotient bound \(\min_jV_j\le2B_0B_1\rho^{-2}(1+R(N-1))\), and conclude \(\Gamma_{\rm piv}<\infty\). | None | Primitive `assump:shared-pfaffian-chain`, `assump:no-forced-root` | Obtaining a nonvacuous pivot lower bound only on the root-feasible set without assuming a globally nonzero prescribed coordinate or a theorem-facing norm margin | Direct compactness, triangle inequality, extreme-value theorem, quotient rule in the exact setting convention | Root-feasibility and finite-conditioning certificate | R1: preserve exact \(N,R\) exposure while using \(B_0,B_1,\rho\) only as proof-local witnesses of finiteness, not hidden rate constants | `PENDING` |
| `step_002` | Prove the extended \(V_j\) and least-minimizer selector are Borel, \((E_j)_j\) is a disjoint Borel partition of \(K_R\), \(E_{j,m}\uparrow E_j\), and on each selected chart \(T_j\) solves the root equation exactly with \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\). | `step_001` | Primitive `assump:shared-pfaffian-chain`; derived pivot availability from `step_001` | Measurable tie handling and exact velocity control without a single global pivot or an \(N\)-fold union bound | Finite Borel minimization and direct quotient differentiation | Measurable chart and Jacobian interface | R1: exact \(R\)-weighted velocity inequality with no auxiliary tolerance in the theorem rate | `PENDING` |
| `step_003` | For \(S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,\phi_\alpha(\theta)=0\}\), prove the exact graph-image coverage and \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\), including \(N=1\), tangent/multiple roots, measurable cells, and the \(m\to\infty\) limit. | `step_001`, `step_002` | Primitive `assump:shared-pfaffian-chain`, `assump:no-forced-root`; derived interfaces from `step_001`, `step_002` | Applying the area formula to locally Lipschitz maps on measurable exhausted cells and controlling countable/finite union volume without injectivity or chart-count loss | Current-notation Euclidean area formula; countable localization; continuity from below; monotone convergence; Tonelli | Root-event coefficient-volume certificate | R1: prove the literal factor \((2R)^{N-1}\) and disjoint-length identity, with no multiplicity or boundary remainder | `PENDING` |
| `step_004` | Apply the full joint-density cap to `step_003`, prove the general probability inequality and \(A/(2R)\) form for each law and interval, and take both suprema to obtain the finite anti-concentration ratio. | `step_003` | Primitive `assump:joint-density-cap`; derived volume bound from `step_003` | Preserving arbitrary correlation, event measurability, and exact constants under the two uniform suprema | Lebesgue density domination and direct algebra | General affine coordinate-pivot sweep theorem | R1: \(\Pr(S_I)\le\kappa(2R)^{N-1}\Gamma\lvert I\rvert=A\Gamma\lvert I\rvert/(2R)\), ordinary probability, interval-uniform, no hidden constant | `PENDING` |
| `step_005` | For \(b=0,F=(1,\theta/\delta),R=1\), prove \(\Gamma_{\rm piv}=1/\delta\); for the uniform law prove exactly \(\Pr[\exists\theta\in[0,\epsilon]:\phi_\alpha(\theta)=0]=\epsilon/(4\delta)\) for \(0<\epsilon\le\delta\). | `step_001` | Specialized primitive instances of `assump:shared-pfaffian-chain`, `assump:no-forced-root`, `assump:joint-density-cap` | Computing the minimizing pivot at zero and away from zero and matching it to the exact wedge event | Direct differentiation and planar integration | Counter-example 1 scale certificate | R2: literal \(1/\delta\) conditioning and \(\epsilon/(4\delta)\) probability, no hidden dependence | `PENDING` |
| `step_006` | For every \(d\ge1\), calculate the constant-pivot and top-pivot velocities, prove \(\Gamma_{\rm piv}\le d+Rd(d-1)/2\), localize any positive-length bounded interval inside a compact \(\Theta\), handle zero-length intervals by the proper-affine-hyperplane null-set argument, verify exact equality with the monic polynomial and the \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N,A)\) tuple, and apply `step_004` to recover the exact Theorem 2 bound. | `step_001`, `step_004` | Primitive `assump:shared-pfaffian-chain`, `assump:no-forced-root`, `assump:joint-density-cap`; general theorem from `step_004` | Handling \(\lvert\theta\rvert\le1\), \(\lvert\theta\rvert>1\), \(d=1\), zero-length and positive-length bounded intervals, and the lower-dimensional density without singular augmentation | Direct monomial quotient differentiation, affine-hyperplane nullity, and exact specialization of `step_004` | Exact affine-monic baseline bridge | R3: literal \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert I\rvert\), no auxiliary threshold, probability conversion, or conservative loss | `PENDING` |

## Dependency Notes

The graph is acyclic: `step_001` supplies only deterministic root-feasibility
and pivot availability; `step_002` turns those controls into the chart
interface; `step_003` converts that interface into coefficient volume; and
`step_004` converts volume into the general probability theorem. `step_005`
is a direct specialized audit after the common definitions. `step_006` consumes
the already proved general theorem and a direct polynomial calculation. Every
dependency points to an earlier stable ID.

The final theorem is the conjunction of the outputs of `step_004`,
`step_005`, and `step_006`. No generated invariant is assumed, no chart is
consumed before construction, and the only limiting operation is the explicit
monotone exhaustion in `step_003`. The monic result is an internal
specialization of `step_004`, so the baseline-invariance obligation has a
legal producer-consumer path.

## Blockers

None.

The deliberately unresolved full-source question is a polynomial bound on
\(\Gamma_{\rm piv}\) from meaningful general Pfaffian instance-complexity
data. It is outside the formalized `material_partial` claim; this sketch
neither claims such a certificate nor assigns it to future local proof work.
