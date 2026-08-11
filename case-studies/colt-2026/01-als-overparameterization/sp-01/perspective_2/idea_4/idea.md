# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- Modewise-near-orthogonal source special case: require the normalized columns of each deterministic base factor matrix to have operator-norm Gram deviation at most
  \(\mu_{\rm base}\le [200r\log(2r)]^{-1}\), while retaining polynomial column conditioning and the source Gaussian perturbations. The theorem is explicitly a source-mentioned orthogonal/incoherent special case, not a claim for arbitrary well-conditioned bases.
- Sequential single-probe protocol: keep all nonprotected slots jointly zero and frozen. Activate exactly one fresh Haar triple at a time in the modewise orthogonal complements of the already protected directions, run balanced projected gradient descent on the exact source loss, and either certify that probe or discard it before the next probe. There is no simultaneous probationary update and hence no asserted clear-only maturation interval.
- Observable norm-purity certificate: replace raw largest-score promotion by the first probe satisfying three modewise residual-contraction alignment tests, compatible signs, a positive score margin, and a positive smallest eigenvalue of the balanced one-slot tangent Hessian. The certificate uses only the current residual, factors, and protected projections. A deterministic near-orthogonal certificate lemma must derive one-target norm purity from it; purity is not placed in the success event as an assumption.
- Trust-region Armijo globalization: choose each dyadic step from an explicitly computed local Jacobian/Lipschitz bound and an observable displacement cap. The accepted-step lower bound is the minimum of these displayed polynomial quantities; no \(P^8\)-versus-\(\eta\) scale implication is used.
- Finite probe/restart event: use \(k=\lceil C_{\rm rank}r^{3/2}(\log r)^2\rceil\) slots as protected storage plus scratch probes, and pre-sample polynomially many independent tape blocks for restart amplification. The probability statement is a per-probe certificate event followed by a conditional union/coupon-collector bound, rather than an all-candidate winner exclusion.

## Setting

- Context: Fix \(n,r,\kappa\) and deterministic \(\bar A,\bar B,\bar C\in{\mathbb R}^{n\times r}\) with nonzero column norms in \([\kappa^{-1},\kappa]\), \(\kappa\le r^{c_0}\), \(n\ge C r\log(2r)\), and
  \[
  \max_{M\in\{\bar A,\bar B,\bar C\}}\|G_{\bar M}-I_r\|_{\rm op}\le\mu_{\rm base},\qquad
  \mu_{\rm base}+C\rho\sqrt{\log(2r)}\le[100r\log(2r)]^{-1}.
  \]
  This is the single modewise-incoherent branch contract; it is not a disjunction with the earlier cyclic-Khatri--Rao-only contract.
- Model: Draw the three factor matrices by the source independent Gaussian smoothing, \(a_j-\bar a_j,b_j-\bar b_j,c_j-\bar c_j\sim{\cal N}(0,\rho^2I_n/n)\), and set \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\). Optimize the unnormalized objective
  \[
  F(X,Y,Z)=\tfrac12\left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]
  Every nonzero triple is tensor-preservingly balanced to a common radius \(g_i\); a partial-zero triple is mapped to joint zero. On the derived good-instance event, the realized modewise Grams, cyclic Khatri--Rao Gram, column norms, and the exact balanced \(r\)-component representation satisfy the corresponding \(O([r\log r]^{-1})\) perturbation bounds.
- Data: The instance is drawn once. The theorem must derive the good geometry event with probability at least \(1-r^{-10}\), including \(T\ne0\), two-sided target norm control, and an exact representation inside \(R_{\max}=8\kappa\). No target factor or target label is supplied to the algorithm. The modewise-incoherence condition is the only deliberate source-scope narrowing and is recorded as partial progress.
- Algorithm: Let \(P=16nrk\kappa\rho^{-1}\), \(a_{\rm seed}=\|T\|_F P^{-120}\), and \(a_{\rm cert}=\|T\|_F P^{-D_{\rm cert}}\), where \(D_{\rm cert}\) is one fixed integer chosen larger than the polynomial probe/restart exponent in the certificate lemma. Set \(\delta=a_{\rm seed}^{1/3}\) and \(\theta=a_{\rm cert}^{1/3}\). Maintain a protected set and modewise spans of its normalized factors. At a probe, all scratch slots are joint zero; one fresh independent Haar triple is initialized at radius \(\delta\), projected into the three complements of the protected spans, and is the only variable updated. Protected factors and all other scratch slots are frozen.

  For the active triple \(q=(g u,g v,g w)\), use the residual \(R_e\) after the protected contribution and define
  \[
  h_A=R_e\mathbin{\times_2}v^\top\mathbin{\times_3}w^\top,\quad
  h_B=R_e\mathbin{\times_1}u^\top\mathbin{\times_3}w^\top,\quad
  h_C=R_e\mathbin{\times_1}u^\top\mathbin{\times_2}v^\top.
  \]
  The observable certificate \({\sf Cert}(q)\) requires \(g\in[\theta,2\theta]\), a sign-consistent nonzero margin for each \(\alpha_A=\langle h_A,u\rangle,\alpha_B=\langle h_B,v\rangle,\alpha_C=\langle h_C,w\rangle\),
  \[
  \zeta(q):=\max_{M\in\{A,B,C\}}
  \frac{\|(I-u_Mu_M^\top)h_M\|_2}{|\alpha_M|}
  \le\zeta_{\rm cert},\qquad
  \zeta_{\rm cert}:=8[100r\log(2r)]^{-1}.
  \]
  Let \(\widehat H_{\rm tan}\) be the balanced tangent Hessian normalized by
  \(1+\|R_e\|_F+g^4\); require
  \(\lambda_{\min}(\widehat H_{\rm tan}(q))\ge\gamma_{\rm cert}:=P^{-20}\).
  Finally require the sign-oriented score
  \(\langle R_e,u\otimes v\otimes w\rangle\ge
  \sigma_{\rm cert}:=\|T\|_F P^{-40}\).
  The Hessian and score tests are used only after the three norm-level
  contraction tests; no candidate is compared with every other candidate.

  Each update is the projected balanced gradient step
  \[
  q^+={\cal B}\!\left(q-\lambda
  (\Pi_A\nabla_xF,\Pi_B\nabla_yF,\Pi_C\nabla_zF)\right),
  \]
  with \(\Pi_M\) the current protected-span complement. Backtracking accepts only the standard Armijo decrease and a measured displacement at most \(\Delta_{\rm tr}=P^{-20}\min\{1,\theta\}\). The trial ceiling is
  \[
  \min\{(8L_{\rm loc})^{-1},
  \Delta_{\rm tr}/(2\|\nabla_{\rm proj}F\|_F+2)\},
  \]
  with \(L_{\rm loc}\) and a guarded gradient bound \(G_{\rm box}\) computed from the current residual and factor-radius box. Thus the proof exports the explicit lower bound
  \[
  \min\{(16L_{\rm box})^{-1},\Delta_{\rm tr}/(4G_{\rm box})\}
  \]
  and never invokes \(2\eta P^8\le1/8\).

  When \({\sf Cert}(q)\) first holds, promote that slot and add its three directions to the protected spans; future probes are drawn in the updated complements. If the certificate has not held by the polynomial probe horizon \(H_{\rm probe}\), keep the active radius below \(2\theta\), set the slot jointly to zero, charge its \(O(a_{\rm cert})\) tensor change to the displayed finite reserve
  \[
  B_{\rm probe}\le C_{\rm probe}N_{\rm probe}a_{\rm cert},
  \qquad
  N_{\rm probe}\le C_{\rm probe}r\log(2r)
  \]
  per tape block, and consume the next independent tape triple. After \(r\) certified promotions, remove the temporary projections, prune unused slots, and run unprojected balanced trust-region Armijo gradient descent on the protected factors only. The final phase has no refresh or forcing and uses the generated local PL chart.
- Regime: Set \(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\), so \(k=o(r^2)\). The proof target is a conditional per-block certificate probability \(p_{\rm cert}\ge(nr)^{-c_{\rm cert}}\) for a fixed exponent \(c_{\rm cert}\). Pre-sample
  \(N_{\rm rst}=\lceil 8(nr)^{c_{\rm cert}}\log(2r)\rceil\)
  independent tape blocks, each with at most \(C_{\rm probe}r\log(2r)\) sequential probes. Thus \(D_{\rm cert}\) can be fixed so that the total reserve \(N_{\rm rst}B_{\rm probe}\) is still inverse-polynomial. All probes, contractions, Hessian certificates, and projected gradient steps are polynomial in \(n,r,\rho^{-1},\kappa\) and independent of \(\epsilon\). The post-certification phase uses an additional polynomial factor times \(\log(1/\epsilon)\) steps. The rank bound is unchanged from the preceding P2 branch; the changed resource is sequential probe time and an explicit restart budget.

## Goal

- Theorem type: Material-partial sequential certified reachable-landscape and trajectory theorem for the modewise-near-orthogonal source special case.
- Informal statement: Uniformly over deterministic bases satisfying the displayed modewise incoherence, conditioning, dimension, and smoothing-margin conditions, prove a once-drawn good-instance event of probability at least \(1-r^{-10}\). Conditional on that event, prove a per-tape-block certificate probability at least \((nr)^{-c_{\rm cert}}\), and use the displayed \(N_{\rm rst}\) independent blocks to obtain \(r\) certified promotions with probability at least \(1-r^{-10}\) and polynomial total restart cost. The proof must establish, rather than assume, that each accepted certificate identifies a unique unresolved target in norm (the off-channel coefficient l2 mass is at most \(C(\zeta_{\rm cert}+\mu_{\rm real})\) times the target coefficient), that protected-span projection preserves every unresolved channel up to the same perturbation, and that the sequential Lyapunov/probe reserve remains polynomial. No clear-only interval or global-largest-score event is asserted. After the last promotion, derive a same-target balanced PL chart and prove
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F
  \]
  in \({\rm poly}(n,r,\log(1/\epsilon))\) time for every \(0<\epsilon<1\). The result is explicitly partial: the arbitrary and merely well-conditioned non-orthogonal base classes, and a simultaneous all-slot GD protocol, remain open.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Beyond Lazy Training for Over-parameterized Tensor Decomposition
- Transfer map: preserves the first paper's asymmetric CP least-squares, smoothed-instance, relative-error, and probability interfaces and the second paper's homogeneous balancing and small-start dynamics; changes simultaneous refresh/promotion to sequential projected probes with an observable contraction/Hessian certificate and replaces the fixed eta-scale claim by a trust-region line-search calculation.
- Source alignment: Preserves the exact source objective, Gaussian smoothing, random initialization, explicit restart amplification, \(k=O(r^{3/2}\log^2r)=o(r^2)\), polynomial runtime, and arbitrary relative Frobenius accuracy. The modewise-near-orthogonal base restriction is a source-mentioned orthogonal/incoherent special case and is labeled explicitly; the remaining arbitrary-base gap is not hidden.
- Progress type: material_partial
- Materiality: This is a nontrivial subquadratic end-to-end gradient protocol for a smoothed asymmetric CP least-squares special case. It replaces the unproduced global winner by a checkable local certificate and supplies a concrete route from certificate to norm-level target purity, so it advances the missing dynamic feature-discovery mechanism rather than merely restating an orthogonal algebraic initializer.
- Significance: Freezing every inactive slot makes the fresh-probe law exact and removes the impossible clear-only timing comparison. Accepting the first certified probe avoids the false all-candidate exclusion. The three separate contraction norms and restricted Hessian reject opposite-sign mixed states that pass a signed aggregate score. The measured trust-region displacement and local Lipschitz bound repair the large-\(n\) eta obstruction without weakening the exact final target.
- Feasibility: Gaussian perturbation and modewise Gram transfer are standard smoothed-analysis consequences; balanced CP re-gauging, projected Armijo descent, and trust-region backtracking are standard optimization operations. Strict-saddle separation for orthogonal tensor factors is supported by *Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition* (COLT 2015), and random orthogonalized component separation by *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use* (ICML 2017). The sequential certificate lemma is novel but is directly checkable in several branch regimes: for \(r=1\), all three contractions and the balanced tangent Hessian certify the unique target; for orthogonal equal-weight tensors, a mixed two-channel state has a negative tangent direction even when its signed score cancels, while a pure channel passes all tests; for a modewise-\(\mu_{\rm real}\)-incoherent Gaussian perturbation, Davis--Kahan/Gram perturbation transfers the certificate with \(O(\mu_{\rm real})\) loss; and for a large-\(n\) fixed-radius stress test, the trust-region rule enforces the displacement bound from the measured gradient rather than an invalid power of \(P\). The per-probe success probability and restart count are exposed polynomial quantities to be proved from these same anti-concentration and strict-saddle calculations, not assumed trajectory events.
- Consistency: The branch uses only current factors, residual contractions, protected spans, and pre-sampled randomness; it never queries true factors or performs simultaneous diagonalization. The contraction/Hessian test is a stopping certificate, not a primitive purity or basin assumption, and its deterministic implication is a stated proof obligation. Failed probes are discarded at a small cap with a finite, explicit reserve, while successful factors are protected and projected-out channels are stable by the near-orthogonal Gram bound. After all promotions the projections are removed, the exact balanced representation remains available inside the cap, and the no-floor protected refinement preserves the exact-zero baseline. The setting and goal are therefore coherent, non-vacuous, and distinct from idea_3's clear-only, raw-winner, signed-potential, and fixed-eta contract.
