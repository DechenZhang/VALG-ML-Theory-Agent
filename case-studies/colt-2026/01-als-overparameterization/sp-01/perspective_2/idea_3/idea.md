# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- Guarded project-and-park cap protocol: retain Idea 2's balanced homogeneous factors, but remove the probationary activation cap from the dyadic feasibility test. An unparked component with current radius at most \(2\theta\) is tested only against a fixed trial guard \(4\theta\). After a common Armijo step is accepted, every probationary trial whose balanced radius is at least \(2\theta\) is radially projected once to exactly \(2\theta\), parked for the rest of the epoch, and removed from subsequent common searches.
- Boundary transitions as finite discrete events: a project-and-park operation is not an accepted gradient step and is performed at most once per component per epoch. Its tensor displacement, all resets, and final pruning are charged to one explicit deterministic budget. Hence positive homogeneous growth reaches a promotion-ready boundary in one discrete transition rather than producing an arbitrarily long sequence of cap-slack-limited dyadic steps.
- Guard-based globalization: protected and unparked probationary current radii are bounded respectively by \(R_{\max}\) and \(2\theta\), whereas line-search trials use guards \(2R_{\max}\) and \(4\theta\). These fixed margins, a polynomial gradient bound on the guarded domain, and standard Armijo smoothness must produce an inverse-polynomial lower bound for every accepted common step. A protected trial crossing \(R_{\max}\) declares protocol failure; protected cap inactivity and a positive protected margin remain generated trajectory conclusions.
- Unchanged reachable-region contract: retain the epochwise promotion-or-Lyapunov-decrease certificate, one-at-a-time residual-score promotion, protected-component persistence, produced active chart and PL inequality, finite pre-sampled tape, and exact post-pruning refinement. No global claim is made for cancelling states outside the proved reachable tube.

## Setting

- Context: Keep the conditional deterministic base class of Idea 2. Fix \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) whose singular values and nonzero column norms lie in \([\kappa^{-1},\kappa]\), with \(\kappa\le r^{c_0}\). For the normalized column Grams require the primitive static condition
  \[
  \max\{\|G_{\bar A}\circ G_{\bar B}-I\|_{\mathrm{op}},
  \|G_{\bar A}\circ G_{\bar C}-I\|_{\mathrm{op}},
  \|G_{\bar B}\circ G_{\bar C}-I\|_{\mathrm{op}}\}\le\frac1{64}.
  \]
  Keep \(n\ge Cr\log r\), \(\rho^{-1}=\operatorname{poly}(r)\), and \(\rho\kappa^6\le10^{-3}\). Realized conditioning, exact representability, target-channel structure, and every trajectory property are derived outputs.
- Model: Independently perturb every base column in every mode by \(\mathcal N(0,\rho^2I_n/n)\), set \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\), and optimize the exact source objective
  \[
  F(X,Y,Z)=\frac12\left\|T-\Phi(X,Y,Z)\right\|_F^2,
  \qquad
  \Phi(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i.
  \]
  After every tentative Euclidean step, each nonzero triple is tensor-preservingly re-gauged to the common radius \(g_i=(\|x_i\|\|y_i\|\|z_i\|)^{1/3}\). A partial-zero triple is mapped to the joint-zero triple. On the realized good-instance event, the balanced true components with radius \(\tau_j^{1/3}\), where \(\tau_j=\|a_j\|\|b_j\|\|c_j\|\), form an exact zero-residual representation strictly inside the protected cap.
- Data: Use exactly the source Gaussian smoothing and the preceding deterministic base quantifier. With probability at least \(1-r^{-10}\) over the once-drawn instance, the theorem must derive realized cyclic Khatri-Rao deviation at most \(1/32\), realized column norms in \([(2\kappa)^{-1},2\kappa]\), a triple Gram within \(1/32\) of identity, two-sided target-norm control, \(T\ne0\), and exact balanced cap-admissible representation. None is an additional data assumption.
- Algorithm: Set \(R_{\max}=8\kappa\),
  \[
  P=16nrk\kappa\rho^{-1},\qquad
  \eta_{\max}=
  \bigl[512k(2R_{\max}+1)^6
  (\|T\|_F+8kR_{\max}^3+1)\bigr]^{-1},
  \]
  and retain
  \[
  a_{\mathrm{seed}}=\|T\|_FP^{-120},\quad
  a_{\mathrm{act}}=\|T\|_FP^{-80},\quad
  \delta=a_{\mathrm{seed}}^{1/3},\quad
  \theta=a_{\mathrm{act}}^{1/3},
  \]
  \[
  H=\lceil P^{120}\rceil,\qquad
  S=\lceil P^{20}\rceil,\qquad
  M=\lceil8r\log(2r)\rceil<k
  \]
  for sufficiently large \(r\). Pre-sample \(k(S+1)\) independent Haar triples as one initialization tape, and initialize all components at common radius \(\delta\).

  At an inner iteration, hold parked probationary components fixed and evaluate the full gradient on protected and unparked coordinates. Choose the largest dyadic \(\lambda\le\eta_{\max}\) for which the tensor-preservingly balanced trial has every protected trial radius at most \(2R_{\max}\), every unparked probationary trial radius at most \(4\theta\), and
  \[
  F_{\mathrm{trial}}\le F_{\mathrm{current}}
  -\frac{\lambda}{4}\|\nabla_{\mathrm{updated}}F_{\mathrm{current}}\|_F^2.
  \]
  If an accepted protected trial has radius above \(R_{\max}\), declare protocol failure. Otherwise accept every protected trial. Accept an unparked probationary trial with radius below \(2\theta\); if its radius is at least \(2\theta\), keep its balanced directions, replace its common radius by exactly \(2\theta\), mark it parked, and exclude it from all remaining inner updates that epoch. Thus a parked contribution has norm \(8a_{\mathrm{act}}\), and no parked component can constrain a later common step.

  At the epoch boundary, compute \(R=T-\Phi\) and
  \[
  s_i=\left\langle R,\frac{x_i\otimes y_i\otimes z_i}
  {\|x_i\otimes y_i\otimes z_i\|_F}\right\rangle
  \]
  for every nonzero probationary component. Among those with \(g_i\ge\theta\) and \(s_i\ge\|T\|_FP^{-30}\), promote only the one with largest score if fewer than \(M\) components are protected. Promotion changes only the label, and protected components are never reset. Reset every other probationary component to common radius \(\delta\) from the next tape block and clear all parking flags. End burn-in after \(S\) epochs or \(M\) promotions, set all remaining probationary components to zero and freeze them, and continue guarded balanced Armijo GD on the protected components only.

  A guarded probationary trial has tensor norm at most \((4\theta)^3=64a_{\mathrm{act}}\), so one projection to the parked cap changes its tensor by at most \(56a_{\mathrm{act}}\). A subsequent reset changes it by at most \(8a_{\mathrm{act}}+a_{\mathrm{seed}}\). Since there is at most one projection and one reset per component per epoch, the total discrete-event path length, including final pruning, satisfies
  \[
  B_{\mathrm{disc}}
  \le kS(64a_{\mathrm{act}}+a_{\mathrm{seed}})
  +8ka_{\mathrm{act}}
  \le140\|T\|_FP^{-59}.
  \]
  Every projection/reset loss defect must be charged to this displayed reserve. The fixed trial guards must separately yield \(\lambda\ge P^{-d_{\mathrm{step}}}\) for a fixed integer \(d_{\mathrm{step}}\) on every accepted step before protocol failure; cap projections themselves are counted as at most \(kS\) constant-cost discrete transitions, not as vanishing gradient steps.
- Regime: Use
  \[
  k=U(r)=\left\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\right\rceil,
  \]
  so \(U(r)=o(r^2)\) with \(\beta=1/2\). Tape generation, at most \(SH\) guarded burn-in steps, at most \(kS\) project-and-park events, dyadic trials per accepted step, and work per trial must all be polynomial in \(n,r,k,\kappa,\rho^{-1}\) and independent of \(\epsilon\). Protected-only refinement must take an additional \(\operatorname{poly}(n,r,\kappa,\rho^{-1})\log(1/\epsilon)\) accepted steps with no refresh and no error floor.

## Goal

- Theorem type: Conditional guarded-cap reachable-landscape and trajectory global-convergence theorem.
- Informal statement: Uniformly over every deterministic base triple satisfying the displayed conditioning, cyclic Khatri-Rao, dimension, and smoothing-margin assumptions, prove a good once-drawn smoothed-instance event of probability at least \(1-r^{-10}\). Conditional on each good instance, prove with probability at least \(1-r^{-10}\) over the one finite initialization tape that the guarded project-and-park protocol never declares protected-cap failure, every accepted common Armijo step is at least a fixed inverse polynomial in \(P\), and all project, reset, and prune defects are absorbed by \(B_{\mathrm{disc}}\). Construct from the primitive instance and tape laws an explicit reachable tube and nonnegative discrete-budgeted Lyapunov function such that each burn-in epoch outside a same-target active chart either promotes, under a derived injective assignment, a residual-correlated representative for a previously unresolved target channel or decreases that Lyapunov function by an inverse-polynomial amount after charging the epoch's discrete events. Prove conditional tape anti-concentration for each adaptive residual, homogeneous radial/angular growth up to the project-and-park transition, sequential residual diversity, target-mass reduction, protected noncancellation and cap margin, duplicate/off-span/leakage control, pruning absorption, chart entry, a balanced-Jacobian PL inequality, and chart preservation; none may be placed in the success event as an assumption. After at most \(S\) epochs or \(M\) promotions, prove that protected-only guarded Armijo GD returns
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F
  \]
  in total time \(\operatorname{poly}(n,r,\log(1/\epsilon))\) for every \(0<\epsilon<1\). The instance and tape probabilities remain separate, the exact balanced representation and arbitrary-\(\epsilon\) baseline are preserved, and no landscape assertion is made outside the produced reachable tube.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Beyond Lazy Training for Over-parameterized Tensor Decomposition
- Transfer map: preserves the first parent's asymmetric CP, smoothed Khatri-Rao, and relative-error interfaces and the second parent's homogeneous small-initialization, mode-switch, and refresh pattern; replaces Idea 2's equality-only capped search by a guarded radial projection and active-set parking transition.
- Source alignment: Preserves the actual unnormalized rank-\(k\) source loss, Gaussian smoothing, one randomized iterative tape, \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), separate instance/tape probabilities, polynomial total runtime, and arbitrary relative Frobenius accuracy. The result remains conditional on polynomial base conditioning, cyclic Khatri-Rao near-isometry, and \(\rho\kappa^6\le10^{-3}\); the remaining source gap is arbitrary bases and well-conditioned bases without these static restrictions. Relative to Idea 2, only the cap-transition procedure, trial guard, step-size ceiling, and finite discrete-event constant change.
- Progress type: conditional
- Materiality: The repair preserves the subquadratic end-to-end target while removing a reachable runtime contradiction in the exact algorithm. It yields a genuine cap-aware gradient protocol whose instantaneous rank is \(o(r^2)\), whose sequential random proposals are polynomially accounted, and whose final output still has no fixed approximation floor.
- Significance: Parking only at exact cap equality let positive radial growth force exponentially small common dyadic steps. The new guard supplies a fixed \(2\theta\) trial margin, and projection converts the first over-cap trial into one promotion-ready state before removing it from the common search. This is the smallest supported procedure change that retains the universal accepted-step interface; a guard-only equality rule would repeat the same slack defect, while merely dropping the step bound would require a new probabilistic bit-complexity control for arbitrarily near-dyadic cap landings.
- Feasibility: Homogeneous growth, finite refresh, and mode switching are literature-derived from the second parent; the instance algebra and Khatri-Rao probability interfaces are literature-derived from the first. Armijo backtracking, radial projection onto a norm ball, and parking an active constraint are standard optimization operations. Their guarded composition here is novel but mechanism-verified in several branch regimes: on the exact rank-one aligned path \(g^+=g+\lambda g^2(\tau-g^3)\), the first accepted trial with \(g^+\ge2\theta\) is projected once and parked, so no positive slack is iterated; on an open near-aligned rank-one neighborhood, continuity preserves the crossing while the \(4\theta\) guard bounds the trial; for modewise-orthogonal multi-channel tensors, simultaneous crossings are independently projected and only the largest residual score is promoted; for cyclic Khatri-Rao near-isometric frames, the cap logic is coordinate-free and the \(1/32\) Gram defects enter the still-required score, assignment, and persistence recurrences rather than the step-feasibility margin.
- Consistency: The new procedure uses only current factor norms, current gradients/residuals, and the pre-sampled tape. It does not assume cap inactivity, a positive cap slack, channel assignment, protected correctness, Lyapunov decrease, reachable-tube membership, PL geometry, or convergence. Joint zero is still activated only by scheduled refresh; partial zero is mapped to joint zero; an outward probationary path now ends in a finite project-and-park transition; active cancellation is excluded only by a to-be-proved signed potential. The exact true representation remains strictly inside \(R_{\max}\), finite discrete events stop before refinement, and the same protected objective can contract to every requested \(\epsilon\).
