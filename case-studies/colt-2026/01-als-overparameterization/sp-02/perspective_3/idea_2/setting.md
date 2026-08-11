# Formalized Setting

- Basic setup:
  - **Dimensions, bases, and smoothed tensor.** Fix integers \(n,r,k\), a conditioning parameter \(\kappa\ge 1\), and a fixed exponent \(q\ge 4\). Let
    \(\bar A=[\bar a_1\ \cdots\ \bar a_r]\), \(\bar B=[\bar b_1\ \cdots\ \bar b_r]\), and
    \(\bar C=[\bar c_1\ \cdots\ \bar c_r]\) be deterministic matrices in
    \(\mathbb R^{n\times r}\). For \(M\in\{\bar A,\bar B,\bar C\}\), write
    \(D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2)\) and
    \(M^\circ=MD_M^{-1}\). The selected well-conditioned-base interpretation is that
    every column is nonzero, \(\kappa^{-1}\le \|m_j\|_2\le\kappa\), and
    \(\kappa^{-1}\le\sigma_{\min}(M^\circ)\le\sigma_{\max}(M^\circ)\le\kappa\).
    Independently for every mode and component, draw
    \(\xi^a_j,\xi^b_j,\xi^c_j\sim\mathcal N(0,\rho^2 I_n/n)\), where
    \(\rho=r^{-q}\), and set \(a_j=\bar a_j+\xi^a_j\), \(b_j=\bar b_j+\xi^b_j\), and
    \(c_j=\bar c_j+\xi^c_j\). Let \(A=[a_1\ \cdots\ a_r]\), \(B=[b_1\ \cdots\ b_r]\), and
    \(C=[c_1\ \cdots\ c_r]\), and define the once-drawn target
    \[
      T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n}.
    \]
    The arbitrary-base interpretation in which these conditioning bounds are absent is a residual gap, not part of this branch.
  - **Rank-\(k\) CP objective and notation.** Write \([k]=\{1,\ldots,k\}\). For
    \(X=[x_1\ \cdots\ x_k]\), \(Y=[y_1\ \cdots\ y_k]\), and
    \(Z=[z_1\ \cdots\ z_k]\) in \(\mathbb R^{n\times k}\), put
    \[
      S(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
      F(X,Y,Z)=\|T-S(X,Y,Z)\|_F^2.
    \]
    \(T_{(m)}\) denotes the mode-\(m\) matricization, with the fixed convention
    \(U^x=Z\odot Y\), \(U^y=Z\odot X\), and \(U^z=Y\odot X\), where the \(i\)-th
    Khatri--Rao column is ordered as \(z_i\otimes y_i\), \(z_i\otimes x_i\), or
    \(y_i\otimes x_i\), respectively.
  - **Balanced full-batch gradient descent.** For a raw component
    \((\widetilde x,\widetilde y,\widetilde z)\), if all three norms are positive, let
    \(g=(\|\widetilde x\|_2\|\widetilde y\|_2\|\widetilde z\|_2)^{1/3}\) and replace it by
    \((g\widetilde x/\|\widetilde x\|_2,\ g\widetilde y/\|\widetilde y\|_2,
    g\widetilde z/\|\widetilde z\|_2)\). If a raw component has an exact zero factor,
    leave that raw triple unchanged. Apply this product-preserving map columnwise and
    call it \(\mathcal G\). It is the only retraction; there is no projection, clipping,
    weight decay, sparsification, restart, or early stopping.

    Draw a raw initialization \(X^{\rm raw}_0,Y^{\rm raw}_0,Z^{\rm raw}_0\) with all
    entries iid \(\mathcal N(0,1/n)\), independently of the smoothing, and set
    \((X_0,Y_0,Z_0)=\mathcal G(X^{\rm raw}_0,Y^{\rm raw}_0,Z^{\rm raw}_0)\). For
    \(\theta_t=(X_t,Y_t,Z_t)\), define
    \[
      \begin{aligned}
      \widetilde X_{t+1}&=X_t-\eta\nabla_XF(\theta_t),\\
      \widetilde Y_{t+1}&=Y_t-\eta\nabla_YF(\theta_t),\\
      \widetilde Z_{t+1}&=Z_t-\eta\nabla_ZF(\theta_t),\\
      \theta_{t+1}&=\mathcal G(\widetilde X_{t+1},\widetilde Y_{t+1},\widetilde Z_{t+1}),
      \end{aligned}
    \]
    with \(\eta=(nkr)^{-12}\) and
    \[
      \nabla_XF=2\bigl[X(U^x)^{\mathsf T}U^x-T_{(1)}U^x\bigr],
    \]
    together with the analogous formulas for \(Y\) and \(Z\). All three modes are
    updated from the same old iterate at every step.
  - **Coefficient coordinates and initial tangent certificate.** On the full-column-rank
    event for \(A,B,C\), use their Moore--Penrose left inverses and write
    \(\alpha_{i,t}=A^\dagger x_{i,t}\), \(\beta_{i,t}=B^\dagger y_{i,t}\), and
    \(\gamma_{i,t}=C^\dagger z_{i,t}\). Let
    \[
      D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j,\qquad
      \widehat D_0=\sum_{i=1}^k\alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0},
    \]
    and define the initial coefficient tangent span
    \[
      \mathscr S_0=\operatorname{span}\left(\{
      u\otimes\beta_{i,0}\otimes\gamma_{i,0},\;
      \alpha_{i,0}\otimes v\otimes\gamma_{i,0},\;
      \alpha_{i,0}\otimes\beta_{i,0}\otimes w:
      u,v,w\in\mathbb R^r,\ i\in[k]\}\right).
    \]
    Put \(\delta_0=1/8\). Let \(\mathcal E_{\rm cond}\) be the event that \(A,B,C\)
    have full column rank and
    \(\|M\|_{\rm op}\le 2\kappa^2\), \(\sigma_{\min}(M)\ge(2\kappa^2)^{-1}\) for
    \(M\in\{A,B,C\}\). Let \(\mathcal E_{\rm gram}\) be the event that, for
    \(K^{\beta\gamma}_0=[\beta_{1,0}\otimes\gamma_{1,0}\ \cdots\ \beta_{k,0}\otimes\gamma_{k,0}]\),
    \(K^{\alpha\gamma}_0=[\alpha_{1,0}\otimes\gamma_{1,0}\ \cdots\
    \alpha_{k,0}\otimes\gamma_{k,0}]\), and
    \(K^{\alpha\beta}_0=[\alpha_{1,0}\otimes\beta_{1,0}\ \cdots\
    \alpha_{k,0}\otimes\beta_{k,0}]\), every eigenvalue of each
    Gram matrix \(K^{\mathsf T}K\) lies in \([r^{-20},r^{20}]\). Let
    \(\mathcal E_{\rm deficit}\) be the event that there is a
    unit-Frobenius \(W_0\perp\mathscr S_0\) such that
    \[
      \langle D_r-\widehat D_0,W_0\rangle\ge\delta_0\|D_r\|_F.
    \]
    Define the generated initial certificate by
    \(\mathcal E_{\rm init}=\mathcal E_{\rm cond}\cap\mathcal E_{\rm gram}
    \cap\mathcal E_{\rm deficit}\). It is to be proved from the random law, not
    imposed as a primitive assumption.
  - **Path certificate and quadratic remainder constant.** For
    \(\mathsf A=[\alpha_1\ \cdots\ \alpha_k]\), \(\mathsf B=[\beta_1\ \cdots\ \beta_k]\),
    and \(\mathsf C=[\gamma_1\ \cdots\ \gamma_k]\), define the coefficient CP map
    \(\Phi(\mathsf A,\mathsf B,\mathsf C)=\sum_i\alpha_i\otimes\beta_i\otimes\gamma_i\) and
    \(\Psi_{A,B,C}(X,Y,Z)=\Phi(A^\dagger X,B^\dagger Y,C^\dagger Z)\). For balanced
    representatives set
    \[
      d_{\rm bal}(\theta,\theta')=
      \bigl(\|X-X'\|_F^2+\|Y-Y'\|_F^2+\|Z-Z'\|_F^2\bigr)^{1/2},\qquad
      E_{\rm path}=\sum_{t=0}^{\infty}d_{\rm bal}(\theta_{t+1},\theta_t).
    \]
    On the conditioning event above, put \(\kappa_1=2\kappa^2\) and use the explicit
    multilinear remainder bound
    \(C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R)\): for balanced states with
    all column norms at most \(R\) and \(d_{\rm bal}(\theta,\theta')\le1\),
    \[
      \|\Psi_{A,B,C}(\theta')-\Psi_{A,B,C}(\theta)
       -D\Psi_{A,B,C}(\theta)[\theta'-\theta]\|_F
      \le C_{\rm CP}(\kappa,R)d_{\rm bal}(\theta,\theta')^2.
    \]
    Set \(R=r^4\) and
    \(E_\star=\min\{1,\sqrt{\delta_0/(16C_{\rm CP}(\kappa,R))}\}\). The separately
    named path-certificate event is
    \[
      \mathcal C_{\rm path}=\mathcal E_{\rm gram}\cap
      \left\{\begin{array}{l}
      \text{every raw component at every update has three positive norms,}\\
      \max_{t\ge0,\,i\le k,\,m\in\{x,y,z\}}\|m_{i,t}\|_2\le R,\\
      E_{\rm path}\le E_\star
      \end{array}\right\}.
    \]
    It contains no residual lower bound, positive-loss claim, convergence assertion,
    bad-basin membership, or trapping invariant; its probability under the joint law
    is the explicit unresolved interface.
    Throughout, \(\mathbb P\) denotes the joint law of the Gaussian smoothing and the
    independent raw Gaussian initialization, conditional on the deterministic base triple.

- Technical assumptions:
  - assump:base_conditioning (Well-conditioned deterministic bases): the deterministic
    bases obey the nonzero-column, column-scale, and normalized-singular-value bounds in
    Basic setup, uniformly over the selected base class.
  - assump:dimension (Smoothed dimension regime): \(q\ge4\) is fixed, \(r\) is above the
    threshold used in the goal, and \(n\ge C(\kappa,q)r^4\log r\).
  - assump:rank_window (Universal superlinear rank window): \(c=1/4\) and
    \(r<k\le\lfloor r^{5/4}\rfloor\).
  - assump:gaussian_smoothing (Independent Gaussian smoothing): all \(3r\) perturbation
    vectors are mutually independent \(\mathcal N(0,\rho^2I_n/n)\) with \(\rho=r^{-q}\),
    and are independent of the initialization.
  - assump:independent_initialization (Gaussian initialization): all entries of the raw
    \(X^{\rm raw}_0,Y^{\rm raw}_0,Z^{\rm raw}_0\) are iid \(\mathcal N(0,1/n)\), before
    applying the stated balance map.
  - assump:gd_step (Fixed balanced GD protocol): the update is simultaneous full-batch
    gradient descent with the stated product-preserving retraction and the fixed step
    \(\eta=(nkr)^{-12}\), with no additional optimization operation.

# Formalized Goal

- Goal statement: For constants \(r_0(\kappa,q)\), \(\epsilon_0(\kappa)>0\), and a
  choice of \(C(\kappa,q)\), prove uniformly over every \(r\ge r_0\), every
  \(n\ge C(\kappa,q)r^4\log r\), every \(r<k\le\lfloor r^{5/4}\rfloor\), and every
  deterministic base triple satisfying assump:base_conditioning, that
  \(\mathbb P(\mathcal E_{\rm init})\ge1-r^{-10}\). On
  \(\mathcal E_{\rm init}\cap\mathcal C_{\rm path}\), prove that the balanced factor
  iterates converge in \(d_{\rm bal}\) to a finite limit and that
  \[
    \lim_{t\to\infty}F(X_t,Y_t,Z_t)\ge
    \epsilon_0(\kappa)\|T\|_F^2>0.
  \]
  Consequently, if \(\mathcal F_+\) denotes this positive-limit event, then
  \[
    \mathbb P(\mathcal F_+)\ge
    \mathbb P(\mathcal E_{\rm init}\cap\mathcal C_{\rm path})
    =\mathbb P(\mathcal E_{\rm init})
      \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init})
    \ge(1-r^{-10})\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init}).
  \]
  The branch makes no claim that the last conditional probability is bounded below by
  a positive constant; proving such a uniform bound is the explicit remaining
  distributional gap needed to upgrade this conditional result to the source's
  constant-probability lower bound.

# Note

- Rigor: Source alignment preserves the third-order CP least-squares objective, Gaussian
  smoothing with \(\rho=1/\operatorname{poly}(r)\), independent Gaussian initialization,
  the full rank interval \(r<k\le r^{1+c}\) with \(c=1/4\), and convergence to a strictly
  positive limiting objective for the precisely specified balanced full-batch GD map.
  Progress type: conditional. Materiality: the branch reaches the source-relevant
  positive-limit conclusion on an explicit observable certificate and isolates the sole
  remaining probability interface \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init})\);
  it does not claim the arbitrary-base or unconditional constant-probability theorem.
  Assumption support: assump:base_conditioning is the source prose's well-conditioned-base
  interpretation; assump:dimension and assump:rank_window are the selected \(r^4\log r\)
  and \(c=1/4\) regimes; assump:gaussian_smoothing follows the smoothed-analysis model;
  assump:independent_initialization follows the random-initialization protocol; and
  assump:gd_step fixes the stated simultaneous GD convention. The initial dual-deficit,
  Khatri--Rao Gram, norm, and path-energy conditions are generated/proof-obligation
  events, with concrete checks in coordinate-orthogonal, independent-Haar, and normalized
  iid-Gaussian factor regimes. No positive loss, convergence, trap, or residual barrier is
  promoted to a primitive assumption.
