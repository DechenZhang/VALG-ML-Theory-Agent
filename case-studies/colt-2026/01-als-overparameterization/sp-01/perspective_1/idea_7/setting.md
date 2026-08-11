# Formalized Setting

- Basic setup:
  Fix \(r\ge 3\), \(n\), the numerical interference threshold
  \(q_*:=1/4096\), the extreme-window constants \(a_*:=10/9\) and
  \(b_*:=19/18\), a base-scale parameter \(\kappa_0\ge 1\), a smoothing
  scale \(\rho>0\), an accuracy \(\epsilon\), and confidence parameters
  \(\delta_{\rm sm},\delta_{\rm init}\). Let
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be deterministic matrices in
  \(\mathbb R^{n\times r}\) with nonzero columns. Define
  \[
  \bar u_j={\bar a_j\over\|\bar a_j\|_2},\qquad
  \bar v_j={\bar b_j\over\|\bar b_j\|_2},\qquad
  \bar w_j={\bar c_j\over\|\bar c_j\|_2},
  \]
  and write \(\bar U=[\bar u_j]\), \(\bar V=[\bar v_j]\),
  \(\bar W=[\bar w_j]\), and
  \(\bar\lambda_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\). For a
  unit-column matrix \(M=[m_1,\ldots,m_r]\), set
  \[
  q(M):=\max_{j\in[r]}\sum_{\ell\ne j}|\langle m_j,m_\ell\rangle|,
  \qquad
  \bar q:=\max_{M\in\{\bar U,\bar V,\bar W\}}q(M).
  \]

  Draw perturbations independently over columns and modes and set
  \[
  a_j=\bar a_j+g_j^{(A)},\quad b_j=\bar b_j+g_j^{(B)},\quad
  c_j=\bar c_j+g_j^{(C)},\qquad
  T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
  \]
  Almost surely the realized columns are nonzero. Put
  \[
  u_j={a_j\over\|a_j\|_2},\quad v_j={b_j\over\|b_j\|_2},\quad
  w_j={c_j\over\|c_j\|_2},\quad U=[u_j],\ V=[v_j],\ W=[w_j],
  \]
  \[
  \lambda_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,\qquad
  D_\lambda:=\operatorname{diag}(\lambda_1,\ldots,\lambda_r),
  \]
  \[
  \Gamma={\max_j\lambda_j\over\min_j\lambda_j},\qquad
  q_{\rm real}:=\max\{q(U),q(V),q(W)\}.
  \]
  Thus \(T=\sum_j\lambda_j u_j\otimes v_j\otimes w_j\). For
  \(X\in\mathbb R^{n\times k}\), \(Y\in\mathbb R^{n\times k}\), and
  \(Z\in\mathbb R^{n\times k}\), the source objective is
  \[
  {\cal L}_k(X,Y,Z):={1\over2}\left\|T-\sum_{i=1}^k
  x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]

  **SL-SC-JEP-ALS proposal and certification.** Fix universal constants
  \(C_{\rm rank},C_{\rm burn},C_{\rm cert},C_{\rm stop},C_{\rm rep}>0\),
  and put
  \[
  k=U(r):=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil,
  \quad L_{\rm burn}:=\lceil C_{\rm burn}\log r\rceil,
  \]
  \[
  L_{\rm cert}:=\lceil C_{\rm cert}\log r\rceil,\qquad
  L_{\rm prop}:=L_{\rm burn}+L_{\rm cert},
  \quad \tau_r:={q_*^2\over10^4r},
  \quad \omega:=q_*^2+r\tau_r.
  \]
  In one full run draw mutually independent triples of raw Gaussian vectors
  \((\xi_i^{(U)},\xi_i^{(V)},\xi_i^{(W)})\), \(i\in[k]\), with each vector
  distributed as \({\cal N}(0,I_n)\), and initialize
  \(p_i^0={\cal N}(\xi_i^{(U)})\),
  \(q_i^0={\cal N}(\xi_i^{(V)})\), and
  \(s_i^0={\cal N}(\xi_i^{(W)})\), where
  \({\cal N}(x)=x/\|x\|_2\). Define
  \[
  Z_{i\ell}^{(U)}=\langle\xi_i^{(U)},u_\ell\rangle,\quad
  Z_{i\ell}^{(V)}=\langle\xi_i^{(V)},v_\ell\rangle,\quad
  Z_{i\ell}^{(W)}=\langle\xi_i^{(W)},w_\ell\rangle,
  \qquad t_r:=\sqrt{a_*\log r}.
  \]
  Normalization cancels from all same-mode coordinate ratios.

  For a state \(h=(p,q,s)\) of unit vectors define the simultaneous
  old-state Jacobi map
  \[
  {\cal J}(h)=({\cal J}_U(h),{\cal J}_V(h),{\cal J}_W(h))
  :=\left({T(\cdot,q,s)\over\|T(\cdot,q,s)\|_2},
  {T(p,\cdot,s)\over\|T(p,\cdot,s)\|_2},
  {T(p,q,\cdot)\over\|T(p,q,\cdot)\|_2}\right)
  \]
  whenever all three contractions are nonzero. For each mode define
  \[
  \zeta_M(h):=\min_{\varepsilon\in\{\pm1\}}
  \|h_M-\varepsilon{\cal J}_M(h)\|_2,\qquad
  \zeta(h):=\max_{M\in\{U,V,W\}}\zeta_M(h).
  \]
  A proposal slot is gated as one sole nonzero rank-one term. From an old
  state \(h_i^t=(p_i^t,q_i^t,s_i^t)\), compute all three entries of
  \({\cal J}(h_i^t)\) from that same state and commit them together. A zero
  contraction makes the run unsuccessful. Perform the first
  \(L_{\rm burn}\) commits without a certification decision. For
  \(t=L_{\rm burn},\ldots,L_{\rm prop}\), evaluate \(\zeta(h_i^t)\) before
  the next commit; store the first state with \(\zeta(h_i^t)\le\tau_r\), and
  otherwise commit \(h_i^{t+1}={\cal J}(h_i^t)\) when
  \(t<L_{\rm prop}\). Discard a slot with no stored certified state. The
  stored state, not its look-ahead image, is carried forward.

  For a target \(j\) and state \(h=(p,q,s)\) with nonzero target
  correlations, define, for \(\ell\ne j\),
  \[
  A_{\ell\mid j}(p):={|\langle u_\ell,p\rangle|\over
  |\langle u_j,p\rangle|},\quad
  B_{\ell\mid j}(q):={|\langle v_\ell,q\rangle|\over
  |\langle v_j,q\rangle|},\quad
  C_{\ell\mid j}(s):={|\langle w_\ell,s\rangle|\over
  |\langle w_j,s\rangle|}.
  \]
  Write \(A_\ell,B_\ell,C_\ell\) when \(j,h\) are fixed and use a
  superscript \(+\) after one simultaneous commit. Define
  \[
  R_j(h):=\max_{\ell\ne j}\max\{A_\ell B_\ell,A_\ell C_\ell,
  B_\ell C_\ell\},
  \]
  \[
  S_j(h):=\max\left\{\sum_{\ell\ne j}A_\ell B_\ell,
  \sum_{\ell\ne j}A_\ell C_\ell,
  \sum_{\ell\ne j}B_\ell C_\ell\right\}.
  \]
  Set \(R_j=S_j=+\infty\) if a target denominator vanishes. These are
  generated trajectory quantities, not assumptions.

  Let \({\cal I}_{\rm cert}\) be the slots with stored certified states
  \(h_i=(p_i,q_i,s_i)\), and define
  \(\sigma_i:=|\langle T,p_i\otimes q_i\otimes s_i\rangle|\) and
  \(\sigma_{\max}:=\max_{i\in{\cal I}_{\rm cert}}\sigma_i\). A run with no
  certified slot is unsuccessful. Otherwise retain exactly those slots with
  \(\sigma_i\ge0.85\sigma_{\max}\). Join two retained slots when all three
  absolute modewise inner products are at least \(1-64q_*\), and take the
  connected components as proposal clusters. The run is unsuccessful unless
  there are exactly \(r\) clusters. In each cluster choose the minimum-\(\zeta\)
  member, breaking ties by score, and order the representatives arbitrarily as
  \(h_a=(p_a,q_a,s_a)\), \(a\in[r]\). No target label is used by this rule.

  For same-state bookkeeping put \(P=[p_a]\), \(Q=[q_a]\), \(S=[s_a]\),
  \(P_U=P,P_V=Q,P_W=S\), and \(G_U=U,G_V=V,G_W=W\). For each mode \(M\),
  let \(M',M''\) be the other two modes and define
  \[
  K_M:=D_\lambda\bigl((G_{M'}^\top P_{M'})\circ
  (G_{M''}^\top P_{M''})\bigr),
  \]
  where \(\circ\) is the Hadamard product. Let
  \(D_M:=\operatorname{diag}(\|G_MK_M(:,a)\|_2:a\in[r])\). After the
  certificate signs are fixed columnwise, let \({\cal R}_M\) be the
  corresponding normalized residual, so that the exact same-state equation is
  \(P_MD_M=G_MK_M+{\cal R}_M\). For a matrix \(H\), define
  \[
  \|H\|_{\rm row,1}:=\max_i\sum_j|H_{ij}|,\qquad
  \|H\|_{\rm col,1}:=\max_j\sum_i|H_{ij}|.
  \]
  The displayed equation is only a bookkeeping identity; its row and column
  consequences must be derived.

  For each representative set
  \(\theta_a:=\langle T,p_a\otimes q_a\otimes s_a\rangle\). If some
  \(\theta_a=0\), declare the run unsuccessful. Otherwise form the observable,
  equal-norm active seed
  \[
  x_a^0=|\theta_a|^{1/3}p_a,\qquad
  y_a^0=|\theta_a|^{1/3}q_a,\qquad
  z_a^0=\operatorname{sgn}(\theta_a)|\theta_a|^{1/3}s_a,
  \]
  and write \(X^0=[x_a^0],Y^0=[y_a^0],Z^0=[z_a^0]\). Set the other
  \(k-r\) columns exactly to zero and never update them. A proof-only target
  permutation and product-one sign gauge orients this active seed without
  changing any represented rank-one term. In that chart let
  \[
  d_{M,j}^0:=\|X_M^0(:,j)\|_2>0,\qquad
  D_M^0:=\operatorname{diag}(d_{M,j}^0),\qquad
  P_M^0:=X_M^0(D_M^0)^{-1},
  \]
  where \((X_U^0,X_V^0,X_W^0)=(X^0,Y^0,Z^0)\). Define the positive common
  represented products and their log error by
  \[
  \gamma_j^0:=d_{U,j}^0d_{V,j}^0d_{W,j}^0=|\theta_j|,\qquad
  s_j^0:=\log(\gamma_j^0/\lambda_j),
  \]
  and \(E^0:=\operatorname{diag}(e^{s_j^0/3})\). Equal-norm balance gives
  the exact positive-scale convention
  \[
  D_U^0=D_V^0=D_W^0=D_\lambda^{1/3}E^0.
  \]

  **One synchronized frozen-input landing.** Before any landing solve, freeze
  \((X^0,Y^0,Z^0)\) and form all three designs
  \[
  H_U^0:=Z^0\odot Y^0,\qquad H_V^0:=Z^0\odot X^0,
  \qquad H_W^0:=Y^0\odot X^0.
  \]
  No landing output may enter any of these designs. Compute the three exact
  Moore--Penrose least-squares solutions from this one frozen seed,
  \[
  \widetilde X=T_{(1)}H_U^0((H_U^0)^\top H_U^0)^\dagger,
  \quad
  \widetilde Y=T_{(2)}H_V^0((H_V^0)^\top H_V^0)^\dagger,
  \]
  \[
  \widetilde Z=T_{(3)}H_W^0((H_W^0)^\top H_W^0)^\dagger,
  \]
  and only then commit \((\widetilde X,\widetilde Y,\widetilde Z)\) jointly.
  The Moore--Penrose rule defines the outputs even on a singular tape. If any
  committed active column has zero norm, the run is unsuccessful. Otherwise,
  for each \(j\), put
  \(\widetilde\gamma_j=\|\widetilde x_j\|_2
  \|\widetilde y_j\|_2\|\widetilde z_j\|_2\) and replace the committed triple
  by
  \[
  x_j^{\rm land}=\widetilde\gamma_j^{1/3}{\widetilde x_j\over
  \|\widetilde x_j\|_2},\quad
  y_j^{\rm land}=\widetilde\gamma_j^{1/3}{\widetilde y_j\over
  \|\widetilde y_j\|_2},\quad
  z_j^{\rm land}=\widetilde\gamma_j^{1/3}{\widetilde z_j\over
  \|\widetilde z_j\|_2}.
  \]
  This single canonical rebalance uses positive norms and preserves the
  committed rank-one product exactly.

  The exact range conclusion does not require an inverse or a good event:
  every column of \(\widetilde X\) lies in
  \({\rm range}(T_{(1)})\subseteq{\rm range}(U)\), and analogously
  every column of \(\widetilde Y\) lies in \({\rm range}(V)\) and every
  column of \(\widetilde Z\) lies in \({\rm range}(W)\). The stronger
  ordinary-inverse formulas and quantitative landing bounds below are derived
  only on the generated good seed event.

  **Frozen landing coordinates and bridge targets.** On the proof-only seed
  chart, define the exact orthogonal decomposition
  \[
  P_M^0=G_M(I+C_M^0)+N_M^0,\qquad G_M^\top N_M^0=0.
  \]
  The unchanged certification and best-scalar bridge must produce, rather than
  assume,
  \[
  \max_M(\|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1})\le48\omega,
  \quad \max_{M,j}\|N_M^0(:,j)\|_2\le\tau_r,
  \quad \|s^0\|_\infty\le128\omega.
  \]
  In particular, the exact scale convention above must yield, for every mode
  and component,
  \[
  e^{-128\omega/3}\le {d_{M,j}^0\over\lambda_j^{1/3}}
  =e^{s_j^0/3}\le e^{128\omega/3}.
  \]
  Put \(c_0:=48\omega\) and define the deterministic bridge budgets
  \[
  \delta_L:=(1+q_*)c_0,
  \qquad
  \delta_F:=2(1+q_*)c_0+(1+q_*)c_0^2+r\tau_r^2,
  \]
  \[
  \delta_{FL}:=(1+q_*)c_0+(1+q_*)c_0^2+r\tau_r^2,
  \qquad \alpha_0:=q_*+\delta_F,
  \]
  \[
  \eta_J:=\alpha_0^2,\qquad
  \eta_{QJ}:=2\delta_{FL}+\delta_L^2+\delta_F^2,
  \qquad
  \eta_A:={\eta_{QJ}\over1-\eta_J}.
  \]
  For \(M\in\{U,V,W\}\), with \(M',M''\) the held modes, define
  \[
  F_M^0:=(P_M^0)^\top P_M^0,\qquad
  J_M^0:=F_{M'}^0\circ F_{M''}^0,
  \]
  \[
  Q_M^0:=(G_{M'}^\top P_{M'}^0)\circ
  (G_{M''}^\top P_{M''}^0),\qquad
  D_{-M}^0:=D_{M'}^0D_{M''}^0.
  \]
  The raw seed bounds must imply simultaneously, in both induced orientations,
  \[
  \|G_M^\top P_M^0-G_M^\top G_M\|_{\rm row,1}\vee
  \|G_M^\top P_M^0-G_M^\top G_M\|_{\rm col,1}\le\delta_L,
  \]
  \[
  \|F_M^0-G_M^\top G_M\|_{\rm row,1}\vee
  \|F_M^0-G_M^\top G_M\|_{\rm col,1}\le\delta_F,
  \]
  \[
  \|F_M^0-G_M^\top P_M^0\|_{\rm row,1}\vee
  \|F_M^0-G_M^\top P_M^0\|_{\rm col,1}\le\delta_{FL},
  \]
  together with the paired difference bound obtained before either pair is
  inverted,
  \[
  \|Q_M^0-J_M^0\|_{\rm row,1}\vee
  \|Q_M^0-J_M^0\|_{\rm col,1}\le\eta_{QJ}.
  \]
  They must also imply
  \[
  \|F_M^0-I\|_{\rm row,1}\vee\|F_M^0-I\|_{\rm col,1}\le\alpha_0,
  \]
  \[
  \|J_M^0-I\|_{\rm row,1}\vee\|J_M^0-I\|_{\rm col,1}
  \le\eta_J\le {1\over64},
  \]
  \[
  \|(J_M^0)^{-1}\|_{\rm row,1}\vee
  \|(J_M^0)^{-1}\|_{\rm col,1}\le{1\over1-\eta_J},
  \]
  \[
  \|(J_M^0)^{-1}-I\|_{\rm row,1}\vee
  \|(J_M^0)^{-1}-I\|_{\rm col,1}\le{\eta_J\over1-\eta_J}.
  \]
  In particular, \(\lambda_{\min}(J_M^0)\ge1-\eta_J>0\). The actual
  frozen design Gram is the positive diagonal congruence
  \[
  (H_M^0)^\top H_M^0=D_{-M}^0J_M^0D_{-M}^0,
  \quad
  D_{-M}^0=D_\lambda^{2/3}(E^0)^2\succ0,
  \]
  where the individual target-relative seed scales are exactly
  \(e^{s_j^0/3}\). Thus all three ordinary-inverse reserves are certified
  before any solve. This is a proof certificate derived from the selected
  seed, not an additional algorithmic acceptance test or a primitive
  assumption.

  On this event the Moore--Penrose solutions equal the ordinary-inverse
  solutions and have the exact coefficient forms. With
  \((\widetilde X_U,\widetilde X_V,\widetilde X_W)
  :=(\widetilde X,\widetilde Y,\widetilde Z)\),
  \[
  \widetilde X_M=G_M\widetilde B_M,\qquad
  \widetilde B_M=D_\lambda Q_M^0(J_M^0)^{-1}(D_{-M}^0)^{-1}.
  \]
  Define
  \[
  L_M^0:=D_\lambda(D_{-M}^0)^{-1}
  =D_\lambda^{1/3}(E^0)^{-2},\qquad
  \ell_{M,j}^0:=\lambda_j^{1/3}e^{-2s_j^0/3}>0.
  \]
  Since
  \[
  Q_M^0(J_M^0)^{-1}-I=(Q_M^0-J_M^0)(J_M^0)^{-1},
  \]
  and \(q_{\rm real}\le q_*\), \(\Gamma\le1.01\) are themselves generated
  smoothing conclusions, the landing bridge must also derive
  \[
  \left\|D_\lambda Q_M^0(J_M^0)^{-1}D_\lambda^{-1}-I\right\|_{\rm row,1}
  \vee
  \left\|D_\lambda Q_M^0(J_M^0)^{-1}D_\lambda^{-1}-I\right\|_{\rm col,1}
  \le\Gamma\eta_A\le128\omega<{1\over64}.
  \]
  Consequently the output normalizers
  \(\widetilde d_{M,j}:=\|G_M\widetilde B_M(:,j)\|_2\) must satisfy the
  simultaneous pre-commit bounds
  \[
  (1-\Gamma\eta_A)\ell_{M,j}^0\le\widetilde d_{M,j}
  \le(1+\Gamma\eta_A)\ell_{M,j}^0,
  \]
  which are strictly positive. Every inequality in this frozen landing
  interface is a derived proof obligation, not a technical assumption.

  **Cyclic refinement and quotient coordinates.** Fix the numerical local
  chart radius \(\rho_{\rm ALS}:=1/1024\); the fixed choices above give
  \(4096\omega<\rho_{\rm ALS}/3\) and
  \(8q_*+32\rho_{\rm ALS}<1/16\). Starting from the jointly landed and
  rebalanced state, run the unchanged exact cyclic active CP-ALS updates in
  \(U,V,W\) order, always using the Moore--Penrose solution. Test the original
  relative Frobenius residual after every completed cyclic sweep. Pre-register
  \[
  m_{\rm cap}:=\left\lceil C_{\rm stop}\log(8\kappa_0^2/\epsilon)\right\rceil.
  \]
  A run succeeds at its first residual at most \(\epsilon\), and is
  unsuccessful if it has not succeeded after \(m_{\rm cap}\) cyclic sweeps.
  Thus singular, off-event, and nonhitting tapes terminate observably.
  Repeat complete runs independently
  \[
  J:=\max\{1,\lceil C_{\rm rep}\log(1/\delta_{\rm init})\rceil\}
  \]
  times on the same tensor and return the smallest-residual successful output.

  For proof coordinates, quotient nonzero active triples by positive
  componentwise scalings \((D_U,D_V,D_W)\) with \(D_UD_VD_W=I\). For a
  triple define
  \[
  \gamma_j:=\prod_{M\in\{U,V,W\}}\|X_M(:,j)\|_2,
  \qquad s_j:=\log(\gamma_j/\lambda_j).
  \]
  Canonical equal-norm balancing replaces each factor norm by
  \(\gamma_j^{1/3}>0\) and preserves the represented rank-one product. In the
  fixed target permutation/sign chart, let \(\Pi_M\) be the oriented unit
  direction matrix. On the generated exact target-span domain write uniquely
  \[
  \Pi_M=G_M(I+C_M),\qquad e=(C_U,C_V,C_W,s).
  \]
  For two states \(e,\widetilde e\), put
  \(\Delta C_M:=C_M-\widetilde C_M\) and
  \(\Delta s:=s-\widetilde s\), and define
  \[
  d_Q(e,\widetilde e):=\max\!\left\{
  \max_{M\in\{U,V,W\}}\left(
  \|\Delta C_M\|_{\rm row,1}\vee\|\Delta C_M\|_{\rm col,1}\vee
  \max_j\|G_M\Delta C_M(:,j)\|_2\right),
  \|\Delta s\|_\infty\right\}.
  \]
  Write \(0:=(0,0,0,0)\) for the exact target quotient state.
  The joint landing must generate a state
  \(e^{\rm land}=(C_U^{\rm land},C_V^{\rm land},C_W^{\rm land},
  s^{\rm land})\) with zero perpendicular fields and
  \(d_Q(e^{\rm land},0)\le4096\omega<\rho_{\rm ALS}/3\).

  Let \({\cal U}_M^q\) denote the proof-coordinate output of a literal exact
  cyclic mode solve followed by its product-preserving canonical
  representation. From \(e^t=(C_U^t,C_V^t,C_W^t,s^t)\), define
  \[
  (C_U^+,s_U^+)={\cal U}_U^q(e^t),\qquad
  e_U=(C_U^+,C_V^t,C_W^t,s_U^+),
  \]
  \[
  (C_V^+,s_V^+)={\cal U}_V^q(e_U),\qquad
  e_V=(C_U^+,C_V^+,C_W^t,s_V^+),
  \]
  \[
  (C_W^+,s_W^+)={\cal U}_W^q(e_V),\qquad
  e_W=(C_U^+,C_V^+,C_W^+,s_W^+),
  \qquad \Psi^q(e^t):=e_W.
  \]
  These chronological \({\rm Refresh}_s\) records overwrite the historical
  common-product value globally before the next solve and are proof-only
  representatives of the literal cyclic ALS orbit. Exact target-span
  invariance, scale equivariance, refreshed-state equivalence, contraction of
  \(\Psi^q\), stopping before the cap on the good run, and all landing bounds
  above are derived conclusions. No realized geometry, coverage event,
  generated comparator, reserve, tube, basin, or contraction property is an
  admissibility condition.

- Technical assumptions:
  - `assump:base-scale` (Bounded deterministic base scales): Every base column in every mode has norm in \([\kappa_0^{-1},\kappa_0]\), with \(1\le\kappa_0\le r^{d_\kappa}\) for a fixed finite \(d_\kappa\).
  - `assump:cumulative-gram` (Primitive cumulative Gram interference): \(\bar q\le q_*/4\).
  - `assump:base-weight-balance` (Near-balanced base weights): \(\max_j\bar\lambda_j/\min_j\bar\lambda_j\le1+1/800\).
  - `assump:gaussian-smoothing` (Source Gaussian perturbations): The \(3r\) perturbations are mutually independent and \(g_j^{(M)}\sim{\cal N}(0,\rho^2I_n/n)\) for \(M\in\{A,B,C\}\), with \(0<\rho\le1\) and \(\rho^{-1}\le r^{d_\rho}\) for a fixed finite \(d_\rho\).
  - `assump:smoothing-margin` (Scale-aware smoothing and dimension margin):
    \[
    \kappa_0\rho\le q_*/128,\qquad
    r(\kappa_0\rho+\kappa_0^2\rho^2)
    \sqrt{\frac{\log(9r^2/\delta_{\rm sm})}{n}}\le q_*/32.
    \]
    These are pre-run scalar inequalities; no realized geometry or conditioning event is assumed.
  - `assump:subquadratic-rank` (Exact SL-SC-JEP-ALS rank): \(k=U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\) and \(r<k\le n\). Hence \(k/r^2=O((\log r)^{5/2}/r^{1/3})=o(1)\).
  - `assump:random-initialization` (Independent proposal and restart randomness): Conditional on the once-drawn tensor, all raw Gaussian triples are mutually independent across slots, modes, and full runs, and independent of the smoothing perturbations; restarts reuse the tensor but no proposal randomness.
  - `assump:accuracy-confidence` (Accuracy and separate confidence levels): \(0<\epsilon<1\), \(0<\delta_{\rm sm}<1\), and \(0<\delta_{\rm init}<1\), with the two confidence parameters applying respectively to the instance and conditional initialization/restart randomness.

# Formalized Goal

- Goal statement:
  In exact-goal mode, prove that universal choices of
  \(C_{\rm rank},C_{\rm burn},C_{\rm cert},C_{\rm stop},C_{\rm rep}\) give
  the following theorem uniformly over every deterministic base triple
  satisfying assump:base-scale, assump:cumulative-gram, and
  assump:base-weight-balance, and every parameter choice satisfying the
  remaining assumptions. With probability at least \(1-\delta_{\rm sm}\)
  over the once-drawn smoothed instance, all realized columns have norm at
  least \((2\kappa_0)^{-1}\), \(q_{\rm real}\le q_*\), \(\Gamma\le1.01\),
  and every target Khatri--Rao Gram has smallest eigenvalue at least
  \(1-q_*^2\). The proof must expose separately the linear directional,
  quadratic, and normalization contributions at scales
  \(\kappa_0\rho/\sqrt n\), \(\kappa_0^2\rho^2/\sqrt n\), and
  \(\kappa_0^2\rho^2\), including row-sum and finite-union factors.

  Conditional on each such fixed instance, prove that a proposal slot and
  target have a jointly observable window event in which all three target raw
  coordinates lie in \([t_r,t_r+t_r^{-1}]\) in absolute value and every
  competing pair product is at most \(b_*\log r\). Its probability is
  \(\Theta(r^{-5/3}(\log r)^{-3/2})\) with universal comparison constants,
  so \(k=U(r)\) gives a universal positive one-run probability of simultaneous
  all-target coverage. Every covered slot satisfies
  \(R_0\le b_*/a_*=19/20\), \(S_0\le rR_0\), and, whenever
  \(\Gamma R_t<1\),
  \[
  R_{t+1}\le\left({\Gamma R_t+q_{\rm real}\over
  1-\Gamma q_{\rm real}R_t}\right)^2,
  \]
  \[
  S_{t+1}\le{(\Gamma R_t+q_{\rm real})
  \{\Gamma(1+q_{\rm real})S_t+q_{\rm real}\}\over
  (1-\Gamma q_{\rm real}R_t)^2}.
  \]
  Establish noncircular persistence of the denominator condition, chart
  contraction, and the stated finite burn/certification horizons, yielding a
  stored state with \(\zeta\le\tau_r\). Prove that the high-score graph and
  minimum-residual selection return one representative per target without
  labels. Derive the exact same-state coefficient equations, the two-orientation
  selected residual closure, the observable best-scalar seed, and the generated
  bounds
  \[
  \max_M(\|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1})\le48\omega,
  \quad \max_{M,j}\|N_M^0(:,j)\|_2\le\tau_r,
  \quad \|s^0\|_\infty\le128\omega.
  \]

  Before executing any landing solve, use only these seed outputs and the
  generated smoothing geometry to prove simultaneously for all three frozen
  designs the displayed
  \(\delta_L,\delta_F,\delta_{FL},\alpha_0,\eta_J,\eta_{QJ},\eta_A\)
  bounds, including the direct \(Q_M^0-J_M^0\) cancellation, the positive
  floor \(\lambda_{\min}(J_M^0)\ge1-\eta_J\), both induced-norm inverse
  reserves, the exact positive-scale congruences, and the two-sided
  output-normalizer bounds. Then use the ordinary-inverse identities to prove
  exact target-span membership of all three jointly committed outputs and,
  after the single product-preserving rebalance, prove
  \[
  d_Q(e^{\rm land},0)\le4096\omega<\rho_{\rm ALS}/3.
  \]
  This landing proof must use no post-solve factor, comparator, scale, or
  reserve as an input to another landing call.

  From this generated exact-span state, prove exact scale equivariance of each
  cyclic quotient block, quotient equivalence of every chronological refreshed
  state to the literal post-block ALS state, invariance of the
  \(\rho_{\rm ALS}\) target-span chart, and a strict full-sweep contraction of
  \(\Psi^q\) in \(d_Q\) strong enough that every good covered run reaches the
  original relative Frobenius residual \(\epsilon\) before
  \(m_{\rm cap}\). Conditional on the good instance, the \(J\) independent
  completed runs must then succeed with probability at least
  \(1-\delta_{\rm init}\), and the returned tensor must have at most
  \(k=U(r)\) nonzero terms and satisfy
  \[
  \left\|T-\sum_{i=1}^k\widehat x_i\otimes\widehat y_i\otimes
  \widehat z_i\right\|_F\le\epsilon\|T\|_F.
  \]
  The runtime, including proposal, certification, filtering, clustering, the
  three frozen landing solves, the one landing rebalance, cyclic refinement,
  unsuccessful capped runs, and restarts, is polynomial in
  \(n,r,k,\kappa_0,\rho^{-1},\log(1/\epsilon),
  \log(1/\delta_{\rm init})\). Hidden constants may depend only on the fixed
  universal numerical choices and the already allowed polynomial scale bounds,
  never on a generated comparator, tube, reserve, or condition number.
  Because \(k,\kappa_0,\rho^{-1}=\operatorname{poly}(r)\) in the stated
  regime, this is in particular
  \(\operatorname{poly}(n,r,\log(1/\epsilon),
  \log(1/\delta_{\rm init}))\).

  Preserve the exact orthogonal equal-weight baseline. At an exact certified
  component seed, every frozen normalized pair Gram and cross Gram agree, all
  three landing outputs equal the target factors with common product error
  zero, the joint rebalance is the identity in quotient, cyclic ALS remains at
  that fixed point with every refreshed common-product register equal to zero,
  and the residual is exactly zero (hence can tend to zero as
  \(\epsilon\downarrow0\)).

# Note

- Rigor:
  Source alignment is preserved: asymmetric third-order rank-\(k\) CP least
  squares, source Gaussian smoothing, random initialization, strictly
  subquadratic \(U(r)=O(r^{5/3}(\log r)^{5/2})\), polynomial runtime,
  arbitrary relative Frobenius accuracy, the once-drawn-instance probability,
  conditional initialization/restart probability, and the exact orthogonal
  baseline. Progress type is `conditional`. Materiality is the unchanged
  strictly subquadratic sufficient-rank claim and arbitrary-accuracy target;
  the synchronized landing directly removes generated-predecessor
  interface without adding slots, narrowing the instance class, or weakening
  the conclusion. The remaining source gap is removal of the static
  cumulative-Gram, near-balance, and base-scale restrictions and recovery by
  unmodified parallel ALS.

  Assumption support: assump:gaussian-smoothing and
  assump:accuracy-confidence are inherited from the source model and requested
  probability protocol; assump:random-initialization and
  assump:subquadratic-rank are supported by the parallel-ALS proposal interface
  and approved extreme-window calculation. assump:base-scale,
  assump:cumulative-gram, assump:base-weight-balance, and
  assump:smoothing-margin are the preserved novel checkable primitives,
  verified in the recorded orthogonal equal-weight, equicorrelated,
  two-neighbor banded, and block-correlated families. The frozen-input Jacobi
  pseudoinverse landing and exact unfolding-range mechanism come from
  *Guarantees for Alternating Least Squares in Overparameterized Tensor
  Decompositions*; terminal cyclic quotient refinement remains conditionally
  supported by *Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation*. The seed bounds, all Gram and inverse
  reserves, positivity and normalizer bounds, exact-span landing, quotient
  radius, contraction, stopping, and restart success are derived obligations,
  not primitive assumptions.
