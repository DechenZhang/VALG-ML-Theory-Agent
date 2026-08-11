# Formalized Setting

- Basic setup:
  - Let \(n\in\mathbb N_{\ge 1}\), \(\mathbb N_0:=\{0,1,2,\ldots\}\), \([m]:=\{1,\ldots,m\}\), \(\mathcal X:=\{-1,+1\}^n\), and \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\). Write \(\Delta(\mathcal X)\) for all probability distributions on \(\mathcal X\). Fix the source tie label \(s_0:=\operatorname{sign}(0)\in\{-1,+1\}\) and define \(\operatorname{sign}_{s_0}(z)=+1\) for \(z>0\), \(\operatorname{sign}_{s_0}(z)=-1\) for \(z<0\), and \(\operatorname{sign}_{s_0}(0)=s_0\). For a map \(\varphi:\mathcal X\to\mathbb R^d\), \(w\in\mathbb R^d\), \(\mathcal D\in\Delta(\mathcal X)\), and \(h\in\mathcal H\), define the tie-resolved linear error
    \[
    R_{\mathcal D,h}(w,\varphi)
    :=\Pr_{x\sim\mathcal D}\!\left[
    \operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)h(x)<0
    \right].
    \]
    For \(\alpha\ge 0\), define the nonvacuous probabilistic dimension complexity by
    \[
    \operatorname{dc}_{\alpha}(\mathcal H)
    :=\min\left\{d\in\mathbb N_0:
    \begin{array}{l}
    \exists\text{ a law }\mathcal P\text{ over maps }\varphi:\mathcal X\to\mathbb R^d\quad
    \forall\mathcal D\in\Delta(\mathcal X)\quad\forall h\in\mathcal H,\\[2pt]
    \displaystyle
    \mathbb E_{\varphi\sim\mathcal P}\!\left[
    \inf_{w\in\mathbb R^d}R_{\mathcal D,h}(w,\varphi)
    \right]\le\alpha
    \end{array}
    \right\}.
    \]
    Thus \(\mathcal P\) is selected before every later \((\mathcal D,h)\), while the optimizing \(w\) may depend on \((\varphi,\mathcal D,h)\); the fixed tie label prevents \(w=0\) from making the error definition vacuous.
  - Fix a depth \(L\in\mathbb N_{\ge 1}\), widths \(n_0=n,n_1,\ldots,n_{L-1},n_L=1\) in \(\mathbb N_{\ge 1}\), and matrices \(\theta_\ell\in\mathbb R^{n_\ell\times n_{\ell-1}}\). There are no biases. Set
    \[
    S:=\sum_{\ell=1}^{L}n_\ell n_{\ell-1},
    \qquad \theta:=(\theta_1,\ldots,\theta_L)\in\mathbb R^S.
    \]
    With \(\sigma(z)=\max\{0,z\}\) coordinatewise, define \(z_0(\theta,x):=x\),
    \[
    u_\ell(\theta,x):=\theta_\ell z_{\ell-1}(\theta,x),
    \qquad
    z_\ell(\theta,x):=\sigma(u_\ell(\theta,x))
    \quad (1\le\ell\le L-1),
    \]
    and \(f_\theta(x):=\theta_Lz_{L-1}(\theta,x)\). Write \(u_{\ell,j}(\theta,x)\) for coordinate \(j\) of \(u_\ell(\theta,x)\). Let \(\kappa\in[0,1]\) denote the source protocol's already-fixed ReLU-kink convention: use \(\rho_\kappa(a)=1\) for \(a>0\), \(\rho_\kappa(a)=0\) for \(a<0\), and \(\rho_\kappa(0)=\kappa\) at every ReLU gate, and write \(\nabla_\theta^{(\kappa)}\) for the resulting single-valued back-propagation derivative. The pair \((s_0,\kappa)\) is fixed once as part of the source protocol and is not selected or altered by the conditional theorem.
  - Initialize all weights independently with
    \[
    (\theta_\ell^{(0)})_{jk}\sim\mathcal N(0,1/n_{\ell-1}),
    \qquad 1\le\ell\le L.
    \]
    For each \(\mathcal D\in\Delta(\mathcal X)\) and \(h^\star\in\mathcal H\), draw \(x^{(0)},\ldots,x^{(T-1)}\) independently from \(\mathcal D\), independently of \(\theta^{(0)}\). With \(\ell(a):=\log(1+e^{-a})\), run the exact one-sample, all-layer update
    \[
    \theta^{(t+1)}
    =\theta^{(t)}-\eta\nabla_\theta^{(\kappa)}
    \ell\!\left(h^\star(x^{(t)})f_{\theta^{(t)}}(x^{(t)})\right),
    \qquad t=0,\ldots,T-1.
    \]
    Define the prescribed latter-half score and predictor by
    \[
    A_{\mathcal D,h^\star}(x)
    :=\sum_{t=\lceil T/2\rceil}^{T}f_{\theta^{(t)}}(x),
    \qquad
    \widehat h_{\mathcal D,h^\star}(x)
    :=\operatorname{sign}_{s_0}(A_{\mathcal D,h^\star}(x)),
    \]
    and its strict-inequality classification error by
    \[
    \mathcal L_{\mathcal D,h^\star}(\widehat h_{\mathcal D,h^\star})
    :=\Pr_{x\sim\mathcal D}\!\left[
    \widehat h_{\mathcal D,h^\star}(x)h^\star(x)<0
    \right].
    \]
  - For \(r\ge 0\), let
    \[
    B_\infty(\theta^{(0)},r)
    :=\{\theta\in\mathbb R^S:\|\theta-\theta^{(0)}\|_\infty\le r\},
    \]
    where \(\|\cdot\|_\infty\) is the coordinate sup norm on the vectorized parameters. Define
    \[
    M_r(\theta^{(0)}):=
    \begin{cases}
    +\infty, & L=1,\\[2pt]
    \displaystyle
    \inf_{\substack{\theta\in B_\infty(\theta^{(0)},r),\ x\in\mathcal X,\\
    1\le\ell\le L-1,\ j\in[n_\ell]}}
    |u_{\ell,j}(\theta,x)|, & L\ge 2,
    \end{cases}
    \]
    \[
    G_r(\theta^{(0)})
    :=\sup_{\substack{\theta\in B_\infty(\theta^{(0)},r),\ x\in\mathcal X,\\
    y\in\{-1,+1\}}}
    \left\|\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))\right\|_\infty,
    \qquad
    E_r:=\{M_r(\theta^{(0)})>0,\ \eta T G_r(\theta^{(0)})\le r\}.
    \]
    The event \(E_r\) is determined solely by the initialization and worst-case quantities on a fixed parameter ball; it is defined before any SGD sample path, distribution, or target is selected.
  - Let the path index set and its dimension be
    \[
    \mathcal I_{\rm path}:=\prod_{\ell=0}^{L-1}[n_\ell],
    \qquad
    d_{\rm path}:=|\mathcal I_{\rm path}|=\prod_{\ell=0}^{L-1}n_\ell.
    \]
    For \(p=(i_0,\ldots,i_{L-1})\in\mathcal I_{\rm path}\), define the initialization-gate feature map \(\varphi_{\theta^{(0)}}:\mathcal X\to\mathbb R^{d_{\rm path}}\) by
    \[
    [\varphi_{\theta^{(0)}}(x)]_p
    :=x_{i_0}\prod_{\ell=1}^{L-1}
    \mathbf 1\{u_{\ell,i_\ell}(\theta^{(0)},x)>0\},
    \]
    with the empty product equal to one when \(L=1\). Let \(\mathcal P_{\rm gate}:=\operatorname{Law}_{\theta^{(0)}}(\varphi_{\theta^{(0)}})\) be its pushforward law under the source Gaussian initialization. This law is fixed by the architecture and initialization distribution before \(\mathcal D\) and \(h\), and is defined on both \(E_r\) and \(E_r^c\).
- Technical assumptions:
  - `assump:fixed-source-witnesses` (Fixed source witnesses and regime): \(0\le\varepsilon<1/4\), \(T\in\mathbb N_{\ge 1}\), and \(\eta>0\). For the given \((n,\mathcal H,\varepsilon)\), one architecture, its parameter count \(S\), the constant stepsize \(\eta\), and the horizon \(T\) are selected once and held fixed before \(\mathcal D\) and \(h^\star\); the same witnesses and the same fixed \((s_0,\kappa)\) protocol conventions are used for every \((\mathcal D,h^\star)\in\Delta(\mathcal X)\times\mathcal H\).
  - `assump:universal-expected-success` (Universal expected-error SGD premise): For every \(\mathcal D\in\Delta(\mathcal X)\) and every \(h^\star\in\mathcal H\),
    \[
    \mathbb E_{\theta^{(0)},\,x^{(0)},\ldots,x^{(T-1)}}\!\left[
    \mathcal L_{\mathcal D,h^\star}(\widehat h_{\mathcal D,h^\star})
    \right]\le\varepsilon,
    \]
    where the expectation is jointly over the independent Gaussian initialization and fresh one-sample SGD draws specified above.
  - `assump:constant-depth` (Fixed constant depth): A depth cap \(L_0\in\mathbb N_{\ge 1}\) is fixed as a universal constant, independently of \(n,\mathcal H,\varepsilon,\eta,T,S\), and the source architecture satisfies \(1\le L\le L_0\). Widths remain arbitrary and all layers remain trainable.
  - `assump:robust-tube` (Static robust initialization tube): Deterministic values \(r>0\) and \(\delta_0\) with \(0\le\delta_0\le\varepsilon\) are fixed after the source witnesses but before \(\theta^{(0)}\), \(\mathcal D\), \(h^\star\), and the SGD samples, and
    \[
    \Pr_{\theta^{(0)}}(E_r)\ge 1-\delta_0.
    \]
    This primitive assumption concerns only the static quantities \(M_r\) and \(G_r\); it does not assume that a realized trajectory remains in \(B_\infty(\theta^{(0)},r)\), that gates remain stable, or that a path representation exists.

# Formalized Goal

- Goal statement: In exact-goal mode, under `assump:fixed-source-witnesses`, `assump:universal-expected-success`, `assump:constant-depth`, and `assump:robust-tube`, prove the conditional probabilistic-dimension bound
  \[
  \operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
  \le d_{\rm path}
  \le S^{L_0}.
  \]
  The first inequality must be witnessed by the target- and distribution-independent law \(\mathcal P_{\rm gate}\); equivalently, for every \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\),
  \[
  \mathbb E_{\varphi\sim\mathcal P_{\rm gate}}\!\left[
  \inf_{w\in\mathbb R^{d_{\rm path}}}R_{\mathcal D,h}(w,\varphi)
  \right]\le\varepsilon+\delta_0.
  \]
  Since \(\delta_0\le\varepsilon\), the same statement yields the source-endorsed corollary
  \[
  \operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}.
  \]

# Note

- Rigor:
  - Lineage and transfer: the parent sources are *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (COLT 2026) and *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020, arXiv:2003.04180). The exact Gaussian/logistic/one-sample-SGD/latter-half protocol is retained; the added static tube and constant-depth restriction feed the tie-resolved probabilistic-dimension quantifier order through the initialization-gate law.
  - Source alignment: the universal \((\mathcal D,h)\) learner premise and its expectation mode are unchanged. The target change is explicit: this is a conditional \(\operatorname{dc}_{\varepsilon+\delta_0}\) bound at fixed constant depth, not the unconditional deterministic \(C T S\) conclusion. General depth, the source regime without `assump:robust-tube`, and deterministic exactification remain open.
  - Progress type: `conditional`.
  - Materiality: because \(\delta_0\le\varepsilon\), the conclusion has the source-requested \(\operatorname{dc}_{C\varepsilon}\) form with \(C=2\) and explicit polynomial dimension \(S^{L_0}\), while producing one feature-map law independently of \((\mathcal D,h)\).
  - Quantitative and probability modes: the bound exposes \(S,L_0,\varepsilon,\delta_0\) and has no hidden multiplicative constant; \(L_0\) is fixed universally and \(T\) is a fixed finite horizon. The learner premise is in expectation over initialization and SGD sampling, `assump:robust-tube` is a probability statement over initialization, and the conclusion is expected tie-resolved representation error over the single law \(\mathcal P_{\rm gate}\).
  - Assumption support: `assump:fixed-source-witnesses` and `assump:universal-expected-success` are the primitive regime and premise of Feldman, Kamath, and Srebro (2026). `assump:constant-depth` is a standard/source-derived restriction within the same fully connected architecture family, explicitly used here as a source-side specialization rather than inferred from the learning premise. `assump:robust-tube` is novel example-verified: (i) for \(L=1\), \(M_r=+\infty\), \(G_r\le1\), and any \(r\ge\eta T\) makes \(E_r\) deterministic; (ii) for any fixed depth-two architecture and finite \(T\), a deterministic \(r(\eta)\downarrow0\) with \(\eta/r(\eta)\downarrow0\) gives \(\Pr(E_{r(\eta)})\to1\) as \(\eta\downarrow0\), because the finite Gaussian first-layer preactivations are nonzero almost surely and the local full-gradient suprema are finite; (iii) for fixed depth and widths, \(\beta:=2^n\sum_{\ell=1}^{L-2}2^{-n_\ell}\) satisfies \(\Pr(M_0>0)\ge1-\beta\) by conditioning on nonzero preceding activations and union-bounding whole-layer death, so \(\beta<\delta_0\) implies \(\Pr(E_{r(\eta)})\ge1-\delta_0\) for all sufficiently small \(\eta\); and (iv) the depth-three witness \(n=1\), \(n_1=n_2=2\), \(W_1=(1,-1)^\top\), \(W_2=\left(\begin{smallmatrix}2&-1\\-1&2\end{smallmatrix}\right)\), \(W_3=(1,1)\) has hidden preactivations \((1,-1),(2,-1)\) at \(x=1\) and \((-1,1),(-1,2)\) at \(x=-1\); continuity, compactness, a sufficiently small stepsize, and Gaussian full support give a positive-probability robust tube around it.
  - Proof-obligation discipline: `assump:robust-tube` is only a static primitive source. The bounds \(\|\theta^{(t)}-\theta^{(0)}\|_\infty\le t\eta G_r\le r\) for every labeled history, hidden-gate stability, exact fixed-gate path expansion of each iterate and aggregate, preservation of \(s_0\)-ties, comparison of the best path-linear error with conditional sample-path error, the \(E_r^c\) charge by \(\delta_0\), and \(d_{\rm path}\le S^L\le S^{L_0}\) are all derived proof obligations. No trajectory stability, representation conclusion, convex reduction, or deterministic exactification is assumed.
