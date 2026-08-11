# Formalized Setting

- Basic setup:
  Fix an integer \(d\geq 1\), a radius \(R>0\), and a compact one-dimensional parameter domain \(\Theta\subseteq\mathbb R\). Let \(\mathcal D\) be a nonempty class of Borel probability laws on \([-R,R]^d\). Write
  
  \[
  \alpha=(\alpha_0,\beta),\qquad
  \beta=(\alpha_1,\ldots,\alpha_{d-1}),\qquad
  \phi_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k .
  \]
  
  For \(d=1\), \(\beta\) is the empty tuple and its marginal is the point mass on the one-point space. For any Borel probability law \(\nu\) on \([-R,R]^d\), denote its \(\beta\)-marginal by \(\pi_\nu\) and write \(\Pr_\nu\) for probability when \(\alpha\sim\nu\). No simplicity, root-separation, or transversality condition is imposed on the zeros of \(\phi_\alpha\), and no learner or online algorithm is fixed.

  Let \(\mathscr I(\Theta)\) be the collection of all intervals \(I\subseteq\Theta\) with positive Lebesgue length \(|I|>0\), and let \(m_I=(\inf I+\sup I)/2\). Define the zero set \(Z_\alpha:=\{\theta\in\Theta:\phi_\alpha(\theta)=0\}\) and the source root-hitting constant
  
  \[
  C_{\mathcal A}
  :=\sup_{\nu\in\mathcal A}\ \sup_{I\in\mathscr I(\Theta)}
  \frac{\Pr_\nu(Z_\alpha\cap I\neq\varnothing)}{|I|}
  \]
  
  for every nonempty class \(\mathcal A\) of cube-supported coefficient laws. In particular, the primary target uses \(\mathcal A=\mathcal D\).

  Put
  
  \[
  B:=\max\left\{1,\sup_{\theta\in\Theta}|\theta|\right\},
  \qquad
  L_{d,R,\Theta}
  :=\sup_{\substack{\alpha\in[-R,R]^d\\ \theta\in\Theta}}
  |\partial_\theta\phi_\alpha(\theta)| .
  \]
  
  Since
  
  \[
  \partial_\theta\phi_\alpha(\theta)
  =d\theta^{d-1}+\sum_{k=1}^{d-1}k\alpha_k\theta^{k-1},
  \]
  
  the deterministic envelope is finite and satisfies
  
  \[
  L_{d,R,\Theta}
  \leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}<\infty,
  \]
  
  with an empty sum interpreted as zero.

  Whenever a cube-supported coefficient law \(\nu\) has a regular conditional density \(f_\nu(a_0\mid\beta)\) of \(\alpha_0\) given \(\beta\), extend that density by zero outside \([-R,R]\) and define
  
  \[
  K_\nu(\beta):=\operatorname*{ess\,sup}_{a_0\in\mathbb R}f_\nu(a_0\mid\beta).
  \]
  
  For any class \(\mathcal A\) of such laws, define its averaged envelope by
  
  \[
  \bar\kappa_{\mathcal A}
  :=\sup_{\nu\in\mathcal A}\int K_\nu(\beta)\,\pi_\nu(d\beta).
  \]

  For the constructive specialization below, let \(\mathcal D_{\mathrm{RI}}\) denote a nonempty class of random-intercept laws. For each \(\mu\in\mathcal D_{\mathrm{RI}}\), the higher-coefficient vector has an arbitrary law \(\beta\sim\pi_\mu\) on \([-R,R]^{d-1}\), \(U_\mu\sim\operatorname{Unif}[-1,1]\) is independent of \(\beta\), and measurable functions \(G_\mu,\rho_\mu\) generate
  
  \[
  \alpha_0=G_\mu(\beta)+\rho_\mu(\beta)U_\mu .
  \]
  
  A fixed-width member is one for which \(\rho_\mu(\beta)=r_\mu\) \(\pi_\mu\)-almost surely for some constant \(r_\mu>0\). The notation \(\mathbf 1\{E\}\) denotes the indicator of an event \(E\).
  
  For the explicit heteroscedastic witness with zero location function, when \(d\geq3\) and \(q\in(0,1)\), let \(Z\sim\operatorname{Unif}[-R/2,R/2]\), let \(U\sim\operatorname{Unif}[-1,1]\) be independent of \(Z\), and define
  
  \[
  \rho_q(z):=\frac R2\left(\frac{2|z|}{R}\right)^q,
  \qquad
  \beta_q(z):=(z,z^2/R,0,\ldots,0),
  \qquad
  \alpha^{(q)}:=(\rho_q(Z)U,\beta_q(Z)).
  \]
  
  Denote the law of \(\alpha^{(q)}\) by \(\mu_q\).

- Technical assumptions:
  - `assump:averaged-intercept-density` (Averaged conditional intercept-density envelope): For every \(\mu\in\mathcal D\), a regular conditional law of \(\alpha_0\) given \(\beta\) admits a jointly measurable Lebesgue density \(f_\mu(a_0\mid\beta)\) for \(\pi_\mu\)-almost every \(\beta\); the corresponding \(K_\mu\) is \(\pi_\mu\)-measurable; and \(\bar\kappa_{\mathcal D}<\infty\). The marginal \(\pi_\mu\) is otherwise unrestricted: it may be discrete or singular and its coordinates may be arbitrarily dependent. In particular, this assumption imposes no finite bound on \(\operatorname*{ess\,sup}_{\beta\sim\pi_\mu}K_\mu(\beta)\), either for an individual \(\mu\) or uniformly over \(\mathcal D\).

  - `assump:random-intercept-witness` (Optional random-intercept source): For every \(\mu\in\mathcal D_{\mathrm{RI}}\), the functions in the random-intercept representation satisfy \(\rho_\mu(\beta)>0\) for \(\pi_\mu\)-almost every \(\beta\) and
    
    \[
    |G_\mu(\beta)|+\rho_\mu(\beta)\leq R
    \quad\text{for }\pi_\mu\text{-almost every }\beta,
    \qquad
    M_{\mathrm{RI}}
    :=\sup_{\mu\in\mathcal D_{\mathrm{RI}}}
    \int\frac{1}{\rho_\mu(\beta)}\,\pi_\mu(d\beta)<\infty.
    \]
    
    This is a sufficient construction used to verify `assump:averaged-intercept-density`, not an additional requirement on a general class \(\mathcal D\). No density, absolute-continuity, or coordinate-independence condition is imposed on \(\pi_\mu\).

# Formalized Goal

- Goal statement:
  Prove the following one-way, coefficient-side sufficient theorem and its stated constructive specialization. Under `assump:averaged-intercept-density`, simultaneously for every \(\mu\in\mathcal D\) and every \(I\in\mathscr I(\Theta)\),
  
  \[
  \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
  \leq \bar\kappa_{\mathcal D}L_{d,R,\Theta}|I|,
  \qquad\text{and hence}\qquad
  C_{\mathcal D}\leq\bar\kappa_{\mathcal D}L_{d,R,\Theta}<\infty.
  \]
  
  As part of the same theorem, prove that `assump:random-intercept-witness` yields, for \(\pi_\mu\)-almost every \(\beta\),
  
  \[
  f_\mu(a_0\mid\beta)
  =\frac{\mathbf 1\{|a_0-G_\mu(\beta)|\leq\rho_\mu(\beta)\}}
  {2\rho_\mu(\beta)},
  \qquad
  K_\mu(\beta)=\frac{1}{2\rho_\mu(\beta)},
  \qquad
  \bar\kappa_{\mathcal D_{\mathrm{RI}}}\leq\frac12M_{\mathrm{RI}},
  \]
  
  so the same all-law, all-positive-length-interval conclusion applies to \(\mathcal D_{\mathrm{RI}}\). This includes every fixed-width choice \(\rho_\mu\equiv r_\mu>0\) obeying the displayed support and class-uniform integrability conditions, with arbitrary possibly singular or dependent \(\pi_\mu\). It must also verify that, for every \(d\geq3\), \(R>0\), and \(q\in(0,1)\), the concrete law \(\mu_q\) is supported on \([-R,R]^d\), obeys \(\rho_q(Z)>0\) almost surely, and satisfies
  
  \[
  \operatorname*{ess\,sup}_{\beta\sim\pi_{\mu_q}}K_{\mu_q}(\beta)=\infty,
  \qquad
  \int K_{\mu_q}(\beta)\,\pi_{\mu_q}(d\beta)
  =\frac{1}{R(1-q)},
  \qquad
  C_{\{\mu_q\}}\leq\frac{L_{d,R,\Theta}}{R(1-q)}.
  \]
  
  Finally, verify that \(\mu_q\) is supported on the nonlinear heteroscedastic sheet
  
  \[
  \left\{(a_0,z,z^2/R,0,\ldots,0):
  |z|\leq R/2,\ |a_0|\leq\rho_q(z)\right\},
  \]
  
  whose curved \((\alpha_1,\alpha_2)\)-projection prevents it from being an affine image of a bounded-density latent law in the sense of the affine-latent baseline. The claimed theorem is sufficient only: it asserts neither necessity nor a converse, and it makes no uniform polynomial-in-\((d,R)\) claim for an indexed family.

# Note

- Rigor:
  Source alignment is exact for the degree-\(d\) monic polynomial, \([-R,R]^d\) support, the supremum over every law in the class, and the supremum over every positive-length interval in \(\Theta\). The progress type is `material_partial`. Its materiality is a new sufficient direction for source part (a): a joint density cap \(\kappa_{\mathrm{joint}}\) gives only \(\bar\kappa_{\mathcal D}\leq\kappa_{\mathrm{joint}}(2R)^{d-1}\), whereas the present condition permits singular higher-coefficient marginals and unbounded pointwise slice caps. The necessary direction and the indexed uniform polynomial characterization in part (b) remain open.

  Assumption support map: `assump:averaged-intercept-density` is the novel example-verified primitive recorded in `idea.md`, supported by fixed-width random intercepts with arbitrary \(\beta\), Cantor-supported higher coefficients with measurable support-preserving \(G\), and the explicit \(\mu_q\) family with an infinite pointwise cap but finite mean cap. `assump:random-intercept-witness` is the recorded novel, directly example-verified constructive coefficient-side source; conditioning on \(\beta\) gives the displayed uniform density directly, including both fixed-width and heteroscedastic cases. The deterministic mean-value bridge and conditional integration are standard and are the mechanisms inherited from the two parent papers. No root-event quantity is assumed, no pointwise-uniform conditional cap is hidden, and no simplicity, transversality, necessity, converse, or polynomial-rate claim is introduced.
