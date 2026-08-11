# Formalized Setting

- Basic setup:
  - **Dimensions and smoothed CP target.** Let \(r,n,k\) be positive integers and let \(q>0\) be fixed. Let \(\bar A=[\bar a_1,\ldots,\bar a_r]\), \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be arbitrary deterministic matrices in \(\mathbb R^{n\times r}\). Set \(\rho=r^{-q}\), draw all vectors \(\xi_j^a,\xi_j^b,\xi_j^c\) independently from \(\mathcal N(0,(\rho^2/n)I_n)\), and define
    \[
    a_j=\bar a_j+\xi_j^a,\qquad b_j=\bar b_j+\xi_j^b,\qquad c_j=\bar c_j+\xi_j^c,\qquad
    T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
    \]
    No conditioning, incoherence, or random-base restriction is imposed on the deterministic bases.
  - **CP objective and notation.** For \(X=[x_1,\ldots,x_k]\), \(Y=[y_1,\ldots,y_k]\), and \(Z=[z_1,\ldots,z_k]\in\mathbb R^{n\times k}\), let
    \[
    S(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
    F(X,Y,Z)=\tfrac12\|T-S(X,Y,Z)\|_F^2.
    \]
    Let \(T_{(m)}\) be the mode-\(m\) matricization and use one fixed standard ordering for the Khatri--Rao product \(\odot\).
  - **Method-specific fixed initialization spans.** For each \(M\in\{\mathrm{cALS},\mathrm{cGD}\}\), draw independent matrices \(G_x^M,G_y^M,G_z^M\in\mathbb R^{n\times k}\) with iid \(\mathcal N(0,1/n)\) entries. Let \(Q_M=\operatorname{orth}(G_x^M)\) be a measurable orthonormal basis for \(\mathcal S_M=\operatorname{range}(G_x^M)\); the Gaussian full-rank event has probability one. Define the fixed ambient subspace
    \[
    \mathcal H_M=\mathcal S_M\otimes\mathbb R^n\otimes\mathbb R^n,\qquad
    P_{\mathcal H_M}=P_{\mathcal S_M}\otimes I_n\otimes I_n,\qquad
    P_{\mathcal S_M}=Q_MQ_M^{\mathsf T}.
    \]
    The two method-specific triples are independent of one another and of the smoothed tensor draw, while the same realization of \(T\) is used when the two method events are intersected.
  - **One-mode constrained sequential ALS.** For \(M=\mathrm{cALS}\), initialize \(X_0=G_x^{\mathrm{cALS}}\), \(Y_0=G_y^{\mathrm{cALS}}\), and \(Z_0=G_z^{\mathrm{cALS}}\). At sweep \(t\), use the cyclic order \(X\), then \(Y\), then \(Z\). With \(K_t^x=Z_t\odot Y_t\), set
    \[
    X_{t+1}=Q_{\mathrm{cALS}}\left[Q_{\mathrm{cALS}}^{\mathsf T}T_{(1)}K_t^x
    \bigl((K_t^x)^{\mathsf T}K_t^x\bigr)^{\dagger}\right].
    \]
    This is the minimum-Frobenius-norm solution of the exact block least-squares problem over \(X\) with \(\operatorname{col}(X)\subseteq\mathcal S_{\mathrm{cALS}}\). Then set \(K_t^y=Z_t\odot X_{t+1}\) and
    \[
    Y_{t+1}=T_{(2)}K_t^y\bigl((K_t^y)^{\mathsf T}K_t^y\bigr)^{\dagger},
    \]
    followed by \(K_t^z=Y_{t+1}\odot X_{t+1}\) and
    \[
    Z_{t+1}=T_{(3)}K_t^z\bigl((K_t^z)^{\mathsf T}K_t^z\bigr)^{\dagger}.
    \]
    The \(Y\) and \(Z\) blocks are unconstrained minimum-Frobenius-norm least-squares minimizers. There are no restarts or early stopping. The inclusion \(X_t\in\mathcal S_{\mathrm{cALS}}\) is enforced by the block definition and is algorithmic, not a separately assumed invariant.
  - **Coefficient-parameterized Armijo GD.** For \(M=\mathrm{cGD}\), write \(X_t=Q_{\mathrm{cGD}}C_t\) with \(C_t\in\mathbb R^{k\times k}\), and define
    \[
    f_{Q_{\mathrm{cGD}}}(C,Y,Z)=F(Q_{\mathrm{cGD}}C,Y,Z).
    \]
    Initialize \(C_0=Q_{\mathrm{cGD}}^{\mathsf T}G_x^{\mathrm{cGD}}\), \(Y_0=G_y^{\mathrm{cGD}}\), and \(Z_0=G_z^{\mathrm{cGD}}\), so \(Q_{\mathrm{cGD}}C_0=G_x^{\mathrm{cGD}}\) almost surely. At iteration \(t\), form
    \[
    V_t=(C_t,Y_t,Z_t)-\eta_t\nabla f_{Q_{\mathrm{cGD}}}(C_t,Y_t,Z_t).
    \]
    With fixed \(\eta_{\max}=1\), choose the first \(\eta_t=2^{-j}\eta_{\max}\), \(j\in\{0,1,2,\ldots\}\), satisfying
    \[
    f_{Q_{\mathrm{cGD}}}(V_t)\le f_{Q_{\mathrm{cGD}}}(C_t,Y_t,Z_t)
    -\frac{\eta_t}{2}\left\|\nabla f_{Q_{\mathrm{cGD}}}(C_t,Y_t,Z_t)\right\|_F^2,
    \]
    where the gradient norm is the sum of the squared Frobenius norms of the \(C,Y,Z\) blocks. Set \((C_{t+1},Y_{t+1},Z_{t+1})=V_t\) and \(X_{t+1}=Q_{\mathrm{cGD}}C_{t+1}\). The backtracking rule is deterministic, has no restart, and keeps every represented tensor in \(\mathcal H_{\mathrm{cGD}}\). Termination of the finite-iterate line search is a smoothness proof obligation, not a primitive assumption.
  - **Fixed witnesses and objective sequences.** For each method define
    \[
    S_t^M=S(X_t^M,Y_t^M,Z_t^M),\qquad F_M(t)=F(X_t^M,Y_t^M,Z_t^M),
    \]
    and, when \(\|(I-P_{\mathcal H_M})T\|_F>0\),
    \[
    W_M=\frac{(I-P_{\mathcal H_M})T}{\|(I-P_{\mathcal H_M})T\|_F}.
    \]
    The witness is fixed before the trajectory evolves and \(S_t^M\in\mathcal H_M\) for every \(t\) by the constrained block or coefficient parameterization. Consequently,
    \[
    F_M(t)\ge \tfrac12\|(I-P_{\mathcal H_M})T\|_F^2\quad\text{for every }t.
    \]
    Exact block minimization gives \(F_{\mathrm{cALS}}(t+1)\le F_{\mathrm{cALS}}(t)\), and every accepted Armijo step gives \(F_{\mathrm{cGD}}(t+1)\le F_{\mathrm{cGD}}(t)\). Since both sequences are nonnegative, their scalar limits exist; establishing these statements from the displayed updates is a proof obligation, not an assumption on the trajectories.
  - **Conditional fixed-projector probability calculation.** Conditional on any realized \(T\), each \(\mathcal S_M\) is an independent Haar-uniform \(k\)-dimensional subspace of \(\mathbb R^n\), independent of \(T\). Therefore
    \[
    \mathbb E\!\left[\|P_{\mathcal H_M}T\|_F^2\mid T\right]
    =\frac{k}{n}\|T\|_F^2.
    \]
    Let \(E_M=\{\|P_{\mathcal H_M}T\|_F^2\le 2(k/n)\|T\|_F^2\}\). Markov's inequality gives \(\mathbb P(E_M\mid T)\ge 1/2\), and conditional independence gives \(\mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}\mid T)\ge1/4\). Under the dimension and rank conditions below, \(k/n\le1/8\), so on this intersection \(\|(I-P_{\mathcal H_M})T\|_F^2\ge(3/4)\|T\|_F^2\) for both methods.

- Technical assumptions:
  - assump:dimension (Fixed ambient dimension): \(n\) and \(r\) are positive integers and \(n\ge 8r^{5/4}\); the theorem's asymptotic threshold on \(r\) is stated in the goal.
  - assump:rank_window (Superlinear algorithmic rank): \(k\) is an integer satisfying \(r<k\le r^{1+c}=r^{5/4}\), with \(c=1/4\).
  - assump:arbitrary_base (Uniform arbitrary deterministic bases): \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) are deterministic and unrestricted; the theorem is uniform over all such triples and imposes no conditioning or incoherence condition.
  - assump:gaussian_smoothing (Independent Gaussian smoothing): \(q>0\) is fixed, \(\rho=r^{-q}\), and the \(3r\) perturbation vectors have the independent Gaussian law used to define \(T\).
  - assump:joint_initialization (Shared target and independent starts): the two method-specific Gaussian initialization triples are mutually independent and independent of the smoothing variables; both methods use the same realized \(T\) when their events are intersected.

# Formalized Goal

- Goal statement: There is an \(r_0\) such that for every \(r\ge r_0\), every \(n\) satisfying assump:dimension, every \(k\) satisfying assump:rank_window, and every deterministic base triple satisfying assump:arbitrary_base, the joint law in assump:gaussian_smoothing and assump:joint_initialization satisfies
  \[
  \mathbb P\!\left[
  \bigcap_{M\in\{\mathrm{cALS},\mathrm{cGD}\}}
  \left\{
  \lim_{t\to\infty}F_M(t)\ \text{exists and}\ 
  \lim_{t\to\infty}F_M(t)\ge \frac{3}{8}\|T\|_F^2
  \right\}
  \right]\ge \frac14.
  \]
  This is a material-partial theorem for the one-mode-fixed-span constrained class. It makes no claim for the original unconstrained ALS or unconstrained GD dynamics; replacing the fixed initialization span by an endogenous moving span is an explicit unresolved gap.

# Note

- Rigor: Source alignment preserves the third-order CP object, arbitrary deterministic bases, Gaussian smoothing with \(\rho=1/\operatorname{poly}(r)\), Gaussian initialization, the rank interval \(r<k\le r^{1+c}\), and a positive limiting objective for both named variants. Progress type: material_partial. Materiality: the branch gives a constant-probability lower bound for two precisely specified constrained methods and isolates a fixed-witness obstruction while leaving the unconstrained source target open. Lineage follows Kolda--Bader (2009), Arvanitakis--Srinivas--Vijayaraghavan (2025), Bhaskara--Charikar--Moitra--Vijayaraghavan (2014), and Jin--Ge--Netrapalli--Kakade--Jordan (2017). Assumption support: assump:dimension and assump:rank_window are the approved source regime; assump:arbitrary_base preserves the source's unrestricted deterministic-base interpretation; assump:gaussian_smoothing is the standard smoothed CP model of Bhaskara et al.; assump:joint_initialization is the stated independent Gaussian-start and shared-target probability protocol. Fixed-span conservation is an algorithmic construction enforced by \(X=Q_MC\) or the constrained ALS block, not a hidden derived invariant. The fixed-projector witness, Haar expectation, Markov margin, and monotone objective limits are proof interfaces to verify directly in coordinate-orthonormal, Haar-rotated, and normalized iid-Gaussian base examples. The unconstrained ALS/GD positive-limit theorem remains explicitly unproved.
