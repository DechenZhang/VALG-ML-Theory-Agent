# Idea

## Perspective Anchor

- Tuple: `(analysis_target: global_convergence, model_class: third_order_asymmetric_cp_least_squares, data_assumption: gaussian_smoothed_factors, regime: strictly_subquadratic_overparameterization, algorithm: parallel_als)`

## Added Dimensions

- Primitive geometry: retain the bounded-scale, near-balanced, cumulative-Gram setting with \(q_*:=1/4096\), base-column norms in \([\kappa_0^{-1},\kappa_0]\), normalized base Gram row sums at most \(q_*/4\), and base CP-weight ratio at most \(1+1/800\).
- Algorithm subtype: stationarity-certified carry-over Jacobi extreme-start proposal-and-refinement ALS (SC-JEP-ALS). Proposal slots use simultaneous old-state rank-one contractions, but a slot may enter the representative pool only through an observable same-state projective fixed-point certificate.
- Certification and selection rule: for the projective Jacobi map \({\cal J}\), certify a carried state \(h\) only when
  \[
  \zeta(h):=\max_{M\in\{U,V,W\}}\min_{\varepsilon\in\{\pm1\}}
  \|h_M-\varepsilon {\cal J}_M(h)\|_2
  \le \tau_r:=\frac{q_*^2}{10^4r}.
  \]
  Cluster only certified high-score states and choose the minimum-\(\zeta\) member of each cluster, breaking ties by score. Carry that certified state itself into refinement; its look-ahead image is used only to evaluate \(\zeta\) and is not silently substituted for the representative.
- Rank exponent: retain \(c=2/3\) and \(U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\). Certification adds \(O(\log r)\) proposal sweeps but no slots, and independent confidence-amplifying restarts do not enlarge \(U\).

## Setting

- Context: Use rare extreme Gaussian starts to enter one target chart per component, then convert each useful Jacobi trajectory into an observable approximate fixed point before data-driven selection. The same-state certificate supplies a deterministic global selected-matrix residual, avoiding any comparison between old update coefficients and a pair-product matrix formed from a different time state.
- Model: \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j=\sum_{j=1}^r\lambda_j u_j\otimes v_j\otimes w_j\in\mathbb R^{n\times n\times n}\) with the source rank-\(k\) CP least-squares loss, normalized realized directions \(u_j,v_j,w_j\), and \(\lambda_j=\|a_j\|\|b_j\|\|c_j\|\).
- Data: Require normalized base cumulative Gram row sum at most \(q_*/4\), base-column norms in \([\kappa_0^{-1},\kappa_0]\), and base-weight ratio at most \(1+1/800\). Add exactly the source's mutually independent \(\mathcal N(0,\rho^2I_n/n)\) perturbations, with \(\rho=1/\operatorname{poly}(r)\), and require
  \[
  \kappa_0\rho\le q_*/128,\qquad
  r(\kappa_0\rho+\kappa_0^2\rho^2)
  \sqrt{\frac{\log(9r^2/\delta_{\rm sm})}{n}}\le q_*/32.
  \]
  Norm retention, realized cumulative Gram bound \(q_{\rm real}\le q_*\), realized weight ratio \(\Gamma\le1.01\), and Khatri--Rao Gram conditioning remain conclusions of a scale-aware smoothing argument, not assumptions.
- Algorithm: Draw \(k=U(r)\le n\) independent normalized Gaussian triples and gate every proposal as the sole nonzero rank-one term. From \(h=(p,q,s)\), compute all three normalized contractions \({\cal J}(h)\) from that same old state and commit them together. Run \(L_{\rm burn}=\lceil C_{\rm burn}\log r\rceil\) sweeps, then for at most \(L_{\rm cert}=\lceil C_{\rm cert}\log r\rceil\) more sweeps evaluate \(\zeta(h)\) before each commit. Store the first state satisfying \(\zeta(h)\le\tau_r\); discard a slot that never certifies. On certified states compute \(\sigma(h)=|\langle T,p\otimes q\otimes s\rangle|\), retain scores at least \(0.85\) of the certified maximum, and graph-cluster states whose three absolute modewise correlations are at least \(1-64q_*\). Declare the run unsuccessful unless this observable graph has exactly \(r\) connected components; in each component select the minimum-\(\zeta\) member, breaking ties by score. For each selected unit triple use its observable best scalar \(\theta=\langle T,p\otimes q\otimes s\rangle\) and initialize the balanced active term \((|\theta|^{1/3}p,|\theta|^{1/3}q,\operatorname{sgn}(\theta)|\theta|^{1/3}s)\). Set the other \(k-r\) terms to zero and never update them. Run cyclic CP-ALS on the active blocks of the original rank-\(k\) loss until relative residual \(\epsilon\), and amplify initialization confidence by independent full-run restarts on the same once-drawn tensor.
- Regime: \(r<k=\Theta(r^{5/3}(\log r)^{5/2})=o(r^2)\), \(k\le n\), \(\kappa_0,\rho^{-1}=\operatorname{poly}(r)\), and \(0<\epsilon<1\). Exposed variables are \(n,r,k,\rho,\kappa_0,\epsilon,\delta_{\rm sm},\delta_{\rm init}\). The certification tolerance and both proposal horizons are explicit; hidden constants may have only the stated polynomial dependence on \(\kappa_0\) and no dependence on an unlisted generated condition.

## Goal

- Theorem type: Conditional end-to-end random-initialization convergence upper bound for SC-JEP-ALS.
- Informal statement: Prove that uniformly over every deterministic base triple satisfying the primitive scale, cumulative-Gram, balance, and smoothing conditions above, with probability at least \(1-\delta_{\rm sm}\) over the once-drawn smoothed instance and at least \(1-\delta_{\rm init}\) over SC-JEP-ALS randomness conditional on that instance, the algorithm returns at most \(k=U(r)\) rank-one terms in \(\operatorname{poly}(n,r,\log(1/\epsilon),\log(1/\delta_{\rm init}))\) time and produces \(\widehat T\) satisfying \(\|T-\widehat T\|_F\le\epsilon\|T\|_F\). Derive the same windowed extreme-entry probability and all-component coverage, target-chart entry under the simultaneous \(R,S\) recurrences, local contraction of the projective Jacobi map to the observable tolerance \(\tau_r\), high-score certified cluster correctness, and a same-state selected-coefficient equation whose residual has both global row and column mass \(O(q_*^2)\). Use that equation to prove balanced best-scalar entry into a sourced local cyclic-ALS basin, terminal linear contraction to arbitrary accuracy, and restart amplification without changing \(U(r)\). Preserve the exact orthogonal equal-weight baseline, in which the component states are exact projective fixed points and the final residual can tend to zero.

## Notes

- Parent foundation papers: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions*; *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*
- Transfer map: preserves the old-state Jacobi proposal convention, rare-window coverage, and quotient-Hessian terminal refinement; changes the representative handoff to an observable approximate-fixed-point carry-over and reuses projective contraction, exact same-state normal equations, and local block-Gauss--Seidel geometry.
- Source alignment: preserves the asymmetric source tensor, rank-\(k\) least-squares loss, source Gaussian smoothing, random initialization, strictly subquadratic rank, polynomial runtime, arbitrary relative Frobenius error, and separate instance/initialization/restart quantifiers. It retains the cumulative-Gram, near-balanced-weight, and scale restrictions and uses a staged certified parallel-ALS protocol, so it remains conditional rather than a full arbitrary-base resolution; the remaining gap is removal of those static restrictions and recovery by unmodified parallel ALS.
- Progress type: conditional
- Materiality: The strongest claimed sufficient-rank rate remains \(U(r)=O(r^{5/3}(\log r)^{5/2})\). Certification spends only logarithmically many additional contractions and directly targets the selected-matrix basin interface, so it preserves the strictly subquadratic upper bound and arbitrary-accuracy source objective rather than replacing them with a local-only or fixed-error result.
- Significance: The certificate changes the procedure exactly where global entry needs a source. Every selected member now carries a same-state residual bounded before selection, and choosing \(\tau_r=\Theta(q_*^2/r)\) makes even adversarial alignment across \(r\) selected columns contribute only \(O(q_*^2)\). No conditional sign law, hidden covered-member identity, coordinatewise-dominance assumption, or decaying-in-\(r\) Gram assumption is introduced.
- Feasibility: Simultaneous rank-one proposal updates are standard/literature-derived from parallel ALS, and terminal refinement is supported conditionally by the parent local ALS framework. Once a covered slot has entered its target chart, direct differentiation of the projective Jacobi map gives a chart Lipschitz constant \(C(q_{\rm real}+\chi)<1/4\) for sufficiently small column error \(\chi\); hence \(O(\log r)\) additional sweeps reduce \(\zeta\) below \(\tau_r\) without changing the rare-entry probability or rank. For the carried selected direction matrices, define target-basis column error \(\chi\) and incoming row mass \(\eta\). Because the pair coefficients and the selected state use the same time slice, the exact approximate-fixed-point expansion has the form
  \[
  E_M={\cal L}_M\!\left[(H_{M'}D_{M'})\circ E_{M''}
  +E_{M'}\circ(H_{M''}D_{M''})+E_{M'}\circ E_{M''}+B_M\right]
  +{\cal R}_M,
  \]
  where the static target-pair forcing \(B_M\) has row and column mass \(O(q_{\rm real}^2)\), while the observable stationarity residual gives \(\|{\cal R}_M\|_{\rm row,1},\|{\cal R}_M\|_{\rm col,1}\le C r\tau_r\). Taking induced norms before summing target labels yields
  \[
  \eta\le C\bigl(q_{\rm real}\chi+\chi\eta+q_{\rm real}^2+r\tau_r\bigr),
  \]
  which closes at \(O(q_*^2)\) once the target-chart column bound is inserted. At \(q_{\rm real}=0\), finite-transient error remains honestly in \({\cal R}_M\); it is not declared to vanish until stationarity, so the orthogonal pre/post-update obstruction is absent. Unit-direction certification is kept separate from raw amplitude: the observable best scalar supplies the sole amplitude coordinate before the local quotient chart. The window probability \(\Theta(r^{-5/3}(\log r)^{-3/2})\), coupon coverage, score gap, chart contraction, same-state expansion, best-scalar residual, local radius, and stopping time remain derived proof obligations rather than assumptions.
- Consistency: The novel certification/carry-over mechanism is concrete-example verified in four source-compatible regimes. For orthogonal equal-weight factors, the exact map \((A^+,B^+,C^+)=(BC,AC,AB)\) reaches the component fixed point and the same-state residual vanishes there. Equicorrelated frames with off-diagonal \(q_*/(4(r-1))\) have a unique near-component projective fixed point by the chart contraction, and their static pair forcing has row mass \(O(q_*^2)\). Two-neighbor banded frames with \(\alpha\le q_*/16\) and reciprocal modewise scales localize the same-state equation to neighboring rows. Block-correlated frames with within-block off-diagonal \(q_*/(4(s-1))\) and independent mode rotations verify that the induced row estimate depends on cumulative mass rather than sparsity or symmetry. In every family, a certified state and its pair coefficients are formed from the same directions, \(r\tau_r\le q_*^2/10^4\), and best-scalar balancing is well defined. The idea assumes no generated stationarity or basin event and is non-duplicate because it replaces largest-score last-sweep selection by certified same-state carry-over and a new deterministic row source while leaving the source-facing theorem target intact.
