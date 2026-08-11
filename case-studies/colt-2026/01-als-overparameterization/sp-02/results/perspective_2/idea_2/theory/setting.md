# Formalized Setting

- Basic setup:
  - **Dimensions and deterministic base class.** Fix constants \(\kappa\ge 1\) and \(q>0\). Let \(r,n,k\) be positive integers. For each mode, write the deterministic base matrix as \(\bar A=[\bar a_1,\ldots,\bar a_r]\in\mathbb R^{n\times r}\), and similarly define \(\bar B\) and \(\bar C\). For \(\bar M\in\{\bar A,\bar B,\bar C\}\), let \(D_{\bar M}=\operatorname{diag}(\|\bar m_1\|_2,\ldots,\|\bar m_r\|_2)\) and \(\widetilde M=\bar M D_{\bar M}^{-1}\). The theorem is uniform over the well-conditioned deterministic base triples in assump:base_conditioning; arbitrary or degenerate bases are outside this branch.
  - **Gaussian-smoothed tensor.** Set \(\rho=r^{-q}\). Independently over \(j\in[r]\) and the three modes, draw
    \[
    \xi_j^a,\xi_j^b,\xi_j^c\sim\mathcal N\!\left(0,\frac{\rho^2}{n}I_n\right),
    \]
    and define \(a_j=\bar a_j+\xi_j^a\), \(b_j=\bar b_j+\xi_j^b\), and \(c_j=\bar c_j+\xi_j^c\). The target tensor is
    \[
    T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n}.
    \]
  - **Rank-\(k\) representation and objective.** For factors \(X=[x_1,\ldots,x_k]\), \(Y=[y_1,\ldots,y_k]\), and \(Z=[z_1,\ldots,z_k]\) in \(\mathbb R^{n\times k}\), define
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
  - **Unconstrained half-relaxed parallel Jacobi ALS.** All three old-iterate least-squares candidates are computed simultaneously:
    \[
    \begin{aligned}
    X_{t+1}^{\rm ls}&=T_{(1)}U_t^x\big((U_t^x)^{\mathsf T}U_t^x\big)^\dagger,\\
    Y_{t+1}^{\rm ls}&=T_{(2)}U_t^y\big((U_t^y)^{\mathsf T}U_t^y\big)^\dagger,\\
    Z_{t+1}^{\rm ls}&=T_{(3)}U_t^z\big((U_t^z)^{\mathsf T}U_t^z\big)^\dagger.
    \end{aligned}
    \]
    The Moore--Penrose pseudoinverse fixes the minimum-Frobenius-norm least-squares candidate. With the fixed relaxation \(\eta=1/2\), form
    \[
    X_{t+1}^{\rm raw}=\tfrac12(X_t+X_{t+1}^{\rm ls}),\qquad
    Y_{t+1}^{\rm raw}=\tfrac12(Y_t+Y_{t+1}^{\rm ls}),\qquad
    Z_{t+1}^{\rm raw}=\tfrac12(Z_t+Z_{t+1}^{\rm ls}).
    \]
    There is no fixed-subspace constraint, clipping, regularizer, adaptive preconditioner, restart, or early stopping. Sequential Gauss--Seidel ALS and unrelaxed simultaneous ALS are not covered.
  - **Product-preserving gauge.** After each relaxed sweep, apply the following deterministic map componentwise. If \(u=\|x_i\|_2\), \(v=\|y_i\|_2\), and \(w=\|z_i\|_2\) are positive, let \(g=(uvw)^{1/3}\) and replace \((x_i,y_i,z_i)\) by \((gx_i/u,gy_i/v,gz_i/w)\). The three positive scaling factors have product one and therefore preserve the represented rank-one tensor. If \(uvw=0\), replace the component triple by \((0,0,0)\), which also leaves its represented tensor zero. Denote the resulting iterate by \((X_{t+1},Y_{t+1},Z_{t+1})\).
  - **Initialization and probability space.** Draw all entries of \(X_0,Y_0,Z_0\) independently from \(\mathcal N(0,1/n)\), independently of all smoothing variables. The initial state is this raw iid draw, and the balancing gauge is applied only after a sweep. All event probabilities use the joint smoothing-and-initialization law conditional on the deterministic base triple.
  - **Adaptive coefficient-space interface.** Assump:base_conditioning makes each base matrix full column rank, so define
    \[
    \Lambda_A=(\bar A^{\mathsf T}\bar A)^{-1}\bar A^{\mathsf T},\qquad
    \Lambda_B=(\bar B^{\mathsf T}\bar B)^{-1}\bar B^{\mathsf T},\qquad
    \Lambda_C=(\bar C^{\mathsf T}\bar C)^{-1}\bar C^{\mathsf T},
    \]
    and let \(Q=\Lambda_A\otimes\Lambda_B\otimes\Lambda_C\) denote the induced linear map from ambient tensors to \(\mathbb R^{r\times r\times r}\), equipped with the Frobenius norm. For every component and time, define
    \[
    \alpha_i^t=\Lambda_Ax_{i,t},\qquad
    \beta_i^t=\Lambda_By_{i,t},\qquad
    \gamma_i^t=\Lambda_Cz_{i,t},\qquad
    p_{i,t}=\alpha_i^t\otimes\beta_i^t\otimes\gamma_i^t.
    \]
    With \(e_1,\ldots,e_r\) the standard basis of \(\mathbb R^r\), set
    \[
    D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j,
    \quad \|D_r\|_F=\sqrt r,
    \quad C_t=\sum_{i=1}^k p_{i,t},
    \quad \mathcal S_t=\operatorname{span}\{p_{i,t}:i\in[k]\},
    \quad P_t=\operatorname{Proj}_{\mathcal S_t},
    \]
    where \(P_t\) is the orthogonal projector in coefficient Frobenius geometry, including \(P_t=0\) when \(\mathcal S_t=\{0\}\). Define
    \[
    \Delta_0=\operatorname{dist}_F(D_r,\mathcal S_0),
    \qquad E_\rho=QT-D_r,
    \qquad \widehat T_t=\widehat T(X_t,Y_t,Z_t).
    \]
    These definitions give the exact same-target identity
    \[
    Q(T-\widehat T_t)=D_r+E_\rho-C_t,
    \qquad C_t\in\mathcal S_t.
    \]
    The subspaces \(\mathcal S_t\) are adaptive outputs of unconstrained ALS; they are not required to remain inside \(\mathcal S_0\) or any other fixed subspace.
  - **Four-clause conditional certificate, not primitive assumptions.** For constants \(\delta>0\), \(L_P>0\), \(\zeta>0\), and \(C_T>0\), with \(L_P<\delta/4\) and \(\zeta<\delta/4\), define \(\mathsf C_2(\delta,L_P,\zeta,C_T)\) by exactly the following four clauses:
    1. **Normalized entry deficit:** \(\Delta_0\ge\delta\|D_r\|_F=\delta\sqrt r\).
    2. **Finite adaptive-projector path:** \(\sum_{t=0}^{\infty}\|P_{t+1}-P_t\|_{\rm op}\le L_P\).
    3. **Unsquared finite represented-tensor variation:** \(\sum_{t=0}^{\infty}\|\widehat T_{t+1}-\widehat T_t\|_F<\infty\).
    4. **Relative smoothing and target scale:** \(\|E_\rho\|_F\le\zeta\|D_r\|_F\) and \(\|T\|_F\le C_T\|D_r\|_F\), where \(C_T=C_T(\kappa,q)\) is independent of \(r,n,k\) and of the admissible deterministic base triple.
    All four clauses are theorem-facing conditional interfaces, not assump-labeled primitive conditions. The certificate contains no Gram conditioning, factor or component bound, fixed-subspace restriction, persistent residual, basin, trapping event, positive-loss conclusion, or assertion about its own probability.

- Technical assumptions:
  - assump:dimension (Ambient dimension): \(r\) and \(n\) are positive integers and \(n\ge C_{\rm dim}(\kappa,q)r^4\log r\), where \(C_{\rm dim}(\kappa,q)>0\) is independent of \(r,n,k\) and of the admissible base triple.
  - assump:rank_window (Full superlinear rank window): \(k\) is an integer satisfying \(r<k\le r^{5/4}\); the exponent is the fixed universal choice \(c=1/4\).
  - assump:base_conditioning (Well-conditioned deterministic bases): for every \(\bar M\in\{\bar A,\bar B,\bar C\}\) and \(j\in[r]\), \(\kappa^{-1}\le\|\bar m_j\|_2\le\kappa\), and every singular value of the column-normalized matrix \(\widetilde M\) lies in \([\kappa^{-1},\kappa]\).
  - assump:gaussian_smoothing (Independent Gaussian smoothing): \(q>0\) is fixed, \(\rho=r^{-q}\), and the \(3r\) perturbation vectors have the mutually independent Gaussian law specified in Basic setup.
  - assump:independent_initialization (Independent Gaussian initialization): the \(3nk\) initial factor entries are mutually independent \(\mathcal N(0,1/n)\) variables and are independent of all smoothing variables.

# Formalized Goal

- Goal statement: There exist constants \(r_0(\kappa,q)\in\mathbb N\), \(C_{\rm dim}(\kappa,q)>0\), \(\delta(\kappa,q)>0\), \(L_P(\kappa,q)>0\), \(\zeta(\kappa,q)>0\), \(C_T(\kappa,q)>0\), and \(\epsilon(\kappa,q)>0\), with \(L_P<\delta/4\) and \(\zeta<\delta/4\), such that for every \(r\ge r_0(\kappa,q)\), every \(n,k\) satisfying assump:dimension and assump:rank_window, and every deterministic base triple satisfying assump:base_conditioning, the unconstrained half-relaxed parallel ALS trajectory satisfies the event inclusion
  \[
  \mathsf C_2(\delta,L_P,\zeta,C_T)
  \subseteq
  \left\{
  \lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)\ \text{exists and is finite, and}\ 
  \lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)\ge\epsilon\|T\|_F^2
  \right\}
  \]
  under the joint law in assump:gaussian_smoothing and assump:independent_initialization. The required deterministic implication uses the projector identity
  \[
  \operatorname{dist}_F(D_r,\mathcal S_t)
  \ge \Delta_0-\|D_r\|_F\sum_{s=0}^{t-1}\|P_{s+1}-P_s\|_{\rm op}
  \ge(\delta-L_P)\|D_r\|_F,
  \]
  the exact same-target identity \(Q(T-\widehat T_t)=D_r+E_\rho-C_t\), and the resulting bridge
  \[
  \|T-\widehat T_t\|_F
  \ge \|Q\|_{\rm op}^{-1}\bigl(\operatorname{dist}_F(D_r,\mathcal S_t)-\|E_\rho\|_F\bigr)
  \ge \frac{\delta-L_P-\zeta}{\|Q\|_{\rm op}C_T}\|T\|_F.
  \]
  Assump:base_conditioning gives \(\|Q\|_{\rm op}\le\kappa^6\), so the last margin is a positive constant depending only on \(\kappa,q\); for example the target permits \(\epsilon=((\delta-L_P-\zeta)/(\kappa^6C_T))^2\). Clause 3 makes \((\widehat T_t)_t\) Cauchy and hence makes the objective converge, without a Gram, factor-bound, quotient-metric, or Kurdyka--Lojasiewicz hypothesis. No lower bound on \(\mathbb P[\mathsf C_2]\) is claimed. Proving \(\mathbb P[\mathsf C_2(\delta,L_P,\zeta,C_T)]\ge p_0(\kappa,q)>0\) uniformly in \(r,n,k\) and the admissible deterministic base triple is the explicit residual source-level probability gap.

# Note

- Rigor: Source alignment preserves the third-order CP objective, Gaussian smoothing with \(\rho=1/\operatorname{poly}(r)\), one independent Gaussian initialization, the full interval \(r<k\le r^{1+1/4}\), and the positive-limit relative-objective target. It retains the approved well-conditioned-base interpretation and the fixed half-relaxed parallel Jacobi protocol; arbitrary bases and unrelaxed ALS remain open. Progress type: conditional. Materiality: this is the minimal target-preserving repair of `perspective_2/idea_1`: it normalizes the entry deficit to the exact/noiseless \(\sqrt r\) scale, replaces squared represented-sum motion by first-order adaptive-projector path length, uses unsquared represented-tensor variation only for convergence, and makes the smoothing and target scales explicit on the same conditional event. A constant-probability producer for the four-clause certificate remains unresolved rather than hidden. Lineage follows Kolda--Bader (2009) for CP matricization, Khatri--Rao, pseudoinverse, and product-gauge conventions and Arvanitakis--Srinivas--Vijayaraghavan (2025) for the smoothed random-initialized ALS regime; the relative smoothing calibration is consistent with the Gaussian-smoothed tensor analysis of Bhaskara--Charikar--Moitra--Vijayaraghavan (2014). Assumption support: assump:dimension and assump:rank_window preserve the approved source regime; assump:base_conditioning is the approved well-conditioned-base reading and supplies the fixed coordinate maps; assump:gaussian_smoothing is the source Gaussian-smoothed factor law; assump:independent_initialization is the approved random-initialized ALS protocol. The half relaxation is part of the algorithm definition, not a regularity assumption. All four clauses of \(\mathsf C_2\), including the normalized deficit, adaptive-projector path, finite unsquared target variation, and relative smoothing/target bounds, are explicitly conditional and have no assump ids. Their raw quantities are directly observable or computable from the realized target and trajectory in the coordinate-orthonormal, independent-Haar, and normalized-iid-Gaussian example regimes; no clause assumes the desired positive loss, persistent deficit, fixed witness, fixed subspace, basin, or certificate probability.
