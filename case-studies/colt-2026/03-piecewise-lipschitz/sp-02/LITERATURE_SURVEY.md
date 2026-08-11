# Literature Survey

**Normalization consultation:** `Normalization | Targets: uniform interval root anti-concentration / normalization-and-conditioning theorem, with exact monic-polynomial recovery | Objects: one-dimensional Pfaffian evaluation vector F; coefficient laws on [-R,R]^N with a common joint-density cap and no independence | Splittable: yes`

**Search and coverage note.** No `papers/` or `literature/` directory and no prior survey were present. The direct search used exact titles, Pfaffian/root-anticoncentration aliases, random-linear-combination and zero-crossing terminology, normalized-evaluation-curve and Kac-Rice terminology, exponential-polynomial/fewnomial terminology, and citation expansion from the 2026 open problem, Balcan et al. (2025), Balcan et al. (2020), and Edelman--Kostlan (1995). Full primary PDFs were inspected for [D1]--[D5], including the PMLR supplement containing Balcan et al. (2020), Theorem 18, and the published erratum to Edelman--Kostlan. Primary PDFs were also inspected for [F4] and [F8]. Some older foundation sources are paywalled; their narrowly used statements were checked against stable metadata and the explicit restatements in the inspected central papers. No source found in the missed-paper audit states the complete target with all of: the Balcan et al. Pfaffian convention, a common joint-density cap without independence, interval- and distribution-uniformity, polynomial control in instance complexity, Counter-example 1, and an exact affine recovery of Theorem 2. This is a coverage statement, not a proof of nonexistence.

**Convention and parameter audit.** The convention below is exactly the one in Balcan, Nguyen, and Sharma (2025), Definitions 2--4, specialized to one variable. A triangular Pfaffian chain is $C(\theta,\eta_1,\ldots,\eta_q)$, where each derivative $\eta_j'(\theta)$ is a polynomial in $\theta,\eta_1,\ldots,\eta_j$. Its length is $q$, and its chain degree is

\[
M=\max_j \deg P_j.
\]

Each $F_i(\theta)=Q_i(\theta,\eta_1,\ldots,\eta_q)$ has Pfaffian-function degree at most

\[
\Delta=\max_i\deg Q_i.
\]

Thus the function-degree symbol $d$ in Balcan et al. (2025), Theorems 7.2--7.3, maps to $\Delta$ here; their ambient parameter dimension $p$ maps to $1$. The remaining source parameters are: $N$, the number of entries of $F$ and random coefficients; $R$, the coefficient support half-width; $\kappa$, the common essential supremum of the full joint density; and $A=(2R)^N\kappa$. Independence is not part of the target. When $F(\theta)\ne0$ throughout $\Theta$, define the projective-speed condition

\[
\gamma_F(\theta)=\frac{F(\theta)}{\|F(\theta)\|_2},
\qquad
\Gamma_{\rm proj}(F)=\operatorname*{ess\,sup}_{\theta\in\Theta}
\|\gamma_F'(\theta)\|_2.
\]

For a Lipschitz normalized map, $\Gamma_{\rm proj}$ may equivalently be replaced by its Euclidean Lipschitz constant. This is a conditioning parameter, not something implied by $q,\Delta,M,N$.

## 1. direct theory

### Other

#### Root anti-concentration, normalized geometry, and dispersion

[D1] Invited Open Problem: Online Optimization of Piecewise-Lipschitz Functions with Applications to Data-Driven Algorithm Design (PMLR, 2026)

**Identifier:** https://proceedings.mlr.press/v336/balcan26a.html

**Setting:** One-dimensional transition equations $\langle\alpha,F(\theta)\rangle=0$ for a Pfaffian vector on a compact interval, with $\alpha\in[-R,R]^N$. The target law class has a common full joint-density cap $\|f_\mu\|_\infty\le\kappa$, summarized also by $A=(2R)^N\kappa$.

**Goal:** Identify a Pfaffian analogue of fixing a polynomial's leading coefficient that yields a finite, preferably polynomially controlled, interval root anti-concentration constant uniformly over all admissible laws and intervals.

**Main result:** The paper formulates Open Question 2 and proves Counter-example 1. For $F(\theta)=(1,\theta/\delta)$, independent uniform coefficients on $[-1,1]^2$, and $I=[0,\epsilon]$ with $0<\epsilon\le\delta$, the exact crossing probability is $\epsilon/(4\delta)$. Hence formal Pfaffian degrees and the coefficient-law parameters alone cannot control the desired constant. It also records the monic-polynomial Theorem 2 bound

\[
\Pr(\exists\theta\in I:p_\alpha(\theta)=0)
\le \kappa(2R)^{d-1}
\left(d+\frac{R d(d-1)}2\right)|I|.
\]

**Key proof techniques:** Direct planar area calculation for Counter-example 1; reduction of dispersion to per-boundary interval anti-concentration; comparison with the polynomial affine-coefficient geometry.

**Limitations:** It poses rather than resolves the normalization question. The source only conjectures that controlling $F/\|F\|_2$ may suffice and explicitly warns that such conditioning must itself be bounded in the relevant instance-complexity parameters.

**Relation to research scope:** direct prior work; this is the controlling source direction. It fixes the distribution-uniform and interval-uniform target, forbids adding independence, requires explicit $q,\Delta,M,N,R,A$ dependence plus any new conditioning dependence, and requires a genuine specialization to the monic baseline.

[D2] Algorithm Configuration for Structured Pfaffian Settings (TMLR, 2025)

**Identifier:** arXiv:2409.04367

**Setting:** Data-driven statistical and online algorithm configuration whose dual utility boundaries are Pfaffian hypersurfaces. Definitions 2--4 introduce the $q,M,\Delta$ convention used above. Theorems 7.2--7.3 concern bounded-degree Pfaffian hypersurfaces from a common chain and independent loss functions across rounds.

**Goal:** Extend learning-complexity and dispersion tools from polynomial/rational transition boundaries to structured Pfaffian boundaries.

**Main result:** Theorem 7.2 gives a finite VC-type shattering bound for axis-aligned segments against Pfaffian hypersurfaces, depending on chain length, chain degree, function degree, and ambient dimension. Theorem 7.3 converts a bound on the expected number of crossings of any fixed axis-aligned path into a uniform dispersion bound. Application theorems establish dispersion for specialized clustering and regression families after separate, model-specific crossing estimates.

**Key proof techniques:** Khovanskii-type intersection bounds, sub-Pfaffian cylindrical decompositions, VC uniform convergence, and application-specific changes of variables or generalized Descartes rules.

**Limitations:** The general theorem starts after the missing anti-concentration step: it does not bound the expected crossings of a fixed path from $q,\Delta,M,N,R,A$. The clustering proof uses independent bounded-density primitive distances (the paper states this independence in its online-learning setup and Appendix Lemma E.2), so it cannot be lifted to an arbitrary joint-density-capped coefficient law. The constants in the special applications do not provide a general $\Gamma_{\rm proj}$-to-$(q,\Delta,M)$ bridge, and no monic-polynomial recovery is proved.

**Relation to research scope:** direct prior work; it fixes the exact Pfaffian convention and supplies the downstream dispersion machinery, but it leaves precisely the per-interval root estimate in Open Question 2 unresolved. In the source notation, function degree $d=\Delta$ and ambient dimension $p=1$.

[D3] Semi-bandit Optimization in the Dispersed Setting (UAI/PMLR, 2020)

**Identifier:** arXiv:1904.09014

**Setting:** Online optimization of dispersed losses. Theorem 18 in the published supplement treats a polynomial coefficient vector lying in the affine image of a bounded random vector with density cap $\kappa$, subject to a nondegeneracy condition that the affine family is not identically root-constrained at any real point.

**Goal:** Turn bounded-density randomness in polynomial coefficients into an $O(|I|)$ root-hitting bound, then use it to prove dispersion and regret bounds.

**Main result:** Theorem 18 proves an interval root bound with a constant depending on degree $d$, coefficient range $R$, and the affine map. The 2026 source records the monic specialization as the explicit Theorem 2 inequality displayed in [D1]. The theorem permits correlated lower coefficients through a full joint-density cap; coefficient independence is not required for this root theorem.

**Key proof techniques:** Factorization at a root, representation of root-constrained coefficient vectors as hyperplane sections, cube-section volume bounds, Cauchy's root bound, and control of how the root hyperplane moves as the root location changes.

**Limitations:** Its quantitative geometry is polynomial-specific. A constant depending on an arbitrary affine map is not a polynomial bound in $q,\Delta,M,N,R,A$, and the proof gives no Pfaffian normalized-direction condition. The general affine theorem and the explicit monic corollary also use different levels of constant disclosure, so any new theorem must redo the specialization rather than cite them side by side.

**Relation to research scope:** direct prior work; this is the required baseline and a proof template for lower-dimensional affine coefficient laws. The deterministic leading coefficient is encoded by an affine map, not as a random coordinate with a fictitious full-dimensional density.

[D4] Data Driven Semi-Supervised Learning (NeurIPS, 2021)

**Identifier:** arXiv:2103.10547

**Setting:** Among its graph-learning results, Theorem 25 studies exponential polynomials

\[
\phi(x)=\sum_{i=1}^n a_i e^{b_i x},
\]

with fixed exponents $b_i$, coefficients bounded in magnitude by $R$, and a full joint coefficient density bounded by $\kappa$.

**Goal:** Obtain the per-interval anti-concentration needed for dispersion when transition equations are exponential rather than polynomial.

**Main result:** For every interval of width at most $\epsilon$, Theorem 25 states $\Pr(\phi\text{ has a zero in }I)\le\widetilde O(\epsilon)$, with dependence on $b_i,n,\kappa,R$ suppressed. It therefore gives a nonpolynomial, Pfaffian subclass in which a joint-density cap without coefficient independence supports a linear-in-interval estimate.

**Key proof techniques:** The coefficient vectors giving a root at $x$ form the hyperplane orthogonal to $(e^{b_1x},\ldots,e^{b_nx})$; the proof bounds the angle swept by these hyperplanes over a short interval and combines this with bounded coefficient support. A generalized Descartes argument bounds the number of zeros.

**Limitations:** The proof suppresses the exact $b_i,n,\kappa,R$ constant, gives no mapping to $q,\Delta,M$, and does not address the complexity growth of the normalized exponential evaluation curve. It does not recover the monic polynomial theorem. Its hyperplane-sweep proof is concise and omits some measure/volume details by reference to [D3].

**Relation to research scope:** direct prior work; it is a meaningful Pfaffian-subclass result under the correct joint-density interface, but only material partial progress toward the full source target.

[D5] How Many Zeros of a Random Polynomial Are Real? (Bulletin of the AMS, 1995)

**Identifier:** DOI:10.1090/S0273-0979-1995-00571-9

**Setting:** Random linear combinations $\sum_i a_i f_i(t)=\langle a,F(t)\rangle$ of differentiable functions. Section 5.1 allows an arbitrary full joint density $\sigma(a)$. Earlier sections treat central correlated Gaussians, and Section 5.2 treats noncentral Gaussians. The published erratum, DOI:10.1090/S0273-0979-96-00678-7, does not alter the zero-density theorems.

**Goal:** Express the expected density and number of real zeros through the geometry of the normalized evaluation map.

**Main result:** Theorem 5.1 sets $\gamma(t)=F(t)/\|F(t)\|_2$ and gives the zero intensity

\[
\rho(t)=\int_{\gamma(t)^\perp}
|\gamma'(t)\cdot a|\,\sigma(a)\,d\mathcal H^{N-1}(a).
\]

For centered Gaussian coefficients, Theorem 3.1 reduces the expected zero count on $I$ to $\pi^{-1}\int_I\|\gamma'(t)\|_2dt$, with the covariance incorporated into the inner product. The paper also explains that the normalized evaluation curve is the dual evaluation map in projective/spherical geometry.

**Key proof techniques:** Integral geometry, swept hyperplane wedges, the evaluation map, and a Kac-Rice-type density calculation.

**Limitations:** The paper does not formulate the COLT uniform supremum $C^{\rm Pf}_{\mathcal D}$, does not track $q,\Delta,M$, and does not prove that normalized speed is polynomial in Pfaffian instance complexity. The arbitrary-density theorem is homogeneous in a full-dimensional coefficient vector. Its discussion of a deterministic monic coefficient is for Gaussian covariance (possibly singular), not for an arbitrary bounded density on lower coefficients, so it is not the required affine recovery. A modern proof should also state the exact area-formula regularity used for merely $L^\infty$ density representatives.

**Relation to research scope:** direct prior work; it identifies the exact normalized geometric object conjectured by [D1] and already covers correlated coefficient laws at the zero-intensity level, but leaves the source-critical complexity and affine-baseline bridges open.

**Direct synthesis (derived from [D5] plus [F1], not quoted as a theorem from either source).** Suppose $F$ is $C^1$, $F(\theta)\ne0$ on $\Theta$, and the area-formula hypotheses of [D5] hold. For any admissible $\mu$, [D5] and the central cube-section estimate in [F1] give

\[
\begin{aligned}
\rho_\mu(\theta)
&\le \kappa\,R\sqrt N\,\|\gamma_F'(\theta)\|_2\,
\mathcal H^{N-1}(\gamma_F(\theta)^\perp\cap[-R,R]^N)\\
&\le \kappa R\sqrt{2N}(2R)^{N-1}\|\gamma_F'(\theta)\|_2.
\end{aligned}
\]

Since the probability of at least one root is at most the expected number of roots,

\[
\Pr_{\alpha\sim\mu}(\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0)
\le A\sqrt{N/2}\,\Gamma_{\rm proj}(F)\,|I|.
\]

This bound is uniform over every $\mu\in\mathcal D$ and every positive-length interval and uses no independence. Its exposed variables are $A=(2R)^N\kappa$, $N$, and $\Gamma_{\rm proj}$; it has no hidden constant in the displayed cube-section calculation, uses ordinary probability for each law, and uses the Euclidean norm. The formal parameters $q,\Delta,M$ are fixed but absent, which is exactly the unresolved complexity bridge. Counter-example 1 is quantitatively accounted for: for $F=(1,\theta/\delta)$, $\|\gamma_F'(0)\|_2=1/\delta$, so the conditioning blows up at the required order. This synthesis supports finiteness under a projective-speed condition, but by the source success criteria it is only partial until the $q,\Delta,M$/instance-complexity and affine-polynomial obligations are discharged rigorously.

## 2. foundation theory

### Component Theory

#### Component: bounded-density hyperplane sweeps and random zero formulas

##### Other

###### Root anti-concentration tools

[F1] Cube Slicing in $\mathbb R^n$ (Proceedings of the AMS, 1986)

**Identifier:** DOI:10.1090/S0002-9939-1986-0840631-0

**Setting:** Central hyperplane sections of the Euclidean unit cube in arbitrary dimension.

**Goal:** Bound the maximal $(n-1)$-dimensional volume of a hyperplane section of a cube independently of the orientation.

**Main result:** Ball proves the sharp dimension-free $\sqrt2$ upper bound for a central hyperplane section of the unit-volume cube. After scaling, this yields

\[
\mathcal H^{N-1}(H\cap[-R,R]^N)\le\sqrt2(2R)^{N-1}
\]

for every central hyperplane $H$. Ball's later survey `Volumes of Sections of Cubes and Related Problems`, DOI:10.1007/BFb0090058, is the section-volume source cited in [D3].

**Key proof techniques:** Fourier analysis and sharp integral estimates for cube sections.

**Limitations:** This controls the size of one section, not how a family of sections moves with $\theta$. It contains no Pfaffian, density, or polynomial-recovery statement.

**Relation to research scope:** component-level foundation; it converts the common density cap into a uniform cross-section factor and is one ingredient in the [D5] synthesis.

[F2] Mathematical Analysis of Random Noise (Bell System Technical Journal, 1944--1945)

**Identifier:** DOI:10.1002/J.1538-7305.1945.TB00453.X

**Setting:** Zero crossings and level crossings of differentiable random processes, especially Gaussian processes.

**Goal:** Compute expected crossing counts from the joint law of a process and its derivative.

**Main result:** Rice's formulas express expected zero-crossing intensity through a density at level zero weighted by conditional derivative magnitude. This is the classical local-counting ancestor of the zero-density formula used in [D5].

**Key proof techniques:** Joint-density conditioning, infinitesimal crossing counts, and integration over time.

**Limitations:** The standard formulas require regularity/nondegeneracy hypotheses and are usually specialized to process laws such as Gaussian noise. They do not provide a uniform constant for all densities under only a common $L^\infty$ cap, nor any Pfaffian complexity control.

**Relation to research scope:** component-level foundation; it supplies rigorous zero-counting language but not the source's distribution-uniform geometric bound.

[F3] Level Sets and Extrema of Random Processes and Fields (Wiley, 2009)

**Identifier:** DOI:10.1002/9780470434642

**Setting:** Smooth random processes and fields under hypotheses that support Kac-Rice formulas for level sets and critical points.

**Goal:** Give rigorous formulas and regularity conditions for expected numbers or volumes of level sets.

**Main result:** The monograph systematizes one- and higher-dimensional Rice formulas, including the needed density, nondegeneracy, and differentiability conditions and factorial-moment extensions.

**Key proof techniques:** Coarea/area formulas, conditional densities, Gaussian process geometry, and stratification of degenerate events.

**Limitations:** It does not specialize its general machinery to the compactly supported, arbitrarily correlated coefficient class in the brief, and it has no $q,\Delta,M$ or monic-affine specialization.

**Relation to research scope:** component-level foundation; it is the appropriate source for closing measure-theoretic details in a modern version of the [D5] synthesis.

[F4] Distributional and $L^q$ Norm Inequalities for Polynomials over Convex Bodies in $\mathbb R^n$ (Mathematical Research Letters, 2001)

**Identifier:** DOI:10.4310/MRL.2001.V8.N3.A1

**Setting:** Scalar- or Banach-valued degree-$d$ polynomials under uniform measure on convex bodies, with extensions to log-concave measures.

**Goal:** Control lower tails and compare $L^q$ norms of polynomial values.

**Main result:** Carbery and Wright prove dimension-aware and dimension-free distributional inequalities; in standard scalar form these give polynomial small-ball bounds with exponent $1/d$ after normalization by an $L^q$ scale.

**Key proof techniques:** Remez inequalities and the Kannan--Lovasz--Simonovits localization principle.

**Limitations:** Small value at a fixed $\theta$ is not the event that a root occurs somewhere in an interval. Turning this tool into interval root anti-concentration needs derivative or transversality control and stronger law structure than an arbitrary density cap. It is polynomial, not Pfaffian, theory.

**Relation to research scope:** component-level foundation; it is an adjacent small-ball route, useful mainly for diagnosing why value anti-concentration alone cannot replace a moving-hyperplane or zero-count argument.

#### Component: Pfaffian and sparse-function complexity

##### Other

###### Deterministic root complexity and complexity-sensitive random counts

[F5] Fewnomials (AMS Translations of Mathematical Monographs, 1991)

**Identifier:** DOI:10.1090/MMONO/088

**Setting:** Systems of Pfaffian/fewnomial equations described by a triangular chain and degree data.

**Goal:** Bound the number of isolated nondegenerate real solutions in terms of formal chain complexity.

**Main result:** Khovanskii's Pfaffian Bezout-type theorem bounds nondegenerate solutions. In the convention restated as Theorem E.1 of [D2], a square system with degrees $d_1,\ldots,d_n$, chain length $q$, and chain degree $M$ has at most

\[
2^{q(q-1)/2}d_1\cdots d_n
(\min\{q,n\}M+d_1+\cdots+d_n-n+1)^q
\]

nondegenerate solutions; all displayed factors multiply.

**Key proof techniques:** Rolle-type elimination along a Pfaffian chain and fewnomial intersection theory.

**Limitations:** Root count is not an interval root-hitting probability. The theorem is insensitive to the metric scaling $\theta/\delta$ in Counter-example 1 and therefore cannot bound $C^{\rm Pf}_{\mathcal D}$ alone.

**Relation to research scope:** component-level foundation; it supplies the formal $q,\Delta,M$ convention and global root-count control but no normalization scale.

[F6] Multiplicities of Pfaffian Intersections, and the Lojasiewicz Inequality (Selecta Mathematica, 1995)

**Identifier:** DOI:10.1007/BF01614074

**Setting:** Local Pfaffian intersections and effective Lojasiewicz-type behavior.

**Goal:** Control multiplicities and Lojasiewicz exponents using Pfaffian complexity.

**Main result:** Gabrielov derives effective multiplicity bounds for Pfaffian intersections and corresponding effective Lojasiewicz inequalities.

**Key proof techniques:** Pfaffian intersection multiplicity, deformation, and local analytic geometry.

**Limitations:** Exponent/multiplicity control is not a coefficient-sensitive lower bound on $\|F\|_2$, nor an upper bound on $\|(F/\|F\|_2)'\|_2$. Quantitative constants also depend on analytic data not represented by $q,\Delta,M$ alone.

**Relation to research scope:** component-level foundation; it is a candidate ingredient for subclass-specific conditioning bounds, but it does not overcome Counter-example 1 by itself.

[F7] Complexity of Cylindrical Decompositions of Sub-Pfaffian Sets (Journal of Pure and Applied Algebra, 2001)

**Identifier:** DOI:10.1016/S0022-4049(00)00149-3

**Setting:** Cylindrical cell decompositions of sets defined by quantified Pfaffian formulas.

**Goal:** Bound decomposition complexity in terms of Pfaffian format.

**Main result:** Gabrielov and Vorobjov give effective complexity bounds for cylindrical decompositions of sub-Pfaffian sets. [D2] uses this type of bound to control equivalence classes of lines and hence the shattering complexity of Pfaffian hypersurfaces.

**Key proof techniques:** Sub-Pfaffian projection, stratification, and cylindrical decomposition.

**Limitations:** Combinatorial/topological decomposition complexity does not control the metric speed or spacing of nearby transition surfaces. It supplies Step 4 of dispersion, not the Step 3 anti-concentration constant.

**Relation to research scope:** component-level foundation; it explains why formal Pfaffian complexity supports uniform-convergence machinery yet cannot alone supply the target interval ratio.

[F8] On the Number of Real Zeros of Random Fewnomials (SIAM Journal on Applied Algebra and Geometry, 2019)

**Identifier:** DOI:10.1137/18M1228682

**Setting:** Systems of $n$ sparse polynomials with a common support of $t$ exponent vectors and independent centered Gaussian coefficients of arbitrary variances.

**Goal:** Bound the expected number of positive nondegenerate roots by sparsity rather than degree.

**Main result:** The expected number is at most $2^{-(n-1)}\binom{t}{n}$. The paper derives an integral formula using the normalized evaluation map and integral geometry; in the univariate equal-variance case it gives a sharper $O(\sqrt{t\log t})$ expected-root bound.

**Key proof techniques:** Edelman--Kostlan integral geometry, spherical projections of sparse evaluation maps, and reduction to deterministic fewnomial bounds.

**Limitations:** The law is Gaussian with independent coordinates, the result is a global expected count rather than a uniform local interval density, and it does not treat Pfaffian chain parameters or affine monic recovery.

**Relation to research scope:** component-level foundation; it demonstrates that normalized-evaluation geometry can sometimes be bounded by structural complexity in a nontrivial sparse subclass, which is the kind of bridge the Pfaffian target still lacks.

## 3. empirical practice

No empirical paper located in this run directly measures $C^{\rm Pf}_{\mathcal D}$ or the projective conditioning of Pfaffian transition families. The entries below are therefore application-facing practice context, not evidence for a formal theorem gap.

[E1] Dispersion for Data-Driven Algorithm Design, Online Learning, and Private Optimization (FOCS, 2018)

**Identifier:** DOI:10.1109/FOCS.2018.00064

**Main result:** Introduces dispersion as a condition under which volatile piecewise-Lipschitz objectives can be optimized online and privately, gives regret/privacy guarantees and matching lower bounds, and verifies dispersion in several parameterized algorithm and pricing families.

**Relation to research scope:** empirical context; it establishes why a local transition-boundary estimate matters operationally, but does not study general Pfaffian root anti-concentration.

[E2] Provably Tuning the ElasticNet Across Instances (NeurIPS, 2022)

**Identifier:** arXiv:2207.10199

**Main result:** Characterizes ElasticNet validation loss as piecewise rational with algebraic boundaries and derives statistical generalization and online regret guarantees for tuning Ridge, LASSO, and ElasticNet parameters across instances.

**Relation to research scope:** empirical context; it is a concrete algorithm-configuration setting in which transition-boundary structure enables learning guarantees, but its algebraic analysis does not validate a Pfaffian normalization.

[E3] Generalization Bounds for Data-Driven Numerical Linear Algebra (COLT, 2022)

**Identifier:** arXiv:2206.07886

**Main result:** Proves nearly matching fat-shattering upper and lower bounds for learning-based low-rank approximation and extends PAC generalization analysis to other sketching and multigrid algorithms motivated by empirical gains.

**Relation to research scope:** empirical context; it shows the breadth of data-driven algorithm design applications, while addressing statistical generalization rather than online root anti-concentration.

[E4] Tuning Algorithmic and Architectural Hyperparameters in Graph-Based Semi-Supervised Learning with Provable Guarantees (UAI, 2025)

**Identifier:** arXiv:2502.12937

**Main result:** Gives matching $\Theta(\log n)$ pseudo-dimension bounds for several label-propagation hyperparameter families and Rademacher-complexity bounds for selected graph-neural-network architectural parameters.

**Relation to research scope:** empirical context; it confirms that structured graph hyperparameter families are an active application target, but its guarantees do not supply the common-density, interval-uniform Pfaffian root theorem.

## 4. gap and open problem

### Other

#### Uniform bounded-density Pfaffian anti-concentration

**Search path / outcome:** direct theory found; lightweight component foundation used. Exact-name, Pfaffian-root, random-linear-combination, zero-crossing/Kac-Rice, exponential-polynomial, and citation-expansion searches found [D1]--[D5]. No inspected source packages the full COLT statement.

**Gap statement:** A source-ready theorem should formalize the [D5]+[F1] projective-speed argument for every $L^\infty$-density law on $[-R,R]^N$, including all area-formula regularity and degenerate-zero cases, and state the bound uniformly over $\mu$ and every positive-length interval. It must define the domain of $F/\|F\|_2$, rather than silently assume it exists. The displayed synthesis strongly supports

\[
C^{\rm Pf}_{\mathcal D}\le A\sqrt{N/2}\,\Gamma_{\rm proj}(F)
\]

under an explicit nonvanishing/projective-regularity condition, with no independence.

- **Evidence pattern:** [D5] supplies the arbitrary-density zero-intensity formula; [F1] supplies a dimension-free cube-section bound; [D4] validates the moving-hyperplane strategy on exponential sums.
- **Supporting papers / absence pattern:** [D1], [D4], [D5], [F1], [F3]. No later citation hit found a theorem stated under all of the brief's law and convention requirements.
- **Why it matters downstream:** This isolates a natural conditional or material-partial theorem target and prevents downstream ideas from re-proving only root counts or adding independence.
- **Source-direction relevance:** central. It addresses the exact one-dimensional interval ratio and Counter-example 1, not sibling Open Question 1 or alternatives to dispersion.
- **Status:** supported.

#### Complexity control of projective conditioning

**Search path / outcome:** direct theory sparse; Pfaffian component foundation used. Searches for Pfaffian Remez, Lojasiewicz, normalized-evaluation, and complexity-sensitive random-zero results found [F5]--[F8], but no $q,\Delta,M$-only projective-speed theorem.

**Gap statement:** The major unresolved bridge is to identify meaningful Pfaffian subclasses or application regimes in which $\Gamma_{\rm proj}(F)$, or a weaker local weighted projective-speed quantity, is polynomially bounded in the actual instance-complexity data. A bound from $q,\Delta,M,N$ alone is false by Counter-example 1. Any valid theorem must expose coefficient/amplitude/scale data that changes under $F_2(\theta)=\theta/\delta$, give its mapping to the Balcan et al. convention, and show polynomial dependence rather than merely assume finiteness.

- **Evidence pattern:** [F5]--[F7] control counts, multiplicities, or cell complexity but are invariant to the metric rescaling that drives the counterexample; [F8] shows that a structural-to-projective-volume bridge can exist in a special Gaussian sparse-polynomial setting.
- **Supporting papers / absence pattern:** [D1], [D2], [F5], [F6], [F7], [F8].
- **Why it matters downstream:** Without this bridge, a normalized-Lipschitz theorem is valid conditional progress but cannot be labeled full progress under the source success criterion.
- **Source-direction relevance:** central. It is the explicit qualification attached to the source's normalized-Lipschitz conjecture.
- **Status:** supported.

#### Exact affine recovery of the monic-polynomial baseline

**Search path / outcome:** direct polynomial theory found in [D3]; normalized-curve theory found in [D5]; no source-to-source interface theorem found.

**Gap statement:** A general normalization theorem must recover Theorem 2 through its own specialization. In the permitted affine representation,

\[
F_0(\theta)=\theta^d,
\qquad
F(\theta)=(\theta^{d-1},\ldots,1),
\qquad
p_\alpha(\theta)=F_0(\theta)+\langle\alpha,F(\theta)\rangle,
\]

the random object is $\alpha\in[-R,R]^d$ with density at most $\kappa$. For fixed $\theta$, the root locus is the affine hyperplane $\{\alpha:\langle\alpha,F(\theta)\rangle=-F_0(\theta)\}$ in $\mathbb R^d$, not a central hyperplane in $\mathbb R^{d+1}$. The required bridge must (i) preserve this $d$-dimensional density, (ii) verify the proposed normalization/conditioning for these affine sections, (iii) derive, rather than separately cite,

\[
\kappa(2R)^{d-1}\left(d+\frac{R d(d-1)}2\right)|I|,
\]

and (iv) disclose every specialization inequality and constant. Appending the deterministic coefficient $1$ to $\alpha$ creates a singular law and is not a valid full-dimensional density argument.

- **Evidence pattern:** [D3] handles lower-dimensional affine coefficient images correctly; [D5] identifies normalized homogeneous geometry but its arbitrary-density theorem does not provide this affine arbitrary-law specialization.
- **Supporting papers / absence pattern:** [D1], [D3], [D5].
- **Why it matters downstream:** This is a baseline-invariance obligation. A theorem can be geometrically plausible yet fail the source target if it cannot reproduce the stated polynomial constant from its own hypotheses.
- **Source-direction relevance:** central and mandatory for full progress; an independent proof of Theorem 2 is residual context only.
- **Status:** supported.

#### Necessary conditioning and lower bounds

**Search path / outcome:** one direct obstruction found in [D1]; adjacent zero-density and Pfaffian complexity theory found; no matching characterization found.

**Gap statement:** Counter-example 1 proves that some metric/projective conditioning must enter, but it does not prove that the global supremum $\Gamma_{\rm proj}$ is necessary. [D5] suggests that the sharper local object is the coefficient-law-weighted hyperplane integral

\[
\rho_\mu(\theta)=\int_{\gamma_F(\theta)^\perp}
|\gamma_F'(\theta)\cdot a|f_\mu(a)\,d\mathcal H^{N-1}(a),
\]

and the all-interval constant is related to an essential supremum of this intensity. A natural lower-bound program would determine which distribution classes can concentrate near the maximizing section and whether $A\Gamma_{\rm proj}$ is sharp up to $N,R$ factors, or construct families where projective speed is large but the worst admissible crossing probability is smaller.

- **Evidence pattern:** [D1] gives a $1/\delta$ lower bound; [D5] exposes the weighted local intensity; [F1] controls only its worst-case upper section size.
- **Supporting papers / absence pattern:** [D1], [D5], [F1].
- **Why it matters downstream:** A necessity theorem could replace an overly strong sufficient normalization by the minimal geometric quantity, or certify an obstruction to complexity-only normalizations.
- **Source-direction relevance:** central as an explicitly accepted necessary-condition, lower-bound, or obstruction outcome.
- **Uncertainty basis:** The proposed weighted-intensity characterization is strongly motivated, but no inspected source proves its sharp worst-law converse under the exact cube-supported density class.
- **Status:** uncertain.
