# Formalized Setting

- Basic setup:
  Fix the natural logarithm \(\log\), and fix
  \[
  \log^* t:=\min\{r\in\mathbb N_0:\log_2^{(r)}(t)\le 1\}.
  \]
  Here \(\log_2^{(0)}(t):=t\), and \(\log_2^{(r)}\) is the \(r\)-fold iterate of the base-two logarithm for \(r\ge1\).
  Let \(X\) be an arbitrary instance space and let \(C\subseteq\{0,1\}^X\) be a binary concept class. A partition \(\mathcal P\) of \(X\) is *Cartesian for \(C\)* if, with \(C_B:=\{c|_B:c\in C\}\), the restriction map
  \[
  c\longmapsto (c|_B)_{B\in\mathcal P}
  \]
  is a bijection from \(C\) onto \(\prod_{B\in\mathcal P}C_B\). A Cartesian partition is *finest* if it refines every Cartesian partition of \(X\); it is then canonical up to relabeling of its blocks.

  Under `assump:canonical-product` and `assump:vc-one-factors`, write the canonical partition as
  \(X=\bigsqcup_{i=1}^kX_i\), put
  \[
  C_i:=\{c|_{X_i}:c\in C\},\qquad d_i:=\operatorname{LD}(C_i),\qquad
  s_i:=1+\log^*(d_i+1),
  \]
  and define the intrinsic direct-sum quantity and its normalized factor weights by
  \[
  M_{\oplus}(C):=\sum_{i=1}^k s_i,
  \qquad
  \pi_i:=\frac{s_i}{M_{\oplus}(C)}.
  \]
  For each candidate global sample size \(n\in\mathbb N:=\{1,2,\ldots\}\), define
  \[
  m_{n,i}:=\max\{8,\lceil4n\pi_i\rceil\}.
  \]

  The learning model is realizable, distribution-free binary PAC learning. A target is an arbitrary tuple \(c=(c_1,\ldots,c_k)\in\prod_iC_i=C\). An arbitrary probability distribution \(D\) on \(X\) generates i.i.d. labeled examples \((x,c(x))\); denote the law of one such labeled example by \(D_c\). Write \(\rho_i:=D(X_i)\), and, only when \(\rho_i>0\), write \(D_i:=D(\,\cdot\mid X_i)\). No lower bound, balance condition, product structure, finite-support condition, or public knowledge is imposed on the \(\rho_i\) or the \(D_i\). For any measurable binary hypothesis \(h:X\to\{0,1\}\), possibly improper, define its distributional 0-1 risk by
  \[
  R_D(h,c):=\Pr_{x\sim D}[h(x)\ne c(x)]
  =\sum_{i=1}^k\rho_i\Pr_{x\sim D_i}[h(x)\ne c_i(x)],
  \]
  where a term with \(\rho_i=0\) is zero.

  Datasets have a fixed size and use replacement adjacency: two members of \((X\times\{0,1\})^n\) are adjacent if one record is replaced. A randomized learner \(A\) is \((\varepsilon,\delta)\)-DP if for all adjacent datasets \(S,S'\) (including nonrealizable datasets) and all measurable output events \(E\),
  \[
  \Pr[A(S)\in E]\le e^\varepsilon\Pr[A(S')\in E]+\delta.
  \]
  The learner may be computationally unbounded and may output any measurable \(h:X\to\{0,1\}\). Fix global accuracy and failure probability
  \[
  \alpha_0=\beta_0=\frac1{16}.
  \]
  Define \(\mathrm{SC}_{\varepsilon,\delta}(C)\) as the least \(n\in\mathbb N\) for which some \((\varepsilon,\delta)\)-DP learner \(A\) satisfies, simultaneously for every \(c\in C\) and every distribution \(D\) on \(X\),
  \[
  \Pr_{S\sim D_c^n,\,A}\!\left[R_D(A(S),c)\le\frac1{16}\right]\ge\frac{15}{16},
  \]
  where the probability is over the i.i.d. sample and all learner randomness.

  For the intended upper-bound learner, fix exactly
  \[
  \alpha_{\mathrm{fac}}=\frac1{64},\qquad
  \beta_{\mathrm{fac}}=\frac1{4096},\qquad
  \varepsilon_{\mathrm{fac}}=\frac\varepsilon2,qquad
  \delta_{\mathrm{fac}}=\frac\delta2.
  \]
  Let \(K>0\) be the universal constant in Yan's improper VC-one learner bound, and set, for every factor,
  \[
  q_i:=\left\lceil
  K\frac{s_i\log^2\!\bigl(s_i/(\varepsilon_{\mathrm{fac}}\beta_{\mathrm{fac}}\delta_{\mathrm{fac}})\bigr)}{\varepsilon_{\mathrm{fac}}}
  \frac{48}{\alpha_{\mathrm{fac}}}
  \left(10\log\frac{48e}{\alpha_{\mathrm{fac}}}+\log\frac{5}{\beta_{\mathrm{fac}}}\right)
  \right\rceil.
  \]
  Fix an arbitrary padding record \(z_i^\circ\in X_i\times\{0,1\}\), independently of the target and data. Given a global sample \(S\), let \(T_i(S)\) be the size-\(q_i\) factor multiset formed from the first \(q_i\) records of \(S\) whose instance lies in \(X_i\), in sample order, padding a shortage with copies of \(z_i^\circ\). Let \(A_i^{\mathrm{Yan}}\) denote the Yan factor mechanism instantiated on \(C_i\) at \((\varepsilon_{\mathrm{fac}},\delta_{\mathrm{fac}})\) with quota \(q_i\), subject to the source-interface verification below. Using independent internal randomness across factors, set \(h_i(S):=A_i^{\mathrm{Yan}}(T_i(S))\) and define the piecewise learner
  \[
  A_n^{\oplus}(S)(x):=h_i(S)(x)\qquad\text{for the unique }i\text{ with }x\in X_i.
  \]
  Factor utility may be invoked only on the event that \(T_i(S)\) contains no padding.

  The following are named proof obligations, not assumptions: (i) the structural identities \(\operatorname{VC}(C)=k\), \(\operatorname{LD}(C)=\sum_i d_i\), and, when all factors are finite, \(\log|C|=\sum_i\log|C_i|\); (ii) exact instantiation of Yan's factor theorem at the displayed quota; (iii) the routed-input adjacency coupling and two-affected-factor privacy composition; (iv) the arbitrary-block-mass occupancy and weighted-utility argument, without a balance assumption or a union bound over all factors; and (v) the unrestricted-improper lower direct-sum reduction, including independent factor targets, the adversarial block mixture with masses \(\pi_i\), the factor-four overflow buffer, and the one-global-row-per-factor-record coupling. None of these derived facts may be promoted to a theorem-facing assumption.

- Technical assumptions:
  - `assump:canonical-product` (Canonical disjoint Cartesian factorization): \(C\) admits a finite finest Cartesian partition \(\mathcal P_C=\{X_1,\ldots,X_k\}\) of the whole domain \(X\), with \(1\le k<\infty\), and the restriction map identifies \(C\) with the full product \(\prod_{i=1}^kC_i\). This is a static, directly checkable property of \(C\), independent of any learner, dataset, event, or privacy divergence.
  - `assump:vc-one-factors` (Nonconstant finite-Littlestone VC-one factors): Every \(C_i\) is nonconstant, satisfies \(\operatorname{VC}(C_i)=1\), and has finite \(d_i=\operatorname{LD}(C_i)\). No ordering, finite cardinality, properness, or computational assumption is imposed.
  - `assump:global-privacy-range` (Approximate-DP parameter range): The global privacy parameters satisfy \(0<\varepsilon\le1/10\) and \(0<\delta<1\). This condition governs the upper and lower clauses; the upper clause has no further restriction on \(\delta\).
  - `assump:candidate-delta-budget` (Candidate-wise lower-bound budget): For a particular candidate \(n\in\mathbb N\), the lower-bound clause is asserted only if
    \[
    0<\delta\le
    \min\left\{
    \frac{1}{n\log(n+1)},
    \min_{1\le i\le k}\frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
    \right\},
    \]
    where \(c_\delta>0\) is the universal constant from the Alon--Livni--Malliaris--Moran unrestricted lower-bound interface. This is a primitive numerical condition checked separately at each candidate \(n\), not a uniform-in-\(n\) schedule and not an assumption about a realized or generated object.

# Formalized Goal

- Goal statement:
  Prove that there exist universal constants \(C_{\mathrm{up}}\ge1\), \(C_{\mathrm{quota}}\ge1\), and \(c_{\mathrm{low}}>0\) such that, uniformly over every \(C\) satisfying `assump:canonical-product` and `assump:vc-one-factors` and every \((\varepsilon,\delta)\) satisfying `assump:global-privacy-range`, the following single conditional two-sided direct-sum theorem holds.

  **Upper clause.** For every \(0<\delta<1\), the routed-and-padded piecewise learner \(A_n^{\oplus}\) is \((\varepsilon,\delta)\)-DP and, for every integer
  \[
  n\ge \left\lceil C_{\mathrm{up}}\sum_{i=1}^kq_i\right\rceil,
  \]
  has distributional 0-1 risk at most \(1/16\) with probability at least \(15/16\), simultaneously in the PAC sense for every target \(c\in C\) and arbitrary distribution \(D\) on \(X\). Consequently,
  \[
  \mathrm{SC}_{\varepsilon,\delta}(C)
  \le \left\lceil C_{\mathrm{up}}\sum_{i=1}^kq_i\right\rceil,
  \qquad
  \sum_{i=1}^kq_i
  \le C_{\mathrm{quota}}\frac{M_{\oplus}(C)}{\varepsilon}
  \log^2\!\frac{eM_{\oplus}(C)}{\varepsilon\delta}.
  \]

  **Candidate-wise lower clause.** For every candidate integer \(n\ge1\) satisfying `assump:candidate-delta-budget`, every \((\varepsilon,\delta)\)-DP learner, including every joint, improper, and computationally unbounded learner, that attains the above \((1/16,1/16)\) PAC utility guarantee with \(n\) samples must satisfy
  \[
  n\ge c_{\mathrm{low}}M_{\oplus}(C).
  \]
  Equivalently, if such a candidate \(n<c_{\mathrm{low}}M_{\oplus}(C)\), then for every \((\varepsilon,\delta)\)-DP learner using \(n\) samples there exist a full-product target \(c\in C\) and an allowed block-mixture distribution \(D\) on \(X\), with adversarial conditional distributions and \(D(X_i)=\pi_i\), for which
  \[
  \Pr_{S\sim D_c^n,\,A}\!\left[R_D(A(S),c)>\frac1{16}\right]>\frac1{16}.
  \]
  In particular, if `assump:candidate-delta-budget` holds at \(n_*=\mathrm{SC}_{\varepsilon,\delta}(C)\), then
  \[
  c_{\mathrm{low}}M_{\oplus}(C)
  \le \mathrm{SC}_{\varepsilon,\delta}(C)
  \le \left\lceil C_{\mathrm{up}}\sum_{i=1}^kq_i\right\rceil
  \le O\!\left(
  \frac{M_{\oplus}(C)}{\varepsilon}
  \log^2\!\frac{eM_{\oplus}(C)}{\varepsilon\delta}
  \right).
  \]

  **Explicit-rate interpretation.** The exposed variables are \(k\), \((d_i,s_i,q_i)_{i=1}^k\), \(M_{\oplus}(C)\), \(\varepsilon\), \(\delta\), and the lower-bound candidate \(n\) through \((m_{n,i})_i\). The only fixed quantities are the displayed accuracy/confidence constants, factor constants, logarithm convention, and universal source constants \(K,c_\delta\); no limiting regime is implicit. All hidden constants are universal and may depend only on those fixed numerical conventions, never on \(C,X,k,d_i,|C_i|,D,\rho_i,n,\varepsilon\), or \(\delta\). The utility probability mode is high probability over the i.i.d. sample and learner randomness, the privacy inequality is pointwise in adjacent datasets, and the lower clause is an impossibility statement rather than an expectation bound. The sample-complexity mode is fixed-sample: the upper clause is finite-sample and the lower clause quantifies over every admissible candidate \(n\), with no horizon-uniform or asymptotic upgrade. The risk metric throughout is distributional 0-1 risk \(R_D\), not empirical risk, parameter error, or another norm. There is no hidden dependence on factor cardinalities, and \(\operatorname{VC}(C)\), \(\operatorname{LD}(C)\), \(\log^*\operatorname{LD}(C)\), and \(\log|C|\) are not identified with one another.

# Note

- Rigor:
  **Source alignment:** The contract preserves realizable distribution-free approximate central DP, arbitrary distributions, unrestricted improper learners, \(0<\varepsilon\le1/10\), and the source convention \(\delta=o(1/n)\) through the explicit candidate-wise lower condition. The Cartesian VC-one factorization is an explicit target-changing restriction; classes with a higher-VC indecomposable factor remain open.

  **Progress type:** `conditional`.

  **Materiality:** The target is a class-intrinsic near-matching characterization for all finite-block canonical products of arbitrary VC-one factors, with no finite-cardinality requirement, arbitrarily large factor count \(k\), and heterogeneous factor Littlestone dimensions. It tests both the derived identity \(\operatorname{VC}(C)=k\) and whether privacy overhead adds as \(\sum_i(1+\log^*(d_i+1))\), between the general lower baseline \(\operatorname{VC}(C)+\log^*\operatorname{LD}(C)\) and \(\operatorname{VC}(C)(1+\log^*\operatorname{LD}(C))\), while \(\log|C|\) may be much larger and is not conflated with either quantity.

  **Assumption support:** `assump:canonical-product` is the branch's novel example-verified structural restriction, directly checkable for products of finite-chain thresholds, products of point functions, and heterogeneous products containing both; disjointness and full Cartesian equality are separately visible in its statement. `assump:vc-one-factors` is literature-aligned with Yan's VC-one upper interface and the Alon--Livni--Malliaris--Moran finite-Littlestone lower interface. `assump:global-privacy-range` is the source's approximate-DP regime and the range in which privacy monotonicity transfers the Alon et al. \(\varepsilon=0.1\) lower bound. `assump:candidate-delta-budget` is exactly the conjunction of the source-scale \(1/(n\log(n+1))\) condition and the Alon et al. condition at each actual factor budget \(m_{n,i}\). Yan's factor learner, fixed-length padding, two-block composition, and the one-row lower simulation are mechanism sources or proof obligations, not extra assumptions; the latter transfer is stress-tested on the same threshold, point-function, and heterogeneous products but must be proved for the full stated scope.
