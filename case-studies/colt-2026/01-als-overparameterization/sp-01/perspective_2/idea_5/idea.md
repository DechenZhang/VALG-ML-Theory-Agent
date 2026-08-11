# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- Modewise-near-orthogonal source special case: require the normalized columns of each deterministic base factor matrix to satisfy
  \(\max_M\|G_{\bar M}-I\|_{\mathrm{op}}\le [200r\log(2r)]^{-1}\), with nonzero column norms in \([\kappa^{-1},\kappa]\), \(\kappa\le r^{c_0}\), and a Gaussian smoothing margin that transfers this bound to the realized factors. This is a source-mentioned orthogonal/incoherent special case and is explicitly not a theorem for arbitrary or merely well-conditioned bases.
- Transactional sequential probes: keep the protected slots fixed and activate one fresh balanced scratch triple at a time in the complements of the protected directions. A probe is a speculative gradient-descent transaction: on failure its scratch tensor is rolled back exactly to joint zero before the next independent tape draw, so failed probes leave no persistent forcing or cap/slack defect. A successful probe is committed and protected. This removes both the simultaneous all-candidate comparison and the equality-only probationary parking contract.
- Radial sign-bracket globalization: for a fixed probe direction \(q=(g u,g v,g w)\), let \(R_I\) be the residual before the scratch slot and \(s_I(u,v,w)=\langle R_I,u\otimes v\otimes w\rangle\). The radial derivative has the exact sign of \(s_I-g^3\). During small-radius growth the protocol uses only this observable radial sign, a guarded trust-region Armijo step, and a fixed radius guard; it never asks for positive curvature of the full balanced tangent. When the sign changes, an observable one-dimensional Armijo/bisection bracket locates a target-scale radius with \(|s_I-g^3|\) inverse-polynomially small. A probe that reaches the guard without a sign change is rolled back.
- Angular strict-saddle certificate: only after the radial bracket is found, optimize the three unit directions and test the Riemannian angular gradient, the three contraction residuals, and the Hessian of the exact loss restricted to the product-of-spheres tangent (the radial direction is omitted). If the restricted Hessian has a negative eigenvalue, take a bounded negative-curvature angular step and continue; if it is positive with an inverse-polynomial gap and the observable tests pass, certify the probe. The certificate therefore accepts target-scale angular minima while allowing the adverse radial curvature that necessarily drives activation.
- Probe-local success object: promotion exports the observable rank-one probe tensor and its residual-capture amount
  \(\Delta F_I=F_I(0)-F_I(q)\), not a coefficient vector obtained by applying \(G^{-1}\Phi^*\) to the full unresolved residual. The proof must derive an angular-isolation lemma: every accepted probe has a unique unresolved target label \(j_\star\) in the analysis and its probe response
  \(\tau_j\prod_M\langle u_M,\widetilde m_{M,j}\rangle\) has off-channel \(\ell_2\) mass at most \(C(\zeta_{\rm ang}+\mu_{\rm real})\) times the selected response. This response is probe-dependent and is asserted only at a certified state, never at the empty protected state. The same lemma supplies protected-span projection and duplicate exclusion.
- Finite tape amplification: use \(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\) available slots, one scratch slot per transaction, and independent pre-sampled Haar tape blocks. A per-probe angular-certificate probability \(p_{\rm ang}\ge(nr)^{-c_{\rm ang}}\) is amplified by a displayed polynomial number of transactions; instance and initialization probabilities remain separate.

## Setting

- Context: Fix \(n,r,\kappa\) and deterministic \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) with nonzero column norms in \([\kappa^{-1},\kappa]\), \(\kappa\le r^{c_0}\), \(n\ge C r\log(2r)\), and
  \[
  \max_{M\in\{\bar A,\bar B,\bar C\}}
  \|G_{\bar M}-I_r\|_{\rm op}\le [200r\log(2r)]^{-1},
  \qquad
  C\rho\sqrt{\log(2r)}+[200r\log(2r)]^{-1}
  \le [100r\log(2r)]^{-1}.
  \]
  Here \(G_{\bar M}\) is the normalized column Gram. This is one coherent modewise-incoherent contract, not a disjunction with the cyclic-Khatri--Rao-only branches.
- Model: Draw the realized columns independently as \(a_j-\bar a_j,b_j-\bar b_j,c_j-\bar c_j\sim {\cal N}(0,\rho^2I_n/n)\), set \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\), and optimize the exact unnormalized source loss
  \[
  F(X,Y,Z)=\frac12\left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]
  Every nonzero scratch or protected triple is tensor-preservingly balanced to a common radius \(g_i\), and a partial-zero triple is mapped to joint zero. On the derived good-instance event, the realized modewise Grams, pair/triple Khatri--Rao Grams, column norms, and the balanced true \(r\)-component representation obey inverse-polynomial perturbation bounds; the true radii lie below \(R_{\max}=8\kappa\).
- Data: The instance is drawn once. The theorem must derive, with probability at least \(1-r^{-10}\) over this draw, nonvanishing of \(T\), two-sided target norm and weight bounds, the realized near-orthogonality margins, and exact zero-residual representability. No target factor, target label, or target-scale radius is supplied to the algorithm. The modewise base restriction is the sole deliberate source-scope narrowing and is reported as material partial progress.
- Algorithm: Set \(P=16nrk\kappa\rho^{-1}\), \(a_{\rm seed}=\|T\|_F P^{-120}\), and initialize one fresh scratch triple at radius \(\delta=a_{\rm seed}^{1/3}\) with independent Haar directions in the orthogonal complements of the currently protected spans. Protected slots and all nonactive scratch slots are frozen. For a transaction with protected index set \(I\), write
  \[
  R_I=T-\sum_{i\in I}x_i\otimes y_i\otimes z_i,
  \quad
  f_I(g,u,v,w)=\frac12\|R_I-g^3u\otimes v\otimes w\|_F^2,
  \quad
  s_I=\langle R_I,u\otimes v\otimes w\rangle.
  \]
  Run projected balanced gradient descent with trust-region Armijo backtracking on this one scratch triple. A trial radius is guarded by \(2R_{\max}\), and the measured displacement cap and local Lipschitz bound determine an explicit inverse-polynomial accepted-step lower bound. While \(d_I=s_I-g^3>0\), the protocol follows the radial growth direction without any full-tangent Hessian test. It records the first pair of iterates with opposite signs of \(d_I\), and applies observable dyadic bisection/Armijo radial steps until
  \[
  |d_I|\le P^{-D_{\rm rad}}\max\{s_I,g^3,\|R_I\|_F P^{-D_{\rm rad}}\}
  \]
  for one fixed sufficiently large integer \(D_{\rm rad}\). If no sign change occurs before the guard or the probe leaves the compact box, the transaction is rolled back exactly to the protected state and the next tape probe is used.

  At a radial-bracket state, take Riemannian angular gradient steps on \((u,v,w)\in(\mathbb S^{n-1})^3\), re-solving the scalar radial bracket after each accepted angular step. Define the angular contraction residuals from \(h_A=R_I\mathbin{\times_2}v^\top\mathbin{\times_3}w^\top\) and its cyclic analogues, and let \(H_{\rm ang}\) be the Hessian of \(f_I\) restricted to tangent vectors orthogonal to \(u,v,w\) separately, normalized by \(1+\|R_I\|_F+g^4\). If \(\lambda_{\min}(H_{\rm ang})<-P^{-D_{\rm ang}}\), follow an approximate negative angular eigenvector for a bounded step and re-bracket radially. Declare \({\sf Cert}_{\rm ang}(q)\) only when the angular gradient is at most \(P^{-D_{\rm ang}}\), all three normalized contraction residuals are at most \(\zeta_{\rm ang}=8[100r\log(2r)]^{-1}\), the signs are compatible, the angular Hessian has minimum eigenvalue at least \(P^{-D_{\rm ang}}\), and the radial-capture score satisfies
  \[
  \Delta F_I(q)=f_I(0)-f_I(q)\ge \|R_I\|_F^2P^{-D_{\rm cap}}.
  \]
  No radial eigenvalue is included in this certificate. Hessian-vector products and the angular negative-curvature step are computed from current residuals and factors only; no target labels or true factors are queried.

  On a successful certificate, commit the scratch tensor, add its three normalized directions to the protected spans, and continue with the next transaction. On failure, erase only the scratch triple, so the protected residual is exactly unchanged. The proof must show from the certificate and the realized Gram margin that there is a unique unresolved target \(j_\star\) whose directions are within \(C(\zeta_{\rm ang}+\mu_{\rm real})\), that the probe-response off-channel mass obeys the displayed bound in Added Dimensions, and that projecting future probes onto the protected complements loses each unresolved target by at most the same perturbation. After \(r\) commits, remove the temporary projections, prune unused slots, and run unprojected balanced trust-region Armijo gradient descent on the committed slots only. This terminal phase has no refresh or fixed error floor.
- Regime: Use \(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil=o(r^2)\). The per-transaction certificate probability is required to be at least \(p_{\rm ang}\ge(nr)^{-c_{\rm ang}}\) conditional on the current protected residual and good instance. Pre-sample
  \(N_{\rm tx}\ge 8r(nr)^{c_{\rm ang}}\log(2r)\) independent tape probes, or equivalently use polynomial-cost fixed-input restarts, so that all \(r\) commits occur with probability at least \(1-r^{-10}\). Probe work and angular eigenvalue tests are polynomial in \(n,r,\rho^{-1},\kappa\) and independent of \(\epsilon\); the post-commit refinement costs an additional polynomial factor times \(\log(1/\epsilon)\).

## Goal

- Theorem type: Material-partial target-scale angular-certified reachable-landscape and trajectory theorem for the modewise-near-orthogonal source special case.
- Informal statement: Uniformly over deterministic bases satisfying the displayed modewise incoherence, conditioning, dimension, and smoothing-margin assumptions, prove a once-drawn good-instance event of probability at least \(1-r^{-10}\). Conditional on that event, prove a per-transaction probability at least \((nr)^{-c_{\rm ang}}\) of reaching an observable radial sign bracket and an angular strict local minimum, and amplify independent transactions to obtain \(r\) committed probes with probability at least \(1-r^{-10}\) and polynomial total work. The theorem-facing success object is the committed probe tensor together with its observable residual-capture decrease; it does not assert purity of \(G^{-1}\Phi^*R_I\) or any other full unresolved coefficient vector. Instead, establish a probe-dependent angular-isolation lemma: every certified probe has one unresolved target direction, bounded off-channel probe response, and stable protected-span projection. After the final commit, derive a same-target balanced PL chart and prove
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le \epsilon\|T\|_F
  \]
  for every \(0<\epsilon<1\) in \({\rm poly}(n,r,\log(1/\epsilon))\) time. The result is explicitly partial: arbitrary bases, merely well-conditioned non-orthogonal bases without the angular margin, and a simultaneous all-slot gradient protocol remain open. Exact balanced representation and the no-floor arbitrary-accuracy baseline are retained.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Beyond Lazy Training for Over-parameterized Tensor Decomposition
- Transfer map: preserves the first paper's asymmetric CP least-squares, Gaussian-smoothed-instance, relative-error, rank/probability, and runtime interfaces and the second paper's homogeneous balancing and small-start dynamics; changes persistent probationary promotion to transactional one-probe restarts, replaces the full-tangent curvature test by a radial sign bracket plus an angular strict-saddle test, and reuses a probe-local capture/isolation output rather than a full-residual coefficient bridge.
- Source alignment: Preserves the exact source objective, independent Gaussian smoothing, random initialization with explicit polynomial restart amplification, \(k=O(r^{3/2}\log^2 r)=o(r^2)\), polynomial runtime, separate instance and initialization probabilities, and arbitrary relative Frobenius accuracy. The modewise-near-orthogonal bases are a source-mentioned special case and the remaining arbitrary-base gap is stated rather than hidden.
- Progress type: material_partial
- Materiality: This gives a nontrivial subquadratic gradient protocol for a source-relevant smoothed class while directly repairing the two idea-level contradictions: the first success object is a residual-capture rank-one probe whose target response depends on the current directions, and radial growth is allowed to have negative full curvature. It attacks progressive feature discovery instead of recreating the known quadratic Khatri--Rao span certificate.
- Significance: Exact rollback makes every failed trial independent and prevents cap-slack, reset-forcing, and all-candidate winner obstructions. The radial sign change is an observable target-scale detector, and the angular saddle signature separates mixed support states from pure channels without requiring a false positive full Hessian. Sequential protected complements then provide a noncircular diversity mechanism.
- Feasibility: Static Gaussian concentration, modewise Gram transfer, balanced re-gauging, Armijo backtracking, and local PL refinement are standard or inherited from the two parent papers. The radial scalar identity is exact. Angular strict-saddle separation is supported by *Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition* (COLT 2015) and the correlation-growth/orthogonalization analysis of *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use* (ICML 2017), adapted to the current asymmetric loss. The new certificate and probe-local isolation lemma are example-verified in several branch-specific regimes: (i) for \(r=1\), the radial bracket is exactly \(g^3=\tau_1\), the angular Hessian is positive, and the capture is nonzero; (ii) for an orthogonal equal-weight tensor, every mixed two-channel stationary probe has an explicit negative angular direction while a pure channel passes the angular test even though its radial curvature is negative below target scale; (iii) for two orthogonal modes with a polynomially conditioned third mode and for dense modewise-\(\mu\)-incoherent frames, Davis--Kahan/Gram perturbation transfers the angular gap and the probe-response bound with \(O(\mu_{\rm real})\) loss; and (iv) in the large-\(n\) stress case, the measured trust-region displacement, not an unstated power of \(P\), supplies the accepted-step bound. These checks support the mechanism without assuming a generated basin, purity event, or convergence conclusion.
- Consistency: The algorithm uses only current residual contractions, factor norms, angular Hessian-vector products, protected projections, and pre-sampled randomness; it never queries target labels or true factors and does not use an algebraic initializer. A certificate is only evaluated after an observed radial sign change, so the empty protected state cannot be assigned the full unresolved coefficient vector. Failed transactions restore the exact protected state, while successful probe-local isolation gives the inductive target assignment and projection stability. The exact true decomposition remains available inside the radius box, and the terminal protected-only phase can refine to arbitrary \(\epsilon\) with no floor. This is distinct from idea_4 because its theorem contract, certificate operator, and success object all change, while the source model, metric, rank regime, and baseline remain fixed.
