# Formalized Setting

- Basic setup:
  Let \(\mathcal X\) be an arbitrary, possibly empty or infinite, domain and let
  \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\). Write \(\mathcal P(\mathcal X)\)
  for the probability laws on \(\mathcal X\); in particular, every finitely
  supported law and every point mass on a nonempty domain is available. As is
  standard in the SQ model, all protocol maps are assumed measurable whenever
  needed for the expectations below. For \(\mathcal D\in\mathcal P(\mathcal X)\),
  \(h\in\mathcal H\), and \(g:\mathcal X\to\{-1,+1\}\), define
  \[
  \mathcal L_{\mathcal D,h}(g)
  :=\Pr_{x\sim\mathcal D}[g(x)\ne h(x)].
  \]
  Use exact sign representation only with nonzero scores: a map
  \(\varphi:\mathcal X\to\mathbb R^d\) represents \(h\) with weight
  \(w_h\in\mathbb R^d\) when
  \(h(x)\langle w_h,\varphi(x)\rangle>0\) for every \(x\). Thus, with the
  infimum of the empty set understood as \(+\infty\),
  \[
  \operatorname{dc}(\mathcal H)
  :=\inf\!\left\{d\in\mathbb N_0:
  \begin{array}{l}
  \exists\varphi:\mathcal X\to\mathbb R^d\ \ \forall h\in\mathcal H\ 
  \exists w_h\in\mathbb R^d\ \ \forall x\in\mathcal X,\\[-2pt]
  h(x)\langle w_h,\varphi(x)\rangle>0
  \end{array}\right\}.
  \]

  Represent all randomness of one fixed learner \(A\) by a seed
  \(U\sim\mu_A\) on a seed space \(\Omega_A\). Conditional on \(U=u\), at
  each round \(t\le m\), the learner either stops or, as a function of \(u\)
  and the preceding public query-response transcript, selects an unrestricted
  bounded query
  \[
  q_t:\mathcal X\times\{-1,+1\}\to[-1,1].
  \]
  After at most \(m\) queries it returns a binary predictor. The seed includes
  all query-selection and output randomness.

  Put \(I_\tau=[-1-\tau,1+\tau]\). A **deterministic complete response rule**
  \(R\) assigns a value in \(I_\tau\) to every public query-bearing history
  \((q_1,v_1,\ldots,q_{t-1},v_{t-1},q_t)\) admitted by \(A\), including
  histories not reached for a particular seed or preceding reply sequence.
  The rule observes the public queries and replies, but not the learner's
  hidden seed except through that public transcript. Let
  \(\mathfrak R_A^{\mathrm{all}}\) be the set of all such rules. When \(m=0\),
  this set contains the unique empty response rule. For \(u\in\Omega_A\) and
  \(R\in\mathfrak R_A^{\mathrm{all}}\), let
  \(g_{u,R}:\mathcal X\to\{-1,+1\}\) be the terminal predictor obtained by
  running \(A\) with seed \(u\) against \(R\).

  For \(\mathcal D\in\mathcal P(\mathcal X)\) and \(h\in\mathcal H\), call
  \(R\) **\((\mathcal D,h,\tau)\)-valid** if, for every seed and every round
  reached by the interaction of that seed with \(R\), its reply obeys
  \[
  \left|v_t-
  \mathbb E_{x\sim\mathcal D}q_t(x,h(x))\right|\le\tau.
  \]
  Denote the set of valid complete rules by
  \(\mathfrak R_{A,\tau}(\mathcal D,h)\). This is an adaptive adversarial
  policy class: the premise below is pointwise in \(R\), and no distribution
  over responses is introduced. Any randomized response policy is covered
  conditionally on each realization of its own randomness. The exact-center
  rule
  \[
  R^0_{\mathcal D,h}(q_1,v_1,\ldots,q_t)
  :=\mathbb E_{x\sim\mathcal D}q_t(x,h(x))
  \]
  is a deterministic member of
  \(\mathfrak R_{A,\tau}(\mathcal D,h)\) for every \(\tau>0\). It is used
  only as one rule covered by the every-valid-policy premise, not as a change
  to an exact-expectation oracle model.

  For every complete response rule define its pre-instance, seed-averaged
  terminal response
  \[
  F_R(x):=\mathbb E_{U\sim\mu_A}[g_{U,R}(x)]\in[-1,1],
  \qquad x\in\mathcal X.
  \]
  Define the static mean-response space and rank over **all** complete response
  rules by
  \[
  V_A:=\operatorname{span}_{\mathbb R}
  \{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}
  \subseteq\mathbb R^{\mathcal X},
  \qquad
  r_A:=\dim V_A\in\mathbb N_0\cup\{\infty\}.
  \]
  These objects are fixed by \(A\), \(\mu_A\), \(m\), \(\tau\), and the
  complete response interface before any \(\mathcal D\), target, valid policy,
  or realized seed is selected. In particular, \(r_A\) is not the span or the
  cardinality of the individual predictors \(g_{u,R}\).

  Under `assump:mean-response-rank`, choose a basis
  \(\psi_1,\ldots,\psi_{r_A}\) of \(V_A\), with the empty basis when
  \(r_A=0\), and define the common deterministic coordinate map
  \[
  \varphi_A(x):=(\psi_1(x),\ldots,\psi_{r_A}(x))
  \in\mathbb R^{r_A}.
  \]
  Also define, in the unique finite-dimensional topology of \(V_A\),
  \[
  K_A:=\overline{\operatorname{conv}}
  \{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}\subseteq V_A,
  \qquad \rho:=1-2\varepsilon.
  \]
  Both \(K_A\) and \(\varphi_A\) are fixed before the learning instance; only
  the eventual coordinates representing a target may depend on that target.

  The following are derived proof obligations, not theorem-facing assumptions.

  1. **Fixed-space compactness.** If \(r_A>0\), choose
     \(z_1,\ldots,z_{r_A}\in\mathcal X\) so that evaluation
     \(E_Z(f)=(f(z_1),\ldots,f(z_{r_A}))\) is injective on \(V_A\). The bound
     \(|F_R(z_i)|\le1\) makes the convex hull bounded in the norm
     \(\|f\|_Z=\|E_Z(f)\|_\infty\); hence \(K_A\) is compact and convex in the
     one fixed space \(V_A\). Every point-evaluation map \(f\mapsto f(x)\) is
     continuous on this finite-dimensional space. For \(r_A=0\), the same
     conclusions hold with \(V_A=K_A=\{0\}\) and the empty evaluation map.

  2. **Exact-center correlation.** For every \(h\in\mathcal H\) and
     \(\mathcal D\in\mathcal P(\mathcal X)\), applying the universal guarantee
     to \(R^0_{\mathcal D,h}\) must give
     \[
     \mathbb E_{x\sim\mathcal D}
       [h(x)F_{R^0_{\mathcal D,h}}(x)]
     =1-2\,\mathbb E_U
       \mathcal L_{\mathcal D,h}(g_{U,R^0_{\mathcal D,h}})
     \ge\rho>\frac12.
     \]
     The averaging here is solely over the original learner seed.

  3. **Finite minimax in the fixed body.** For each \(h\in\mathcal H\) and
     each nonempty finite \(S\subseteq\mathcal X\), let \(\Delta(S)\) be the
     probability simplex on \(S\). The preceding correlation bound, applied
     to every \(p\in\Delta(S)\), and finite-dimensional minimax must yield
     \[
     \begin{aligned}
     \max_{f\in K_A}\min_{x\in S}h(x)f(x)
     &=\max_{f\in K_A}\min_{p\in\Delta(S)}
       \sum_{x\in S}p(x)h(x)f(x)\\
     &=\min_{p\in\Delta(S)}\max_{f\in K_A}
       \sum_{x\in S}p(x)h(x)f(x)
     \ge\rho.
     \end{aligned}
     \]
     Thus some \(f_{h,S}\in K_A\) has
     \(h(x)f_{h,S}(x)\ge\rho\) simultaneously for all \(x\in S\). This step
     may vary the exact-center rule with \(p\), but it may not vary \(K_A\),
     \(V_A\), or the eventual feature map.

  4. **Arbitrary-domain simultaneous exactification.** For fixed \(h\), the
     closed subsets
     \(C_{h,x}:=\{f\in K_A:h(x)f(x)\ge\rho\}\) have the finite-intersection
     property by the preceding finite minimax statement. Compactness of the
     already fixed body \(K_A\), rather than compactness of unrelated
     finite-restriction maps, must therefore give
     \(f_h\in\bigcap_{x\in\mathcal X}C_{h,x}\). Writing
     \(f_h=\sum_{j=1}^{r_A}(w_h)_j\psi_j\) then gives
     \(\langle w_h,\varphi_A(x)\rangle=f_h(x)\) and hence the exact signs.
     No finite-domain encoding, response discretization, representation-margin
     premise, pathwise energy estimate, common-kernel assumption, or choice of
     a favorable seed or valid response rule may enter this passage.

  The boundary cases are part of the same contract. Empty \(S\) creates no
  constraint. If \(\mathcal X=\varnothing\) or \(\mathcal H=\varnothing\),
  the sign requirement is vacuous. If both are nonempty, the point-mass form
  of the exact-center correlation implies \(r_A\ge1\), so the case \(r_A=0\)
  cannot satisfy all premises. The case \(m=0\) uses the unique empty response
  rule and requires no query-round argument. No upper bound on \(\tau>0\) is
  imposed, and \(\varepsilon=0\), \(B=1\), and \(k=1\) are included.

- Technical assumptions:
  - `assump:parameter-regime` (Primitive parameter regime):
    \(m\in\mathbb N_0\), \(\tau>0\), \(\varepsilon\in[0,1/4)\), and
    \(B,k\in\mathbb R\) with \(B\ge1\) and \(k\ge1\). The numerical constants
    \(B,k\) are fixed before the learner instance and independently of
    \(\mathcal X,\mathcal H,m,\tau,\varepsilon,\mathcal D,h\), response rules,
    and learner seeds. Consequently \(\rho=1-2\varepsilon\in(1/2,1]\).
  - `assump:adaptive-sq-interface` (Fixed randomized adaptive unrestricted-SQ
    interface): One learner \(A\), fixed before \(\mathcal D\), \(h\), and the
    response policy, has seed law \(\mu_A\), makes at most \(m\) adaptive
    queries of the bounded unrestricted form defined above, may use the full
    preceding real-valued public transcript, and returns a binary predictor.
    Its interaction with every deterministic complete response rule is
    well-defined, and all seed averages and displayed population expectations
    exist. No restriction is imposed on the query family, adaptivity, response
    precision, seed space, or terminal-predictor span beyond these interface
    requirements.
  - `assump:universal-adversarial-guarantee` (Every-valid-policy universal
    guarantee): For every \(\mathcal D\in\mathcal P(\mathcal X)\), every
    \(h\in\mathcal H\), and every
    \(R\in\mathfrak R_{A,\tau}(\mathcal D,h)\),
    \[
    \mathbb E_{U\sim\mu_A}
      \mathcal L_{\mathcal D,h}(g_{U,R})\le\varepsilon.
    \]
    The response rule is universally quantified and adversarial; the sole
    averaging is over \(U\). In particular, the premise neither selects a
    favorable rule nor averages over valid replies.
  - `assump:mean-response-rank` (Static polynomial mean-response-rank
    certificate): The rank over all deterministic complete response rules is
    finite and satisfies
    \[
    r_A=\dim\operatorname{span}_{\mathbb R}
       \{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}
    \le B\bigl(1+m/\tau^2\bigr)^k.
    \]
    This primitive protocol-family certificate is fixed before
    \(\mathcal D,h\), the selected valid rule, and the learner seed. It
    constrains only the seed-averaged terminal responses \(F_R\), not the
    cardinality or span of the individual terminal predictors, and does not
    itself assume or encode a representation of \(\mathcal H\).

# Formalized Goal

- Goal statement:
  Fix numerical \(B\ge1\) and \(k\ge1\). For every arbitrary domain
  \(\mathcal X\), binary class \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\),
  parameters \(m,\tau,\varepsilon\), and fixed learner \(A\) satisfying
  `assump:parameter-regime`, `assump:adaptive-sq-interface`,
  `assump:universal-adversarial-guarantee`, and
  `assump:mean-response-rank`, prove that the basis of \(V_A\) can be chosen
  once, independently of every learning instance, so that the deterministic
  map \(\varphi_A:\mathcal X\to\mathbb R^{r_A}\) has the following property:
  for every \(h\in\mathcal H\), there exists \(w_h\in\mathbb R^{r_A}\) with
  \[
  h(x)\langle w_h,\varphi_A(x)\rangle
  \ge 1-2\varepsilon=\rho>\frac12>0
  \qquad\text{for every }x\in\mathcal X.
  \]
  Hence every score has the exact deterministic sign \(h(x)\), with no tie,
  and
  \[
  \operatorname{dc}(\mathcal H)
  \le r_A
  \le B\bigl(1+m/\tau^2\bigr)^k.
  \]
  The feature map is determined only by the fixed learner, its seed law, the
  complete response interface, and a fixed basis choice; it is shared by the
  whole class and is independent of \(\mathcal D\), the target selected for a
  learning instance, every tolerance-valid response policy, and the realized
  learner coins. Only \(w_h\) may depend on \(h\). The conclusion is a
  conditional, deterministic, arbitrary-domain, exact-sign, fixed-parameter
  theorem with no probability qualification, no domain-size dependence, and
  no hidden constants beyond the displayed fixed \(B,k\).

# Note

- Rigor:
  Parent foundation papers: *A General Characterization of the Statistical
  Query Complexity* (COLT 2017) and *Limitations of Learning via Embeddings in
  Euclidean Half Spaces* (JMLR 2002). Transfer map: the formalization preserves
  the randomized adaptive unrestricted-SQ protocol, adversarial tolerance,
  every-distribution/target/policy quantifiers, seed-only expectation, arbitrary
  domains, and one deterministic exact common map; it explicitly changes the
  failed unconditional linear target to a polynomial theorem conditional on a
  static seed-averaged response-rank certificate. Assumption support:
  `assump:parameter-regime`, `assump:adaptive-sq-interface`, and
  `assump:universal-adversarial-guarantee` are the primitive source-SQ regime
  and standard adversarial-oracle semantics, aligned with the COLT 2017
  response-tree/minimax framework. `assump:mean-response-rank` is the approved
  novel primitive, checked in the idea on (i) an \(N\)-point, \(N\ge5\),
  singleton-target zero-query random-one-point-flip protocol with error
  \(1/N\), mean-response rank one, and terminal span \(N\); (ii) the two
  constant targets, the query \(q(x,y)=y\) with \(\tau<1\), and the same
  random flip, again with error \(1/N\) and mean-response rank one; and (iii)
  the fixed \(r\)-cell labeling class on an \(N\)-point domain with \(r=m\)
  cell queries, error at most \(r\tau+1/N\le\varepsilon\), mean-response rank
  at most \(r\), and a terminal catalog as large as \(N2^r\). In all three,
  the mean-response rank remains uniformly controlled although the terminal
  catalog or span can grow with the domain. The compact
  body, exact-center correlation, minimax separator, finite-intersection
  passage, and target weights are derived obligations, not additional
  assumptions. Source alignment: the exact deterministic and domain-independent
  target is retained, while the added rank certificate and polynomial rather
  than linear dependence are explicit contract changes; deriving the rank law
  from \(m,\tau\) alone and recovering the universal linear rate remain open.
  Progress type: conditional. Materiality: this proves the source-endorsed
  domain-independent polynomial special case and localizes the remaining
  exactification question to the strictly weaker static span of seed-averaged
  responses, without replacing exact dimension by a probabilistic, confident,
  average-error, fixed-distribution, or finite-domain notion.
