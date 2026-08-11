# Formalized Setting

- Basic setup:
  Fix \(r\ge 3\), \(n\), the numerical interference threshold
  \(q_*:=1/4096\), the extreme-window constants \(a_*:=10/9\) and
  \(b_*:=19/18\), a base-scale parameter \(\kappa _0\ge 1\), a smoothing
  scale \(\rho>0\), an accuracy \(\epsilon\), and confidence parameters
  \(\delta_{\rm sm},\delta_{\rm init}\).  Let
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be deterministic matrices in
  \(\mathbb R^{n\times r}\) with nonzero columns.  Define
  \[
  \bar u_j={\bar a_j\over\|\bar a_j\|_2},\qquad
  \bar v_j={\bar b_j\over\|\bar b_j\|_2},\qquad
  \bar w_j={\bar c_j\over\|\bar c_j\|_2},
  \]
  and write \(\bar U=[\bar u_j]\), \(\bar V=[\bar v_j]\),
  \(\bar W=[\bar w_j]\), and
  \(\bar\lambda_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\).  For a
  unit-column matrix \(M=[m_1,\ldots,m_r]\), set
  \[
  q(M):=\max_{j\in[r]}\sum_{\ell\ne j}|\langle m_j,m_\ell\rangle|,\qquad
  \bar q:=\max_{M\in\{\bar U,\bar V,\bar W\}}q(M).
  \]

  Draw perturbations independently over columns and modes,
  \(g_j^{(A)},g_j^{(B)},g_j^{(C)}\), and set
  \[
  a_j=\bar a_j+g_j^{(A)},\quad b_j=\bar b_j+g_j^{(B)},\quad
  c_j=\bar c_j+g_j^{(C)},\qquad
  T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
  \]
  Almost surely the realized columns are nonzero.  Put
  \[
  u_j={a_j\over\|a_j\|_2},\quad v_j={b_j\over\|b_j\|_2},\quad
  w_j={c_j\over\|c_j\|_2},\quad U=[u_j],\ V=[v_j],\ W=[w_j],
  \]
  \[
  \lambda_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,\qquad
  \Gamma={\max_j\lambda_j\over\min_j\lambda_j},\qquad
  q_{\rm real}:=\max\{q(U),q(V),q(W)\}.
  \]
  Thus \(T=\sum_j\lambda_j u_j\otimes v_j\otimes w_j\).  For
  \(X\in\mathbb R^{n\times k}\), \(Y\in\mathbb R^{n\times k}\), and
  \(Z\in\mathbb R^{n\times k}\), the source objective is
  \[
  {\cal L}_k(X,Y,Z):={1\over2}\left\|T-\sum_{i=1}^k
  x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]

  **SC-JEP-ALS proposal phase.**  Fix universal constants
  \(C_{\rm rank},C_{\rm burn},C_{\rm cert},C_{\rm rep}>0\), put
  \[
  k=U(r):=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil,\quad
  L_{\rm burn}:=\lceil C_{\rm burn}\log r\rceil,\quad
  L_{\rm cert}:=\lceil C_{\rm cert}\log r\rceil,\quad
  L_{\rm prop}:=L_{\rm burn}+L_{\rm cert}.
  \]
  In one full run draw mutually independent triples of raw Gaussian vectors
  \((\xi_i^{(U)},\xi_i^{(V)},\xi_i^{(W)})\), \(i\in[k]\), with each vector
  distributed as \({\cal N}(0,I_n)\), and initialize
  \(p_i^0={\cal N}(\xi_i^{(U)}),q_i^0={\cal N}(\xi_i^{(V)}),\)
  \(s_i^0={\cal N}(\xi_i^{(W)})\), where \({\cal N}(x)=x/\|x\|_2\).
  Define the raw coordinates and window level
  \[
  Z_{i\ell}^{(U)}=\langle\xi_i^{(U)},u_\ell\rangle,\quad
  Z_{i\ell}^{(V)}=\langle\xi_i^{(V)},v_\ell\rangle,\quad
  Z_{i\ell}^{(W)}=\langle\xi_i^{(W)},w_\ell\rangle,\qquad
  t_r:=\sqrt{a_*\log r}.
  \]
  Normalization of an initial vector cancels from all same-mode coordinate
  ratios.

  For a state \(h=(p,q,s)\) of unit vectors define the simultaneous,
  old-state Jacobi map
  \[
  {\cal J}(h)=({\cal J}_U(h),{\cal J}_V(h),{\cal J}_W(h))
  :=\left({T(\cdot,q,s)\over\|T(\cdot,q,s)\|_2},
  {T(p,\cdot,s)\over\|T(p,\cdot,s)\|_2},
  {T(p,q,\cdot)\over\|T(p,q,\cdot)\|_2}\right),
  \]
  whenever all three contractions are nonzero.  For each mode
  \(M\in\{U,V,W\}\), use the projective residual
  \[
  \zeta_M(h):=\min_{\varepsilon\in\{\pm1\}}\|h_M-\varepsilon{\cal J}_M(h)\|_2,\qquad
  \zeta(h):=\max_{M\in\{U,V,W\}}\zeta_M(h),\qquad
  \tau_r:={q_*^2\over 10^4r}.
  \]
  A proposal slot is gated as one sole nonzero rank-one term.  From an old
  state \(h_i^t=(p_i^t,q_i^t,s_i^t)\), compute all three entries of
  \({\cal J}(h_i^t)\) from that same old state and commit them together:
  \(h_i^{t+1}:={\cal J}(h_i^t)\).  A zero contraction makes the run
  unsuccessful.  Perform the first \(L_{\rm burn}\) commits without a
  certification decision.  For \(t=L_{\rm burn},\ldots,L_{\rm prop}\),
  evaluate \(\zeta(h_i^t)\) before committing the next state; store the first
  state with \(\zeta(h_i^t)\le\tau_r\), and otherwise commit
  \(h_i^{t+1}={\cal J}(h_i^t)\) when \(t<L_{\rm prop}\).  A slot that has
  no certified state in this window is discarded.  The stored state itself,
  rather than its look-ahead image, is the carried state; the look-ahead is
  used only in evaluating \(\zeta\).

  For a target \(j\) and a state \(h=(p,q,s)\) with nonzero target
  correlations, define, for \(\ell\ne j\),
  \[
  A_{\ell\mid j}(p):={|\langle u_\ell,p\rangle|\over|\langle u_j,p\rangle|},\quad
  B_{\ell\mid j}(q):={|\langle v_\ell,q\rangle|\over|\langle v_j,q\rangle|},\quad
  C_{\ell\mid j}(s):={|\langle w_\ell,s\rangle|\over|\langle w_j,s\rangle|}.
  \]
  Write \(A_\ell,B_\ell,C_\ell\) when \(j,h\) are fixed, and use a superscript
  \(+\) for the ratios after one simultaneous commit.  Define
  \[
  R_j(h):=\max_{\ell\ne j}\max\{A_{\ell\mid j}B_{\ell\mid j},
  A_{\ell\mid j}C_{\ell\mid j},B_{\ell\mid j}C_{\ell\mid j}\},
  \]
  \[
  S_j(h):=\max\left\{\sum_{\ell\ne j}A_{\ell\mid j}B_{\ell\mid j},
  \sum_{\ell\ne j}A_{\ell\mid j}C_{\ell\mid j},\sum_{\ell\ne j}B_{\ell\mid j}C_{\ell\mid j}\right\}.
  \]
  Set \(R_j=S_j=+\infty\) if a target denominator vanishes.  These are
  trajectory quantities, not assumptions.

  Let \({\cal I}_{\rm cert}\) be the slots with a stored certified state
  \(h_i=(p_i,q_i,s_i)\), and define
  \(\sigma_i:=|\langle T,p_i\otimes q_i\otimes s_i\rangle|\) and
  \(\sigma_{\max}:=\max_{i\in{\cal I}_{\rm cert}}\sigma_i\).  If
  \({\cal I}_{\rm cert}=\varnothing\), the run is unsuccessful.  Otherwise
  retain \(i\in{\cal I}_{\rm cert}\) exactly when
  \(\sigma_i\ge0.85\sigma_{\max}\).  Join two retained slots when all three
  absolute modewise inner products are at least \(1-64q_*\).  The connected
  components of this graph are the certified proposal clusters.  The run is
  declared unsuccessful unless there are exactly \(r\) clusters.  In each
  cluster choose the member of minimum \(\zeta\), breaking ties by score, and
  order the resulting representatives arbitrarily as \(h_a=(p_a,q_a,s_a)\),
  \(a\in[r]\).  No target labels are used by this rule.

  For later same-state bookkeeping, put \(P=[p_a]\), \(Q=[q_a]\), \(S=[s_a]\),
  \(P_U=P,P_V=Q,P_W=S\), and \(G_U=U,G_V=V,G_W=W\).  For each mode \(M\),
  let \(M',M''\) denote the other two modes and define the same-state pair
  coefficient matrix
  \[
  K_M:=\operatorname{diag}(\lambda)\bigl((G_{M'}^\top P_{M'})\circ
  (G_{M''}^\top P_{M''})\bigr),
  \]
  where \(\circ\) is the Hadamard product.  Let
  \(D_M:=\operatorname{diag}(\|G_MK_M(:,a)\|_2:a\in[r])\).  The
  certificate signs are chosen columnwise and the corresponding normalized
  residual matrix is denoted \({\cal R}_M\); thus the exact same-state
  normal-equation form is \(P_MD_M=G_MK_M+{\cal R}_M\) after those signs.
  For a matrix \(H\), define
  \(\|H\|_{\rm row,1}:=\max_i\sum_j|H_{ij}|\) and
  \(\|H\|_{\rm col,1}:=\max_j\sum_i|H_{ij}|\).
  This notation records the interface to be proved; no row/column residual
  bound is assumed here.

  For each representative \(h_a\), set
  \(\theta_a:=\langle T,p_a\otimes q_a\otimes s_a\rangle\) and initialize
  \[
  x_a^0=|\theta_a|^{1/3}p_a,\quad y_a^0=|\theta_a|^{1/3}q_a,\quad
  z_a^0=\operatorname{sgn}(\theta_a)|\theta_a|^{1/3}s_a.
  \]
  Set the other \(k-r\) columns exactly to zero and never update them.  On
  the active \(r\) columns, cyclic CP-ALS for \({\cal L}_k\) uses exact
  least-squares mode updates (Moore--Penrose selection in a singular branch),
  e.g.
  \[
  X\leftarrow T_{(1)}(Z\odot Y)\bigl((Z\odot Y)^\top(Z\odot Y)\bigr)^\dagger,
  \]
  followed cyclically by the analogous \(Y,Z\) updates.  Stop at the first
  sweep with relative residual at most \(\epsilon\).  Repeat complete runs
  independently \(J:=\max\{1,\lceil C_{\rm rep}\log(1/\delta_{\rm init})\rceil\}\)
  times on the same tensor and return the smallest-residual successful output.

  **Proof-only chronological quotient assembly.**  This construction does not
  modify the preceding SC-JEP-ALS procedure.  On the generated part of the
  active refinement trajectory lying in the exact target spans and in the
  fixed target-permutation/sign chart, quotient active factor triples
  \((X_U,X_V,X_W):=(X,Y,Z)\) by positive componentwise scalings
  \((D_U,D_V,D_W)\) satisfying \(D_UD_VD_W=I\).  For nonzero active columns,
  let
  \[
  \gamma_j:=\prod_{M\in\{U,V,W\}}\|X_M(:,j)\|_2,
  \qquad s_j:=\log(\gamma_j/\lambda_j).
  \]
  Canonical equal-norm balancing replaces the three columns representing
  component \(j\) by columns of norm \(\gamma_j^{1/3}\), preserving their
  rank-one product and hence preserving the literal ALS quotient orbit.  If
  \(\Pi_M\) denotes the resulting oriented unit-direction matrix, write
  uniquely on the generated target-span chart
  \[
  \Pi_M=G_M(I+C_M),\qquad
  e=(C_U,C_V,C_W,s).
  \]
  Thus \(s\) is one gauge-invariant represented-product register shared by all
  three mode records, rather than three independent mode amplitudes.

  Let \({\cal U}_M^q\) denote the proof-coordinate output of the literal exact
  mode-\(M\) least-squares solve followed by this product-preserving canonical
  representation; it returns the newly solved direction coordinate and the
  newly represented common product coordinate.  Starting from
  \(e^t=(C_U^t,C_V^t,C_W^t,s^t)\), define the proof-only refresh sequence
  chronologically by
  \[
  (C_U^+,s_U^+)={\cal U}_U^q(e^t),\qquad
  e_U={\rm Refresh}_s^U(e^t;C_U^+,s_U^+)
      :=(C_U^+,C_V^t,C_W^t,s_U^+),
  \]
  \[
  (C_V^+,s_V^+)={\cal U}_V^q(e_U),\qquad
  e_V={\rm Refresh}_s^V(e_U;C_V^+,s_V^+)
      :=(C_U^+,C_V^+,C_W^t,s_V^+),
  \]
  \[
  (C_W^+,s_W^+)={\cal U}_W^q(e_V),\qquad
  e_W={\rm Refresh}_s^W(e_V;C_W^+,s_W^+)
      :=(C_U^+,C_V^+,C_W^+,s_W^+).
  \]
  Each refresh overwrites the preceding historical product value globally
  before the next held-input solve; only \(s_W^+\) survives in the completed
  state.  Define the quotient full-sweep map by
  \(\Psi^q(e^t):=e_W\).  For two such quotient states \(e,\widetilde e\), put
  \(\Delta C_M=C_M-\widetilde C_M\), \(\Delta s=s-\widetilde s\), and define
  \[
  d_Q(e,\widetilde e):=\max\!\left\{
  \max_{M\in\{U,V,W\}}\left(
  \|\Delta C_M\|_{\rm row,1}\vee
  \|\Delta C_M\|_{\rm col,1}\vee
  \max_j\|G_M\Delta C_M(:,j)\|_2\right),
  \|\Delta s\|_\infty\right\}.
  \]
  Exact target-span entry and invariance, exact block-scale equivariance, the
  quotient equivalence of every refreshed intermediate state to the
  corresponding literal ALS state, and contraction of \(\Psi^q\) in \(d_Q\)
  are derived proof obligations, not admissibility conditions.

  Norm retention, realized Gram and weight control, Khatri--Rao conditioning,
  window coverage, recurrence closure, certification, score separation,
  clustering, basin entry, local contraction, and stopping are derived
  quantities rather than admissibility conditions.
- Technical assumptions:
  - assump:base-scale (Bounded deterministic base scales): Every base column in every mode has norm in \([\kappa_0^{-1},\kappa_0]\), with \(1\le\kappa_0\le r^{d_\kappa}\) for a fixed finite \(d_\kappa\).
  - assump:cumulative-gram (Primitive cumulative Gram interference): \(\bar q\le q_*/4\).
  - assump:base-weight-balance (Near-balanced base weights): \(\max_j\bar\lambda_j/\min_j\bar\lambda_j\le1+1/800\).
  - assump:gaussian-smoothing (Source Gaussian perturbations): The \(3r\) perturbations are mutually independent and \(g_j^{(M)}\sim{\cal N}(0,\rho^2I_n/n)\) for \(M\in\{A,B,C\}\), with \(0<\rho\le1\) and \(\rho^{-1}\le r^{d_\rho}\) for a fixed finite \(d_\rho\).
  - assump:smoothing-margin (Scale-aware smoothing and dimension margin):
    \[
    \kappa_0\rho\le q_*/128,\qquad
    r(\kappa_0\rho+\kappa_0^2\rho^2)\sqrt{\frac{\log(9r^2/\delta_{\rm sm})}{n}}\le q_*/32.
    \]
    These are pre-run scalar inequalities; no realized geometry or conditioning event is assumed.
  - assump:subquadratic-rank (Exact SC-JEP-ALS rank): \(k=U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\) and \(r<k\le n\). Hence \(k/r^2=O((\log r)^{5/2}/r^{1/3})=o(1)\).
  - assump:random-initialization (Independent proposal and restart randomness): Conditional on the once-drawn tensor, all raw Gaussian triples are mutually independent across slots, modes, and full runs, and independent of the smoothing perturbations; restarts reuse the tensor but no proposal randomness.
  - assump:accuracy-confidence (Accuracy and separate confidence levels): \(0<\epsilon<1\), \(0<\delta_{\rm sm}<1\), and \(0<\delta_{\rm init}<1\), with the two confidence parameters applying respectively to the instance and conditional initialization/restart randomness.

# Formalized Goal

- Goal statement:
  In exact-goal mode, prove that universal choices of
  \(C_{\rm rank},C_{\rm burn},C_{\rm cert},C_{\rm rep}\) give the following
  theorem uniformly over every deterministic base triple satisfying
  assump:base-scale, assump:cumulative-gram, and assump:base-weight-balance,
  and every parameter choice satisfying the remaining assumptions.  With
  probability at least \(1-\delta_{\rm sm}\) over the once-drawn smoothed
  instance, all realized columns have norm at least \((2\kappa_0)^{-1}\),
  \(q_{\rm real}\le q_*\), \(\Gamma\le1.01\), and every cyclic Khatri--Rao
  Gram has smallest eigenvalue at least \(1-q_*^2\).  The proof must expose
  separately the linear directional, quadratic, and normalization contributions
  at the scales \(\kappa_0\rho/\sqrt n\), \(\kappa_0^2\rho^2/\sqrt n\), and
  \(\kappa_0^2\rho^2\), including row-sum and union-bound factors.

  Conditional on each such fixed instance, a proposal slot and target have a
  jointly observable window event in which all three target raw coordinates
  lie in \([t_r,t_r+t_r^{-1}]\) in absolute value and every competing pair
  product is at most \(b_*\log r\).  Its probability is
  \(\Theta(r^{-5/3}(\log r)^{-3/2})\) with universal comparison constants;
  \(k=U(r)\) gives a universal positive one-run probability of simultaneous
  all-component coverage.  Every covered slot satisfies \(R_0\le b_*/a_*=19/20\),
  \(S_0\le rR_0\), and, whenever \(\Gamma R_t<1\),
  \[
  R_{t+1}\le\left({\Gamma R_t+q_{\rm real}\over
  1-\Gamma q_{\rm real}R_t}\right)^2,\qquad
  S_{t+1}\le{(\Gamma R_t+q_{\rm real})\{\Gamma(1+q_{\rm real})S_t+q_{\rm real}\}\over(1-\Gamma q_{\rm real}R_t)^2}.
  \]
  Establish noncircular persistence of the denominator condition, chart
  contraction, and \(O(\log r)\) burn/certification sweeps yielding a stored
  state with \(\zeta\le\tau_r\).  Certified high-score clustering must select
  one representative per target component without labels.

  For the selected matrices \(P,Q,S\), derive the exact same-state
  coefficient/normal-equation expansion encoded by \(K_M,D_M\) above, with
  pair coefficients formed from the same stored directions.  After separating
  the static pair forcing from the certificate residual, the resulting
  residual has both induced row and column mass
  \(O(q_{\rm real}^2+r\tau_r)=O(q_*^2)\), and the induced coefficient error and
  observable best-scalar initialization enter a sourced local quotient-ALS
  basin.  After the generated first cyclic sweep enters the exact target
  spans, prove exact scale equivariance of each quotient block solve and prove
  that the chronological sequence \(e^t\mapsto e_U\mapsto e_V\mapsto e_W\)
  is quotient-equivalent to the literal \(U,V,W\) ALS sequence, so that
  \(\Psi^q(e^t)=(C_U^+,C_V^+,C_W^+,s_W^+)\) is one legal common-product state
  and its full-sweep contraction is measured by the defined \(d_Q\).  Active
  cyclic CP-ALS then has a nonsingular Hessian modulo scaling, contracts
  linearly to arbitrary relative Frobenius accuracy, and has a polynomial
  stopping time.  With probability at least \(1-\delta_{\rm init}\)
  over the \(J\) independent full runs conditional on the good instance, the
  returned tensor has at most \(k=U(r)\) nonzero terms and satisfies
  \[
  \left\|T-\sum_{i=1}^k\widehat x_i\otimes\widehat y_i\otimes\widehat z_i\right\|_F
  \le\epsilon\|T\|_F.
  \]
  The runtime, including proposal, certification, filtering, clustering,
  active refinement, unsuccessful runs, and restarts, is polynomial in
  \(n,r,k,\kappa_0,\rho^{-1},\log(1/\epsilon),\log(1/\delta_{\rm init})\),
  with no hidden dependence on the base triple or an unlisted generated
  condition number.  In the orthogonal equal-weight baseline
  \(q_{\rm real}=0,\Gamma=1\), the exact projective map obeys
  \((A_\ell^+,B_\ell^+,C_\ell^+)=(B_\ell C_\ell,A_\ell C_\ell,A_\ell B_\ell)\),
  hence \(R_{t+1}\le R_t^2\), \(S_{t+1}\le R_tS_t\), certified fixed points
  have zero same-state residual, every chronological refresh has
  \(s_U^+=s_V^+=s_W^+=0\), and the final residual can tend to zero as
  \(\epsilon\downarrow0\).

# Note

- Rigor:
  The formalization preserves the approved source alignment: asymmetric
  third-order CP least squares, source Gaussian smoothing, random
  initialization, strictly subquadratic rank
  \(U(r)=O(r^{5/3}(\log r)^{5/2})\), arbitrary relative error, polynomial
  runtime, and separate instance/conditional-initialization/restart
  quantifiers.  Progress type is conditional; materiality is the retained
  strictly subquadratic sufficient-rank rate and arbitrary-accuracy objective.
  The only semantic delta from perspective_1/idea_5 is the explicit proof-only
  chronological \({\rm Refresh}_s\) assembly of the common represented-product
  register.  It changes no primitive assumption, SC-JEP-ALS update, theorem
  mode, rate, probability protocol, success criterion, or baseline conclusion.

  Assumption support: assump:gaussian-smoothing and
  assump:accuracy-confidence are inherited from the source model and
  requested protocol; assump:random-initialization and simultaneous Jacobi
  contractions follow the parallel ALS interface in *Guarantees for
  Alternating Least Squares in Overparameterized Tensor Decompositions*;
  terminal cyclic refinement is conditionally supported by Uschmajew,
  *Local Convergence of the Alternating Least Squares Algorithm for Canonical
  Tensor Approximation*.  assump:subquadratic-rank is supported by the
  approved window calculation.  assump:base-scale,
  assump:cumulative-gram, assump:base-weight-balance, and
  assump:smoothing-margin are novel, independently checkable primitives
  verified in the recorded equicorrelated, two-neighbor banded, and
  block-correlated families (with the orthogonal equal-weight family as the
  baseline); the stationarity certificate itself is example-verified in all
  four families.  The refresh identity is directly checkable in those same
  four families and is a representation identity rather than an additional
  theorem-facing condition.  Realized geometry, coverage, recurrence closure,
  certification success, score/cluster correctness, same-state row/column
  control, basin entry, target-span invariance, refreshed-state quotient
  equivalence, full-sweep contraction, and stopping remain proof obligations,
  not assumptions.
