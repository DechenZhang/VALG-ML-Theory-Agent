# LITERATURE_SURVEY.md

**Normalized direction.** The target is a global, end-to-end convergence or approximation theorem for a precisely specified iterative method applied from random initialization to the rank-\(k\) CP least-squares objective for a third-order rank-\(r\) tensor. The controlling instance model is the Gaussian smoothed model in Arvanitakis, Srinivas, and Vijayaraghavan (COLT 2026), with \(\rho=1/\operatorname{poly}(r)\), \(r\ll n\), and the source-level ambiguity that the prose says the base factors are arbitrary well-conditioned matrices while the formal smoothed-setting paragraph says arbitrary matrices. The desired output has \(r<k=o(r^2)\), runtime \(\operatorname{poly}(n,r,\log(1/\epsilon))\), and relative Frobenius error at most \(\epsilon\|T\|_F\), with high probability over the once-drawn smoothed instance and an explicit random-initialization/restart protocol.

**Search record and limits.** No local `papers/` or `literature/` library was present. The search used the official COLT paper and its bibliography, official PMLR/NeurIPS pages and PDFs, arXiv records, DOI publisher metadata, and OpenAlex metadata through 2026-07-17. Under the binding multi-object classification rule, it produced 1 qualifying direct-theory entry, 11 component-foundation entries, and 4 empirical/practice entries. The exact-source literature is sparse: no verified theorem found in the search crosses the quadratic sufficient-rank threshold in the controlling smoothed setting. Several older journal papers were accessible only through abstracts and metadata; their entries therefore state only abstract-supported claims. Purely algebraic recovery papers and papers whose primary target is an iterative lower bound were audited as context but omitted from the positive-direct-theory list because they are outside this subproblem's primary target.

## 1. direct theory

### Optimization

#### Convergence

[D1] Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions (NeurIPS 2025)

**Identifier:** https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html

**Setting:** A third-order tensor \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n}\) whose three factor matrices have condition numbers at most \(r^{c_0}\). The analyzed algorithm is a parallel (Jacobi-style) ALS variant with independent Gaussian initialization, algorithmic rank \(k\), pseudoinverse least-squares updates, and stopping tolerance \(\epsilon\).

**Goal:** Prove random-initialization global-optimum recovery for overparameterized ALS, with rank depending on \(r\) rather than polynomially on \(n\).

**Main result:** For constants depending on \(c_0\), if \(c r^2\le k\le n^{\gamma_0}\), then with probability \(1-o(1)\) over initialization, the algorithm runs in polynomial time, takes \(O(1)\) ALS rounds, and returns a rank-\(k\) decomposition with squared Frobenius residual at most the requested tolerance. A second theorem gives a \(\operatorname{poly}(r)\)-factor approximation to the best rank-\(r\) residual. The proof shows that after the first updates, Khatri-Rao features span an \(r^2\)-dimensional Kronecker space.

**Key proof techniques:** Pseudoinverse formulas for ALS updates; projection of first iterates into the true factor spans; least-singular-value bounds for structured dependent random matrices; polynomial anti-concentration; net arguments; and perturbation of Khatri-Rao/Kronecker products.

**Limitations:** The sufficient rank is quadratic, \(k\ge c r^2\), not strictly subquadratic. The proof is for a parallel ALS variant rather than the standard sequential implementation. It assumes polynomially conditioned factor matrices and \(k\le n^{\gamma_0}\); the theorem's high probability is over initialization for a fixed conditioned tensor, rather than an end-to-end statement with all smoothed-instance and restart quantifiers written in the source's form.

**Relation to research scope:** direct prior work; this is the exact quadratic baseline to improve, and its \(r^2\)-dimensional span certificate is the specific proof bottleneck that a source-faithful subquadratic theorem must avoid or sharpen. Its conditioning assumption matches the source prose's well-conditioned reading but does not resolve the formal paragraph's arbitrary-base reading.

## 2. foundation theory

### Component Theory

#### Component: iterative tensor optimization under restricted instance, objective, rank, or entry conditions

##### Optimization

###### Convergence

[F1] Beyond Lazy Training for Over-parameterized Tensor Decomposition (NeurIPS 2020)

**Identifier:** arXiv:2010.11356

**Setting:** A symmetric order-\(\ell\) tensor \(T^*=\sum_{j=1}^r c_j^*(u_j^*)^{\otimes \ell}\) with no linear-independence assumption. The method is a modified, regularized, 2-homogeneous gradient-descent procedure with small random initialization, coefficient mode switches, and periodic reinitialization of one component.

**Goal:** Show that a gradient-based iterative method can exploit low-rank structure beyond the lazy/NTK regime, whose width scales as \(\Omega(d^{\ell-1})\).

**Main result:** For target accuracy \(\epsilon\), the algorithm uses \(m=O(r^{2.5\ell}\epsilon^{-5}\log(d/\epsilon))\) components and, with probability at least \(0.99\), returns \(T\) with \(\|T-T^*\|_F\le\epsilon\) after \(O(r^{2\ell}\epsilon^{-4}\log(d/\epsilon))\) epochs, each containing a polynomial number of gradient steps. For \(\ell=3\), the rank dependence is \(r^{7.5}\), up to accuracy and logarithmic factors. The paper also proves that its vanilla overparameterized tensor objective can have bad local minima even with many components.

**Key proof techniques:** Mean-field-inspired finite-width analysis; 2-homogeneous reparameterization and regularization; random reinitialization to escape bad local minima; anti-concentration of Gaussian polynomials; invariant control of components orthogonal to the true span; and epoch-wise descent accounting.

**Limitations:** The tensor is symmetric and the algorithm changes the parameterization and dynamics through regularization, mode switches, and reinitialization. The width is far above \(r^2\) for order three and depends polynomially on \(1/\epsilon\). It is not an ALS theorem and does not treat the source's asymmetric three-factor smoothed model or its relative-error and instance-probability protocol verbatim.

**Relation to research scope:** component-level foundation; it establishes that iterative feature learning can beat ambient-dimension lazy training, but its symmetric tensor class, modified objective/dynamics, and lack of the source-smoothed base quantifier mean that it covers only the iterative-optimization component of the full direction.

[F2] Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use (ICML 2017)

**Identifier:** https://proceedings.mlr.press/v70/sharan17a.html

**Setting:** Symmetric third-order tensors \(T=\sum_{i=1}^k w_i A_i^{\otimes 3}\). Orth-ALS adds periodic QR orthogonalization and, in the proved variant, rerandomizes unrecovered estimates. The theorem assumes an incoherence/weight condition \(\gamma c_{\max}=o(k^{-2})\), where \(\gamma=w_{\max}/w_{\min}\).

**Goal:** Avoid standard ALS's tendency to send several estimates toward the same heavy component and obtain recovery from random initialization.

**Main result:** With high probability, the proved Orth-ALS variant converges in \(O(k(\log k+\log\log d))\) updates to small factor and weight error. For random factors, the conditions yield global recovery when the tensor rank is \(k=o(d^{1/4})\). The paper also proves random-initialization tensor-power convergence in related incoherent/random regimes.

**Key proof techniques:** Orthogonalization to separate competing component estimates; correlation growth; random-initialization order statistics; incoherence control; and perturbative tracking of factor errors.

**Limitations:** The algorithm is not standard ALS, the proved version includes periodic rerandomization, and the theorem uses symmetric incoherent factors with matched algorithmic and target rank rather than overparameterized least squares on source-smoothed asymmetric factors. Its \(k\) denotes tensor rank, not the source's algorithmic overparameterization.

**Relation to research scope:** component-level foundation; it supplies a concrete random-initialization feature-separation mechanism, but symmetry, incoherence, matched rank, and the modified Orth-ALS procedure make it a restricted iterative-method component rather than full-scope direct theory.

[F3] Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation (SIAM Journal on Matrix Analysis and Applications, 2012)

**Identifier:** DOI:10.1137/110843587

**Setting:** Canonical/CP low-rank tensor approximation by standard ALS near a candidate solution, with the scaling indeterminacy of CP factors explicitly factored out.

**Goal:** Establish a local convergence theorem for ALS and characterize a sufficient nondegeneracy condition.

**Main result:** ALS converges locally when the Hessian of the approximation problem is positive definite modulo the CP scaling indeterminacy; the paper also discusses regularization and illustrates the condition numerically.

**Key proof techniques:** Local block-optimization analysis; Hessian nondegeneracy on a quotient/modulo scaling directions; and linearization of alternating updates.

**Limitations:** This is a basin-local result. It neither proves entry into the basin from random initialization nor supplies global-optimum recovery, a rank bound, smoothed-instance probability, or restart amplification.

**Relation to research scope:** component-level foundation; it identifies a valid terminal local ALS interface, but it covers neither the source-smoothed instance component nor random entry into that neighborhood under overparameterization.

[F4] On Global Convergence of Alternating Least Squares for Tensor Approximation (Computational Optimization and Applications, 2023; online 2022)

**Identifier:** DOI:10.1007/s10589-022-00428-1

**Setting:** General CP tensor approximation by block ALS. The analysis concerns the ALS iterate sequence and partial Hessians of its block subproblems.

**Goal:** Weaken classical uniform positive-definiteness assumptions under which the full ALS sequence converges.

**Main result:** Global convergence of the iterate sequence holds when the smallest positive eigenvalues of the partial Hessians are uniformly bounded away from zero and subproblem solutions are chosen appropriately, allowing semidefinite partial Hessians. A second result uses positive definiteness at a limit point. The paper relates this condition to uniqueness of exact CP decompositions.

**Key proof techniques:** Block-coordinate descent analysis; spectral control of partial Hessians; selection rules for nonunique least-squares subproblems; and limit-point arguments.

**Limitations:** Here "global convergence" means convergence of the whole generated sequence, not convergence from random initialization to a global minimizer. The hypotheses are trajectory/limit-point conditions and do not yield the source's rank, runtime, approximation, or probability certificate.

**Relation to research scope:** component-level foundation; it is useful for ruling out cycling and for terminal convergence once suitable conditioning is derived, but its trajectory/Hessian setting omits the source-smoothed and random-initialization global-optimum components.

[F5] On the Global Convergence of the Alternating Least Squares Method for Rank-One Approximation to Generic Tensors (SIAM Journal on Matrix Analysis and Applications, 2014)

**Identifier:** DOI:10.1137/130938207

**Setting:** ALS/power-method-type updates for best rank-one approximation of a generic tensor of arbitrary order.

**Goal:** Prove convergence of the iterates themselves, beyond previously understood convergence of only their objective values.

**Main result:** For almost all tensors, the iterates produced by the alternating least-squares method for rank-one approximation converge globally.

**Key proof techniques:** Algebraic geometry to characterize exceptional tensors combined with dynamical-systems analysis of the rank-one alternating iteration.

**Limitations:** Rank-one approximation does not model simultaneous recovery of \(r\) interacting CP components or overparameterized rank \(k>r\). Convergence of the rank-one iteration is not an end-to-end decomposition or relative-residual guarantee for the source objective.

**Relation to research scope:** component-level foundation; it provides a clean ALS convergence testbed, but rank-one approximation omits the source's multi-component smoothed instance and rank-\(k\) overparameterization objects.

[F6] Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition (COLT 2015)

**Identifier:** arXiv:1503.02101

**Setting:** A specially designed nonconvex objective for orthogonal tensor decomposition, optimized by online stochastic gradient descent.

**Goal:** Give polynomial-time global convergence for a nonconvex problem with many saddles and local minima by identifying a strict-saddle structure.

**Main result:** The proposed orthogonal tensor-decomposition objective has the strict-saddle property, and stochastic gradient descent reaches a local minimum in polynomially many iterations; in this formulation the local minima yield the desired orthogonal decomposition.

**Key proof techniques:** Strict-saddle geometry; injected stochasticity for saddle escape; local strong convexity near minima; and a general polynomial-time SGD analysis.

**Limitations:** The factors are orthogonal, and the optimized objective is not the source's rank-\(k\) CP least-squares objective. The theorem does not cover arbitrary/well-conditioned smoothed bases or establish a subquadratic algorithmic-rank bound.

**Relation to research scope:** component-level foundation; it demonstrates a valid global iterative mechanism for an orthogonal special case and different objective, but does not analyze the source-smoothed CP least-squares object.

###### Optimization Landscape

[F7] On the Optimization Landscape of Tensor Decompositions (2017 preprint)

**Identifier:** arXiv:1706.05598

**Setting:** Random overcomplete symmetric tensors and a nonconvex component-finding objective optimized by gradient ascent.

**Goal:** Characterize the landscape beyond small neighborhoods of the true components and justify local search from weakly informative initialization.

**Main result:** For each small constant \(\varepsilon>0\), within the region whose objective values exceed the random expectation by a \((1+\varepsilon)\) factor, all local maxima are approximate global maxima. This implies convergence of gradient ascent when initialization is only slightly better than random for the paper's random-tensor objective.

**Key proof techniques:** Kac-Rice formulas for critical-point counts; random-matrix theory; and analysis of dependent random polynomials.

**Limitations:** The tensor distribution, symmetry, objective, and component-wise goal differ from the source's smoothed asymmetric rank-\(k\) least-squares problem. The theorem does not give a rank-\(k\) relative-residual certificate or random-restart analysis for ALS/GD on the source objective.

**Relation to research scope:** component-level foundation; it suggests a global landscape route for random symmetric tensors and a different component-finding objective, so it covers a restricted optimization component rather than both full-scope objects.

#### Component: smoothed CP instances and structured random features

##### Optimization

###### Convergence-supporting conditioning

[F8] Smoothed Analysis of Tensor Decompositions (STOC 2014)

**Identifier:** arXiv:1311.3651

**Setting:** Low-rank and highly overcomplete tensors whose underlying factor vectors are independently perturbed in a smoothed-analysis model.

**Goal:** Obtain robust polynomial-time tensor decomposition and explain why tensor-product feature matrices become well conditioned after perturbation.

**Main result:** The paper gives an efficient, noise-robust decomposition algorithm in a smoothed overcomplete regime and proves inverse-polynomial lower bounds on singular values of matrices formed from tensor products of perturbed vectors. It applies the machinery to multi-view mixtures and mixtures of axis-aligned Gaussians.

**Key proof techniques:** Decoupling of Gaussian perturbations; robust linear independence of tensor-product lifts; least-singular-value bounds; and algebraic/spectral recovery.

**Limitations:** The recovery algorithm is algebraic rather than an analysis of ALS or GD, so it is out of scope as the final algorithm. Its smoothed conditioning results also do not by themselves produce an iterative trajectory invariant or a subquadratic rank certificate.

**Relation to research scope:** component-level foundation; this is the canonical source for the smoothed tensor-product conditioning needed to discharge instance probability, but it cannot replace the required iterative-method proof.

[F9] New Tools for Smoothed Analysis: Least Singular Value Bounds for Random Matrices with Dependent Entries (STOC 2024)

**Identifier:** arXiv:2405.01517

**Setting:** Random matrices whose entries are low-degree polynomials of a smaller collection of underlying random variables, including higher-order lifts of smoothed matrices.

**Goal:** Prove robust least-singular-value bounds despite strong dependence among matrix entries.

**Main result:** The paper develops hierarchical epsilon-net and higher-order-lift tools that yield inverse-polynomial least-singular-value bounds for several dependent-entry models and new smoothed-analysis applications.

**Key proof techniques:** Hierarchical epsilon nets; polynomial anti-concentration; stratification by compressibility/structure; and transfer through higher-order lifts and linear operators.

**Limitations:** These are conditioning tools, not an iterative convergence theorem. A subquadratic argument would still need to specify the exact feature matrix produced by ALS/GD, prove that the tool's assumptions hold along the dependent trajectory, and connect its singular value to relative residual.

**Relation to research scope:** component-level foundation; the methods are relevant to dependent Khatri-Rao features, but D1 explicitly notes that its pseudoinverse-dependent random matrix does not directly fit the polynomial-entry structure of these tools and therefore develops a separate argument. A subquadratic route needs a new, object-matched use rather than a black-box citation.

#### Component: rank-k CP least-squares approximation and algorithmic rank

##### Optimization

###### Approximation and computational structure

[F10] Relative Error Tensor Low Rank Approximation (SODA 2019)

**Identifier:** arXiv:1704.08246

**Setting:** General order-\(q\) tensors and Frobenius relative-error low-rank approximation, allowing bicriteria output rank.

**Goal:** Circumvent both nonexistence of best fixed-rank approximants and computational hardness while retaining relative error.

**Main result:** A bicriteria algorithm returns rank \(k'=O((k/\epsilon)^{q-1})\) with squared residual at most \((1+\epsilon)\) times the best rank-\(k\) infimum in input-sparsity plus parameter-polynomial time. A parameterized exact-rank alternative and conditional running-time lower bounds are also given.

**Key proof techniques:** Tensor sketching; subspace embeddings; recursive low-rank approximation; bicriteria rank expansion; and parameterized algorithms.

**Limitations:** The method is not ALS/GD and its order-three bicriteria rank is quadratic in the target rank (and polynomial in \(1/\epsilon\)). It addresses general approximation rather than exact source-smoothed CP recovery.

**Relation to research scope:** component-level foundation; it formalizes the matrix-like \(r^2\) bicriteria baseline and relative-error interface, but using it as the final algorithm would violate the source's iterative-method requirement.

[F11] Tensor Decompositions and Applications (SIAM Review, 2009)

**Identifier:** DOI:10.1137/07070111X

**Setting:** A broad survey of CP, Tucker, and related tensor decompositions, their algebra, applications, algorithms, and software.

**Goal:** Establish the standard notation and computational formulation for tensor decompositions and summarize practical algorithms including CP-ALS.

**Main result:** The survey derives CP matricizations and Khatri-Rao least-squares subproblems, explains ALS as the standard block-coordinate method, and documents uniqueness, degeneracy, computational, and application considerations across tensor models.

**Key proof techniques:** Expository synthesis of multilinear algebra, matricization identities, alternating optimization, and identifiability results.

**Limitations:** It supplies no random-initialization global convergence theorem or overparameterization threshold. Its practical discussion is not evidence for the source's smoothed high-probability claim.

**Relation to research scope:** component-level foundation; it fixes the standard CP-ALS object and its Khatri-Rao interfaces, which downstream ideas must preserve rather than silently replacing with an algebraic decomposition method.

## 3. empirical practice

[E1] A Scalable Optimization Approach for Fitting Canonical Tensor Decompositions (Journal of Chemometrics, 2011)

**Identifier:** DOI:10.1002/cem.1335

**Main result:** Computational experiments compare CP-ALS with nonlinear and gradient-based optimization. They report that ALS can be inaccurate under overfactoring, while the proposed gradient-based approach can achieve greater accuracy than ALS and lower total time than nonlinear least squares because derivatives can be evaluated at roughly ALS-iteration cost.

**Relation to research scope:** empirical context; it confirms that overfactoring changes practical behavior and that non-ALS iterative optimization is viable, but it does not establish a subquadratic sufficient rank or any source probability/runtime theorem.

[E2] Fast Alternating LS Algorithms for High Order CANDECOMP/PARAFAC Tensor Factorizations (IEEE Transactions on Signal Processing, 2013)

**Identifier:** DOI:10.1109/TSP.2013.2269903

**Main result:** The paper reorganizes the expensive tensor-unfolding/Khatri-Rao products in CP-ALS. Reported experiments give 20-30x acceleration for order-five and order-six tensors, with larger gains at higher order, while reducing extra memory.

**Relation to research scope:** empirical context; it supports the practical importance and implementability of ALS updates, but its speedups do not address global convergence, random initialization, smoothed instances, or the rank threshold.

[E3] A Practical Randomized CP Tensor Decomposition (SIAM Journal on Matrix Analysis and Applications, 2018)

**Identifier:** DOI:10.1137/17M1112303

**Main result:** Randomized least-squares sampling reduces CP-ALS workload. Numerical results report speed and memory improvements and improved robustness to initialization without sacrificing approximation quality; the paper also analyzes when Khatri-Rao products are favorable for direct sampling.

**Relation to research scope:** empirical context; randomized subproblem solvers may help runtime and restart implementations, but empirical robustness is not a proof that a random start reaches a global optimum or that \(k=o(r^2)\) suffices.

[E4] Tensor Decomposition for Signal Processing and Machine Learning (IEEE Transactions on Signal Processing, 2017)

**Identifier:** DOI:10.1109/TSP.2017.2690524

**Main result:** This practice-oriented overview covers CP rank, identifiability, alternating and stochastic optimization, statistical performance, software, and applications including source separation, collaborative filtering, mixture/topic models, and multilinear subspace learning.

**Relation to research scope:** empirical context; it establishes that alternating and gradient methods are central practical tools and clarifies their application surface, but it is not theorem evidence for a strictly subquadratic global-convergence guarantee.

## 4. gap and open problem

### Optimization

#### Global Convergence with Strictly Subquadratic Algorithmic Rank

**Search path / outcome:** one full-scope direct-theory paper found; component foundation used for all restricted-model, restricted-objective, local, rank-one, and general conditioning/approximation results

**Gap statement:**

- Evidence pattern: The official source, Arvanitakis, Srinivas, and Vijayaraghavan, *Open Problem: How much overparametrization is needed for ALS in tensor decomposition?* (PMLR 336, 2026; https://proceedings.mlr.press/v336/arvanitakis26a.html), states the controlling target. D1 is the only verified paper that jointly analyzes the source-relevant conditioned/smoothed CP object, random initialization, overparameterized rank-\(k\) least-squares updates, and global recovery; it gives \(k=\Theta(r^2)\). F1 gives a much larger \(r^{7.5}\) width for an order-three modified-GD model, while F2-F6 obtain convergence only after restricting the algorithm, objective, rank regime, initialization interface, or factor class, or prove sequence/local/rank-one convergence rather than full-scope global-optimum recovery.
- Supporting papers / absence pattern: Exact-name, ALS/global-convergence, overparameterized-GD, landscape, smoothed-tensor, and cited-paper expansion found no verified theorem with \(r<k=o(r^2)\) for the source-smoothed rank-\(k\) least-squares objective. D1 exposes the present \(r^2\) Khatri-Rao/Kronecker span argument. F8-F9 provide robust smoothed conditioning tools but no subquadratic dynamic feature interface; F10 shows that a general noniterative bicriteria relative-error route naturally incurs order-three quadratic rank.
- Why it matters downstream: A source-faithful idea must replace full \(r^2\)-space spanning with a target-adaptive mechanism that controls only the \(r\)-dimensional diagonal Khatri-Rao target, or prove gradual nonlinear feature discovery across iterations. Any claimed theorem must explicitly report \(U(r)\) (and \(\beta<1\), if \(U(r)=O(r^{1+\beta}\operatorname{polylog}r)\)), the exact iterative algorithm, dependence on \(n,r,k,\rho,\epsilon\), polynomial runtime, relative Frobenius error, the base-matrix class and quantifier, high probability over the once-drawn smoothed instance, fixed-input initialization success, and polynomial-cost restart amplification. The source ambiguity must remain visible: a theorem uniform over arbitrary bases is stronger than one over arbitrary well-conditioned bases, while Gaussian/random-unit factors are only a labeled special case. Noniterative simultaneous diagonalization/algebraic recovery is out of scope, and an Open Problem 3 polynomial lower bound cannot be substituted as this run's primary result.
- Status: supported

#### Landscape and Dynamic Feature-Learning Mechanism

**Search path / outcome:** one full-scope direct convergence paper found; all landscape and restricted convergence evidence is component-level foundation

**Gap statement:**

- Evidence pattern: F1 proves that vanilla overparameterized tensor objectives can possess bad local minima, whereas F6-F7 obtain benign global behavior only for orthogonal or random symmetric tensors and different objectives. D1 succeeds through a one-round \(r^2\)-dimensional span certificate; it does not show how \(o(r^2)\) features progressively align. F3-F5 describe local, sequence, or rank-one convergence but provide no random-entry-to-global-basin bridge for interacting CP components.
- Supporting papers / absence pattern: The single direct paper and component foundations collectively provide random-feature spanning, strict-saddle, high-value landscape, and local-Hessian tools, but no verified result combines them under arbitrary-base Gaussian smoothing for the actual asymmetric CP least-squares trajectory. Empirical papers E1-E3 show sensitivity to overfactoring and initialization and practical gains from modified or randomized updates, but empirical behavior alone cannot certify the missing theorem-level mechanism.
- Why it matters downstream: Promising perspectives should localize a noncircular producer for component alignment or target-subspace coverage, prove its first-update behavior from random initialization, and track residual-to-target control across iterations without assuming basin membership, alignment, boundedness, or stability. A random-factor or orthogonal theorem may be material partial progress only if it is strictly subquadratic, retains the iterative/rank/runtime/error/probability certificate, is labeled as a source-mentioned special case, and states the remaining gap to arbitrary or arbitrary-well-conditioned smoothed bases. A conditional theorem must expose independently checkable extra assumptions rather than hiding generated trajectory events in an admissibility package.
- Status: supported
