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
  oblique projection, or protected-dependent retraction is used.

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

  **Finite-tape protocol and exact rollback.** Put
  \[
  P=16nrk\kappa\rho^{-1},\qquad R_{\max}=8\kappa,\qquad
  a_{\rm seed}=\|T\|_FP^{-120},\qquad
  \delta=a_{\rm seed}^{1/3},\qquad \Delta_{\rm tr}=P^{-20}.
  \]
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

  A successful transaction commits the scratch slot without changing its
  directions and records its capture. Every unsuccessful transaction maps
  the scratch slot exactly to joint zero. Thus protected factors, represented
  tensor, residual, and loss after rollback equal their pre-transaction
  values; failed probes create no persistent forcing. All computations use
  only \(T\), current factors and residual, factor inner products, gradients,
  Hessian-vector products, and the finite tape.

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
  The theorem is to choose fixed absolute proof constants
  \(C_0,C_\eta,C_{\rm led},C_A,C_{\rm num},C_{\rm ten},
  C_{\rm acc}>0\). Define
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
  after choosing the fixed constants, \(D_{\rm stat}\), and the asymptotic
  threshold consistently. This is a derived small-gain bound under the
  existing primitive Gram margin, not a new assumption.

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

  **History update and all-commit budget.** The proof must derive
  \[
  \|S\|_1\le
  3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real}),
  \tag{R-S-budget}
  \]
  \[
  \|A_I\|_1\le
  C_A\Gamma_\star r\nu_{\rm real}^3+
  C_A r^2P^{-D_{\rm stat}},
  \tag{R-hist-budget}
  \]
  and consequently
  \[
  \|\Theta_I\|_1\le{C_0\Gamma_\star\over1-q_{\rm res}}
  \left[
  3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
  +C_A\Gamma_\star r\nu_{\rm real}^3
  +C_{\rm num}r^2P^{-D_{\rm stat}}
  \right].
  \tag{R-budget}
  \]
  This \(\ell_1\) norm already sums over every root, tested label, and mode;
  it is not multiplied by \(r\) again.

  For a label \(j\) at the state where it is captured, put
  \[
  z_{j,M,\ell}=\Theta_{I;j,M,\ell}
  +C_{\rm num}P^{-D_{\rm stat}}.
  \]
  Define
  \[
  \begin{split}
  \Xi_{j,A,\ell}={}&H_C(j,\ell)z_{j,B,\ell}
  +H_B(j,\ell)z_{j,C,\ell}
  +z_{j,B,\ell}z_{j,C,\ell}\\
  &+\eta_0
  (H_B(j,\ell)+z_{j,B,\ell})
  (H_C(j,\ell)+z_{j,C,\ell}),
  \end{split}
  \tag{R-infl}
  \]
  with cyclic versions. Direct accepted-tensor expansion must prove
  \[
  \|E_i\mathbin{\times_2}m_{\ell,B}^\top
  \mathbin{\times_3}m_{\ell,C}^\top\|_2
  \le C_{\rm ten}\tau_j\Xi_{j,A,\ell},
  \tag{R-tensor}
  \]
  for the slot matched to \(j\) and every \(\ell\ne j\), with cyclic
  analogues.

  For a newly captured label \(p\), an unresolved root \(j\), and tested
  label \(\ell\), define
  \[
  \begin{split}
  \Upsilon^A_{p;j,\ell}={}&(1+\eta_0)
  (H_A(p,\ell)+z_{p,A,\ell})
  (H_B(p,j)+z_{p,B,j})\\
  &\qquad\cdot(H_C(p,j)+z_{p,C,j})
  -H_A(p,\ell)H_B(p,j)H_C(p,j),
  \end{split}
  \tag{R-charge}
  \]
  with cyclic definitions. The exact scalar contraction of the newly
  accepted \(E_i\) must give
  \[
  A_{I\cup\{i\};j,A,\ell}-A_{I;j,A,\ell}
  \le2\Gamma_\star\Upsilon^A_{p;j,\ell},
  \tag{R-update}
  \]
  and its cyclic analogues. Choosing \(D_{\rm stat}\) so all numerical terms
  are subordinate, the statewise resolvent and these exact updates must close
  the generated induction and prove
  \[
  \|A_I\|_1+
  \sum_{\substack{p,\ell\in[r]\\p\ne\ell}}\sum_M
  \Xi_{p,M,\ell}
  \le C_{\rm acc}\Gamma_\star r\nu_{\rm real}^3.
  \tag{R-acc}
  \]
  In the sum, \(\Xi_{p,M,\ell}\) is included only after \(p\) has been
  captured and its \(z\)-profile has been produced. Since
  \(r\nu_{\rm real}=O(1/\log r)\), (R-acc) must place complete accepted-error
  forcing below the static \(\nu_{\rm real}^2\) angular-leakage scale.

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
  Prove, in target-spec mode, one material_partial resolvent-ledger,
  separation-gated, unprojected reachable-landscape and trajectory theorem
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
  static bound for \(S\), the transfer norm bound, and (R-gap) from this event
  and the deterministic protocol parameters. None of these realized or
  lifted controls may be added as a primitive assumption.

  Conditional on a fixed \(T\in{\cal E}_{\rm inst}\), start from
  \(I=\varnothing\), the empty injection, and \(A_\varnothing=0\). Prove by
  induction that every proof-generated protected state has a well-defined
  convergent envelope (R-ledger) and satisfies (R-hist-budget), (R-budget),
  and (R-acc). At such a state, prove a robust current-residual angular-
  landscape theorem: every full-space scratch state satisfying (Cert) is,
  up to a product-one sign triple, an \(O(\eta_0)\) Euclidean direction and
  radius perturbation of exactly one unresolved realized target atom. It must
  export unique label assignment, separation from matched labels, (R-euc),
  (R-dir), and the extended injection. Derive these conclusions from the
  absolute-Gram kernels, statewise history source, and Neumann envelope rather
  than assuming them as a good-state event.

  For every accepted slot, prove the exact multilinear expansions
  (R-tensor) and its cyclic forms. For every transition prove
  (R-update) and its cyclic forms, then use the nonnegative transfer,
  Neumann small-gain relation, and one-time global \(\ell_1\) budget to close
  the all-commit induction without an extra factor \(r\). In particular,
  prove (R-acc) with all numerical terms explicitly dominated and show that
  complete accepted-error forcing is smaller than the static angular-
  isolation margin at every later transaction.

  Under the same already-derived protected-state interface, prove that one
  fresh full-space Haar transaction reaches (Cert) within \(H_{\rm tx}\)
  work and produces the valid new ledger entry with history-uniform
  conditional probability
  \[
  \mathbb P_{\rm tape}(\text{next transaction commits}\mid
  T,\text{ protected history})\ge p_{\rm tx}:=(nr)^{-c_{\rm tx}}.
  \]
  Cover radial activation and bracketing, angular-gradient descent,
  approximate negative-curvature escape, capture, separation, ambiguous and
  guard outcomes, and the inverse-polynomial accepted-step bound. Prove exact
  rollback for every failure. Then use the finite independent tape and
  generated injection to obtain all \(r\) distinct commits with
  \[
  \mathbb P_{\rm tape}(\text{all \(r\) commits}\mid T)\ge1-r^{-10}.
  \]
  Discovery work must be polynomial in
  \(n,r,k,\kappa,\rho^{-1}\) and independent of \(\epsilon\).

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
  \(n,r,k,\kappa,\rho,\Gamma_\star,P,\epsilon\), the lifted kernels,
  statewise ledger quantities, and displayed proof constants and exponents.
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

# Note

- Rigor:
  Parent foundation papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* and *Beyond Lazy Training for
  Over-parameterized Tensor Decomposition*. Transfer map: preserve idea 6's
  exact asymmetric source loss, Gaussian smoothing, balanced full-space
  transactions, exact rollback, separation, angular-only certification,
  finite-tape accounting, subquadratic rank, and no-floor terminal
  refinement. Replace only its false direct-pair error ledger by the
  absolute-Gram lifted transfer, actual accepted-history source, and
  statewise Neumann envelope. No projection, transitivity axiom, modified
  objective, or observable target information is introduced.

  Source alignment: the exact source objective, independent smoothing,
  polynomial random tape, \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), polynomial
  runtime, separate probabilities, and arbitrary relative Frobenius accuracy
  are preserved. The target-changing narrowing remains exactly the
  balanced-product-weight, modewise-near-orthogonal base class exposed in
  idea 6; the resolvent is derived and does not narrow the population.
  Progress type: material_partial. Materiality: the target remains a
  strictly subquadratic iterative theorem on the same nontrivial smoothed
  asymmetric class, while the new ledger charges direct, transitive, and
  longer correlation paths without orthogonalizing true target directions or
  leaving a terminal floor.

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

  The lifted ledger is novel example-verified: it vanishes structurally in
  the orthogonal equal-weight case; (R-base) contains the exact \(h^3\)
  three-label obstruction from idea 6; Neumann powers charge longer sparse
  chains; and the entrywise \(\ell_1\) bounds cover dense/block frames without
  assuming an operator bound for \(|G_M-I|\). Reciprocal rescalings leave the
  normalized kernels unchanged. Gaussian transfer, balancing, radial
  bracketing, Armijo, and local PL are standard or direct. Strict-saddle and
  separation papers remain motivation only for a new proof on this objective.

  The realized kernels, resolvent gap, envelope, history forcing, direction
  matching, tensor influence, history update, all-commit budget, transaction
  success, chart entry, and PL invariance are generated proof obligations.
  The algorithm never queries them or any target label. Exact representation,
  exact rollback, joint-zero unused slots, and arbitrary-\(\epsilon\)
  same-target refinement preserve the inherited baseline obligation.
