# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- Homogeneous source coordinates with a balanced gauge: optimize the original variables \(x_i,y_i,z_i\in\mathbb R^n\), and after each Euclidean gradient step apply the standard tensor-preserving CP re-gauging that gives the three factors of a nonzero component their common geometric-mean norm. Thus a component is either jointly dormant or has three equal nonzero norms. If the current residual is \(R\), injecting a jointly dormant component along \((tu,tv,tw)\) changes the loss by
  \(-t^3\langle R,u\otimes v\otimes w\rangle+\tfrac12t^6\|u\otimes v\otimes w\|_F^2\); at the all-dormant point \(R=T\). This is a genuine cubic tensor injection, rather than the false cubic claimed for a linear signed coefficient and three sphere rotations.
- Finite refresh-and-promotion burn-in: use a polynomial-size random tape drawn once at initialization. During each burn-in epoch, low-radius probationary components follow balanced gradient descent in parallel; at the epoch boundary at most one residual-correlated component is permanently promoted, and all remaining probationary components are reset from the next tape block. The promotion rule, radius caps, epoch count, and total tensor perturbation budget are fixed below and use only observable iterates and residuals.
- Reachable-region landscape scope: replace Idea 1's false full-domain gradient/negative-curvature/cubic trichotomy by an epochwise certificate on a tube proved reachable from the random tape. Before active-chart entry, the certificate is promotion or inverse-polynomial decrease of a reset-budgeted Lyapunov function; after entry it is a quantitative PL inequality. Cancelling and partially dormant configurations outside this proved tube receive no global landscape claim.
- Adaptive residual coverage: promote only the highest-scoring probationary component in an epoch, so protected components reduce the residual before the next independent proposal block is tested. The proof must derive channel diversity, signed noncancellation, persistence, and active-chart entry from this sequential residual feedback; none is an admissible trajectory assumption.

## Setting

- Context: Retain the conditional deterministic base class from Idea 1. Fix \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) whose singular values and nonzero column norms lie in \([\kappa^{-1},\kappa]\), where \(\kappa\le r^{c_0}\). For the normalized column Grams \(G_{\bar A},G_{\bar B},G_{\bar C}\), require the primitive checkable condition
  \[
  \max\{\|G_{\bar A}\circ G_{\bar B}-I\|_{\mathrm{op}},
  \|G_{\bar A}\circ G_{\bar C}-I\|_{\mathrm{op}},
  \|G_{\bar B}\circ G_{\bar C}-I\|_{\mathrm{op}}\}\le 1/64.
  \]
  Keep \(n\ge C r\log r\), \(\rho^{-1}=\operatorname{poly}(r)\), and \(\rho\kappa^6\le10^{-3}\). Realized conditioning, target norm bounds, and every dynamic property remain conclusions.
- Model: Independently perturb every base column in every mode by \(\mathcal N(0,\rho^2 I_n/n)\), set \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\), and optimize the exact source objective
  \[
  F(X,Y,Z)=\frac12\left\|T-\Phi(X,Y,Z)\right\|_F^2,
  \qquad
  \Phi(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i.
  \]
  On the realized good-instance event, the balanced true components
  \(\tau_j^{1/3}\widetilde a_j,\tau_j^{1/3}\widetilde b_j,
  \tau_j^{1/3}\widetilde c_j\), with
  \(\tau_j=\|a_j\|\|b_j\|\|c_j\|\), give an exact zero-residual representation; proving the good event and the required norm bound is part of the theorem.
- Data: Use exactly the source Gaussian smoothing and the preceding deterministic base quantifier. The theorem must derive simultaneously, with probability at least \(1-r^{-10}\) over the once-drawn instance, realized cyclic Khatri-Rao deviation at most \(1/32\), realized column norms in \([(2\kappa)^{-1},2\kappa]\), a well-conditioned triple Gram, \(T\ne0\), and the exact balanced representation inside the radius cap. These are not extra data assumptions.
- Algorithm: Let \(R_{\max}=8\kappa\),
  \[
  \eta=\bigl[256k(R_{\max}+1)^6
  (\|T\|_F+kR_{\max}^3+1)\bigr]^{-1},
  \qquad P=16nrk\kappa\rho^{-1},
  \]
  and define contribution scales
  \(a_{\mathrm{seed}}=\|T\|_F P^{-120}\),
  \(a_{\mathrm{act}}=\|T\|_F P^{-80}\), common radii
  \(\delta=a_{\mathrm{seed}}^{1/3}\),
  \(\theta=a_{\mathrm{act}}^{1/3}\), epoch length
  \(H=\lceil P^{120}\rceil\), epoch budget
  \(S=\lceil P^{20}\rceil\), and promotion cap
  \(M=\lceil8r\log(2r)\rceil<k\) for sufficiently large \(r\).
  Pre-sample \(k(S+1)\) mutually independent Haar triples as one initialization tape and initialize all components at common norm \(\delta\).

  At every inner iteration, hold previously parked probationary components fixed and use \(\eta\) as the maximum simultaneous full-batch Euclidean gradient step on the remaining coordinates. If a probationary component at its radius cap blocks every positive step, park it too and repeat the search on the reduced coordinate set. Then choose the largest dyadic \(\lambda\le\eta\) for which every updated nonzero tentative triple
  \((\widehat x_i,\widehat y_i,\widehat z_i)
  =(x_i,y_i,z_i)-\lambda(\nabla_{x_i}F,\nabla_{y_i}F,\nabla_{z_i}F)\)
  can be balanced as
  \[
  g_i=(\|\widehat x_i\|\|\widehat y_i\|\|\widehat z_i\|)^{1/3},
  \quad
  (x_i,y_i,z_i)=g_i
  \left(\frac{\widehat x_i}{\|\widehat x_i\|},
  \frac{\widehat y_i}{\|\widehat y_i\|},
  \frac{\widehat z_i}{\|\widehat z_i\|}\right),
  \]
  with \(g_i\le R_{\max}\) for protected components and \(g_i\le2\theta\) for probationary components, and the balanced joint update satisfies the standard Armijo decrease
  \[
  F_{\mathrm{new}}\le F_{\mathrm{old}}
  -\frac{\lambda}{4}\|\nabla_{\mathrm{updated}}F_{\mathrm{old}}\|_F^2.
  \]
  The good-trajectory proof must show that protected components never block this search. This capped backtracking rule makes every inner update nonincreasing, so repeated cap interactions do not create an unbudgeted defect. A tentative triple with a zero factor is mapped to the joint zero triple and parked. All parking flags are cleared after the epoch reset. At an epoch boundary, with \(R=T-\Phi\), define the observable score
  \[
  s_i=\left\langle R,
  \frac{x_i\otimes y_i\otimes z_i}{
  \|x_i\otimes y_i\otimes z_i\|_F}\right\rangle
  \]
  for each nonzero probationary component. Among components with \(g_i\ge\theta\) and \(s_i\ge\|T\|_F P^{-30}\), promote only the one with largest score, provided fewer than \(M\) components have been promoted. Protected components are never reset. Reset every remaining probationary component to common norm \(\delta\) using its next pre-sampled Haar triple. End burn-in after \(S\) epochs or \(M\) promotions, set all still-probationary components to zero and freeze them, and continue balanced capped gradient descent on the protected components only.

  Each reset replaces a tensor of norm at most \(8a_{\mathrm{act}}\) by one of norm \(a_{\mathrm{seed}}\). Hence the deterministic path-length budget of all reset and final-pruning changes is
  \[
  B_{\mathrm{refresh}}
  \le kS(8a_{\mathrm{act}}+a_{\mathrm{seed}})+8ka_{\mathrm{act}}
  \le20\|T\|_F P^{-59}.
  \]
  The proof must charge every loss increase and recurrence defect to this displayed budget. Promotion changes only a label, and the random tape is part of one randomized run rather than an uncounted restart.
- Regime: Set \(k=U(r)=\lceil C r^{3/2}\log^2 r\rceil\), so \(U(r)=o(r^2)\) with \(\beta=1/2\). The burn-in \(SH\), tape size, and work per iteration are polynomial in \(n,r,\kappa,\rho^{-1}\) and independent of \(\epsilon\). Refinement must take an additional \(\operatorname{poly}(n,r,\kappa,\rho^{-1})\log(1/\epsilon)\) iterations, with no further refresh and no error floor.

## Goal

- Theorem type: Conditional refresh-reachable landscape-and-trajectory global-convergence theorem.
- Informal statement: Uniformly over every deterministic base triple satisfying the displayed conditioning, cyclic Khatri-Rao, dimension, and smoothing-margin conditions, prove that the once-drawn smoothed instance is good with probability at least \(1-r^{-10}\). Conditional on every good instance, prove with probability at least \(1-r^{-10}\) over the single pre-sampled initialization tape that the exact hybrid gradient map above constructs its own reachable tube, never needs an assumed coverage or basin event, and has the following landscape certificate on that tube: each burn-in epoch outside a regular active chart either promotes a residual-correlated representative for a previously unresolved target direction or decreases an explicitly reset-budgeted Lyapunov function by an inverse polynomial, while after at most \(S\) epochs the protected components contain a noncancelling representative system for all \(r\) target channels and lie in a same-target chart where \(F\) satisfies an inverse-polynomial PL inequality. Derive the per-channel proposal anti-concentration, first-update cubic growth, sequential residual diversity, off-span leakage control, protected-component persistence, competition and cancellation bounds, chart entry, and cap inactivity from the primitive data and tape laws. Then prove that post-pruning balanced gradient descent reaches
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F
  \]
  in total time \(\operatorname{poly}(n,r,\log(1/\epsilon))\). No claim is made about non-global cancelling configurations outside the proved reachable tube; at a joint-zero probationary component the homogeneous objective has a genuine cubic injection and the scheduled refresh makes the full algorithmic map nonstationary.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Beyond Lazy Training for Over-parameterized Tensor Decomposition
- Transfer map: preserves the first paper's asymmetric CP objective, smoothed Khatri-Rao interfaces, and relative-error accounting; changes its quadratic parallel-ALS span step to homogeneous GD with adaptive residual proposals; adapts the second paper's small initialization, mode switching, and periodic reinitialization while removing its symmetric model, regularizer, and accuracy-dependent width.
- Source alignment: Preserves the actual unnormalized source objective, source Gaussian perturbations, a random iterative protocol, \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), separate instance and algorithm-randomness probabilities, polynomial total runtime, and arbitrary relative Frobenius accuracy. As in Idea 1, the explicit source-scope restriction is polynomially conditioned bases with cyclic Khatri-Rao near-isometry and \(\rho\kappa^6\le10^{-3}\); the remaining gap is arbitrary bases and well-conditioned bases without these static restrictions. Relative to Idea 1, restricting the landscape claim to a trajectory-produced reachable tube is a deliberate theorem-scope change forced by its all-dormant counterexample, while the end-to-end exact-recovery conclusion is retained.
- Progress type: conditional
- Materiality: A proof would cross the quadratic rank threshold for a checkable smoothed class using the source variables and a polynomial-time gradient protocol. Sequential reuse of \(k=o(r^2)\) live probes is materially different from both the known one-round \(r^2\)-feature ALS certificate and a hidden algebraic initializer or external restart amplification.
- Significance: The repair addresses the failed entry state at its source: balancing removes persistent partially dormant triples, homogeneity restores the true cubic tensor injection, and finite refresh moves a jointly dormant probationary component. The reachable-scope change avoids making an unsupported global claim at active cancelling configurations, while one-at-a-time residual-score promotion gives a concrete producer for channel diversity rather than reusing Idea 1's insufficient collective feature conditioning.
- Feasibility: Homogeneous small-initialization growth, coefficient mode switching, and periodic reinitialization are literature-derived from the second parent; exact asymmetric contractions, Khatri-Rao conditioning, and probability bookkeeping are literature-derived from the first. Tensor-preserving CP balancing and capped Armijo backtracking are standard gauge and descent-globalization operations. The one-at-a-time residual-score promotion, final probationary pruning, and reset-budget interface are novel but directly checkable in three branch regimes: for \(r=1\), the score is the exact radial derivative and a positive random triple grows under the first homogeneous updates; for modewise orthogonal multi-channel tensors, fitting one protected channel removes its score from the next residual and forces sequential diversity; for cyclic Khatri-Rao near-isometric frames, the same score and Gram identities differ from the orthogonal calculation by operator-norm defects at most \(1/32\), which the \(P^{-30}\) activation margin and refresh budget leave as explicit proof obligations. The all-zero state, a one-factor-zero state, an active cancelling pair, and a fresh random entry are therefore handled respectively by refresh, joint balancing, exclusion via the produced signed potential, and tape anti-concentration, rather than by the rejected full-domain cubic claim.
- Consistency: All new algorithmic tests use only factor norms, the current residual, and pre-sampled randomness. The theorem does not assume a winning channel, protected-component correctness, noncancellation, bounded leakage, reachable-tube membership, PL geometry, or convergence. The exact true representation lies inside the cap on the derived good-instance event, the finite refresh budget is independent of \(\epsilon\), and pruning only probationary components permits no-floor PL refinement on the same tensor. This setting is non-duplicate because it changes the parameterization, gradient map, activation protocol, and landscape scope while preserving the unaffected data, rank, metric, and probability structure of Idea 1.
