# Formalized Setting

- Basic setup:
  Fix integers \(n,r\), the numerical interference threshold
  \(q_*:=1/4096\), a base-scale parameter \(\kappa _0\ge 1\), a smoothing
  scale \(\rho>0\), an accuracy \(\epsilon\), and confidence parameters
  \(\delta_{\rm sm},\delta_{\rm init}\). Let
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be deterministic matrices in
  \(\mathbb R^{n\times r}\) with nonzero columns. Define their normalized
  directions
  \[
  \bar u_j=\frac{\bar a_j}{\|\bar a_j\|_2},\qquad
  \bar v_j=\frac{\bar b_j}{\|\bar b_j\|_2},\qquad
  \bar w_j=\frac{\bar c_j}{\|\bar c_j\|_2},
  \]
  the corresponding unit-column matrices \(\bar U,\bar V,\bar W\), and
  \(\bar\lambda_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\). For any
  unit-column matrix \(M=[m_1,\ldots,m_r]\), write
  \[
  q(M):=\max_{j\in[r]}\sum_{\ell\ne j}|\langle m_j,m_\ell\rangle|,
  \qquad
  \bar q:=\max_{M\in\{\bar U,\bar V,\bar W\}}q(M).
  \]

  Draw mutually independent perturbations in all modes and columns and set
  \[
  a_j=\bar a_j+g_j^{(A)},\quad
  b_j=\bar b_j+g_j^{(B)},\quad
  c_j=\bar c_j+g_j^{(C)},\qquad
  T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
  \]
  Almost surely the realized columns are nonzero. Define
  \(u_j=a_j/\|a_j\|_2\), \(v_j=b_j/\|b_j\|_2\),
  \(w_j=c_j/\|c_j\|_2\), their unit-column matrices \(U,V,W\), and
  \[
  \lambda_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,
  \qquad
  \Gamma=\frac{\max_j\lambda_j}{\min_j\lambda_j}.
  \]
  Thus \(T=\sum_j\lambda_j u_j\otimes v_j\otimes w_j\). For factor
  matrices \(X=[x_1,\ldots,x_k]\), \(Y=[y_1,\ldots,y_k]\), and
  \(Z=[z_1,\ldots,z_k]\), the source rank-\(k\) objective is
  \[
  \mathcal L_k(X,Y,Z)
  :=\frac12\left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]

  Extreme-start proposal-and-refinement ALS (EP-ALS) is the following
  data-only randomized protocol. Its universal constants
  \(C_{\rm rank},C_0,C_{\rm rep}>0\) are fixed independently of every
  exposed parameter and deterministic base triple. In one full run, draw
  \(k\) mutually independent triples of normalized standard Gaussian
  vectors
  \((p_i^{(0)},q_i^{(0)},s_i^{(0)})\in(\mathbb S^{n-1})^3\). Proposal
  slots are independent and run in parallel. Within slot \(i\), temporarily
  gate all other terms to zero and perform
  \(L_0=\lceil C_0\log\log r\rceil\) cyclic rank-one ALS sweeps. With
  \({\cal N}(h)=h/\|h\|_2\), a sweep is the projective form of three exact
  rank-one block least-squares minimizers:
  \[
  p_i^{(t+1)}={\cal N}\bigl(T(\,\cdot,q_i^{(t)},s_i^{(t)})\bigr),\qquad
  q_i^{(t+1)}={\cal N}\bigl(T(p_i^{(t+1)},\,\cdot,s_i^{(t)})\bigr),
  \]
  \[
  s_i^{(t+1)}={\cal N}\bigl(T(p_i^{(t+1)},q_i^{(t+1)},\,\cdot)\bigr).
  \]
  Normalization only fixes the CP scaling gauge; the unnormalized
  contraction in each display is the exact vector-block minimizer. A zero
  contraction makes that full run unsuccessful.

  For a target index \(j\) and a proposal state \(h=(p,q,s)\) whose three
  target pair products are nonzero, define its cyclic contamination ratio
  \[
  R_j(h):=\max_{\ell\ne j}\max\left\{
  \frac{|\langle v_\ell,q\rangle\langle w_\ell,s\rangle|}
       {|\langle v_j,q\rangle\langle w_j,s\rangle|},
  \frac{|\langle u_\ell,p\rangle\langle w_\ell,s\rangle|}
       {|\langle u_j,p\rangle\langle w_j,s\rangle|},
  \frac{|\langle u_\ell,p\rangle\langle v_\ell,q\rangle|}
       {|\langle u_j,p\rangle\langle v_j,q\rangle|}
  \right\}.
  \]
  For a proposal slot covering component \(j\), write
  \(R_t=R_j(p_i^{(t)},q_i^{(t)},s_i^{(t)})\). Coverage and finiteness of
  these ratios are proof conclusions, not input conditions.

  For the final proposal \(h_i=(p_i,q_i,s_i):=(p_i^{(L_0)},q_i^{(L_0)},
  s_i^{(L_0)})\), compute the observable score and sign-invariant last-sweep
  displacement
  \[
  \sigma_i:=|\langle T,p_i\otimes q_i\otimes s_i\rangle|,
  \qquad
  d_i:=\max\left\{
  1-|\langle p_i^{(L_0)},p_i^{(L_0-1)}\rangle|,
  1-|\langle q_i^{(L_0)},q_i^{(L_0-1)}\rangle|,
  1-|\langle s_i^{(L_0)},s_i^{(L_0-1)}\rangle|
  \right\}.
  \]
  Let \(\sigma_{\max}=\max_i\sigma_i\) and retain exactly the indices
  \(i\) with \(d_i\le64q_*\) and \(\sigma_i\ge0.85\sigma_{\max}\).
  Form a graph on retained indices, joining \(i,i'\) precisely when
  \[
  |\langle p_i,p_{i'}\rangle|,
  |\langle q_i,q_{i'}\rangle|,
  |\langle s_i,s_{i'}\rangle|\ge1-64q_*.
  \]
  Its connected components are the data-driven proposal clusters. Choose
  the largest-score member of each cluster; if there are fewer than \(r\)
  clusters, declare the run unsuccessful, and otherwise keep the
  representatives of the \(r\) highest-scoring clusters. The proof target
  below includes that a successful proposal event gives exactly one valid
  cluster per target component, so this deterministic tie-breaking and
  truncation do not use component labels.

  For a retained representative \((p_h,q_h,s_h)\), let
  \(\theta_h=\langle T,p_h\otimes q_h\otimes s_h\rangle\), and initialize
  its active CP term by the observable best-scalar fit
  \[
  x_h^{(0)}=|\theta_h|^{1/3}p_h,\qquad
  y_h^{(0)}=|\theta_h|^{1/3}q_h,\qquad
  z_h^{(0)}=\operatorname{sgn}(\theta_h)|\theta_h|^{1/3}s_h.
  \]
  Set the remaining \(k-r\) terms exactly to zero. On the active \(r\)
  columns, run cyclic CP-ALS for \(\mathcal L_k\): each mode matrix is
  replaced by its exact least-squares minimizer, using the Moore-Penrose
  selection if needed, while the other two active mode matrices are fixed.
  Let \(\odot\) denote the columnwise Khatri--Rao product and \(T_{(m)}\)
  the mode-\(m\) matricization. Equivalently, for the mode-one update,
  \[
  X\leftarrow T_{(1)}(Z\odot Y)
  \bigl((Z\odot Y)^\top(Z\odot Y)\bigr)^\dagger,
  \]
  followed cyclically by the analogous \(Y\)- and \(Z\)-updates. The zero
  padding is never updated. Stop at the first sweep whose relative residual
  is at most \(\epsilon\). Run
  \(J=\max\{1,\lceil C_{\rm rep}\log(1/\delta_{\rm init})\rceil\}\)
  independent full runs, all on the same once-drawn tensor, and return the
  smallest-residual successful output (or a failure symbol if every run is
  unsuccessful).

  Norm retention, normalized realized Gram control, realized weight balance,
  cyclic Khatri--Rao nonsingularity, rare-extreme proposal coverage, the
  component-versus-mixture score gap, cluster correctness, entry into the
  joint local basin, quotient-Hessian positivity, and terminal contraction
  are derived quantities. They are not admissibility conditions.
- Technical assumptions:
  - `assump:base-scale` (Bounded deterministic base scales): Every base
    column in every mode has norm in
    \([\kappa_0^{-1},\kappa_0]\). The exposed parameter obeys
    \(1\le\kappa_0\le r^{d_\kappa}\) for a fixed finite exponent
    \(d_\kappa\); this is the precise polynomial-scale regime, not a
    generated conditioning event.
  - `assump:cumulative-gram` (Primitive cumulative Gram interference): The
    independently checkable normalized base directions satisfy
    \[
    \bar q=\max_{M\in\{\bar U,\bar V,\bar W\}}
    \max_j\sum_{\ell\ne j}|(M^\top M)_{j\ell}|\le q_*/4.
    \]
  - `assump:base-weight-balance` (Near-balanced base weights): The static
    base weights satisfy
    \[
    \frac{\max_j\bar\lambda_j}{\min_j\bar\lambda_j}\le1+\frac1{800}.
    \]
  - `assump:gaussian-smoothing` (Source Gaussian perturbations): Mutually
    independently over \(j\in[r]\) and the three modes,
    \[
    g_j^{(A)},g_j^{(B)},g_j^{(C)}\sim
    \mathcal N(0,\rho^2 I_n/n).
    \]
    The source inverse-polynomial regime is used: \(0<\rho\le1\) and
    \(\rho^{-1}\le r^{d_\rho}\) for a fixed finite exponent \(d_\rho\).
  - `assump:smoothing-margin` (Scale-aware smoothing and dimension margin):
    The exposed parameters satisfy
    \[
    \kappa_0\rho\le\frac{q_*}{128},\qquad
    r(\kappa_0\rho+\kappa_0^2\rho^2)
    \sqrt{\frac{\log(9r^2/\delta_{\rm sm})}{n}}\le\frac{q_*}{32}.
    \]
    These are pre-run scalar inequalities; no realized Gram, weight, or
    conditioning event is assumed.
  - `assump:subquadratic-rank` (Exact EP-ALS rank): For \(r\ge3\),
    \[
    k=U(r):=\left\lceil C_{\rm rank}
    r^{5/3}(\log r)^{5/2}\right\rceil,
    \qquad r<k\le n,
    \]
    where \(C_{\rm rank}\) is universal once \(q_*\) and
    \(c=2/3\) are fixed. In particular,
    \(k/r^2=O((\log r)^{5/2}/r^{1/3})=o(1)\).
  - `assump:random-initialization` (Independent EP-ALS proposal runs):
    Conditional on the once-drawn tensor, all Gaussian proposal triples are
    mutually independent across slots, modes, and full runs, and are
    independent of the smoothing perturbations. Restarts reuse the tensor
    but reuse no proposal randomness.
  - `assump:accuracy-confidence` (Accuracy and separate confidence levels):
    \(0<\epsilon<1\), \(0<\delta_{\rm sm}<1\), and
    \(0<\delta_{\rm init}<1\). The first confidence parameter applies only
    to the once-drawn smoothed instance; the second applies only to EP-ALS
    randomness conditional on that instance.

# Formalized Goal

- Goal statement:
  In exact-goal mode, prove that there are universal choices of
  \(C_{\rm rank},C_0,C_{\rm rep}\) such that the following holds uniformly
  for every deterministic base triple satisfying `assump:base-scale`,
  `assump:cumulative-gram`, and `assump:base-weight-balance`, and for every
  exposed parameter choice satisfying `assump:gaussian-smoothing`,
  `assump:smoothing-margin`, `assump:subquadratic-rank`,
  `assump:random-initialization`, and `assump:accuracy-confidence`.
  With probability at least \(1-\delta_{\rm sm}\) over the once-drawn
  smoothed instance, all realized column norms are at least
  \((2\kappa_0)^{-1}\),
  \[
  q(U)\le q(\bar U)+3q_*/4,\quad
  q(V)\le q(\bar V)+3q_*/4,\quad
  q(W)\le q(\bar W)+3q_*/4,
  \]
  hence \(\max\{q(U),q(V),q(W)\}\le q_*\), and \(\Gamma\le1.01\).
  On the same event, each cyclic Khatri--Rao Gram, for example
  \((V\odot W)^\top(V\odot W)\), has smallest eigenvalue at least
  \(1-q_*^2\). The derivation of this instance event must keep separate the
  universal-constant linear directional contribution at scale
  \(\kappa_0\rho/\sqrt n\), the quadratic contribution at scale
  \(\kappa_0^2\rho^2/\sqrt n\), and the normalization correction at scale
  \(\kappa_0^2\rho^2\), including their row-sum and union-bound factors;
  none may be replaced by a scale-free perturbation assertion.

  Conditional on every realized instance in that event, prove from the
  primitive conditions that one full proposal run has a universal positive
  success probability. In particular, derive for each target component the
  three-mode extreme-entry probability
  \(\Omega(r^{-5/3}(\log r)^{-3/2})\), simultaneous coverage from the
  stated \(k\), and the all-three-mode cyclic ratio control
  \[
  R_{t+1}\le
  \frac{\Gamma(R_t^2+2q_*)}{1-2\Gamma q_*}
  \quad\text{from}\quad R_0\le19/20,
  \]
  rather than assuming alignment or basin membership. Also derive that the
  observable displacement/score filter and clustering rule recover one
  representative per target component, including a constant
  component-versus-mixture score gap; that the active representatives enter
  the local quotient-Hessian basin; and that active cyclic CP-ALS has a
  nonsingular local Hessian modulo CP scaling and contracts linearly until
  it reaches arbitrary relative accuracy. Consequently, with probability
  at least \(1-\delta_{\rm init}\) over the \(J\) independent EP-ALS full
  runs conditional on the fixed good instance, the returned factors have at
  most \(k=U(r)\) nonzero rank-one terms and satisfy
  \[
  \left\|T-\sum_{i=1}^k\widehat x_i\otimes\widehat y_i\otimes
  \widehat z_i\right\|_F\le\epsilon\|T\|_F.
  \]
  The total arithmetic time, including unsuccessful proposals, filtering,
  clustering, all active CP-ALS sweeps, and restarts, is bounded by an
  explicit polynomial in
  \(n,r,k,\kappa_0,\rho^{-1},\log(1/\epsilon),
  \log(1/\delta_{\rm init})\) with universal coefficients and no hidden
  dependence on the base triple or any unlisted quantity. Since
  \(k,\kappa_0,\rho^{-1}=\operatorname{poly}(r)\), this is
  \(\operatorname{poly}(n,r,\log(1/\epsilon),
  \log(1/\delta_{\rm init}))\). The rank does not grow with either
  confidence amplification parameter.

# Note

- Rigor:
  Source alignment is preserved: the tensor is the source asymmetric
  third-order CP model, the optimized loss is the source rank-\(k\)
  least-squares loss, the perturbations are the source Gaussian smoothing,
  initialization is random, the sufficient rank is exactly
  \(U(r)=O(r^{5/3}(\log r)^{5/2})\) with \(c=2/3\), runtime is polynomial,
  and the target is arbitrary relative Frobenius error with separate
  smoothed-instance and conditional initialization/restart quantifiers.
  Progress type is `conditional`: the additional static restrictions are
  `assump:cumulative-gram`, `assump:base-weight-balance`, and the
  scale-aware margins, and the protocol is staged EP-ALS rather than the
  unmodified Jacobi protocol. Materiality comes from crossing the quadratic
  threshold with the claimed rate itself, not merely placing a sharper
  theorem inside a looser envelope. The remaining source gap is removal of
  the static geometry and balance restrictions and recovery by unmodified
  parallel ALS for arbitrary or merely well-conditioned bases.

  For the explicit-rate contract, the exposed variables are
  \(n,r,k,\rho,\kappa_0,\epsilon,\delta_{\rm sm},\delta_{\rm init}\).
  The fixed quantities are \(q_*\), \(c=2/3\), the finite regime exponents
  \(d_\kappa,d_\rho\), and the three universal EP-ALS constants; no hidden
  constant may depend on the base triple. The probability mode is the
  nested high-probability statement over the once-drawn smoothed instance
  and then EP-ALS randomness conditional on that instance. The horizon mode
  is the first-residual-hitting stopping time, required to have the stated
  polynomial bound, and the norm mode is relative Frobenius norm.

  Assumption support is as follows. `assump:gaussian-smoothing` and
  `assump:accuracy-confidence` are inherited from the source smoothed model
  and requested error/probability protocol. `assump:random-initialization`
  uses the source-permitted random-start/restart interface and the rank-one
  alternating mechanism in *On the Global Convergence of the Alternating
  Least Squares Method for Rank-One Approximation to Generic Tensors*.
  `assump:subquadratic-rank` is the approved rare-proposal design: with
  \(a=10/9\) and \(b=19/18\), a fixed component's three scaled Gaussian
  correlations exceed \(\sqrt{a\log r}\) with probability
  \(\Theta(r^{-5/3}(\log r)^{-3/2})\), while competing pair products stay
  below \(b\log r\), leaving the \(20/19\) margin; multiplying by the
  proposal budget gives a \(\Theta(\log r)\) coverage exponent.
  `assump:base-scale`, `assump:cumulative-gram`,
  `assump:base-weight-balance`, and `assump:smoothing-margin` are novel,
  independently checkable primitives verified by each of these three
  branch-specific families:

  1. Equicorrelated unit frames with off-diagonal Gram entry
     \(\mu=q_*/(4(r-1))\) have row sum \(q_*/4\), \(\kappa_0=1\), and
     \(\bar\lambda_j=1\).
  2. Banded directions
     \(u_j=(e_j+\alpha e_{j+1})/\sqrt{1+\alpha^2}\),
     \(\alpha\le q_*/16\), have two-neighbor row sum at most \(q_*/4\).
     Modewise scales \((t_j,t_j^{-1},1)\) with
     \(t_j\in[\kappa_0^{-1},\kappa_0]\) keep all base scales admissible and
     give \(\bar\lambda_j=1\).
  3. Block-correlated unit directions with
     \(2\le s\le\sqrt r\), within-block off-diagonal
     \(\mu=q_*/(4(s-1))\), and zero cross-block Gram entries have row sum
     \(q_*/4\) and unit weights. Independent rotations in the three modes
     make dense asymmetric examples without changing the Gram bounds.

  For all three families, any exposed \(\rho,n,\delta_{\rm sm}\) satisfying
  the two scalar inequalities in `assump:smoothing-margin` verifies the
  scale-aware primitive condition directly. The parent local result *Local
  Convergence of the Alternating Least Squares Algorithm for Canonical Tensor
  Approximation* supports the terminal quotient-Hessian interface, but does
  not supply entry into its basin. Realized norm/Gram/weight events,
  correlated-Gaussian extreme coverage, the cyclic recurrence, score gap,
  cluster correctness, basin entry, local Hessian margin, linear
  contraction, and restart success are therefore excluded from the
  assumption inventory and remain proof obligations.
