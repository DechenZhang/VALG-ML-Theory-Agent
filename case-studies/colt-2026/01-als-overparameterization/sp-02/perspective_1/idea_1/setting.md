# Formalized Setting

- Basic setup:
  - **Dimensions and deterministic base factors.** Let \(r,n,k\) be positive integers and let \(\kappa \ge 1\). For each mode \(m\in\{A,B,C\}\), let \(\bar M=[\bar m_1,\ldots,\bar m_r]\in\mathbb R^{n\times r}\) be deterministic. Define \(D_{\bar M}=\operatorname{diag}(\|\bar m_1\|_2,\ldots,\|\bar m_r\|_2)\) and \(\widetilde M=\bar M D_{\bar M}^{-1}\). The admissible base class is the class for which every column norm is nonzero and \(\kappa^{-1}\le \|\bar m_j\|_2\le\kappa\) for all \(j\), while \(\kappa^{-1}\le \sigma_{\min}(\widetilde M)\le \sigma_{\max}(\widetilde M)\le\kappa\). The quantifier over this class is uniform; no favorable random base is selected.
  - **Gaussian-smoothed target tensor.** Fix \(q>0\) and set \(\rho=r^{-q}\). Draw all vectors \(\{\xi^a_j,\xi^b_j,\xi^c_j: j\in[r]\}\) independently from \(\mathcal N(0,(\rho^2/n)I_n)\), independently of the initial factors below, and set \(a_j=\bar a_j+\xi^a_j\), \(b_j=\bar b_j+\xi^b_j\), and \(c_j=\bar c_j+\xi^c_j\). The shared target is
    \[
    T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n}.
    \]
  - **Rank-\(k\) parameterization and objective.** For \(X=[x_1,\ldots,x_k]\), \(Y=[y_1,\ldots,y_k]\), and \(Z=[z_1,\ldots,z_k]\in\mathbb R^{n\times k}\), define
    \[
    S(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
    F(X,Y,Z)=\tfrac12\|T-S(X,Y,Z)\|_F^2.
    \]
    Let \(T_{(m)}\) denote the mode-\(m\) matricization, with one fixed standard ordering of the Khatri--Rao product \(\odot\). For a state at time \(t\), write \(U_t^x=Z_t\odot Y_t\), \(U_t^y=Z_t\odot X_t\), and \(U_t^z=Y_t\odot X_t\).
  - **Product-preserving balancing gauge.** For one component \((x,y,z)\), if \(u=\|x\|_2\), \(v=\|y\|_2\), and \(w=\|z\|_2\) are all positive, let \(g=(uvw)^{1/3}\) and replace it by \((gx/u,gy/v,gz/w)\). If \(uvw=0\), replace the whole component by \((0,0,0)\). Apply this deterministic columnwise map, denoted \(\mathcal G\), after every raw update. It preserves every represented rank-one tensor and gives equal mode norms on each nonzero component; it is the only balancing operation used.
  - **The two update maps.** The method class is exactly \(\mathcal M=\{M_{\mathrm{ALS}},M_{\mathrm{GD}}\}\), with no restarts, early stopping, or adaptive preconditioning. Both methods use the same draw of \(T\) but independent initial triples.
    - For \(M_{\mathrm{ALS}}\), compute all three least-squares minimizers from the time-\(t\) state simultaneously, using Moore--Penrose minimum-Frobenius-norm tie-breaking:
      \[
      \widehat X_t=T_{(1)}U_t^x((U_t^x)^{\mathsf T}U_t^x)^{\dagger},\quad
      \widehat Y_t=T_{(2)}U_t^y((U_t^y)^{\mathsf T}U_t^y)^{\dagger},\quad
      \widehat Z_t=T_{(3)}U_t^z((U_t^z)^{\mathsf T}U_t^z)^{\dagger}.
      \]
      With \(\lambda_A=1/2\), set \(\widetilde X_{t+1}=(1-\lambda_A)X_t+\lambda_A\widehat X_t\), and analogously for \(Y,Z\), then set \((X_{t+1},Y_{t+1},Z_{t+1})=\mathcal G(\widetilde X_{t+1},\widetilde Y_{t+1},\widetilde Z_{t+1})\).
    - For \(M_{\mathrm{GD}}\), fix a universal constant \(\eta_0>0\) as in assump:gd_step and use \(\eta_G=\eta_0/(nk)\). The simultaneous raw update is
      \[
      \begin{aligned}
      \widetilde X_{t+1}&=X_t-\eta_G\bigl[X_t((U_t^x)^{\mathsf T}U_t^x)-T_{(1)}U_t^x\bigr],\\
      \widetilde Y_{t+1}&=Y_t-\eta_G\bigl[Y_t((U_t^y)^{\mathsf T}U_t^y)-T_{(2)}U_t^y\bigr],\\
      \widetilde Z_{t+1}&=Z_t-\eta_G\bigl[Z_t((U_t^z)^{\mathsf T}U_t^z)-T_{(3)}U_t^z\bigr],
      \end{aligned}
      \]
      followed by the same gauge \(\mathcal G\).
  - **Initialization and probability space.** For each \(M\in\mathcal M\), initialize all entries of \(X_0^M,Y_0^M,Z_0^M\) independently as \(\mathcal N(0,1/n)\). The two method-specific initial triples are mutually independent and independent of the smoothing variables. Probability statements below are with respect to this joint law, conditional on the deterministic base triple.
    Write \(S_t^M=S(X_t^M,Y_t^M,Z_t^M)\) and \(F_M(t)=F(X_t^M,Y_t^M,Z_t^M)\).
  - **Generated residual interface (proof obligation, not an assumption).** For each \(M\) and \(t\), define
    \[
    \mathcal R_t^M=\operatorname{span}\{x_{i,t}^M\otimes y_{i,t}^M\otimes z_{i,t}^M:i\in[k]\},\quad
    \Delta_t^M=\|\operatorname{Proj}_{(\mathcal R_t^M)^\perp}T\|_F,
    \]
    and, when \(\Delta_t^M>0\), \(W_t^M=\operatorname{Proj}_{(\mathcal R_t^M)^\perp}T/\Delta_t^M\) (set \(W_t^M=0\) when \(\Delta_t^M=0\)). Also let \(\ell_t^M=\|S(X_{t+1}^M,Y_{t+1}^M,Z_{t+1}^M)-S(X_t^M,Y_t^M,Z_t^M)\|_F^2\). Since \(S_t^M\in\mathcal R_t^M\), \(W_t^M\) is an exact generated unit-Frobenius residual witness whenever defined. The proof must derive, rather than assume, a noncircular coefficient-space-to-ambient interface of the intended form \(\Delta_{t+1}^M\ge\Delta_t^M-C_\Delta(k/r^2)\ell_t^M\), a finite descent-controlled leakage budget \(\sum_t\ell_t^M\le C_\ell\), and a smoothing transfer error bounded by \(C_\rho\rho\), with constants independent of \(r,n,k\) (allowed dependence on \(\kappa,q\)). Positivity of \(\Delta_t^M\), convergence of \(F_M(t)\), basin membership, boundedness, and any invariant are proof obligations and are not assumed here.

- Technical assumptions:
  - assump:dimension (Ambient dimension): \(n\) and \(r\) are positive integers and \(n\ge C_\kappa r^2\log r\) for a constant \(C_\kappa\) depending only on \(\kappa\); the asymptotic lower threshold on \(r\) is stated in the goal.
  - assump:rank_window (Superlinear algorithmic rank): \(k\) is an integer satisfying \(r<k\le r^{1+c}=r^{5/4}\), with the universal exponent fixed at \(c=1/4\).
  - assump:base_conditioning (Deterministic well-conditioned base): the three deterministic base matrices obey the column-norm and normalized-singular-value bounds in Basic setup, uniformly over the admissible base class.
  - assump:gaussian_smoothing (Independent Gaussian smoothing): \(q>0\) is fixed, \(\rho=r^{-q}\), and the \(3r\) perturbation vectors have the independent Gaussian law stated above.
  - assump:independent_initialization (Independent Gaussian initialization): for each method, all \(3nk\) initial entries have law \(\mathcal N(0,1/n)\), and the two triples are mutually independent and independent of the smoothed target.
  - assump:gd_step (Fixed small gradient step): \(\eta_0\) is a fixed universal constant in \(0<\eta_0\le\eta_\star\), where \(\eta_\star\) is universal and independent of \(r,n,k,\kappa,q\); the GD step is exactly \(\eta_0/(nk)\).

# Formalized Goal

- Goal statement: There exist \(r_0(\kappa,q)\in\mathbb N\), \(p_0(\kappa,q)>0\), and \(\epsilon_0(\kappa,q)>0\), and a choice of \(C_\kappa\) and universal \(\eta_\star\), such that for every \(r\ge r_0\), every \(n\ge C_\kappa r^2\log r\), every deterministic base triple satisfying assump:base_conditioning, and every integer \(k\) satisfying assump:rank_window, the joint law in assump:gaussian_smoothing and assump:independent_initialization obeys
  \[
  \mathbb P\left(\bigcap_{M\in\mathcal M}\left\{\lim_{t\to\infty}F(X_t^M,Y_t^M,Z_t^M)\text{ exists and is finite, and }\lim_{t\to\infty}F(X_t^M,Y_t^M,Z_t^M)\ge \epsilon_0\|T\|_F^2\right\}\right)\ge p_0.
  \]
  The constants \(p_0\) and \(\epsilon_0\) are uniform in \(r,n,k\) and in the admissible deterministic bases. The claim is unconditional under the listed primitive assumptions: no bad basin, residual lower bound, convergence, recurrence, boundedness, or invariant is included as an assumption.

# Note

- Rigor: Source alignment preserves the third-order CP target, Gaussian smoothing with \(\rho=1/\operatorname{poly}(r)\), Gaussian random initialization, the full interval \(r<k\le r^{1+c}\), a constant-probability convergence-to-positive-objective conclusion, and conjunctive coverage of the two explicitly specified maps. Progress type: full. Materiality: this branch directly targets Gap 1 by seeking a universal \(c=1/4\) lower bound for a class containing both ALS and GD, with an actual positive limiting loss rather than a stationary-point or finite-time statement. Lineage follows Arvanitakis--Srinivas--Vijayaraghavan (2025), Wang--Wu--Lee--Ma--Ge (2020), Bhaskara--Charikar--Moitra--Vijayaraghavan (2014), and standard CP/MTTKRP conventions from Kolda--Bader (2009). Assumption support: assump:dimension and assump:rank_window are the source regime and the \(r^2\)-scale dimension convention from the cited ALS analysis; assump:base_conditioning is the prose-level well-conditioned interpretation and is standard in the cited smoothed/ALS settings; assump:gaussian_smoothing is the Gaussian smoothing model of Bhaskara et al.; assump:independent_initialization follows the random-initialization protocols in the ALS and GD foundations; assump:gd_step is the fixed small-step convention used in gradient analyses. The coefficient-space deficit witness and its ambient transfer are novel proof obligations, not assumptions; the required concrete checks are coordinate-orthonormal bases, independent Haar rotations, and iid Gaussian bases followed by column normalization on the event that their condition numbers are at most \(\kappa\). No derived residual barrier, descent budget, convergence fact, or generated invariant is assumed.
