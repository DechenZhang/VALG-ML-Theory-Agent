# Formalized Setting

- Basic setup:
  **Source, smoothing, and realized tensor.** Fix integers \(n,r\ge 2\).  Let
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be deterministic matrices in
  \(\mathbb R^{n\times r}\).  For a matrix \(M=[m_1,\ldots,m_r]\) with
  nonzero columns, set
  \[
    D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2),\qquad
    \widetilde M=MD_M^{-1},\qquad G_M=\widetilde M^{\mathsf T}\widetilde M .
  \]
  Write
  \(\bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\) and
  \(\nu_\star=(C_\nu r\log(2r))^{-1}\).  Independently over labels and
  modes, draw
  \[
    a_j=\bar a_j+\xi_{j,A},\quad b_j=\bar b_j+\xi_{j,B},\quad
    c_j=\bar c_j+\xi_{j,C},\qquad
    \xi_{j,M}\sim{\cal N}(0,\rho^2I_n/n).
  \]
  On the event that the realized columns are nonzero, define
  \[
    m_{j,A}=a_j/\|a_j\|_2,\quad m_{j,B}=b_j/\|b_j\|_2,\quad
    m_{j,C}=c_j/\|c_j\|_2,\quad
    \tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,
  \]
  \[
    \phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C},\qquad
    T=\sum_{j=1}^r\tau_j\phi_j,\qquad
    \Phi_\star=[\phi_1,\ldots,\phi_r],\qquad
    \Phi_\star^{*}\Phi_\star=G_A\circ G_B\circ G_C,
  \]
  \[
    \tau_{\max}=\max_j\tau_j,\qquad \tau_{\min}=\min_j\tau_j,\qquad
    \nu_{\rm real}=\max_{M\in\{A,B,C\}}\|G_M-I_r\|_{\rm op}.
  \]
  Nonvanishing, norm, weight, Gram, and conditioning bounds for the realized
  factors are conclusions of the instance event in the goal, not assumptions.

  **Static source kernels.** For a realized instance let
  \(H_M=|G_M-I_r|\) entrywise, \(J_M=I_r+H_M\), and
  \[
    K_A=H_B\circ H_C,\qquad K_B=H_A\circ H_C,\qquad
    K_C=H_A\circ H_B .
  \]
  Thus \(H_M\) has zero diagonal.  For \(j\ne\ell\), put
  \(S_{j,M,\ell}=(K_MJ_M)_{j\ell}\), and put \(S_{j,M,j}=0\).
  These arrays are analysis objects and are never supplied to the algorithm.
  On the good instance event the proof derives
  \[
    \max_j\|H_Me_j\|_2\le\nu_{\rm real},\qquad
    \|H_M\|_1=\|H_M\|_\infty\le\sqrt r\,\nu_{\rm real},\qquad
    \|K_M\|_1=\|K_M\|_\infty\le\nu_{\rm real}^2. \tag{R-src}
  \]
  In particular, for every unit \(w\) and \(j\ne\ell\),
  \[
    |\langle m_{j,A},m_{\ell,A}\rangle
      \langle m_{j,B},m_{\ell,B}\rangle|
      \le C_{\rm 2mode}\nu_{\rm real}^2,
  \]
  \[
    \left|\left\langle T,m_{j,A}\otimes m_{j,B}\otimes w\right\rangle
      -\tau_j\langle m_{j,C},w\rangle\right|
      \le C_{\rm 2mode}\Gamma_\star\nu_{\rm real}^2\|T\|_F, \tag{two-mode}
  \]
  with the two cyclic analogues.  These are derived consequences of the
  source restrictions and smoothing.

  **Objective, balancing, and target.** For algorithmic rank \(k\), write
  \(Q=(X,Y,Z)\) with slots \(q_i=(x_i,y_i,z_i)\), and define
  \[
    \Psi(Q)=\sum_{i=1}^kx_i\otimes y_i\otimes z_i,\qquad
    R(Q)=T-\Psi(Q),\qquad F(Q)=\tfrac12\|R(Q)\|_F^2.
  \]
  Tensor-preserving balancing is
  \[
    {\cal B}(x,y,z)=
    \begin{cases}
      (gu,gv,gw),&\|x\|_2\|y\|_2\|z\|_2>0,\\
      (0,0,0),&\text{otherwise},
    \end{cases}
    \quad
    g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3},
    \quad (u,v,w)=\left({x\over\|x\|_2},{y\over\|y\|_2},{z\over\|z\|_2}\right).
  \]
  A nonzero balanced slot is \(q_i=(g_i u_i,g_i v_i,g_i w_i)\); unused and
  rolled-back slots are joint zero.  The exact balanced target slots are
  \[
    q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},\tau_j^{1/3}m_{j,C}),
    \qquad j\in[r],
  \]
  padded with \(k-r\) joint-zero slots.  This target is a terminal reference,
  never an algorithmic input.

  **Discovery prefix and slice quantities.** Set
  \[
    P=16nrk\kappa\rho^{-1},\qquad R_{\max}=8\kappa,\qquad
    a_{\rm seed}=\|T\|_F P^{-120},\qquad
    \delta=a_{\rm seed}^{1/3},\qquad \Delta_{\rm tr}=P^{-20}.
  \]
  All \(C_\bullet,D_\bullet,d_\bullet\), \(c_{\rm arm}\in(0,1)\), and
  \(\alpha_0>0\) below are fixed protocol or proof constants independent of
  \(n,r,k,\rho,\epsilon\), the realized instance, and the prefix.  If \(T=0\),
  the algorithm returns the all-zero
  decomposition.  Otherwise a prefix \(I\subset[k]\), \(|I|<r\), contains
  frozen balanced slots and joint-zero slots elsewhere, with observable
  residual
  \[
    R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i.
  \]
  For a balanced scratch triple \(q=(gu,gv,gw)\), with
  \((u,v,w)\in{\cal S}:=(\mathbb S^{n-1})^3\), define
  \[
    f_I(q)=\tfrac12\|R_I-g^3u\otimes v\otimes w\|_F^2,\qquad
    s_I(q)=\langle R_I,u\otimes v\otimes w\rangle,
  \]
  \[
    \Delta F_I(q)=g^3s_I(q)-\tfrac12g^6,\qquad
    d_I(q)=s_I(q)-g^3,\qquad
    \partial_g f_I(q)=-3g^2d_I(q),\qquad
    N_I(g)=1+\|R_I\|_F+g^4.
  \]
  Let \(\operatorname{grad}_{\cal S}f_I\) and
  \(H_{\rm ang}=\operatorname{Hess}_{\cal S}f_I\) denote the product-sphere
  Riemannian gradient and Hessian at fixed \(g\).  Put
  \[
    e_{\rm ang}(q)={\|\operatorname{grad}_{\cal S}f_I(q)\|_2\over N_I(g)},
    \qquad \widehat H_{\rm ang}(q)={H_{\rm ang}(q)\over N_I(g)},\qquad
    D_I=\max\{\|R_I\|_F,\|T\|_FP^{-D_{\rm cap}}\},
  \]
  \[
    e_{\rm rad}(q)={|g^3-s_I(q)|\over\max\{s_I(q),g^3,D_I\}}.
  \]
  In the block-update formulas below, \(f_I(g,u,v,w)\) denotes this same
  slice loss evaluated at the displayed scalar and unit directions.

  **Cyclic residual-gradient power bank.** For a tensor \(R\) and unit vectors,
  define the observable contractions
  \[
    c_A(R;v,w)=R\times_2v\times_3w,\quad
    c_B(R;u,w)=R\times_1u\times_3w,\quad
    c_C(R;u,v)=R\times_1u\times_2v,
  \]
  where \((R\times_2v\times_3w)_a=\sum_{b,c}R_{abc}v_bw_c\),
  and cyclically.  If the displayed contraction is nonzero, define
  \[
    C_A(R;v,w)={c_A(R;v,w)\over\|c_A(R;v,w)\|_2},\quad
    C_B(R;u,w)={c_B(R;u,w)\over\|c_B(R;u,w)\|_2},\quad
    C_C(R;u,v)={c_C(R;u,v)\over\|c_C(R;u,v)\|_2};
  \]
  a zero contraction is a failed probe.  These normalized maps are analysis
  notation for the following finite objective-gradient implementation, not
  auxiliary objectives or source-label queries.  At unit directions, the exact
  slice derivatives are
  \[
    \operatorname{grad}_{u,{\mathbb S}}f_I
      =-g^3(I-uu^{\mathsf T})c_A(R_I;v,w),\quad
    \operatorname{grad}_{v,{\mathbb S}}f_I
      =-g^3(I-vv^{\mathsf T})c_B(R_I;u,w),
  \]
  \[
    \operatorname{grad}_{w,{\mathbb S}}f_I
      =-g^3(I-ww^{\mathsf T})c_C(R_I;u,v),\qquad
    \partial_gf_I=-3g^2(s_I-g^3). \tag{slice-derivatives}
  \]
  For \(M\in\{A,B,C\}\), let
  \(\operatorname{Retr}_x(d)=(x+d)/\|x+d\|_2\) when the numerator is nonzero.
  A block power operator \({\sf BA}_A(R_I;g,u,v,w)\) holds \(g,v,w\) fixed,
  sets \(d_t=-\operatorname{grad}_{u,{\mathbb S}}f_I\) at its current
  direction, and tries
  \[
    u_{t,h}=\operatorname{Retr}_{u_t}(\alpha_0 2^{-h}d_t),\qquad
    h=0,1,\ldots,H_{\rm pow}-1.
  \]
  It accepts the first trial satisfying
  \[
    f_I(g,u_{t,h},v,w)\le f_I(g,u_t,v,w)
      -c_{\rm arm}\alpha_0 2^{-h}\|d_t\|_2^2,\qquad
    g\in[\delta,2R_{\max}], \tag{angular-Armijo}
  \]
  and the radius guard; if no trial is accepted, the operator fails.  It
  repeats this deterministic backtracking loop for at most \(H_{\rm pow}\)
  accepted updates and returns at the first \(t\) with
  \(\|d_t\|_2/N_I(g)\le\zeta_{\rm pow}\); exhaustion is failure.  The operators
  \({\sf BA}_B\) and \({\sf BA}_C\) are the cyclic versions.  A zero
  contraction or undefined retraction is failure.  If a current block score
  is negative, one fixed mode is flipped before invoking its operator.  The
  proof must derive
  \(\|{\sf BA}_M-C_M\|_2\le\zeta_{\rm pow}\) for every successful block on the
  good event; this is a generated conclusion, not an assumption.

  Let a tape pair \((v_0,w_0)\) be drawn independently from
  \(\mathbb S^{n-1}\times\mathbb S^{n-1}\).  Use a fixed target-blind unit
  scratch direction \(u_0\) (the first coordinate vector), initialize
  \(g_0=\delta\), and for
  \(\ell=0,\ldots,L_{\rm pow}-1\) apply the finite Armijo block steps in the
  order
  \[
    u_{\ell+1}={\sf BA}_A(R_I;g_0,u_\ell,v_\ell,w_\ell),\qquad
    v_{\ell+1}={\sf BA}_B(R_I;g_0,u_{\ell+1},v_\ell,w_\ell),\qquad
    w_{\ell+1}={\sf BA}_C(R_I;g_0,u_{\ell+1},v_{\ell+1},w_\ell).
  \tag{cyclic-power}
  \]
  Here \(L_{\rm pow}=\lceil C_L\log(2r)\rceil\),
  \(H_{\rm pow}=\lceil P^{d_{\rm pow}}\rceil\), and
  \(\zeta_{\rm pow}=P^{-D_{\rm pow}}\).  The same scratch slot is reused for
  all pairs and all cycles.  At the end of a cycle bank, set
  \(q=(gu_{L_{\rm pow}},gv_{L_{\rm pow}},gw_{L_{\rm pow}})\), solve the
  observable radial equation
  \(g^3=s_I(u_{L_{\rm pow}},v_{L_{\rm pow}},w_{L_{\rm pow}})\) by safeguarded
  scalar Armijo steps using \(\partial_gf_I\), and retain the positive root
  only when it lies in \([\delta,2R_{\max}]\).  Concretely, with the directions
  fixed, set \(d_g=-\partial_gf_I\), try
  \(g^+=\operatorname{clip}_{[\delta,2R_{\max}]}(g+\alpha_0 2^{-h}d_g)\),
  and accept the first \(h<H_{\rm pow}\) satisfying
  \[
    f_I(g^+)\le f_I(g)-c_{\rm arm}\alpha_0 2^{-h}|d_g|^2
  \]
  and the radius guard.  If the final score is negative, flip the fixed
  \(A\)-mode and recompute the score before this scalar solve.  A bracketed
  dyadic refinement is continued until
  \(|g^3-s_I|\) meets the displayed \(e_{\rm rad}\) test; all trials obey the
  same rollback rule.

  Define the observable cycle residual
  \[
    {\sf cyc}_I(q)=\max\{\|u-C_A(R_I;v,w)\|_2,\,
      \|v-C_B(R_I;u,w)\|_2,\,
      \|w-C_C(R_I;u,v)\|_2\},
  \]
  with value \(+\infty\) if a contraction is zero.  A fixed
  \(\gamma_{\rm pow}\in(0,1)\) is selected by the proof and is not a
  primitive assumption.  The proof must show that the scalar order-statistic
  event
  \[
    \beta_{j,B}=\langle m_{j,B},v_0\rangle,\qquad
    \beta_{j,C}=\langle m_{j,C},w_0\rangle
  \]
  yields, after the cyclic recurrence, one unresolved winner of directional
  mass at least \(\gamma_{\rm pow}\), while all other unresolved masses are
  separated by a fixed gap.  The common \(n^{-1/2}\) scale is allowed to cancel
  after normalization; this is a proof conclusion, not an assumption.

  **Observable certificate.** Define
  \[
    \operatorname{curv}_I(q)=
      {\lambda_{\min}(H_{\rm ang}(q))\over\max\{s_I(q),D_I\}},
  \]
  and
  \[
    \mu_I(q)=
    \begin{cases}
      0,&s_I(q)\le0\ \text{or}\ \Delta F_I(q)\le0,\\
      \min\{1,s_I(q)/D_I,\Delta F_I(q)/D_I^2,g^3/D_I,
        \operatorname{curv}_I(q),
        1-16{\sf cyc}_I(q)/\gamma_{\rm pow}\},&\text{otherwise}.
    \end{cases}
  \]
  For a passing candidate set \(e_I(q)=P^{-D_{\rm stat}}\mu_I(q)\); failed
  candidates are joint-zero rollback states and export no \(e_I\).  The
  candidate passes \({\sf Cert}(q;I)\) only if
  \[
    0<g\le2R_{\max},\quad s_I(q)>0,\quad
    {\sf cyc}_I(q)\le\gamma_{\rm pow}/16,\quad
    \mu_I(q)\ge P^{-D_\mu},
  \]
  \[
    e_{\rm rad}(q),e_{\rm ang}(q)\le e_I(q),\qquad
    \operatorname{curv}_I(q)\ge\gamma_{\rm pow}/4,\qquad
    {\sf Sep}(q;I)\le\tfrac14, \tag{Cert}
  \]
  where
  \[
    {\sf Sep}(q;I)=\max_{i\in I,M\in\{A,B,C\}}
      |\langle u_M,u_{i,M}\rangle|,\qquad {\sf Sep}(q;\varnothing)=0.
  \]
  Every certificate quantity is computed from the current residual, current
  factors, derivatives, and inner products.  If \(R_I=0\), discovery stops
  before forming a candidate; the joint-zero state has \(s_I=\Delta F_I=0\),
  \(\mu_I=0\), and exports no \(e_I\), \(\Theta\), or \(z\).  For an arbitrary
  nonzero scratch radius at \(R_I=0\), \(s_I=0\) and
  \(\Delta F_I=-g^6/2\), so no certificate is attempted.

  **Candidate-relative transfer and ledger.** Let
  \({\cal D}=\{(j,M,\ell):j,\ell\in[r],\ j\ne\ell,\ M\in\{A,B,C\}\}\).
  Extend every array by setting its diagonal entries to zero and define
  \[
    \|Z\|_1=\sum_{(j,M,\ell)\in{\cal D}}Z_{j,M,\ell},\qquad
    \|Z\|_{{\rm root},2}=
      \max_j\left(\sum_{M,\ell\ne j}Z_{j,M,\ell}^2\right)^{1/2}.
  \]
  After a candidate passes \({\sf Cert}\), the proof may generate an
  analysis-only injection \(\pi_I:I\to[r]\), mode signs with product one, and
  an unresolved label \(p=p(q)\).  Define
  \[
    e_{i,M}=\sigma_{i,M}u_{i,M}-m_{\pi_I(i),M},\quad
    \delta_i=g_i^3/\tau_{\pi_I(i)}-1,\quad
    E_i=g_i^3u_i\otimes v_i\otimes w_i-\tau_{\pi_I(i)}\phi_{\pi_I(i)}.
  \]
  For unresolved \(j\) and \(\ell\ne j\), set
  \[
    A_{I;j,A,\ell}={1\over\tau_j}\sum_{i\in I}
      |\langle E_i,m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C}\rangle|,
  \]
  with cyclic definitions and zero entries otherwise.  The injection, signs,
  label, and all ledger statements below are proof outputs, never protocol
  queries.

  For a passing \(q\), let
  \(\eta_{I,q}=C_\eta(\Gamma_\star\nu_{\rm real}^2+e_I(q))\), and define the
  nonnegative transfer majorant only after certificate passage:
  \[
    (\mathcal T^+_{I,q}Z)_{j,A,\ell}
      =\sum_{t\ne j}|J_A(t,\ell)|
       \big[(|H_C(j,t)|+\eta_{I,q})Z_{j,B,t}
          +( |H_B(j,t)|+\eta_{I,q})Z_{j,C,t}\big], \tag{transfer-majorant}
  \]
  with cyclic definitions.  The proof must derive
  \[
    \|\mathcal T^+_{I,q}\|_{1\to1},\
    \|\mathcal T^+_{I,q}\|_{{\rm root},2\to{\rm root},2}
    \le2(\nu_{\rm real}+\eta_{I,q})(1+\sqrt r\,\nu_{\rm real}),
  \]
  \[
    C_0\Gamma_\star\|\mathcal T^+_{I,q}\|_{1\to1}\le\tfrac14,\qquad
    C_0\Gamma_\star\|\mathcal T^+_{I,q}\|_{{\rm root},2\to{\rm root},2}
      \le\tfrac14. \tag{transfer-gap}
  \]
  Thus the generated resolvent is
  \[
    \Theta_{I,q}=(\operatorname{Id}-C_0\Gamma_\star\mathcal T^+_{I,q})^{-1}
      C_0\Gamma_\star(S+A_I+e_I(q)\mathbf 1),\tag{relative-resolvent}
  \]
  and, with \(z_{q,M,p(q)}=0\),
  \(z_{q,M,\ell}=\Theta_{I,q;p(q),M,\ell}\) for \(\ell\ne p(q)\).  The proof
  must derive
  \[
    \|z_q\|_{{\rm root},2}\le C_z\bigl(\nu_{\rm real}^2+r\nu_{\rm real}^3
      +\sqrt r\,e_I(q)\bigr), \tag{Raw-J-rel}
  \]
  \[
    |\delta_i|+\max_M\|e_{i,M}\|_2\le C_{\rm led}\eta_{I,q},\qquad
    |\langle e_{i,M},m_{\ell,M}\rangle|
      \le C_{\rm led}\bigl(\Theta_{I,q;p(q),M,\ell}+e_I(q)\bigr)
  \]
  for \(\ell\ne p(q)\).  These are generated obligations and there is no other
  numerical pad or source term.

  For a committed candidate \(q_t\) at prefix \(I_t\), write
  \(p_t=p(q_t)\), \(e_t=e_{I_t}(q_t)\), \(D_t=D_{I_t}\), and
  \(\eta_t=\eta_{I_t,q_t}\).  Define the diagonal-aware charge
  \[
    \widetilde\Upsilon^M_{t;j,\ell}
      =(1+\eta_t)(J_M(p_t,\ell)+z_{q_t,M,\ell})
       \prod_{N\ne M}(H_N(p_t,j)+z_{q_t,N,j})
       -J_M(p_t,\ell)\prod_{N\ne M}H_N(p_t,j), \tag{capture-charge-row}
  \]
  for unresolved \(j\), \(\ell\ne j\), and zero otherwise.  The proof keeps
  structural terms and charges numerical terms by
  \[
    e_tD_t^2\le P^{-D_{\rm stat}}\Delta F_{I_t}(q_t),\qquad
    \sum_{t\le s}\Delta F_{I_t}(q_t)\le\tfrac12\|T\|_F^2. \tag{capture-telescope}
  \]
  With \(\chi_t=e_tD_t^2/\|T\|_F^2\) for \(T\ne0\), the generated finite-prefix
  ledger is required to satisfy
  \[
    \sum_{t\le s}\sum_{j,\ell,M}|\widetilde\Upsilon^M_{t;j,\ell}|
      \le C_J\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
          +C_J\sum_{t\le s}\chi_t,\qquad
    \sum_{t\le s}\chi_t\le P^{-D_{\rm stat}}. \tag{raw-ledger}
  \]
  Failed probes contribute zero by exact rollback.

  **Terminal chart and transaction protocol.** A passing candidate is balanced,
  frozen, and the residual is updated; discovery stops after \(r\) commits or
  when \(R_I=0\).  Unused slots are jointly zeroed and joint balanced,
  full-space Armijo descent on \(F\) is then run.  Let \(Q^\star\) be the
  padded exact target and \({\cal Z}_\star\) its finite slot-permutation and
  product-one-sign orbit.  For \(\varrho>0\), define
  \[
    {\cal C}_{\rm PL}(\varrho)=
    \{Q:\operatorname{dist}(Q,{\cal Z}_\star)\le\varrho,\ 
      \max_{i,M}\|q_i^M\|_2\le2R_{\max},\
      q_i=0\text{ for unused }i\}.
  \]
  Chart entry, first-exit invariance, and
  \(\|\operatorname{grad}_{\rm bal}F(Q)\|_F^2\ge2\mu_{\rm PL}F(Q)\)
  are generated conclusions.  The terminal endpoint has no additive error
  floor.  The whole protocol is target-blind and full-space: it uses only
  \(T\), current residuals and factors, contractions, derivatives, inner
  products, and the pair tape; it uses no protected projection, source-label
  query, whitening, simultaneous diagonalization, or non-iterative recovery.

- Technical assumptions:
  - assump:base-column-conditioning (Polynomial base-column scales): Every
    deterministic source column is nonzero,
    \(\kappa^{-1}\le\|\bar a_j\|_2,\|\bar b_j\|_2,\|\bar c_j\|_2\le\kappa\);
    the three deterministic matrices have nonzero singular values in
    \([\kappa^{-1},\kappa]\); and \(1\le\kappa\le r^{c_0}\).
  - assump:base-product-balance (Balanced product weights):
    \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\) for a fixed
    \(\Gamma_\star\ge1\).
  - assump:two-mode-orthogonality (Two-mode-orthogonal source child):
    \(G_{\bar A}=I_r\) and \(G_{\bar B}=I_r\) for normalized deterministic
    columns.
  - assump:c-mode-gram-margin (Third-mode near-orthogonality):
    \(\|G_{\bar C}-I_r\|_{\rm op}\le(C_\nu r\log(2r))^{-1}\).
  - assump:gaussian-smoothing (Independent Gaussian source perturbations):
    all \(\xi_{j,M}\) are mutually independent and distributed as
    \({\cal N}(0,\rho^2I_n/n)\).
  - assump:dimension-regime (Ambient dimension):
    \(n\ge C_{\rm dim}r\log(2r)\) for a fixed sufficiently large
    \(C_{\rm dim}\).
  - assump:smoothing-scale (Inverse-polynomial smoothing):
    \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\).
  - assump:smoothing-bridge (Static smoothing bridge):
    \(C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
      \le(4C_\nu r\log(2r))^{-1}\).
  - assump:rank-regime (Strictly subquadratic overparameterization):
    \(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\), and for \(r\ge r_0\),
    \(r<k<r^2\).
  - assump:random-tape (Independent cyclic-power tape): Conditional on the
    realized instance, the \(N_{\rm pow}\) pairs
    \((v_0,w_0)\) are independent Haar draws from
    \(\mathbb S^{n-1}\times\mathbb S^{n-1}\), independent of smoothing,
    where
    \(N_{\rm pow}=\lceil C_{\rm tape}r^{C_{\rm pow}+2}\log(2r)\rceil\).
    The deterministic scratch direction and all Armijo trial choices are
    target-blind; protocol constants \(C_{\rm pow},C_{\rm tape},C_L,
    d_{\rm pow},D_{\rm pow}\) are fixed.
  - assump:accuracy-range (Relative accuracy):
    \(0<\epsilon<1\); if \(T=0\), the exact-zero early return is used.

# Formalized Goal

- Goal statement:
  In target-spec mode, for every deterministic source satisfying the eleven
  technical assumptions, prove an instance event \({\cal E}_{\rm inst}\) with
  \(\mathbb P_{\rm inst}({\cal E}_{\rm inst})\ge1-r^{-10}\) on which all realized
  columns are nonzero,
  \((2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa\),
  \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\),
  \(\nu_{\rm real}\le2\nu_\star\), the pair and triple Gram matrices have
  fixed conditioning reserves
  \[
    \max_{M\ne N}\|G_M\circ G_N-I_r\|_{\rm op}\le1/16,\qquad
    \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le1/16,
  \]
  \(\sqrt{15/16}\|\tau\|_2\le\|T\|_F\le\sqrt{17/16}\|\tau\|_2\), and the
  exact padded balanced target exists; (R-src) and (two-mode) also hold.
  If \(T=0\), the exact-zero return is required.

  Conditional on a nonzero \(T\) and \({\cal E}_{\rm inst}\), prove the four
  blocks (S)--(C)--(T)--(P): (S) derives the smoothing and two-mode
  contractions; (C) proves the cyclic residual-gradient recurrence, its
  \(\gamma_{\rm pow}\) power gap, and the polynomial-mass tape event uniformly
  over all prefixes; (T) proves that every candidate passing the observable
  certificate receives one proof-generated unresolved assignment and exports
  (Raw-J-rel) through the candidate-relative resolvent, the honest two-label
  audit, and the capture ledger; and (P) proves, with conditional tape
  probability at least \(1-r^{-10}\), recovery of all unresolved labels, entry
  into the same-target balanced PL chart, and terminal full-space Armijo
  iterates \(Q\) satisfying
  \[
    \|T-\Psi(Q)\|_F\le\epsilon\|T\|_F,\qquad 0<\epsilon<1.
  \]
  Discovery, power cycles, certificate evaluation, and ledger work are
  polynomial in \(n,r,k,\kappa,\rho^{-1}\) and independent of \(\epsilon\);
  terminal work is polynomial in these parameters and \(\log(1/\epsilon)\),
  with polynomial-cost restart amplification.  Instance and tape probabilities
  are separate, all displayed rates expose \(n,r,k,\kappa,\rho,\Gamma_\star,P\),
  \(\nu_{\rm real}\), \(\epsilon\), and the adaptive \(e_t\), and only fixed
  source, proof, protocol, and Armijo constants are hidden.  The theorem is
  limited to the stated two-mode-orthogonal smoothed subclass; arbitrary bases
  and unbalanced product weights remain outside scope.  In the exact
  \(H_M=0,e_t=0\) specialization, structural and numerical forcing vanish,
  the balanced target is stationary, and the relative-error endpoint holds
  for arbitrary \(0<\epsilon<1\) with no additive floor.

# Note

- Rigor:
  This artifact is bound to idea SHA
  57d7f265b8fae0e606cdaa46cd098fcbf766a37670ced28fc4f5f0d980ba9a18 and
  uses idea-12 setting SHA
  fd944f1dfe5123ca2794d5e39b16a12ff1e4b73dc1306ba6e58fec2e353b64eb as the
  notation and candidate-relative-ledger baseline; the triggering review is
  SHA 59f2675c7dbd300b6563f188fb029bf557c93d5005dcf89f3179367c155d61ef.
  Source alignment: the approved semantic delta is only the cyclic
  residual-gradient power bank and its observable polynomial-mass certificate;
  exact objective, Gaussian smoothing, full-space target-blind dynamics, rank
  \(k=O(r^{3/2}\log^2r)=o(r^2)\), separate probabilities, relative Frobenius
  endpoint, and exact/no-floor baseline are preserved.
  Progress type: material_partial.  Materiality: this is a
  contraction-seeded reachable-landscape/trajectory theorem on the explicit
  two-mode-orthogonal, near-orthogonal-third-mode, balanced-weight subclass.

  Assumption support: assump:base-column-conditioning,
  assump:base-product-balance, assump:c-mode-gram-margin,
  assump:gaussian-smoothing, assump:dimension-regime, and
  assump:smoothing-scale inherit the smoothed CP source regime;
  assump:two-mode-orthogonality is source-compatible and directly checked by
  orthonormal frames; assump:smoothing-bridge is the standard static Gaussian
  transfer condition; assump:rank-regime, assump:random-tape, and
  assump:accuracy-range specify the approved algorithmic protocol.  The cyclic
  power gap, finite Armijo realization, matching, certificate passage,
  candidate-relative resolvent, ledger, chart entry, and convergence are proof
  obligations rather than assumptions.  The novel power mechanism is
  example-verified in the four regimes recorded in idea.md: \(r=1\), equal
  weight orthogonal factors, a near-orthogonal third mode, and the
  large-\(n\) stress family \(n=r^4\).  These examples support feasibility but
  are not hidden theorem assumptions.
