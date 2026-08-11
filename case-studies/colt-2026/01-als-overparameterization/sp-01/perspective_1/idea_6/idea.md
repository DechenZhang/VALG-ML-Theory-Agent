# Idea

## Perspective Anchor

- Tuple: `(analysis_target: global_convergence, model_class: third_order_asymmetric_cp_least_squares, data_assumption: gaussian_smoothed_factors, regime: strictly_subquadratic_overparameterization, algorithm: parallel_als)`

## Added Dimensions

- Primitive geometry: retain the bounded-scale, near-balanced, cumulative-Gram setting with \(q_*:=1/4096\), base-column norms in \([\kappa_0^{-1},\kappa_0]\), normalized base Gram row sums at most \(q_*/4\), and base CP-weight ratio at most \(1+1/800\).
- Algorithm subtype: retain stationarity-certified carry-over Jacobi extreme-start proposal-and-refinement ALS (SC-JEP-ALS). Proposal slots use simultaneous old-state rank-one contractions, but a slot may enter the representative pool only through an observable same-state projective fixed-point certificate.
- Certification and selection rule: for the projective Jacobi map \({\cal J}\), certify a carried state \(h\) only when
  \[
  \zeta(h):=\max_{M\in\{U,V,W\}}\min_{\varepsilon\in\{\pm1\}}
  \|h_M-\varepsilon {\cal J}_M(h)\|_2
  \le \tau_r:=\frac{q_*^2}{10^4r}.
  \]
  Cluster only certified high-score states and choose the minimum-\(\zeta\) member of each cluster, breaking ties by score. Carry that certified state itself into refinement; its look-ahead image is used only to evaluate \(\zeta\) and is not substituted for the representative.
- Refinement-entry interface: retain the collective pair-Gram audit of the selected balanced initializer and the literal first cyclic \(U,V,W\) sweep. The sweep must derive exact target-span entry and remove all perpendicular fields before the invariant quotient contraction is invoked; target-span membership remains a generated trajectory conclusion, not an assumption.
- Quotient assembly: represent an active target-span state by one tuple \(e=(C_U,C_V,C_W,s)\), where \(s_j=\log(\gamma_j/\lambda_j)\) is the single gauge-invariant represented-product coordinate. After each exact cyclic block solve, apply an explicit proof-only canonical \({\rm Refresh}_s\) assembly to the entire quotient state: after \(U\), use \((C_U^+,C_V,C_W,s_U^+)\); after \(V\), use \((C_U^+,C_V^+,C_W,s_V^+)\); and after \(W\), use \((C_U^+,C_V^+,C_W^+,s_W^+)\). Each refresh overwrites the preceding historical product value. It is a product-preserving change of representative of the literal ALS orbit, not an additional algorithmic update.
- Rank exponent: retain \(c=2/3\) and \(U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\). Certification adds \(O(\log r)\) proposal sweeps but no slots, and independent confidence-amplifying restarts do not enlarge \(U\).

## Setting

- Context: Use rare extreme Gaussian starts to enter one target chart per component, then convert each useful Jacobi trajectory into an observable approximate fixed point before data-driven selection. The same-state certificate supplies a deterministic global selected-matrix residual. The selected balanced state then follows the literal cyclic ALS orbit: one collective first-sweep argument produces exact target-span entry, and subsequent sweeps are analyzed in a canonical quotient chart whose single represented-product register is refreshed chronologically after every block.
- Model: \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j=\sum_{j=1}^r\lambda_j u_j\otimes v_j\otimes w_j\in\mathbb R^{n\times n\times n}\) with the source rank-\(k\) CP least-squares loss, normalized realized directions \(u_j,v_j,w_j\), and \(\lambda_j=\|a_j\|\|b_j\|\|c_j\|\).
- Data: Require normalized base cumulative Gram row sum at most \(q_*/4\), base-column norms in \([\kappa_0^{-1},\kappa_0]\), and base-weight ratio at most \(1+1/800\). Add exactly the source's mutually independent \(\mathcal N(0,\rho^2I_n/n)\) perturbations, with \(\rho=1/\operatorname{poly}(r)\), and require
  \[
  \kappa_0\rho\le q_*/128,\qquad
  r(\kappa_0\rho+\kappa_0^2\rho^2)
  \sqrt{\frac{\log(9r^2/\delta_{\rm sm})}{n}}\le q_*/32.
  \]
  Norm retention, realized cumulative Gram bound \(q_{\rm real}\le q_*\), realized weight ratio \(\Gamma\le1.01\), and Khatri--Rao Gram conditioning remain conclusions of a scale-aware smoothing argument, not assumptions.
- Algorithm: Draw \(k=U(r)\le n\) independent normalized Gaussian triples and gate every proposal as the sole nonzero rank-one term. From \(h=(p,q,s)\), compute all three normalized contractions \({\cal J}(h)\) from that same old state and commit them together. Run \(L_{\rm burn}=\lceil C_{\rm burn}\log r\rceil\) sweeps, then for at most \(L_{\rm cert}=\lceil C_{\rm cert}\log r\rceil\) more sweeps evaluate \(\zeta(h)\) before each commit. Store the first state satisfying \(\zeta(h)\le\tau_r\); discard a slot that never certifies. On certified states compute \(\sigma(h)=|\langle T,p\otimes q\otimes s\rangle|\), retain scores at least \(0.85\) of the certified maximum, and graph-cluster states whose three absolute modewise correlations are at least \(1-64q_*\). Declare the run unsuccessful unless this observable graph has exactly \(r\) connected components; in each component select the minimum-\(\zeta\) member, breaking ties by score. For each selected unit triple use its observable best scalar \(\theta=\langle T,p\otimes q\otimes s\rangle\) and initialize the balanced active term \((|\theta|^{1/3}p,|\theta|^{1/3}q,\operatorname{sgn}(\theta)|\theta|^{1/3}s)\). Set the other \(k-r\) terms to zero and never update them. Run exact cyclic CP-ALS on the active blocks of the original rank-\(k\) loss until relative residual \(\epsilon\), and amplify initialization confidence by independent full-run restarts on the same once-drawn tensor.

  For the analysis of active refinement only, quotient positive componentwise scalings whose three mode products equal one. After the generated first sweep enters the exact target spans, canonically balance every represented rank-one term after each literal block solve. If \(e^t=(C_U^t,C_V^t,C_W^t,s^t)\), the quotient block maps and refreshes are defined chronologically by
  \[
  (C_U^+,s_U^+)={\cal U}_U^q(e^t),\qquad
  e_U={\rm Refresh}_s^U(e^t;C_U^+,s_U^+):=(C_U^+,C_V^t,C_W^t,s_U^+),
  \]
  \[
  (C_V^+,s_V^+)={\cal U}_V^q(e_U),\qquad
  e_V={\rm Refresh}_s^V(e_U;C_V^+,s_V^+):=(C_U^+,C_V^+,C_W^t,s_V^+),
  \]
  \[
  (C_W^+,s_W^+)={\cal U}_W^q(e_V),\qquad
  e_W={\rm Refresh}_s^W(e_V;C_W^+,s_W^+):=(C_U^+,C_V^+,C_W^+,s_W^+).
  \]
  Define the quotient full-sweep map by \(\Psi^q(e^t):=e_W\). The same \(s_U^+\) is used by every held record before the \(V\) solve, the same \(s_V^+\) before the \(W\) solve, and only \(s_W^+\) survives in the final state. The refreshes are the canonical equal-norm, product-preserving representations of the actual intermediate ALS states; they perform no extra minimization, projection, filtering, or acceptance operation.
- Regime: \(r<k=\Theta(r^{5/3}(\log r)^{5/2})=o(r^2)\), \(k\le n\), \(\kappa_0,\rho^{-1}=\operatorname{poly}(r)\), and \(0<\epsilon<1\). Exposed variables are \(n,r,k,\rho,\kappa_0,\epsilon,\delta_{\rm sm},\delta_{\rm init}\). The certification tolerance and both proposal horizons are explicit; hidden constants may have only the stated polynomial dependence on \(\kappa_0\) and no dependence on an unlisted generated condition.

## Goal

- Theorem type: Conditional end-to-end random-initialization convergence upper bound for SC-JEP-ALS.
- Informal statement: Prove that uniformly over every deterministic base triple satisfying the primitive scale, cumulative-Gram, balance, and smoothing conditions above, with probability at least \(1-\delta_{\rm sm}\) over the once-drawn smoothed instance and at least \(1-\delta_{\rm init}\) over SC-JEP-ALS randomness conditional on that instance, the algorithm returns at most \(k=U(r)\) rank-one terms in \(\operatorname{poly}(n,r,\log(1/\epsilon),\log(1/\delta_{\rm init}))\) time and produces \(\widehat T\) satisfying \(\|T-\widehat T\|_F\le\epsilon\|T\|_F\). Retain the windowed extreme-entry probability and all-component coverage, target-chart entry under the simultaneous \(R,S\) recurrences, local contraction of the projective Jacobi map to \(\tau_r\), high-score certified cluster correctness, the same-state selected-coefficient equation with global row and column mass \(O(q_*^2)\), the balanced best-scalar quotient entry, and the collective pair-Gram proof that one literal cyclic sweep enters the exact target spans. On that generated invariant domain, prove exact scale equivariance of each quotient block solve, prove that the three chronological \({\rm Refresh}_s\) stages are quotient-equivalent to the literal \(U,V,W\) ALS sequence, define \(d_Q\) on the final common-product state \(\Psi^q(e)=(C_U^+,C_V^+,C_W^+,s_W^+)\), and derive the full-sweep contraction and terminal linear convergence to arbitrary accuracy. Preserve restart amplification without changing \(U(r)\) and the exact orthogonal equal-weight baseline, in which the component states are exact projective and cyclic-ALS fixed points, every refresh has \(s=0\), and the final residual can tend to zero.

## Notes

- Parent foundation papers: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions*; *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*
- Transfer map: preserves the source CP objective, Gaussian-smoothed conditional geometry, old-state Jacobi coverage, stationarity-certified same-state carry-over, observable clustering, collective first-sweep target-span entry, and local quotient ALS route; changes only the quotient block composition by inserting a canonical shared-product refresh after each literal cyclic solve and reuses exact ALS scale equivariance and block-Gauss--Seidel geometry.
- Source alignment: preserves the asymmetric source tensor, rank-\(k\) least-squares loss, source Gaussian smoothing, random initialization, strictly subquadratic rank, polynomial runtime, arbitrary relative Frobenius error, and separate instance/initialization/restart quantifiers. It retains the cumulative-Gram, near-balanced-weight, and scale restrictions and the same staged SC-JEP-ALS protocol, so it remains conditional rather than a full arbitrary-base resolution; the remaining gap is removal of those static restrictions and recovery by unmodified parallel ALS.
- Progress type: conditional
- Materiality: The strongest claimed sufficient-rank rate remains \(U(r)=O(r^{5/3}(\log r)^{5/2})\). The refresh repair neither adds slots nor narrows the instance population: it makes the arbitrary-accuracy local refinement producer a well-defined map on the actual cyclic ALS quotient orbit while retaining the strictly subquadratic source-facing bound.
- Significance: One common represented-product coordinate now advances in the same chronology as the literal ALS blocks. Consequently the post-\(U\), post-\(V\), and post-\(W\) objects are legal quotient states, historical product outputs are overwritten rather than passed simultaneously to a final gauge, and \(\Psi^q\) and its terminal \(d_Q\) comparison have unambiguous domains. No stationarity, target-span, basin, contraction, or support fact is added as a primitive condition.
- Feasibility: The proposal, certification, same-state ledger, weighted selection, row/column bridge, best-scalar transfer, and collective first-sweep entry retain their direct or literature-supported routes. In particular, simultaneous proposal updates are inherited from parallel ALS, terminal cyclic refinement is supported conditionally by the parent local ALS framework, and the first active sweep retains the exact unfolding-range argument and the collective perpendicular pair-Gram charge \(2(1+q_*)(1+48\omega)^2\tau_r^2+r\tau_r^4\) before exact target-span entry. On the invariant target-span domain, exact CP-ALS scale equivariance shows that canonical equal-norm balancing after a block changes only the representative of the same quotient point. Each held-input normal equation therefore returns a newly solved direction and one new represented product; \({\rm Refresh}_s\) merely installs that product globally before the next solve. For
  \[
  d_Q(e,\widetilde e):=\max\!\left\{\max_{M\in\{U,V,W\}}\left(
  \|\Delta C_M\|_{\rm row,1}\vee\|\Delta C_M\|_{\rm col,1}\vee
  \max_j\|G_M\Delta C_M(:,j)\|_2\right),\ \|\Delta s\|_\infty\right\},
  \]
  the chronological construction gives a single final argument \((C_U^+,C_V^+,C_W^+,s_W^+)\). The inherited held-input estimate with \(\ell=8q_*+32\rho_{\rm ALS}<1/16\) can then be recomposed in actual \(U,V,W\) order; proving the advertised \(3\ell<1/4\) full-sweep bound, or propagating the directly recomputed factor if different, remains a derived proof obligation. The refresh adds no numerical cost and no stochastic event.
- Consistency: The primitive assumptions, their inequality forms, the SC-JEP-ALS updates, target, theorem mode, rate, probability protocol, and baseline are unchanged. The refresh is directly checkable on orthogonal equal-weight factors, where each exact block returns \(\gamma_j=\lambda_j\) and hence \(s_U^+=s_V^+=s_W^+=0\); on equicorrelated frames, where each post-block product is the product of the literal solved and held column norms; on two-neighbor banded frames, where the same equality holds componentwise despite localized interference; and on block-correlated frames with independent mode rotations, where canonical balancing preserves every represented rank-one term. These examples verify object identity rather than assume contraction. The branch is non-duplicate because its theorem-critical quotient transition is now the explicit refreshed state sequence \(e\mapsto e_U\mapsto e_V\mapsto e_W\), whereas a composition of three separately timestamped product outputs does not define one quotient state.
