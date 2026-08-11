# LITERATURE_SURVEY.md

Fresh-attempt search cutoff: 2026-07-28. The effective research direction is the full
`RESEARCH_BRIEF.md`: characterize, from independently verifiable coefficient-law
properties, when the real-root hitting constant of a bounded-support monic random
polynomial is finite and when it is uniformly polynomial in `(d,R)`. The active
sub-targets are therefore (a) finiteness on every positive-length interval and (b)
uniform polynomial dependence over indexed `(d,R)` families. The primary objects are
the coefficient-law class and the induced real-root process, so the scope is
meaningfully splittable for foundation search.

No run-root `papers/` or `literature/` sources were present. The fresh search used the
official PMLR source and supplement, arXiv primary records and PDFs, Crossref, and
OpenAlex. It covered exact-title and alias searches for random-polynomial root
anti-concentration, interval root probabilities, Kac-Rice/root intensities, dependent
and exchangeable coefficients, polynomial-growth coefficients, fixed-point small-ball
bounds, and slice-density bounds. References and citing works were expanded from the
2020 baseline, Edelman--Kostlan, and Do--Nguyen--Vu; a final exact-term and 2024--2026
missed-paper audit found newer concentration results for the *number* of real roots,
but no additional source-regime interval-Lipschitz characterization. Absence statements
below are limited to this searched corpus.

## 1. direct theory

### Other: Root anti-concentration characterization

#### Uniform interval finiteness and polynomial `(d,R)` dependence

[D1] Invited Open Problem: Online Optimization of Piecewise-Lipschitz Functions with Applications to Data-Driven Algorithm Design (COLT invited open problem, PMLR 2026)

**Identifier:** https://proceedings.mlr.press/v336/balcan26a.html

**Setting:** One-dimensional parameter `theta`, a monic degree-`d` polynomial with
coefficient vector in `[-R,R]^d`, and an arbitrary coefficient-distribution class.

**Goal:** Identify natural necessary and sufficient coefficient-law conditions for a
uniform linear-in-interval root-hitting bound, with special emphasis on a bound
polynomial in `d` and `R`.

**Main result:** The paper states the bounded-joint-density baseline and formalizes the
unresolved characterization problem. If the coefficient density is bounded by
`kappa`, it records

\[
\Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq \kappa(2R)^{d-1}\left(d+\frac{Rd(d-1)}2\right)|I|.
\]

It also explains how such a bound enters the dispersion-to-regret recipe.

**Key proof techniques:** The baseline is imported from Balcan--Dick--Pegden; the
paper organizes the root anti-concentration, VC/dispersion, and online-regret chain and
supplies counterexamples and normalization diagnostics for the separate Pfaffian
question.

**Limitations:** This is the problem source, not a resolution. The displayed baseline
is exponential in `d` through `(2R)^{d-1}`, assumes a full joint-density cap, and is
only sufficient. The source explicitly says bounded marginals alone are insufficient
and regards independence as too strong for many applications.

**Relation to research scope:** direct prior work; central source direction and binding
baseline for both active sub-targets, including all interval, law-class, and `(d,R)`
uniformity requirements.

[D2] Semi-bandit Optimization in the Dispersed Setting (published, PMLR 124, UAI 2020)

**Identifier:** arXiv:1904.09014

**Setting:** Piecewise-Lipschitz online losses whose discontinuities are roots of
random polynomials. The monic specialization uses bounded coefficients and a bounded
joint density. Appendix Theorem 18 also treats coefficient vectors that are affine
images of a bounded latent vector with a bounded density, provided no real number is a
forced root for every latent input.

**Goal:** Convert coefficient randomness into interval root anti-concentration and then
into dispersion and semi-bandit regret guarantees.

**Main result:** The monic specialization proves a finite constant times `|I|`; the
2026 source gives the explicit bound in [D1]. The affine-image theorem proves
`Pr(phi has a root in I) <= kappa |I|/K(d,R,f)` for a nondegenerate affine map `f`.
Thus it already permits some dependent and ambiently singular affine coefficient laws,
although with an opaque map-dependent constant.

**Key proof techniques:** Factorization at a root, representation of fixed-root
coefficient sets as hyperplane sections, cube-section volume bounds, Cauchy's root
bound, and a sweep-volume estimate as the root ranges over an interval; VC-type
uniform convergence then yields dispersion.

**Limitations:** The theorem is sufficient, not necessary. The explicit monic bound is
not uniformly polynomial in `(d,R)`: its degree in `R` grows with `d`, and for fixed
`R>1/2` it is exponential in `d`. The affine extension requires a bounded-density
latent law, an affine representation, and a nondegeneracy condition, while
`K(d,R,f)` is not made uniformly polynomial over indexed families. It does not
characterize arbitrary dependent or nonlinear singular laws.

**Relation to research scope:** direct prior work; central closest theorem. Any new
claim must improve its coefficient-law coverage, its explicit dependence, or its
necessity direction rather than rename its root-hitting constant.

Only these two papers located in the fresh search state a theorem for the full
interval root-hitting event used by the source. The remaining literature proves local
root-intensity, universality, total-root-count, or fixed-parameter small-ball results and
is therefore classified as foundation rather than direct theory.

## 2. foundation theory

### Component Theory

#### Component: Coefficient-law concentration and slice geometry

##### Other: Fixed-parameter anti-concentration and projection density

[F1] Distributional and Lq Norm Inequalities for Polynomials over Convex Bodies in Rn (published, Mathematical Research Letters 2001)

**Identifier:** DOI:10.4310/MRL.2001.v8.n3.a1

**Setting:** A degree-`m` polynomial under the uniform law on a convex body and, in
Theorems 7--8, under an arbitrary log-concave probability measure, including measures
supported on an affine subspace.

**Goal:** Control polynomial norm comparisons and polynomial sublevel probabilities
dimension-freely.

**Main result:** For a log-concave probability measure `mu`, Theorem 8 implies the
standard Carbery--Wright form
`mu(|P| <= epsilon) <= C m (epsilon / integral |P| dmu)^(1/m)` for a
degree-`m` scalar polynomial. It is a coefficient-side small-ball theorem and remains
meaningful for dependent and ambiently singular log-concave laws.

**Key proof techniques:** Kannan--Lovasz--Simonovits localization, one-dimensional
weighted polynomial inequalities, Remez-type bounds, and norm extrapolation.

**Limitations:** Applied to `P(alpha)=phi_alpha(theta)` at fixed `theta`, the exponent is
`1/m` for a degree-`m` polynomial in the random inputs; for the present coefficient
vector the evaluation is linear, but a fixed-`theta` small-ball estimate alone does not
control the continuum of `theta`, derivative degeneracy, or the exact root event. Its
normalizing norm must also be bounded below uniformly from coefficient-side data.

**Relation to research scope:** component-level foundation; narrowed to fixed-parameter
sublevel probabilities and useful only after a noncircular bridge to interval root
hitting.

[F2] Small Ball Probabilities for Linear Images of High-Dimensional Distributions (published, IMRN; online 2014)

**Identifier:** arXiv:1402.4492

**Setting:** `AX` for a deterministic matrix `A` and a random vector `X` with
independent coordinates whose one-dimensional concentration functions are bounded.

**Goal:** Tensorize coordinate anti-concentration into small-ball bounds for a linear
image.

**Main result:** If every coordinate falls in any interval of length `T` with
probability at most `p`, then a ball of radius `T ||A||_HS` captures at most
`(Cp)^(0.9 r(A))`, where `r(A)` is the stable rank.

**Key proof techniques:** Tensorization of concentration functions, stable-rank
reduction, restricted invertibility, and Euclidean small-ball geometry.

**Limitations:** Independence is essential in the stated theorem. A polynomial
evaluation is one linear functional, and even a sharp bound for each fixed `theta`
does not by itself give a linear-in-`|I|` bound for existence of a zero somewhere in
`I`. The scale and stable-rank normalizations also need uniform control.

**Relation to research scope:** component-level foundation; narrowed coefficient-side
tool that recovers an independence-style route but does not address the desired
dependent-law characterization.

[F3] On the Increase of Dispersion of Sums of Independent Random Variables (published, Theory of Probability and Its Applications 1961)

**Identifier:** DOI:10.1137/1106010

**Setting:** Sums of independent real random variables, quantified through Levy
concentration functions.

**Goal:** Bound the maximum mass of a short interval for a sum using the corresponding
concentration of its summands.

**Main result:** Rogozin's inequality shows that convolution spreads mass and controls
the concentration function of a sum by the individual concentration scales. It is a
canonical route from bounded marginal densities plus independence to anti-concentration
of a linear form.

**Key proof techniques:** Concentration functions, convolution/rearrangement arguments,
and comparison with extremal one-dimensional laws.

**Limitations:** It requires independence and treats a single linear combination at a
fixed parameter. It supplies neither control of the swept zero set nor necessary
conditions for dependent coefficient laws.

**Relation to research scope:** component-level foundation; residual baseline context
for why independent bounded marginals work and why the source asks for a different
dependence-sensitive condition.

[F4] Slicing Convex Bodies: Bounds for Slice Area in Terms of the Body's Covariance (published, Proceedings of the AMS 1980)

**Identifier:** DOI:10.1090/S0002-9939-1980-0572315-5

**Setting:** Hyperplane sections of a convex body, with section size related to the
body's covariance structure.

**Goal:** Replace crude ambient-volume information by covariance-sensitive control of
slice areas.

**Main result:** Central hyperplane section volumes of a convex body are quantitatively
related to directional covariance. For uniform convex-body coefficient laws this gives
a separately checkable geometric route to projection-density bounds.

**Key proof techniques:** Convex-geometric slicing, covariance normalization, and
Brunn--Minkowski-type section estimates.

**Limitations:** The result concerns individual central sections of uniform convex-body
laws. Root hitting sweeps affine sections with `theta`; off-center sections, derivative
or angle control, and the union over an interval still require proof. Covariance may
hide unfavorable `d,R` dependence unless normalized uniformly.

**Relation to research scope:** component-level foundation; narrowed candidate tool for
dependent log-concave or uniform-convex families, not a root anti-concentration theorem.

[F5] Cube Slicing in Rn (published, Proceedings of the AMS 1986)

**Identifier:** DOI:10.1090/S0002-9939-1986-0840631-0

**Setting:** Hyperplane sections of the Euclidean unit cube.

**Goal:** Determine dimension-free extremal bounds for cube-section volume.

**Main result:** A central hyperplane section of the unit cube has volume at most
`sqrt(2)`. This is the geometric slice estimate used in the proof architecture of [D2].

**Key proof techniques:** Fourier analysis of section volumes and sharp geometric
inequalities for products of sinc functions.

**Limitations:** It controls geometric volume, not probability under an arbitrary
coefficient law. Combining it with a full joint-density cap reintroduces ambient cube
volume and hence the exponential `(2R)^(d-1)` behavior in the source baseline.

**Relation to research scope:** component-level foundation; central to understanding
the baseline proof but residual rather than a path by itself to polynomial `(d,R)`
dependence.

#### Component: Induced real-zero process of a random polynomial

##### Other: Local intensities, dependence, and degree asymptotics

[F6] On the Average Number of Real Roots of a Random Algebraic Equation (published, Bulletin of the AMS 1943)

**Identifier:** DOI:10.1090/S0002-9904-1943-07912-8

**Setting:** Kac polynomials with independent centered Gaussian coefficients.

**Goal:** Compute the expected number and density of real zeros.

**Main result:** Kac derives an integral formula for the expected real-zero count and
the asymptotic `(2/pi) log d` for degree `d`.

**Key proof techniques:** Joint Gaussian density of the polynomial and its derivative,
level-crossing integration, and asymptotic analysis near `theta = +/-1`.

**Limitations:** The leading coefficient is random, coefficients are unbounded and
independent, and the theorem concerns expected root counts, not the probability of at
least one root in every interval with a uniform Lipschitz constant. It has no radius
parameter `R`.

**Relation to research scope:** component-level foundation; canonical root-intensity
starting point, narrowed away from the bounded-support monic law-class problem.

[F7] How Many Zeros of a Random Polynomial Are Real? (published, Bulletin of the AMS 1995)

**Identifier:** DOI:10.1090/S0273-0979-1995-00571-9

**Setting:** Random linear combinations `a_0 f_0(t)+...+a_n f_n(t)` with a centered
multivariate Gaussian coefficient vector of covariance `C`, including correlated
coefficients.

**Goal:** Give a geometric formula for local and global expected real-zero counts.

**Main result:** With `w(t)=C^(1/2)v(t)` normalized to the unit sphere, Theorem 3.1
gives
`E N(I) = (1/pi) integral_I ||w'(t)|| dt`. For the standard Kac basis this recovers
the exact root density and `(2/pi) log n + O(1)` total expectation.

**Key proof techniques:** Integral geometry, the spherical image of the moment curve,
the Buffon-needle principle, and the Fubini--Study metric.

**Limitations:** Gaussian coefficients are unbounded and the leading coefficient is
random. Finiteness or boundedness of the intensity must be checked from a nondegenerate
covariance curve; the result neither handles a coefficient-law class uniformly nor
produces a bounded-support polynomial `(d,R)` rate. Treating its intensity formula as
the desired condition without a coefficient-side covariance estimate would be circular
for the source target.

**Relation to research scope:** component-level foundation; narrowed but the closest
coefficient-side exact local-intensity formula for dependent Gaussian laws.

[F8] The Real Zeros of a Random Algebraic Polynomial with Dependent Coefficients (published, Rocky Mountain Journal of Mathematics 2012)

**Identifier:** arXiv:0906.1996

**Setting:** A stationary sequence of centered standard Gaussian coefficients whose
covariance has a positive continuous spectral density; a continuously differentiable
spectral density yields a sharper error term.

**Goal:** Determine whether dependence changes the asymptotic expected number of real
zeros.

**Main result:** The expected total number is asymptotic to `(2/pi) log n`; with a
`C^1` spectral density the error is `O(log log n)`. Thus broad short-range Gaussian
dependence preserves the independent-case total-root scale.

**Key proof techniques:** Kac--Rice, spectral representation of stationary covariance,
and interval decomposition near `+/-1`.

**Limitations:** The law is unbounded Gaussian, not monic or supported on `[-R,R]^d`.
The conclusion is a global expectation asymptotic and does not bound arbitrarily short
intervals linearly; spectral-density constants are not audited as uniform `(d,R)`
parameters.

**Relation to research scope:** component-level foundation; narrowed evidence that
natural dependence can preserve root-count scaling, but it does not establish finite
`C_D`.

[F9] Average Number of Real Roots of Random Polynomials Defined by the Increments of Fractional Brownian Motion (published online, Journal of Theoretical Probability 2018)

**Identifier:** arXiv:1708.00776

**Setting:** Polynomial coefficients are consecutive increments of fractional Brownian
motion with Hurst parameter `H in (0,1)`, a natural correlated Gaussian family.

**Goal:** Quantify how long-range coefficient dependence affects real roots.

**Main result:** The expected number of real zeros is asymptotic to
`K_H log n`, where `K_H=(1+2 sqrt(H(1-H)))/pi`; the independent increment case is
`H=1/2`.

**Key proof techniques:** Covariance asymptotics for fractional Gaussian noise,
Kac--Rice integration, and separate analysis of positive and negative roots.

**Limitations:** Coefficients are unbounded and the leading term is random. The result
controls total expected roots rather than local hitting, and uniformity as `H` approaches
a boundary is not the source's indexed `(d,R)` uniformity.

**Relation to research scope:** component-level foundation; narrowed natural dependent
example showing that a coefficient covariance parameter changes root-count constants.

[F10] Real Zeroes of Random Polynomials, II: Descartes' Rule of Signs and Anti-Concentration on the Symmetric Group (published, Israel Journal of Mathematics 2017)

**Identifier:** DOI:10.1007/S11856-017-1536-5

**Setting:** Polynomials with exchangeable real coefficients, including random
permutations of an arbitrary deterministic coefficient multiset and iid coefficients.

**Goal:** Bound the expected number of nonzero real roots without coordinate
independence.

**Main result:** The expected number of nonzero real roots is `O(log n)` for
exchangeable coefficients, with an additional explicit term for zeros at the origin in
the iid case.

**Key proof techniques:** Descartes' rule of signs, Taylor-series sign changes, and a
new anti-concentration inequality for random permutations.

**Limitations:** A global `O(log n)` root count does not imply a finite local hitting
constant. Discrete exchangeable laws can put atoms on particular root locations, which
makes the ratio by `|I|` infinite as intervals shrink. The polynomial is not monic unless
one conditions or normalizes, which may destroy exchangeability or boundedness.

**Relation to research scope:** component-level foundation; narrowed dependent and
possibly singular coefficient model that sharply demonstrates the gap between few
total roots and root anti-concentration.

[F11] Roots of Random Functions: A Framework for Local Universality (published, American Journal of Mathematics 2022)

**Identifier:** arXiv:1711.03615

**Setting:** Random analytic functions `sum_i xi_i phi_i(z)` with independent
coefficients and broad deterministic analytic bases, including Kac, Weyl, elliptic,
and trigonometric ensembles.

**Goal:** Reduce local root-distribution calculations for non-Gaussian coefficients to
the Gaussian case in a unified way.

**Main result:** Under moment, delocalization, and non-concentration hypotheses, local
root statistics are universal; applications sharpen real-root estimates across several
standard ensembles.

**Key proof techniques:** Local universality/replacement, logarithmic-magnitude
comparison, small-ball estimates for random sums, and Gaussian Kac--Rice evaluation.

**Limitations:** The applications use independent coefficients and asymptotic local
scales for specified ensembles. The hypotheses do not yield a nonasymptotic
linear-in-`|I|` bound uniformly over every interval and law in a bounded-support class,
and constants are not expressed as a polynomial in `(d,R)`.

**Relation to research scope:** component-level foundation; narrowed local-statistics
machinery and a useful missed-paper audit anchor, not a source-regime characterization.

[F12] Roots of Random Polynomials with Coefficients of Polynomial Growth (published, Annals of Probability 2018)

**Identifier:** arXiv:1507.04994

**Setting:** `P_n(z)=sum_i c_i xi_i z^i` with independent, not necessarily identical,
coefficients having uniformly bounded `(2+epsilon)` moments and deterministic `c_i`
of polynomial growth.

**Goal:** Prove local universality and derive sharp expected real-root counts without
requiring explicit deterministic coefficients.

**Main result:** Local correlation functions match Gaussian analogues near the unit
circle. For generalized polynomial coefficient profiles the expected real-root count
has an explicit logarithmic leading term plus `O(1)`; more generally polynomial growth
gives upper and lower bounds of order `log n`.

**Key proof techniques:** Universality by sampling, Lindeberg replacement,
log-magnitude comparison, Kac--Rice in the Gaussian case, and local root-count
estimates.

**Limitations:** Coordinate independence remains central, the leading coefficient is
random, and the result concerns asymptotic correlation/root counts rather than a
uniform root-hitting Lipschitz constant. No coefficient radius `R` or uniform
polynomial `(d,R)` bound is exposed.

**Relation to research scope:** component-level foundation; narrowed degree-scaling
proxy that cannot substitute for the requested interval probability.

[F13] Real Roots of Random Polynomials with Coefficients of Polynomial Growth: A Comparison Principle and Applications (published, Electronic Journal of Probability 2021)

**Identifier:** arXiv:1905.02101

**Setting:** Independent real coefficients with means and variances of polynomial
growth, uniformly bounded `(2+epsilon)` moments, and possible nonzero means.

**Goal:** Compare local real-root counts of a noncentered polynomial with those of its
centered random part according to which component dominates.

**Main result:** The comparison principle gives `O(1)` roots where the mean dominates
and centered-case root counts plus `O(1)` where noise dominates; it yields explicit
`Theta(log n)` or `O(1)` total-root regimes for Kac and hyperbolic families.

**Key proof techniques:** Local anti-concentration, logarithmic integrability,
Lindeberg swapping, correlation-measure comparison, reciprocal-polynomial analysis,
and Kac--Rice after Gaussian reduction.

**Limitations:** Independence and moment/variance comparability are assumed. The
theorem controls expected counts on enlarged macroscopic intervals, not the probability
of a root in every arbitrarily short interval, and its constants do not implement the
source's uniform `(d,R,eta)` contract.

**Relation to research scope:** component-level foundation; narrowed framework for
noncentered laws and local counts, with no noncircular coefficient-side criterion for
`C_D`.

**Testbed Fallback:**

`Testbed: general differentiable random-field level crossings and parametrized fibers`

[F14] Mathematical Analysis of Random Noise (published, Bell System Technical Journal 1945)

**Identifier:** DOI:10.1002/J.1538-7305.1945.TB00453.X

**Setting:** Differentiable stationary random processes, originally motivated by
random noise and level crossings.

**Goal:** Relate expected level-crossing counts to the joint law of process value and
derivative.

**Main result:** Rice's level-crossing formula expresses expected crossing intensity
as an integral of derivative magnitude against the joint value/derivative density.

**Key proof techniques:** Stationary-process calculus, joint densities, spectral
moments, and infinitesimal crossing analysis.

**Limitations:** Regularity and density hypotheses are needed, and the formula is an
identity. It is not an independently verifiable coefficient-law bound; using the
resulting intensity as the condition would violate the brief's noncircularity rule
unless that intensity is bounded from coefficient structure.

**Relation to research scope:** testbed-level foundation; residual calculus for
converting a verified joint-density estimate into a root intensity.

[F15] On the Mean Number of Crossings of a Level by a Stationary Gaussian Process (published, Theory of Probability and Its Applications 1961)

**Identifier:** DOI:10.1137/1106059

**Setting:** Stationary Gaussian processes crossing a fixed level under smoothness and
nondegeneracy assumptions.

**Goal:** Establish finiteness/formulas for mean crossing counts and rule out
pathological tangencies under appropriate hypotheses.

**Main result:** Bulinskaya gives crossing-count control for smooth stationary Gaussian
processes and the transversality principle now commonly called Bulinskaya's lemma.

**Key proof techniques:** Gaussian joint-density estimates, derivative control, and
level-crossing approximation.

**Limitations:** It is Gaussian, stationary, and process-level. Verifying its
nondegeneracy uniformly for bounded-support monic polynomial laws is a separate task,
and it gives no explicit polynomial dependence on `d,R`.

**Relation to research scope:** testbed-level foundation; narrowed transversality tool
for excluding multiple/tangent crossings after a coefficient-side verification.

[F16] On a General Kac-Rice Formula for the Measure of a Level Set (published, Annals of Applied Probability 2025)

**Identifier:** arXiv:2304.07424

**Setting:** General, possibly non-Gaussian random fields from `R^D` to `R^q`, with
level sets measured by Hausdorff measure.

**Goal:** Obtain rectifiability and a Kac--Rice formula under weak assumptions beyond
the classical Gaussian setting.

**Main result:** The paper gives weak conditions for level-set rectifiability and a
general formula for the expected `(D-q)`-dimensional Hausdorff measure, including broad
non-Gaussian cases.

**Key proof techniques:** Coarea/area formulas, rectifiability, conditional
expectations, approximation, and measure-theoretic random-field analysis.

**Limitations:** The result computes expected level-set measure; it does not bound the
probability of a nonempty level set in an interval, and its assumptions/conditional
quantities still require coefficient-side estimates. It contains no uniform
`(d,R)` specialization for this monic polynomial family.

**Relation to research scope:** testbed-level foundation; narrowed modern route for a
root-process representation, subject to the brief's ban on stopping at an equivalent
intensity functional.

[F17] Kac-Rice Formulas and the Number of Solutions of Parametrized Systems of Polynomial Equations (published, Mathematics of Computation 2022)

**Identifier:** arXiv:2010.00804

**Setting:** Parametrized polynomial systems that are linear in sufficiently many
parameters, with those parameters drawn from continuous distributions.

**Goal:** Express the expected number of solutions as a computable multivariate
integral and use it to study parameter regions.

**Main result:** The paper derives a Kac--Rice formula for expected fiber cardinality
and combines it with Monte Carlo integration for parameter-space analysis.

**Key proof techniques:** Kac--Rice, change of variables/Jacobians, disintegration over
parameters, and numerical integration.

**Limitations:** Continuous parameter laws and linear-in-parameter structure are
assumed. The output is an expectation/integral rather than a uniform short-interval
hitting bound, and numerical evaluation does not supply an explicit polynomial
`(d,R)` theorem.

**Relation to research scope:** testbed-level foundation; narrowed polynomial-fiber
calculus that may organize a proof but is not itself a coefficient-side
characterization.

## 3. empirical practice

[E1] Provably Tuning the ElasticNet Across Instances (published, NeurIPS 2022)

**Identifier:** arXiv:2207.10199

**Main result:** The loss as a function of Ridge/LASSO/ElasticNet tuning parameters is
shown to be piecewise rational with algebraic boundaries; the paper proves statistical
generalization guarantees and vanishing average expected regret in the online setting.

**Relation to research scope:** empirical context; central source-authorized application
area, but the paper does not supply the new coefficient-law root anti-concentration
characterization demanded here.

[E2] Learning to Link (published, ICLR 2020)

**Identifier:** arXiv:1907.00533

**Main result:** Efficient algorithms jointly learn a linkage rule and a convex
combination of distance metrics for application-specific hierarchical clustering, with
formal learning guarantees and a broad empirical evaluation showing improved
clustering performance.

**Relation to research scope:** empirical context; residual linkage-clustering
motivation. The source uses smoothed distance assumptions in related dispersion work,
but this paper's learning results are not evidence for a general coefficient-law
condition on monic random polynomials.

[E3] Data Driven Semi-Supervised Learning (published, NeurIPS 2021)

**Identifier:** arXiv:2103.10547

**Main result:** The paper learns graph-construction hyperparameters for graph-based
semi-supervised learning, proving distributional generalization and efficient low-regret
online guarantees, including combinations of similarity metrics and multiple
hyperparameters.

**Relation to research scope:** empirical context; central source-authorized application
area, while a new result must still verify the relevant transition-boundary
anti-concentration rather than merely invoke dispersion.

[E4] Learning Piecewise Lipschitz Functions in Changing Environments (published, AISTATS 2020)

**Identifier:** arXiv:1907.09137

**Main result:** For `beta`-dispersed piecewise-Lipschitz functions the paper proves
shifting-regret `O(sqrt(s d T log T)+s T^(1-beta))`, gives a nearly matching lower
bound, and demonstrates the method on online clustering benchmarks.

**Relation to research scope:** empirical context; residual evidence for the payoff of
dispersion, not evidence that the coefficient laws in the brief satisfy the needed
uniform root bound.

[E5] Generalization Bounds for Data-Driven Numerical Linear Algebra (published, COLT 2022)

**Identifier:** arXiv:2206.07886

**Main result:** The paper proves nearly matching fat-shattering upper and lower bounds
for learning-based low-rank approximation and gives PAC generalization bounds for
several sketching and multigrid algorithm families.

**Relation to research scope:** empirical context; residual low-rank-approximation
motivation named by the source. It is an offline statistical result, so an online
application-level advance would need a new transition-boundary anti-concentration and
an explicit dispersion-to-regret derivation.

## 4. gap and open problem

### Other: Root anti-concentration characterization

#### Finiteness on every positive-length interval

**Search path / outcome:** direct theory found; lightweight component foundation and a
level-crossing testbed fallback used because exact direct theory remained sparse.

**Gap statement:**

- Evidence pattern: [D2] gives a full-joint-density sufficient condition and a more
  general bounded-density affine-latent sufficient condition. Gaussian covariance
  formulas [F7--F9], exchangeable root counts [F10], and independent-coefficient local
  universality [F11--F13] each remove or alter some assumption, but none retains all of
  bounded support, monicity, arbitrary dependence, class-uniformity, and a
  linear-in-every-interval hitting probability.
- Supporting papers / absence pattern: Exact-name, alias, dependent-coefficient,
  Kac--Rice, concentration-function, references/citations, and current-paper audits
  located no natural necessary-and-sufficient coefficient-law criterion for finite
  `C_D`. In particular, `E N(R)=O(log d)` does not imply finite `C_D`: a root-location
  atom allowed by a discrete/exchangeable law already makes the interval ratio diverge.
- What is missing: A noncircular coefficient-side criterion that controls the swept
  family of root hyperplanes uniformly over `mu in D`, including tangencies and
  degenerate directions, plus a converse or a sharp counterexample. Any root intensity,
  capacity, or occupation functional must be bounded from stated coefficient-law
  structure rather than simply defined to equal the target numerator.
- Baseline comparison: Progress must go beyond [D2], for example by covering a natural
  nonlinear dependent or singular family, proving necessity for a natural class, or
  separating a plausible fixed-point small-ball/slice condition from interval root
  hitting. The affine-latent extension in [D2] must be acknowledged when claiming a new
  singular family.
- Why it matters downstream: This is the exact anti-concentration input to dispersion.
  A coefficient-side theorem would let later idea work verify assumptions before
  computing `C_D`, and would determine whether an application actually receives a
  finite regret constant.
- Source-direction relation: central; no narrowing of the law supremum or the
  positive-length interval supremum is allowed unless the result is explicitly labeled
  conditional or restricted.
- Status: supported.

#### Uniform polynomial dependence on `(d,R)`

**Search path / outcome:** direct theory found; mixed foundation used to audit the
nearby proxy quantities of local intensity, expected root count, fixed-point
small-ball probability, and hyperplane-section volume.

**Gap statement:**

- Evidence pattern: The only source-regime explicit bound found is [D1--D2], whose
  factor `(2R)^(d-1)` has `R`-degree growing with `d` and is exponential in `d` for
  every fixed `R>1/2`. Several random-polynomial ensembles have only
  `Theta(log d)` expected total roots [F6--F13], but those results do not expose `R`, do
  not bound the probability of a root in an arbitrary short interval, and often assume
  independent or unbounded Gaussian coefficients. Fixed-parameter small-ball bounds
  [F1--F3] and slice bounds [F4--F5] leave the continuum sweep and root sensitivity
  uncontrolled.
- Supporting papers / absence pattern: Seed expansion and a 2024--2026 missed-paper
  audit found newer concentration inequalities for the total number of Kac roots, but
  no theorem of the form `C_{D_{d,R,eta}} <= poly(d,R,eta)` with degree and coefficients
  uniform in `(d,R)` and with `eta` independently audited. Kac--Rice identities
  [F14--F17] likewise do not provide that specialization.
- What is missing: An explicit coefficient-law parameter package whose constants do
  not conceal `d` or `R`, a proof that a nonempty family satisfies it for every claimed
  `(d,R)` regime, and a deterministic/probabilistic bridge producing a displayed
  polynomial bound simultaneously for all laws and intervals. A converse lower bound
  separating candidate conditions would also be material progress.
- Baseline comparison: A finite constant for each fixed `(d,R)` is not enough. The
  result must quantify every hidden constant and show a genuine improvement or a
  different law class relative to [D2]; an equivalence with an uncontrolled root
  intensity is not progress on part (b).
- Why it matters downstream: Exponential dependence survives the dispersion recipe and
  can make the regret guarantee vacuous in high-degree applications. Uniform polynomial
  dependence is therefore the substantive scaling target, not cosmetic constant
  optimization.
- Source-direction relation: central; the indexed-family and explicit-rate constraints
  in the brief make fixed-`(d,R)` asymptotics, favorable single laws, and hidden
  distribution parameters only narrowed or conditional results.
- Status: supported.
