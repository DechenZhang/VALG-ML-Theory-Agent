# Formalized Setting

- Basic setup:
  **Source and realized tensor.** Fix integers \(n,r\ge2\), a scale
  parameter \(\kappa\ge1\), and deterministic matrices
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) in \(\mathbb R^{n\times r}\).
  For a matrix \(M=[m_1,\ldots,m_r]\) with nonzero columns define
  \[
  D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2),\qquad
  \widetilde M=MD_M^{-1},\qquad G_M=\widetilde M^\top\widetilde M.
  \]
  Put
  \[
  \bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2,\qquad
  \nu_{\rm base}=\max_{M\in\{\bar A,\bar B,\bar C\}}
  \|G_M-I_r\|_{\rm op},\qquad
  \nu_\star={1\over C_\nu r\log(2r)},
  \]
  where \(C_\nu\) is a fixed sufficiently large absolute constant.

  Independently over labels and modes, draw the Gaussian perturbations in
  assump:gaussian-smoothing and denote the realized matrices by \(A,B,C\).
  For every realized nonzero column set
  \[
  m_{j,A}={a_j\over\|a_j\|_2},\qquad
  m_{j,B}={b_j\over\|b_j\|_2},\qquad
  m_{j,C}={c_j\over\|c_j\|_2},
  \]
  \[
  \tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,\qquad
  \phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C},\qquad
  T=\sum_{j=1}^r\tau_j\phi_j.
  \]
  Let \(\Phi_\star:\mathbb R^r\to\mathbb R^{n\times n\times n}\)
  have columns \(\phi_j\), and write
  \[
  \nu_{\rm real}=\max_{M\in\{A,B,C\}}\|G_M-I_r\|_{\rm op},\qquad
  \Phi_\star^*\Phi_\star=G_A\circ G_B\circ G_C.
  \]
  Realized nonvanishing, norm, Gram, product-weight, and exact-
  representation properties are outputs of the once-drawn event in the
  goal, not primitive assumptions.

  **Absolute-Gram kernels and static lifted source.** On a realized
  nonzero-column instance define, entrywise,
  \[
  H_M=|G_M-I_r|,\qquad J_M=I_r+H_M,\qquad M\in\{A,B,C\},
  \]
  and
  \[
  K_A=H_B\circ H_C,\qquad
  K_B=H_A\circ H_C,\qquad
  K_C=H_A\circ H_B.
  \]
  These matrices are nonnegative analysis objects. They are not available to
  the algorithm. The proof must derive from the realized operator-Gram bound
  \[
  \max_j\|H_Me_j\|_2\le\nu_{\rm real},\qquad
  \|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu_{\rm real},
  \]
  \[
  \|K_M\|_1=\|K_M\|_\infty\le\nu_{\rm real}^2.
  \tag{R-src}
  \]
  No operator-norm inequality for \(|G_M-I_r|\) is assumed or required.

  For later static angular leakage, define
  \[
  L_{A,j}=\sum_{\ell\ne j}\tau_\ell K_A(\ell,j),
  \]
  with cyclic definitions. The same columnwise Cauchy--Schwarz calculation
  and the derived realized weight ratio must give
  \[
  L_{A,j}\le\tau_{\max}\nu_{\rm real}^2
  \le2\Gamma_\star\tau_j\nu_{\rm real}^2,
  \tag{R-leak-A}
  \]
  and its cyclic analogues.

  For ordered distinct labels \(j,\ell\), define the first-chain source
  \[
  S_{j,A,\ell}=(K_AJ_A)_{j\ell},
  \tag{R-base}
  \]
  and define \(S_{j,B,\ell}\) and \(S_{j,C,\ell}\) cyclically. Set
  \(S_{j,M,j}=0\). Thus \(S_{j,A,\ell}\) contains both the direct term
  \(H_B(j,\ell)H_C(j,\ell)\) and every first transitive term
  \[
  \sum_tH_B(j,t)H_C(j,t)H_A(t,\ell).
  \]
  In particular, the source retains a three-label chain even when all direct
  \(j\)-to-\(\ell\) correlations vanish.

  **Exact objective and balanced slots.** For algorithmic rank \(k\), let
  \(Q=(X,Y,Z)\) have slots \(q_i=(x_i,y_i,z_i)\), and define
  \[
  \Psi(Q)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
  R(Q)=T-\Psi(Q),\qquad
  F(Q)={1\over2}\|R(Q)\|_F^2.
  \]
  The tensor-preserving balance map is
  \[
  {\cal B}(x,y,z)=
  \begin{cases}
  (gu,gv,gw),&\|x\|_2\|y\|_2\|z\|_2>0,\\
  (0,0,0),&\text{otherwise},
  \end{cases}
  \]
  where
  \[
  g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3},\qquad
  u={x\over\|x\|_2},\quad v={y\over\|y\|_2},\quad
  w={z\over\|z\|_2}.
  \]
  A nonzero balanced slot is written
  \(q_i=(g_i u_i,g_i v_i,g_i w_i)\), while a partial-zero slot is mapped to
  joint zero. The exact balanced target slots are
  \[
  q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
  \tau_j^{1/3}m_{j,C}),\qquad j\in[r].
  \]
  Together with \(k-r\) joint-zero slots they represent \(T\) exactly.
  This exact representation is a terminal target, not an initializer
  supplied to the algorithm.

  Define the observable protocol scale and radius guard
  \[
  P=16nrk\kappa\rho^{-1},\qquad R_{\max}=8\kappa.
  \tag{Protocol-scale}
  \]
  All proof exponents and protocol constants introduced below are fixed
  independently of the realized instance and trajectory. They are theorem
  outputs to be chosen in a compatible order, not additional data
  assumptions.

  **Protected state and full-space transaction.** A discovery state has a
  protected index set \(I\subset[k]\), \(|I|<r\), balanced protected slots,
  and joint-zero slots outside \(I\). Protected slots are frozen during one
  transaction. Define the actual protected residual
  \[
  R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i.
  \]
  For a scratch slot \(q=(gu,gv,gw)\), with
  \((u,v,w)\in{\cal S}:=(\mathbb S^{n-1})^3\), define
  \[
  f_I(g,u,v,w)={1\over2}\|R_I-g^3u\otimes v\otimes w\|_F^2,\qquad
  s_I(u,v,w)=\langle R_I,u\otimes v\otimes w\rangle,
  \]
  \[
  d_I(g,u,v,w)=s_I(u,v,w)-g^3,\qquad
  \partial_g f_I=-3g^2d_I,
  \]
  and the observable capture
  \[
  \Delta F_I(q)=f_I(0)-f_I(q)=g^3s_I-{1\over2}g^6.
  \]
  Scratch seeds lie on the full ambient spheres. Radial, angular-gradient,
  and negative-curvature trials are unprojected relative to protected slots.
  The only angular retraction is per-mode normalization onto its own sphere,
  independent of \(I\). No protected-span projector, Gram--Schmidt step,
  oblique projection, or protected-dependent retraction is applied to a
  direction or update. The orthogonal projectors defined below are queried
  only by the commit screen.

  For \(u_A=u,u_B=v,u_C=w\), define
  \[
  {\sf Sep}(q;I)=
  \begin{cases}
  \displaystyle\max_{i\in I}\max_{M\in\{A,B,C\}}
  |\langle u_M,u_{i,M}\rangle|,&I\ne\varnothing,\\
  0,&I=\varnothing.
  \end{cases}
  \]
  Separation is only a commit-time test and never alters a direction.

  For each mode \(M\), let
  \({\cal U}_{I,M}=\operatorname{span}\{u_{i,M}:i\in I\}\), and let
  \[
  P_{I,M}=\operatorname{Proj}_{{\cal U}_{I,M}},\qquad
  P_{\varnothing,M}=0.
  \tag{Protected-projector}
  \]
  The protocol computes this orthogonal projector from the actual protected
  unit directions by a stable QR or SVD. It does not use the realized source
  factors, the analysis matching, or any target label.

  **Radial/angular certificate.** The tangent space of \({\cal S}\) is
  \(u^\perp\times v^\perp\times w^\perp\). Let
  \(\operatorname{grad}_{\cal S}f_I\) and
  \(H_{\rm ang}=\operatorname{Hess}_{\cal S}f_I\) be the angular Riemannian
  gradient and Hessian at fixed \(g\). Put
  \[
  N_I(g)=1+\|R_I\|_F+g^4,\qquad
  e_{\rm ang}={\|\operatorname{grad}_{\cal S}f_I\|_2\over N_I(g)},\qquad
  \widehat H_{\rm ang}={H_{\rm ang}\over N_I(g)},
  \]
  \[
  e_{\rm rad}={|g^3-s_I|\over
  \max\{s_I,g^3,\|R_I\|_FP^{-D_{\rm stat}}\}}.
  \]
  The theorem is to choose fixed positive proof exponents
  \(D_{\rm stat},D_{\rm gap},D_{\rm cap}\). The observable certificate
  \({\sf Cert}(q;I)\) consists exactly of
  \[
  0<g\le2R_{\max},\qquad s_I>0,\qquad
  e_{\rm rad}\le P^{-D_{\rm stat}},\qquad
  e_{\rm ang}\le P^{-D_{\rm stat}},
  \]
  \[
  \lambda_{\min}(\widehat H_{\rm ang})\ge P^{-D_{\rm gap}},\qquad
  \Delta F_I(q)\ge\|R_I\|_F^2P^{-D_{\rm cap}},\qquad
  {\sf Sep}(q;I)\le{1\over4}.
  \tag{Cert}
  \]
  The Hessian test is angular only. The certificate contains no target
  label, target factor, absolute-Gram kernel, or ledger object.

  **Observable protected-span leverage screen.** Choose fixed absolute proof
  constants \(C_{\rm sp},C_\eta^+,C_1,C_2,C_{\rm nor}>0\), a fixed
  \(0<\gamma_{\rm lev}<1/64\), and a proof exponent \(D_{\rm nor}>0\)
  before choosing \(D_{\rm stat}\). Define the deterministic source-class
  envelope
  \[
  \bar\eta=C_\eta^+
  \left(\Gamma_\star(2\nu_\star)^2+P^{-D_{\rm stat}}\right),
  \qquad \tau_{\rm up}=4\Gamma_\star\|T\|_F,
  \tag{Lev-envelope}
  \]
  and, for \(u_A=u,u_B=v,u_C=w\), the observable leverage scores
  \[
  \lambda_M=\|P_{I,M}u_M\|_2,
  \qquad
  \Lambda_I^+=\sum_{\{M,N\}\subset\{A,B,C\}}
  (\lambda_M+C_{\rm sp}\bar\eta)
  (\lambda_N+C_{\rm sp}\bar\eta).
  \tag{Lev-score}
  \]
  Put
  \[
  B_I^{(1)}=C_1|I|\tau_{\rm up}\bar\eta,
  \qquad
  B_I^{(\ge2)}=C_2|I|\tau_{\rm up}\bar\eta^2
  +C_{\rm nor}|I|\|T\|_F P^{D_{\rm nor}-D_{\rm stat}}.
  \tag{Lev-budgets}
  \]
  The commit screen \({\sf Lev}(q;I)\) is exactly
  \[
  s_I(u,v,w)\ge64B_I^{(\ge2)},\qquad
  B_I^{(1)}\Lambda_I^+\le
  \gamma_{\rm lev}s_I(u,v,w).
  \tag{Lev}
  \]
  These quantities are fixed protocol parameters or functions of \(T\), the
  current residual, and the actual protected and scratch factors. They query
  no source factor, source label, generated matching, Gram kernel, history
  error, envelope, or invariant. The projectors screen but never project,
  whiten, retract, or otherwise modify the scratch direction.

  **Finite-tape protocol and exact rollback.** Put
  \[
  a_{\rm seed}=\|T\|_FP^{-120},\qquad
  \delta=a_{\rm seed}^{1/3},\qquad \Delta_{\rm tr}=P^{-20}.
  \]
  For the generated stationarity audits below, write
  \(e_{\rm num}:=P^{-D_{\rm stat}}\).  This is analysis notation for the
  numerical tolerance, not a primitive assumption or an additional regime
  restriction.
  The theorem is to exhibit fixed \(c_{\rm tx},d_{\rm tx}>0\) and a fixed
  sufficiently large \(C_{\rm tape}\), and to use
  \[
  H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil,\qquad
  N_{\rm tx}=\left\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}
  \log(2r)\right\rceil.
  \]
  The tape contains \(N_{\rm tx}\) independent triples of full-space Haar
  directions. At a protected state the next triple is seeded at radius
  \(\delta\); if its score is negative, one fixed mode is sign-flipped, and
  a zero-score seed is unsuccessful.

  With directions fixed, unprojected radial trust-region Armijo steps bracket
  the unique positive root \(g^3=s_I\), and dyadic bisection resolves the
  bracket to the radial certificate tolerance. A missing root, radius above
  \(2R_{\max}\), guard violation, or exhausted budget causes failure. At a
  radial bracket, full-product-sphere angular-gradient steps are followed by
  radial re-bracketing. When \(e_{\rm ang}\) is small and
  \(\lambda_{\min}(\widehat H_{\rm ang})<-P^{-D_{\rm gap}}\), a
  deterministic approximate minimum-eigenvector routine returns a unit
  tangent direction with Rayleigh quotient at most
  \(-P^{-D_{\rm gap}}/2\); both signs are tested and the lower exact-loss
  Armijo trial is accepted. A small-gradient state that is neither certified
  nor supplied with this witness is unsuccessful.

  A transaction is successful only when the scratch state satisfies both
  \({\sf Cert}(q;I)\) and \({\sf Lev}(q;I)\). It then commits the scratch
  slot without changing its directions and records its capture. Failure of
  the leverage screen, or any other unsuccessful outcome, maps the scratch
  slot exactly to joint zero. Thus protected factors, represented tensor,
  residual, and loss after rollback equal their pre-transaction values;
  failed probes create no persistent forcing. All computations use only
  \(T\), current factors and residual, factor inner products, stable QR/SVD
  of actual protected factors, gradients, Hessian-vector products, and the
  finite tape.

  Every gradient or negative-curvature trial uses dyadic trust-region Armijo
  backtracking on the exact loss, has factor displacement at most
  \(\Delta_{\rm tr}\), and stays within the radius guard. The proof must
  derive a fixed \(D_{\rm ls}>0\) such that every accepted nonstationary trial
  has step at least \(P^{-D_{\rm ls}}\). This is a derived globalization
  output, not a trajectory assumption.

  **Lifted transfer and resolvent.** Let
  \[
  {\cal D}=\{(j,M,\ell):j,\ell\in[r],\ j\ne\ell,\
  M\in\{A,B,C\}\}.
  \]
  Let \({\cal Z}_+\) be the cone of nonnegative arrays on \({\cal D}\), and
  extend each array by \(Z_{j,M,j}=0\). Use the entrywise
  \(\ell_1\) norm
  \[
  \|Z\|_1=\sum_{(j,M,\ell)\in{\cal D}}Z_{j,M,\ell}.
  \]
  For a linear map on these arrays, let
  \[
  \|\mathcal L\|_{1\to1}
  =\sup_{Z\ne0}{\|\mathcal LZ\|_1\over\|Z\|_1}.
  \]
  Also define the rootwise block norm
  \[
  \|Z\|_{{\rm root},2}
  =\max_{j\in[r]}
  \left(\sum_{M\in\{A,B,C\}}\sum_{\ell\ne j}
  Z_{j,M,\ell}^2\right)^{1/2},
  \]
  and let \(\|\mathcal L\|_{{\rm root},2\to{\rm root},2}\) be its induced
  operator norm. The theorem is to choose fixed absolute proof constants
  \(C_0,C_\eta,C_{\rm led},C_A,C_{\rm num},C_{\rm ten},
  C_{\rm acc},C_z,C'_z,C_J,C_{\rm Jdiag}>0\). Define
  \[
  \eta_0=C_\eta\bigl(\Gamma_\star\nu_{\rm real}^2+
  P^{-D_{\rm stat}}\bigr).
  \]
  For \(Z\in{\cal Z}_+\), define the nonnegative linear transfer
  \[
  (\mathcal TZ)_{j,A,\ell}
  =\sum_{t\ne j}J_A(t,\ell)
  \left[(H_C(j,t)+\eta_0)Z_{j,B,t}
       +(H_B(j,t)+\eta_0)Z_{j,C,t}\right],
  \tag{R-transfer}
  \]
  with cyclic definitions in modes \(B,C\). The proof must derive
  \[
  \|\mathcal T\|_{1\to1}
  \le2(\nu_{\rm real}+\eta_0)
  (1+\sqrt r\,\nu_{\rm real}),\qquad
  q_{\rm res}:=C_0\Gamma_\star\|\mathcal T\|_{1\to1}\le{1\over4},
  \tag{R-gap}
  \]
  and the rootwise consequence
  \[
  \|\mathcal T\|_{{\rm root},2\to{\rm root},2}
  \le2(\nu_{\rm real}+\eta_0)
  (1+\sqrt r\,\nu_{\rm real}),\qquad
  q_{\rm row}:=C_0\Gamma_\star
  \|\mathcal T\|_{{\rm root},2\to{\rm root},2}\le{1\over4}.
  \tag{J-row-gap}
  \]
  These estimates must hold after choosing the fixed constants,
  \(D_{\rm stat}\), and the asymptotic threshold consistently. Both are
  derived small-gain bounds under the existing primitive Gram margin, not new
  assumptions. In particular, the rootwise estimate must be proved from the
  exact displayed transfer; it may not be inserted as a trajectory or
  admissibility condition.

  **Generated matching, history forcing, and direction envelope.** The
  following are analysis-only generated interfaces. A protected state must
  be matched by an injection \(\pi_I:I\to[r]\), with
  \(U_I=[r]\setminus\pi_I(I)\). For \(i\in I\), \(p=\pi_I(i)\), choose
  analysis signs \(\sigma_{i,A},\sigma_{i,B},\sigma_{i,C}\in\{\pm1\}\)
  with product \(+1\), and define
  \[
  e_{i,M}=\sigma_{i,M}u_{i,M}-m_{p,M},\qquad
  \delta_i={g_i^3\over\tau_p}-1,
  \]
  \[
  E_i=g_i^3u_i\otimes v_i\otimes w_i-\tau_p\phi_p.
  \]
  The Euclidean matching output to prove at every commit is
  \[
  |\delta_i|+\max_M\|e_{i,M}\|_2\le C_{\rm led}\eta_0.
  \tag{R-euc}
  \]

  For a protected state \(I\), unresolved root \(j\in U_I\), tested label
  \(\ell\ne j\), and mode \(A\), define the actual accepted-history forcing
  \[
  A_{I;j,A,\ell}={1\over\tau_j}\sum_{i\in I}
  \left|\left\langle E_i,
  m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C}\right\rangle\right|,
  \tag{R-hist-src}
  \]
  with cyclic definitions. Set entries with \(j\notin U_I\) or \(j=\ell\)
  to zero when embedding \(A_I\) in \({\cal Z}_+\). This forcing is computed
  only in the analysis from already accepted errors; it is neither replaced
  by \(\sum_i\|E_i\|_F\) nor assumed as a good-state condition.

  Let \(\mathbf1\) denote the all-ones array on \({\cal D}\). Whenever the
  proof has established (R-gap), define the statewise Neumann envelope
  \[
  \Theta_I=
  (\operatorname{Id}_{\cal D}-C_0\Gamma_\star\mathcal T)^{-1}
  C_0\Gamma_\star
  \left(S+A_I+P^{-D_{\rm stat}}\mathbf1\right)
  \]
  \[
  \hspace{2cm}=
  \sum_{s\ge0}(C_0\Gamma_\star\mathcal T)^s
  C_0\Gamma_\star
  \left(S+A_I+P^{-D_{\rm stat}}\mathbf1\right).
  \tag{R-ledger}
  \]
  A certificate matched to unresolved label \(j\) must derive, for every
  \(\ell\ne j\) and mode \(M\),
  \[
  |\langle e_{i,M},m_{\ell,M}\rangle|
  \le C_{\rm led}\left(\Theta_{I;j,M,\ell}
  +P^{-D_{\rm stat}}\right),
  \tag{R-dir}
  \]
  together with (R-euc), unique unresolved-label assignment, separation from
  every matched label, and extension of \(\pi_I\). None of these generated
  properties may be placed in the theorem assumptions or queried by the
  algorithm.

  **Derived protected-error split and leverage routing.** For analysis only,
  let \(P_{\star,M}\) be the orthogonal projector onto
  \(\operatorname{span}\{m_{j,M}:j\in[r]\}\), and put
  \[
  \Pi_\star=P_{\star,A}\otimes P_{\star,B}\otimes P_{\star,C}.
  \tag{Source-projector}
  \]
  This source projector is distinct from the observable protected-span
  projectors \(P_{I,M}\) and is never computed by the protocol. For a
  generated matching, let \(V_I=\pi_I(I)\),
  \(U_I=[r]\setminus V_I\), and
  \[
  T_{U_I}=\sum_{j\in U_I}\tau_j\phi_j,
  \qquad D_I=(\operatorname{Id}-\Pi_\star)R_I.
  \]
  For \(i\in I\), \(p=\pi_I(i)\), expand exactly
  \[
  \tau_p\phi_p-g_i^3u_i\otimes v_i\otimes w_i
  =\tau_p\left[m_{p,A}\otimes m_{p,B}\otimes m_{p,C}
  -(1+\delta_i)\bigotimes_M(m_{p,M}+e_{i,M})\right]
  \]
  after applying the product-one analysis signs. Let
  \(E_I^{(1)}\) be \(\Pi_\star\) applied to the sum of terms containing
  exactly one member of
  \(\{\delta_i,e_{i,A},e_{i,B},e_{i,C}\}\), and let
  \(E_I^{(\ge2)}\) be \(\Pi_\star\) applied to all remaining error terms.
  Then the exact current-state decomposition is
  \[
  R_I=T_{U_I}+E_I^{(1)}+E_I^{(\ge2)}+D_I.
  \tag{Lev-split}
  \]
  All four objects in this display are generated analysis quantities, not
  primitive assumptions or protocol queries.

  The inherited guarded triangular source-normal recurrence must produce
  \(D_{\rm nor}\) and prove, uniformly over every generated prefix,
  \[
  \|D_I\|_F\le
  C_{\rm nor}|I|\|T\|_F P^{D_{\rm nor}-D_{\rm stat}}.
  \tag{Lev-normal}
  \]
  The exact matched-error expansion and (Lev-normal) must then give, for
  every scratch direction \(\psi=u\otimes v\otimes w\),
  \[
  |\langle E_I^{(1)},\psi\rangle|
  \le B_I^{(1)}\Lambda_I^+,
  \]
  \[
  |\langle E_I^{(\ge2)},\psi\rangle|
  +|\langle D_I,\psi\rangle|
  \le B_I^{(\ge2)}.
  \tag{Lev-raw}
  \]
  These are proof obligations derived from the nine primitive assumptions,
  prior accepted matching errors, and the actual protected spans. They are
  not certificate clauses, generated-state premises, or assumptions. In
  particular, the numerical term in (Lev-normal) remains raw.

  Define the analysis-only scores
  \[
  s_U=\langle T_{U_I},\psi\rangle,
  \qquad s_M=\langle E_I^{(1)}+E_I^{(\ge2)}+D_I,\psi\rangle,
  \]
  \[
  W_U=\sum_{j\in U_I}\tau_j
  \prod_{M\in\{A,B,C\}}|\langle m_{j,M},u_M\rangle|,
  \qquad s_I=s_U+s_M.
  \]
  Every state passing (Lev) must consequently satisfy
  \[
  |s_M|\le(\gamma_{\rm lev}+1/64)s_I,
  \qquad
  W_U\ge(1-2\gamma_{\rm lev}-1/32)s_I.
  \tag{Lev-route}
  \]
  Thus a legally committable certificate is routed to the unresolved-mass
  singleton/structural-exchange alternative. The proof must also show that
  every genuine unresolved-atom certificate neighborhood passes (Lev) with
  inverse-polynomial slack. No matched-mixture exchange conclusion is
  assumed or requested.

  For branch accounting only, choose a fixed \(D_{\rm lb}>0\) and write
  \({\cal E}_{\rm lb}=\{\nu_{\rm real}\ge P^{-D_{\rm lb}}\}\). This is a
  derived event partition, not a theorem condition. On
  \({\cal E}_{\rm lb}^c\), including
  \(\nu_{\rm real}=0\) with \(e_{\rm num}>0\), the
  \(P^{D_{\rm nor}-D_{\rm stat}}\) and \(\bar\eta^2\) terms in
  \(B_I^{(\ge2)}\) must remain explicit and are enforced by the observable
  score floor in (Lev); no lower bound on \(\nu_{\rm real}\) or hidden
  absorption is allowed.

  **Symmetric J-aware history update and all-commit budget.** The proof must
  first derive
  \[
  \|S\|_1\le
  3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real}).
  \tag{R-S-budget}
  \]
  Consider any generated commit order. Write \(I_{t-1}\) for the protected
  state immediately before commit \(t\), \(p_t\in U_{I_{t-1}}\) for its
  generated target label, and
  \(I_t=I_{t-1}\cup\{i_t\}\). At that pre-commit state store the
  analysis-only profile
  \[
  z_{p_t,M,\ell}=
  \begin{cases}
  \Theta_{I_{t-1};p_t,M,\ell}
  +C_{\rm num}P^{-D_{\rm stat}},&\ell\ne p_t,\\
  0,&\ell=p_t.
  \end{cases}
  \tag{J-z}
  \]
  Thus every stored \(z\)-profile has zero diagonal. Numerical
  stationarity error is already present off the diagonal in (J-z) and in
  \(\eta_0\); any remaining numerical remainder must be displayed rather
  than hidden in a diagonal structural entry.

  For a captured root \(p\), define its block-row norm by
  \[
  \|z_p\|_{{\rm root},2}=
  \left(\sum_{M\in\{A,B,C\}}\sum_{\ell\ne p}
  z_{p,M,\ell}^2\right)^{1/2}.
  \]
  From (J-row-gap), the static \(K_MJ_M\) source, and the previously
  generated history budget, the same induction must prove at every generated
  state \(I=I_s\) the rootwise envelope
  \[
  \max_{1\le t\le s}\|z_{p_t}\|_{{\rm root},2}
  \le C_z\left(\nu_{\rm real}^2+r\nu_{\rm real}^3
  +\sqrt r\,P^{-D_{\rm stat}}\right)
  \le C'_z\nu_{\rm real}^2.
  \tag{J-row}
  \]
  with the left side defined as zero when \(s=0\) and
  \(I=I_0=\varnothing\).
  The last inequality is itself a derived numerical-dominance obligation
  under the declared Gram/rank regime and the chosen fixed exponent. Neither
  (J-row-gap) nor (J-row) is a theorem assumption or a good-state premise.

  For each captured label \(p\) define, for \(\ell\ne p\),
  \[
  \begin{split}
  \Xi_{p,A,\ell}={}&H_C(p,\ell)z_{p,B,\ell}
  +H_B(p,\ell)z_{p,C,\ell}
  +z_{p,B,\ell}z_{p,C,\ell}\\
  &+\eta_0
  (H_B(p,\ell)+z_{p,B,\ell})
  (H_C(p,\ell)+z_{p,C,\ell}),
  \end{split}
  \tag{R-infl}
  \]
  with cyclic versions. Direct accepted-tensor expansion must prove
  \[
  \|E_{i_t}\mathbin{\times_2}m_{\ell,B}^\top
  \mathbin{\times_3}m_{\ell,C}^\top\|_2
  \le C_{\rm ten}\tau_{p_t}\Xi_{p_t,A,\ell},
  \tag{R-tensor}
  \]
  for every \(\ell\ne p_t\), with cyclic analogues.

  For a newly captured label \(p=p_t\), a post-commit unresolved root
  \(j\in U_{I_t}\), and every tested label \(\ell\ne j\), including
  \(\ell=p\), define the nonnegative symmetric charge
  \[
  \begin{split}
  \widetilde\Upsilon^A_{p;j,\ell}={}&(1+\eta_0)
  (J_A(p,\ell)+z_{p,A,\ell})
  (H_B(p,j)+z_{p,B,j})\\
  &\qquad\cdot(H_C(p,j)+z_{p,C,j})
  -J_A(p,\ell)H_B(p,j)H_C(p,j),
  \end{split}
  \tag{J-charge}
  \]
  with cyclic definitions in which the tested mode carries \(J_M(p,\ell)\)
  in both the positive product and the subtracted exact-target baseline. The
  subtraction is part of the signed multilinear target-term cancellation;
  it is not an assumed absolute-Gram identity. Exact scalar expansion of the
  newly accepted \(E_{i_t}\) must prove
  \[
  A_{I_t;j,A,\ell}-A_{I_{t-1};j,A,\ell}
  \le2\Gamma_\star\widetilde\Upsilon^A_{p_t;j,\ell},
  \tag{J-update}
  \]
  and its cyclic analogues.

  The captured-label diagonal is explicit rather than suppressed: because
  \(J_A(p,p)=1\) and \(z_{p,A,p}=0\),
  \[
  \begin{split}
  \widetilde\Upsilon^A_{p;j,p}={}&
  \eta_0H_B(p,j)H_C(p,j)\\
  &+(1+\eta_0)\bigl[
  H_B(p,j)z_{p,C,j}+H_C(p,j)z_{p,B,j}
  +z_{p,B,j}z_{p,C,j}\bigr].
  \end{split}
  \tag{J-diag}
  \]
  Hence on the approved isolated O.1 two-label verification family, where
  \(H_B(p,j)=H_C(p,j)=h\), \(H_A(p,j)=0\), and all other displayed
  labels are orthogonal (so this family has \(\nu_{\rm real}=h\)), the
  diagonal expression must be kept in its honest numerical form. With
  \(e_{\rm num}=P^{-D_{\rm stat}}\) and the
  nonnegative padding in (J-z),
  \(z_{p,B,j},z_{p,C,j}\ge C_{\rm num}e_{\rm num}\), so
  \[
  \begin{aligned}
  \widetilde\Upsilon^A_{p;j,p}
   &=\eta_0h^2+(1+\eta_0)
     \bigl[h(z_{p,B,j}+z_{p,C,j})+z_{p,B,j}z_{p,C,j}\bigr] \\
   &=O\!\left(h^4+e_{\rm num}h+e_{\rm num}^2\right),
  \end{aligned}
  \tag{J-two-label}
  \]
  where the \(h^4\) contribution follows from
  \(\eta_0=C_\eta(\Gamma_\star h^2+e_{\rm num})\) on this verification
  family, and the positive \(e_{\rm num}h\) and \(e_{\rm num}^2\) terms are
  retained. The
  generated audit must also establish a matching positive lower bound (up to
  fixed constants) from these terms, and choose the fixed leading constants
  so that (J-update) dominates the exact \(2h^4+O(h^6)\) increment, including
  the allowed boundary \(h=e_{\rm num}^2\). No lower bound relating \(h\) to
  \(e_{\rm num}\) is imposed. For a two-label block embedded in a larger
  instance, the same exact expansion is retained, while its global
  \(\nu_{\rm real}^2h^2\) contribution is charged by the separate
  \(\nu_{\rm real}\)-based ledger bounds rather than by this local
  \(h^4\) notation. When \(\ell\ne p\),
  \(J_A(p,\ell)=H_A(p,\ell)\), so (J-charge) retains the prior direct,
  transitive, and longer-path interface without a spurious diagonal
  \(O(h^2)\) term. The same isolated audit and honest export are required in
  each cyclic mode.

  The captured-label diagonal must be summed rootwise before any global
  label summation. For each newly captured root \(p=p_t\), exact
  factorization of (J-diag), Cauchy--Schwarz in the post-commit unresolved
  root index, and the zero-diagonal convention must prove
  \[
  \sum_{j\in U_{I_t}}\sum_{M\in\{A,B,C\}}
  \widetilde\Upsilon^M_{p;j,p}
  \le C_{\rm Jdiag}\left[
  \eta_0\nu_{\rm real}^2
  +\nu_{\rm real}\|z_p\|_{{\rm root},2}
  +\|z_p\|_{{\rm root},2}^2
  +r e_{\rm num}
  \right].
  \tag{Lev-Jdiag}
  \]
  Together with (J-row), this is
  \(O(\nu_{\rm real}^3+r e_{\rm num})\) per captured root and
  \(O(r\nu_{\rm real}^3+r^2e_{\rm num})\) over all commits. No tested-label
  count or extra commit factor may be applied after this sum. Off-diagonal
  terms \(\ell\ne p\) continue to use the existing \(KJ\)/Neumann
  factorization.

  For every commit prefix \(s\le r\), define the one-time charge sum
  \[
  {\mathfrak U}_s=
  \sum_{t=1}^s\sum_{j\in U_{I_t}}
  \sum_{\ell\ne j}\sum_{M\in\{A,B,C\}}
  \widetilde\Upsilon^M_{p_t;j,\ell}.
  \tag{J-global-def}
  \]
  The rowwise envelope and exact baseline cancellation must yield, uniformly
  over the generated commit order,
  \[
  {\mathfrak U}_s
  \le C_J\Gamma_\star r\nu_{\rm real}^3
  +C_Jr^2P^{-D_{\rm stat}}.
  \tag{J-global}
  \]
  This sum counts every actual commit, post-commit unresolved root, tested
  label, and mode once. A crude \(O(r^{3/2}\nu_{\rm real}^3)\) entrywise
  estimate is not an accepted substitute; the rootwise
  \(\ell_2\)-to-\(\ell_1\) contraction needed for (J-global) is a generated
  proof obligation. In particular, the \(\ell=p\) terms have generated
  scale
  \[
  O\!\left(\nu_{\rm real}^3+e_{\rm num}\nu_{\rm real}
  +e_{\rm num}^2\right)
  \]
  per newly generated root before summation; rootwise factorization must sum
  their structural pieces as \(O(r\nu_{\rm real}^3)\) and all numerical
  pieces as \(O(r^2e_{\rm num})\). The \(\ell\ne p\) terms retain the
  \(H_AH_BH_C\) transitive cancellation and are no larger. The numerical
  pieces feed the single \(O(r^2e_{\rm num})\) budget in (J-global), with no
  additional label factor.

  Simultaneously, (J-update), (J-global), and the statewise resolvent must
  close the generated induction and prove, for every \(I=I_s\),
  \[
  \|A_I\|_1\le
  C_A\Gamma_\star r\nu_{\rm real}^3+
  C_A r^2P^{-D_{\rm stat}},
  \tag{R-hist-budget}
  \]
  \[
  \|\Theta_I\|_1\le{C_0\Gamma_\star\over1-q_{\rm res}}
  \left[
  3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
  +C_A\Gamma_\star r\nu_{\rm real}^3
  +C_{\rm num}r^2P^{-D_{\rm stat}}
  \right],
  \tag{R-budget}
  \]
  and
  \[
  \|A_I\|_1+
  \sum_{t=1}^{s}\sum_{\ell\ne p_t}
  \sum_{M\in\{A,B,C\}}\Xi_{p_t,M,\ell}
  \le C_{\rm acc}\Gamma_\star r\nu_{\rm real}^3
  +C_{\rm acc}r^2P^{-D_{\rm stat}}.
  \tag{R-acc}
  \]
  These bounds already sum over all relevant roots, tested labels, modes,
  and commits; they are not multiplied by \(r\) again. Choosing
  \(D_{\rm stat}\) so the displayed numerical terms are subordinate and
  using \(r\nu_{\rm real}=O(1/\log r)\), (R-acc) must place complete
  accepted-error forcing below the static \(\nu_{\rm real}^2\)
  angular-leakage scale.

  **Terminal same-target chart.** Let \(I_{\rm fin}\) be the final set of
  \(r\) committed indices. Set all slots outside \(I_{\rm fin}\) jointly to
  zero, unfreeze the committed slots, and run joint unprojected balanced
  trust-region Armijo gradient descent on the exact objective, updating only
  \(I_{\rm fin}\). Let
  \[
  Q^\star=(q_1^\star,\ldots,q_r^\star,0,\ldots,0)
  \]
  be the exact rank-\(k\) target state, and let \({\cal Z}_\star\) be its
  finite orbit under all \(k\)-slot permutations and product-one sign triples
  on nonzero components. Here
  \(\operatorname{dist}(Q,{\cal Z}_\star)\) is Euclidean factor distance in
  the full rank-\(k\) state space after minimization over this finite orbit.
  Define
  \[
  {\cal C}_{\rm PL}(\varrho)=
  \left\{Q:\operatorname{dist}(Q,{\cal Z}_\star)\le\varrho,\
  \max_{i,M}\|q_i^M\|_2\le2R_{\max},\
  q_i=0\text{ for }i\notin I_{\rm fin}\right\}.
  \]
  Entry of the actual generally nonorthogonal committed tuple, positive chart
  radius and PL constant, and first-exit invariance are proof-produced
  conclusions. The exact target, not an orthogonalized surrogate, is the chart
  reference. In the goal,
  \(\operatorname{grad}_{\rm bal}F\) denotes the Riemannian gradient on the
  balanced active-slot manifold for \(I_{\rm fin}\).

- Technical assumptions:
  - `assump:base-column-conditioning` (Polynomial base-column scales): Every
    base column is nonzero and
    \[
    \kappa^{-1}\le\|\bar a_j\|_2,\|\bar b_j\|_2,
    \|\bar c_j\|_2\le\kappa,\qquad
    1\le\kappa\le r^{c_0},
    \]
    for a fixed \(c_0>0\).
  - `assump:base-product-balance` (Balanced CP-product weights): For a fixed
    absolute \(\Gamma_\star\ge1\),
    \[
    {\max_j\bar\tau_j\over\min_j\bar\tau_j}\le\Gamma_\star.
    \]
    Reciprocal polynomial modewise rescalings are allowed subject only to
    this product condition and the column bounds.
  - `assump:gaussian-smoothing` (Independent source perturbations):
    Independently over \(j\in[r]\) and all three modes,
    \[
    a_j-\bar a_j,\quad b_j-\bar b_j,\quad c_j-\bar c_j
    \sim{\cal N}(0,\rho^2I_n/n).
    \]
  - `assump:dimension-regime` (Ambient dimension):
    \(n\ge C_{\rm dim}r\log(2r)\) for a fixed sufficiently large absolute
    \(C_{\rm dim}\).
  - `assump:smoothing-scale` (Inverse-polynomial smoothing):
    \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\) for a fixed
    \(c_\rho>0\).
  - `assump:modewise-gram-margin` (Normalized Gram and smoothing margin):
    For fixed sufficiently large absolute \(C_{\rm sm},C_\nu\),
    \[
    \nu_{\rm base}+C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
    \le\nu_\star={1\over C_\nu r\log(2r)}.
    \]
    All realized absolute-Gram, transfer, resolvent, and trajectory controls
    remain derived.
  - `assump:rank-regime` (Strictly subquadratic algorithmic rank):
    \[
    k=U(r)=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,\qquad
    r<k<r^2,
    \]
    for a fixed sufficiently large \(C_{\rm rank}\) and
    \(r\ge r_0(C_{\rm rank})\).
  - `assump:random-tape` (Independent finite full-space Haar tape):
    Conditional on the realized instance, the \(N_{\rm tx}\) seed triples
    are mutually independent, each is Haar on
    \((\mathbb S^{n-1})^3\), and the tape is independent of the instance.
    This is the complete algorithmic randomness.
  - `assump:accuracy-range` (Relative Frobenius tolerance):
    \(0<\epsilon<1\). If the observed tensor is exactly zero, the algorithm
    returns the all-zero state before defining \(a_{\rm seed}\).

# Formalized Goal

- Goal statement:
  Prove, in target-spec mode, one material_partial leverage-screened,
  J-aware resolvent-ledger, full-space unprojected reachable-landscape and
  trajectory theorem
  uniformly over every deterministic base triple satisfying the technical
  assumptions. First construct a once-drawn event
  \({\cal E}_{\rm inst}\) with
  \[
  \mathbb P_{\rm inst}({\cal E}_{\rm inst})\ge1-r^{-10}
  \]
  on which all realized columns are nonzero,
  \[
  (2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa,\qquad
  {\tau_{\max}\over\tau_{\min}}\le2\Gamma_\star,\qquad
  \nu_{\rm real}\le2\nu_\star,
  \]
  \[
  \max_{M\ne N}\|G_M\circ G_N-I_r\|_{\rm op}\le{1\over16},\qquad
  \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le{1\over16},
  \]
  \[
  \sqrt{15/16}\|\tau\|_2\le\|T\|_F
  \le\sqrt{17/16}\|\tau\|_2,\qquad T\ne0,
  \]
  and the exact balanced representation lies inside the radius guard.
  Derive (R-src), (R-leak-A) and its cyclic analogues, the definitions and
  static bound for \(S\), both transfer norm bounds (R-gap) and (J-row-gap),
  and their small-gain margins from this event and the deterministic protocol
  parameters. Also derive the deterministic source-class bounds used in
  (Lev-envelope) and (Lev-budgets). None of these realized, lifted, matching,
  leverage-pass, or trajectory controls may be added as a primitive
  assumption.

  Conditional on a fixed \(T\in{\cal E}_{\rm inst}\), start from
  \(I=\varnothing\), the empty injection, and \(A_\varnothing=0\). Prove by
  induction that every proof-generated protected state has a well-defined
  convergent envelope (R-ledger), the stored zero-diagonal profile (J-z), the
  generated rowwise estimate (J-row), and the budgets (R-hist-budget),
  (R-budget), (J-global), and (R-acc). At such a state, derive the exact
  split (Lev-split), the guarded source-normal estimate (Lev-normal), and the
  raw inequalities (Lev-raw). Show that every genuine unresolved-target
  certificate neighborhood passes (Lev) with inverse-polynomial slack. On
  both \({\cal E}_{\rm lb}\) and \({\cal E}_{\rm lb}^c\), with all raw
  \(\bar\eta^2\) and \(P^{D_{\rm nor}-D_{\rm stat}}\) terms retained in the
  latter branch, prove (Lev-route). Use that route, rather than a
  matched-mixture exchange assumption, in the robust current-residual
  angular-landscape theorem: every full-space scratch state satisfying both
  (Cert) and (Lev) is, up to a product-one sign triple, an \(O(\eta_0)\)
  Euclidean direction and radius perturbation of exactly one unresolved
  realized target atom. It must export unique label assignment, separation
  from matched labels, (R-euc), (R-dir), and the extended injection. Derive
  these conclusions from the absolute-Gram kernels, actual protected spans,
  statewise actual-history source, and Neumann envelope rather than assuming
  them as a generated good-state event. A certified state failing (Lev) is
  rejected and exactly rolled back, not projected into another state.

  For every accepted slot, prove the exact multilinear expansions
  (R-tensor) and its cyclic forms. For every transition prove
  the symmetric positive/baseline charge (J-charge), (J-update), and their
  cyclic forms for every \(\ell\ne j\), including \(\ell=p\). Verify the
  diagonal identity (J-diag), and the honest two-label audit (J-two-label):
  on the isolated O.1 verification family (with the local Gram scale
  \(\nu_{\rm real}=h\)) the captured-label charge is
  \(O(h^4+P^{-D_{\rm stat}}h+P^{-2D_{\rm stat}})\), with its positive
  numerical terms retained so it dominates the exact \(2h^4+O(h^6)\)
  increment even at \(h=P^{-2D_{\rm stat}}\). No lower bound on \(h\) is
  allowed, and repeat the same audit in all cyclic modes. Also prove the off-diagonal reduction
  \(J_M(p,\ell)=H_M(p,\ell)\) when \(\ell\ne p\).
  Then use the nonnegative transfer, both Neumann small-gain relations, the
  generated rootwise \(\ell_2\) profile, the per-root factorization
  (Lev-Jdiag), and the one-time global charge sum
  to close the all-commit induction without an extra factor \(r\) or
  \(\sqrt r\). In particular, prove (J-global) and (R-acc) with every
  diagonal structural term summed once as
  \(O(\Gamma_\star r\nu_{\rm real}^3)\) and every numerical term summed once
  as \(O(r^2P^{-D_{\rm stat}})\). Display and dominate every numerical term,
  and show that complete
  accepted-error forcing is smaller than the static angular-isolation margin
  at every later transaction. The rowwise and global bounds remain derived
  outputs, never theorem assumptions.

  Under the same already-derived protected-state interface, prove that one
  fresh full-space Haar transaction reaches both (Cert) and (Lev) within
  \(H_{\rm tx}\) work and produces the valid new ledger entry with
  history-uniform
  conditional probability
  \[
  \mathbb P_{\rm tape}(\text{next transaction commits}\mid
  T,\text{ protected history})\ge p_{\rm tx}:=(nr)^{-c_{\rm tx}}.
  \]
  Cover radial activation and bracketing, angular-gradient descent,
  approximate negative-curvature escape, capture, separation, the leverage
  score floor and relative test, ambiguous and guard outcomes, and the
  inverse-polynomial accepted-step bound. Prove exact rollback for every
  failure, including screen failure. Then use the finite independent tape and
  generated injection to obtain all \(r\) distinct commits with
  \[
  \mathbb P_{\rm tape}(\text{all \(r\) commits}\mid T)\ge1-r^{-10}.
  \]
  Discovery work, including every protected-span QR/SVD and leverage-screen
  evaluation, must be polynomial in \(n,r,k,\kappa,\rho^{-1}\) and
  independent of \(\epsilon\).

  After the last commit, prove that the actual generally nonorthogonal tuple
  lies in a same-target chart \({\cal C}_{\rm PL}(\varrho_{\rm PL})\), with
  proof-produced
  \[
  \varrho_{\rm PL}\ge P^{-D_{\rm PL}},\qquad
  \mu_{\rm PL}\ge P^{-D_{\rm PL}}>0
  \]
  for a fixed \(D_{\rm PL}>0\), and throughout the chart
  \[
  \|\operatorname{grad}_{\rm bal}F(Q)\|_F^2
  \ge2\mu_{\rm PL}F(Q).
  \]
  Prove first-exit invariance under joint unprojected trust-region Armijo
  updates and, for every \(0<\epsilon<1\), produce a rank-\(k\) iterate with
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F.
  \]
  Terminal work must be
  \(\operatorname{poly}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\);
  after substituting assump:rank-regime,
  assump:base-column-conditioning, and assump:smoothing-scale, total work is
  \(\operatorname{poly}(n,r,\log(1/\epsilon))\).

  The instance and tape statements remain separate probabilities of at least
  \(1-r^{-10}\). The horizon is finite discovery followed by a finite
  \(\log(1/\epsilon)\) terminal horizon, and the target norm is Frobenius.
  Exposed variables are
  \(n,r,k,\kappa,\rho,\Gamma_\star,P,\nu_{\rm real},\eta_0,\bar\eta,
  \epsilon\),
  the derived audit scale \(e_{\rm num}=P^{-D_{\rm stat}}\) (with fixed
  proof exponent \(D_{\rm stat}\)), the local audit parameter \(h\), the
  protected-span leverages \(\lambda_M,\Lambda_I^+\), the screen budgets
  \(B_I^{(1)},B_I^{(\ge2)}\), and the lifted kernels, statewise ledger
  quantities, and displayed proof constants and exponents.
  Hidden constants and polynomial degrees may depend only on the fixed class
  constants
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,C_{\rm rank},\Gamma_\star\)
  and fixed protocol/Armijo constants, not on
  \(n,r,k,\kappa,\rho,\epsilon\), the commit order, or realized instance.
  There is no additive error floor: failed probes vanish by exact rollback,
  accepted errors are a finite terminal initialization error controlled by
  (R-acc), and unused slots are joint zero. The conclusion remains limited
  to balanced-product-weight, modewise-near-orthogonal smoothed tensors and
  the sequential transactional algorithm; arbitrary bases, unbalanced
  product weights, and simultaneous all-slot gradient descent remain open.
  In the exact orthogonal/noiseless baseline, every unresolved target atom
  has zero protected-span leverage, passes (Lev), the exact balanced
  representation remains the terminal reference, rollback is exact, and the
  same-target PL phase attains arbitrary relative accuracy with no floor.

# Note

- Rigor:
  Parent foundation papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* and *Beyond Lazy Training for
  Over-parameterized Tensor Decomposition*. Transfer map: preserve the first
  paper's exact asymmetric CP/Khatri--Rao and source-span interfaces and the
  second paper's full-space iterative feature-discovery/reinitialization
  pattern. Relative to idea 9, change only the commit protocol by adding the
  observable protected-span leverage screen (Lev); retain the honest J-aware
  Neumann update, two-label audit, and rootwise charge after (Lev-route)
  restores unresolved-mass dominance. The protected-span projector is used
  only to evaluate the screen: it never projects, whitens, retracts, or
  modifies an iterate. No modified objective, target query, generated-state
  assumption, or new primitive assumption is introduced.

  Source alignment: the exact asymmetric objective, independent Gaussian
  smoothing, full-space transactional gradient procedure,
  \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), polynomial runtime, once-drawn instance
  probability, finite random-initialization tape, separate probability
  statements, exact rollback, and arbitrary relative Frobenius accuracy are
  preserved. The theorem remains explicitly narrowed to the
  balanced-product-weight, modewise-near-orthogonal source class and does not
  claim the full arbitrary-base target. Progress type: material_partial.
  Materiality: this public-target-preserving repair removes the sole
  unresolved matched-mixture producer. A protected matched mixture is either
  rejected by the target-blind observable screen or its matched contribution
  is proved to be a fixed small fraction of the current score. The target
  remains a strictly subquadratic end-to-end iterative theorem, not a stopped,
  conditional, positive-floor, or weaker-surrogate result.

  Assumption support: assump:base-column-conditioning,
  assump:gaussian-smoothing, assump:dimension-regime, and
  assump:smoothing-scale come from the source smoothed CP model;
  assump:rank-regime is the approved strictly subquadratic target;
  assump:random-tape is the explicit Haar initialization law; and
  assump:accuracy-range is the source relative-error interface.
  assump:base-product-balance and assump:modewise-gram-margin are the same
  approved narrowed conditions as idea 6, checked by orthogonal equal-weight
  factors; two targets with a common nonzero correlation in all three modes;
  reciprocal rescalings \((d_j,d_j^{-1},1)\); and dense or block-correlated
  normalized frames with operator-Gram margin and balanced product weights.
  No new primitive assumption is added.

  The leverage screen is novel example-verified but not primitive:
  orthogonal equal-weight unresolved atoms have zero leverage, while an exact
  protected-span mixture has order-one pair leverage and zero residual score;
  on the O.1 two-label family an unresolved atom has \(O(h^2)\) pair leverage
  whereas captured-label error has two leverages
  \(1-O(\bar\eta^2)\); on the three-label chain, unresolved leverage remains
  \(O(h^2)\) while the unchanged \(KJ\) source records the \(h^3\) path; and
  dense or block frames satisfy the derived bound
  \(\lambda_M\le C\sqrt{|I|}(\nu_{\rm real}+\bar\eta)\), hence
  \(\Lambda_I^+=O(|I|(\nu_{\rm real}+\bar\eta)^2)\), while a two-mode
  protected mixture has constant pair leverage. On
  \({\cal E}_{\rm lb}^c\), including
  \(\nu_{\rm real}=0,e_{\rm num}>0\), (Lev-budgets) retains the raw numerical
  terms and the observable score floor supplies the required dominance. These
  examples support the mechanism; (Lev-raw), (Lev-route), and neighborhood
  passage remain proof obligations.

  The lifted ledger is novel example-verified: it vanishes structurally in
  the orthogonal equal-weight case; (R-base) contains the exact \(h^3\)
  three-label obstruction from idea 6; Neumann powers charge longer sparse
  chains; and (J-diag) supplies the captured-label identity omitted by idea 7.
  On the isolated approved two-label family (where the local Gram scale is
  \(\nu_{\rm real}=h\)) its charge has the honest scale
  \(O(h^4+e_{\rm num}h+e_{\rm num}^2)\); the positive numerical terms make
  it dominate the exact \(2h^4+O(h^6)\) increment even at
  \(h=e_{\rm num}^2\). For \(\ell\ne p\) one has
  \(J_M(p,\ell)=H_M(p,\ell)\). The generated rootwise \(\ell_2\) estimate and
  (Lev-Jdiag) sum structural diagonal terms as
  \(O(r\nu_{\rm real}^3)\) and numerical terms once as
  \(O(r^2e_{\rm num})\), with no tested-label or commit multiplier afterward.
  The global sum is a derived dense/block-frame audit and may not be assumed.
  Reciprocal rescalings leave the normalized kernels unchanged. Gaussian
  transfer, balancing, radial bracketing, Armijo, and local PL are standard or
  direct; strict-saddle and separation papers remain motivation only.

  The realized kernels, both transfer gaps, Neumann envelope, source-normal
  remainder, matched-error split, (Lev-raw), (Lev-route), unresolved
  neighborhood passage, zero-diagonal profiles, rootwise bound, actual
  history forcing, direction matching, tensor influence, J-aware update,
  (Lev-Jdiag), one-time global charge, all-commit budget, transaction success,
  chart entry, and PL invariance are generated proof obligations. The
  algorithm queries only the actual protected spans and residual score in
  (Lev), never a target label, source factor, matching, kernel, or envelope.
  Exact orthogonal/noiseless representation, exact rollback, joint-zero
  unused slots, and arbitrary-\(\epsilon\) same-target refinement preserve the
  inherited baseline obligation exactly.
