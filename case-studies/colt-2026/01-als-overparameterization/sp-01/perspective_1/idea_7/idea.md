# Idea

## Perspective Anchor

- Tuple: `(analysis_target: global_convergence, model_class: third_order_asymmetric_cp_least_squares, data_assumption: gaussian_smoothed_factors, regime: strictly_subquadratic_overparameterization, algorithm: parallel_als)`

## Added Dimensions

- Active-refinement procedure: synchronized-landing SC-JEP-ALS (SL-SC-JEP-ALS). After the certified representatives are balanced by their observable best scalars, freeze that one active rank-\(r\) seed, compute the three exact Jacobi least-squares block solutions from the same frozen seed, and commit all three together. Only after this landing commit does the algorithm start the retained cyclic CP-ALS refinement.
- Landing certificate interface: all three frozen designs must be certified from the already produced seed bounds before any landing solve. In the proof-only oriented chart these raw bounds are
  \[
  \max_M\bigl(\|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1}\bigr)\le48\omega,
  \qquad \max_{M,j}\|N_M^0(:,j)\|_2\le\tau_r,
  \qquad \|s^0\|_\infty\le128\omega,
  \]
  where \(\omega=q_*^2+r\tau_r\) and \(\tau_r=q_*^2/(10^4r)\). These are derived outputs of the unchanged certification/selection bridge, not new assumptions. They must imply the normalized pair-Gram floors, the actual positive exponential-scale congruences, the ordinary-inverse reserves, and the three output-normalizer bounds simultaneously. The landing commit must then derive exact target-span membership in all three modes and an explicit \(O(\omega)\) quotient entry before cyclic refinement.

## Setting

- Context: Retain the rare-extreme proposal, same-state stationarity certificate, observable clustering, selected-state row/column bridge, and local quotient-contraction route from SC-JEP-ALS. Change only the first active refinement transition. The former cyclic landing required the post-\(U\) and post-\(V\) factors to become inputs to later solves, creating unsupported same-current predecessor comparators and dynamically refreshed scale reserves. The synchronized landing uses no generated predecessor as a held input: every mode consumes the same pre-certified seed.
- Model: \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j=\sum_{j=1}^r\lambda_j u_j\otimes v_j\otimes w_j\in\mathbb R^{n\times n\times n}\) with the source rank-\(k\) CP least-squares loss. The realized directions are unit norm and \(\lambda_j=\|a_j\|\|b_j\|\|c_j\|\).
- Data: Preserve exactly the idea-6 primitive class: normalized base cumulative Gram row sum at most \(q_*/4\) for \(q_*=1/4096\), every base-column norm in \([\kappa_0^{-1},\kappa_0]\), base CP-weight ratio at most \(1+1/800\), and the source's mutually independent \({\cal N}(0,\rho^2I_n/n)\) perturbations with \(\rho=1/\operatorname{poly}(r)\). Preserve
  \[
  \kappa_0\rho\le q_*/128,\qquad
  r(\kappa_0\rho+\kappa_0^2\rho^2)
  \sqrt{\frac{\log(9r^2/\delta_{\rm sm})}{n}}\le q_*/32.
  \]
  Norm retention, \(q_{\rm real}\le q_*\), realized weight ratio \(\Gamma\le1.01\), and target Khatri--Rao conditioning remain conclusions of the unchanged scale-aware smoothing bridge.
- Algorithm: Keep the idea-6 Gaussian proposal pool, simultaneous old-state rank-one Jacobi map, \(O(\log r)\) burn and certification horizons, tolerance \(\tau_r=q_*^2/(10^4r)\), high-score filter, graph clustering, minimum-residual representative selection, product-preserving sign gauge, observable best-scalar initialization, frozen \(k-r\) zero columns, finite active-phase cap, and \(J=\max\{1,\lceil C_{\rm rep}\log(1/\delta_{\rm init})\rceil\}\) independent full-run restarts. Let \((X^0,Y^0,Z^0)\) be the selected balanced active rank-\(r\) seed. Before cyclic refinement, compute from this same frozen triple
  \[
  \widetilde X=T_{(1)}(Z^0\odot Y^0)
  \bigl((Z^0\odot Y^0)^\top(Z^0\odot Y^0)\bigr)^\dagger,
  \]
  \[
  \widetilde Y=T_{(2)}(Z^0\odot X^0)
  \bigl((Z^0\odot X^0)^\top(Z^0\odot X^0)\bigr)^\dagger,
  \qquad
  \widetilde Z=T_{(3)}(Y^0\odot X^0)
  \bigl((Y^0\odot X^0)^\top(Y^0\odot X^0)\bigr)^\dagger.
  \]
  All right-hand sides use only \((X^0,Y^0,Z^0)\); commit \((\widetilde X,\widetilde Y,\widetilde Z)\) together and canonically equal-norm balance once, preserving each represented rank-one term. On the good seed event the three design Grams are ordinary invertible. Algebraically, each output lies in the corresponding exact target span because \({\rm range}(T_{(1)})\subseteq{\rm range}(U)\), and analogously for \(V,W\). Starting from this jointly landed state, run the unchanged exact cyclic active CP-ALS and use the idea-6 chronological proof-only \({\rm Refresh}_s\) quotient assembly after each cyclic block. Moore--Penrose selection and the pre-registered cap retain observable termination on off-event or singular tapes.
- Regime: Preserve \(r<k=U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil=o(r^2)\), \(k\le n\), \(\kappa_0,\rho^{-1}=\operatorname{poly}(r)\), and \(0<\epsilon<1\). Expose \(n,r,k,\rho,\kappa_0,\epsilon,\delta_{\rm sm},\delta_{\rm init}\), both proposal horizons, \(\tau_r\), the one landing sweep, the cyclic stopping cap, and restart count. Hidden constants may have only the previously allowed polynomial dependence on \(\kappa_0\), never on a generated comparator, tube, or condition number.

## Goal

- Theorem type: Conditional end-to-end random-initialization convergence upper bound for SL-SC-JEP-ALS.
- Informal statement: Prove uniformly over every deterministic base triple satisfying the preserved primitive scale, cumulative-Gram, balance, and smoothing conditions that, with probability at least \(1-\delta_{\rm sm}\) over the once-drawn smoothed instance and at least \(1-\delta_{\rm init}\) over SL-SC-JEP-ALS randomness conditional on that instance, the algorithm returns at most \(k=U(r)\) terms in \(\operatorname{poly}(n,r,\log(1/\epsilon),\log(1/\delta_{\rm init}))\) time and produces \(\widehat T\) with \(\|T-\widehat T\|_F\le\epsilon\|T\|_F\). Retain the idea-6 window probability, all-target coverage, \(R,S\) recurrences, finite stationarity certification, weighted score/cluster correctness, same-state selected-coefficient equation, two-orientation row/column closure, and best-scalar seed bounds. For the new landing step, derive before the three solves that each frozen normalized pair Gram has a fixed positive floor and both induced-norm reserves, while its actual full Gram is a congruence by the positive frozen seed scale diagonals whose target-relative factors are \(\exp(s^0/3)\); no post-solve scale is used by another landing call. Prove that the simultaneous commit has zero perpendicular fields in all modes and, after its single canonical rebalance, yields a common-product quotient state satisfying \(d_Q(e^{\rm land},0)\le4096\omega<\rho_{\rm ALS}/3\). From that generated state, prove the retained chronological cyclic quotient contraction, arbitrary-accuracy stopping, finite-cap behavior, and restart amplification. Preserve the exact orthogonal equal-weight baseline: an exact component seed is fixed by the landing sweep, its common product error is zero, cyclic ALS remains fixed, and the residual can tend to zero.

## Notes

- Parent foundation papers: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions*; *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*
- Transfer map: preserves the first paper's frozen-input Jacobi pseudoinverse update and exact first-iterate target-span range mechanism, but applies it only to the already selected active rank-\(r\) seed rather than an \(r^2\)-feature pool; preserves the second paper's quotient-local cyclic ALS phase and changes only the seed-to-basin landing transition.
- Source alignment: Preserves the asymmetric source tensor, rank-\(k\) least-squares objective, source Gaussian smoothing, random initialization, strictly subquadratic rank, polynomial runtime, arbitrary relative Frobenius error, once-drawn-instance probability, conditional initialization probability, restart protocol, and exact orthogonal baseline. It retains the prior cumulative-Gram, near-balanced-weight, and base-scale restrictions and adds one literature-derived active Jacobi landing commit, so it remains a conditional result rather than a full arbitrary-base or unmodified-ALS resolution; the remaining source gap is unchanged.
- Progress type: conditional
- Materiality: The strongest sufficient-rank claim remains \(U(r)=O(r^{5/3}(\log r)^{5/2})\), and the repair changes neither slots nor accuracy. It directly attacks the exhausted theorem-facing obstruction: the initial selected seed now supplies every landing design and reserve before any call, while the commit produces the exact-span state needed for arbitrary-accuracy local refinement.
- Significance: Unlike a new comparator-tube assumption, the landing sweep does not promote a generated induced-norm invariant to a primitive condition. Unlike target-coordinate clipping or projection, it is an observable standard ALS operation and does not use latent factors. It also differs from ideas 1--6: the proposal remains the certified same-state Jacobi mechanism, but the active handoff is now a joint rank-\(r\) Jacobi solve rather than a cyclic solve whose later calls consume newly generated predecessors.
- Feasibility: The three frozen-input pseudoinverse updates and their exact unfolding-range conclusion are standard/literature-derived from the parallel-ALS parent. The unchanged terminal phase is supported conditionally by the local quotient-ALS parent. From the already derived seed decomposition \(P_M^0=G_M(I+C_M^0)+N_M^0\), expand each normalized frozen pair Gram using the two \(C^0\) fields, the target Gram row sums, and the finite \((N^0)^\top N^0\) charge. For example, with \(D_{VW}^0\) the positive product of the frozen \(V,W\) scale diagonals,
  \[
  ((Z^0\odot Y^0)^\top(Z^0\odot Y^0))=D_{VW}^0J_U^0D_{VW}^0,
  \qquad
  \widetilde X=U D_\lambda Q_U^0(J_U^0)^{-1}(D_{VW}^0)^{-1},
  \]
  where \(J_U^0=((P_W^0)^\top P_W^0)\circ((P_V^0)^\top P_V^0)\) and \(Q_U^0=(W^\top P_W^0)\circ(V^\top P_V^0)\); the other modes are identical. The displayed row/column, perpendicular-column, and \(s^0\) bounds give both induced orientations, a Neumann reserve for every \(J_M^0\), positivity of every \(D_{M'M''}^0\), and output-normalizer floors before all three calls. The formula exhibits exact scale cancellation rather than an assumed dynamic exponential-scale bound. The three independent coefficient outputs and their log normalizers can therefore be bounded directly by one common \(O(\omega)\) seed polynomial; there is no \(U\)-to-\(V\) or \(V\)-to-\(W\) comparator induction. The landing inequalities, the concrete \(4096\omega\) specialization, and the subsequent cyclic contraction remain proof obligations, not assumptions.
- Consistency: The synchronized landing is also branch-specifically checkable. For orthogonal equal-weight factors at the exact certified component state, all frozen pair Grams are identity and the three outputs equal the target factors with common product error zero. For equicorrelated frames with off-diagonal \(q_*/(4(r-1))\), the frozen target pair off-diagonal is quadratic in that correlation and its row/column mass has a direct Neumann margin. For two-neighbor banded frames with reciprocal modewise scales, each frozen pair design is banded and positive diagonal scale congruence cancels exactly in its solve. For block-correlated frames with within-block off-diagonal \(q_*/(4(s-1))\) and independent mode rotations, cumulative row/column mass, rather than sparsity or symmetry, controls all three frozen designs simultaneously. In every case all landing inputs are fixed before the calls, all outputs enter their true spans on the joint commit, and no newly solved mode is reused during landing. Thus the new procedure is nonvacuous, baseline-preserving, and non-duplicate, while all unaffected smoothing, conditioning, certification, initialization, probability, runtime, and quotient-refresh structure is retained verbatim.
