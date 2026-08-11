# Formalized Setting

- Basic setup:
  Fix integers \(N\geq 1\), \(q\geq 0\), and \(m\geq 0\), a number \(T>0\), and a nondegenerate compact interval
  \(\Theta\subseteq[-T,T]\). Let \(U\supseteq\Theta\) be an open interval. In the exact
  Balcan--Nguyen--Sharma convention specialized to ambient parameter dimension \(p=1\), let
  \(\eta=(\eta_1,\ldots,\eta_q)\) be a common triangular Pfaffian chain on \(U\),

  \[
  \eta_j'(\theta)=P_j(\theta,\eta_1(\theta),\ldots,\eta_j(\theta)),
  \qquad 1\leq j\leq q,
  \]

  and let \(Q_i(\theta,y_1,\ldots,y_q)\), \(0\leq i\leq N\), be output polynomials. Use total degree and set

  \[
  M:=\max_{1\leq j\leq q}\deg P_j\quad(q\geq1),\qquad M:=0\quad(q=0),
  \qquad
  \Delta:=\max_{0\leq i\leq N}\deg Q_i.
  \]

  Define

  \[
  F_i(\theta):=Q_i(\theta,\eta_1(\theta),\ldots,\eta_q(\theta)),
  \qquad
  \widetilde F(\theta):=(F_0(\theta),F_1(\theta),\ldots,F_N(\theta)),
  \]

  and write \(F=(F_1,\ldots,F_N)\). The coordinate \(F_0\) is deterministic; only the coefficients multiplying
  \(F_1,\ldots,F_N\) are random.

  Let \(B:U\to\mathbb R^{(N+1)\times(N+1)}\) be a supplied polynomial matrix with

  \[
  B_{rs}(\theta)=\sum_{\ell=0}^{m}b_{rs,\ell}\theta^\ell,
  \qquad 0\leq r,s\leq N.
  \]

  Set \(T_*:=\max\{1,T\}\) and define the static coefficient-height certificate

  \[
  \widehat\Lambda_{B,T}
  :=\left(
  \sum_{r=0}^{N}\sum_{s=0}^{N}
  \left(\sum_{\ell=0}^{m}|b_{rs,\ell}|T_*^\ell\right)^2
  \right)^{1/2}.
  \]

  The coefficient-evaluation inequality

  \[
  \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
  \leq \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm F}
  \leq\widehat\Lambda_{B,T}
  \]

  is a named derived bridge to be proved from the displayed coefficients, not an additional assumption.

  Under the anchored derivative-closure condition below, \(F(\theta)\neq0\) on \(\Theta\). Hence define

  \[
  \gamma_F(\theta):=\frac{F(\theta)}{\|F(\theta)\|_2},
  \qquad
  \Gamma_{\mathrm{proj}}(F)
  :=\sup_{\theta\in\Theta}\|\gamma_F'(\theta)\|_2.
  \]

  This only defines a derived conditioning quantity; neither its finiteness nor an upper bound on it is assumed.

  For \(R>0\) and \(0<\kappa<\infty\), let \(\mathcal D_{N,R,\kappa}\) be the class of all Borel probability laws
  \(\mu\) on \(\mathbb R^N\) with a Lebesgue density \(f_\mu\) supported on \([-R,R]^N\) and satisfying
  \(\|f_\mu\|_\infty\leq\kappa\). No coordinate-independence condition is imposed. Assume this class is nonempty,
  set

  \[
  \mathcal D:=\mathcal D_{N,R,\kappa},\qquad A:=(2R)^N\kappa,
  \]

  and define

  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  :=\sup_{\mu\in\mathcal D}
  \sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ |I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]}{|I|}.
  \]

  For the affine family, define

  \[
  \phi_\alpha(\theta):=F_0(\theta)+\langle\alpha,F(\theta)\rangle,
  \qquad
  H_\theta:=\{a\in\mathbb R^N:F_0(\theta)+\langle a,F(\theta)\rangle=0\},
  \]

  and

  \[
  C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
  :=\sup_{\mu\in\mathcal D}
  \sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ |I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}.
  \]

  Whenever \(F_j(\theta)\neq0\), index
  \(\beta=(\beta_i)_{i\neq j}\in[-R,R]^{N-1}\) by the nonpivot coordinates and define

  \[
  T_j(\theta,\beta)
  :=-\frac{F_0(\theta)}{F_j(\theta)}
  -\sum_{i\neq j}\beta_i\frac{F_i(\theta)}{F_j(\theta)}.
  \]

  Let \(\Psi_j(\theta,\beta)\in\mathbb R^N\) insert \(T_j(\theta,\beta)\) in coordinate \(j\) and insert
  \(\beta_i\) in coordinate \(i\neq j\). Then
  \(|\det D\Psi_j|=|\partial_\theta T_j|\). This chart is an equivalent local representation of the same affine
  coefficient-space sweep; it is not a separate root theorem.

- Technical assumptions:
  - `assump:parameter-regime` (Static one-dimensional parameter regime):
    \(N\geq1\), \(q\geq0\), \(m\geq0\), \(T>0\), \(R>0\), and \(0<\kappa<\infty\), with nondegenerate compact
    \(\Theta\subseteq[-T,T]\), an open chain domain \(U\supseteq\Theta\), and nonempty
    \(\mathcal D_{N,R,\kappa}\). All presentation degrees, matrix coefficients, and support parameters are finite
    and fixed before a law or interval is selected.
  - `assump:balcan-common-chain` (Balcan common-chain presentation):
    The chain and outputs satisfy the displayed triangular differential equations with
    \(\deg P_j\leq M\) and \(\deg Q_i\leq\Delta\). Thus \(q\) is chain length, \(M\) is chain degree,
    \(\Delta\) is output-function degree, and \(p=1\), exactly as in Balcan--Nguyen--Sharma (2025).
  - `assump:anchored-derivative-closure` (Anchored static derivative certificate):
    There is a fixed \(j_*\in\{1,\ldots,N\}\) such that \(Q_{j_*}\equiv1\), and the supplied polynomial matrix \(B\)
    satisfies the exact identity

    \[
    \widetilde F'(\theta)=B(\theta)\widetilde F(\theta)
    \qquad\text{for every }\theta\in U.
    \]

    In particular \(F_{j_*}\equiv1\), so \(\|F(\theta)\|_2\geq1\). The matrix \(B\), its coefficient list, and
    \(\widehat\Lambda_{B,T}\) are deterministic instance data fixed before \(\alpha\) is sampled. No
    projective-speed, lower-norm beyond the literal anchor, transversality, or swept-area bound is assumed.
  - `assump:cube-density-laws` (Arbitrarily correlated capped joint laws):
    The coefficient vector \(\alpha\) is drawn from an arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\). The only
    distributional inputs are cube support and the full joint-density cap; the coordinates may be arbitrarily
    correlated.

# Formalized Goal

- Goal statement:
  Prove one anchored derivative-closure Pfaffian coefficient-sweep theorem, in exact-goal mode, with all of the
  following inseparable clauses.

  **Static certificate bridge.** Under `assump:parameter-regime`, `assump:balcan-common-chain`, and
  `assump:anchored-derivative-closure`, derive

  \[
  \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}\leq\widehat\Lambda_{B,T}.
  \]

  When \(F_0\equiv0\), let \(B_F\) be the \(N\times N\) block of \(B\) indexed by \(1,\ldots,N\). The closure
  identity then gives \(F'=B_FF\), and the theorem must derive

  \[
  \gamma_F'
  =(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
  \qquad
  \Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
  \]

  **Single affine swept-area bound.** Under all four assumptions, prove simultaneously for every
  \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\) that

  \[
  \begin{aligned}
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  &\leq
  \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
  \,d\mathcal H^{N-1}(a)\,d\theta\\
  &\leq
  \kappa\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}|I|\\
  &=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
  \end{aligned}
  \]

  The second inequality must be derived from the root-section identities and inequalities

  \[
  |F_0(\theta)|=|\langle a,F(\theta)\rangle|
  \leq R\sqrt N\|F(\theta)\|_2,
  \]

  \[
  \|\widetilde F(\theta)\|_2\leq\sqrt{1+NR^2}\|F(\theta)\|_2,
  \qquad
  \|(1,a)\|_2\leq\sqrt{1+NR^2},
  \]

  together with the static certificate bridge and the translated-section estimate

  \[
  \mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
  \leq\sqrt2(2R)^{N-1}.
  \]

  The latter must follow from central maximality for sections of the symmetric cube and Ball's central
  cube-section bound. Consequently,

  \[
  C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
  \leq\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
  \]

  Equivalently, for every measurable partition \(I=\bigsqcup_{j=1}^N E_j\) such that \(F_j\neq0\) on \(E_j\),
  prove from the same coefficient-space area formula that

  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  \leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  \mathbf 1\{|T_j(\theta,\beta)|\leq R\}
  |\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta,
  \]

  and hence the same inequality after dropping the indicator. The proof must use area/coarea with multiplicity,
  first on the exhaustion sets
  \(E_{j,n}:=\{\theta\in E_j:|F_j(\theta)|\geq1/n\}\) and then as \(n\to\infty\), so no uniform pivot margin is
  assumed and tangent and multiple roots are allowed. The coefficient set for which
  \(F_0+\langle a,F\rangle\equiv0\) is empty or a proper affine subspace because \(F_{j_*}\equiv1\), and therefore
  has zero probability under every admissible law; it may not be hidden as an exclusion assumption.

  **Sharper homogeneous source bound.** In the specialization \(F_0\equiv0\), the same area formula, the central
  section geometry, and the derived projective identity must give

  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
  \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
  \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
  \]

  uniformly over every admissible law and positive-length interval, and hence

  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
  \]

  **Exact affine-monic baseline specialization.** For every integer \(d\geq1\), every bounded interval
  \(J\subset\mathbb R\), and every possibly correlated
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) with joint density at most \(\kappa\), specialize the same
  affine theorem on a compact interval \(\Theta\supseteq J\) to

  \[
  F_0(\theta)=\theta^d,
  \qquad
  F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
  \qquad
  p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
  \]

  This presentation has

  \[
  q=0,\quad M=0,\quad\Delta=d,\quad N=d,\quad m=0,\quad A=(2R)^d\kappa,
  \qquad
  \widehat\Lambda_{B,T}=\left(\sum_{k=1}^{d}k^2\right)^{1/2},
  \]

  where \(B\) is the constant derivative-shift matrix of the augmented monomial tuple. The anchor is
  \(F_1\equiv1\), and the deterministic leading coefficient remains outside the \(d\)-dimensional random vector.
  For \(d\geq2\), use the pivot \(\alpha_0\) on \(J\cap\{|\theta|\leq1\}\) and the pivot
  \(\alpha_{d-1}\) on \(J\cap\{|\theta|>1\}\). The corresponding maps are

  \[
  T_1(\theta,\beta)=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
  \qquad
  T_d(\theta,\beta)=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
  \]

  and the theorem must derive

  \[
  |\partial_\theta T_1|
  \leq d+R\sum_{k=1}^{d-1}k
  =d+\frac{Rd(d-1)}2
  \qquad(|\theta|\leq1),
  \]

  \[
  |\partial_\theta T_d|
  \leq1+R\sum_{k=0}^{d-2}(d-1-k)
  =1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2
  \qquad(|\theta|>1).
  \]

  For \(d=1\), use the sole pivot \(\alpha_0\) on all of \(J\), for which
  \(|\partial_\theta T_1|=1\). Dropping the chart indicator and integrating the remaining \(d-1\) coordinates over
  their cube must make this same affine sweep theorem yield exactly

  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
  \leq\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)|J|.
  \]

  This recovery may not use an independent citation/proof of the polynomial theorem or a fictitious random
  leading coordinate.

  **Counter-example 1 scale audit.** For \(0<\delta\leq1\),
  \(\Theta=[-1,1]\), \(F_0=0\), and \(F=(1,\theta/\delta)\), record

  \[
  q=0,\quad M=0,\quad\Delta=1,\quad N=2,\quad m=0,
  \qquad
  \widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta,
  \]

  where the constant certificate has the single nonzero derivative entry \(1/\delta\). With \(R=1\),
  \(\kappa=1/4\), and \(A=1\), the homogeneous conclusion gives
  \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq1/\delta\). The proof must also verify for the uniform law on
  \([-1,1]^2\) that

  \[
  \Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
  =\frac{\epsilon}{4\delta}
  \qquad(0<\epsilon\leq\delta),
  \]

  so the declared coefficient height quantitatively records the necessary \(1/\delta\) scale.

  Every displayed constant is literal, with no hidden constants and no confidence parameter. The probability mode
  is ordinary probability for each fixed law; the interval mode is uniform over all positive-length subintervals;
  and all vector, operator, and Frobenius norms are Euclidean. The fixed instance data are
  \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B)\), while \(\mu\) and \(I\) range over their suprema. The exposed bound
  depends linearly on the explicit coefficient height \(\widehat\Lambda_{B,T}\); once that supplied certificate is
  fixed, its additional dependence on \(q,M,\Delta\) is exactly degree zero, and no dependence is suppressed.

# Note

- Rigor:
  This is an unconditional exact-goal formalization. **Source alignment:** it preserves the Balcan
  \(q,\Delta,M,p=1\) convention, arbitrary correlated full joint densities on the coefficient cube,
  all-law/all-positive-length-interval uniformity, explicit \(N,R,\kappa,A\) and certificate dependence,
  quantitative accounting for Counter-example 1, and exact internal affine recovery of Theorem 2 without a
  singular random leading coordinate. It makes a full claim only for the declared anchored derivative-closed
  Pfaffian dictionary and does not assert that every unrestricted Pfaffian presentation admits such a polynomial
  derivative certificate. **Progress type:** `full`. **Materiality:** the theorem resolves Gap 2 on a nontrivial
  normalization class by deriving projective and affine sweep conditioning from raw static representation
  coefficients, while its own coefficient-space area formula supplies the exact source polynomial baseline.
  **Parent foundation papers:** Edelman--Kostlan, *How Many Zeros of a Random Polynomial Are Real?*
  (DOI:10.1090/S0273-0979-1995-00571-9), and Balcan--Dick--Pegden, *Semi-bandit Optimization in the Dispersed
  Setting* (arXiv:1904.09014); the section estimate uses Ball's cube-slicing theorem. **Assumption support:**
  `assump:parameter-regime` is the source's compact one-dimensional static regime;
  `assump:balcan-common-chain` is Balcan--Nguyen--Sharma (2025), Definitions 2--4, specialized to \(p=1\);
  `assump:cube-density-laws` is the source law class, with arbitrary-density sweep geometry supported by
  Edelman--Kostlan and correlated affine coefficients supported by Balcan--Dick--Pegden; and the novel
  `assump:anchored-derivative-closure` is directly verified by the branch examples
  \((0,1,\theta/\delta)\), augmented monomial tuples \((\theta^d,\ldots,1)\), exponential dictionaries
  \((0,1,e^{b_1\theta},\ldots,e^{b_s\theta})\), and exponential-polynomial dictionaries
  \((0,1,\theta^k e^{b_i\theta})_{i,k}\), whose certificate matrices are respectively a constant shear, a
  nilpotent shift, diagonal, and block-Jordan. The coefficient-evaluation, projective-speed, root-section,
  translated-section, swept-area, and pivot bounds are all derived proof obligations, not assumptions.
