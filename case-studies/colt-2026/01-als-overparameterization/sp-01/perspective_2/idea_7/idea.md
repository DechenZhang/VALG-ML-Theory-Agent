# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- Balanced-weight near-orthogonal source special case: retain idea_6's
  primitive pre-smoothing conditions. For
  \(\bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\), require
  \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\), where
  \(\Gamma_\star\) is an absolute constant, and require
  \[
  \nu_{\rm base}+C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
  \le \nu_\star:=\frac{1}{C_\nu r\log(2r)}.
  \]
  Individual column norms remain polynomially bounded and may have reciprocal
  modewise rescalings. On the realized good-instance event the proof must
  derive \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\) and
  \(\nu_{\rm real}\le2\nu_\star\).
- Full-space unprojected transactional discovery: retain idea_6's exact
  rollback, radial sign bracket, angular-only strict-saddle certificate, and
  observable separation gate. Scratch directions are initialized on the full
  ambient spheres and are never projected or orthogonalized against protected
  slots. Protected slots are frozen during a transaction. A failed scratch
  slot is returned exactly to joint zero; a separated certified slot is
  committed without changing its directions.
- Primitive-to-derived lifted correlation source: on the realized event set
  \[
  H_M=|G_M-I_r|\quad\hbox{entrywise},\qquad J_M=I_r+H_M,
  \]
  and put
  \(K_A=H_B\circ H_C\), \(K_B=H_A\circ H_C\), and
  \(K_C=H_A\circ H_B\). These are analysis-only objects computed from the
  realized target Grams. The existing primitive modewise operator margin,
  without any new transitivity assumption, gives
  \[
  \max_j\|H_Me_j\|_2\le\nu_{\rm real},\qquad
  \|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu_{\rm real},
  \]
  \[
  \|K_M\|_1=\|K_M\|_\infty\le\nu_{\rm real}^2.
  \tag{R-src}
  \]
  The last inequality is columnwise Cauchy--Schwarz. Thus no unsupported
  operator-norm bound on the entrywise absolute Gram is used.
- Generated transitive/resolvent direction ledger: for ordered distinct
  labels \((j,\ell)\) and a mode \(M\), use a nonnegative lifted array
  \(Z_{j,M,\ell}\), with \(Z_{j,M,j}=0\). The structural first-chain source is
  \[
  S_{j,A,\ell}=(K_AJ_A)_{j\ell},
  \tag{R-base}
  \]
  with cyclic definitions. The identity part of \(J_A\) retains the direct
  degree-two pair term, while its \(H_A\) part contains every first
  transitive term
  \(\sum_t|\gamma^B_{jt}\gamma^C_{jt}\gamma^A_{t\ell}|\).
  In particular it contains the \(h^3\) term from idea_6's three-label
  obstruction even when every direct \(j\)-\(\ell\) correlation is zero.
  Let
  \(\eta_0=C_\eta(\Gamma_\star\nu_{\rm real}^2+P^{-D_{\rm stat}})\)
  and define the lifted linear transfer
  \[
  (\mathcal T Z)_{j,A,\ell}
  =\sum_{t\ne j}J_A(t,\ell)
  \left[(H_C(j,t)+\eta_0)Z_{j,B,t}
       +(H_B(j,t)+\eta_0)Z_{j,C,t}\right],
  \tag{R-transfer}
  \]
  again cyclically. The \(\eta_0\) terms majorize the quadratic products of
  already bounded local direction errors; they are not primitive trajectory
  assumptions. From `(R-src)`,
  \[
  \|\mathcal T\|_{1\to1}
  \le2(\nu_{\rm real}+\eta_0)
       (1+\sqrt r\,\nu_{\rm real}).
  \]
  Choosing the already present absolute constant \(C_\nu\) sufficiently
  large makes
  \[
  q_{\rm res}:=C_0\Gamma_\star\|\mathcal T\|_{1\to1}\le\frac14.
  \tag{R-gap}
  \]
  For a protected state \(I\), let every accepted slot \(i\in I\) be matched
  in the analysis to \(p=\pi_I(i)\), put
  \[
  E_i=g_i^3u_i\otimes v_i\otimes w_i-\tau_p\phi_p,
  \]
  and define the actual history forcing seen near an unresolved root \(j\) by
  \[
  A_{I;j,A,\ell}={1\over\tau_j}\sum_{i\in I}
  \left|\left\langle E_i,
  m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C}\right\rangle\right|,
  \tag{R-hist-src}
  \]
  with cyclic versions. This three-label scalar is computed only in the
  analysis from already generated accepted errors. It is not replaced by
  \(\|E_i\|_F\), exposed to the algorithm, or assumed as a good-state
  condition. The statewise proof-produced envelope is the convergent Neumann
  closure
  \[
  \Theta_I=(I-C_0\Gamma_\star\mathcal T)^{-1}
          C_0\Gamma_\star
          \left(S+A_I+P^{-D_{\rm stat}}\mathbf 1\right)
  =\sum_{s\ge0}(C_0\Gamma_\star\mathcal T)^s
          C_0\Gamma_\star
          \left(S+A_I+P^{-D_{\rm stat}}\mathbf 1\right).
  \tag{R-ledger}
  \]
  A certificate matched to label \(j\) must derive
  \[
  |\langle e_{i,M},m_{\ell,M}\rangle|
  \le C_{\rm led}\bigl(\Theta_{I;j,M,\ell}+P^{-D_{\rm stat}}\bigr),
  \tag{R-dir}
  \]
  together with the unchanged Euclidean direction/radius error
  \(O(\eta_0)\). This is a generated certificate output, not a theorem
  assumption or an observable algorithm input.
- All-commit resolvent budget and accepted-tensor influence: direct expansion
  of each new \(E_i\), followed by the statewise resolvent bound, must prove
  inductively
  \[
  \|S\|_1\le
  3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real}),
  \qquad
  \|A_I\|_1\le
  C_A\Gamma_\star r\nu_{\rm real}^3
  +C_A r^2P^{-D_{\rm stat}},
  \tag{R-hist-budget}
  \]
  \[
  \|\Theta_I\|_1\le
  \frac{C_0\Gamma_\star}{1-q_{\rm res}}
  \left[3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
       +C_A\Gamma_\star r\nu_{\rm real}^3
       +C r^2P^{-D_{\rm stat}}\right].
  \tag{R-budget}
  \]
  This norm already sums over every possible captured label, tested label,
  and mode, so it is the budget for all \(r\) commits and is not multiplied
  by \(r\) a second time. For
  \(z_{j,M,\ell}=\Theta_{I;j,M,\ell}+C P^{-D_{\rm stat}}\) at the state
  where label \(j\) is captured, define the mode-\(A\) accepted-error influence
  \[
  \Xi_{j,A,\ell}=
  H_C(j,\ell)z_{j,B,\ell}
  +H_B(j,\ell)z_{j,C,\ell}
  +z_{j,B,\ell}z_{j,C,\ell}
  +\eta_0
   (H_B(j,\ell)+z_{j,B,\ell})
   (H_C(j,\ell)+z_{j,C,\ell}),
  \tag{R-infl}
  \]
  with cyclic versions. Direct expansion of an accepted rank-one tensor must
  prove
  \[
  \|E_i\mathbin{\times_2}m_{\ell,B}^\top
          \mathbin{\times_3}m_{\ell,C}^\top\|_2
  \le C\tau_j\Xi_{j,A,\ell}.
  \tag{R-tensor}
  \]
  More sharply, for a newly captured label \(p\), an unresolved root \(j\),
  and a tested label \(\ell\), put
  \[
  \begin{split}
  \Upsilon^A_{p;j,\ell}
  ={}&(1+\eta_0)
  (H_A(p,\ell)+z_{p,A,\ell})
  (H_B(p,j)+z_{p,B,j})
  (H_C(p,j)+z_{p,C,j})\\
  &-H_A(p,\ell)H_B(p,j)H_C(p,j).
  \end{split}
  \tag{R-charge}
  \]
  The exact scalar contraction of \(E_i\) must give the entrywise history
  update
  \[
  A_{I\cup\{i\};j,A,\ell}-A_{I;j,A,\ell}
  \le2\Gamma_\star\Upsilon^A_{p;j,\ell},
  \tag{R-update}
  \]
  and its cyclic analogues. Equations `(R-src)`--`(R-update)` then give,
  after choosing \(D_{\rm stat}\) so the numerical terms are subordinate,
  \[
  \|A_I\|_1+
  \sum_{p\ne\ell}\sum_M\Xi_{p,M,\ell}
  \le C\Gamma_\star r\nu_{\rm real}^3.
  \tag{R-acc}
  \]
  Since \(r\nu_{\rm real}=O(1/\log r)\), the complete accepted-error forcing
  in `(R-acc)` is smaller than the static
  \(\nu_{\rm real}^2\) angular-leakage scale. This is the explicit
  accumulation-compatible replacement for idea_6's false pair-local
  `(Led-2)` and its downstream `(Led-4)`.
- Target-compatible terminal refinement: after \(r\) separated commits,
  unfreeze those slots and run joint unprojected balanced trust-region Armijo
  gradient descent on the exact objective. The Euclidean \(O(\eta_0)\)
  matching ledger and `(R-acc)` must put the actual, generally nonorthogonal
  committed tuple in a same-target balanced PL chart. The terminal phase has
  no projection, refresh, rollback defect, or fixed tolerance, so the exact
  representation and arbitrary-accuracy baseline are unchanged.

## Setting

- Context: Fix deterministic
  \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) with nonzero column norms
  in \([\kappa^{-1},\kappa]\), where \(\kappa\le r^{c_0}\). Let
  \(G_{\bar M}\) be each normalized column Gram and set
  \(\nu_{\rm base}=\max_M\|G_{\bar M}-I_r\|_{\rm op}\). Require
  \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\),
  \(n\ge C_{\rm dim}r\log(2r)\), \(\rho^{-1}\le r^{c_\rho}\), and the
  displayed \(\nu_\star\) smoothing margin. This is the same balanced-weight,
  modewise-near-orthogonal source special case as idea_6; no correlation-graph
  transitivity, path-envelope, or resolvent bound is added as a primitive
  condition.
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
- Data: The once-drawn event must derive nonzero realized columns,
  \(\nu_{\rm real}\le2\nu_\star\),
  \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\), polynomial two-sided target
  norm bounds, well-conditioned pair/triple Khatri--Rao Grams, the exact
  balanced \(r\)-slot representation of \(T\), and `(R-src)`--`(R-gap)`.
  The event must have probability at least \(1-r^{-10}\) uniformly over every
  deterministic base triple in the stated class. The resolvent envelope,
  certificate matching, accepted-error influence, and all-commit budget remain
  derived trajectory-analysis outputs.
- Algorithm: Let
  \(P=16nrk\kappa\rho^{-1}\), \(R_{\max}=8\kappa\), and seed one scratch
  slot at radius
  \(\delta=(\|T\|_FP^{-120})^{1/3}\) with three independent full-space Haar
  directions; flip one mode if needed to make its current residual score
  nonnegative. Hold protected and unused slots fixed. For the actual residual
  \(R_I\), use the exact one-slot loss
  \[
  f_I(g,u,v,w)=\frac12\|R_I-g^3u\otimes v\otimes w\|_F^2,
  \qquad s_I=\langle R_I,u\otimes v\otimes w\rangle.
  \]
  Unprojected trust-region Armijo radial steps bracket and solve
  \(g^3=s_I\) to inverse-polynomial relative tolerance. Unprojected
  Riemannian angular gradient steps re-solve the bracket after each move. At
  a small-gradient state with a sufficiently negative angular-Hessian
  direction, compare the two signed trust-region trials and accept the lower
  exact loss. Certify only when radial and normalized angular errors are at
  most \(P^{-D_{\rm stat}}\), the normalized angular Hessian has the required
  positive gap, capture is at least
  \(\|R_I\|_F^2P^{-D_{\rm cap}}\), and the observable separation statistic is
  at most \(1/4\). Roll back every failure exactly and commit every separated
  certificate without altering its directions. After \(r\) commits, set
  unused slots to joint zero and run joint unprojected balanced trust-region
  Armijo gradient descent on the committed slots.
- Regime: Set
  \(k=U(r)=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\), so
  \(r<k=o(r^2)\) with \(\beta=1/2\). Pre-sample a polynomial tape of full
  Haar seeds. The proof target is a uniform conditional transaction success
  probability \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\), amplified with
  \(N_{\rm tx}=O(r(nr)^{c_{\rm tx}}\log(2r))\) transactions. Discovery work
  is polynomial in \(n,r,\kappa,\rho^{-1}\) and independent of \(\epsilon\);
  terminal work is
  \(\operatorname{poly}(n,r,\kappa,\rho^{-1})\log(1/\epsilon)\).

## Goal

- Theorem type: Material-partial resolvent-ledger separation-gated
  unprojected reachable-landscape and trajectory theorem for balanced-weight
  modewise-near-orthogonal smoothed tensors.
- Informal statement: Prove the once-drawn good-instance event with
  probability at least \(1-r^{-10}\). On each good instance, derive
  `(R-src)`--`(R-gap)` from the primitive Gram and weight conditions and prove
  the resolvent envelope `(R-ledger)` rather than assuming it. Starting from
  the empty ledger, prove that every separated certificate reached by the
  full-space radial/angular transaction has a unique unresolved target label,
  has \(O(\eta_0)\) Euclidean direction/radius error, satisfies `(R-dir)`,
  and extends the generated injection. Prove `(R-tensor)` and `(R-acc)` so the
  complete prior-commit forcing remains below the static angular-isolation
  margin at every later transaction. Conditional on each previously derived
  protected state, establish transaction success probability at least
  \((nr)^{-c_{\rm tx}}\), then use the finite independent tape and exact
  rollback to obtain all \(r\) distinct commits with conditional tape
  probability at least \(1-r^{-10}\). Finally prove same-target balanced-PL
  entry and invariant terminal descent, yielding for every
  \(0<\epsilon<1\)
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F
  \]
  in \(\operatorname{poly}(n,r,\log(1/\epsilon))\) total time. Keep the
  instance and conditional tape probabilities at least \(1-r^{-10}\)
  separately. The theorem remains limited to the balanced-weight
  near-orthogonal class; arbitrary bases, unbalanced CP weights, and
  simultaneous all-slot GD remain open.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Beyond Lazy Training for Over-parameterized Tensor Decomposition
- Transfer map: preserves the asymmetric source loss, Gaussian smoothing, balanced full-space transactions, exact rollback, separation, radial/angular certification, random-tape accounting, and no-floor terminal refinement from idea_6; changes only the false direct-pair error ledger to a lifted Gram-derived Neumann ledger and reuses Cauchy--Schwarz, perturbative stationarity, and local balanced-PL patterns.
- Source alignment: Preserves the exact asymmetric CP least-squares objective, independent source Gaussian smoothing, random initialization with polynomial tape amplification, \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), polynomial runtime, separate instance/tape probabilities, and arbitrary relative Frobenius accuracy. The target-changing narrowing remains exactly the modewise-near-orthogonal and balanced-product-weight base class already exposed in idea_6; arbitrary bases and unbalanced weights remain open. The new resolvent is a derived analysis object and does not narrow the source population further.
- Progress type: material_partial
- Materiality: The branch crosses the quadratic rank threshold on the same nontrivial smoothed asymmetric class as idea_6 while repairing its first-certificate counterexample at the correct structural scale. It accounts for every correlation chain and all accepted commits without projecting away true correlations, imposing a transitivity axiom, or leaving a terminal accuracy floor.
- Significance: The lifted index retains both the captured label and the label against which its error is tested, so direct, transitive, and longer paths are charged to their actual endpoints. The global \(\ell_1\) estimate budgets all commits at once; it avoids both the false pair-local zero in idea_6 and a global Frobenius bound that would discard the modewise contractions needed by the next residual.
- Feasibility: Gaussian norm/Gram transfer, balanced re-gauging, exact radial bracketing, Armijo backtracking, and local PL refinement are standard or literature-derived. The resolvent ledger is a novel example-verified mechanism built only from elementary Cauchy--Schwarz, tensor contraction expansion, and a Neumann series under the primitive Gram margin. It passes four branch-specific checks: (i) for orthogonal equal-weight factors, every \(H_M\) and every structural part of \(S\), \(\Theta_I\), \(A_I\), and \(\Xi\) vanishes, leaving only the displayed numerical certificate tolerance; (ii) on idea_6's three-label family, `(R-base)` gives \(S_{1,A,3}=h^3\), so the exact obstructing error is charged even though the direct pair weight is zero; (iii) on a longer sparse correlation chain, successive terms of `(R-ledger)` add the next rooted two-edge transfer and the total is bounded geometrically by \(1/(1-q_{\rm res})\); and (iv) for dense or block-correlated frames with \(\|G_M-I\|_{\rm op}\le\nu_{\rm real}\), `(R-src)` and `(R-budget)` follow from row/column \(\ell_2\) bounds without assuming \(\||G_M-I|\|_{\rm op}\le\nu_{\rm real}\). Polynomial reciprocal mode rescalings leave these normalized kernels unchanged and are handled by the existing product-weight ratio. Robust angular classification remains a proof obligation motivated, but not supplied as a black box, by *Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition* and *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use*.
- Consistency: Every data condition remains primitive and checkable before optimization. The realized absolute-Gram kernels are derived from the once-drawn instance; the resolvent, label assignment, ledger, transaction success, chart entry, and PL invariance are generated conclusions. The transfer contraction uses only \(\ell_1\) row/column consequences of the existing operator margin, and `(R-budget)` already includes all \(r\) roots, so neither a hidden \(\sqrt r\) operator upgrade nor an extra \(r\)-fold accumulation is assumed. Exact rollback handles failed probes, `(R-acc)` handles accepted errors, and terminal unprojected descent removes the finite initialization error. This is non-vacuous and nonduplicate: ideas 1--5 changed coordinates, refresh, projection, or certificate objects, while idea_6 used the contradicted direct-pair ledger that this branch replaces.
