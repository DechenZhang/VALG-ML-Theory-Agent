# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- Balanced-weight near-orthogonal source special case: for
  \(\bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\), require the
  primitive, pre-smoothing condition
  \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\), where
  \(\Gamma_\star\) is an absolute constant. Retain polynomially bounded
  individual column norms, but require the normalized modewise Gram deviation
  and relative smoothing error to obey
  \[
  \nu_{\rm base}+C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
  \le \nu_\star:=\frac{1}{C_\nu r\log(2r)}.
  \]
  This permits polynomial reciprocal rescalings between modes when each CP
  product weight stays balanced. It deliberately excludes the strong/weak
  family that made \(\kappa^6\mu_{\rm real}^2\) unbounded in idea_5.
- No protected-complement projection: every scratch direction is initialized
  in the full ambient sphere and every discovery update is an unprojected
  balanced gradient, radial, or angular step on the exact CP least-squares
  loss. Protected factors are frozen during a transaction but never used to
  project, retract, orthogonalize, or otherwise alter the scratch directions.
  They enter only through the observable commit-time separation test
  \[
  {\sf Sep}(q;I):=
  \max_{i\in I}\max_{M\in\{A,B,C\}}
  |\langle u_M,u_{i,M}\rangle|\le\frac14.
  \]
  Set \({\sf Sep}(q;\varnothing)=0\). Thus distinct near-orthogonal targets pass, duplicate captures fail, and
  accepted directions remain free to have the same nonzero correlations as
  the true nonorthogonal target factors.
- Weight-aware leakage source: on the realized good-instance event, the base
  conditions must derive \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\) and
  \(\nu_{\rm real}\le2\nu_\star\). Consequently, for every label \(j\),
  \[
  \sum_{\ell\ne j}\tau_\ell
  |\langle\widetilde b_\ell,\widetilde b_j\rangle
    \langle\widetilde c_\ell,\widetilde c_j\rangle|
  \le \tau_{\max}\nu_{\rm real}^2
  \le2\Gamma_\star\tau_j\nu_{\rm real}^2,
  \]
  with cyclic analogues. This Cauchy--Schwarz consequence of the two
  modewise Gram bounds is the primitive-to-derived replacement for the failed
  \(\kappa^6\mu^2\) bridge; it is not assumed as a trajectory event.
- Structured accepted-error ledger: a certified commit must be matched in the
  analysis to one unresolved label and charged an
  \(O(\Gamma_\star\nu_{\rm real}^2)\) relative direction/radius error. The
  proof must retain the labelwise tensor and two-mode contraction structure of
  each charge, so its effect on a later unresolved label gains the same
  pair-correlation factor rather than being bounded only by its global
  Frobenius norm. The declared margin gives
  \(r\Gamma_\star\nu_{\rm real}^2=O((r\log^2 r)^{-1})\), making the accepted
  errors finite and target-compatible across all \(r\) commits.
- Transactional radial/angular discovery with exact rollback: reuse the exact
  radial sign bracket and angular-only second-order certificate from idea_5,
  but run them without protected projections. When the angular gradient is
  small and the angular Hessian has a negative direction, compute an
  approximate minimum eigenvector and take the sign giving the smaller exact
  trial loss. An uncertified or nonseparated scratch slot is returned exactly
  to joint zero. A certified separated slot is committed with its observable
  capture value; no true label or true factor is queried.
- Target-compatible terminal entry: after \(r\) separated commits, unfreeze
  all committed slots and run joint unprojected balanced trust-region Armijo
  gradient descent. The discovery ledger must place this actual, generally
  nonorthogonal committed tuple inside a same-target balanced PL chart. The
  terminal phase has no projection, refresh, rollback defect, or fixed
  tolerance, so it can retain the exact-representation and arbitrary-accuracy
  baseline.

## Setting

- Context: Fix deterministic
  \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) with nonzero column norms
  in \([\kappa^{-1},\kappa]\), where \(\kappa\le r^{c_0}\). Let
  \(G_{\bar M}\) be each normalized column Gram and set
  \(\nu_{\rm base}=\max_M\|G_{\bar M}-I_r\|_{\rm op}\). Require
  \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\),
  \(n\ge C_{\rm dim}r\log(2r)\), \(\rho^{-1}\le r^{c_\rho}\), and the
  displayed \(\nu_\star\) smoothing margin. This is a balanced-weight,
  modewise-near-orthogonal source special case, not a theorem for arbitrary
  or merely well-conditioned bases.
- Model: Independently draw
  \(a_j-\bar a_j,b_j-\bar b_j,c_j-\bar c_j\sim
  {\cal N}(0,\rho^2I_n/n)\), set
  \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\), and optimize the exact source
  objective
  \[
  F(X,Y,Z)=\frac12\left\|T-
  \sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]
  Every nonzero slot is tensor-preservingly balanced as
  \((g_iu_i,g_iv_i,g_iw_i)\), and a partial-zero slot is mapped to joint
  zero. No penalty, deflated tensor, algebraic initializer, or modified
  objective is introduced.
- Data: The once-drawn instance event must derive nonzero realized columns,
  \(\nu_{\rm real}\le2\nu_\star\),
  \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\), polynomial two-sided target
  norm bounds, well-conditioned pair/triple Khatri--Rao Grams, and the exact
  balanced \(r\)-slot representation of \(T\). The event must have
  probability at least \(1-r^{-10}\) uniformly over every deterministic base
  triple in the stated class. These realized properties are derived outputs,
  not additional assumptions.
- Algorithm: Let
  \(P=16nrk\kappa\rho^{-1}\), \(R_{\max}=8\kappa\), and seed one scratch
  slot at radius
  \(\delta=(\|T\|_FP^{-120})^{1/3}\) with three independent full-space Haar
  directions; flip one mode if needed to make its current residual score
  nonnegative. Hold the protected slots and every other unused slot fixed.
  For protected set \(I\), use the actual residual
  \(R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i\) and the exact
  one-slot loss
  \[
  f_I(g,u,v,w)=\frac12\|R_I-g^3u\otimes v\otimes w\|_F^2,
  \qquad s_I=\langle R_I,u\otimes v\otimes w\rangle.
  \]
  Unprojected trust-region Armijo steps first bracket and solve
  \(g^3=s_I\) to inverse-polynomial relative tolerance. Unprojected
  Riemannian angular gradient steps then re-solve that bracket after each
  move. At a small-gradient state with angular Hessian below
  \(-P^{-D_{\rm gap}}\), compute an approximate minimum eigenvector, compare
  the two signed trust-region trials, and take the lower-loss accepted trial.
  Certify only when the radial error and normalized angular gradient are at most
  \(P^{-D_{\rm stat}}\), the angular Hessian is at least
  \(P^{-D_{\rm gap}}\), the capture is at least
  \(\|R_I\|_F^2P^{-D_{\rm cap}}\), and \({\sf Sep}(q;I)\) holds, for fixed
  proof exponents. A failed transaction is rolled back exactly; a successful
  one is committed without changing its directions. After \(r\) commits,
  set unused slots to joint zero and run joint unprojected balanced
  trust-region Armijo gradient descent on the committed slots.
- Regime: Set
  \(k=U(r)=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\), so
  \(r<k=o(r^2)\) with \(\beta=1/2\). Pre-sample a polynomial tape of full
  Haar seeds. The proof target is a uniform
  conditional transaction success probability
  \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\); use
  \(N_{\rm tx}=O(r(nr)^{c_{\rm tx}}\log(2r))\) transactions to amplify all
  \(r\) commits. Discovery work is polynomial in
  \(n,r,\kappa,\rho^{-1}\) and independent of \(\epsilon\); terminal work is
  \(\operatorname{poly}(n,r,\kappa,\rho^{-1})\log(1/\epsilon)\).

## Goal

- Theorem type: Material-partial separation-gated unprojected
  reachable-landscape and trajectory theorem for balanced-weight
  modewise-near-orthogonal smoothed tensors.
- Informal statement: Prove the stated once-drawn good-instance event with
  probability at least \(1-r^{-10}\). Conditional on each good instance and
  each proof-generated protected state satisfying the structured accepted-error
  ledger, prove that unprojected radial/angular gradient descent with the
  specified negative-curvature escape on the next scratch slot reaches a
  separated certificate within polynomial work with probability at least
  \((nr)^{-c_{\rm tx}}\). Establish a robust
  angular-landscape lemma whose only separated approximate local minima above
  the displayed capture threshold are
  \(O(\Gamma_\star\nu_{\rm real}^2)\)-perturbations of unresolved realized
  target atoms; use it to produce a unique new label, radius accuracy,
  duplicate exclusion, the one-step structured ledger charge, and the
  induction for all commits. Then prove that the actual nonorthogonal committed
  tuple lies in a same-target balanced PL chart, that joint unprojected
  terminal descent preserves that chart, and that for every
  \(0<\epsilon<1\) it returns a rank-\(k\) decomposition satisfying
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F
  \]
  in \(\operatorname{poly}(n,r,\log(1/\epsilon))\) total time. Keep the
  instance probability and conditional tape probability at least
  \(1-r^{-10}\) separately. The theorem is explicitly limited to the
  balanced-weight near-orthogonal class; arbitrary bases, unbalanced CP
  weights, and simultaneous all-slot GD remain open.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Beyond Lazy Training for Over-parameterized Tensor Decomposition
- Transfer map: preserves the asymmetric source loss, Gaussian smoothing, homogeneous balancing, random-tape accounting, and no-floor relative-error endpoint; changes exact complement projection to full-space unprojected transactions plus a separation gate, adds a static balanced-weight source, and reuses radial activation and local gradient refinement.
- Source alignment: Preserves the exact asymmetric CP least-squares objective, independent source Gaussian smoothing, random initialization with polynomial tape amplification, \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), polynomial runtime, separate instance/tape probabilities, and arbitrary relative Frobenius accuracy. The target-changing narrowing is the explicit modewise-near-orthogonal and balanced-product-weight base class; the arbitrary-base and unbalanced-weight source target remains open.
- Progress type: material_partial
- Materiality: The branch crosses the quadratic rank threshold on a nontrivial smoothed asymmetric class and directly removes both idea_5 theorem-contract obstructions. Its commits are not orthogonalized surrogates, and its weight balance supplies a primitive quantitative source for the angular gap that failed under polynomial strong/weak weights.
- Significance: The procedure tests diversity without changing the represented directions. The target itself, rather than an orthogonalized proxy, is therefore the terminal chart reference. The derived inequality \(\tau_{\max}\nu^2\le2\Gamma_\star\tau_j\nu^2\) also separates conditioning of individual mode scalings from conditioning of the actual CP weights, allowing polynomial reciprocal mode scalings that the crude \(\kappa^6\) bound excluded.
- Feasibility: Gaussian norm/Gram transfer, balanced re-gauging, exact radial bracketing, Armijo backtracking, and minimum-eigenvector escape from strict saddles are standard or literature-derived ingredients; the current asymmetric angular and ledger lemmas remain proof obligations. The new no-projection separation mechanism and balanced-weight ledger are directly checkable in several branch-specific regimes: (i) orthogonal normalized factors with equal CP weights, where pure residual atoms are the separated angular minima and duplicate atoms fail \({\sf Sep}\); (ii) two targets with a common nonzero correlation \(\nu\) in every mode, where the second true atom passes \({\sf Sep}\) and an unprojected commit can retain correlation \(\nu\), unlike idea_5's exact complement; (iii) polynomial reciprocal rescalings \(\|\bar a_j\|=d_j\), \(\|\bar b_j\|=d_j^{-1}\), \(\|\bar c_j\|=1\), with \(d_j\in[\kappa^{-1},\kappa]\), where every \(\bar\tau_j=1\) and the weighted leakage ratio is \(O(\nu^2)\), not \(\kappa^6\nu^2\); and (iv) dense or block-correlated normalized frames with \(\|G_{\bar M}-I\|_{\rm op}\le\nu_\star\) and product weights in a fixed interval, where the displayed Cauchy--Schwarz leakage and \(r\Gamma_\star\nu^2\) accumulation bounds hold deterministically. Robust strict-saddle transfer is motivated by *Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition* and orthogonal component separation by *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use*, but neither is treated as a black-box theorem for the present objective.
- Consistency: Every added data condition is primitive and checkable before optimization. Separation, label assignment, the error ledger, transaction success, chart entry, and PL invariance remain generated conclusions. The algorithm uses only the current residual, factor inner products, gradients, Hessian-vector products, and pre-sampled randomness; it never queries a target label or true factor. In particular, committed directions are generally nonorthogonal and no exact-orthogonality invariant survives. Exact rollback controls failed probes, the structured ledger controls accepted errors, and the final unprojected joint phase removes their finite initialization error rather than leaving an accuracy floor. This setting and procedure are therefore non-vacuous and not a duplicate of ideas 1--5.
