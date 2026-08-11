# Formalized Setting

- Basic setup:
  Fix integers \(n,r\), the numerical interference threshold
  \(q_*:=1/4096\), the extreme-window constants \(a_*:=10/9\) and
  \(b_*:=19/18\), a base-scale parameter \(\kappa_0\ge1\), a smoothing
  scale \(\rho>0\), an accuracy \(\epsilon\), and confidence parameters
  \(\delta_{\rm sm},\delta_{\rm init}\). Let
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be deterministic matrices in
  \(\mathbb R^{n\times r}\) with nonzero columns. Define
  \[
  \bar u_j=\frac{\bar a_j}{\|\bar a_j\|_2},\qquad
  \bar v_j=\frac{\bar b_j}{\|\bar b_j\|_2},\qquad
  \bar w_j=\frac{\bar c_j}{\|\bar c_j\|_2},
  \]
  their unit-column matrices \(\bar U,\bar V,\bar W\), and
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
  \Gamma=\frac{\max_j\lambda_j}{\min_j\lambda_j},
  \qquad
  q_{\rm real}=\max\{q(U),q(V),q(W)\}.
  \]
  Thus \(T=\sum_j\lambda_j u_j\otimes v_j\otimes w_j\). For factor
  matrices \(X=[x_1,\ldots,x_k]\), \(Y=[y_1,\ldots,y_k]\), and
  \(Z=[z_1,\ldots,z_k]\), the source rank-\(k\) objective is
  \[
  \mathcal L_k(X,Y,Z)
  :=\frac12\left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]

  Jacobi extreme-start proposal-and-refinement ALS (JEP-ALS) is the following
  data-only randomized protocol. Its constants
  \(C_{\rm rank},C_0,C_{\rm rep}>0\) are fixed independently of every
  exposed parameter and deterministic base triple. In one full run, draw
  mutually independent raw Gaussian triples
  \((\xi_i^{(U)},\xi_i^{(V)},\xi_i^{(W)})\), each distributed as three
  independent \(\mathcal N(0,I_n)\) vectors, and initialize
  \[
  p_i^{(0)}={\cal N}(\xi_i^{(U)}),\qquad
  q_i^{(0)}={\cal N}(\xi_i^{(V)}),\qquad
  s_i^{(0)}={\cal N}(\xi_i^{(W)}),
  \quad {\cal N}(h):=h/\|h\|_2.
  \]
  For later entry analysis define the raw Gaussian coordinates
  \[
  Z_{i\ell}^{(U)}=\langle\xi_i^{(U)},u_\ell\rangle,\qquad
  Z_{i\ell}^{(V)}=\langle\xi_i^{(V)},v_\ell\rangle,\qquad
  Z_{i\ell}^{(W)}=\langle\xi_i^{(W)},w_\ell\rangle,
  \]
  and \(t_r=\sqrt{a_*\log r}\). Normalizing the raw vectors cancels from
  all same-mode coordinate ratios.

  Proposal slots are gated as sole nonzero rank-one terms and run in
  parallel. From one old state
  \(h_i^{(t)}=(p_i^{(t)},q_i^{(t)},s_i^{(t)})\), compute all three exact
  rank-one block-minimizer directions
  \[
  \widetilde p_i={\cal N}\bigl(T(\,\cdot,q_i^{(t)},s_i^{(t)})\bigr),
  \qquad
  \widetilde q_i={\cal N}\bigl(T(p_i^{(t)},\,\cdot,s_i^{(t)})\bigr),
  \]
  \[
  \widetilde s_i={\cal N}\bigl(T(p_i^{(t)},q_i^{(t)},\,\cdot)\bigr),
  \]
  and only then commit
  \(h_i^{(t+1)}=(\widetilde p_i,\widetilde q_i,\widetilde s_i)\). Thus every
  update uses the same old triple; no newly updated coordinate is reused
  within a proposal sweep. A zero contraction makes that full run
  unsuccessful. Perform \(L_0=\lceil C_0\log r\rceil\) simultaneous sweeps.

  For target \(j\) and state \(h=(p,q,s)\) with nonzero target
  correlations, define, for \(\ell\ne j\),
  \[
  A_{\ell\mid j}(p)=\frac{|\langle u_\ell,p\rangle|}
                           {|\langle u_j,p\rangle|},\qquad
  B_{\ell\mid j}(q)=\frac{|\langle v_\ell,q\rangle|}
                           {|\langle v_j,q\rangle|},\qquad
  C_{\ell\mid j}(s)=\frac{|\langle w_\ell,s\rangle|}
                           {|\langle w_j,s\rangle|}.
  \]
  When the target and state are fixed, abbreviate these ratios by
  \(A_\ell,B_\ell,C_\ell\); a superscript \(+\) denotes the ratios after
  one simultaneous proposal update.
  Set
  \[
  R_j(h)=\max_{\ell\ne j}\max\{A_{\ell\mid j}B_{\ell\mid j},
  A_{\ell\mid j}C_{\ell\mid j},B_{\ell\mid j}C_{\ell\mid j}\},
  \]
  \[
  S_j(h)=\max\left\{
  \sum_{\ell\ne j}A_{\ell\mid j}B_{\ell\mid j},
  \sum_{\ell\ne j}A_{\ell\mid j}C_{\ell\mid j},
  \sum_{\ell\ne j}B_{\ell\mid j}C_{\ell\mid j}
  \right\},
  \]
  where the arguments \((p),(q),(s)\) on the ratios are suppressed in the
  last two displays. Set \(R_j(h)=S_j(h)=+\infty\) if a target denominator
  vanishes. For a proposal slot covering component \(j\), write
  \(R_t=R_j(h_i^{(t)})\) and \(S_t=S_j(h_i^{(t)})\). Coverage, finiteness,
  recurrence validity, and angular decay are proof conclusions, not input
  conditions.

  For the final proposal \(h_i=(p_i,q_i,s_i):=h_i^{(L_0)}\), compute the
  observable score and sign-invariant last-sweep displacement
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
  \(i\) with \(d_i\le64q_*\) and \(\sigma_i\ge0.85\sigma_{\max}\). Form a
  graph on retained indices, joining \(i,i'\) precisely when
  \[
  |\langle p_i,p_{i'}\rangle|,
  |\langle q_i,q_{i'}\rangle|,
  |\langle s_i,s_{i'}\rangle|\ge1-64q_*.
  \]
  Its connected components are the data-driven proposal clusters. Choose
  the largest-score member of each cluster; if there are fewer than \(r\)
  clusters, declare the run unsuccessful, and otherwise keep the
  representatives of the \(r\) highest-scoring clusters. The proof target
  includes that selected representatives cover all target components, so
  this tie-breaking and truncation never use component labels.

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
  the mode-\(m\) matricization. For example, the mode-one update is
  \[
  X\leftarrow T_{(1)}(Z\odot Y)
  \bigl((Z\odot Y)^\top(Z\odot Y)\bigr)^\dagger,
  \]
  followed cyclically by the analogous \(Y\)- and \(Z\)-updates. The zero
  padding is never updated. Stop at the first sweep whose relative residual
  is at most \(\epsilon\). Run
  \(J=\max\{1,\lceil C_{\rm rep}\log(1/\delta_{\rm init})\rceil\}\)
  independent full runs on the same once-drawn tensor and return the
  smallest-residual successful output, or a failure symbol if every run is
  unsuccessful.

  Norm retention, realized Gram and weight control, Khatri--Rao
  nonsingularity, the windowed rare-entry event, all-component coverage,
  \(R,S\) recurrence closure, angular alignment, score separation, cluster
  correctness, local-basin entry, quotient-Hessian positivity, terminal
  contraction, and polynomial stopping are derived quantities. They are not
  admissibility conditions.
- Technical assumptions:
  - `assump:base-scale` (Bounded deterministic base scales): Every base
    column in every mode has norm in
    \([\kappa_0^{-1},\kappa_0]\). The exposed parameter obeys
    \(1\le\kappa_0\le r^{d_\kappa}\) for a fixed finite exponent
    \(d_\kappa\).
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
  - `assump:subquadratic-rank` (Exact JEP-ALS rank): For \(r\ge3\),
    \[
    k=U(r):=\left\lceil C_{\rm rank}
    r^{5/3}(\log r)^{5/2}\right\rceil,
    \qquad r<k\le n,
    \]
    where \(C_{\rm rank}\) is universal once \(q_*\) and
    \(c=2/3\) are fixed. In particular,
    \(k/r^2=O((\log r)^{5/2}/r^{1/3})=o(1)\).
  - `assump:random-initialization` (Independent JEP-ALS proposal runs):
    Conditional on the once-drawn tensor, all raw Gaussian proposal triples
    are mutually independent across slots, modes, and full runs, and are
    independent of the smoothing perturbations. Restarts reuse the tensor
    but reuse no proposal randomness.
  - `assump:accuracy-confidence` (Accuracy and separate confidence levels):
    \(0<\epsilon<1\), \(0<\delta_{\rm sm}<1\), and
    \(0<\delta_{\rm init}<1\). The first confidence parameter applies only
    to the once-drawn smoothed instance; the second applies only to JEP-ALS
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
  hence \(q_{\rm real}\le q_*\), and \(\Gamma\le1.01\). On the same
  event, every cyclic Khatri--Rao Gram, for example
  \((V\odot W)^\top(V\odot W)\), has smallest eigenvalue at least
  \(1-q_*^2\). The proof of this event must keep separate the
  universal-constant linear directional contribution at scale
  \(\kappa_0\rho/\sqrt n\), the quadratic contribution at scale
  \(\kappa_0^2\rho^2/\sqrt n\), and the normalization correction at scale
  \(\kappa_0^2\rho^2\), including their row-sum and union-bound factors.

  Conditional on every realized instance in that event, derive for each
  target component \(j\) a proposal whose three target raw coordinates lie
  in the window \([t_r,t_r+t_r^{-1}]\) in absolute value and whose
  competing coordinates satisfy
  \[
  \max_{\ell\ne j}\max\bigl\{
  |Z_{i\ell}^{(U)}Z_{i\ell}^{(V)}|,
  |Z_{i\ell}^{(U)}Z_{i\ell}^{(W)}|,
  |Z_{i\ell}^{(V)}Z_{i\ell}^{(W)}|
  \bigr\}\le b_*\log r.
  \]
  Prove that this event
  has probability \(\Theta(r^{-5/3}(\log r)^{-3/2})\) per slot and target,
  with universal comparison constants under the realized cumulative-Gram
  bound, and that the stated \(k\) gives simultaneous all-component coverage
  with a universal positive one-run probability. For every covering slot,
  derive \(R_0\le b_*/a_*=19/20\), \(S_0\le rR_0\), and, whenever
  \(\Gamma R_t<1\), the simultaneous Jacobi recurrences
  \[
  R_{t+1}\le
  \left(\frac{\Gamma R_t+q_{\rm real}}
  {1-\Gamma q_{\rm real}R_t}\right)^2,
  \]
  \[
  S_{t+1}\le
  \frac{(\Gamma R_t+q_{\rm real})
  (\Gamma(1+q_{\rm real})S_t+q_{\rm real})}
  {(1-\Gamma q_{\rm real}R_t)^2}.
  \]
  Prove noncircularly that \(\Gamma R_t<1\) persists through all
  \(L_0\) proposal sweeps, that \(R_t\le6\times10^{-8}\) after a universal
  number of sweeps and remains at that numerical floor scale, and that the
  resulting \(S_t\)-coefficient is below \(1/4000\). Use the remaining
  \(O(\log r)\) sweeps to turn \(S_0\le rR_0\) into an explicit
  \(r\)-uniform three-mode angular and last-sweep-displacement certificate.

  From that derived certificate, prove a constant component-versus-mixture
  score gap, correctness of the observable filter and graph clustering, and
  data-driven selection of one representative per target component. Prove
  that the selected best-scalar representatives enter the joint local
  quotient-Hessian basin and that active cyclic CP-ALS has a nonsingular
  Hessian modulo CP scaling and contracts linearly to arbitrary relative
  accuracy. Consequently, with probability at least
  \(1-\delta_{\rm init}\) over the \(J\) independent JEP-ALS full runs
  conditional on the fixed good instance, the returned factors have at most
  \(k=U(r)\) nonzero rank-one terms and satisfy
  \[
  \left\|T-\sum_{i=1}^k\widehat x_i\otimes\widehat y_i\otimes
  \widehat z_i\right\|_F\le\epsilon\|T\|_F.
  \]
  The orthogonal equal-weight specialization must preserve the exact
  simultaneous baseline map
  \((A_\ell^+,B_\ell^+,C_\ell^+)=(B_\ell C_\ell,
  A_\ell C_\ell,A_\ell B_\ell)\), and hence the baseline conclusions
  \(R_{t+1}\le R_t^2\) and \(S_{t+1}\le R_tS_t\), rather than replacing
  them by a conservative remainder.

  The total arithmetic time, including all \(L_0\)-sweep proposal slots,
  unsuccessful runs, filtering, clustering, active CP-ALS sweeps, and
  restarts, is bounded by an explicit polynomial in
  \(n,r,k,\kappa_0,\rho^{-1},\log(1/\epsilon),
  \log(1/\delta_{\rm init})\). Hidden concentration, conditioning, and
  runtime constants may depend at most polynomially on \(\kappa_0\), and
  on no base triple or unlisted quantity; the rank constant is universal.
  Since \(k,\kappa_0,\rho^{-1}=\operatorname{poly}(r)\), the specialized
  runtime is \(\operatorname{poly}(n,r,\log(1/\epsilon),
  \log(1/\delta_{\rm init}))\). Restarts and the longer proposal horizon do
  not alter \(U(r)\).

# Note

- Rigor:
  This is the same exact-goal, conditional theorem contract as the preceding
  branch except for its approved target-preserving dynamic delta: JEP-ALS
  uses simultaneous old-state proposal contractions, the valid \(R,S\)
  interfaces above, and \(L_0=\lceil C_0\log r\rceil\). The asymmetric
  source tensor, rank-\(k\) least-squares loss, bounded base scale,
  cumulative-Gram and near-balance primitives, source Gaussian smoothing,
  observable filtering and clustering, active-\(r\) cyclic CP-ALS, zero
  padding, exact rank \(U(r)=O(r^{5/3}(\log r)^{5/2})\) with \(c=2/3\),
  arbitrary relative Frobenius error, nested instance/initialization
  probabilities, restart protocol, and polynomial runtime are unchanged.
  Source alignment is therefore preserved. Progress type is `conditional`;
  the remaining source gap is removal of the static restrictions and recovery
  by unmodified parallel ALS. Materiality remains the strictly subquadratic
  claimed rate itself; the \(O(\log r)\) proposal horizon changes runtime but
  not rank.

  The explicit-rate variables are
  \(n,r,k,\rho,\kappa_0,\epsilon,\delta_{\rm sm},\delta_{\rm init}\).
  Fixed quantities are \(q_*\), \(a_*\), \(b_*\), \(c=2/3\), the finite
  regime exponents \(d_\kappa,d_\rho\), and the three JEP-ALS constants.
  The rank constant and all rare-event comparison constants are universal;
  other allowed hidden dependence is at most polynomial in the exposed
  \(\kappa_0\), never in the bases or an unlisted quantity. Probability mode
  is high probability over one smoothed instance followed by high probability
  over independent JEP-ALS runs conditional on that fixed instance. Horizon
  mode is a fixed \(L_0=O(\log r)\) proposal phase followed by the first
  relative-residual-hitting stopping time and \(O(\log(1/\delta_{\rm init}))\)
  restarts. Norm mode is relative Frobenius norm. Baseline invariance is
  explicit in the goal: at \(q_{\rm real}=0\) and \(\Gamma=1\), the exact
  Jacobi map supplies \(R^+\le R^2\), \(S^+\le RS\), and the same
  zero-residual arbitrary-accuracy conclusion.

  Assumption support is as follows. `assump:gaussian-smoothing` and
  `assump:accuracy-confidence` are inherited from the source model and
  requested error/probability protocol. `assump:random-initialization` and
  the simultaneous proposal convention are supported by the Jacobi-style
  parallel ALS interface in *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions*. Terminal active refinement is
  supported conditionally by *Local Convergence of the Alternating Least
  Squares Algorithm for Canonical Tensor Approximation*; basin entry remains
  to be proved. `assump:subquadratic-rank` is supported by the approved
  window calculation: the target window has probability
  \(\Theta(r^{-5/3}(\log r)^{-3/2})\), competing pair products stay below
  \(b_*\log r\), and \(k\) supplies a \(\Theta(\log r)\) coverage exponent.
  `assump:base-scale`, `assump:cumulative-gram`,
  `assump:base-weight-balance`, and `assump:smoothing-margin` are novel,
  independently checkable primitives verified by all three approved
  families: equicorrelated unit frames with off-diagonal
  \(q_*/(4(r-1))\); two-neighbor banded frames with
  \(\alpha\le q_*/16\) and reciprocal modewise scales
  \((t_j,t_j^{-1},1)\); and block-correlated frames with
  \(2\le s\le\sqrt r\), within-block off-diagonal
  \(q_*/(4(s-1))\), and independent mode rotations. These have row sum at
  most \(q_*/4\), admissible scales, and equal base weights, and the scalar
  smoothing margins are checked directly from \((\rho,n,\delta_{\rm sm})\).
  In each family the gated simultaneous map has the displayed \(R,S\)
  expansion and the orthogonal specialization gives exact squaring.
  Realized geometry, rare coverage, recurrence closure, angular alignment,
  filtering, clustering, basin entry, local Hessian margin, linear
  convergence, one-run success, restart amplification, and stopping time are
  excluded from the assumption inventory and remain proof obligations.
