# Formalized Setting

- Basic setup:
  - **Dimensions and deterministic base class.** Fix constants \(\kappa\ge 1\) and \(q>0\). Let \(r,n,k\) be positive integers. For each mode, write the deterministic base matrix as \(\bar A=[\bar a_1,\ldots,\bar a_r]\in\mathbb R^{n\times r}\), and similarly define \(\bar B\) and \(\bar C\). For \(\bar M\in\{\bar A,\bar B,\bar C\}\), let \(D_{\bar M}=\operatorname{diag}(\|\bar m_1\|_2,\ldots,\|\bar m_r\|_2)\) and \(\widetilde M=\bar M D_{\bar M}^{-1}\). The theorem is uniform over the well-conditioned deterministic base triples specified in assump:base_conditioning; it does not quantify over arbitrary degenerate bases.
  - **Gaussian-smoothed tensor.** Set \(\rho=r^{-q}\). Independently over \(j\in[r]\) and the three modes, draw
    \[
    \xi_j^a,\xi_j^b,\xi_j^c\sim\mathcal N\!\left(0,\frac{\rho^2}{n}I_n\right),
    \]
    and define \(a_j=\bar a_j+\xi_j^a\), \(b_j=\bar b_j+\xi_j^b\), and \(c_j=\bar c_j+\xi_j^c\). The target tensor is
    \[
    T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n}.
    \]
  - **Rank-\(k\) representation and loss.** For factors \(X=[x_1,\ldots,x_k]\), \(Y=[y_1,\ldots,y_k]\), and \(Z=[z_1,\ldots,z_k]\) in \(\mathbb R^{n\times k}\), define
    \[
    \widehat T(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,
    \qquad
    \mathcal L(X,Y,Z)=\|T-\widehat T(X,Y,Z)\|_F^2.
    \]
    Fix one componentwise Khatri--Rao ordering. At iterate \((X_t,Y_t,Z_t)\), put
    \[
    U_t^x=Z_t\odot Y_t,\qquad U_t^y=Z_t\odot X_t,\qquad U_t^z=Y_t\odot X_t,
    \]
    and let \(T_{(1)},T_{(2)},T_{(3)}\) be the corresponding matricizations of \(T\).
  - **Relaxed parallel Jacobi ALS protocol.** All three least-squares candidates are computed from the same old iterate:
    \[
    \begin{aligned}
    X_{t+1}^{\rm ls}&=T_{(1)}U_t^x\big((U_t^x)^{\mathsf T}U_t^x\big)^\dagger,\\
    Y_{t+1}^{\rm ls}&=T_{(2)}U_t^y\big((U_t^y)^{\mathsf T}U_t^y\big)^\dagger,\\
    Z_{t+1}^{\rm ls}&=T_{(3)}U_t^z\big((U_t^z)^{\mathsf T}U_t^z\big)^\dagger.
    \end{aligned}
    \]
    The Moore--Penrose pseudoinverse fixes the minimum-Frobenius-norm least-squares candidate. With the fixed relaxation \(\eta=1/2\), form
    \[
    X_{t+1}^{\rm raw}=\tfrac12X_t+\tfrac12X_{t+1}^{\rm ls},\quad
    Y_{t+1}^{\rm raw}=\tfrac12Y_t+\tfrac12Y_{t+1}^{\rm ls},\quad
    Z_{t+1}^{\rm raw}=\tfrac12Z_t+\tfrac12Z_{t+1}^{\rm ls}.
    \]
    This fixed relaxed Jacobi map, rather than sequential Gauss--Seidel ALS or unrelaxed simultaneous ALS, is the only algorithm covered. The run is infinite, with no restart or early stopping.
  - **Product-preserving gauge.** After every relaxed sweep, apply the following deterministic map componentwise. If \(u=\|x_i\|_2\), \(v=\|y_i\|_2\), and \(w=\|z_i\|_2\) are positive, set \(g=(uvw)^{1/3}\) and replace \((x_i,y_i,z_i)\) by \((gx_i/u,gy_i/v,gz_i/w)\). The three positive scaling factors have product one, so the represented rank-one tensor is unchanged. If \(uvw=0\), replace that component triple by \((0,0,0)\), which also leaves its represented tensor equal to zero. Denote the gauged relaxed iterate by \((X_{t+1},Y_{t+1},Z_{t+1})\).
  - **Initialization and probability space.** Draw all entries of \(X_0,Y_0,Z_0\) independently from \(\mathcal N(0,1/n)\), independently of all smoothing variables. The initial state is the raw iid draw; the balancing gauge is applied only after each sweep. All event probabilities refer to this joint smoothing-and-initialization law, conditional on the deterministic base triple.
  - **Fixed base-coordinate interface.** Since the admissible base matrices have full column rank, define their least-squares coordinate maps
    \[
    \Lambda_A=(\bar A^{\mathsf T}\bar A)^{-1}\bar A^{\mathsf T},\qquad
    \Lambda_B=(\bar B^{\mathsf T}\bar B)^{-1}\bar B^{\mathsf T},\qquad
    \Lambda_C=(\bar C^{\mathsf T}\bar C)^{-1}\bar C^{\mathsf T}.
    \]
    For each represented component, let
    \[
    \alpha_i^t=\Lambda_Ax_{i,t},\qquad
    \beta_i^t=\Lambda_By_{i,t},\qquad
    \gamma_i^t=\Lambda_Cz_{i,t}.
    \]
    With \(e_1,\ldots,e_r\) the standard basis of \(\mathbb R^r\), define
    \[
    D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j,
    \qquad
    \mathcal S_t=\operatorname{span}\{\alpha_i^t\otimes\beta_i^t\otimes\gamma_i^t:i\in[k]\},
    \qquad
    \Delta_0=\operatorname{dist}_F(D_r,\mathcal S_0).
    \]
    The coordinate image of the smoothed target is \((\Lambda_A\otimes\Lambda_B\otimes\Lambda_C)T=D_r+E_\rho\), which defines the smoothing error \(E_\rho\). Components orthogonal to the three base ranges and the error \(E_\rho\) must be handled in the coefficient-to-ambient proof; no residual lower bound for them is assumed.
  - **Observable trajectory certificate, not a primitive assumption.** Write \(\widehat T_t=\widehat T(X_t,Y_t,Z_t)\) and \(\ell_t=\|\widehat T_{t+1}-\widehat T_t\|_F^2\). For constants \(\delta>0\), \(L>0\), and \(0<\gamma<1\), define the event \(\mathsf C(\delta,L,\gamma)\) by the conjunction
    \[
    \Delta_0\ge\delta,\qquad
    \gamma I_k\preceq (U_t^m)^{\mathsf T}U_t^m\preceq\gamma^{-1}I_k
    \quad\text{for every }t\ge0\text{ and }m\in\{x,y,z\},
    \qquad
    \sum_{t=0}^{\infty}\ell_t\le L.
    \]
    The Gram condition is evaluated at the actual iterate (post-gauge for \(t\ge1\), and at the raw iid state for \(t=0\)). This certificate is observable from the initialization and trajectory. It contains no residual barrier, basin membership, trapping condition, convergence conclusion, or positive-loss conclusion. Both the implication from \(\mathsf C(\delta,L,\gamma)\) to a positive objective floor and a probability lower bound for \(\mathsf C(\delta,L,\gamma)\) remain proof targets.

- Technical assumptions:
  - assump:dimension (Ambient dimension): \(r\) and \(n\) are positive integers, \(r\) is above the asymptotic threshold in the goal, and \(n\ge C_{\rm dim}(\kappa,q)r^4\log r\), where \(C_{\rm dim}(\kappa,q)>0\) is independent of \(r,n,k\) and of the admissible base triple.
  - assump:rank_window (Full superlinear rank window): \(k\) is an integer satisfying \(r<k\le r^{5/4}\); the exponent is the fixed universal choice \(c=1/4\).
  - assump:base_conditioning (Well-conditioned deterministic bases): for every \(\bar M\in\{\bar A,\bar B,\bar C\}\) and \(j\in[r]\), \(\kappa^{-1}\le\|\bar m_j\|_2\le\kappa\), and every singular value of the column-normalized matrix \(\widetilde M\) lies in \([\kappa^{-1},\kappa]\).
  - assump:gaussian_smoothing (Independent Gaussian smoothing): \(q>0\) is fixed, \(\rho=r^{-q}\), and the \(3r\) perturbation vectors have the mutually independent Gaussian law specified in Basic setup.
  - assump:independent_initialization (Independent Gaussian initialization): the \(3nk\) initial factor entries are mutually independent \(\mathcal N(0,1/n)\) variables and are independent of all smoothing variables.

# Formalized Goal

- Goal statement: There exist constants \(r_0(\kappa,q)\in\mathbb N\), \(C_{\rm dim}(\kappa,q)>0\), \(\delta(\kappa,q)>0\), \(L(\kappa,q)>0\), \(\gamma(\kappa,q)\in(0,1)\), and \(\epsilon(\kappa,q)>0\) such that, for every \(r\ge r_0(\kappa,q)\), every \(n\) and \(k\) satisfying assump:dimension and assump:rank_window, and every deterministic base triple satisfying assump:base_conditioning, the relaxed parallel Jacobi ALS trajectory defined above obeys the event inclusion
  \[
  \mathsf C(\delta,L,\gamma)
  \subseteq
  \left\{
  \lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)\ \text{exists and is finite, and}\ 
  \lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)\ge\epsilon\|T\|_F^2
  \right\}
  \]
  under the joint law in assump:gaussian_smoothing and assump:independent_initialization. The inclusion is the conditional theorem target: its proof must derive the positive floor from the initial coefficient deficit, the exact relaxed-ALS normal equations, Gram conditioning, and finite represented-tensor step energy, rather than assuming a residual barrier. A satisfactory proof must in particular establish a noncircular coefficient-space transfer of the target form
  \[
  \inf_{t\ge0}\operatorname{dist}_F(D_r,\mathcal S_t)
  \ge
  \delta-C_1(\kappa,q)\frac{k}{r^2}L-C_2(\kappa,q)\rho,
  \]
  or an equally strong same-target bridge, and then convert its positive large-\(r\) margin to the displayed ambient objective floor while accounting for \(E_\rho\) and all base-range-orthogonal components. No claim that \(\mathbb P[\mathsf C(\delta,L,\gamma)]\) is positive is part of this conditional theorem. The separate residual probability obligation is to prove a constant \(p_0(\kappa,q)>0\), uniform in \(r,n,k\) and the admissible deterministic bases, such that \(\mathbb P[\mathsf C(\delta,L,\gamma)]\ge p_0\); that additional result would upgrade the event inclusion to the source-level constant-probability ALS lower bound.

# Note

- Rigor: Source alignment preserves the third-order CP object, \(\rho=1/\operatorname{poly}(r)\), Gaussian random initialization, the full interval \(r<k\le r^{1+1/4}\), and the positive-limit objective target. It explicitly adopts the source prose's well-conditioned-base interpretation and fixes the relaxed Jacobi protocol with \(\eta=1/2\); arbitrary bases and standard unrelaxed Jacobi ALS remain outside scope. Progress type: conditional. Materiality: the theorem isolates the ALS-specific missing implication from a one-time coefficient deficit plus observable Gram/energy controls to a positive limiting residual, while leaving the uniform constant-probability certificate bound visible as the residual gap. Lineage and support follow Kolda--Bader (2009) for CP matricization, Khatri--Rao, pseudoinverse, and product-gauge conventions, and Arvanitakis--Srinivas--Vijayaraghavan (2025) for the smoothed random-initialized ALS regime and its \(r^2\)-scale feature bottleneck. Assumption support: assump:dimension and assump:rank_window preserve the approved source regime; assump:base_conditioning is the approved well-conditioned-base reading and a standard full-column-rank ALS condition; assump:gaussian_smoothing is the source Gaussian-smoothed factor model; assump:independent_initialization is the approved Gaussian ALS initialization protocol. The fixed relaxation is part of the algorithm definition, supported by the idea's exact scalar stress test \(p_{t+1}=p_t^{-2}\) for unrelaxed simultaneous ALS, not an extra regularity assumption. The trajectory certificate, its coefficient-space transfer, objective convergence, and the positive floor are conditional proof targets, not assump-labeled primitive conditions; the raw certificate inequalities are directly checkable in the approved coordinate-orthonormal, independent-Haar, and normalized-iid-Gaussian examples on their stated conditioning events.
