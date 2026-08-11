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
This displayed consequence is read literally in every branch of the unchanged
setting. The law class \(\mathcal D_{N,R,\kappa}\) is nonempty exactly when
\(A\ge1\), and the positive-length interval index class is nonempty exactly
when \(\Theta\) contains a positive-length interval, equivalently
\(\lvert\Theta\rvert>0\) for the setting's compact interval. When both index classes are
nonempty, the inner-then-outer supremum is a finite nonnegative real bounded
by the displayed right-hand side. If either index class is empty, the same
universal theorem and displayed consequence remain literal vacuous bounds
under the standard extended-real convention \(\sup\varnothing=-\infty\); that
branch is not asserted to define a nonnegative finite anti-concentration
capacity. This is a branch qualification, not a new primitive condition.

For the scale-stress family, prove exactly
\(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\). This is the complete
Counter-example 1 theorem target: it is a static conditioning certificate and
introduces no additional distributional or root-probability conclusion. For
every \(d\ge1\), prove
\[
V_{\rm const}(\theta)
\le d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2
\qquad (|\theta|\le1),
\]
\[
V_{\rm top}(\theta)
\le1+R\sum_{m=1}^{d-1}\frac{m}{|\theta|^{m+1}}
\le d+\frac{Rd(d-1)}2
\qquad (|\theta|>1),
\]
and consequently
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
All displayed probability bounds are ordinary-probability statements uniform
over their stated laws and intervals, with no horizon or asymptotic mode. The
exposed quantities are exactly \(N,R,\kappa,A,\Gamma_{\rm piv}\), and interval
length, while \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) remain fixed family
descriptors with no direct factor in the bound. The norm conventions are the
\(\ell_1\) feasibility test in \(K_R\) and scalar coordinate-ratio variation
in \(\Gamma_{\rm piv}\).

The progress type remains `material_partial`. The proof targets a nontrivial
affine \(C^1\) Pfaffian family and closes the exact monic interface, but does
not claim that \(\Gamma_{\rm piv}\) is polynomially controlled by general
Pfaffian instance complexity. The latter is an explicitly open full-source
obligation.

## Sketch Identity

- Sketch attempt: 3
- Attempt type: `revise_sketch` interface repair after the attempt-2
  `step_004` review returned `REVISE_SKETCH`
- Search mode: `OPEN`
- Run mode: `interactive`
- Target mode: Exact-goal, unconditional, `material_partial`

## Proof Roadmap

Use the selected framework `Adaptive affine coordinate-fiber area sweep` from
`technical_survey.md`, which remains unchanged. Its framework provenance is
Balcan--Dick--Pegden, *Semi-bandit Optimization in the Dispersed Setting*,
arXiv:1904.09014, Theorem 18, for the affine lower-coefficient viewpoint, and
Azais--Wschebor, *Level Sets and Extrema of Random Processes and Fields*,
DOI:10.1002/9780470434642, for the surveyed area/coarea route. The following
exact sources, fixed now rather than deferred to local proof, supply every
theorem-critical external interface actually used by `step_003`:

1. Alexander S. Kechris, *Classical Descriptive Set Theory*, Springer GTM
   156, first edition, 1995, Section 14, Proposition 14.4: Borel images of
   analytic subsets of standard Borel spaces under Borel maps are analytic.
   A Borel domain is analytic, so this gives analyticity of each
   \(\Psi_j(D_{j,m})\); applied to the continuous coordinate projection of
   the Borel incidence set, it also gives analyticity of the root-event set.
2. Kechris, same edition, Section 21, Theorem 21.10: every analytic subset of
   a Polish space is universally measurable. Applied in Euclidean coefficient
   space, and then to Lebesgue measure restricted to bounded cubes, this makes
   the analytic chart images and root-event set Lebesgue measurable. This
   result supplies measurability only, not a volume estimate.
3. Herbert Federer, *Geometric Measure Theory*, Springer Grundlehren 153,
   1969, Section 3.2.3, the area formula: for a Lipschitz
   \(\Psi:\mathbb R^N\to\mathbb R^N\), a Lebesgue-measurable set \(D\), and
   the extended multiplicity
   \(N(\Psi,D,y)=\#(D\cap\Psi^{-1}(y))\in\mathbb N\cup\{+\infty\}\),
   \[
   \int_D |\det D\Psi(x)|\,d\lambda_N(x)
   =\int_{\mathbb R^N}N(\Psi,D,y)\,d\lambda_N(y).
   \]
   Federer's normalized \(N\)-dimensional Hausdorff measure agrees with
   \(\lambda_N\) in equal-dimensional Euclidean space. Since the
   multiplicity is at least one on \(\Psi(D)\), the exact consequence used is
   \[
   \lambda_N(\Psi(D))\le\int_D|\det D\Psi|\,d\lambda_N.
   \]
   The theorem does not assume injectivity, finite fibers, regular values,
   transversality, or simple roots.

For the current objects, \(D_{j,m}\) is Borel, and \(\Psi_j\) is \(C^1\) on
the nonzero-pivot open chart and is handled by countable Borel Lipschitz
localizations before applying Federer 3.2.3. The source and branch conventions
are both equal-dimensional Euclidean measure. The domain coordinates are
\((\theta,\beta)\), the target is the original coefficient vector \(\alpha\),
and \(J_N\Psi_j=|\partial_\theta T_j|\). Thus there is no transformed-object,
metric, probability-mode, or coefficient-dimension mismatch. These sources do
not provide root-event coverage, the Jacobian calculation, chart disjointness,
the \((2R)^{N-1}\) factor, density conversion, or any bound on
\(\Gamma_{\rm piv}\); those remain branch-local obligations.

First prove compact root feasibility and a uniform available-pivot margin on
\(K_R\), which gives finiteness of \(\Gamma_{\rm piv}\). Next construct the
Borel minimizing-coordinate partition and record the exact chart derivative.
Then identify the root event with a finite/countable union of exhausted graph
images, apply the area formula, and use disjointness of the \(E_j\) in
\(\theta\) to avoid a factor \(N\). `step_003` exports only exact event
measurability and the coefficient-volume bound; it does not export or carry
the finiteness conclusion proved by `step_001`. Accordingly, `step_004`
depends directly on both `step_001` and `step_003`: it applies the full joint
density cap to the latter output, uses the former output for strict finiteness,
and directly checks the nonempty and empty supremum branches. The scale-stress
clause is a separate static calculation of the conditioning functional. The
monic clause is a direct two-pivot calculation that consumes only the pairwise
probability theorem exported by `step_004`, not its branch-qualified supremum
interpretation.

### Theorem-Level Block Map

| Theorem block | Stable step | Direct inputs | Exact export | Downstream use |
| ------------- | ----------- | ------------- | ------------ | -------------- |
| Root feasibility and finite conditioning | `step_001` | Primitive `assump:shared-pfaffian-chain`, `assump:no-forced-root` | Supported-root restriction, positive available-pivot margin on nonempty \(K_R\), and \(\Gamma_{\rm piv}<\infty\) | Direct input to `step_002`, `step_003`, `step_004`, `step_005`, `step_006`, and final finiteness assembly |
| Measurable adaptive charts | `step_002` | `step_001` | Borel disjoint cells, finite exhaustion, exact graph maps, and \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\) | `step_003` |
| Measurable swept coefficient volume | `step_003` | `step_001`, `step_002` | Only exact root-event measurability and \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\) | `step_004` |
| Density conversion and branch-qualified uniform consequence | `step_004` | `step_001`, `step_003`, primitive `assump:joint-density-cap` | Exact pairwise probability inequality in every admissible pair; literal ordered-supremum inequality in all branches; finite nonnegative capacity interpretation only when \(A\ge1\) and \(\lvert\Theta\rvert>0\) | Pairwise export to `step_006`; both exports to final assembly |
| Scale-stress audit | `step_005` | `step_001` and the exact specialized family | \(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\) | Final scale certificate |
| Exact affine-monic bridge | `step_006` | `step_001` and only the pairwise probability export of `step_004` | Exact two-pivot \(\Gamma\) bound and exact Theorem 2 probability constant | Final baseline assembly |

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
  over their stated index classes when those classes are nonempty.
- Probability mode: Ordinary probability for each fixed law, then a uniform
  inner interval supremum followed by the outer admissible-law supremum; no
  confidence parameter or conditioning event. If either index class is empty,
  the displayed consequence uses the standard extended-real empty-supremum
  reading and is vacuous rather than a nonnegative finite capacity claim.
- Horizon mode: Every positive-length interval, with no time horizon,
  asymptotic limit, or stopping condition.
- Norm mode: The \(\ell_1\) support-feasibility test in \(K_R\), scalar
  absolute chart velocity in \(V_j\), and Lebesgue measure in coefficient
  space.
- Required bridge or simplification obligations: Prove root inclusion in
  \(K_R\), exact Jacobian identity, the zero-dimensional \(N=1\) convention,
  \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}|I|\), density domination,
  and the identity
  \(\kappa(2R)^{N-1}=A/(2R)\). Prove directly that
  \(\mathcal D_{N,R,\kappa}\ne\varnothing\) exactly when \(A\ge1\), and that
  the positive-length interval class is nonempty exactly when
  \(\lvert\Theta\rvert>0\); use direct `step_001` finiteness only in the nonempty
  capacity branch. No term is dropped or absorbed.
- Baseline invariance obligations: The pairwise general theorem must remain
  applicable to the exact monic affine family with only the lower coefficients
  random; the ordered-supremum branch interpretation is not needed for this
  specialization.

### Rate objective R2: Counter-example scale conditioning audit

- Objective type: exact structural-parameter conditioning value.
- Exposed variables: \(\delta\), with \(0<\delta\le1\), and specialized
  values \(N=2\), \(R=1\), and \(q=M=0\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\delta\).
- Fixed quantities: \(\Theta=[-1,1]\) and the displayed deterministic feature
  family.
- Probability mode: Deterministic; no law or probability statement is part of
  this objective.
- Horizon mode: Static conditioning identity on the fixed compact parameter
  interval; no interval-length rate or asymptotic mode.
- Norm mode: Scalar coordinate-ratio velocity in the definition of
  \(\Gamma_{\rm piv}\).
- Required bridge or simplification obligations: Compute both legal pivot
  speeds, their pointwise minimum, and its supremum, including the
  \(\theta=0\) convention, to obtain exactly \(1/\delta\).
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

### Cross-Objective Rate Audit

R1 retains the exact pairwise quantifier order "for every admissible law, for
every positive-length interval" and the exact conversion
\(\kappa(2R)^{N-1}=A/(2R)\). The subsequent scope order is the inner interval
supremum followed by the outer law supremum. Direct `step_001` finiteness makes
the right-hand side finite in every branch; when \(A\ge1\) and
\(\lvert\Theta\rvert>0\), nonemptiness additionally makes the ordered supremum a finite
nonnegative real. Empty-index branches retain only the literal vacuous
extended-real inequality. R2 remains the deterministic exact value
\(1/\delta\), and R3 remains the ordinary-probability constant
\(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert I\rvert\). There is no hidden constant,
confidence conversion, horizon upgrade, independence premise, asymptotic
absorption, or polynomial general-instance control of \(\Gamma_{\rm piv}\).

## Assumption Provenance Objectives

No generated event, recurrence, trajectory condition, stability property, or
boundedness fact is promoted to a theorem-facing assumption. The required
derived controls are:

| Derived control | Primitive source | Producer step | Legal consumers / conditional use |
| --------------- | ---------------- | ------------- | --------------------------------- |
| Root feasibility \(\{\phi_\alpha=0,\alpha\in[-R,R]^N\}\Rightarrow\theta\in K_R\), uniform nonzero pivot margin on \(K_R\), and \(\Gamma_{\rm piv}<\infty\) | `assump:shared-pfaffian-chain`, `assump:no-forced-root` | `step_001` | `step_002`, `step_003`, `step_004`, `step_005`, `step_006` |
| Borel least-minimizer partition and exact derivative interface \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\) | `step_001` and direct quotient differentiation | `step_002` | `step_003` |
| Analytic/Lebesgue-measurable root event and coefficient-volume bound \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\) | `step_001`, `step_002`; Kechris (1995), Section 14, Proposition 14.4 and Section 21, Theorem 21.10; Federer (1969), Section 3.2.3 | `step_003` | `step_004` |
| Exact pairwise affine probability theorem for every admissible law and positive-length interval | `assump:joint-density-cap` and the event-measurability/coefficient-volume output of `step_003` | `step_004` | `step_006` and final theorem assembly |
| Ordered-supremum consequence with nonempty/vacuous branch semantics | Direct finiteness output of `step_001`; pairwise output of `step_004`; direct integral and uniform-cube checks for \(\mathcal D_{N,R,\kappa}\ne\varnothing\iff A\ge1\); direct compact-interval check for a positive-length index iff \(\lvert\Theta\rvert>0\) | `step_004` | Final theorem assembly only |
| Exact \(1/\delta\) conditioning value | Specialized deterministic family, with the common \(K_R,V_j,\Gamma_{\rm piv}\) definitions produced by `step_001` | `step_005` | Final theorem assembly and the Counter-example 1 static scale certificate |
| Monic chart certificate, exact object identity, and exact baseline probability bound | Exact polynomial specialization and only the pairwise output of `step_004` | `step_006` | Final theorem assembly |

### Dependency And Assumption Audit

The direct graph is
`step_001`; `step_002 <- step_001`;
`step_003 <- step_001, step_002`;
`step_004 <- step_001, step_003`;
`step_005 <- step_001`; and
`step_006 <- step_001, step_004`.
It is acyclic and earlier-only. In particular, `step_001`, not `step_003`, is
the legal direct producer of \(\Gamma_{\rm piv}<\infty\) for `step_004`;
`step_003` exports only exact event measurability and the coefficient-volume
bound. The only primitive technical assumptions remain
`assump:shared-pfaffian-chain`, `assump:no-forced-root`, and
`assump:joint-density-cap`. The conditions \(A\ge1\) and \(\lvert\Theta\rvert>0\) are
not theorem assumptions: they classify when the two existing supremum index
classes are nonempty and when the usual capacity interpretation applies.

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
  probability bound. In particular, `step_004` consumes this finiteness output
  directly rather than through `step_003`. Other consumers are `step_002`,
  `step_003`, `step_005`, and `step_006`.
- Entry-state / first-update stress result: N/A because there is no recursive,
  iterative, or dynamical process.
- Baseline conclusion preserved: N/A at this step; monic recovery is localized
  in `step_006`.
- Producer-consumer provenance: `step_001` produces root feasibility, pivot
  availability, and finiteness for the direct dependencies `step_002`,
  `step_003`, `step_004`, `step_005`, and `step_006`.
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
  closure, analytic-set measurability, and multiplicity-safe root-event
  coverage.
- Theorem role: It converts local chart velocity into the exact
  \(N\)-dimensional measurable coefficient-volume bound used by the density
  cap.
- Mechanism source: Three exact theorem-critical source interfaces are fixed.
  (i) Kechris, *Classical Descriptive Set Theory*, Springer GTM 156, first
  edition (1995), Section 14, Proposition 14.4, supplies that the Borel image
  of an analytic standard-Borel domain under a Borel map is analytic; it is
  used both for each chart image and, with the coordinate projection, for the
  root event. (ii) Kechris, same edition, Section 21, Theorem 21.10, supplies
  universal measurability of analytic subsets of Polish spaces and hence
  Lebesgue measurability in the bounded Euclidean coefficient cube. (iii)
  Federer, *Geometric Measure Theory*, Springer Grundlehren 153 (1969),
  Section 3.2.3, supplies the equal-dimensional Lipschitz area formula with
  extended multiplicity. On
  \(\{F_j\ne0\}\times\mathbb R^{N-1}\), the insertion map
  \(\Psi_j(\theta,\beta)\) is \(C^1\), hence locally Lipschitz, and
  \(|\det D\Psi_j|=|\partial_\theta T_j|\).
- Source-to-claim adequacy: The source-object mapping and hypothesis discharge
  are as follows. Euclidean spaces are Polish and standard Borel;
  \(D_{j,m}\) is Borel because \(I,E_{j,m}\), the beta cube, and
  \(\{|T_j|\le R\}\) are Borel; \(\Psi_j\) is Borel on that domain. Thus
  Kechris Proposition 14.4 makes \(\Psi_j(D_{j,m})\) analytic. The incidence
  set
  \[
  Z_I=\{(\theta,\alpha)\in(I\cap\Theta)\times[-R,R]^N:
  \phi_\alpha(\theta)=0\}
  \]
  is Borel by continuity, and its continuous coefficient projection is
  \(S_I\), so the same proposition makes \(S_I\) analytic. Kechris Theorem
  21.10 then makes both types of analytic set universally, hence Lebesgue,
  measurable. Countable Borel localization inside the nonzero-pivot open
  chart gives Lipschitz restrictions of \(\Psi_j\), discharging Federer
  3.2.3; equal domain and target dimension makes its Jacobian
  \(|\det D\Psi_j|\) and its normalized Hausdorff measure \(\lambda_N\).
  For
  \[
  D_{j,m}=\{(\theta,\beta):\theta\in I\cap E_{j,m},\ 
  \beta\in[-R,R]^{N-1},\ |T_j(\theta,\beta)|\le R\},
  \]
  Federer 3.2.3 gives the extended-valued identity
  \[
  \int_{D_{j,m}}|\det D\Psi_j|\,d\lambda_N
  =\int_{\mathbb R^N}N(\Psi_j,D_{j,m},a)\,d\lambda_N(a),
  \]
  and therefore
  \(\lambda_N(\Psi_j(D_{j,m}))\le
  \int_{D_{j,m}}|\partial_\theta T_j|\), and `step_002` then gives
  \[
  \int_{D_{j,m}}|\partial_\theta T_j|
  \le (2R)^{N-1}\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
  \]
  Every supported root chooses exactly one \(E_j\) and some finite \(m\), so
  its coefficient lies in one of these images. The conclusion is an upper
  bound on the union image, precisely the needed claim class; it does not
  estimate expected multiplicity instead. Kechris supplies no volume bound,
  and Federer supplies no root coverage, chart selection, derivative bound,
  beta-cube factor, density conversion, or \(\Gamma_{\rm piv}\) estimate.
  Federer 3.2.3 does not require injectivity, finite fibers, regular values,
  transversality, or simple roots; those are recorded known nonoutputs rather
  than hidden hypotheses.
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
  certificate \(\to\) `step_004` density conversion. The only mathematical
  interfaces exported by `step_003` are exact root-event measurability and the
  coefficient-volume bound; `step_001` finiteness is not retransmitted as a
  `step_003` conclusion.
- Null or boundary regime tested: \(N=1\) uses zero-dimensional beta volume
  one. Interval endpoints and chart ties are measurable and cause no length
  duplication. If \(\partial_\theta T_j=0\), the image can be lower
  dimensional, which is consistent with the multiplicity formula. Infinite
  fibers remain legal because the multiplicity is extended-valued.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without an image-measure inequality, root multiplicity prevents a
  valid one-to-one change of variables; without analytic-set measurability,
  neither the image measure nor later density integration has a verified
  event interface.
- Repair route if source is unsupported: The exact source identities,
  locators, statements, convention mapping, hypothesis discharge, and
  nonoutputs are fixed above; local proof may instantiate them but may not
  substitute an unlocated whole-book citation.

### `step_004`

- Step ID: `step_004`
- Claim class: Universal pairwise probability bound, exact rate conversion,
  and branch-qualified law/interval scope closure.
- Theorem role: It proves the exact general affine coordinate-pivot theorem in
  all branches, its literal ordered-supremum consequence, and the usual
  nonvacuous anti-concentration-capacity interpretation precisely when both
  index classes are nonempty.
- Mechanism source: Primitive `assump:joint-density-cap`; exact event
  measurability and the coefficient-volume bound from `step_003`; the direct
  finiteness output \(\Gamma_{\rm piv}<\infty\) from `step_001`; and elementary
  direct checks of the two index classes. `step_003` does not carry or export
  the `step_001` finiteness conclusion.
- Source-to-claim adequacy: `step_003` proves the root event analytic by a
  direct Borel-incidence projection and hence Lebesgue measurable, and exports
  the exact volume bound. Cube support plus the density cap gives, for every
  \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\),
  \[
  \Pr_\mu(S_I)=\int_{S_I}f_\mu(\alpha)\,d\alpha
  \le\kappa\lambda_N(S_I).
  \]
  Substitution of the `step_003` volume certificate and literal algebra give
  exactly
  \[
  \Pr_\mu(S_I)
  \le\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert
  =\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}\lvert I\rvert.
  \]
  For the scope check, necessity of nonempty
  \(\mathcal D_{N,R,\kappa}\) is
  \(1=\int_{[-R,R]^N}f_\mu\le\kappa(2R)^N=A\); sufficiency when \(A\ge1\)
  is the uniform cube density \((2R)^{-N}\mathbf 1_{[-R,R]^N}\), whose
  density cap is then at most \(\kappa\). Thus the law class is nonempty
  exactly when \(A\ge1\). The positive-length interval class is nonempty
  exactly when the compact interval \(\Theta\) has \(\lvert\Theta\rvert>0\). If both
  classes are nonempty, every ratio is nonnegative and the pairwise bound,
  together with direct `step_001` finiteness, makes the inner-then-outer
  supremum a finite nonnegative real bounded by
  \(A\Gamma_{\rm piv}/(2R)\). If either class is empty, the universal pairwise
  statement and displayed supremum consequence are vacuous under the standard
  extended-real reading \(\sup\varnothing=-\infty\); no nonnegative finite
  capacity is claimed in that branch.
- Residual-to-target adequacy: The volume certificate and probability concern
  the identical root-event set \(S_I\). There is no event enlargement after
  `step_003` and no residual probability term. The branch qualification
  changes only the interpretation of an empty ordered supremum and introduces
  no surrogate theorem or strengthened condition.
- Key positive/control term or structural source: The primitive pointwise
  density ceiling \(f_\mu\le\kappa\) almost everywhere, direct `step_001`
  finiteness, and the exact cube-volume and compact-interval nonemptiness
  checks.
- Opposing defect terms: Arbitrary coefficient correlation, possible
  concentration of density near the swept set, an empty density class when
  \(A<1\), an empty positive-length interval class when \(\lvert\Theta\rvert=0\), and
  the invalid inference that `step_003` retransmits `step_001` finiteness.
- Closure/dominance/absorption relation: Correlation is irrelevant because the
  full joint density, not its marginals, is capped. The exact identity
  \(\kappa(2R)^{N-1}=A/(2R)\) performs the only rate conversion. In the
  nonempty branch, take the interval supremum first and the law supremum
  second after the pairwise inequality; in an empty branch, retain the literal
  extended-real inequality without a capacity interpretation.
- Accumulation behavior / scope compatibility: No error accumulates over laws
  or intervals. The same pairwise inequality holds before either supremum.
  Nonempty index classes produce a finite nonnegative ordered supremum; an
  empty class produces \(-\infty\) at the applicable extended-real supremum,
  so no persistent or adversarial defect is hidden.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_003` produces only measurability and volume
  control before density conversion; `step_001` independently produces
  finiteness before the nonempty supremum branch consumes it; the elementary
  index checks use only the setting's raw \(N,R,\kappa,\Theta\). The direct
  paths are `step_003 -> step_004` for probability and
  `step_001 -> step_004` for finiteness, and neither assumes the final
  consequence.
- Entry-state / first-update stress result: N/A because no dynamical procedure
  or mode conversion is present.
- Baseline conclusion preserved: The pairwise output remains an affine theorem
  on the original random lower coefficients and is the only `step_004` output
  consumed by `step_006`. The branch-qualified ordered-supremum interpretation
  is routed only to final assembly and does not alter the monic baseline.
- Producer-consumer provenance: `step_003` plus
  `assump:joint-density-cap` produce the exact pairwise inequality in
  `step_004`; `step_001` directly supplies the separate finiteness interface;
  elementary direct checks produce the nonempty/vacuous branch split. The
  pairwise theorem is consumed by `step_006` and final assembly, while the
  ordered-supremum qualification is consumed only by final assembly.
- Null or boundary regime tested: If \(K_R=\varnothing\), \(S_I=\varnothing\)
  and both sides are zero. Bounds larger than one remain valid upper bounds;
  no unstated small-interval threshold is needed. At \(A=1\), the uniform
  cube law makes the law class nonempty; at \(A<1\), that class is empty. At
  \(\lvert\Theta\rvert=0\), no positive-length interval is indexed. These empty branches
  leave the literal inequality valid but vacuous.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without a full joint density cap, a law may place singular mass on
  a swept hypersurface, and Lebesgue-volume control need not imply probability
  control. Without the direct `step_001` dependency, strict finiteness is not
  legally available. Without the branch split, an empty supremum could be
  mislabeled a nonnegative finite capacity.
- Repair route if source is unsupported: All sources are now exposed under the
  unchanged setting: primitive `assump:joint-density-cap`, direct `step_001`,
  direct `step_003`, and elementary checks. No new assumption or target change
  is needed.

### `step_005`

- Step ID: `step_005`
- Claim class: Exact static conditioning value.
- Theorem role: It proves that the proposed conditioning records the source's
  mandatory \(1/\delta\) scale for Counter-example 1, exactly as required by
  `setting.md`.
- Mechanism source: Direct calculation in the exact scale-stress family.
  Here \(K_1=[-1,1]\), \(V_1=1/\delta\), and for \(\theta\ne0\),
  \(V_2=\delta/\theta^2\), with \(V_2(0)=+\infty\).
- Source-to-claim adequacy: Thus
  \(\min(V_1,V_2)\le1/\delta\) everywhere, while at \(\theta=0\) the minimum
  equals \(V_1=1/\delta\); hence
  \(\sup_{[-1,1]}\min(V_1,V_2)=1/\delta\).
- Residual-to-target adequacy: The produced value is the authoritative target
  \(\Gamma_{\rm piv}(b_\delta,F_\delta;1)\) itself, in the same parameter
  interval and coordinate-ratio convention; there is no surrogate or
  residual.
- Key positive/control term or structural source: The derivative
  \((\theta/\delta)'=1/\delta\), together with the constant pivot at zero.
- Opposing defect terms: The second pivot is undefined at \(\theta=0\) and its
  speed varies with \(\theta\).
- Closure/dominance/absorption relation: The constant pivot is available at
  zero and has speed \(1/\delta\); away from zero, taking the pointwise minimum
  cannot increase that value. The value at zero attains the supremum.
- Accumulation behavior / scope compatibility: Static exact calculation; no
  accumulated defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The deterministic features alone produce the
  conditioning value, and no theorem target is assumed.
- Entry-state / first-update stress result: N/A because there is no recursive
  process.
- Baseline conclusion preserved: N/A; the theorem-facing baseline recovery is
  the monic specialization localized in `step_006`.
- Producer-consumer provenance: `step_005` supplies the scale audit to final
  theorem assembly and the `material_partial` progress boundary.
- Null or boundary regime tested: \(\theta=0\) and \(\delta=1\) are included.
  The excluded \(\delta=0\) regime is not a defined \(C^1\) family.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Omitting the \(1/\delta\) scale would assert a formal-complexity-only
  conditioning certificate that misses the explicit metric rescaling in the
  fixed feature family.
- Repair route if source is unsupported: It is supported by direct algebra.

### `step_006`

- Step ID: `step_006`
- Claim class: Exact baseline specialization, same-target object bridge, and
  public-rate recovery.
- Theorem role: It recovers the monic-polynomial Theorem 2 constant from the
  general affine theorem itself.
- Mechanism source: Direct quotient differentiation for the two primitive
  polynomial pivots, followed only by the pairwise probability theorem from
  `step_004`. On \(|\theta|\le1\), the constant pivot gives
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
  primitive assumptions hold, and the pairwise `step_004` inequality applies
  with \(N=d\). No ordered-supremum or capacity interpretation is consumed.
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
  \(\Gamma\) certificate, and `step_004` already produces the pairwise
  probability theorem. The path is the pairwise `step_004` export plus the
  specialization calculation \(\to\) exact baseline; it does not cite the
  baseline or the branch-qualified supremum interpretation as proof authority.
- Entry-state / first-update stress result: N/A because exact specialization is
  static and no initialized or recursive process is involved.
- Baseline conclusion preserved: Exactly
  \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)|I|\), with the deterministic monic
  coefficient outside the random law and no conservative remainder.
- Producer-consumer provenance: `step_001` supplies the conditioning
  definition, the pairwise output of `step_004` supplies the affine
  probability inequality, and `step_006` supplies the exact baseline
  conclusion to final assembly. The separate `step_004` supremum-semantic
  output is not a `step_006` input.
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
  identities and the pairwise output of `step_004`.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Root feasibility, uniform available-pivot margin \(\rho>0\), and \(\Gamma_{\rm piv}<\infty\) | `step_001` | Compact \(K_R\); cube inequality; primitive no-forced-root; global \(C^1\) bounds \(B_0,B_1\) | Small individual pivots are controlled by selecting a largest coordinate; simultaneous \(F=0\) on \(K_R\) is source-excluded; no claim controls \(\rho\) polynomially in Pfaffian format | Same \(b,F,K_R,V_j\) are produced and consumed; no residual | \(\min_jV_j\le2B_0B_1\rho^{-2}(1+R(N-1))\) | \(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\) from compactness and `assump:no-forced-root` | `step_002`, `step_003`, `step_004`, `step_005`, `step_006` | None for finiteness; general polynomial complexity control is intentionally outside the target |
| Borel disjoint pivot cells and \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\) | `step_002` | `step_001`; Borel extended \(V_j\); exact quotient rule; \(\lvert\beta_i\rvert\le R\) | Ties controlled by least index; selected-pivot zeros excluded; other-coordinate zeros harmless; no global prescribed-coordinate margin is needed | \(T_j\) exactly solves the original root equation for \(\alpha_j\), so residual is zero in the original coefficient coordinates | Triangle inequality applied to the exact derivative; disjoint \(E_j\) prevents chart-length duplication | Nonzero selected pivot from `step_001`; threshold \(1/m\) only exhausts and is not theorem-facing | `step_003` | None |
| Lebesgue-measurable \(S_I\) and \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\) | `step_003`; Kechris, *Classical Descriptive Set Theory*, GTM 156, first ed. (1995), Section 14, Proposition 14.4 and Section 21, Theorem 21.10; Federer, *Geometric Measure Theory*, Grundlehren 153 (1969), Section 3.2.3 | `step_002`; Borel \(D_{j,m}\) and incidence set; Borel chart maps and projection; countable Lipschitz localizations; beta-cube volume. Kechris 14.4 exports analytic chart images and root-event projection; Kechris 21.10 exports universal/Lebesgue measurability; Federer 3.2.3 exports the equal-dimensional multiplicity formula in the same Euclidean convention | Multiple, tangent, and infinite fibers are controlled by Federer's extended multiplicity image-measure inequality, which requires no injectivity, finite fibers, regular values, transversality, or simple roots; denominator boundaries are controlled by monotone exhaustion; Kechris supplies measurability but no volume; Federer supplies neither event coverage nor chart/Jacobian/density controls; no uncontrolled volume term remains | Exact equality \(S_I=\bigcup_{j,m}\Psi_j(D_{j,m})\) in the original coefficient space; the produced and consumed objects and Lebesgue metric coincide, so every residual is zero | Federer 3.2.3 gives \(\lambda_N(\Psi(D))\le\int_D\lvert\det D\Psi\rvert\); `step_002` identifies the determinant and bounds it; monotone convergence in \(m\) and \(\sum_j\lvert I\cap E_j\rvert=\lvert I\cap K_R\rvert\le\lvert I\rvert\) finish the export | Jacobian control from `step_002`; no positive transversality margin is required by Federer 3.2.3 | `step_004` | None |
| Exact pairwise probability inequality \(\Pr_\mu(S_I)\le\kappa(2R)^{N-1}\Gamma\lvert I\rvert=A\Gamma\lvert I\rvert/(2R)\) for every admissible law and positive-length interval | `step_004` | Only the exact event-measurability and coefficient-volume export of `step_003`; primitive full joint-density cap and cube support | Arbitrary correlations are controlled by the joint cap; no marginal or independence defect; no hidden event probability remains; `step_003` supplies no finiteness conclusion and none is attributed to it | Same root event \(S_I\) under Lebesgue volume and \(\mu\); \(\Pr_\mu(S_I)\le\kappa\lambda_N(S_I)\) exactly, with zero residual | Density domination followed by the literal identity \(\kappa(2R)^{N-1}=A/(2R)\); no supremum or branch premise is needed for this export | Primitive \(\kappa\); no auxiliary slack | `step_006`, final theorem assembly | None |
| Literal ordered-supremum inequality in every branch, with a finite nonnegative capacity interpretation exactly when both index classes are nonempty | `step_004`, with direct `step_001` and `step_003` dependencies | Pairwise `step_004` inequality; direct `step_001` finiteness; \(1\le\kappa(2R)^N=A\) as the necessary law-class condition; the uniform cube density as sufficiency; compact-interval geometry for the positive-length index | The law class is empty exactly for \(A<1\); the positive-length interval class is empty exactly for \(\lvert\Theta\rvert=0\). These are semantic branches, not uncontrolled defects or added assumptions | The pairwise ratios are the exact quantities inside the ordered supremum; no transformed object. Empty branches use the standard extended-real value \(-\infty\), so no residual is transferred into a capacity claim | If \(A\ge1\) and \(\lvert\Theta\rvert>0\), take the inner interval supremum and then the outer law supremum and use direct `step_001` finiteness to obtain a finite nonnegative real bounded by \(A\Gamma/(2R)\); otherwise the same displayed inequality is vacuous | Finiteness source is direct `step_001`; nonemptiness thresholds are the exact equalities \(A\ge1\) and \(\lvert\Theta\rvert>0\), used only for interpretation | Final theorem assembly only | None |
| Exact scale certificate \(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\) | `step_005` | Common definitions from `step_001` and explicit deterministic feature derivatives | Pivot-2 singularity at zero is controlled by pivot 1; \(\delta=0\) is outside the family; no distributional defect class exists in this static target | The produced conditioning functional is the consumed target itself on the same family and interval; zero residual | \(V_1=1/\delta\), \(V_2=\delta/\theta^2\) off zero, and the value at zero makes the supremum of their pointwise minimum exactly \(1/\delta\) | Primitive \(\delta>0\) and the constant coordinate | Final theorem assembly and fixed-family progress audit | None |
| Monic \(\Gamma\) certificate and exact Theorem 2 probability rate | `step_006` | Direct two-pivot derivatives; only the pairwise probability export of `step_004`; exact \(d\)-dimensional lower-coefficient law | Large-\(\lvert\theta\rvert\) power growth controlled by top pivot; zero controlled by constant pivot; \(d=1\) handled separately; no singular augmentation; no supremum-branch semantic is consumed | Produced \(b_d+\langle\alpha,F_d\rangle\) equals consumed \(p_\alpha\) identically in the same probability space and interval; zero residual | Pointwise chart inequalities imply \(\Gamma\le d+Rd(d-1)/2\); literal substitution into the pairwise general rate | Constant and top polynomial coordinates; no new margin or threshold | Final theorem assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Root-feasible set restriction, positive available-pivot margin, and finite \(\Gamma_{\rm piv}\) | `step_001`, derived directly from `assump:shared-pfaffian-chain` and `assump:no-forced-root` in the same scalar convention | `step_002`, `step_003`, `step_004`, `step_005`, `step_006` | Finiteness clause and legal chart availability | Primitive assumptions \(\to\) `step_001` \(\to\) every listed consumer | `derived` | None |
| Borel minimizing partition, exhaustion, exact graph map, and derivative certificate | `step_002`, from `step_001` and direct quotient differentiation | `step_003` | Supplies the area-formula domain and integrand | `step_001` \(\to\) `step_002` \(\to\) `step_003` | `derived` | None |
| Analytic/Lebesgue-measurable root event and swept coefficient-volume bound | `step_003`, using Kechris, *Classical Descriptive Set Theory*, GTM 156, first ed. (1995), Section 14, Proposition 14.4 for Borel-image/projection analyticity and Section 21, Theorem 21.10 for universal/Lebesgue measurability, plus Federer, *Geometric Measure Theory*, Grundlehren 153 (1969), Section 3.2.3 for the equal-dimensional Lipschitz multiplicity formula. Euclidean standard-Borel and Lebesgue conventions match; Borel domains/maps and countable Lipschitz localization discharge the hypotheses; the sources do not produce coverage, Jacobian bounds, density conversion, or \(\Gamma_{\rm piv}\) control | `step_004` | The only `step_003` theorem-facing export: exact root-event measurability and its coefficient-volume rate, without injectivity, finite-fiber, regular-value, transversality, or simple-root assumptions | `step_001`,`step_002` \(\to\) `step_003` \(\to\) `step_004`; no finiteness conclusion is carried along this edge | `derived` | None |
| Exact pairwise arbitrary-law affine probability theorem | `step_004`, from the exact measurability/volume output of `step_003` and primitive `assump:joint-density-cap` | `step_006`, final theorem assembly | Universal pairwise affine conclusion and the probability producer for exact monic recovery | `step_003` plus primitive density cap \(\to\) `step_004` pairwise export \(\to\) `step_006`/assembly | `derived` | None |
| Literal ordered-supremum consequence and its nonempty/vacuous interpretation | `step_004`, from its pairwise output, direct `step_001` finiteness, and elementary checks \(\mathcal D_{N,R,\kappa}\ne\varnothing\iff A\ge1\) and interval-index nonemptiness \(\iff\lvert\Theta\rvert>0\) | Final theorem assembly only | States the formalized displayed inequality in all branches and restricts the usual finite nonnegative capacity interpretation to the branch where both index classes are nonempty | `step_001`, `step_003` \(\to\) `step_004` \(\to\) assembly; no path from this semantic export to `step_006` | `derived` | None |
| Exact scale-stress conditioning value | `step_005`, direct differentiation in the exact deterministic specialized objects | Final theorem assembly and fixed-family progress audit | Counter-example 1 static certificate \(\Gamma_{\rm piv}=1/\delta\) | Specialized primitive family plus `step_001` definitions \(\to\) `step_005` \(\to\) assembly | `derived` | None |
| Exact same-object monic bridge and Theorem 2 constant | `step_006`, from direct polynomial chart identities and only the pairwise probability output of `step_004` | Final theorem assembly | Baseline invariance conclusion | Pairwise `step_004` export plus direct monic calculation \(\to\) `step_006` \(\to\) assembly | `derived` | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Prove every supported root lies in compact \(K_R\); if \(K_R=\varnothing\), the root event is empty and \(\Gamma=0\); otherwise prove \(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\), derive the explicit crude quotient bound \(\min_jV_j\le2B_0B_1\rho^{-2}(1+R(N-1))\), and conclude \(\Gamma_{\rm piv}<\infty\). | None | Primitive `assump:shared-pfaffian-chain`, `assump:no-forced-root` | Obtaining a nonvacuous pivot lower bound only on the root-feasible set without assuming a globally nonzero prescribed coordinate or a theorem-facing norm margin | Direct compactness, triangle inequality, extreme-value theorem, quotient rule in the exact setting convention | Root-feasibility and finite-conditioning certificate | R1: preserve exact \(N,R\) exposure while using \(B_0,B_1,\rho\) only as proof-local witnesses of finiteness, not hidden rate constants | `PENDING` |
| `step_002` | Prove the extended \(V_j\) and least-minimizer selector are Borel, \((E_j)_j\) is a disjoint Borel partition of \(K_R\), \(E_{j,m}\uparrow E_j\), and on each selected chart \(T_j\) solves the root equation exactly with \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\rm piv}\). | `step_001` | Primitive `assump:shared-pfaffian-chain`; derived pivot availability from `step_001` | Measurable tie handling and exact velocity control without a single global pivot or an \(N\)-fold union bound | Finite Borel minimization and direct quotient differentiation | Measurable chart and Jacobian interface | R1: exact \(R\)-weighted velocity inequality with no auxiliary tolerance in the theorem rate | `PENDING` |
| `step_003` | For \(S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,\phi_\alpha(\theta)=0\}\), prove that every chart image and \(S_I\) are analytic and Lebesgue measurable, prove exact graph-image coverage, and prove \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\), including \(N=1\), tangent/multiple/infinite fibers, measurable cells, and the \(m\to\infty\) limit. | `step_001`, `step_002` | Primitive `assump:shared-pfaffian-chain`, `assump:no-forced-root`; derived interfaces from `step_001`, `step_002`; source hypotheses discharged by Euclidean Polish/standard-Borel structure, Borel domains/maps, and countable Lipschitz localization | Verifying analytic-set and area-formula interfaces before controlling countable/finite union volume without injectivity or chart-count loss | Kechris, *Classical Descriptive Set Theory*, GTM 156, first ed. (1995), Section 14, Proposition 14.4 (Borel images/projections are analytic) and Section 21, Theorem 21.10 (analytic sets are universally/Lebesgue measurable); Federer, *Geometric Measure Theory*, Grundlehren 153 (1969), Section 3.2.3 (equal-dimensional Lipschitz area formula with extended multiplicity); continuity from below, monotone convergence, and Tonelli. These cited results do not require or output injectivity, finite fibers, regular values, transversality, simple roots, root coverage, chart bounds, density conversion, or \(\Gamma_{\rm piv}\) control | Only the measurable root-event and coefficient-volume certificate; no finiteness export | R1: prove the literal factor \((2R)^{N-1}\) and disjoint-length identity, with no multiplicity or boundary remainder | `PENDING` |
| `step_004` | Using direct dependencies `step_001` and `step_003`, apply the full joint-density cap to prove for every admissible law and positive-length interval the exact probability inequality and literal \(A/(2R)\) form. Prove directly \(\mathcal D_{N,R,\kappa}\ne\varnothing\iff A\ge1\) and positive-length interval-index nonemptiness \(\iff\lvert\Theta\rvert>0\). Take the inner interval supremum and then the outer law supremum: when both classes are nonempty, obtain a finite nonnegative real bounded by \(A\Gamma_{\rm piv}/(2R)\) using direct `step_001` finiteness; if either class is empty, retain the literal universal theorem and displayed consequence as vacuous under \(\sup\varnothing=-\infty\), without calling it a capacity. | `step_001`, `step_003` | Primitive `assump:joint-density-cap`; derived finiteness from `step_001`; only exact event measurability and the volume bound from `step_003`. Neither \(A\ge1\) nor \(\lvert\Theta\rvert>0\) is assumed | Preserving arbitrary correlation, exact quantifier and supremum order, literal constants, and the distinction between nonvacuous capacity and empty-index semantics without importing finiteness through `step_003` | Lebesgue density domination; direct algebra; \(1=\int f_\mu\le A\); uniform cube density for sufficiency; elementary compact-interval geometry; standard extended-real empty-supremum convention | Exact pairwise affine probability theorem plus branch-qualified ordered-supremum consequence | R1: \(\Pr(S_I)\le\kappa(2R)^{N-1}\Gamma\lvert I\rvert=A\Gamma\lvert I\rvert/(2R)\), ordinary probability and no hidden constant in every admissible pair; finite nonnegative capacity interpretation only when \(A\ge1\) and \(\lvert\Theta\rvert>0\) | `PENDING` |
| `step_005` | For \(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\), \(R=1\), and \(0<\delta\le1\), prove exactly \(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\), including the \(\theta=0\) pivot convention. | `step_001` | Specialized primitive instances of `assump:shared-pfaffian-chain`, `assump:no-forced-root`; current attempt-3 common definitions from the fresh accepted `step_001` dependency | Computing the pointwise minimizing pivot at zero and away from zero without adding a law, event, or probability target | Direct quotient differentiation in the exact setting convention. The fresh proof must identify the then-current attempt-3 `step_001` proof and accepted review by complete 64-hex SHA-256 values; no attempt-2 or earlier digest is a legal dependency identity | Counter-example 1 static scale certificate | R2: literal \(1/\delta\) conditioning value with no hidden dependence or added quantitative output | `PENDING` |
| `step_006` | For every \(d\ge1\), calculate the constant-pivot and top-pivot velocities, prove \(\Gamma_{\rm piv}\le d+Rd(d-1)/2\), localize any positive-length bounded interval inside a compact \(\Theta\), handle zero-length intervals by the proper-affine-hyperplane null-set argument, verify exact equality with the monic polynomial and the \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N,A)\) tuple, and apply only the pairwise probability output of `step_004` to recover the exact Theorem 2 bound. | `step_001`, `step_004` | Primitive `assump:shared-pfaffian-chain`, `assump:no-forced-root`, `assump:joint-density-cap`; pairwise theorem from `step_004` | Handling \(\lvert\theta\rvert\le1\), \(\lvert\theta\rvert>1\), \(d=1\), zero-length and positive-length bounded intervals, and the lower-dimensional density without singular augmentation; no supremum-branch semantic is consumed | Direct monomial quotient differentiation, affine-hyperplane nullity, and exact specialization of the pairwise `step_004` theorem | Exact affine-monic baseline bridge | R3: literal \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert I\rvert\), no auxiliary threshold, probability conversion, or conservative loss | `PENDING` |

## Dependency Notes

The graph is acyclic: `step_001` supplies only deterministic root-feasibility
and pivot availability; `step_002` turns those controls into the chart
interface; `step_003` converts that interface into coefficient volume; and
`step_004` takes two direct inputs: only event measurability and coefficient
volume from `step_003`, and finiteness from `step_001`. `step_005` is a direct
specialized audit after the common definitions. `step_006` consumes the
pairwise probability output of `step_004` and a direct polynomial calculation,
not the ordered-supremum branch interpretation. The exact direct graph is the
one recorded in the theorem-level block map and dependency/assumption audit;
every edge points to an earlier stable ID.

This attempt-3 sketch treats every attempt-2 global diagnostic, step proof,
step review, and any downstream proof or review artifact as stale and not
current evidence. The archived attempt-2 sketch/review/global pair and produced
step artifacts remain nonbinding history. After this sketch is accepted, the
controller must generate a fresh attempt-3 global proof and global review and
fresh attempt-3 proofs and reviews for all six stable steps before assembly.
In particular, `step_005` legally retains `step_001` for the common
\(K_R,V_j,\Gamma_{\rm piv}\) definitions, but its fresh proof must name the
then-current attempt-3 `step_001` proof and accepted review using complete
64-hex SHA-256 values. No attempt-2 or earlier proof/review digest is current
dependency evidence.

### Final Assembly Plan

Final assembly first uses `step_001` for the separate theorem clause
\(\Gamma_{\rm piv}<\infty\). It then uses the pairwise output of `step_004` to
state the exact probability inequality for every admissible law and every
positive-length interval in every branch. The ordered-supremum output of
`step_004` is stated literally in all branches, together with its semantic
qualification: it is the usual finite nonnegative anti-concentration capacity
when \(A\ge1\) and \(\lvert\Theta\rvert>0\), and is only a vacuous extended-real bound
if either index class is empty. This qualification adds no theorem assumption.
Assembly uses `step_005` for the exact static \(1/\delta\) certificate and
`step_006` for the exact monic baseline. `step_006` receives only the pairwise
probability theorem from `step_004`, so the monic statement, arbitrary-
correlation scope, deterministic leading coefficient, and exact constant are
unchanged. No generated invariant is assumed, no chart is consumed before
construction, and the only limiting operation remains the explicit monotone
exhaustion in `step_003`.

## Blockers

None.

The triggering interface defects are repaired without changing the theorem:
`step_004` now depends directly on the legal `step_001` finiteness producer,
and its nonempty and empty supremum branches are separated. The branches
\(A<1\) or \(\lvert\Theta\rvert=0\) are not blockers and do not create new assumptions;
they are precisely the vacuous branches of the literal displayed consequence.

The deliberately unresolved full-source question is a polynomial bound on
\(\Gamma_{\rm piv}\) from meaningful general Pfaffian instance-complexity
data. It is outside the formalized `material_partial` claim; this sketch
neither claims nor implies such a certificate from
\(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or any other Pfaffian-format
descriptor, and it does not assign that open problem to future local proof
work.
