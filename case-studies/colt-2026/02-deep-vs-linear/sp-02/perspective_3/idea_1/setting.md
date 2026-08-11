# Formalized Setting

- Basic setup:
  Let \(X\) be an arbitrary domain and let \(H\subseteq\{+1,-1\}^{X}\). All
  expectations below are understood whenever the displayed bounded functions
  are measurable; this convention imposes no finiteness or encoding condition
  on \(X\). For a distribution \(P\) on \(X\), a target \(h\in H\), and a
  binary predictor \(g:X\to\{+1,-1\}\), define
  \[
  L_{P,h}(g):=P\{x:g(x)\ne h(x)\}.
  \]
  For a linear space \(V\subseteq\mathbb R^X\), write
  \[
  h\in\operatorname{Sign}(V)
  \quad\Longleftrightarrow\quad
  \text{there is an }f\in V\text{ such that }h(x)f(x)>0
  \text{ for every }x\in X.
  \]
  Thus no positive uniform margin is required. The deterministic dimension
  complexity is
  \[
  \operatorname{dc}(H):=\min\bigl\{d\in\mathbb N_0:\exists\phi:X\to\mathbb R^d\ 
  \forall h\in H\ \exists w_h\in\mathbb R^d\ 
  \forall x\in X,\ h(x)\langle w_h,\phi(x)\rangle>0\bigr\}.
  \]

  Fix a randomized learner \(A\), a finite query budget \(m\), a tolerance
  \(\tau>0\), and \(0\le\varepsilon<1/4\). Represent all randomness of \(A\)
  by a random tape \(U\) with fixed law \(\nu\). Conditional on \(U=u\), the
  learner is deterministic. At round \(t\), a node is
  \(z=(u,v_{<t})\), where \(v_{<t}\in\mathbb R^{t-1}\) is the complete
  preceding real-valued reply transcript. A nonterminal node carries an
  unrestricted query
  \(q_z:X\times\{+1,-1\}\to[-1,1]\), and a terminal node \(\ell\) carries a
  binary predictor \(g_\ell:X\to\{+1,-1\}\). Leaves may occur at any depth at
  most \(m\); no discretization of the set of nodes or replies is made.

  Every query has the canonical decomposition
  \[
  a_z(x):=\frac{q_z(x,+1)+q_z(x,-1)}2,
  \qquad
  b_z(x):=\frac{q_z(x,+1)-q_z(x,-1)}2,
  \]
  so that \(q_z(x,y)=a_z(x)+y b_z(x)\) and
  \(|a_z(x)|+|b_z(x)|\le 1\) pointwise. For \((P,h)\), define the query center
  and its full legal reply slab by
  \[
  \mu_z(P,h):=\mathbb E_{x\sim P}[a_z(x)+h(x)b_z(x)],
  \qquad
  I_z(P,h):=[\mu_z(P,h)-\tau,\mu_z(P,h)+\tau]\subset\mathbb R.
  \]
  A valid adaptive oracle policy \(\pi=(\pi_t)_{t\le m}\) is nonanticipating:
  after observing the issued query-response history
  \((q_{z_1},v_1,\ldots,q_{z_{t-1}},v_{t-1},q_z)\), it chooses an arbitrary
  \[
  v_t=\pi_t(q_{z_1},v_1,\ldots,q_{z_{t-1}},v_{t-1},q_z)
  \in I_z(P,h).
  \]
  Thus it can react to every revealed randomized query but not to unobserved
  future learner coins. Let \(\ell(u;P,h,\pi)\) be the resulting leaf and
  \(\widehat h_{u;P,h,\pi}:=g_{\ell(u;P,h,\pi)}\). This notation retains all
  continuous replies and all valid policies simultaneously.

  At a common node \(z\), two state pairs \((P,h)\) and \((P',h')\) have
  overlapping slabs exactly when
  \[
  I_z(P,h)\cap I_z(P',h')\ne\varnothing
  \quad\Longleftrightarrow\quad
  |\mu_z(P,h)-\mu_z(P',h')|\le 2\tau.
  \]
  In that case a common reply keeps the two executions at the same next
  transcript node. The following are named *derived proof obligations*, not
  assumptions of the theorem:

  - `obligation:overlap-coupling` (Common-response coupling): Construct the
    comparison executions and one tolerance-valid adaptive policy that uses a
    common reply whenever their current slabs overlap. When overlap fails, the
    proof must expose the corresponding center separation and turn it into a
    normalized node residual; it may not select a favorable reply or replace a
    slab by its exact center.
  - `obligation:pivot-generation` (Strict span growth): From every first
    non-overlap residual, or from a terminal-readout residual when the coupled
    executions reach a leaf, construct an ordinary function
    \(p_j:X\to\mathbb R\) and a common finite list
    \(p_1,\ldots,p_D\). Set \(V_0:=\{0\}\) and
    \(V_j:=\operatorname{span}\{p_1,\ldots,p_j\}\); each accepted pivot must
    satisfy \(p_j\notin V_{j-1}\). The list may be selected using \(H\), the
    full description of \(A\), and the fixed parameters \((m,\tau,\varepsilon)\),
    but after construction it is fixed independently of any theorem-instance
    distribution, target, valid response policy, or sampled learner tape. No
    response-span hypothesis is available.
  - `obligation:branch-uniform-energy` (Tree-energy budget): Produce universal
    constants \(c_0,C_0>0\), nonnegative pivot charges \(\Delta_j\), and a
    response-tree potential such that every independent pivot has
    \(\Delta_j\ge c_0\tau^2\) while the aggregate charge over the common pivot
    list satisfies
    \[
    \sum_{j=1}^{D}\Delta_j\le C_0m.
    \]
    This inequality must be uniform over seeds, continuous transcripts,
    targets, distributions, and valid policies, and must charge depth rather
    than the number of leaves or branches. In particular it must yield
    \(D\le (C_0/c_0)m/\tau^2\) without a domain-size parameter.
  - `obligation:finite-support-separation` (Exact annihilating witness): For
    every finite-dimensional current span \(V_j\) and every
    \(h\notin\operatorname{Sign}(V_j)\), derive, using finite-dimensional
    separation rather than a margin or finite-domain assumption, a
    finite-support distribution \(P\) on \(X\) satisfying
    \[
    \mathbb E_{x\sim P}[h(x)f(x)]=0
    \qquad\text{for every }f\in V_j.
    \]
    The existence of this exact finite-support witness is part of what must be
    proved and is not a primitive condition.
  - `obligation:exact-sign-extraction` (Termination and exactification): Run
    the learner on each separating pair \((P,h)\) with the coupling policy.
    The universal error premise must give
    \[
    \mathbb E_{u\sim\nu}\mathbb E_{x\sim P}
    [h(x)\widehat h_{u;P,h,\pi}(x)]
    =1-2\mathbb E_{u\sim\nu}L_{P,h}
    (\widehat h_{u;P,h,\pi})
    \ge 1-2\varepsilon>\tfrac12,
    \]
    and the proof must convert this strict correlation into the next node or
    terminal pivot whenever \(h\notin\operatorname{Sign}(V_j)\). Combined
    with the energy bound, exhaustion of further pivots must imply
    \(H\subseteq\operatorname{Sign}(V_D)\). Then
    \(\phi(x)=(p_1(x),\ldots,p_D(x))\) must give strict pointwise signs on the
    original arbitrary domain, with neither a uniform margin nor an
    approximate, probabilistic, or distribution-dependent replacement.

- Technical assumptions:
  - `assump:finite-depth-adaptive-tree` (Single randomized adaptive learner):
    The same learner \(A\), independent of \(P\) and \(h\), uses the random
    tape \(U\), may choose each query from the complete preceding real-valued
    transcript, and reaches a binary-predictor leaf after at most \(m<\infty\)
    queries.
  - `assump:bounded-unrestricted-queries` (Bounded unrestricted SQ access):
    Every node query is an arbitrary function
    \(q_z:X\times\{+1,-1\}\to[-1,1]\). No correlational-SQ restriction,
    common finite dictionary, finite encoding, or response-span condition is
    imposed.
  - `assump:full-adversarial-tolerance` (Continuous adversarial replies): For
    each \((P,h)\), the oracle may follow every nonanticipating adaptive policy
    \(\pi\) whose response at each reached node lies anywhere in the full real
    interval \(I_z(P,h)\). The learner is not given exact expectations, and
    neither the policy nor its replies are assumed favorable.
  - `assump:universal-expected-accuracy` (Uniform distribution-target-policy
    guarantee): For every distribution \(P\) on \(X\), every \(h\in H\), and
    every valid adaptive policy \(\pi\),
    \[
    \mathbb E_{u\sim\nu}
    L_{P,h}(\widehat h_{u;P,h,\pi})\le\varepsilon.
    \]
    The expectation is only over the learner's random tape; the quantifiers
    over \(P\), \(h\), and the tolerance-valid policy are universal.
  - `assump:source-parameter-regime` (Open-problem regime): The query budget
    \(m\) is finite, \(\tau>0\), and \(0\le\varepsilon<1/4\). There is no
    assumption on \(|X|\), no finite-support restriction on theorem-instance
    distributions, and no primitive margin parameter.

# Formalized Goal

- Goal statement:
  Prove the following unconditional exact response-tree compression theorem.
  There is a universal numerical constant \(C>0\) such that, for every
  arbitrary domain \(X\), every binary class \(H\subseteq\{+1,-1\}^X\), and
  every single randomized adaptive unrestricted-SQ learner satisfying
  `assump:finite-depth-adaptive-tree`,
  `assump:bounded-unrestricted-queries`,
  `assump:full-adversarial-tolerance`,
  `assump:universal-expected-accuracy`, and
  `assump:source-parameter-regime` simultaneously for every distribution,
  target, and tolerance-valid adaptive reply policy, there exist an integer
  \(d\le C m/\tau^2\) and one deterministic feature map
  \(\phi:X\to\mathbb R^d\), fixed independently of the distribution, target,
  valid replies, response policy, and sampled learner tape, such that
  \[
  \forall h\in H\ \exists w_h\in\mathbb R^d\ \forall x\in X,
  \qquad h(x)\langle w_h,\phi(x)\rangle>0.
  \]
  Equivalently, \(\operatorname{dc}(H)\le C m/\tau^2\). The five
  `obligation:*` items above must be derived from the stated assumptions and
  may not be added as hypotheses or replaced by a conditional, finite-domain,
  fixed-distribution, favorable-oracle, exact-expectation, CSQ, margin, or
  approximate-sign theorem.

# Note

- Rigor:
  Parent lineage is *A General Characterization of the Statistical Query
  Complexity* (COLT 2017) for randomized adaptive adversarial SQ geometry and
  *Limitations of Learning via Embeddings in Euclidean Half Spaces* (JMLR
  2002) for deterministic exact sign representation. Assumption support is:
  `assump:finite-depth-adaptive-tree`,
  `assump:bounded-unrestricted-queries`, and
  `assump:full-adversarial-tolerance` are the standard bounded unrestricted-SQ
  protocol used in the COLT 2017 foundation and the source open problem;
  `assump:universal-expected-accuracy` and
  `assump:source-parameter-regime` are exactly the universal premise and
  parameter range of Open Question 2. There are no novel theorem-facing
  assumptions. The overlap, pivot, energy, separation, and exactification
  mechanisms are novel derived obligations only; their recorded checks are the
  antipodal one-query class, the finite nonadaptive query dictionary, and the
  two-round fixed-dictionary response tree from `idea.md`, not assumptions for
  the general theorem. Source alignment: all arbitrary-domain, common-learner,
  universal distribution/target/policy, unrestricted-query, continuous-reply,
  randomized-adaptivity, exact deterministic-sign, and universal
  \(C m/\tau^2\) requirements are preserved. Progress type: `full`.
  Materiality: proving the branch-uniform energy and exactification obligations
  would close Gap 3 rather than a restricted or relaxed surrogate.
