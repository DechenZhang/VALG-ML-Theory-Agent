# Literature Survey

Scope normalization for this run: the primary object is a third-order CP tensor together with the random-initialized iterative optimization dynamics used to fit it.  The active analysis target is **Optimization**, with sub-targets **Convergence**, **Optimization Landscape**, and **Other (distributional lower bounds / algorithmic phase transitions)**.  The effective source direction is Open Problem 3 in `RESEARCH_BRIEF.md`: for `r < k <= r^(1+c)`, seek a universal constant `c > 0` and a constant-probability convergence-to-positive-objective failure result for a precisely specified ALS or gradient-descent variant in the stated Gaussian-smoothed model.  The brief preserves two source ambiguities, which are kept explicit below: whether the base factors are merely arbitrary or well-conditioned, and whether probability is over the smoothed instance, random initialization, or their joint law.

## 1. direct theory

### Optimization

#### Convergence

[D1] Guarantees for alternating least squares in overparameterized tensor decompositions (2025)

**Identifier:** Arvanitakis, Srinivas, and Vijayaraghavan, *Advances in Neural Information Processing Systems* 38, 78062--78112 (2025), title-stable citation.

**Setting:** Third-order rank-`r` tensors with a mildly conditioned factorization; a parallel/variant ALS procedure uses algorithmic rank `k` and random initialization.

**Goal:** Establish a global convergence guarantee for an overparameterized ALS dynamics.

**Main result:** The analysis gives the first global guarantee in this line of work at a moderate overparameterization, with the sufficient regime summarized in the source as `k = O(r^2)` (and a sufficiently large ambient dimension).  The proof controls the Khatri--Rao feature span after initialization and shows convergence to a global optimum with high probability.

**Key proof techniques:** Random-feature span containment, concentration for Khatri--Rao products, alternating least-squares descent, and a reduction to a low-dimensional `r^2`-type bottleneck.

**Limitations:** This is an upper bound, not a lower bound.  It does not show failure for `r < k <= r^(1+c)`, does not establish a positive limiting objective, and its conditioning/base-factor and probability quantifiers must be read from the original theorem rather than inferred from the informal smoothed model.

**Relation to research scope:** direct prior work.  It is the principal baseline for Open Problem 3 and fixes the comparison threshold `O(r^2)`; it leaves the requested smoothed, random-initialized lower bound open.

[D2] Beyond lazy training for over-parameterized tensor decomposition (2020)

**Identifier:** Wang, Wu, Lee, Ma, and Ge, *Advances in Neural Information Processing Systems* 33, 21934--21944 (2020), title-stable citation.

**Setting:** Overparameterized CP tensor decomposition optimized by a gradient-descent variant from random initialization.

**Goal:** Explain non-lazy feature learning and prove convergence below the very large widths required by a direct linearization argument.

**Main result:** For a specified gradient procedure, the paper proves convergence under a rank requirement summarized in the source as `k = O~(r^(7/5))` (the displayed discussion gives an `O(r^(7/5) log n)`-type threshold), essentially independent of the ambient dimension in the main scaling.  The dynamics eventually learn the low-dimensional factors rather than remaining in a kernel/lazy regime.

**Key proof techniques:** Leave-the-lazy-regime decomposition, phase-by-phase alignment of factors, concentration of random initialization, and descent/stability estimates for the tensor gradient.

**Limitations:** It is a positive convergence result for one gradient method, not a lower bound.  It does not prove that all `r < k <= r^(1+c)` fail, and the initialization, noise/model, and success probability are not the exact joint smoothed-instance quantifiers required by Open Problem 3.

**Relation to research scope:** direct prior work.  It supplies the strongest nearby algorithm-specific upper-bound comparison and makes the missing lower-bound/phase-transition statement precise; it is not evidence that failure occurs in the requested regime.

[D3] Escaping from saddle points -- online stochastic gradient for tensor decomposition (2015)

**Identifier:** Ge, Huang, Jin, and Yuan, *Proceedings of COLT* 2015, PMLR 40, 797--842, title-stable citation.

**Setting:** Nonconvex rank-one/rank-`r` tensor decomposition with an online or stochastic gradient update.

**Goal:** Show that a tensor-specific stochastic first-order method can avoid strict saddle points and recover the components under structural assumptions.

**Main result:** The paper gives a polynomial-time tensor-decomposition guarantee by combining stochastic descent with a saddle-escape argument; it establishes convergence/recovery for its specified algorithm and tensor model, rather than a generic statement about all iterative methods.

**Key proof techniques:** Strict-saddle geometry, noisy/stochastic gradient perturbations, local component deflation/alignment, and concentration of stochastic updates.

**Limitations:** The model is not the arbitrary-base Gaussian-smoothed model in the brief, and the result is an upper/recovery guarantee.  It does not provide a constant-probability positive-loss limit or a superlinear overparameterization lower bound.

**Relation to research scope:** direct prior work (algorithm-specific convergence).  It is useful for identifying the escape mechanisms a lower-bound construction would have to defeat, while remaining outside the exact ALS/GD lower-bound target.

[D4] On the optimization landscape of tensor decompositions (2017)

**Identifier:** Ge and Ma, *Advances in Neural Information Processing Systems* 30 (2017), title-stable citation.

**Setting:** Nonconvex objectives for CP tensor decomposition, including overcomplete parameterizations and structured factor assumptions.

**Goal:** Characterize critical points and determine when local optimization can recover the planted decomposition.

**Main result:** The paper develops a landscape analysis in which, under suitable incoherence/conditioning and rank regimes, unwanted critical points are saddles or otherwise avoidable and the desired components are accessible to local methods.

**Key proof techniques:** Perturbation of the orthogonal-tensor landscape, Hessian/negative-curvature bounds, leave-one-out concentration, and local regularity estimates.

**Limitations:** Landscape statements do not imply that random-initialized ALS or gradient descent reaches a bad positive-loss limit. The assumptions are more structured than the brief's arbitrary-base smoothed model, and no lower bound in \(r<k\le r^{1+c}\) is proved.

**Relation to research scope:** direct prior work (optimization landscape).  It supports the landscape sub-target but leaves the algorithmic reachability and distributional failure probability required by Open Problem 3 unresolved.

[D5] Orthogonalized ALS: a theoretically principled tensor decomposition algorithm for practical use (2017)

**Identifier:** Sharan and Valiant, *Proceedings of ICML* 2017, PMLR 70, 3095--3104, https://proceedings.mlr.press/v70/sharan17a.html.

**Setting:** Orthogonalized/regularized alternating least squares for tensor decomposition, with an explicit practical update and normalization step.

**Goal:** Obtain a stable, implementable ALS method with a theoretical recovery/convergence explanation.

**Main result:** Orthogonalization improves conditioning and component separation and yields a provable recovery guarantee in the paper's structured tensor model, together with empirical improvements over unmodified ALS.

**Key proof techniques:** Orthogonal projection, conditioning of factor matrices, perturbation bounds, and alternating least-squares contraction.

**Limitations:** The method is not the unregularized parallel ALS in D1, and the theorem is not a lower bound.  Orthogonalization changes the dynamics, so its success cannot be extrapolated to the failure claim in the brief.

**Relation to research scope:** direct prior work (ALS variant).  It identifies update-normalization choices that must be fixed explicitly in any lower-bound theorem and is source-aligned partial context rather than a resolution.

#### Optimization Landscape / Other

[D6] Smoothed analysis of tensor decompositions (2014)

**Identifier:** Bhaskara, Charikar, Moitra, and Vijayaraghavan, Proceedings of STOC 2014, https://doi.org/10.1145/2591796.2591887.

**Setting:** Arbitrary factor matrices perturbed by independent small Gaussian noise; polynomial-time decomposition/conditioning guarantees.

**Goal:** Explain why generic perturbations remove algebraic degeneracies and make tensor decomposition identifiable and algorithmically tractable.

**Main result:** Smoothed instances satisfy robust uniqueness/conditioning properties with high probability, enabling efficient decomposition procedures for a broad rank regime.

**Key proof techniques:** Gaussian anti-concentration, smoothed condition-number bounds, algebraic-geometric degeneracy arguments, and polynomial identity tests.

**Limitations:** The algorithm is not random-initialized ALS or gradient descent, and the result is not an optimization-dynamics lower bound. It does not establish a positive objective limit or constant failure probability for \(k\le r^{1+c}\).

**Relation to research scope:** direct prior work on the source's smoothed object, but not on the requested iterative dynamics.  It is the main foundation for preserving the brief's arbitrary-versus-well-conditioned base-factor ambiguity.

[D7] Uniqueness of tensor decompositions with applications to polynomial identifiability (2014)

**Identifier:** Bhaskara, Charikar, and Vijayaraghavan, *Proceedings of COLT* 2014, PMLR 35, title-stable citation.

**Setting:** CP decompositions and polynomially identifiable factor models, including overcomplete regimes.

**Goal:** Give deterministic/probabilistic conditions under which a CP decomposition is unique.

**Main result:** The paper proves uniqueness/identifiability conditions beyond classical Kruskal-type ranges and translates them into polynomial-identification consequences.

**Key proof techniques:** Flattenings, rank arguments, algebraic independence, and combinatorial support/partition bounds.

**Limitations:** Identifiability is necessary neither for ALS convergence nor for proving a positive-loss trapping event; no random-initialized iterative lower bound is supplied.

**Relation to research scope:** direct tensor-decomposition theory with a theorem-target mismatch.  It bounds what a successful algorithm could identify but does not answer Open Problem 3's optimization question.

[D8] Polynomial-time tensor decompositions with sum-of-squares (2016)

**Identifier:** Ma, Shi, and Steurer, Proceedings of FOCS 2016, title-stable citation.

**Setting:** Polynomial-time algebraic/convex-relaxation methods for tensor decomposition under planted-factor assumptions.

**Goal:** Obtain recovery beyond classical spectral or flattening thresholds.

**Main result:** Sum-of-squares methods recover factors in regimes where simpler decompositions fail, with explicit polynomial-time rank and dimension guarantees.

**Key proof techniques:** SoS moment certificates, pseudoexpectation bounds, random-matrix concentration, and tensor flattening.

**Limitations:** This is a non-iterative recovery route and therefore cannot establish the requested ALS/GD failure event.  Its assumptions and probability mode differ from the source's smoothed dynamics.

**Relation to research scope:** direct prior work on tensor recovery, included to mark the forbidden-shortcut boundary: algebraic recovery does not answer the iterative lower-bound problem.

[D9] Overcomplete tensor decomposition via Koszul--Young flattenings (2025)

**Identifier:** Kothari, Moitra, and Wein, *Proceedings of FOCS* 2025, title-stable citation.

**Setting:** Overcomplete random/planted tensor models and algebraic flattening operators.

**Goal:** Extend identifiable and efficiently decomposable rank ranges beyond classical (n)-scale limits.

**Main result:** Koszul--Young flattenings provide polynomial-time decomposition guarantees in substantially overcomplete regimes under random-factor assumptions.

**Key proof techniques:** Representation-theoretic flattenings, rank concentration, and algebraic certification.

**Limitations:** No ALS/GD dynamics, no random-initialization basin analysis, and no positive-objective lower bound.  Random-factor assumptions are a special case, not the full arbitrary-base smoothed model.

**Relation to research scope:** direct adjacent theory and a useful special-case benchmark; it cannot be promoted to a full Open Problem 3 result.

## 2. foundation theory

The argument has two coordinated components (tensor factor geometry and iterative nonconvex optimization), so foundations are organized by component.  These papers are used for transferable proof tools, not as direct evidence of the requested lower bound.

### Component Theory

#### Component: tensor factor geometry and identifiability

##### Other (CP structure)

[F1] Foundations of the parafac procedure: models and conditions for an explanatory multimodal factor analysis (1970)

**Identifier:** Harshman, UCLA Working Papers in Phonetics 16:1--84 (1970), title-stable citation.

**Setting:** Classical PARAFAC/CP factorization and uniqueness conditions.

**Goal:** Formalize the CP model and conditions under which latent factors are identifiable.

**Main result:** Establishes the multilinear factor model and early uniqueness criteria that underlie modern CP analyses.

**Key proof techniques:** Multilinear algebra, rank conditions, and constructive factor arguments.

**Limitations:** No stochastic dynamics, smoothing, or optimization lower bound.

**Relation to research scope:** component-level foundation; source-convention context only.

[F2] Tensor decompositions and applications (2009)

**Identifier:** Kolda and Bader, *SIAM Review* 51(3):455--500, https://doi.org/10.1137/07070111X.

**Setting:** CP/Tucker decompositions, ALS updates, initialization, stopping rules, and applications.

**Goal:** Consolidate definitions and practical algorithms for tensor decomposition.

**Main result:** Gives the standard CP notation, matricized tensor times Khatri--Rao product (MTTKRP), and ALS algorithmic template used by later theory.

**Key proof techniques:** Algebraic identities and numerical algorithm analysis.

**Limitations:** Survey rather than a theorem about the source's smoothed random dynamics.

**Relation to research scope:** component-level foundation; it fixes update and objective conventions that a lower-bound theorem must state.

[F3] A decomposition for three-way arrays (1993)

**Identifier:** Leurgans, Ross, and Abel, *SIAM Journal on Matrix Analysis and Applications* 14(4):1064--1083, https://doi.org/10.1137/0614071.

**Setting:** Three-way arrays and uniqueness through matrix-pencil/eigenvalue constructions.

**Goal:** Derive identifiable and computable CP decompositions under rank conditions.

**Main result:** Provides an algebraic decomposition method and uniqueness conditions for three-way arrays.

**Key proof techniques:** Generalized eigenvalues, matrix pencils, and perturbation/uniqueness arguments.

**Limitations:** Algebraic recovery is outside the iterative-method scope.

**Relation to research scope:** component-level foundation and a reminder that identifiability does not imply ALS/GD convergence.

[F4] Tensor decompositions for learning latent variable models (2014)

**Identifier:** Anandkumar, Ge, Hsu, Kakade, and Telgarsky, *Journal of Machine Learning Research* 15 (2014), https://jmlr.org/papers/v15/anandkumar14b.html.

**Setting:** Moments of latent-variable models represented by low-rank tensors.

**Goal:** Recover latent parameters from tensor moments with polynomial sample and computational complexity.

**Main result:** Tensor power/whitening procedures provide provable recovery under incoherence and separation conditions.

**Key proof techniques:** Whitening, robust tensor power iteration, concentration of empirical moments, and perturbation analysis.

**Limitations:** The procedure is not ALS/GD and assumes a structured random-factor model.

**Relation to research scope:** component-level foundation; useful for identifying which random-factor assumptions would constitute a source-mentioned special case.

#### Component: iterative nonconvex optimization and saddle geometry

##### Convergence

[F5] Gradient descent only converges to minimizers (2016)

**Identifier:** Lee, Simchowitz, Jordan, and Recht, *Proceedings of COLT* 2016, PMLR 49, title-stable citation.

**Setting:** Smooth nonconvex objectives with random initialization and strict-saddle avoidance.

**Goal:** Characterize the probability that gradient descent converges to a local minimizer rather than a strict saddle.

**Main result:** Under regularity and a measure-zero stable-manifold condition, random initialization avoids strict saddles almost surely.

**Key proof techniques:** Stable-manifold theorem, diffeomorphism of the update map, and measure-zero arguments.

**Limitations:** Avoiding saddles does not imply convergence to a global optimum or a positive-loss failure event; assumptions are not verified for the smoothed CP objective.

**Relation to research scope:** testbed-level foundation for the convergence sub-target.

[F6] How to escape saddle points efficiently (2017)

**Identifier:** Jin, Ge, Netrapalli, Kakade, and Jordan, *Proceedings of ICML* 2017, PMLR 70, title-stable citation.

**Setting:** Smooth nonconvex optimization with perturbed gradient descent.

**Goal:** Give polynomial-time guarantees for escaping saddles and reaching approximate second-order points.

**Main result:** Perturbed GD reaches an approximate local minimum in polynomial time under Lipschitz-gradient/Hessian conditions.

**Key proof techniques:** Random perturbations, local negative-curvature search, martingale/concentration bounds, and descent lemmas.

**Limitations:** Approximate second-order stationarity is weaker than positive-objective convergence failure and does not cover ALS.

**Relation to research scope:** testbed-level foundation; it supplies a possible escape mechanism that a lower-bound invariant must rule out.

[F7] No spurious local minima in nonconvex low rank problems: a unified geometric analysis (2017)

**Identifier:** Ge, Lee, and Ma, *Proceedings of ICML* 2017, PMLR 70, title-stable citation.

**Setting:** Low-rank matrix sensing/completion factorizations (object-free tensor testbed).

**Goal:** Prove benign optimization landscapes for factorized low-rank objectives.

**Main result:** Under restricted-isometry/incoherence conditions, all local minima are globally optimal and other critical points have a direction of negative curvature.

**Key proof techniques:** Balancing regularizers, leave-one-out bounds, strict-saddle analysis, and local-to-global geometry.

**Limitations:** Matrix rather than CP tensor geometry; no overparameterized ALS lower bound.

**Relation to research scope:** testbed-level foundation; it clarifies which landscape assumptions fail to transfer automatically to tensor Khatri--Rao dynamics.

[F8] Stochastic variance reduction for nonconvex optimization (2016)

**Identifier:** Reddi, Hefny, Sra, Póczos, and Smola, *Proceedings of ICML* 2016, PMLR 48, title-stable citation.

**Setting:** Generic smooth nonconvex finite-sum objectives and stochastic first-order methods.

**Goal:** Obtain finite-time stationarity guarantees with reduced variance.

**Main result:** Variance-reduced stochastic gradients achieve improved convergence rates to stationary points under standard smoothness assumptions.

**Key proof techniques:** Control-variate estimators, telescoping Lyapunov functions, and smoothness-based descent.

**Limitations:** Stationarity is not global recovery or a positive-loss limit; no tensor-specific rank threshold or smoothed-instance probability.

**Relation to research scope:** testbed-level foundation for analyzing stochastic/gradient variants, not a direct result.

## 3. empirical practice

[E1] Tensor decompositions for data science (2025)

**Identifier:** Ballard and Kolda, Cambridge University Press (2025), title-stable book citation.

**Main result:** Surveys large-scale CP/Tucker workflows and reports that ALS, gradient, and randomized variants are sensitive to rank choice, initialization, conditioning, and stopping criteria; overparameterized fits are common in applications.

**Relation to research scope:** empirical context.  It motivates studying an algorithmic phase transition but supplies no distributional lower bound.

[E2] A scalable optimization approach for fitting canonical tensor decompositions (2011)

**Identifier:** Acar, Dunlavy, and Kolda, *Journal of Chemometrics* 25(7--8):352--367 (2011), title-stable citation.

**Main result:** Large-scale experiments compare alternating and gradient-style updates, documenting runtime, sensitivity to initialization, and the effect of overfitting rank.

**Relation to research scope:** empirical context for practical ALS behavior; experiments do not establish constant-probability convergence failure in the smoothed model.

[E3] Fast alternating least squares algorithms for high order tensor decomposition (2013)

**Identifier:** Phan, Tichavsky, and Cichocki, *IEEE Transactions on Signal Processing* 61(19) (2013), title-stable citation.

**Main result:** Numerical comparisons show that line-search, damping, and accelerated ALS variants can materially change convergence speed and robustness across tensor sizes and ranks.

**Relation to research scope:** empirical context.  Variant dependence reinforces the need to specify update schedule, normalization, tie-breaking, and initialization in any lower-bound theorem.

[E4] TensorLy: Tensor learning in Python (2019)

**Identifier:** Kossaifi et al., *Journal of Machine Learning Research* 20(26):1--6, https://jmlr.org/papers/v20/18-277.html.

**Main result:** Provides a reproducible implementation ecosystem for CP/ALS, gradient, and randomized tensor methods and documents practical behavior across data sets.

**Relation to research scope:** empirical/software context.  It can support replication of a theorem or counterexample, but cannot substitute for a proof.

[E5] A new efficient method for determining the number of components in PARAFAC models (2003)

**Identifier:** Bro and Kiers, *Journal of Chemometrics* 17(5):274--286 (2003), title-stable citation.

**Main result:** Empirical diagnostics for selecting CP rank show that model-selection and residual behavior can be unstable near overparameterized fits.

**Relation to research scope:** empirical context about rank selection and positive residuals; it is not evidence for the source's asymptotic lower bound.

## 4. gap and open problem

### Optimization

#### Convergence

**Search path / outcome:** direct theory found; lightweight component and testbed foundations used.

**Gap statement:** Existing direct results are predominantly upper bounds (D1, D2, D3) or structured-method guarantees (D4, D5). No cited theorem proves that, for a universal \(c>0\), every \(r<k\le r^{1+c}\) causes a precisely specified random-initialized ALS or gradient-descent dynamic to converge to a strictly positive objective with constant probability. The missing statement must quantify whether probability is over the Gaussian perturbations, initialization, or their joint law, and must state the update schedule and any restart protocol.

- Evidence pattern: D1 reaches a global optimum at \(O(r^2)\); D2 reaches convergence for one GD variant at a superlinear but positive rank threshold; neither supplies a matching failure theorem.
- Supporting papers / absence pattern: D3--D5 analyze escape, landscape, or ALS variants but do not establish positive-loss trapping in the source regime.
- Why it matters downstream: This is the central source target. A proof must preserve \(r<k\le r^{1+c}\), \(\rho=1/\operatorname{poly}(r)\), random initialization, and the arbitrary-versus-well-conditioned base-factor interpretation from the brief.
- Status: supported

#### Optimization Landscape

**Search path / outcome:** direct landscape theory found; tensor-geometry and strict-saddle foundations used.

**Gap statement:** Landscape papers establish identifiability, saddles, or local regularity, but no result closes the algorithmic reachability loop needed for a distributional lower bound.  In particular, existence of bad stationary points or early positive loss is not enough: the theorem must show convergence to a positive-loss solution with nonvanishing probability.

- Evidence pattern: D4 and D6--D9 provide landscape/conditioning/identifiability tools, while F5--F8 show what additional dynamical hypotheses are needed for saddle avoidance or convergence.
- Supporting papers / absence pattern: No source in the direct sweep combines a smoothed CP model, random initialization, an explicit ALS/GD trajectory, and a positive limiting objective for \(k\le r^{1+c}\).
- Why it matters downstream: Candidate ideas should expose a verifiable trapping mechanism or prove a formal obstruction to one; they must not assume a bad basin, invariant, or generated stability event as a primitive premise.
- Status: supported

#### Other: distributional lower bound / algorithmic phase transition

**Search path / outcome:** mixed direct and recursive outcomes; no direct lower-bound theorem found.

**Gap statement:** The literature contains a clear \(O(r^2)\) upper-bound benchmark and empirical suggestions of a superlinear threshold, but no distributional optimization lower bound in the exact source setting. Smoothed-analysis and algebraic papers (D6--D9) either use non-iterative algorithms or prove identifiability rather than failure of iterative dynamics.

- Evidence pattern: D1 and D2 bracket the known algorithmic behavior from above; E1--E5 report practical rank/initialization sensitivity but cannot support a formal probability claim.
- Supporting papers / absence pattern: The zero-hit lower-bound scope persists after exact-name, alias, theorem-term, and proxy-term checks for `positive objective`, `constant probability`, `random initialization`, and `smoothed ALS`; adjacent papers fall into algebraic recovery, landscape, or empirical categories.
- Why it matters downstream: The strongest source-faithful opportunity is a theorem for one fully specified method (partial progress) or a rigorously defined class containing both ALS and GD (full progress).  A random-factor-only theorem or a single worst-case tensor must be labeled special-case/partial, not silently promoted to a smoothed-model resolution.
- Status: supported
