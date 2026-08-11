# Formalized Setting

- Basic setup:
  Fix an integer $N\ge 1$, a support radius $R>0$, a density cap
  $\kappa\in(0,\infty)$, and a compact interval $\Theta\subset\mathbb R$.
  Let
  \[
  b:\Theta\to\mathbb R,
  \qquad
  F=(F_1,\ldots,F_N):\Theta\to\mathbb R^N,
  \qquad
  \phi_\alpha(\theta)=b(\theta)+\langle\alpha,F(\theta)\rangle.
  \]
  Write $\|x\|_1=\sum_i|x_i|$ and let $|I|$ denote Lebesgue length.
  Define
  \[
  A=(2R)^N\kappa
  \]
  and let $\mathcal D_{N,R,\kappa}$ be the class of all probability laws
  $\mu$ on $\mathbb R^N$ having a Lebesgue density $f_\mu$ such that
  $f_\mu=0$ almost everywhere outside $[-R,R]^N$ and
  $\|f_\mu\|_{L^\infty(\mathbb R^N)}\le\kappa$. No product structure or
  coordinate independence is included in this definition.

  The common one-dimensional Pfaffian representation is
  \[
  \eta_j'(\theta)=P_j(\theta,\eta_1(\theta),\ldots,\eta_j(\theta)),
  \quad 1\le j\le q,
  \]
  with
  \[
  b(\theta)=Q_0(\theta,\eta(\theta)),
  \qquad
  F_i(\theta)=Q_i(\theta,\eta(\theta)),\quad 1\le i\le N.
  \]
  In the Balcan--Nguyen--Sharma convention specialized to ambient parameter
  dimension $p=1$, set
  \[
  M=\max_{1\le j\le q}\deg P_j,
  \qquad
  \Delta_{\rm rnd}=\max_{1\le i\le N}\deg Q_i,
  \qquad
  \Delta_{\rm aff}=\max_{0\le i\le N}\deg Q_i.
  \]
  When $q=0$, the chain is absent and $M=0$. The deterministic offset $b$ is
  counted in $\Delta_{\rm aff}$ but is not a random coefficient.

  The root-feasible set is
  \[
  K_R=\{\theta\in\Theta: |b(\theta)|\le R\|F(\theta)\|_1\}.
  \]
  Indeed, a root $\phi_\alpha(\theta)=0$ with
  $\alpha\in[-R,R]^N$ can occur only at a point of $K_R$. For each coordinate
  $j$, let $U_j=\{\theta\in\Theta:F_j(\theta)\ne0\}$ and, on $U_j$, define
  \[
  V_j(\theta)
  =\left|\left(\frac b{F_j}\right)'(\theta)\right|
   +R\sum_{i\ne j}
    \left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|.
  \]
  Extend $V_j$ by $+\infty$ off $U_j$ for purposes of minimization, and set
  \[
  \Gamma_{\rm piv}(b,F;R)
  =
  \begin{cases}
  \displaystyle\sup_{\theta\in K_R}\min_{1\le j\le N}V_j(\theta),
      &K_R\ne\varnothing,\\[1ex]
  0,&K_R=\varnothing.
  \end{cases}
  \]
  This is a static, pre-sampling conditioning functional. Its finiteness under
  the assumptions below is a conclusion to be established, not an additional
  assumption.

  For the adaptive sweep, let $j_*(\theta)$ be the least index attaining
  $\min_jV_j(\theta)$ on $K_R$, and put
  $E_j=\{\theta\in K_R:j_*(\theta)=j\}$. These sets form a measurable,
  disjoint partition of $K_R$. Use the exhaustion
  $E_{j,m}=E_j\cap\{|F_j|\ge 1/m\}$, $m\ge1$. If
  $\beta=\alpha_{-j}\in[-R,R]^{N-1}$, define on $E_j$
  \[
  T_j(\theta,\beta)
  =-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}.
  \]
  The chart sweep applies the area formula to
  $(\theta,\beta)\mapsto(\beta,T_j(\theta,\beta))$ on
  $E_{j,m}\times[-R,R]^{N-1}$ restricted by $|T_j|\le R$, then lets
  $m\to\infty$. The disjoint partition is in the parameter $\theta$, so its
  target estimate is a sum of chart integrals, not an $N$-fold union bound.

  Two fixed specializations will be used in the goal. For
  $\delta\in(0,1]$, the scale-stress family on $[-1,1]$ is
  \[
  b_\delta(\theta)=0,
  \qquad F_\delta(\theta)=(1,\theta/\delta),
  \qquad R=1.
  \]
  For an integer $d\ge1$, the exact monic family is
  \[
  b_d(\theta)=\theta^d,
  \qquad F_d(\theta)=(1,\theta,\ldots,\theta^{d-1}),
  \qquad
  p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k,
  \]
  where only $\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d$ is random.
  In this specialization, write $V_{\rm const}$ for $V_j$ with pivot
  $F_j(\theta)=1$ and $V_{\rm top}$ for $V_j$ with pivot
  $F_j(\theta)=\theta^{d-1}$ (the two labels name the same coordinate when
  $d=1$).
  For this family $q=0$, $M=0$, $N=d$,
  $\Delta_{\rm rnd}=d-1$, $\Delta_{\rm aff}=d$, and
  $A=(2R)^d\kappa$.

- Technical assumptions:
  - `assump:shared-pfaffian-chain` (Shared one-dimensional Pfaffian regularity):
    The functions $b,F_1,\ldots,F_N$ are $C^1$ on $\Theta$ and have the
    common triangular Pfaffian representation and the
    $(q,M,\Delta_{\rm rnd},\Delta_{\rm aff},p=1)$ degree convention specified
    above.
  - `assump:no-forced-root` (Primitive no-forced-root nondegeneracy): For every
    $\theta\in\Theta$,
    \[
    (b(\theta),F(\theta))\ne(0,0).
    \]
    Equivalently, no parameter value is a root for every coefficient vector.
    Points with $F(\theta)=0$ and $b(\theta)\ne0$ remain admissible and are
    root-free. In particular, $F(\theta)\ne0$ for every $\theta\in K_R$.
  - `assump:joint-density-cap` (Arbitrarily correlated bounded joint density):
    The coefficient law is any $\mu\in\mathcal D_{N,R,\kappa}$. This is a cap
    on the full joint density and imposes no independence assumption.

# Formalized Goal

- Goal statement: Prove the following affine coordinate-pivot sweep theorem
  and its two quantitative specializations under
  `assump:shared-pfaffian-chain`, `assump:no-forced-root`, and
  `assump:joint-density-cap`. First,
  $\Gamma_{\rm piv}(b,F;R)<\infty$, and for every
  $\mu\in\mathcal D_{N,R,\kappa}$ and every interval
  $I\subseteq\Theta$ with $|I|>0$,
  \[
  \Pr_{\alpha\sim\mu}\!\left[
    \exists\theta\in I:\phi_\alpha(\theta)=0
  \right]
  \le
  \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
  =\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
  \]
  Consequently,
  \[
  \sup_{\mu\in\mathcal D_{N,R,\kappa}}
  \sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\|I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
  \phi_\alpha(\theta)=0]}{|I|}
  \le \frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
  \]
  Second, for the scale-stress family,
  \[
  \Gamma_{\rm piv}(b_\delta,F_\delta;1)=\frac1\delta,
  \]
  so the conditioning explicitly records the scale required by
  Counter-example 1. Third, for every $d\ge1$, pivoting on the constant
  coordinate when $|\theta|\le1$ and on the degree-$(d-1)$ coordinate when
  $|\theta|>1$ gives
  \[
  V_{\rm const}(\theta)
  \le d+R\sum_{k=1}^{d-1}k
  =d+\frac{Rd(d-1)}2
  \quad (|\theta|\le1),
  \]
  \[
  V_{\rm top}(\theta)
  \le 1+R\sum_{m=1}^{d-1}\frac{m}{|\theta|^{m+1}}
  \le d+\frac{Rd(d-1)}2
  \quad (|\theta|>1),
  \]
  and hence
  \[
  \Gamma_{\rm piv}(b_d,F_d;R)
  \le d+\frac{Rd(d-1)}2.
  \]
  Applying the same affine theorem, with no random leading coefficient and no
  independence assumption, must therefore yield for every
  $\mu\in\mathcal D_{d,R,\kappa}$ and every bounded interval
  $I\subset\mathbb R$
  \[
  \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:p_\alpha(\theta)=0\right]
  \le
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)|I|,
  \]
  exactly recovering the stated monic-polynomial Theorem 2 constant through
  the general theorem itself. All displayed bounds are ordinary probability
  bounds, uniform over laws and intervals, with no hidden constant and no
  horizon or asymptotic mode. Their exposed quantities are
  $N,R,\kappa,A,\Gamma_{\rm piv}$ and $|I|$; $q,M,\Delta_{\rm rnd}$ and
  $\Delta_{\rm aff}$ are fixed family descriptors and have no direct factor
  in the bound. The norm modes are the $\ell_1$ feasibility test defining
  $K_R$ and the coordinate-ratio variation defining $\Gamma_{\rm piv}$.

# Note

- Rigor: Source alignment is preserved: the contract keeps arbitrary
  correlated joint-density-capped lower coefficients, law- and
  interval-uniformity, the Balcan--Nguyen--Sharma $(q,M,\Delta,p=1)$
  convention, explicit $N,R,\kappa,A$ and conditioning dependence,
  quantitative $\theta/\delta$ scaling, and exact affine monic recovery with
  the deterministic leading term outside the random density. Progress type is
  `material_partial`. Materiality is the direct closure of the selected Gap 3
  interface: one affine theorem treats translated root hyperplanes and yields
  the exact Theorem 2 constant internally. The unresolved full-source gap is
  deliberately retained: no polynomial general-instance bound on
  $\Gamma_{\rm piv}$ in meaningful Pfaffian instance data is claimed.
  Assumption support is as follows: `assump:shared-pfaffian-chain` is the
  source convention of Balcan--Nguyen--Sharma (2025), Definitions 2--4,
  specialized to one variable; `assump:no-forced-root` and the bounded-density
  coordinate-fiber mechanism are inherited from Balcan et al. (2020),
  Theorem 18; and `assump:joint-density-cap` is the source distribution class,
  also permitted without independence by that polynomial root theorem. The
  chart exhaustion and area-formula mechanism are standard and are supported
  by the area/coarea treatment in Azais--Wschebor (2009). The new
  pre-sampling functional $\Gamma_{\rm piv}$ is not an assumed conclusion: its
  two recorded concrete checks are the scale-stress family
  $F_\delta=(1,\theta/\delta)$ and every exact monic family
  $F_d=(1,\theta,\ldots,\theta^{d-1})$.
