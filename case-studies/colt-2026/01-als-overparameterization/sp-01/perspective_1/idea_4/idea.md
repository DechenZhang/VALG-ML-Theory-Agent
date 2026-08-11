# Idea

## Perspective Anchor

- Tuple: `(analysis_target: global_convergence, model_class: third_order_asymmetric_cp_least_squares, data_assumption: gaussian_smoothed_factors, regime: strictly_subquadratic_overparameterization, algorithm: parallel_als)`

## Added Dimensions

- Primitive geometry: bounded cumulative modewise Gram interference. For normalized base factors define \(\bar q=\max_{M\in\{\bar U,\bar V,\bar W\}}\max_j\sum_{\ell\ne j}|(M^\top M)_{j\ell}|\) and require \(\bar q\le q_*/4\), where \(q_*=1/4096\).
- Base scale and balance: expose \(\kappa_0\ge1\), require every modewise base-column norm to lie in \([\kappa_0^{-1},\kappa_0]\), and require the base CP weights to have ratio at most \(1+1/800\).
- Algorithm subtype: Jacobi extreme-start proposal-and-refinement parallel ALS (JEP-ALS). Every gated proposal computes all three normalized rank-one ALS contractions from the same old triple and commits them simultaneously; observable score/displacement filtering and clustering precede joint cyclic local CP-ALS on the selected active slots.
- Proposal horizon and certificate: use \(L_0=\lceil C_0\log r\rceil\) simultaneous sweeps and track both the maximum competitor pair-product ratio \(R_t\) and its pairwise \(\ell_1\)-mass \(S_t\). This replaces only the failed cyclic proposal interface and supplies an \(r\)-uniform angular certificate before filtering.
- Rank exponent: \(c=2/3\) and \(U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\) per run; independent confidence-amplifying restarts do not enlarge \(U\).

## Setting

- Context: Replace the quadratic Jacobi feature-spanning certificate by a target-adaptive pool of gated rank-one Jacobi proposals. Rare large-margin random entries identify all components under nonorthogonal but cumulatively weak interference; simultaneous old-state updates amplify those entries, and the original joint CP least-squares dynamics supplies arbitrary-accuracy refinement.
- Model: \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j=\sum_{j=1}^r\lambda_j u_j\otimes v_j\otimes w_j\in\mathbb R^{n\times n\times n}\) with the source rank-\(k\) CP least-squares loss, where \(u_j,v_j,w_j\) are normalized realized factor directions and \(\lambda_j=\|a_j\|\|b_j\|\|c_j\|\).
- Data: For \(\bar\lambda_j=\|\bar a_j\|\|\bar b_j\|\|\bar c_j\|\), require base-column norms in \([\kappa_0^{-1},\kappa_0]\), \(\bar q\le q_*/4\), and \(\max_j\bar\lambda_j/\min_j\bar\lambda_j\le1+1/800\). Add exactly the source's mutually independent \(\mathcal N(0,\rho^2I_n/n)\) perturbations, with \(\rho=1/\operatorname{poly}(r)\), and require
  \[
  \kappa_0\rho\le q_*/128,\qquad
  r(\kappa_0\rho+\kappa_0^2\rho^2)
  \sqrt{\frac{\log(9r^2/\delta_{\rm sm})}{n}}\le q_*/32.
  \]
  The proof must derive, rather than assume, norm retention, realized cumulative Gram row sums \(q(U),q(V),q(W)\le q_*\), realized weight ratio \(\Gamma\le1.01\), and cyclic Khatri--Rao Gram nonsingularity, while retaining the linear directional, quadratic, and normalization contributions in the scale-aware smoothing bridge.
- Algorithm: Draw \(k=U(r)\le n\) independent normalized Gaussian triples. Gate each proposal as the sole nonzero rank-one term. From \((p^{(t)},q^{(t)},s^{(t)})\), compute
  \[
  \widetilde p={\cal N}(T(\,\cdot,q^{(t)},s^{(t)})),\quad
  \widetilde q={\cal N}(T(p^{(t)},\,\cdot,s^{(t)})),\quad
  \widetilde s={\cal N}(T(p^{(t)},q^{(t)},\,\cdot)),
  \]
  and commit \((p^{(t+1)},q^{(t+1)},s^{(t+1)})=(\widetilde p,\widetilde q,\widetilde s)\) together for \(L_0=\lceil C_0\log r\rceil\) sweeps. Retain proposals whose sign-invariant last-sweep displacement is at most \(64q_*\) and whose normalized tensor-contraction score is at least \(0.85\) of the maximum. Join retained proposals when all three absolute modewise correlations are at least \(1-64q_*\), select the largest-score representative from each graph cluster, and declare the run unsuccessful if fewer than \(r\) clusters remain. Initialize the top \(r\) representatives by their observable best scalar fits, set the other \(k-r\) terms exactly to zero, and run cyclic CP-ALS on only the active blocks of the original rank-\(k\) loss until relative residual \(\epsilon\). Independent full-run restarts return the smallest-residual successful output.
- Regime: \(r<k=\Theta(r^{5/3}(\log r)^{5/2})=o(r^2)\), \(k\le n\), \(\kappa_0\le\operatorname{poly}(r)\), and \(0<\epsilon<1\). Exposed variables are \(n,r,k,\rho,\kappa_0,\epsilon,\delta_{\rm sm},\delta_{\rm init}\). Hidden concentration, conditioning, and runtime constants may depend polynomially on \(\kappa_0\), while the rank constant is universal once \(q_*\) and \(c=2/3\) are fixed.

## Goal

- Theorem type: Conditional end-to-end random-initialization convergence upper bound for JEP-ALS.
- Informal statement: Prove that for every deterministic base triple satisfying the primitive cumulative-Gram, scale, weight-balance, and scalar smoothing conditions above, with probability at least \(1-\delta_{\rm sm}\) over the once-drawn smoothed instance and at least \(1-\delta_{\rm init}\) over JEP-ALS randomness conditional on that instance, JEP-ALS returns at most \(k=U(r)\) rank-one terms in \(\operatorname{poly}(n,r,\log(1/\epsilon),\log(1/\delta_{\rm init}))\) time and produces \(\widehat T\) satisfying \(\|T-\widehat T\|_F\le\epsilon\|T\|_F\). Derive the windowed three-mode extreme-entry event and simultaneous all-component coverage, the valid Jacobi recurrence
  \[
  R_{t+1}\le\left(\frac{\Gamma R_t+q}{1-\Gamma qR_t}\right)^2
  \quad\text{for }q=\max\{q(U),q(V),q(W)\}\le q_*,\ R_0\le19/20,\ \Gamma R_t<1,
  \]
  the companion pair-mass contraction needed for angular alignment, component-versus-mixture score separation, data-driven recovery of one representative per component, entry into the joint local CP-ALS basin, and terminal linear contraction to arbitrary accuracy. Independent full-run restarts must add only an \(O(\log(1/\delta_{\rm init}))\) runtime factor and must not alter \(U(r)\).

## Notes

- Parent foundation papers: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions*; *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*
- Transfer map: preserves Jacobi-style parallel ALS proposals from the quadratic baseline and quotient-Hessian local CP-ALS refinement; changes the \(r^2\)-span entry certificate to a gated rare-extreme pool and reuses exact rank-one contractions, Gaussian tail control, and local block-convergence geometry.
- Source alignment: preserves the asymmetric source tensor, rank-\(k\) least-squares loss, source Gaussian smoothing, random initialization, strictly subquadratic rank, polynomial runtime, arbitrary relative Frobenius error, and separate instance/initialization/restart quantifiers. It adds cumulative-Gram and near-balanced-weight conditions and a staged JEP-ALS protocol, so it is conditional rather than a full arbitrary-base resolution; the remaining gap is removal of those static conditions and recovery by unmodified parallel ALS.
- Progress type: conditional
- Materiality: The strongest claimed sufficient-rank rate is still \(U(r)=O(r^{5/3}(\log r)^{5/2})\). The \(r^{2/3}\) excess rank and \((\log r)^{3/2}\) tail factor invert the three-mode extreme event, while the final \(\log r\) gives all-component coverage; the longer proposal horizon affects runtime but not rank and the theorem retains arbitrary-\(\epsilon\) recovery.
- Significance: This is the smallest target-preserving response to the preceding first-update obstruction: simultaneous proposals consume exactly the three old-coordinate pair products supplied by the existing rare event, while all primitive data restrictions, the observable selection protocol, active-rank refinement, zero padding, probability quantifiers, and end-to-end target remain unchanged. Coordinatewise-dominance assumptions and a weaker local-only theorem are therefore unnecessary.
- Feasibility: The simultaneous proposal update is standard/literature-derived from Jacobi-style parallel ALS, terminal refinement is supported by the parent local ALS framework, and the staged gating/filtering protocol is novel example-verified by the three concrete factor families listed in `Consistency`. For competitor/target coordinate ratios \(A_\ell,B_\ell,C_\ell\), let \(R=\max_{\ell\ne j}\{A_\ell B_\ell,A_\ell C_\ell,B_\ell C_\ell\}\) and \(S=\max\{\sum_{\ell\ne j}A_\ell B_\ell,\sum_{\ell\ne j}A_\ell C_\ell,\sum_{\ell\ne j}B_\ell C_\ell\}\). Direct Gram expansion gives the displayed \(R\)-recurrence and
  \[
  S_{t+1}\le
  \frac{(\Gamma R_t+q)(\Gamma(1+q)S_t+q)}{(1-\Gamma qR_t)^2}.
  \]
  At \(q=q_*\), \(\Gamma=1.01\), and \(R_0=19/20\), the first recurrence gives \(R_1\le0.921541<R_0\), reaches its \(6\times10^{-8}\) floor after a universal number of sweeps, and then the \(S\)-coefficient is below \(1/4000\); since \(S_0\le rR_0\), \(L_0=O(\log r)\) yields an \(r\)-uniform directional certificate. Windowing each target Gaussian correlation at \(t\le|Z_j|\le t+1/t\), \(t=\sqrt{(10/9)\log r}\), preserves probability \(\Theta(r^{-5/3}(\log r)^{-3/2})\); conditional cumulative-Gram shifts are at most \(q_*(t+1/t)\), and competing pair-product tails at threshold \((19/18)\log r\) remain union-boundable with exponent greater than one. Thus the exact rank and log factors survive. The score-gap, cluster, basin-radius, Hessian, and stopping-time statements remain derived proof obligations, not assumptions.
- Consistency: In the orthogonal equal-weight specialization the exact simultaneous map is \((A_\ell^+,B_\ell^+,C_\ell^+)=(B_\ell C_\ell,A_\ell C_\ell,A_\ell B_\ell)\), hence \(R^+\le R^2\); in particular the prior state \((0.5,0.5,1.8)\) now gives \(R_1=0.81\) rather than cyclic amplification. The retained primitive geometry is independently checkable and novel example-verified by equicorrelated frames with off-diagonal \(q_*/(4(r-1))\), two-neighbor banded frames with \(\alpha\le q_*/16\) and reciprocal modewise scales, and block-correlated frames with within-block off-diagonal \(q_*/(4(s-1))\); independent mode rotations make the examples asymmetric, and any \((\rho,n,\delta_{\rm sm})\) satisfying the displayed scalar margin checks the smoothing primitive. In each family the gated Jacobi map obeys the same \(R,S\) expansion; near-component proposals have score within \(O(q_*)\) of their balanced component weight, multi-component stationary mixtures have the orthogonal benchmark \(1/\sqrt{s}\le1/\sqrt2\) plus \(O(q_*)\), and the resulting component clusters are separated at the stated thresholds. These are concrete verification regimes for the novel gating/filtering mechanism, while uniform score, cluster, and basin certificates remain proof obligations. The idea assumes no generated event and is non-duplicate because it changes the failed proposal map, recurrence, and alignment horizon while preserving the source-facing theorem target.
