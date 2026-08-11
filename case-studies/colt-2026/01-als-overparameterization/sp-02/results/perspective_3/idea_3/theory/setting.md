# Formalized Setting

- Basic setup:
  - **Smoothed factors and target.** Fix \(\kappa\ge1\), integers \(n,r,k\),
    and a fixed \(q\ge 4\), together with
    deterministic base matrices \(\bar A=[\bar a_1\ \cdots\ \bar a_r]\),
    \(\bar B=[\bar b_1\ \cdots\ \bar b_r]\), and
    \(\bar C=[\bar c_1\ \cdots\ \bar c_r]\) in \(\mathbb R^{n\times r}\).
    Write \(D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2)\) and
    \(M^\circ=MD_M^{-1}\) for \(M\in\{\bar A,\bar B,\bar C\}\). Independently
    over modes and components, draw
    \(\xi^a_j,\xi^b_j,\xi^c_j\sim\mathcal N(0,\rho^2 I_n/n)\), where
    \(\rho=r^{-q}\), and set
    \[
      a_j=\bar a_j+\xi^a_j,\qquad b_j=\bar b_j+\xi^b_j,\qquad
      c_j=\bar c_j+\xi^c_j.
    \]
    Let \(A=[a_1\ \cdots\ a_r]\), \(B=[b_1\ \cdots\ b_r]\), and
    \(C=[c_1\ \cdots\ c_r]\). Define
    \(D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j\), and define the realized target
    \[
      T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j
       =(A\otimes B\otimes C)D_r.
    \]

  - **Rank-(k) CP objective.** For \(X=[x_1\ \cdots\ x_k]\),
    \(Y=[y_1\ \cdots\ y_k]\), and \(Z=[z_1\ \cdots\ z_k]\) in
    \(\mathbb R^{n\times k}\), define
    \[
      S(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
      F(X,Y,Z)=\|T-S(X,Y,Z)\|_F^2.
    \]
    With the fixed matricization convention, put
    \(U^x=Z\odot Y\), \(U^y=Z\odot X\), and \(U^z=Y\odot X\), with the
    \(i\)-th columns ordered as \(z_i\otimes y_i\), \(z_i\otimes x_i\),
    and \(y_i\otimes x_i\), respectively.

  - **Product-preserving balancing and simultaneous GD.** For a raw triple
    \((\widetilde x,\widetilde y,\widetilde z)\) whose three norms are positive,
    set \(g=(\|\widetilde x\|_2\|\widetilde y\|_2\|\widetilde z\|_2)^{1/3}\) and
    map it to
    \[
      \left(g\frac{\widetilde x}{\|\widetilde x\|_2},
      g\frac{\widetilde y}{\|\widetilde y\|_2},
      g\frac{\widetilde z}{\|\widetilde z\|_2}\right).
    \]
    If a factor is exactly zero, leave the raw triple unchanged. Apply this
    map columnwise and denote it by \(\mathcal G\); it preserves every represented
    rank-one tensor. Draw \(X^{\rm raw}_0,Y^{\rm raw}_0,Z^{\rm raw}_0\) with iid
    \(\mathcal N(0,1/n)\) entries, independently of the smoothing, and set
    \(\theta_0=(X_0,Y_0,Z_0)=\mathcal G(X^{\rm raw}_0,Y^{\rm raw}_0,Z^{\rm raw}_0)\).
    For \(\theta_t=(X_t,Y_t,Z_t)\), perform simultaneous full-batch updates
    \[
      \begin{aligned}
      \widetilde X_{t+1}&=X_t-\eta\nabla_XF(\theta_t),\\
      \widetilde Y_{t+1}&=Y_t-\eta\nabla_YF(\theta_t),\\
      \widetilde Z_{t+1}&=Z_t-\eta\nabla_ZF(\theta_t),\\
      \theta_{t+1}&=\mathcal G(\widetilde X_{t+1},\widetilde Y_{t+1},\widetilde Z_{t+1}),
      \end{aligned}
      \qquad \eta=(nkr)^{-12},
    \]
    where \(\nabla_XF=2[X(U^x)^{\mathsf T}U^x-T_{(1)}U^x]\), with analogous
    formulas for \(Y,Z\). There is no projection, clipping, weight decay,
    sparsification, restart, or early stopping.

  - **Coefficient coordinates and the target-facing tangent space.** On the
    full-column-rank event for \(A,B,C\), let
    \[
      \alpha_{i,t}=A^\dagger x_{i,t},\qquad
      \beta_{i,t}=B^\dagger y_{i,t},\qquad
      \gamma_{i,t}=C^\dagger z_{i,t},
    \]
    and define the normalized initial coordinates
    \[
      \bar\alpha_{i,0}=\sqrt{n/r}\,\alpha_{i,0},\qquad
      \bar\beta_{i,0}=\sqrt{n/r}\,\beta_{i,0},\qquad
      \bar\gamma_{i,0}=\sqrt{n/r}\,\gamma_{i,0}.
    \]
    Let \(\widehat D_0=\sum_{i=1}^k\alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0}\),
    \(\delta_0=1/8\), and
    \[
      \begin{aligned}
      \mathscr S^{\rm raw}_0
      &=\operatorname{span}\{u\otimes\beta_{i,0}\otimes\gamma_{i,0},\;
          \alpha_{i,0}\otimes v\otimes\gamma_{i,0},\;
          \alpha_{i,0}\otimes\beta_{i,0}\otimes w:\ u,v,w\in\mathbb R^r,\ i\in[k]\},\\
      \mathscr S^{\rm norm}_0
      &=\operatorname{span}\{u\otimes\bar\beta_{i,0}\otimes\bar\gamma_{i,0},\;
          \bar\alpha_{i,0}\otimes v\otimes\bar\gamma_{i,0},\;
          \bar\alpha_{i,0}\otimes\bar\beta_{i,0}\otimes w:\ u,v,w\in\mathbb R^r,\ i\in[k]\}.
      \end{aligned}
    \]
    Since each normalized pair differs from its raw pair by a nonzero scalar,
    \(\mathscr S_0:=\mathscr S^{\rm raw}_0=\mathscr S^{\rm norm}_0\). The
    tangent-deficit certificate below is therefore generated using normalized
    Gram geometry while remaining a raw-coordinate statement against the exact
    target \(D_r\); normalization is not applied to \(D_r\), \(\widehat D_0\),
    or the physical residual metric.

  - **Generated initialization events.** Define the realized-factor conditioning
    event
    \[
      \mathcal E_{\rm cond}=\left\{
      \|M\|_{\rm op}\le 2\kappa^2,\quad
      \sigma_{\min}(M)\ge(2\kappa^2)^{-1}\quad
      \text{for }M\in\{A,B,C\}\right\}.
    \]
    For the normalized Khatri--Rao matrices
    \[
      \bar K^{\bar\beta\bar\gamma}_0=[\bar\beta_{1,0}\otimes\bar\gamma_{1,0}\ \cdots\ \bar\beta_{k,0}\otimes\bar\gamma_{k,0}],
    \]
    and analogously \(\bar K^{\bar\alpha\bar\gamma}_0\) and
    \(\bar K^{\bar\alpha\bar\beta}_0\), let \(\mathcal E_{\rm gram}^{\rm norm}\)
    be the event that every eigenvalue of each \(\bar K^{\mathsf T}\bar K\) lies in
    \([r^{-20},r^{20}]\). If \(K^{\beta\gamma}_0\) denotes the corresponding
    raw matrix, define
    \(G^{\beta\gamma}_{\rm norm}=(\bar K^{\bar\beta\bar\gamma}_0)^{\mathsf T}
      \bar K^{\bar\beta\bar\gamma}_0\) and
    \(G^{\beta\gamma}_{\rm raw}=(K^{\beta\gamma}_0)^{\mathsf T}K^{\beta\gamma}_0\).
    Then exactly
    \[
      K^{\beta\gamma}_0=(r/n)\bar K^{\bar\beta\bar\gamma}_0,
      \qquad G^{\beta\gamma}_{\rm raw}=(r/n)^2G^{\beta\gamma}_{\rm norm},
    \]
    and the same definitions and identity hold for the other two mode pairs.
    Thus the exact
    raw-coordinate equivalent of the normalized window is
    \((r/n)^2[r^{-20},r^{20}]\), with no fixed raw threshold.
    Define the generated normalized tangent-deficit event
    \[
      \mathcal E_{\rm deficit}=\left\{\exists W_0:\ \|W_0\|_F=1,\quad
      W_0\perp\mathscr S_0,\quad
      \langle D_r-\widehat D_0,W_0\rangle\ge\delta_0\|D_r\|_F\right\},
    \]
    and the generated initial-size event
    \[
      \mathcal E_{\rm size}=\left\{\max_{i\in[k],\,m\in\{x,y,z\}}
      \|m_{i,0}\|_2\le2\right\}.
    \]
    The combined event is
    \(\mathcal E_{\rm init\_norm}=\mathcal E_{\rm cond}\cap
      \mathcal E_{\rm gram}^{\rm norm}\cap\mathcal E_{\rm deficit}\cap
      \mathcal E_{\rm size}\). These are generated events, not primitive
    assumptions. In particular, Gaussian norm concentration must produce
    \(\mathbb P(\mathcal E_{\rm size})\ge1-r^{-20}\) under the declared
    dimension regime.

  - **Coefficient map, path certificate, and exact physical bridge.** Define
    \[
      \Phi(\mathsf A,\mathsf B,\mathsf C)=\sum_{i=1}^k
      \alpha_i\otimes\beta_i\otimes\gamma_i,qquad
      \Psi_{A,B,C}(X,Y,Z)=\Phi(A^\dagger X,B^\dagger Y,C^\dagger Z).
    \]
    For balanced representatives, set
    \[
      d_{\rm bal}(\theta,\theta')=
      \bigl(\|X-X'\|_F^2+\|Y-Y'\|_F^2+\|Z-Z'\|_F^2\bigr)^{1/2},
      \qquad E_{\rm path}=\sum_{t\ge0}d_{\rm bal}(\theta_{t+1},\theta_t).
    \]
    Put \(\kappa_1=2\kappa^2\),
    \(C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R)\), and
    \[
      E_\star=\min\left\{1,\sqrt{\frac{\delta_0}{16C_{\rm CP}(\kappa,3)}}\right\}.
    \]
    The sole trajectory certificate is
    \(\mathcal C_{\rm path}=\{E_{\rm path}\le E_\star\}\); it contains no
    Gram, positivity, norm, convergence, trapping, or positive-loss clause.
    On \(\mathcal E_{\rm size}\cap\mathcal C_{\rm path}\), the derived bound
    \(\|m_{i,t}\|_2\le 2+E_{\rm path}\le3\) holds for every \(i,t,m\).
    The deterministic proof must establish the multilinear remainder interface
    \[
      \|\Psi(\theta')-\Psi(\theta)-D\Psi(\theta)[\theta'-\theta]\|_F
      \le C_{\rm CP}(\kappa,R)d_{\rm bal}(\theta',\theta)^2
    \]
    whenever the displayed column-norm and unit-step conditions hold; this is a
    proof obligation, not an additional assumption. Finally, with
    \(P_A=AA^\dagger\), \(P_B=BB^\dagger\), and \(P_C=CC^\dagger\), the exact
    same-target identity
    \[
      (P_A\otimes P_B\otimes P_C)(T-S(\theta))
      =(A\otimes B\otimes C)\bigl(D_r-\Psi_{A,B,C}(\theta)\bigr)
    \]
    supplies the coefficient-to-physical residual bridge.

  - **Probability space.** All probabilities below are under the joint law of
    the Gaussian smoothing and the independent Gaussian initialization,
    conditional on the deterministic base triple.

- Technical assumptions:
  - `assump:base_conditioning` (Well-conditioned deterministic bases): every
    base column is nonzero with \(\kappa^{-1}\le\|m_j\|_2\le\kappa\), and each
    column-normalized base matrix has singular values in
    \([\kappa^{-1},\kappa]\), for \(M\in\{\bar A,\bar B,\bar C\}\).
  - `assump:dimension` (Smoothed dimension regime): \(q\ge4\) is fixed,
    \(r\) is sufficiently large for the stated asymptotic theorem, and
    \(n\ge C(\kappa,q)r^4\log r\), with no upper restriction on \(n\).
  - `assump:rank_window` (Universal superlinear rank window):
    \(c=1/4\) and \(r<k\le\lfloor r^{5/4}\rfloor\).
  - `assump:gaussian_smoothing` (Independent Gaussian smoothing): all
    \(\xi^a_j,\xi^b_j,\xi^c_j\) are mutually independent
    \(\mathcal N(0,r^{-2q}I_n/n)\), and are independent of initialization.
  - `assump:independent_initialization` (Gaussian initialization): all entries
    of \(X^{\rm raw}_0,Y^{\rm raw}_0,Z^{\rm raw}_0\) are iid
    \(\mathcal N(0,1/n)\) before balancing.
  - `assump:gd_step` (Fixed balanced GD protocol): the simultaneous full-batch
    update, step size \(\eta=(nkr)^{-12}\), and product-preserving map
    \(\mathcal G\) are exactly those specified above, with no additional
    optimization operation.

# Formalized Goal

- Goal statement: There exist \(r_0(\kappa,q)\), \(C(\kappa,q)\), and
  \(\epsilon_0(\kappa)>0\) such that, uniformly over every \(r\ge r_0\),
  every \(n\ge C(\kappa,q)r^4\log r\), every
  \(r<k\le\lfloor r^{5/4}\rfloor\), and every deterministic base triple
  satisfying `assump:base_conditioning`,
  \[
    \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
  \]
  On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the balanced
  GD iterates converge in \(d_{\rm bal}\) to a finite limit
  \(\theta_\infty\) and satisfy
  \[
    \lim_{t\to\infty}F(\theta_t)\ge
    \epsilon_0(\kappa)\|T\|_F^2>0.
  \]
  If \(\mathcal F_+\) denotes this convergence-and-positive-limit event, then
  \[
    \mathbb P(\mathcal F_+)
    \ge \mathbb P(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path})
    =\mathbb P(\mathcal E_{\rm init\_norm})
      \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})
    \ge (1-r^{-10})\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
  \]
  No uniform positive lower bound for the final conditional probability is
  claimed. The explicit remaining certificate-probability gap is to prove a
  constant lower bound for
  \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\), uniformly
  over the allowed \(n,r,k\) and deterministic base triples for fixed
  \(\kappa,q\).

# Note

- Rigor: Source alignment preserves the third-order CP least-squares objective,
  Gaussian smoothing with \(\rho=r^{-q}\), independent Gaussian initialization,
  balanced simultaneous full-batch GD, the universal rank window with
  \(c=1/4\), and the positive-limit conclusion. Progress type: `conditional`.
  Materiality: the branch gives the source-relevant superlinear failure
  conclusion on the explicit finite-path certificate while isolating the sole
  unresolved factor \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\).
  The normalized Gram repair is certificate-only and preserves the exact raw
  target, tangent residual, and physical loss metric; its raw window is exactly
  \((r/n)^2[r^{-20},r^{20}]\). The six primitive assumptions are supported by
  the source smoothed-analysis model and the selected well-conditioned-base
  interpretation: `assump:base_conditioning` by the source prose, 
  `assump:dimension` and `assump:rank_window` by the declared regime,
  `assump:gaussian_smoothing` by the perturbation law,
  `assump:independent_initialization` by the initialization protocol, and
  `assump:gd_step` by the explicitly specified algorithm. The conditioning,
  normalized-Gram, tangent-deficit, and initial-size events are generated
  proof obligations; the path certificate is explicitly conditional. No
  positive loss, convergence, trapping invariant, or all-time norm bound is
  promoted to a primitive assumption.
