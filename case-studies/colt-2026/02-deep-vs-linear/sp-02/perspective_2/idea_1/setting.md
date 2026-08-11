# Formalized Setting

- Basic setup:
  Let \(\mathcal X\) be an arbitrary domain and let \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\). Write \(\mathcal P(\mathcal X)\) for all probability laws on \(\mathcal X\), with the standard convention that protocol functions have whatever measurability is needed for their displayed expectations. For \(\mathcal D\in\mathcal P(\mathcal X)\), \(h\in\mathcal H\), and \(g:\mathcal X\to\{-1,+1\}\), set
  \[
  \mathcal L_{\mathcal D,h}(g)
  :=\Pr_{x\sim\mathcal D}[g(x)\ne h(x)].
  \]
  Exact sign representation means strict separation: \(g(x)=\operatorname{sign}(f(x))\) is used only when \(f(x)\ne0\), equivalently \(g(x)f(x)>0\). Thus
  \[
  \operatorname{dc}(\mathcal H)
  :=\inf\!\left\{d\in\mathbb N_0:\ \exists\varphi:\mathcal X\to\mathbb R^d\ \ \forall h\in\mathcal H\ \exists w_h\in\mathbb R^d\ \ \forall x\in\mathcal X,
  \ h(x)\langle w_h,\varphi(x)\rangle>0\right\}.
  \]

  Represent all randomness of the fixed learner \(A\) by one seed \(U\sim\mu_A\) on a seed space \(\Omega_A\). At a nonterminal node \(\nu=(u,t,v_{<t})\), with \(1\le t\le m\), \(A\) chooses
  \[
  q_\nu=q_t^{u,v_{<t}}:\mathcal X\times\{-1,+1\}\to[-1,1].
  \]
  It may stop after any \(T\le m\); a terminal transcript \(\ell=(u,v_{\le T})\) has a binary output predictor \(g_\ell:\mathcal X\to\{-1,+1\}\). A deterministic response strategy observes the public query-response transcript and supplies the next real answer. It is \((\mathcal D,h,\tau)\)-legal if, on every branch it induces,
  \[
  \left|v_t-\mathbb E_{x\sim\mathcal D}q_t^{u,v_{<t}}(x,h(x))\right|\le\tau
  \qquad(1\le t\le T).
  \]
  Denote the set of all such strategies by \(\mathfrak R_\tau(\mathcal D,h)\), and denote the resulting output by \(\widehat h_{A,U,R}\). The strategy is adversarial and is not averaged; the only expectation in the learning premise is over \(U\).

  The response-complete transcript incidence operator is a derived deterministic object. Put \(V_\tau=[-1-\tau,1+\tau]\), which contains every legal answer, and include every undiscretized prefix in \(V_\tau^{t-1}\) at which \(A\) has not stopped. Let \(\mathsf N_A\) be the resulting set of nonterminal nodes, \(\mathsf L_A\) the set of terminal transcripts, and
  \[
  \mathsf I_A=(\mathsf N_A\times\{-1,+1\})\mathbin{\dot\cup}\mathsf L_A.
  \]
  Define \(\Psi_A:\mathcal X\to[-1,1]^{\mathsf I_A}\) coordinatewise by
  \[
  [\Psi_A(x)]_{(\nu,y)}=q_\nu(x,y),
  \qquad
  [\Psi_A(x)]_\ell=g_\ell(x).
  \]
  Hence both label channels at every possible node and the prediction at every possible leaf are present simultaneously. The entire operator is determined by \(A,m,\tau\); it is not indexed by \(\mathcal D\), a target, a chosen response path, or a realized seed. For finite \(S\subseteq\mathcal X\), write
  \(E_{A,S}:=\operatorname{span}\{\Psi_A(x):x\in S\}\).

  The following are derived proof obligations, not theorem-facing assumptions.

  1. **Robust point-mass separation.** Specializing the learning premise to \(\delta_x\) must first give, for every \(h\in\mathcal H\), \(x\in\mathcal X\), and every \(R\in\mathfrak R_\tau(\delta_x,h)\),
     \[
     \mathbb E_U\!\left[h(x)\widehat h_{A,U,R}(x)\right]
     \ge 1-2\varepsilon>\frac12.
     \]
     From this uniform payoff, a response-tree/minimax argument must derive, for every finite \(S\subseteq\mathcal X\), a simultaneous robust separation system \(\{\lambda_{h,S}:h\in\mathcal H\}\subseteq E_{A,S}^*\) satisfying
     \[
     h(x)\lambda_{h,S}(\Psi_A(x))>0
     \qquad(h\in\mathcal H,\ x\in S).
     \]
     This derivation must use all legal response branches and the full seed distribution; it may not select a favorable response sequence or fix a coin outcome. Targets may select different separating functionals, but \(\Psi_A\) is common.

  2. **Tolerance-energy separator-preserving compression.** For a node \(\nu\) and point \(x\), let
     \[
     I_{\nu,x,y}:=[q_\nu(x,y)-\tau,q_\nu(x,y)+\tau],
     \qquad
     \Delta(\nu,x):=|q_\nu(x,+1)-q_\nu(x,-1)|.
     \]
     Thus the two label-conditioned tolerance intervals are disjoint exactly when \(\Delta(\nu,x)>2\tau\). For every finite \(S\), one must construct from the response-complete operator a target-independent linear quotient \(\pi_S:E_{A,S}\to V_S\) such that every robust separator descends, namely \(\lambda_{h,S}=\bar\lambda_{h,S}\circ\pi_S\) for some \(\bar\lambda_{h,S}\in V_S^*\), and prove
     \[
     d_S:=\dim V_S\le C\frac{m}{\tau^2}
     \]
     with one universal \(C\). The proposed rank proof must expose a set of retained independent directions and, apart from at most a universal constant number of base directions (absorbed because \(m/\tau^2\ge1\)), assign each direction \(j\) to a query round with a label-channel gap \(\Delta_j\ge c_0\tau\) while proving
     \[
     \sum_j\Delta_j^2\le C_0m
     \]
     for universal \(c_0,C_0>0\), where each charged \(\Delta_j\) is a value of \(\Delta(\nu_j,x_j)\) at a node-point pair whose two intervals are separated. Both the existence of this charging scheme and the energy inequality are conclusions to prove from the bounded-query, tolerance, and transcript structure; neither the quotient nor its rank bound is assumed.

  3. **Arbitrary-domain simultaneous exactification.** On every finite restriction, the preceding quotient gives the common map \(x\mapsto\pi_S(\Psi_A(x))\) and the descended functionals give strict signs for all restrictions \(h|_S\). One must prove a finite-restriction/compactness passage, using the strict transcript certificate before compression, that yields one map \(\varphi_A:\mathcal X\to\mathbb R^d\) with the same universal dimension bound and exact signs simultaneously for every \(h\in\mathcal H\). The passage must retain a deterministic choice based only on \(A,m,\tau\) and may not introduce finite-domain encoding, response discretization, continuity, a quantitative representation-margin premise, or dependence on any selected target, distribution, oracle branch, or seed.

- Technical assumptions:
  - `assump:parameter-regime` (Primitive parameter regime): \(m\in\mathbb N\) with \(m\ge1\), \(\tau\in(0,1]\), and \(\varepsilon\in[0,1/4)\).
  - `assump:adaptive-sq-interface` (Fixed randomized adaptive unrestricted-SQ interface): One fixed learner \(A\), specified before \(\mathcal D\), \(h\), and the response strategy, uses the seed law \(\mu_A\), may choose each query from the preceding public responses, makes at most \(m\) adaptive queries of the bounded form defined above, and returns a predictor in \(\{-1,+1\}^{\mathcal X}\). No restriction is placed on the query family, seed space, adaptivity, or response precision beyond bounded queries and tolerance legality.
  - `assump:universal-adversarial-guarantee` (Universal adversarial-tolerance learnability): For every \(\mathcal D\in\mathcal P(\mathcal X)\), every \(h\in\mathcal H\), and every \(R\in\mathfrak R_\tau(\mathcal D,h)\),
    \[
    \mathbb E_{U\sim\mu_A}\mathcal L_{\mathcal D,h}(\widehat h_{A,U,R})\le\varepsilon.
    \]
    The expectation is solely over the learner seed. In particular, the guarantee is uniform over all tolerance-valid adaptive response strategies rather than averaged over or conditioned on an oracle strategy.

# Formalized Goal

- Goal statement:
  Prove that there is a numerical universal constant \(C<\infty\) such that, for every \(\mathcal X,\mathcal H,m,\tau,\varepsilon\) and fixed learner \(A\) satisfying `assump:parameter-regime`, `assump:adaptive-sq-interface`, and `assump:universal-adversarial-guarantee`, there exist an integer \(d\le C m/\tau^2\), one deterministic feature map \(\varphi_A:\mathcal X\to\mathbb R^d\), and vectors \(w_h\in\mathbb R^d\) for \(h\in\mathcal H\) such that
  \[
  h(x)\langle w_h,\varphi_A(x)\rangle>0
  \qquad\text{for every }h\in\mathcal H\text{ and }x\in\mathcal X.
  \]
  Equivalently, \(h(x)=\operatorname{sign}(\langle w_h,\varphi_A(x)\rangle)\) everywhere and \(\operatorname{dc}(\mathcal H)\le C m/\tau^2\). The map is a deterministic function of \(A,m,\tau\), shared by the entire class, and independent of \(\mathcal D\), the selected target, all tolerance-valid replies, and the realized learner coins; only \(w_h\) may depend on \(h\). The conclusion is unconditional, deterministic, fixed-horizon, and exact-sign, with no probability or representation-margin qualification. The constant \(C\) has no dependence on \(\mathcal X,\mathcal H,m,\tau,\varepsilon,\mathcal D,h\), oracle responses, or learner seeds.

# Note

- Rigor:
  Assumption support: `assump:parameter-regime`, `assump:adaptive-sq-interface`, and `assump:universal-adversarial-guarantee` are the primitive parameter, protocol, and universal-learning premises of the COLT 2026 parent open problem; the adversarial response-tree convention is the standard unrestricted-SQ convention and is aligned with the minimax/adversarial-oracle framework of *A General Characterization of the Statistical Query Complexity* (COLT 2017). The response-complete operator, robust separator, tolerance-energy quotient, and compactness extension are explicitly derived obligations, not additional assumptions. Their novel interfaces have only the idea's recorded checks on the constant class, the two-point all-labelings class with coordinate queries, and its randomized query-order variant; those examples do not supply the general proof. Source alignment: all arbitrary-domain, universal-distribution/target, adversarial-tolerance, randomized-adaptive, expectation-over-coins, exact deterministic common-map, and \(C m/\tau^2\) requirements are preserved, with no domain-size or encoding dependence. Progress type: full. Materiality: proving the three derived obligations closes the source's exact deterministic exactification bottleneck rather than a probabilistic, confident, average-error, fixed-distribution, or domain-dependent relaxation.
