# Formalized Setting

- Basic setup:
  **Source and realized instance.** Fix integers \(n,r\), a parameter
  \(\kappa\ge 1\), and deterministic matrices
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) in \(\mathbb R^{n\times r}\).
  For a matrix \(M\) with nonzero columns, define
  \[
  D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2),\qquad
  \widetilde M=MD_M^{-1},\qquad G_M=\widetilde M^\top\widetilde M,
  \]
  and put
  \[
  \mu_{\rm base}:=\max_{M\in\{\bar A,\bar B,\bar C\}}
  \|G_M-I_r\|_{\rm op}.
  \]
  Independently over \(j\in[r]\) and the three modes, draw the realized
  columns according to the Gaussian law in `assump:gaussian-smoothing`, and
  write the resulting matrices as \(A,B,C\). Whenever the realized columns
  are nonzero, set
  \[
  \widetilde a_j={a_j\over\|a_j\|_2},\quad
  \widetilde b_j={b_j\over\|b_j\|_2},\quad
  \widetilde c_j={c_j\over\|c_j\|_2},\quad
  \tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,
  \]
  \[
  \phi_j=\widetilde a_j\otimes\widetilde b_j\otimes\widetilde c_j,
  \qquad T=\sum_{j=1}^r\tau_j\phi_j
  =\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
  \]
  Let \(\Phi_\star:\mathbb R^r\to\mathbb R^{n\times n\times n}\)
  have columns \(\phi_j\), and define
  \[
  G_\star=\Phi_\star^*\Phi_\star=G_A\circ G_B\circ G_C,
  \]
  \[
  \mu_{\rm real}=\max_{M\in\{A,B,C\}}\|G_M-I_r\|_{\rm op},
  \quad
  \Delta_{\rm pair}^{\rm real}=\max_{M\ne N}
  \|G_M\circ G_N-I_r\|_{\rm op}.
  \]
  The realized norm, Gram, nonvanishing, and exact-representation properties
  used below are outputs of the good-instance event in the goal; they are not
  primitive assumptions.

  **Objective, slots, and balance.** For algorithmic rank \(k\), let
  \(Q=(X,Y,Z)\), where \(X=(x_1,\ldots,x_k)\) and similarly for \(Y,Z\), and
  define
  \[
  \Psi(Q)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
  R(Q)=T-\Psi(Q),\qquad F(Q)={1\over2}\|R(Q)\|_F^2.
  \]
  The tensor-preserving balance map is
  \[
  {\cal B}(x,y,z)=
  \begin{cases}
  g(x/\|x\|_2,y/\|y\|_2,z/\|z\|_2),
  &\|x\|_2\|y\|_2\|z\|_2>0,\\
  (0,0,0),&\text{otherwise},
  \end{cases}
  \quad
  g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3}.
  \]
  Thus every nonzero slot is written \(q_i=(g_i u_i,g_i v_i,g_i w_i)\)
  with unit directions and common radius \(g_i>0\), while every partial-zero
  slot is mapped to joint zero. On the good-instance event, the \(r\) slots
  \[
  q_j^\star=(\tau_j^{1/3}\widetilde a_j,
  \tau_j^{1/3}\widetilde b_j,
  \tau_j^{1/3}\widetilde c_j),\qquad j\in[r],
  \]
  together with \(k-r\) joint-zero slots represent \(T\) exactly. This exact
  balanced representation is the baseline solution that the terminal phase
  must reach to arbitrary relative accuracy.

  **Protected state and transactional probe.** A reachable discovery state
  consists of a protected index set \(I\subset[k]\), with \(|I|<r\), balanced
  protected slots \(q_i=(g_i u_i,g_i v_i,g_i w_i)\), and joint-zero slots
  outside \(I\). Define, for \(M\in\{A,B,C\}\),
  \[
  S_A(I)=\operatorname{span}\{u_i:i\in I\},\quad
  S_B(I)=\operatorname{span}\{v_i:i\in I\},\quad
  S_C(I)=\operatorname{span}\{w_i:i\in I\},
  \]
  \[
  \Pi_M^I=I_n-\operatorname{Proj}_{S_M(I)},qquad
  R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i.
  \]
  During one transaction every protected slot is frozen. One unprotected
  scratch slot is seeded, updated, and either committed or returned exactly
  to joint zero. Hence a failed transaction returns the complete factor state,
  represented tensor, residual \(R_I\), and loss to their pre-transaction
  values; no failed-probe tensor, forcing term, radius slack, or displacement
  debt persists into the next transaction.

  For a scratch slot \(q=(gu,gv,gw)\), define the exact one-probe loss and
  radial score
  \[
  f_I(g,u,v,w)={1\over2}\|R_I-g^3u\otimes v\otimes w\|_F^2,
  \quad s_I(u,v,w)=\langle R_I,u\otimes v\otimes w\rangle,
  \]
  \[
  d_I(g,u,v,w)=s_I(u,v,w)-g^3,qquad
  \partial_g f_I=-3g^2d_I.
  \]
  Thus the observable negative radial-gradient direction has exactly the sign
  of \(d_I\). For fixed directions, an observed sign change of \(d_I\)
  brackets the unique positive radial stationary point whenever \(s_I>0\).
  The observable capture exported by a committed probe is
  \[
  \Delta F_I(q)=f_I(0)-f_I(q)=g^3s_I-{1\over2}g^6.
  \]

  **Angular objects and certificate.** Let
  \({\cal S}=(\mathbb S^{n-1})^3\), with tangent space
  \[
  T_{(u,v,w)}{\cal S}=u^\perp\times v^\perp\times w^\perp.
  \]
  With \(R_I\) denoting the pre-scratch protected residual, set
  \[
  h_A=R_I\mathbin{\times_2}v^\top\mathbin{\times_3}w^\top,
  \quad h_B=R_I\mathbin{\times_1}u^\top\mathbin{\times_3}w^\top,
  \quad h_C=R_I\mathbin{\times_1}u^\top\mathbin{\times_2}v^\top.
  \]
  The three axial contractions
  \(\alpha_A=\langle h_A,u\rangle\),
  \(\alpha_B=\langle h_B,v\rangle\), and
  \(\alpha_C=\langle h_C,w\rangle\) all equal \(s_I\), but the three
  transverse residuals are tested separately. For fixed proof constants
  \(D_{\rm rad},D_{\rm ang},D_{\rm cap}>0\), define
  \[
  \nu_I=\max\{s_I,g^3,\|R_I\|_F P^{-D_{\rm ang}}\},
  \]
  \[
  e_A={\|(I_n-uu^\top)h_A\|_2\over\nu_I},\quad
  e_B={\|(I_n-vv^\top)h_B\|_2\over\nu_I},\quad
  e_C={\|(I_n-ww^\top)h_C\|_2\over\nu_I}.
  \]
  Let \(\operatorname{grad}_{\cal S}f_I\) and
  \(H_{\rm ang}=\operatorname{Hess}_{\cal S}f_I\) be respectively the
  Riemannian gradient and Hessian of
  \((u,v,w)\mapsto f_I(g,u,v,w)\) at fixed \(g\). Define
  \[
  \widehat H_{\rm ang}={H_{\rm ang}\over
  1+\|R_I\|_F+g^4},
  \qquad
  \widehat\gamma_{\rm ang}={\|\operatorname{grad}_{\cal S}f_I\|_2\over
  1+\|R_I\|_F+g^4},
  \qquad
  \zeta_{\rm ang}={8\over100r\log(2r)}.
  \]
  The certificate \({\sf Cert}_{\rm ang}(q;I)\) requires all of
  \[
  |d_I|\le P^{-D_{\rm rad}}
  \max\{s_I,g^3,\|R_I\|_FP^{-D_{\rm rad}}\},
  \quad \alpha_A,\alpha_B,\alpha_C>0,
  \]
  \[
  \widehat\gamma_{\rm ang}\le P^{-D_{\rm ang}},qquad
  \max\{e_A,e_B,e_C\}\le\zeta_{\rm ang},qquad
  \lambda_{\min}(\widehat H_{\rm ang})\ge P^{-D_{\rm ang}},
  \]
  \[
  \Delta F_I(q)\ge\|R_I\|_F^2P^{-D_{\rm cap}}.
  \]
  This Hessian acts only on \(u^\perp\times v^\perp\times w^\perp\): no
  radial direction, balanced full-factor tangent, or radial-curvature
  positivity condition is part of the certificate.

  **Finite-tape transaction protocol.** Put
  \[
  P=16nrk\kappa\rho^{-1},\qquad R_{\max}=8\kappa,qquad
  a_{\rm seed}=\|T\|_FP^{-120},\qquad
  \delta=a_{\rm seed}^{1/3},\qquad \Delta_{\rm tr}=P^{-20}.
  \]
  The theorem is to exhibit fixed constants
  \(c_{\rm ang},d_{\rm tx},D_{\rm rad},D_{\rm ang},D_{\rm cap}>0\) and use
  \[
  N_{\rm tx}=\left\lceil8r(nr)^{c_{\rm ang}}\log(2r)\right\rceil,
  \qquad H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil.
  \]
  A single tape contains \(N_{\rm tx}\) independent triples
  \((\omega_t^A,\omega_t^B,\omega_t^C)\), each Haar on
  \((\mathbb S^{n-1})^3\). At protected state \(I\), transaction \(t\)
  forms
  \[
  u={\Pi_A^I\omega_t^A\over\|\Pi_A^I\omega_t^A\|_2},\quad
  v={\Pi_B^I\omega_t^B\over\|\Pi_B^I\omega_t^B\|_2},\quad
  w={\Pi_C^I\omega_t^C\over\|\Pi_C^I\omega_t^C\|_2}
  \]
  whenever the denominators are nonzero, and seeds \((\delta u,\delta v,
  \delta w)\). It first keeps \((u,v,w)\) fixed and uses radial
  trust-region Armijo steps while \(d_I>0\). The first opposite-sign pair is
  refined by observable dyadic radial bisection and Armijo steps until the
  displayed radial-bracket tolerance holds. If no sign change occurs before
  \(g=2R_{\max}\), the compact factor box is left, or the transaction budget
  is exhausted, the scratch slot is rolled back.

  At a radial bracket, the protocol takes Riemannian angular-gradient steps
  on \({\cal S}\), re-solving the radial bracket after every accepted angular
  step. When the normalized angular gradient is small but
  \(\lambda_{\min}(\widehat H_{\rm ang})<-P^{-D_{\rm ang}}\), it uses a
  bounded approximate negative-eigenvector angular step accepted by decrease
  in the exact loss, and then re-brackets. A probe is committed only when
  \({\sf Cert}_{\rm ang}(q;I)\) holds. An uncertified approximate second-order
  state, a guard violation, or exhaustion of \(H_{\rm tx}\) causes exact
  rollback. All tests use only \(T\), current factors, current residual
  contractions, protected projectors, and Hessian-vector products. They do
  not query true factors or target labels.

  **Trust-region bounds.** For an updated slot set \(J\), let \(m=|J|\),
  \(r_s=\|R(Q)\|_F\),
  \[
  b_s=1+\max_{i\in I\cup J,\,M\in\{A,B,C\}}\|q_i^M\|_2,
  \qquad \bar b_s=b_s+\Delta_{\rm tr},
  \]
  \[
  G_{\rm loc}(s,J)=\sqrt{3m}\,\bar b_s^2(r_s+m\bar b_s^3),
  \]
  \[
  L_{\rm loc}(s,J)=3m\bar b_s^4+
  6\sqrt m\,\bar b_s(r_s+m\bar b_s^3).
  \]
  For the relevant Euclidean or projected gradient \(\nabla_J^{\rm proj}F\),
  the dyadic line search starts below
  \[
  \lambda_{\rm cap}(s,J)=\min\left\{
  {1\over8L_{\rm loc}(s,J)},
  {\Delta_{\rm tr}\over2\|\nabla_J^{\rm proj}F(s)\|_F+2}
  \right\}.
  \]
  A balanced trial is accepted only if every updated radius is at most
  \(2R_{\max}\), its factor displacement is at most \(\Delta_{\rm tr}\),
  and
  \[
  F(Q^+)\le F(Q)-{\lambda\over4}
  \|\nabla_J^{\rm proj}F(Q)\|_F^2.
  \]
  Discovery steps project only onto the current protected complements;
  terminal steps are unprojected. On the global guarded box define
  \[
  B_\star=2R_{\max}+2,
  \quad R_\star=\|T\|_F+kB_\star^3,
  \quad G_{\rm box}^\star=\sqrt{3k}B_\star^2R_\star,
  \]
  \[
  L_{\rm box}^\star=3kB_\star^4+6\sqrt{k}B_\star R_\star.
  \]
  The accepted-step lower bound to be derived for every nonstationary
  gradient trial is
  \[
  \lambda_{\rm acc}\ge
  \min\left\{{1\over16L_{\rm box}^\star},
  {\Delta_{\rm tr}\over4G_{\rm box}^\star}\right\}.
  \]

  **Proof-produced isolation and protected-span interfaces.** These objects
  are named here as proof obligations, not assumptions. A successful commit
  must extend an analysis-only injection \(\pi_I:I\to[r]\). With
  \(U_I=[r]\setminus\pi_I(I)\), define the probe-local target responses
  \[
  \chi_j(q;I)=\tau_j
  \langle u,\widetilde a_j\rangle
  \langle v,\widetilde b_j\rangle
  \langle w,\widetilde c_j\rangle,
  \qquad j\in U_I.
  \]
  The certificate-to-isolation proof must produce a unique
  \(j_\star\in U_I\), mode signs with product \(+1\), and absolute
  proof constants \(C_{\rm iso},C_{\rm span}\) such that the committed
  directions are within
  \(C_{\rm iso}(\zeta_{\rm ang}+\mu_{\rm real})\) of the corresponding
  signed realized target directions and
  \[
  \left(\sum_{j\in U_I\setminus\{j_\star\}}
  |\chi_j(q;I)|^2\right)^{1/2}
  \le C_{\rm iso}(\zeta_{\rm ang}+\mu_{\rm real})
  |\chi_{j_\star}(q;I)|.
  \]
  It must also prove duplicate exclusion and, after the extension of \(I\),
  the protected-span transfer
  \[
  \|(I_n-\Pi_M^I)\widetilde m_j\|_2
  \le C_{\rm span}(\zeta_{\rm ang}+\mu_{\rm real}),
  \quad
  \|\Pi_M^I\widetilde m_j\|_2
  \ge1-C_{\rm span}(\zeta_{\rm ang}+\mu_{\rm real})
  \]
  for every unresolved \(j\in U_I\) and mode \(M\). No coefficient vector
  formed from the full unresolved residual is defined or required.

  **Terminal same-target chart.** After \(r\) commits, all unused slots are
  set jointly to zero, the discovery projections are removed, and the \(r\)
  committed slots alone undergo balanced unprojected trust-region Armijo
  descent. Let \({\cal Z}_\star\) be the finite orbit of
  \((q_1^\star,\ldots,q_r^\star)\) under component permutations and
  per-component sign triples
  \((\sigma_A,\sigma_B,\sigma_C)\in\{\pm1\}^3\) with
  \(\sigma_A\sigma_B\sigma_C=1\). Distance to \({\cal Z}_\star\) is the
  Euclidean factor distance after minimizing over this orbit. For a radius
  \(\varrho>0\), define the same-target balanced chart
  \[
  {\cal C}_{\rm PL}(\varrho)=\{Q:\operatorname{dist}(Q,{\cal Z}_\star)
  \le\varrho,\ \max_{i,M}\|q_i^M\|_2\le2R_{\max},\
  q_i=0\text{ for unused slots}\}.
  \]
  Its admissible radius, PL constant, invariance, and entry from the committed
  state are proof-produced quantities.

- Technical assumptions:
  - `assump:base-column-conditioning` (Polynomially bounded base columns):
    Every base column is nonzero and has norm in
    \([\kappa^{-1},\kappa]\), where \(1\le\kappa\le r^{c_0}\) for a fixed
    \(c_0>0\).
  - `assump:modewise-near-orthogonality` (Source modewise special case):
    \(\mu_{\rm base}\le[200r\log(2r)]^{-1}\).
  - `assump:gaussian-smoothing` (Independent source perturbations):
    Independently over columns and modes,
    \[
    a_j-\bar a_j,\quad b_j-\bar b_j,\quad c_j-\bar c_j
    \sim {\cal N}(0,\rho^2I_n/n).
    \]
  - `assump:dimension-regime` (Ambient dimension):
    \(n\ge C_{\rm dim}r\log(2r)\) for a fixed absolute
    \(C_{\rm dim}>0\).
  - `assump:smoothing-scale` (Inverse-polynomial smoothing):
    \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\) for a fixed
    \(c_\rho>0\).
  - `assump:smoothing-margin` (Base-to-realized angular margin): For a fixed
    absolute \(C_{\rm sm}>0\),
    \[
    \mu_{\rm base}+C_{\rm sm}\rho\sqrt{\log(2r)}
    \le[100r\log(2r)]^{-1}.
    \]
  - `assump:rank-regime` (Strictly subquadratic algorithmic rank):
    \[
    k=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,
    \qquad r<k<r^2,
    \]
    for a fixed sufficiently large \(C_{\rm rank}\) and all
    \(r\ge r_0(C_{\rm rank})\).
  - `assump:random-tape` (One finite independent Haar tape): Conditional on
    the realized instance, the \(N_{\rm tx}\) tape triples are mutually
    independent Haar draws and are independent of the instance. This is the
    complete algorithmic randomness; adaptive projection uses only earlier
    protected states and the next unused tape entry.
  - `assump:accuracy-range` (Relative Frobenius tolerance):
    \(0<\epsilon<1\). If the observed tensor is exactly zero, the algorithm
    returns the all-zero state before defining \(a_{\rm seed}\).

# Formalized Goal

- Goal statement:
  Prove, in target-spec mode, one material-partial reachable-landscape and
  trajectory theorem uniformly over every deterministic base triple obeying
  the technical assumptions. First construct a once-drawn event
  \({\cal E}_{\rm inst}\) with
  \(\mathbb P_{\rm inst}({\cal E}_{\rm inst})\ge1-r^{-10}\) on which all
  realized columns are nonzero,
  \[
  (2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa,
  \quad \mu_{\rm real}\le{1\over50r\log(2r)},
  \]
  \[
  \Delta_{\rm pair}^{\rm real}\le{1\over32},qquad
  \|G_\star-I_r\|_{\rm op}\le{1\over32},qquad
  \sqrt{31/32}\|\tau\|_2\le\|T\|_F\le\sqrt{33/32}\|\tau\|_2,
  \]
  \(T\ne0\), \(\max_j\tau_j^{1/3}\le2\kappa<R_{\max}\), and the exact
  balanced representation lies in the guarded box. These are derived event
  outputs, not additional assumptions.

  Conditional on each \(T\in{\cal E}_{\rm inst}\) and every reachable
  protected state with fewer than \(r\) commits, prove that the next fresh
  transaction reaches \({\sf Cert}_{\rm ang}\) within \(H_{\rm tx}\) work
  with conditional probability
  \[
  p_{\rm ang}\ge(nr)^{-c_{\rm ang}}.
  \]
  For every certificate, derive from the observable radial bracket, angular
  residuals, angular-only Hessian gap, capture, and realized Gram margin the
  unique unresolved label, probe-local response isolation, direction
  accuracy, duplicate exclusion, and protected-span transfer stated above.
  None of these generated properties may be assumed. Prove also that every
  failed transaction rolls back exactly and that the displayed finite tape
  and conditional amplification produce \(r\) commits with
  \(\mathbb P_{\rm tape}(\text{all commits}\mid T)
  \ge1-r^{-10}\). Establish polynomial discovery work, the guarded-box
  invariant, and the accepted-step lower bound
  \[
  \lambda_{\rm acc}\ge
  \min\left\{{1\over16L_{\rm box}^\star},
  {\Delta_{\rm tr}\over4G_{\rm box}^\star}\right\}
  \]
  from the measured displacement cap and local smoothness bounds.

  After the final commit, prove entry into a same-target chart
  \({\cal C}_{\rm PL}(\varrho_{\rm PL})\) with proof-produced
  \(\varrho_{\rm PL}\ge P^{-D_{\rm PL}}\) and
  \(\mu_{\rm PL}\ge P^{-D_{\rm PL}}>0\), for a fixed proof exponent
  \(D_{\rm PL}\), such that throughout this chart the balanced terminal
  gradient satisfies
  \[
  \|\operatorname{grad}_{\rm bal}F(Q)\|_F^2
  \ge2\mu_{\rm PL}F(Q).
  \]
  Prove chart invariance under the unprojected trust-region Armijo updates and,
  for every \(0<\epsilon<1\), reach an iterate satisfying
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F
  \]
  in \(\operatorname{poly}(n,r,\rho^{-1},\kappa)\log(1/\epsilon)\)
  total work after adding discovery. The terminal recurrence has no additive
  error floor: failed probes are absent by exact rollback, unused slots are
  joint zero, and no finite-tape term enters the PL phase.

  The probability modes are separate high-probability statements over the
  once-drawn instance and, conditional on that fixed instance, the finite
  tape. The horizon is the displayed finite discovery horizon followed by a
  finite \(\log(1/\epsilon)\) terminal horizon, and the target norm is the
  Frobenius norm. All hidden constants and polynomial degrees may depend only
  on \(c_0,c_\rho\) and fixed absolute protocol/Armijo constants, and not on
  \(n,r,k,\rho,\kappa,\epsilon\). The conclusion is explicitly restricted to
  the modewise-near-orthogonal smoothed class; arbitrary bases, merely
  well-conditioned nonorthogonal bases without this margin, and simultaneous
  all-slot gradient descent remain open.

# Note

- Rigor:
  Parent foundation papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* and *Beyond Lazy Training for
  Over-parameterized Tensor Decomposition*. Transfer map: retain the first
  paper's asymmetric CP least-squares, Gaussian-smoothed-instance,
  relative-error, rank/probability, and runtime interfaces and the second
  paper's homogeneous balancing and small-start dynamics; replace persistent
  simultaneous probationary promotion by exact transactional one-probe
  rollback, replace the full-factor curvature test by an observable radial
  sign bracket plus an angular product-of-spheres certificate, and export the
  committed probe and its capture rather than a full-residual coefficient
  object.

  Source alignment: the exact source loss, independent Gaussian smoothing,
  finite random-initialization/restart tape, rank
  \(k=O(r^{3/2}\log^2r)=o(r^2)\), polynomial runtime, separate instance and
  tape probabilities, and arbitrary relative Frobenius accuracy are
  preserved. The source-mentioned modewise-near-orthogonal special case is
  the sole deliberate scope restriction. Progress type: `material_partial`.
  Materiality: the theorem targets progressive, target-adaptive feature
  discovery at a strictly subquadratic rank and retains the exact balanced,
  arbitrary-accuracy no-floor baseline; it does not claim the remaining
  arbitrary-base case.

  Assumption support: `assump:base-column-conditioning`,
  `assump:gaussian-smoothing`, `assump:dimension-regime`, and
  `assump:smoothing-scale` come from the source smoothed CP model;
  `assump:modewise-near-orthogonality` is the approved source-mentioned
  special case, checked by orthogonal, dense incoherent, and complementary
  block examples; `assump:smoothing-margin` is the approved perturbative
  transfer condition for those examples; `assump:rank-regime` is the approved
  strictly subquadratic protocol budget; `assump:random-tape` is the explicit
  Haar initialization law; and `assump:accuracy-range` is the source relative
  error interface. The radial identity is direct algebra. Angular strict-saddle
  motivation comes from *Escaping From Saddle Points: Online Stochastic
  Gradient for Tensor Decomposition*, and angular separation/projection
  motivation comes from *Orthogonalized ALS: A Theoretically Principled
  Tensor Decomposition Algorithm for Practical Use*, subject to a new proof
  for the present asymmetric objective. Certificate reachability, probe-local
  isolation, protected-span transfer, accepted-step control, chart entry, and
  terminal PL constants are explicitly proof-produced. Their branch-specific
  support examples are the approved \(r=1\) radial root, orthogonal
  equal-weight mixed-stationary/pure-channel Hessian tests, two-orthogonal-mode
  and dense-incoherent perturbation tests, and the measured-displacement
  large-\(n\) stress test; none is promoted to a theorem-facing assumption.
