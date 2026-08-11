# Formalized Setting

- Basic setup:
  **Source class and realized tensor.** Fix \(n,r\ge 2\), and let
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\), \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be deterministic matrices in
  \(\mathbb R^{n\times r}\). For a matrix \(M=[m_1,\ldots,m_r]\) with nonzero
  columns write
  \[
    D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2),\qquad
    \widetilde M=MD_M^{-1},\qquad G_M=\widetilde M^{\top}\widetilde M.
  \]
  Put \(\bar G_M=G_{\bar M}\), \(\bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2
  \|\bar c_j\|_2\), and \(\nu_\star=(C_\nu r\log(2r))^{-1}\).
  The normalized base columns in the first two modes satisfy the primitive
  two-mode source condition \(\bar G_A=\bar G_B=I_r\); the \(C\)-mode is
  allowed the stated near-orthogonal margin. Independently over labels and
  modes draw
  \[
    a_j=\bar a_j+\xi_{j,A},\quad b_j=\bar b_j+\xi_{j,B},\quad
    c_j=\bar c_j+\xi_{j,C},\qquad
    \xi_{j,M}\sim\mathcal N(0,\rho^2I_n/n),
  \]
  and set
  \[
    m_{j,A}=a_j/\|a_j\|_2,\quad m_{j,B}=b_j/\|b_j\|_2,\quad
    m_{j,C}=c_j/\|c_j\|_2,\quad
    \tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,
  \]
  \[
    \phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C},\qquad
    T=\sum_{j=1}^r\tau_j\phi_j.
  \]
  For a realized instance define
  \[
    G_M=[\langle m_{j,M},m_{\ell,M}\rangle]_{j,\ell},\qquad
    \nu_{\rm real}=\max_{M\in\{A,B,C\}}\|G_M-I_r\|_{\rm op},\qquad
    \Phi_\star^*\Phi_\star=G_A\circ G_B\circ G_C.
  \]
  The nonvanishing, norm, product-weight, pair-Gram, triple-Gram, and exact
  representation conclusions for the realized instance are event-level
  conclusions, not primitive assumptions.

  **Two-mode contraction source.** On any realized event with
  \(\nu_{\rm real}\le 2\nu_\star\), define entrywise nonnegative analysis
  kernels
  \[
    H_M=|G_M-I_r|,\qquad J_M=I_r+H_M,\qquad
    K_A=H_B\circ H_C,\quad K_B=H_A\circ H_C,\quad K_C=H_A\circ H_B.
  \]
  The proof must derive, rather than assume, for every mode \(M\),
  \[
    \max_j\|H_Me_j\|_2\le\nu_{\rm real},\qquad
    \|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu_{\rm real},\qquad
    \|K_M\|_1=\|K_M\|_\infty\le\nu_{\rm real}^2. \tag{R-src}
  \]
  Here \(\|\cdot\|_1,\|\cdot\|_\infty\) are maximum column and row sums.
  For \(j\ne\ell\), let \(S_{j,M,\ell}=(K_MJ_M)_{j\ell}\) and set
  \(S_{j,M,j}=0\). The source budget
  \[
    \|S\|_1\le3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real}) \tag{R-S-budget}
  \]
  is a derived static bound. In particular, the two exact base
  orthogonalities yield the current-notation contraction identities
  \[
    \left|\left\langle T,m_{j,A}\otimes m_{j,B}\otimes w\right\rangle
      -\tau_j\langle m_{j,C},w\rangle\right|
    \le C_{\rm 2mode}\Gamma_\star\nu_{\rm real}^2\|T\|_F
  \]
  for every unit \(w\), and the two cyclic analogues. These identities are
  the source for label isolation; they are not purity, matching, or trajectory
  assumptions.

  **Objective, balance, and terminal reference.** For algorithmic rank \(k\),
  let \(Q=(X,Y,Z)\) have slots \(q_i=(x_i,y_i,z_i)\), and define
  \[
    \Psi(Q)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
    R(Q)=T-\Psi(Q),\qquad F(Q)=\tfrac12\|R(Q)\|_F^2.
  \]
  Tensor-preserving balancing is
  \[
    \mathcal B(x,y,z)=
    \begin{cases}(gu,gv,gw),&\|x\|_2\|y\|_2\|z\|_2>0,\\
    (0,0,0),&\text{otherwise},\end{cases}
  \]
  where \(g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3}\) and each of \(u,v,w\) is the
  corresponding unit factor. A nonzero balanced slot is
  \(q_i=(g_i u_i,g_i v_i,g_i w_i)\); partial-zero slots are joint zero.
  The exact balanced target slots are
  \[
    q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
    \tau_j^{1/3}m_{j,C}),\qquad j\in[r],
  \]
  and these slots plus \(k-r\) joint-zero slots represent \(T\) exactly.
  This is a terminal reference and is never supplied to the algorithm as an
  initializer.

  **Protected residual and observable relative certificate.** Set
  \[
    P=16nrk\kappa\rho^{-1},\quad R_{\max}=8\kappa,\quad
    a_{\rm seed}=\|T\|_F P^{-120},\quad
    \delta=a_{\rm seed}^{1/3},\quad \Delta_{\rm tr}=P^{-20}.
  \]
  All symbols of the form \(C_\bullet,c_\bullet,D_\bullet,d_\bullet\) below
  are fixed proof constants or exponents chosen in a compatible order after
  the primitive class constants; they are independent of \(n,r,k,\kappa,\rho\),
  the realized instance, the commit order, and \(\epsilon\).
  If \(T=0\), the algorithm immediately returns the all-zero decomposition.
  Otherwise a discovery prefix has a protected set \(I\subset[k]\), \(|I|<r\),
  frozen balanced slots, and joint-zero slots elsewhere. Its residual and a
  scratch objective are
  \[
    R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i,\qquad
    f_I(g,u,v,w)=\tfrac12\|R_I-gu\otimes gv\otimes gw\|_F^2,
  \]
  for \((u,v,w)\in\mathcal S=(\mathbb S^{n-1})^3\). Define
  \[
    s_I(u,v,w)=\langle R_I,u\otimes v\otimes w\rangle,\quad
    \Delta F_I(g,u,v,w)=g^3s_I-\tfrac12g^6,\quad
    d_I=s_I-g^3,\quad \partial_gf_I=-3g^2d_I.
  \]
  Let \(D_I=\max\{\|R_I\|_F,\|T\|_FP^{-D_{\rm cap}}\}\),
  \(N_I(g)=1+\|R_I\|_F+g^4\), and let
  \(\operatorname{grad}_{\mathcal S}f_I\) and
  \(H_{\rm ang}=\operatorname{Hess}_{\mathcal S}f_I\) be the angular
  Riemannian gradient and Hessian at fixed \(g\). Put
  \[
    e_{\rm ang}=\|\operatorname{grad}_{\mathcal S}f_I\|_2/N_I(g),\quad
    \widehat H_{\rm ang}=H_{\rm ang}/N_I(g),\quad
    e_{\rm rad}=\frac{|g^3-s_I|}{\max\{s_I,g^3,D_I\}}.
  \]
  Define the zero-safe relative margin
  \[
  \mu_I(q)=
  \begin{cases}
    0,&s_I\le0\text{ or }\Delta F_I(q)\le0,\\
    \min\{1,s_I/D_I,\Delta F_I(q)/D_I^2,g^3/D_I,
      \lambda_{\min}(\widehat H_{\rm ang})\},&\text{otherwise}.
  \end{cases}
  \]
  At \(R_I=0\), \(s_I=\Delta F_I=0\) and hence \(\mu_I=0\). With fixed
  positive proof exponents \(D_{\rm stat},D_\mu,D_{\rm gap},D_{\rm cap}\),
  set \(e_I=P^{-D_{\rm stat}}\mu_I(q)\). A transaction passes
  \({\sf Cert}(q;I)\) only if
  \[
    0<g\le2R_{\max},\quad s_I>0,\quad \mu_I\ge P^{-D_\mu},\quad
    e_{\rm rad},e_{\rm ang}\le e_I,\quad
    \lambda_{\min}(\widehat H_{\rm ang})\ge P^{-D_{\rm gap}},\quad
    {\sf Sep}(q;I)\le\tfrac14, \tag{Cert}
  \]
  where
  \[
    {\sf Sep}(q;I)=\max_{i\in I,M\in\{A,B,C\}}
      |\langle u_M,u_{i,M}\rangle|
  \]
  and the value is zero for \(I=\varnothing\). All quantities in (Cert) use
  the current residual and actual factors. There is no protected-span
  projector, source-label query, matching query, or hidden basin test.

  **Unprojected transaction algorithm.** Start with joint-zero slots and a
  finite independent tape of \(N_{\rm tx}\) Haar triples in \(\mathcal S\),
  where \(H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil\) work is allowed per triple
  and \(N_{\rm tx}=\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}\log(2r)\rceil\).
  For each triple, seed radius \(\delta\), flip one fixed mode if its score is
  negative, bracket \(g^3=s_I\), and alternate radial trust-region Armijo
  steps with full product-sphere angular gradient steps. When the angular
  gradient is small but the normalized angular Hessian has eigenvalue below
  \(-P^{-D_{\rm gap}}\), test both signs of an approximate
  minimum-eigenvector Armijo step. Every accepted trial has factor
  displacement at most \(\Delta_{\rm tr}\), stays in the radius guard, and
  uses only \(T\), current factors/residuals, gradients, Hessian-vector
  products, inner products, and the tape. A failed, ambiguous, guard-violating,
  or screen-failing trial maps its scratch slot exactly to joint zero; hence
  protected slots, residual, represented tensor, and loss are unchanged.
  A successful transaction commits only a state satisfying (Cert), records
  \(e_p=P^{-D_{\rm stat}}\mu_I(q_p)\), and freezes the committed slot. The
  protocol is full-space and unprojected; normalization is only the per-mode
  sphere retraction.

  **Analysis-only ledger and generated interfaces.** Let
  \({\cal D}=\{(j,M,\ell):j\ne\ell,\ M\in\{A,B,C\}\}\), extend arrays by
  \(Z_{j,M,j}=0\), and use
  \[
    \|Z\|_1=\sum_{(j,M,\ell)\in{\cal D}}Z_{j,M,\ell},\qquad
    \|Z\|_{{\rm root},2}=\max_j
      \left(\sum_{M,\ell\ne j}Z_{j,M,\ell}^2\right)^{1/2}.
  \]
  Put \(\eta_{\rm stat}=C_\eta(\Gamma_\star\nu_{\rm real}^2+P^{-D_{\rm stat}})\)
  and define cyclically
  \[
    (\mathcal TZ)_{j,A,\ell}=\sum_{t\ne j}J_A(t,\ell)
      [(H_C(j,t)+\eta_{\rm stat})Z_{j,B,t}
       +(H_B(j,t)+\eta_{\rm stat})Z_{j,C,t}]. \tag{R-transfer}
  \]
  The proof must derive
  \[
    \|\mathcal T\|_{1\to1}\le
      2(\nu_{\rm real}+\eta_{\rm stat})(1+\sqrt r\nu_{\rm real}),\qquad
    \|\mathcal T\|_{{\rm root},2\to{\rm root},2}\le
      2(\nu_{\rm real}+\eta_{\rm stat})(1+\sqrt r\nu_{\rm real}). \tag{R-gap}
  \]
  For \(q_{\rm res}=C_0\Gamma_\star\|\mathcal T\|_{1\to1}\) and
  \(q_{\rm row}=C_0\Gamma_\star\|\mathcal T\|_{{\rm root},2\to{\rm root},2}\),
  the proof must also derive \(q_{\rm res},q_{\rm row}\le1/4\). These are
  derived small-gain conclusions, so the Neumann envelope below is convergent.
  A generated protected state may be matched in the analysis by an injection
  \(\pi_I:I\to[r]\), with signs of product \(+1\), and
  \[
    e_{i,M}=\sigma_{i,M}u_{i,M}-m_{\pi_I(i),M},\quad
    \delta_i=g_i^3/\tau_{\pi_I(i)}-1,\quad
    E_i=g_i^3u_i\otimes v_i\otimes w_i-\tau_{\pi_I(i)}\phi_{\pi_I(i)}.
  \]
  For a generated injection and an unresolved label \(j\), define explicitly
  \[
    A_{I;j,A,\ell}={1\over\tau_j}\sum_{i\in I}
      \left|\left\langle E_i,
        m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C}\right\rangle\right|,
  \]
  for \(j\) unresolved and \(\ell\ne j\), with cyclic definitions and zero
  entries otherwise.  This is the generated history forcing obtained by
  contracting already accepted errors against unresolved source atoms. With
  \(\mathbf1\) the all-ones array, define
  \[
    \Theta_I=(\operatorname{Id}-C_0\Gamma_\star\mathcal T)^{-1}
      C_0\Gamma_\star(S+A_I+P^{-D_{\rm stat}}\mathbf1). \tag{R-ledger}
  \]
  Matching, history, and envelope objects are generated proof outputs, never
  assumptions or protocol queries.

  For the root \(p\) captured at prefix \(I_p\), set
  \(e_p=P^{-D_{\rm stat}}\mu_{I_p}(q_p)\),
  \(\eta_{0,p}=C_\eta(\Gamma_\star\nu_{\rm real}^2+e_p)\), and store
  \[
    z_{p,M,\ell}=\Theta_{I_p;p,M,\ell}+C_{\rm num}e_p\ (\ell\ne p),\qquad
    z_{p,M,p}=0.
  \]
  The required generated interface is the raw row
  \[
    \|z_p\|_{{\rm root},2}
      \le C_z(\nu_{\rm real}^2+r\nu_{\rm real}^3+\sqrt r\,e_p). \tag{Raw-J}
  \]
  The same generated transaction must export, for its assigned unresolved
  label \(p\),
  \[
    |\delta_i|+\max_M\|e_{i,M}\|_2\le C_{\rm led}\eta_{0,p},\qquad
    |\langle e_{i,M},m_{\ell,M}\rangle|
      \le C_{\rm led}\bigl(\Theta_{I_p;p,M,\ell}+e_p\bigr)
      \quad(\ell\ne p),
  \]
  together with uniqueness of \(p\), extension of the injection, and
  separation from all previously assigned labels. These are generated proof
  outputs, not certificate clauses or assumptions.
  Only on the derived branch
  \(e_p\le c_{\rm lb}\nu_{\rm real}^2/\sqrt r\) may the last term be
  suppressed; otherwise it remains in every bound. The certificate definition
  gives the observable capture charge
  \[
    e_pD_{I_p}^2\le P^{-D_{\rm stat}}\Delta F_{I_p}(q_p),\qquad
    \sum_{p\ {\rm committed}}\Delta F_{I_p}(q_p)\le\tfrac12\|T\|_F^2. \tag{capture-charge}
  \]
  Failed probes contribute zero.

  For \(j\) unresolved and \(\ell\ne j\), define cyclically
  \[
    \widetilde\Upsilon^M_{p;j,\ell}=(1+\eta_{0,p})
      (J_M(p,\ell)+z_{p,M,\ell})
      \prod_{N\ne M}(H_N(p,j)+z_{p,N,j})
      -J_M(p,\ell)\prod_{N\ne M}H_N(p,j). \tag{J-charge}
  \]
  The generated transition must prove the corresponding multilinear tensor
  expansion and history increment bound. Since \(J_M(p,p)=1\) and
  \(z_{p,M,p}=0\),
  \[
    \widetilde\Upsilon^M_{p;j,p}
    =\eta_{0,p}\prod_{N\ne M}H_N(p,j)
     +(1+\eta_{0,p})[H_{N_1}(p,j)z_{p,N_2,j}
       +H_{N_2}(p,j)z_{p,N_1,j}+z_{p,N_1,j}z_{p,N_2,j}]. \tag{J-diag}
  \]
  Here \(\{N_1,N_2\}=\{A,B,C\}\setminus\{M\}\). 
  For \(\ell\ne p\), \(J_M(p,\ell)=H_M(p,\ell)\). On the isolated two-label
  verification family with local scale \(h\), the exact audit is
  \[
    \widetilde\Upsilon^M_{p;j,p}=O(h^4+e_ph+e_p^2), \tag{J-two-label}
  \]
  including \(h=0,e_p>0\) and \(h=e_p^2\); no lower bound on \(h/e_p\) is
  imposed. For every prefix \(s\), the one-time charge and accepted-error
  bounds required downstream are
  \[
    \mathfrak U_s:=\sum_{t\le s}\sum_{j\ {\rm unresolved\ after}\ t}
      \sum_{\ell\ne j,M}\widetilde\Upsilon^M_{p_t;j,\ell}
    \le C_J\Gamma_\star r\nu_{\rm real}^3+C_Jr^2P^{-D_{\rm stat}}, \tag{J-global}
  \]
  \[
    \|A_I\|_1+\text{(all accepted tensor-influence charges up to \(I\))}
    \le C_{\rm acc}\Gamma_\star r\nu_{\rm real}^3+
       C_{\rm acc}r^2P^{-D_{\rm stat}}. \tag{R-acc}
  \]
  These are proof obligations; no unconditional \(C'_z\nu_{\rm real}^2\)
  specialization and no protected-span leverage or matched-mixture exchange
  premise is present. The partition
  \({\cal E}_{\rm lb}=\{\nu_{\rm real}\ge P^{-D_{\rm lb}}\}\) is analysis-only;
  its complement retains all raw numerical terms.

  **Terminal chart.** After \(r\) commits, set unused slots jointly to zero
  and run joint unprojected balanced trust-region Armijo descent on \(F\).
  Write \(q_i^A=x_i,q_i^B=y_i,q_i^C=z_i\). Let \(Q^\star\) be the padded
  target tuple and \({\cal Z}_\star\) its finite
  slot-permutation/product-one-sign orbit. Define
  \[
    {\cal C}_{\rm PL}(\varrho)=\{Q:
      \operatorname{dist}(Q,{\cal Z}_\star)\le\varrho,\ 
      \max_{i,M}\|q_i^M\|_2\le2R_{\max},\
      q_i=0\text{ for unused }i\}.
  \]
  The chart radius \(\varrho_{\rm PL}\), PL constant \(\mu_{\rm PL}\), chart
  entry, and first-exit invariance are generated conclusions. On the active
  balanced manifold the terminal proof targets
  \(\|\operatorname{grad}_{\rm bal}F(Q)\|_F^2\ge2\mu_{\rm PL}F(Q)\).

- Technical assumptions:
  - assump:base-column-conditioning (Polynomial base-column scales): Every
    base column is nonzero and
    \(\kappa^{-1}\le\|\bar a_j\|_2,\|\bar b_j\|_2,\|\bar c_j\|_2\le\kappa\),
    with \(1\le\kappa\le r^{c_0}\).
  - assump:base-product-balance (Balanced product weights):
    \(\max_j\bar\tau_j/\min_j\bar\tau_j\le\Gamma_\star\), for fixed
    \(\Gamma_\star\ge1\); reciprocal modewise rescalings are allowed.
  - assump:two-mode-orthogonality (Two-mode-orthogonal source child):
    \(\bar G_A=I_r\) and \(\bar G_B=I_r\), using normalized columns. This is
    a deterministic source condition and does not constrain generated iterates.
  - assump:c-mode-gram-margin (Third-mode near-orthogonality):
    \(\|\bar G_C-I_r\|_{\rm op}\le(C_\nu r\log(2r))^{-1}\).
  - assump:gaussian-smoothing (Independent Gaussian source perturbations):
    the \(\xi_{j,M}\)'s are independent with
    \(\xi_{j,M}\sim\mathcal N(0,\rho^2I_n/n)\).
  - assump:dimension-regime (Ambient dimension):
    \(n\ge C_{\rm dim}r\log(2r)\), for fixed sufficiently large
    \(C_{\rm dim}\).
  - assump:smoothing-scale (Inverse-polynomial smoothing):
    \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\).
  - assump:smoothing-bridge (Static smoothing bridge):
    \(C_{\rm sm}\kappa\rho\sqrt{\log(2r)}\le\nu_\star/4\), for fixed proof
    constant \(C_{\rm sm}\).
  - assump:rank-regime (Strictly subquadratic rank):
    \(k=U(r)=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\), with
    \(r<k<r^2\) for \(r\ge r_0\).
  - assump:random-tape (Independent finite full-space tape):
    conditional on the realized instance, the \(N_{\rm tx}\) seed triples are
    independent Haar draws on \((\mathbb S^{n-1})^3\), independent of smoothing.
  - assump:accuracy-range (Relative accuracy):
    \(0<\epsilon<1\); for observed \(T=0\), use the exact-zero early return.

# Formalized Goal

- Goal statement:
  In target-spec mode, prove a material-partial theorem for every deterministic
  source triple satisfying the technical assumptions. There is a once-drawn
  event \({\cal E}_{\rm inst}\) with
  \(\mathbb P_{\rm inst}({\cal E}_{\rm inst})\ge1-r^{-10}\) on which all
  realized columns are nonzero and
  \[
    (2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa,\qquad
    \tau_{\max}/\tau_{\min}\le2\Gamma_\star,\qquad
    \nu_{\rm real}\le2\nu_\star,
  \]
  \[
    \max_{M\ne N}\|G_M\circ G_N-I_r\|_{\rm op}\le1/16,\qquad
    \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le1/16,
  \]
  \[
    \sqrt{15/16}\,\|\tau\|_2\le\|T\|_F
      \le\sqrt{17/16}\,\|\tau\|_2,
  \]
  and the exact balanced representation lies in the radius guard. From this
  event derive (R-src), the two-mode contraction identities, the source
  budget, both transfer small-gain bounds, and all static conditioning
  conclusions.

  Conditional on \(T\in{\cal E}_{\rm inst}\), start at the empty protected
  prefix and prove the four-block chain (S)--(T)--(B)--(P). Block (S) gives
  the static smoothing and two-mode label-isolation bounds. Block (T) proves
  that every full-space scratch state satisfying the observable zero-safe
  certificate and separation test either rolls back or is assigned, up to
  product-one signs, to exactly one unresolved realized atom, with generated
  matching, direction, and raw-J outputs. Block (B) proves the charge identities,
  the honest two-label audit, the capture-charge telescope, the one-time global
  charge, and the accepted-error budget, retaining every \(e_p\)-dependent term
  on both sides of the branch partition and never using protected-span leverage,
  matched-mixture exchange, or an \(E_{\rm lb}^c\) absorption premise. Block (P)
  proves history-uniform transaction success probability
  \(p_{\rm tx}=(nr)^{-c_{\rm tx}}\), finite-tape recovery of all unresolved
  labels with conditional probability at least \(1-r^{-10}\), entry into a
  same-target balanced PL chart, and terminal iterates satisfying
  \[
    \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
      \le\epsilon\|T\|_F
  \]
  for every \(0<\epsilon<1\). Discovery work is polynomial in
  \(n,r,k,\kappa,\rho^{-1}\) and independent of \(\epsilon\); terminal work is
  polynomial in these quantities times \(\log(1/\epsilon)\), hence
  \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\). The exposed rate variables are
  \(n,r,k,\kappa,\rho,\Gamma_\star,P,\nu_{\rm real},\epsilon\), the adaptive
  \(e_p\), and the displayed fixed proof exponents; hidden constants may depend
  only on \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,C_{\rm rank},\Gamma_\star\)
  and fixed Armijo/protocol constants. The discovery horizon is finite and
  horizon-uniform over all prefixes, the terminal horizon is
  \(O(\log(1/\epsilon))\), and all displayed errors are in Frobenius or the
  explicitly stated operator/root norms. Instance and conditional-tape
  probabilities are separate. The theorem is limited to the source-mentioned
  two-mode-orthogonal smoothed subclass (material_partial); arbitrary bases,
  unbalanced product weights, and simultaneous all-slot updates remain open.
  In the exact \(H_M=0,e_p=0\) specialization, rollback is exact, structural
  ledger charges vanish, the balanced target is stationary, and the same
  arbitrary-accuracy endpoint is retained.

# Note

- Rigor:
  This setting is bound to approved idea SHA
  f0b9f4c3969649daacd18ba2fc6567ce96aa035e5f2b5cc5765b617bf08fd078 and
  uses prior idea-10 setting SHA
  c901dbc848dbbdbc09856210be4928ef068fa14541cb719eff34cdffc12e3d19 as
  the notation baseline, while repairing prior idea-10 review SHA
  a4687921b8fd2253b6fad46f82905190bcc8d89cdd97ec5ab640a117dd0f6e6e.
  The semantic delta is limited to the primitive two-mode source, the
  residual-relative zero-safe certificate, and the raw/capture-budgeted ledger.
  Source alignment is preserved: exact asymmetric CP loss, Gaussian smoothing,
  full-space transactional gradient procedure, finite tape, exact rollback,
  separate instance/tape probabilities, strictly subquadratic rank, arbitrary
  relative Frobenius accuracy, and exact/noiseless baseline. Progress type is
  material_partial and materiality is an end-to-end theorem target on a
  nontrivial source-mentioned subclass.

  Assumption support: base column conditioning, Gaussian smoothing, dimension,
  and inverse-polynomial smoothing are inherited from the source smoothed-CP
  regime; product balance and the third-mode Gram margin are inherited
  near-orthogonal source conditions; two-mode orthogonality is a source-mentioned
  child checked by orthonormal frames; rank, tape law, and relative accuracy
  are the approved algorithmic interface. The two-mode contraction is
  example-verified on orthogonal equal-weight factors, two orthogonal modes
  with a correlated third mode, dense/block frames, and reciprocal rescalings.
  The relative certificate is zero-safe at \(R_I=0\). The raw J/capture
  mechanism is example-verified on the isolated two-label family
  \(h=e_p^2\), where the diagonal charge is
  \(O(h^4+e_ph+e_p^2)\), and on the exact orthogonal/noiseless family where
  \(H=e=0\). These examples support the mechanism but do not promote any
  generated matching, certificate passage, ledger, boundedness, PL entry, or
  convergence fact to an assumption; all such facts are proof obligations.
