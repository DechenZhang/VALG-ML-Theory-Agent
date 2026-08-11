# Formalized Setting

- Basic setup:
  - Write \([q]=\{1,\ldots,q\}\) for a positive integer \(q\). For integers \(k\ge 2\) and \(N\ge 2\), let
    \[
    X_{k,N}=[k]\times[N],\qquad
    \tau_t(x)=\mathbf 1\{x\ge t\}\quad(t\in[N+1],\ x\in[N]),
    \]
    and define the tagged threshold-product class
    \[
    C_{k,N}=\left\{c_{\boldsymbol t}:\boldsymbol t=(t_1,\ldots,t_k)\in[N+1]^k\right\},
    \qquad c_{\boldsymbol t}(i,x)=\tau_{t_i}(x).
    \]
    The output space is the full improper hypothesis space \(\mathcal H_{k,N}=\{0,1\}^{X_{k,N}}\). No properness, computational, or representation restriction is imposed on a learner.
  - For a probability distribution \(P\) on \(X_{k,N}\), a target \(c_{\boldsymbol t}\in C_{k,N}\), and \(h\in\mathcal H_{k,N}\), define the population 0-1 risk
    \[
    R_P(h,c_{\boldsymbol t})
      =\Pr_{Z\sim P}\!\left[h(Z)\ne c_{\boldsymbol t}(Z)\right].
    \]
    Let \(P^{c_{\boldsymbol t}}\) denote the realizable labeled law of \((Z,c_{\boldsymbol t}(Z))\) for \(Z\sim P\). Thus \(S\sim(P^{c_{\boldsymbol t}})^n\) always means \(n\) i.i.d. labeled examples.
  - A candidate learner at sample size \(n\) is any randomized map
    \[
    A:(X_{k,N}\times\{0,1\})^n\longrightarrow\mathcal H_{k,N}.
    \]
    Two size-\(n\) labeled datasets are adjacent, written \(S\simeq S'\), when they differ in at most one row by replacement. Differential privacy refers to this central one-record adjacency relation.
  - Use the natural logarithm for every unadorned \(\log\). Define
    \[
    \log_2^* u=\min\{j\in\mathbb Z_{\ge0}:\log_2^{(j)}u\le1\},
    \qquad
    m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\}.
    \]
    Define the tower convention exactly by
    \[
    \operatorname{Tow}_2(1)=2,
    \qquad
    \operatorname{Tow}_2(r+1)=2^{\operatorname{Tow}_2(r)}.
    \]
  - The construction has the exact structural identities
    \[
    \operatorname{VC}(C_{k,N})=k,
    \qquad
    \operatorname{LD}(C_{k,N})=k\lfloor\log_2(N+1)\rfloor,
    \qquad
    |C_{k,N}|=(N+1)^k.
    \]
    These are consequences to be justified from the displayed class definition, not theorem-facing assumptions. On the tower diagonal \(k=r\), \(N=\operatorname{Tow}_2(r)\), \(r\ge2\), they give
    \[
    \operatorname{VC}=r,
    \quad
    \operatorname{LD}=r\operatorname{Tow}_2(r-1),
    \quad
    \log_2^*\operatorname{LD}=\Theta(r),
    \quad
    \log|C|=\Theta\!\left(r\operatorname{Tow}_2(r-1)\right),
    \]
    while \(\log_2^*N=r\).
  - The distribution-free quantifier below is universal over every fixed \(P\) and every fixed \(c_{\boldsymbol t}\). It is distinct from the intended proof's choice of a hard distribution. For that proof only, a one-block realizable instance is a pair \((t,Q)\), with \(t\in[N+1]\) and \(Q\) a probability distribution on \([N]\). If a hard prior \(\mu_{N,m_{n,k}}\) over such pairs is derived at the simulated budget \(m_{n,k}\), then independently drawn pairs \((t_i,Q_i)_{i=1}^k\) induce the fixed realizable product instance
    \[
    P_{\boldsymbol Q}(i,x)=\frac1k Q_i(x),
    \qquad c_{\boldsymbol t}(i,x)=\tau_{t_i}(x).
    \]
    Averaging over such analysis-side draws is permitted only after applying the PAC premise to each fixed realization and must ultimately yield a fixed hard instance.
  - No hard prior, minimax bridge, hidden-coordinate tensorization, decoder guarantee, exchangeability identity, overflow estimate, or input-to-simulation coupling is assumed. They are derived proof obligations. In particular, a proof must: derive a finite minimax prior from the unrestricted one-block threshold lower bound after converting its constant-failure guarantee to expected loss; hide the input block at an independent \(J\sim\operatorname{Unif}[k]\) and derive the average-block error relation for the restriction \(h_J(x)=h(J,x)\); prove the \(\operatorname{Bin}(n,1/k)\) usage law and an overflow loss small enough at budget \(m_{n,k}\); and construct a simulation in which each input record enters at most one output row, proving that adjacent input datasets induce adjacent simulated product datasets. The checks at \(k=2\) and \(k=3\) are feasibility witnesses for this proposed bridge, not assumptions replacing its proof.
  - Quantitative mode: the exposed variables are \(k,N,n,\varepsilon,\delta\), with \(m_{n,k}\), \(\operatorname{VC}\), \(\operatorname{LD}\), \(\log_2^*\), and \(|C|\) displayed explicitly. The theorem is a fixed-size, pointwise-in-candidate-\(n\), nonasymptotic lower-bound implication; \(n\) is neither expected nor a stopping time, and the privacy restriction is evaluated at that same candidate \(n\). PAC probability is over the i.i.d. sample and the learner's internal randomness, whereas the lower-bound implication itself is deterministic. The metric is population 0-1 risk, not empirical or excess risk. On the diagonal, asymptotics are as \(r\to\infty\) with the tower/log conventions and all theorem constants fixed; every hidden \(\Omega\) or \(\Theta\) constant is independent of \(r,k,N,n,\varepsilon,\delta\).
- Technical assumptions:
  - `assump:candidate-regime` (Primitive candidate-size regime): Relative to fixed positive constants \(c_\delta,\varepsilon_0\) and an integer \(N_0\ge2\), the candidate parameters obey
    \[
    k\ge2,\quad N\ge N_0,\quad n\in\mathbb Z_{\ge1},\quad
    0<\varepsilon\le\varepsilon_0,
    \]
    and
    \[
    0<\delta\le
    \min\left\{
      \frac{1}{n\log(n+1)},
      \frac{c_\delta}{m_{n,k}^2\log(m_{n,k}+1)}
    \right\}.
    \]
    This is a primitive scalar condition evaluated before the algorithm is run. The first term enforces the source convention \(\delta\ll1/n\); the second is the cited one-block threshold regime at the simulated budget and is not replaced by a stronger uniform condition in \(n\).
  - `assump:central-dp` (Central approximate differential privacy): For every \(S\simeq S'\) in \((X_{k,N}\times\{0,1\})^n\) and every event \(E\subseteq\mathcal H_{k,N}\),
    \[
    \Pr[A(S)\in E]\le e^\varepsilon\Pr[A(S')\in E]+\delta,
    \]
    where the probabilities are over only the internal randomness of \(A\).
  - `assump:distribution-free-realizable-pac` (Arbitrary-distribution realizable PAC guarantee): Relative to fixed constants \(\alpha_0,\beta_0\in(0,1/2)\), for every \(\boldsymbol t\in[N+1]^k\) and every probability distribution \(P\) on \(X_{k,N}\),
    \[
    \Pr_{\substack{S\sim(P^{c_{\boldsymbol t}})^n\\ A}}
      \left[R_P\bigl(A(S),c_{\boldsymbol t}\bigr)\le\alpha_0\right]
      \ge1-\beta_0.
    \]
    This premise includes no distributional promise beyond realizability and i.i.d. sampling and applies to arbitrary hypotheses in \(\mathcal H_{k,N}\).

# Formalized Goal

- Goal statement: There exist absolute constants \(a,c_\delta,\varepsilon_0>0\), \(\alpha_0,\beta_0\in(0,1/2)\), and \(N_0\in\mathbb Z_{\ge2}\) such that, for every integer tuple \(k\ge2\), \(N\ge N_0\), \(n\ge1\), every \((\varepsilon,\delta)\) satisfying `assump:candidate-regime`, and every randomized, computationally unrestricted map \(A:(X_{k,N}\times\{0,1\})^n\to\mathcal H_{k,N}\), if \(A\) satisfies `assump:central-dp` and `assump:distribution-free-realizable-pac`, then
  \[
  n\ge a\,k\log_2^*N.
  \]
  The constants are chosen once and for all: \(a\) may depend only on the fixed absolute privacy, accuracy, and confidence constants, and none depends on \(k,N,n,\varepsilon,\delta\). Consequently, for all sufficiently large \(r\), on \(k=r\), \(N=\operatorname{Tow}_2(r)\), the same single theorem gives
  \[
  n=\Omega(r^2)
   =\Omega\!\left(\operatorname{VC}(C_{r,N})\,
                    \log_2^*\operatorname{LD}(C_{r,N})\right).
  \]
  This exceeds by an unbounded factor the existing generic additive lower-bound expression \(\operatorname{VC}+\log_2^*\operatorname{LD}=\Theta(r)\) on this sequence, while remaining far below both \(\log|C|\) and the source milestone \(\operatorname{VC}\,2^{\log_2^*\operatorname{LD}}\).

# Note

- Rigor:
  - Source alignment: the statement preserves realizable distribution-free binary PAC learning, arbitrary improper and computationally unbounded learners, small constant \(\varepsilon\), the explicit \(\delta\ll1/n\) conjunction, fixed accuracy/confidence, and separate \(\operatorname{VC}\), \(\operatorname{LD}\), \(\log^*\operatorname{LD}\), and \(\log|C|\) dependence. The parent foundations are *Private PAC Learning Implies Finite Littlestone Dimension* and *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization*.
  - Progress type: `material_partial`. This is the approved target-changing weakening from a full characterization and from the preferred \(\operatorname{VC}\,2^{\log^*\operatorname{LD}}\) milestone. Materiality comes from the \(\Omega(r^2)\) tower-diagonal lower bound versus the currently verified additive \(\Theta(r)\) lower-bound scale in the same unresolved approximate-DP regime. The remaining source gap is a matching combinatorial measure for every finite-Littlestone class and, within this lower-bound direction, the stronger exponential separation; this result supplies neither a universal upper bound nor the sibling \(\Omega(\log|C|)\) theorem.
  - Assumption support: `assump:candidate-regime` uses the source's standard candidate-size privacy convention together with the parent threshold theorem's literature-derived \(O(1/(m^2\log m))\) regime; `assump:central-dp` is the standard central-DP definition in the source brief; `assump:distribution-free-realizable-pac` is exactly the source's standard realizable arbitrary-distribution PAC model. The cited one-block hard core is the unrestricted improper threshold lower bound calibrated at \(\varepsilon=0.1\), risk \(1/16\), failure probability \(1/16\), and \(\delta=O(1/(m^2\log m))\); it is a proof tool whose hypotheses must be discharged, not an added assumption. There is no novel theorem-facing assumption. Writing \(e_i\) for block \(i\)'s population 0-1 risk, the proposed hidden-coordinate bridge is only example-verified at \(k=2\) (selected error \((e_1+e_2)/2\), usage \(\operatorname{Bin}(n,1/2)\)) and \(k=3\) (selected error \((e_1+e_2+e_3)/3\), usage \(\operatorname{Bin}(n,1/3)\)); its full unrestricted minimax, decoding, exchangeability, overflow, and one-record-coupling claims remain proof obligations.
