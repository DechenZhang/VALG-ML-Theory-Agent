# Formalized Setting

- Basic setup:
  **Source, smoothing, and realized tensor.** Fix \(n,r\ge 2\).  Let
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\), \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be deterministic matrices in
  \(\mathbb R^{n\times r}\).  For a matrix \(M=[m_1,\ldots,m_r]\) with nonzero
  columns define
  \[
    D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2),\qquad
    \widetilde M=MD_M^{-1},\qquad G_M=\widetilde M^{\mathsf T}\widetilde M.
  \]
  Put \(\bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\) and
  \(\nu_\star=(C_\nu r\log(2r))^{-1}\).  Independently over labels and modes,
  draw
  \[
    a_j=\bar a_j+\xi_{j,A},\quad b_j=\bar b_j+\xi_{j,B},\quad
    c_j=\bar c_j+\xi_{j,C},\qquad
    \xi_{j,M}\sim {\cal N}(0,\rho^2I_n/n).
  \]
  On nonzero realized columns set
  \[
    m_{j,A}=a_j/\|a_j\|_2,\quad m_{j,B}=b_j/\|b_j\|_2,\quad
    m_{j,C}=c_j/\|c_j\|_2,\quad
    \tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,\quad
    \phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C},
  \]
  \[
    T=\sum_{j=1}^r\tau_j\phi_j,\qquad
    \Phi_\star^{*}\Phi_\star=G_A\circ G_B\circ G_C,\qquad
    \nu_{\rm real}=\max_{M\in\{A,B,C\}}\|G_M-I_r\|_{\rm op}.
  \]
  Realized nonvanishing, norm, weight, Gram, and exact-representation facts are
  conclusions of the good instance event in the goal, not primitive assumptions.

  **Static analysis kernels and two-mode source.** For a realized instance let
  \(H_M=|G_M-I_r|\) entrywise, \(J_M=I_r+H_M\), and, cyclically,
  \(K_A=H_B\circ H_C\), \(K_B=H_A\circ H_C\), \(K_C=H_A\circ H_B\).  Thus
  \(H_M\) has zero diagonal.  For distinct \(j,\ell\), define
  \[
    S_{j,M,\ell}=(K_MJ_M)_{j\ell},\qquad S_{j,M,j}=0.
  \]
  These are analysis arrays and are not queried by the algorithm.  On the good
  event the proof derives
  \[
    \max_j\|H_Me_j\|_2\le
    \nu_{\rm real},\qquad \|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu_{\rm real},\qquad
    \|K_M\|_1=\|K_M\|_\infty\le
    \nu_{\rm real}^{\,2},\tag{R-src}
  \]
  and hence, for every unit \(w\) and \(j\ne\ell\),
  \[
    |\langle m_{j,A},m_{\ell,A}\rangle\langle m_{j,B},m_{\ell,B}\rangle|\le
    C_{\rm 2mode}\nu_{\rm real}^{\,2},\qquad
    \left|\left\langle T,m_{j,A}\otimes m_{j,B}\otimes w\right\rangle
      -\tau_j\langle m_{j,C},w\rangle\right|
    \le C_{\rm 2mode}\Gamma_\star
      \nu_{\rm real}^{\,2}\|T\|_F,\tag{two-mode}
  \]
  with the two cyclic analogues.  These contraction inequalities are derived
  consequences of the two orthogonal source modes and smoothing, not alignment
  or trajectory assumptions.

  **Objective, balancing, and target.** For algorithmic rank \(k\), write
  \(Q=(X,Y,Z)\) with slots \(q_i=(x_i,y_i,z_i)\), and define
  \[
    \Psi(Q)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
    R(Q)=T-\Psi(Q),\qquad F(Q)=\tfrac12\|R(Q)\|_F^2.
  \]
  The tensor-preserving balancing map is
  \[
    {\cal B}(x,y,z)=\begin{cases}(gu,gv,gw),&\|x\|_2\|y\|_2\|z\|_2>0,\\
    (0,0,0),&\text{otherwise},\end{cases}\quad
    g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3},\quad
    (u,v,w)=\left(x/\|x\|_2,y/\|y\|_2,z/\|z\|_2\right).
  \]
  A nonzero balanced slot is \(q_i=(g_i u_i,g_i v_i,g_i w_i)\); unused and
  rolled-back slots are joint zero.  The exact balanced target slots are
  \[
    q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},\tau_j^{1/3}m_{j,C}),\quad j\in[r],
  \]
  padded with \(k-r\) joint-zero slots.  They are a terminal reference and are
  never supplied to the algorithm.

  **Discovery state and zero-safe certificate.** Set
  \[
    P=16nrk\kappa\rho^{-1},\qquad R_{\max}=8\kappa,\qquad
    a_{\rm seed}=\|T\|_F P^{-120},\quad \delta=a_{\rm seed}^{1/3},\quad
    \Delta_{\rm tr}=P^{-20}.
  \]
  All \(C_\bullet,D_\bullet,d_\bullet\) below are fixed proof/protocol constants
  independent of \(n,r,k,\rho,\epsilon\), the realized instance, and the prefix.
  If \(T=0\), return the all-zero decomposition.  Otherwise a discovery prefix
  \(I\subset[k]\), \(|I|<r\), contains frozen balanced slots and joint-zero slots
  elsewhere, with residual
  \[
    R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i.
  \]
  A scratch triple \(q=(gu,gv,gw)\), \((u,v,w)\in{\cal S}:=(\mathbb S^{n-1})^3\),
  has
  \[
    f_I(q)=\tfrac12\|R_I-g^3u\otimes v\otimes w\|_F^2,\quad
    s_I(q)=\langle R_I,u\otimes v\otimes w\rangle,\quad
    \Delta F_I(q)=g^3s_I(q)-\tfrac12g^6,
  \]
  \[
    d_I(q)=s_I(q)-g^3,\qquad \partial_g f_I(q)=-3g^2d_I(q),\qquad
    N_I(g)=1+\|R_I\|_F+g^4.
  \]
  Let \(\operatorname{grad}_{\cal S}f_I\) and
  \(H_{\rm ang}=\operatorname{Hess}_{\cal S}f_I\) be the angular Riemannian
  gradient and Hessian at fixed \(g\), and put
  \[
    e_{\rm ang}(q)=\|\operatorname{grad}_{\cal S}f_I(q)\|_2/N_I(g),\qquad
    \widehat H_{\rm ang}(q)=H_{\rm ang}(q)/N_I(g),\qquad
    D_I=\max\{\|R_I\|_F,\|T\|_FP^{-D_{\rm cap}}\},
  \]
  \[
    e_{\rm rad}(q)=\frac{|g^3-s_I(q)|}{\max\{s_I(q),g^3,D_I\}}.
  \]
  Define the zero-safe relative margin
  \[
    \mu_I(q)=\begin{cases}
      0,&s_I(q)\le0\ \text{or}\ \Delta F_I(q)\le0,\\
      \min\{1,s_I(q)/D_I,\Delta F_I(q)/D_I^2,g^3/D_I,
      \lambda_{\min}(\widehat H_{\rm ang}(q))\},&\text{otherwise}.
    \end{cases}
  \]
  For a passing candidate set \(e_I(q)=P^{-D_{\rm stat}}\mu_I(q)\); failed
  candidates are rolled back and their \(e_I\)-value is not exported.  A
  transaction passes \({\sf Cert}(q;I)\) only if
  \[
    0<g\le2R_{\max},\quad s_I(q)>0,\quad \mu_I(q)\ge P^{-D_\mu},\quad
    e_{\rm rad}(q),e_{\rm ang}(q)\le e_I(q),\quad
    \lambda_{\min}(\widehat H_{\rm ang}(q))\ge P^{-D_{\rm gap}},\quad
    {\sf Sep}(q;I)\le\tfrac14,\tag{Cert}
  \]
  where
  \[
    {\sf Sep}(q;I)=\max_{i\in I,M\in\{A,B,C\}}
      |\langle u_M,u_{i,M}\rangle|,\qquad {\sf Sep}(q;\varnothing)=0.
  \]
  If \(R_I=0\), then \(s_I=\Delta F_I=0\), \(\mu_I=0\), and discovery stops.

  **Full-space transaction protocol.** Start with joint-zero slots and a finite
  independent tape of \(N_{\rm tx}=\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}\log(2r)\rceil\)
  Haar triples, with \(H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil\) polynomial work
  allowed per triple.  For each seed, use radius \(\delta\), flip one fixed mode
  when its score is negative, bracket \(g^3=s_I\), and alternate safeguarded
  radial trust-region Armijo steps with full product-sphere angular-gradient
  steps.
  When the angular gradient is small but the normalized Hessian has an eigenvalue
  below \(-P^{-D_{\rm gap}}\), try both signs of an approximate minimum-eigenvector
  Armijo step.  Keep every trial in the radius guard and with factor displacement
  at most \(\Delta_{\rm tr}\).  A failed, ambiguous, guard-violating, or
  screen-failing trial is mapped exactly to joint zero; a successful trial is
  committed only after \({\sf Cert}\), then balanced and frozen.  The protocol is
  full-space and target-blind: it uses only \(T\), current factors/residuals,
  derivatives, inner products, and the tape.  No protected-span projection,
  source-label query, matched-mixture exchange, or terminal error floor is part
  of the protocol.

  **Candidate-relative transfer and generated ledger.** Let
  \({\cal D}=\{(j,M,\ell):j,\ell\in[r],\ j\ne\ell,\ M\in\{A,B,C\}\}\), extend every
  array by \(Z_{j,M,j}=0\), and define
  \[
    \|Z\|_1=\sum_{(j,M,\ell)\in{\cal D}}Z_{j,M,\ell},\qquad
    \|Z\|_{{\rm root},2}=\max_{j\in[r]}\left(\sum_{M,\ell\ne j}Z_{j,M,\ell}^2\right)^{1/2}.
  \]
  The all-ones array \(\mathbf 1\) below is the array on \({\cal D}\), and every
  resolvent array has zero diagonal.
  After a candidate passes \({\sf Cert}(q;I)\), the proof may generate an
  analysis-only injection \(\pi_I:I\to[r]\), signs with product one, and an
  unresolved label \(p=p(q)\).  With
  \[
    e_{i,M}=\sigma_{i,M}u_{i,M}-m_{\pi_I(i),M},\quad
    \delta_i=g_i^3/\tau_{\pi_I(i)}-1,\quad
    E_i=g_i^3u_i\otimes v_i\otimes w_i-\tau_{\pi_I(i)}\phi_{\pi_I(i)},
  \]
  define generated history forcing, for \(j\) unresolved and \(\ell\ne j\),
  \[
    A_{I;j,A,\ell}={1\over\tau_j}\sum_{i\in I}\left|\left\langle E_i,
      m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C}\right\rangle\right|,
  \]
  with cyclic definitions and zero entries otherwise.  This injection and all
  associated certificate, matching, and ledger statements are proof outputs,
  never protocol queries or assumptions.

  For \(\eta_{I,q}=C_\eta(\Gamma_\star\nu_{\rm real}^2+e_I(q))\), form the
  nonnegative transfer majorant only after certificate passage:
  \[
    (\mathcal T^+_{I,q}Z)_{j,A,\ell}=\sum_{t\ne j}|J_A(t,\ell)|
      \big[(|H_C(j,t)|+\eta_{I,q})Z_{j,B,t}
       +( |H_B(j,t)|+\eta_{I,q})Z_{j,C,t}\big],\tag{transfer-majorant}
  \]
  and use the two cyclic definitions.  The proof must derive the gap bounds
  \[
    \|\mathcal T^+_{I,q}\|_{1\to1},\ \|\mathcal T^+_{I,q}\|_{{\rm root},2\to{\rm root},2}
    \le2(\nu_{\rm real}+\eta_{I,q})(1+\sqrt r\,\nu_{\rm real}),\qquad
    C_0\Gamma_\star\|\mathcal T^+_{I,q}\|_{1\to1}\le\tfrac14,\qquad
    C_0\Gamma_\star\|\mathcal T^+_{I,q}\|_{{\rm root},2\to{\rm root},2}\le\tfrac14,
    \tag{transfer-gap}
  \]
  on the good event and for every passing candidate.  Hence the generated
  resolvent is well-defined:
  \[
    \Theta_{I,q}=(\operatorname{Id}-C_0\Gamma_\star\mathcal T^+_{I,q})^{-1}
      C_0\Gamma_\star\big(S+A_I+e_I(q)\mathbf 1\big).\tag{relative-resolvent}
  \]
  Set \(z_{q,M,\ell}=\Theta_{I,q;p(q),M,\ell}\) for \(\ell\ne p(q)\), and
  \(z_{q,M,p(q)}=0\).  The row and transition estimates
  \[
    \|z_q\|_{{\rm root},2}\le C_z\bigl(\nu_{\rm real}^2+r\nu_{\rm real}^3
      +\sqrt r\,e_I(q)\bigr),\tag{Raw-J-rel}
  \]
  \[
    |\delta_i|+\max_M\|e_{i,M}\|_2\le C_{\rm led}\eta_{I,q},\qquad
    |\langle e_{i,M},m_{\ell,M}\rangle|\le C_{\rm led}\bigl(\Theta_{I,q;p(q),M,\ell}+e_I(q)\bigr)\quad(\ell\ne p(q))
  \]
  are generated proof obligations, not certificate clauses.  There is no other
  numerical pad or source term.

  For a committed candidate \(q_t\) at prefix \(I_t\), write
  \(p_t=p(q_t)\), \(e_t=e_{I_t}(q_t)\), \(D_t=D_{I_t}\), and
  \(\eta_t=\eta_{I_t,q_t}\).  The diagonal-aware charge is the generated quantity
  \[
    \widetilde\Upsilon^M_{t;j,\ell}=(1+\eta_t)(J_M(p_t,\ell)+z_{q_t,M,\ell})
      \prod_{N\ne M}(H_N(p_t,j)+z_{q_t,N,j})
      -J_M(p_t,\ell)\prod_{N\ne M}H_N(p_t,j),\tag{capture-charge-row}
  \]
  for unresolved \(j\) and \(\ell\ne j\), and zero otherwise, with
  \(z_{q_t,M,p_t}=0\).  The proof keeps the structural
  \(\nu_{\rm real}^2+r\nu_{\rm real}^3\) terms and charges numerical terms through
  \[
    e_tD_t^2\le P^{-D_{\rm stat}}\Delta F_{I_t}(q_t),\qquad
    \sum_{t\le s}\Delta F_{I_t}(q_t)\le F(\mathrm{empty})=\tfrac12\|T\|_F^2,\tag{capture-telescope}
  \]
  while failed probes contribute zero.  Equivalently, with
  \(\chi_t=e_tD_t^2/\|T\|_F^2\) for \(T\ne0\), the generated finite-prefix ledger
  must satisfy
  \[
    \sum_{t\le s}\sum_{j,\ell,M}|\widetilde\Upsilon^M_{t;j,\ell}|\le
    C_J\Gamma_\star(\nu_{\rm real}^2+r
      \nu_{\rm real}^3)+C_J\sum_{t\le s}\chi_t,\qquad
    \sum_{t\le s}\chi_t\le P^{-D_{\rm stat}}.\tag{raw-ledger}
  \]
  These are generated obligations; no numerical absorption into a structural
  term is asserted.

  **Terminal chart.** After discovery stops (after \(r\) commits or at
  \(R_I=0\)), set unused slots jointly to zero and run joint balanced, full-space
  Armijo descent on \(F\).  Let \(Q^\star\) be the padded exact target and
  \({\cal Z}_\star\) its finite slot-permutation/product-one-sign orbit.  For
  \(\varrho>0\), define
  \[
    {\cal C}_{\rm PL}(\varrho)=\{Q:\operatorname{dist}(Q,{\cal Z}_\star)\le\varrho,
      \max_{i,M}\|q_i^M\|_2\le2R_{\max},\ q_i=0\text{ for unused }i\}.
  \]
  Chart entry, first-exit invariance, and a same-target PL inequality
  \(\|\operatorname{grad}_{\rm bal}F(Q)\|_F^2\ge2\mu_{\rm PL}F(Q)\) are generated
  proof conclusions.  The terminal conclusion has no additive error floor.

- Technical assumptions:
  - assump:base-column-conditioning (Polynomial base-column scales): Every
    deterministic source column is nonzero,
    \(\kappa^{-1}\le\|\bar a_j\|_2,\|\bar b_j\|_2,\|\bar c_j\|_2\le\kappa\), and
    the three deterministic matrices have nonzero singular values in
    \([\kappa^{-1},\kappa]\), with \(1\le\kappa\le r^{c_0}\).
  - assump:base-product-balance (Balanced product weights):
    \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\), with fixed
    \(\Gamma_\star\ge1\).
  - assump:two-mode-orthogonality (Two-mode-orthogonal source child):
    \(G_{\bar A}=I_r\) and \(G_{\bar B}=I_r\) for normalized deterministic columns.
  - assump:c-mode-gram-margin (Third-mode near-orthogonality):
    \(\|G_{\bar C}-I_r\|_{\rm op}\le(C_\nu r\log(2r))^{-1}\).
  - assump:gaussian-smoothing (Independent Gaussian source perturbations):
    The \(\xi_{j,M}\) are mutually independent and distributed as
    \({\cal N}(0,\rho^2I_n/n)\).
  - assump:dimension-regime (Ambient dimension):
    \(n\ge C_{\rm dim}r\log(2r)\) for a fixed sufficiently large
    \(C_{\rm dim}\).
  - assump:smoothing-scale (Inverse-polynomial smoothing):
    \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\).
  - assump:smoothing-bridge (Static smoothing bridge):
    \(C_{\rm sm}\kappa\rho\sqrt{\log(2r)}\le
    (4C_\nu r\log(2r))^{-1}\).
  - assump:rank-regime (Strictly subquadratic overparameterization):
    \(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\), and for \(r\ge r_0\),
    \(r<k<r^2\).
  - assump:random-tape (Independent finite full-space tape): Conditional on
    the realized instance, the \(N_{\rm tx}\) seed triples are independent Haar
    draws from \((\mathbb S^{n-1})^3\), independent of smoothing.
  - assump:accuracy-range (Relative accuracy): \(0<\epsilon<1\); if \(T=0\),
    the exact-zero early return is used.

# Formalized Goal

- Goal statement:
  In target-spec mode, for every deterministic source satisfying the eleven
  technical assumptions, prove a material-partial theorem on an instance event
  \({\cal E}_{\rm inst}\) with
  \(\mathbb P_{\rm inst}({\cal E}_{\rm inst})\ge1-r^{-10}\).  On this event all
  realized columns are nonzero and satisfy
  \((2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa\),
  \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\), and
  \(\nu_{\rm real}\le2\nu_\star\); the pair/triple Gram matrices obey fixed
  conditioning reserves
  \[
    \max_{M\ne N}\|G_M\circ G_N-I_r\|_{\rm op}\le\tfrac1{16},\qquad
    \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le\tfrac1{16},
  \]
  and \(\sqrt{15/16}\,\|\tau\|_2\le\|T\|_F\le
  \sqrt{17/16}\,\|\tau\|_2\); the exact padded balanced target exists, and
  (R-src) and (two-mode) hold.  If \(T=0\), the algorithm returns the exact
  zero decomposition.

  Conditional on a nonzero \(T\) and \({\cal E}_{\rm inst}\), prove the four
  auditable blocks (S)--(T)--(B)--(P): (S) derives smoothing and two-mode
  contractions; (T) shows that every full-space candidate passing the observable
  zero-safe certificate either rolls back or receives one proof-generated
  unresolved assignment and exports (Raw-J-rel) from the candidate-relative
  resolvent; (B) proves the diagonal-aware ledger, the honest two-label audit,
  capture-charge telescope, finite-prefix numerical budget, and all-commit error
  bounds while retaining every \(e_t\)-term; and (P) proves history-uniform tape
  recovery with conditional probability at least \(1-r^{-10}\), entry into the
  same-target balanced PL chart, and terminal full-space Armijo iterates \(Q\) with
  \[
    \|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\qquad(0<\epsilon<1).
  \]
  Discovery, ledger construction, and tape work are polynomial in
  \(n,r,k,\kappa,\rho^{-1}\) and independent of \(\epsilon\); terminal work is
  polynomial in these parameters and \(\log(1/\epsilon)\), with polynomial-cost
  restart amplification.  The instance and conditional-tape probabilities are
  separate.  Every displayed rate exposes \(n,r,k,\kappa,\rho,\Gamma_\star,P\),
  \(\nu_{\rm real},\epsilon\), and the adaptive \(e_t\); only fixed source,
  proof, and protocol constants \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,
  C_{\rm rank},C_{\rm tape},c_{\rm tx}\), the displayed \(C_\bullet,D_\bullet,
  d_\bullet\), and Armijo constants may be hidden.  Discovery is
  finite and horizon-uniform over prefixes, terminal work has horizon
  \(O(\log(1/\epsilon))\), and the norm modes are the displayed Frobenius,
  operator, \(\ell_1\), and root-\(2\) norms.  The theorem is limited to the
  stated two-mode-orthogonal smoothed subclass (arbitrary bases and unbalanced
  product weights are outside scope).  In the exact \(H_M=0,e_t=0\)
  specialization, structural forcing and numerical charge vanish, the balanced
  target is stationary, and the endpoint remains valid for arbitrary relative
  accuracy without an additive floor.

# Note

- Rigor:
  This artifact is bound to idea SHA
  834398f2b088bd7f5e17a8ff89bebd34b4527227f74c977e91fb1500b4c3a20f, uses
  prior idea-11 setting SHA
  3528bacd6c298c1128e64d1527b11b48472f6144acb7437a3e2a395f00ac635a as the
  notation baseline, and repairs failure review SHA
  d2f9238a2853664dc14027aafe597631392529b9b95f0280fa298c269cbbfce5 only by
  replacing the fixed resolvent padding with the accepted candidate's
  zero-safe \(e_I(q)\) padding and the corresponding absolute transfer
  majorant.  Source alignment is preserved: exact asymmetric CP least-squares,
  Gaussian smoothing, target-blind full-space transactional gradient dynamics,
  finite independent tape, exact rollback, \(k=O(r^{3/2}\log^2r)=o(r^2)\),
  separate instance/tape probabilities, relative Frobenius accuracy, and the
  exact/noiseless no-floor baseline.  Progress type is material_partial and
  materiality is an end-to-end reachable-landscape/trajectory theorem on the
  nontrivial two-mode-orthogonal source child.

  Assumption support is inherited for assump:base-column-conditioning,
  assump:base-product-balance, assump:c-mode-gram-margin,
  assump:gaussian-smoothing, assump:dimension-regime, and
  assump:smoothing-scale from the smoothed CP source regime; the two-mode
  condition is source-compatible and directly checked by orthonormal frames.
  assump:smoothing-bridge is the standard static Gaussian transfer condition,
  while rank, tape, and accuracy IDs describe the approved algorithmic regime.
  The relative resolvent, generated assignment, certificate passage, ledger,
  capture budget, PL entry, and convergence are proof obligations, not
  assumptions.  The interface is example-verified at the exact orthogonal
  empty prefix (all pad coordinates are \(O(e_I)\)), on correlated third-mode
  examples, on the two-label \(h=e_I^2\) and \(h\ll e_I\) families with charge
  \(O(h^4+e_Ih+e_I^2)\), and at \(T=0\), \(R_I=0\), and \(H=e=0\).
