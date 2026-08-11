# Formalized Setting

- Basic setup:
  Fix integers \(N\geq 1\) and \(q\geq 0\), a center \(c\in\mathbb R\), a half-width \(h>0\), and
  \[
  \Theta=[c-h,c+h],\qquad x=x(\theta):=\frac{\theta-c}{h}\in[-1,1].
  \]
  The ambient parameter dimension in the Balcan--Nguyen--Sharma convention is \(p=1\). For a polynomial \(S\), let \(\|\operatorname{coeff}(S)\|_1\) denote the sum of the absolute values of its coefficients in the standard monomial basis.

  Let \(\eta=(\eta_1,\ldots,\eta_q)\) be a common triangular chain on \([-1,1]\), with chain polynomials \(P_j(x,y_1,\ldots,y_j)\), and let \(Q_i(x,y_1,\ldots,y_q)\), \(1\leq i\leq N\), be output polynomials. In the exact Balcan--Nguyen--Sharma convention,
  \[
  M:=\max_{1\leq j\leq q}\deg P_j\quad(q\geq1),\qquad
  \Delta:=\max_{1\leq i\leq N}\deg Q_i,
  \]
  where degrees are total degrees; set \(M=0\) when \(q=0\). Define
  \[
  G_i(x):=Q_i(x,\eta_1(x),\ldots,\eta_q(x)),\qquad
  F_i(\theta):=G_i(x(\theta)),
  \]
  and
  \[
  B_P:=
  \begin{cases}
  \max_{1\leq j\leq q}\|\operatorname{coeff}(P_j)\|_1,&q\geq1,\\
  0,&q=0,
  \end{cases}
  \qquad
  B_Q:=\max_{1\leq i\leq N}\|\operatorname{coeff}(Q_i)\|_1.
  \]
  The change of variable from \(x\) to \(\theta\) leaves \(q,M,\Delta\) unchanged and gives \(d/d\theta=h^{-1}d/dx\).

  Write \(F=(F_1,\ldots,F_N)\), and let \(I_N\) denote the \(N\times N\) identity matrix. Under the literal anchor below, define on all of \(\Theta\)
  \[
  \gamma_F(\theta):=\frac{F(\theta)}{\|F(\theta)\|_2},\qquad
  \Gamma_{\mathrm{proj}}(F):=\operatorname*{ess\,sup}_{\theta\in\Theta}
  \|\gamma_F'(\theta)\|_2.
  \]
  This merely defines the derived projective-speed quantity; neither its finiteness nor an upper bound on it is assumed.

  For \(R>0\) and \(0<\kappa<\infty\), let \(\mathcal D_{N,R,\kappa}\) be the class of all Borel probability laws \(\mu\) on \(\mathbb R^N\) having a Lebesgue density \(f_\mu\) supported on \([-R,R]^N\) and satisfying \(\|f_\mu\|_\infty\leq\kappa\). No coordinate-independence condition is imposed. Assume this class is nonempty (which forces \((2R)^N\kappa\geq1\)), set \(\mathcal D:=\mathcal D_{N,R,\kappa}\), and define
  \[
  A:=(2R)^N\kappa
  \]
  and define the all-law, all-interval constant
  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  :=\sup_{\mu\in\mathcal D_{N,R,\kappa}}
  \sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ |I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]}{|I|}.
  \]

  For the affine interface, let \(F_0\in C^1(\Theta)\) be deterministic and set
  \[
  \phi^{\mathrm{aff}}_\alpha(\theta):=F_0(\theta)+\langle\alpha,F(\theta)\rangle.
  \]
  Given an interval \(I\subseteq\Theta\) and a measurable partition \(I=\bigsqcup_{j=1}^N E_j\) with \(F_j(\theta)\neq0\) on \(E_j\), index \(\beta\in[-R,R]^{N-1}\) by the coordinates \(i\neq j\) and define
  \[
  T_j(\theta,\beta)
  :=-\frac{F_0(\theta)}{F_j(\theta)}
    -\sum_{i\neq j}\beta_i\frac{F_i(\theta)}{F_j(\theta)},
  \]
  \[
  \partial_\theta T_j(\theta,\beta)
  =-\frac{\bigl(F_0'(\theta)+\sum_{i\neq j}\beta_iF_i'(\theta)\bigr)F_j(\theta)
  -\bigl(F_0(\theta)+\sum_{i\neq j}\beta_iF_i(\theta)\bigr)F_j'(\theta)}{F_j(\theta)^2}.
  \]
  The exhaustion sets \(E_{j,m}:=\{\theta\in E_j:|F_j(\theta)|\geq1/m\}\) are part of the chart construction; no uniform lower bound on \(|F_j|\) is assumed.

- Technical assumptions:
  - `assump:parameter-regime` (Primitive parameter regime): \(N\geq1\), \(q\geq0\), \(h>0\), \(R>0\), and \(0<\kappa<\infty\), with \(\Theta=[c-h,c+h]\) and nonempty \(\mathcal D_{N,R,\kappa}\). All polynomial degrees and coefficient budgets above are finite static presentation data.
  - `assump:balcan-common-chain` (Balcan common-chain presentation): Each \(\eta_j\in C^1([-1,1])\) satisfies
    \[
    \eta_j'(x)=P_j(x,\eta_1(x),\ldots,\eta_j(x)),\qquad \deg P_j\leq M,
    \]
    and every output has the common-chain representation
    \[
    G_i(x)=Q_i(x,\eta_1(x),\ldots,\eta_q(x)),\qquad \deg Q_i\leq\Delta.
    \]
    Thus \(q\) is chain length, \(M\) is chain degree, \(\Delta\) is output-function degree, and \(p=1\), exactly as in Balcan--Nguyen--Sharma (2025).
  - `assump:anchored-unit-range` (Literal anchor and unit-range certificate): For every \(x\in[-1,1]\), \(|\eta_j(x)|\leq1\) for all \(j\), and \(Q_1\equiv1\). Consequently \(G_1\equiv F_1\equiv1\) and \(\|G(x)\|_2=\|F(\theta)\|_2\geq1\), but no separate norm-margin or projective-speed assumption is made.
  - `assump:cube-density-laws` (Arbitrarily correlated capped joint laws): The random vector \(\alpha\) is drawn from an arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\). Only cube support and the full joint-density cap are available; the coordinates may be arbitrarily correlated.
  - `assump:affine-chart-data` (Deterministic affine offset and pivot cover): Whenever the affine clause is invoked, \(F_0\in C^1(\Theta)\), and the selected measurable sets \(E_1,\ldots,E_N\) form the displayed partition with \(F_j\neq0\) on \(E_j\). This is a primitive, pre-trajectory chart condition. Because \(F_1\equiv1\), the fallback partition \(E_1=I\), \(E_j=\varnothing\) for \(j>1\), is always available.

# Formalized Goal

- Goal statement:
  Prove one anchored coefficient-normalized Pfaffian hyperplane-sweep theorem, in exact-goal mode, with all of the following inseparable clauses.

  **Primitive-presentation bridge.** Under `assump:balcan-common-chain` and `assump:anchored-unit-range`, prove pointwise for every \(x\in[-1,1]\) and \(1\leq i\leq N\) that
  \[
  |G_i'(x)|\leq \Delta B_Q(1+qB_P).
  \]
  Using
  \[
  \frac{d}{dx}\frac{G}{\|G\|_2}
  =\frac{(I_N-\gamma_G\gamma_G^{\mathsf T})G'}{\|G\|_2},
  \qquad \gamma_G:=G/\|G\|_2,
  \]
  derive, rather than assume,
  \[
  \Gamma_{\mathrm{proj}}(F)
  \leq\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
  \]

  **Central swept-hyperplane bound.** Under `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, and `assump:cube-density-laws`, prove simultaneously for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\) that
  \[
  \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
  \langle\alpha,F(\theta)\rangle=0\right]
  \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
  \leq \frac{A N\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|,
  \]
  and hence
  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
  \leq\frac{A N\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
  \]
  The theorem must obtain the first inequality from the area formula for the union of the central sections \(\gamma_F(\theta)^\perp\) and Ball's sharp cube-section bound, with union-area multiplicity handling tangent and multiple roots. Coefficients for which the linear combination is identically zero form a proper linear subspace and therefore have zero probability under every admissible law.

  **Affine chart bound.** Under `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:cube-density-laws`, and `assump:affine-chart-data`, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\), prove
  \[
  \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
  F_0(\theta)+\langle\alpha,F(\theta)\rangle=0\right]
  \leq
  \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  |\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta.
  \]
  The inequality is understood in the extended-real sense if a displayed integral diverges. It must follow from the area formula for \((\theta,\beta)\mapsto(\beta,T_j(\theta,\beta))\), with \(T_j\) inserted in coordinate \(j\), on the exhausting sets \(E_{j,m}\), followed by \(m\to\infty\); it may not assume transversality, simple roots, a uniform pivot margin, or coordinate independence. Coefficients for which the affine combination is identically zero form a proper affine subspace (or the set is empty) and have zero admissible-law probability.

  **Exact affine-monic baseline specialization.** For every integer \(d\geq1\), every bounded interval \(J\subset\mathbb R\), and every possibly correlated \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) with joint density at most \(\kappa\), choose a nondegenerate \(\Theta=[c-h,c+h]\) containing \(J\) and specialize the affine clause to
  \[
  F_0(\theta)=\theta^d,\qquad F_{k+1}(\theta)=\theta^k\ (0\leq k\leq d-1),\qquad
  p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
  \]
  In normalized coordinates these outputs are \(Q_0(x)=(c+hx)^d\) and \(Q_{k+1}(x)=(c+hx)^k\). For \(d\geq2\), use the pivot sets
  \[
  E_1=J\cap\{|\theta|\leq1\},\qquad
  E_d=J\cap\{|\theta|>1\},\qquad E_j=\varnothing\ (j\notin\{1,d\});
  \]
  for \(d=1\), use \(E_1=J\). Prove the chart-velocity estimates
  \[
  |\partial_\theta T_1|
  \leq d+R\sum_{k=1}^{d-1}k
  =d+\frac{Rd(d-1)}2
  \quad (|\theta|\leq1),
  \]
  \[
  |\partial_\theta T_d|
  \leq1+R\sum_{k=0}^{d-2}(d-1-k)
  =1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2
  \quad (|\theta|>1),
  \]
  with the second display replaced by \(|\partial_\theta T_1|=1\) when \(d=1\). The same affine theorem must then yield, without an independent citation or a singular random leading-coordinate construction, exactly
  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
  \leq\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)|J|.
  \]
  In Balcan--Nguyen--Sharma notation this specialization has \(q=0\), \(M=0\), \(N=d\), \(A=(2R)^d\kappa\), and augmented output degree
  \(
  \Delta_{\mathrm{aug}}:=\max\{\deg F_0,\deg F_1,\ldots,\deg F_d\}=d
  \);
  the deterministic monic coefficient remains outside the \(d\)-dimensional random vector.

  **Counter-example 1 scale audit.** For \(\Theta=[-1,1]\), \(G(x)=(1,x/\delta)\), and \(0<\delta\leq1\), record \(h=1\), \(q=0\), \(M=0\), \(\Delta=1\), \(N=2\), and \(B_Q=1/\delta\). Thus the theorem's explicit upper constant has order \(1/\delta\). For the uniform law on \([-1,1]^2\), for which \(\kappa=1/4\) and \(A=1\), also verify
  \[
  \Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
  =\frac{\epsilon}{4\delta}\qquad(0<\epsilon\leq\delta),
  \]
  so \(C^{\mathrm{Pf}}_{\mathcal D}\geq1/(4\delta)\) and the declared presentation data register the necessary metric scale.

  All displayed constants are literal: there are no hidden constants and no confidence parameter. The probability mode is ordinary probability for each fixed law, the interval mode is uniform over all positive-length subintervals, the feature presentation is deterministic, and the projective norm is Euclidean. The full presentation tuple is fixed while \(\mu\) and \(I\) range over their suprema. The exposed central-instance tuple is
  \((q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1})\); \(M\) has explicit degree-zero dependence because the unit-box coefficient envelope bounds a degree-\(M\) chain polynomial by its coefficient \(\ell_1\)-budget.

# Note

- Rigor:
  This is an unconditional exact-goal formalization. **Source alignment:** it preserves the Balcan \(q,\Delta,M\) convention, arbitrary correlated full joint densities, all-law/all-positive-length-interval uniformity, explicit \(N,R,\kappa,A\) and conditioning dependence, Counter-example 1's metric scale, and exact internal affine recovery of Theorem 2 without a singular random leading coordinate. The full claim is for the declared anchored, unit-range, coefficient-controlled normalization and does not assert that every raw Pfaffian presentation can be converted to this form with polynomial budgets. **Progress type:** `full`. **Materiality:** it proves polynomial projective-conditioning control from raw chain-range, coefficient-budget, and domain-scale data in a nontrivial Pfaffian regime, and the same theorem supplies the mandatory exact polynomial baseline. **Parent foundation papers:** Edelman--Kostlan, *How Many Zeros of a Random Polynomial Are Real?* (DOI:10.1090/S0273-0979-1995-00571-9), and Balcan--Dick--Pegden, *Semi-bandit Optimization in the Dispersed Setting* (arXiv:1904.09014); the central section bound uses Ball's cube-slicing theorem. **Assumption support:** `assump:parameter-regime` is the branch's exact affine normalization and the source's compact one-dimensional regime; `assump:balcan-common-chain` is Balcan--Nguyen--Sharma (2025), Definitions 2--4, specialized to \(p=1\); `assump:cube-density-laws` is the source law class, with arbitrary-density geometry supported by Edelman--Kostlan and correlated affine coefficients supported by Balcan--Dick--Pegden; `assump:affine-chart-data` is the coordinate-pivot/area mechanism inherited from Balcan--Dick--Pegden; and the novel `assump:anchored-unit-range` is directly verified by the branch examples \((1,x,\ldots,x^d)\) (\(q=0,B_Q=1\)), \((1,x/\delta)\) (\(B_Q=1/\delta\)), normalized exponentials \((1,e^{b_i x-|b_i|})_i\) (\(B_P=\max_i|b_i|\)), and logistic dictionaries \((1,(1+e^{-b_i x})^{-1})_i\) (\(B_P\leq2\max_i|b_i|\)). The derivative, projective-speed, and anti-concentration bounds are explicitly derived obligations, not assumptions.
