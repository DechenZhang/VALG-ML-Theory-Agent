# Formalized Setting

- Basic setup:
  Let \(X\) be an arbitrary domain, equipped with its power-set sigma algebra,
  and let \(H\subseteq\{+1,-1\}^{X}\) be nonempty. All random variables and
  protocol selectors below are assumed measurable; because the relevant
  functions are bounded, every displayed expectation is well defined. For a
  distribution \(D\) on \(X\), a target \(h\in H\), and a binary predictor
  \(g:X\to\{+1,-1\}\), define
  \[
  \mathcal L_{D,h}(g)
  :=D\{x:g(x)\ne h(x)\}
  =\frac{1-\mathbb E_{x\sim D}[h(x)g(x)]}{2}.
  \]
  The deterministic dimension complexity is
  \[
  \operatorname{dc}(H):=
  \inf\Bigl\{d\in\mathbb N_0:\ \exists\phi:X\to\mathbb R^d,\qquad
  \forall h\in H\ \exists w_h\in\mathbb R^d\ \forall x\in X,\qquad
  h(x)\langle w_h,\phi(x)\rangle>0\Bigr\},
  \]
  where \(\inf\varnothing:=+\infty\).
  Thus the representation uses one deterministic map for the whole class and
  strict pointwise signs on the original domain; it is not an average,
  probabilistic, approximate, or distribution-dependent representation.

  Fix parameters
  \[
  m\in\mathbb N_0,\qquad \tau>0,\qquad
  0\le\varepsilon<\frac14,\qquad
  \rho:=1-2\varepsilon\in\left(\frac12,1\right],
  \]
  and fixed catalog-family constants \(B\ge1\) and
  \(k\in\mathbb N\) with \(k\ge1\). A randomized learner \(A\) has a random
  tape \(U\) with fixed law \(\nu\); conditional on \(U=u\), it is
  deterministic. At a nonterminal round \(t\le m\), after the complete real
  reply transcript \(v_{<t}\in\mathbb R^{t-1}\), it issues a query
  \[
  q_{u,v_{<t}}:X\times\{+1,-1\}\to[-1,1]
  \]
  that may depend arbitrarily on \(u\) and \(v_{<t}\). It may terminate at
  any depth \(T\le m\), including \(T=0\), and then returns a binary
  predictor. For a query \(q\), its canonical decomposition is
  \[
  a_q(x):=\frac{q(x,+1)+q(x,-1)}2,\qquad
  b_q(x):=\frac{q(x,+1)-q(x,-1)}2,
  \]
  so \(q(x,y)=a_q(x)+yb_q(x)\) and
  \(|a_q(x)|+|b_q(x)|\le1\). Neither component is restricted; in
  particular, label-independent query components are allowed.

  For \(D\), \(h\), and a query \(q\), define its population center and full
  tolerance interval by
  \[
  \mu_q(D,h):=\mathbb E_{x\sim D}q(x,h(x)),\qquad
  I_q(D,h):=[\mu_q(D,h)-\tau,\mu_q(D,h)+\tau].
  \]
  A valid adaptive reply policy \(\pi\in\Pi(D,h)\) is a nonanticipating
  selector: after seeing the issued history
  \((q_1,v_1,\ldots,q_{t-1},v_{t-1},q_t)\), it selects any real value
  \[
  v_t=\pi_t(q_1,v_1,\ldots,q_{t-1},v_{t-1},q_t)
  \in I_{q_t}(D,h).
  \]
  The policy may react to every revealed randomized query but not to
  unrevealed future learner coins. A randomized oracle policy is covered
  tape-by-tape by fixing its internal randomness, so the only expectation in
  the accuracy premise remains over learner coins. No response alphabet,
  response grid, exact-expectation response, or favorable policy is imposed.
  Write \(e(u;D,h,\pi)\) for the resulting complete execution and
  \(\widehat h_{u;D,h,\pi}\) for its terminal predictor.

  Let
  \(G=\{g_1,\ldots,g_L\}\subseteq\{+1,-1\}^{X}\) be the finite terminal
  catalog supplied by `assump:finite-terminal-catalog`, and write
  \[
  [L]:=\{1,\ldots,L\},\qquad
  \Delta_L:=\left\{w\in\mathbb R_+^L:\sum_{i=1}^Lw_i=1\right\}.
  \]
  Define the fixed catalog feature map and its mixture scores by
  \[
  \phi_G(x):=(g_1(x),\ldots,g_L(x))\in\mathbb R^L,\qquad
  s_w(x):=\langle w,\phi_G(x)\rangle
  =\sum_{i=1}^Lw_i g_i(x).
  \]
  The catalog may contain functions outside \(H\); it is a property of the
  learner's terminal outputs, not a representation hypothesis about \(H\).

  The following are derived proof obligations, not additional theorem-facing
  assumptions.

  - `obligation:catalog-correlation` (Universal catalog correlation): For
    each \(D,h,\pi\), define the output probabilities
    \[
    p_i(D,h,\pi):=
    \nu\{u:\widehat h_{u;D,h,\pi}=g_i\},\qquad i\in[L].
    \]
    Derive from the universal expected-error premise that
    \[
    \sum_{i=1}^L p_i(D,h,\pi)
       \mathbb E_{x\sim D}[h(x)g_i(x)]\ge\rho,\qquad
    \max_{i\in[L]}\mathbb E_{x\sim D}[h(x)g_i(x)]\ge\rho.
    \]
    This must hold for every valid policy, so the argument cannot select a
    favorable oracle response; the output probabilities may depend on
    \(D,h,\pi\), but the catalog does not.

  - `obligation:finite-simplex-exactification` (Finite minimax and arbitrary-
    domain compactness): For fixed \(h\in H\) and finite \(F\subseteq X\),
    define the closed set
    \[
    K_{h,F}:=\left\{w\in\Delta_L:
       h(x)s_w(x)\ge\rho\ \text{for every }x\in F\right\}.
    \]
    For nonempty \(F\), write
    \[
    \Delta_F:=\left\{r=(r_x)_{x\in F}\in\mathbb R_+^F:
       \sum_{x\in F}r_x=1\right\}.
    \]
    Applying `obligation:catalog-correlation` to every distribution
    supported on \(F\), finite matrix minimax must give
    \[
    \max_{w\in\Delta_L}\min_{x\in F}
       \sum_{i=1}^L w_i h(x)g_i(x)
    =\min_{r\in\Delta_F}\max_{i\in[L]}
       \sum_{x\in F}r_xh(x)g_i(x)
    \ge\rho,
    \]
    and hence \(K_{h,F}\ne\varnothing\); for \(F=\varnothing\), this is
    immediate because \(K_{h,F}=\Delta_L\). The family
    \(\{K_{h,F}:F\subseteq X\text{ finite}\}\) has the finite-intersection
    property because finite intersections equal the constraint set for the
    union. Compactness of the fixed finite-dimensional simplex
    \(\Delta_L\) must then produce
    \(w_h\in\bigcap_{F\subseteq X,\,F\text{ finite}}K_{h,F}\). This is the
    required common-map producer. It does not assume an annihilating
    probability on \(X\), a finite domain, a changing witness measure, a
    branch-energy budget, or a generated invariant.

- Technical assumptions:
  - `assump:source-parameter-regime` (Boundary-inclusive source regime):
    \(m\in\mathbb N_0\), every finite \(\tau>0\), and
    \(0\le\varepsilon<1/4\) are allowed. In particular, the theorem includes
    zero-query protocols, exact learning
    \((\varepsilon=0)\), and large tolerances; it does not impose
    \(m\ge1\), \(\tau\le1\), or \(\varepsilon>0\).
  - `assump:finite-horizon-randomized-adaptivity` (One randomized adaptive
    learner): The same learner \(A\), fixed before \(D\) and \(h\), uses the
    random tape \(U\sim\nu\), may choose each query from its random tape and
    the complete preceding real-valued reply transcript, and terminates after
    at most \(m\) queries. The learner is not changed after seeing the
    distribution, target, or oracle policy.
  - `assump:bounded-unrestricted-queries` (Bounded unrestricted SQ access):
    Every issued query is an arbitrary map
    \(q:X\times\{+1,-1\}\to[-1,1]\). No CSQ, label-linearity,
    finite-dictionary, nonadaptivity, deterministic-query, finite-encoding,
    or response-tree-size restriction is imposed on the queries or internal
    transcript tree.
  - `assump:full-adversarial-tolerance` (All continuous tolerance-valid
    replies): For every \(D\) and \(h\), the learner is evaluated against
    every nonanticipating policy in \(\Pi(D,h)\), with each response chosen
    arbitrarily from the full real interval \(I_q(D,h)\). Exact population
    expectations and favorable response selection are not assumed.
  - `assump:finite-terminal-catalog` (Static terminal-output factorization):
    The learner specification exposes one finite catalog
    \(G=\{g_1,\ldots,g_L\}\) with \(L\ge1\), fixed before \(D\), \(h\), the
    reply policy, the replies, and the sampled learner tape. There is an
    explicit protocol selector \(J\) on every complete tolerance-valid
    execution such that
    \[
    \widehat h_{u;D,h,\pi}
    =g_{J(e(u;D,h,\pi))}\qquad
    \text{for every }D,h,\pi,u.
    \]
    The selector may factor an uncountable continuous transcript tree through
    \([L]\); neither a finite response alphabet nor finitely many transcript
    leaves is required.
  - `assump:universal-expected-accuracy` (Distribution-target-policy uniform
    accuracy): For every distribution \(D\) on \(X\), every \(h\in H\), and
    every \(\pi\in\Pi(D,h)\),
    \[
    \mathbb E_{u\sim\nu}
       \mathcal L_{D,h}(\widehat h_{u;D,h,\pi})
    \le\varepsilon.
    \]
    The displayed expectation is only over the learner's random tape; the
    quantifiers over distributions, targets, and tolerance-valid adversarial
    reply policies are universal.
  - `assump:polynomial-catalog-budget` (Boundary-corrected polynomial output
    budget): The catalog size obeys the checkable protocol bound
    \[
    1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k.
    \]
    Here \(B\ge1\) and the integer \(k\ge1\) are fixed family constants. They
    may depend only on the designated learner family and are independent of
    \(X,H,m,\tau,\varepsilon,D,h\), the reply policy and replies, and the
    learner coins. There are no hidden constants or suppressed parameter
    dependencies in this bound.

# Formalized Goal

- Goal statement:
  Prove the following exact conditional theorem. For every arbitrary domain
  \(X\), nonempty binary class \(H\subseteq\{+1,-1\}^{X}\), fixed
  \(B\ge1\), fixed integer \(k\ge1\), and randomized adaptive unrestricted-SQ
  protocol satisfying `assump:source-parameter-regime`,
  `assump:finite-horizon-randomized-adaptivity`,
  `assump:bounded-unrestricted-queries`,
  `assump:full-adversarial-tolerance`,
  `assump:finite-terminal-catalog`,
  `assump:universal-expected-accuracy`, and
  `assump:polynomial-catalog-budget`, the single deterministic catalog map
  \[
  \phi_G:X\to\mathbb R^L,\qquad
  \phi_G(x)=(g_1(x),\ldots,g_L(x)),
  \]
  has the following uniform strict-margin property:
  \[
  \forall h\in H\ \exists w_h\in\Delta_L\ \forall x\in X,\qquad
  h(x)\langle w_h,\phi_G(x)\rangle
  \ge \rho=1-2\varepsilon>\frac12.
  \]
  The map \(\phi_G\) is fixed independently of \(D,h\), valid reply policy,
  replies, and learner coins, while \(w_h\) may depend only on \(h\), the
  fixed catalog, and the fixed accuracy parameter, not on any distribution,
  policy, transcript, or random-tape realization. Consequently the signs are
  exact pointwise on all of \(X\) and
  \[
  \operatorname{dc}(H)
  \le L
  \le B\left(1+\frac{m}{\tau^2}\right)^k.
  \]
  This conclusion is deterministic, fixed-horizon, and domain-independent.
  It includes \(m=0\), every finite \(\tau>0\), \(L=1\), and
  \(\varepsilon=0\); the leading base term keeps those boundary regimes
  meaningful. The theorem is conditional on the finite terminal catalog and
  its polynomial budget. It does not assert the false boundary-unadjusted
  rate \(C m/\tau^2\), nor does it claim that an arbitrary unrestricted
  response tree admits such a catalog. Removing the catalog condition while
  proving a boundary-corrected catalog-free linear bound remains open.

# Note

- Rigor:
  Parent foundation papers: *A General Characterization of the Statistical
  Query Complexity* (COLT 2017) supplies the randomized adaptive unrestricted-
  SQ and adversarial-tolerance protocol lineage; *Limitations of Learning via
  Embeddings in Euclidean Half Spaces* (JMLR 2002) supplies the deterministic
  common Euclidean sign-map lineage. Transfer map: the branch preserves the
  full learner, distribution, target, reply-policy, and coin quantifiers, but
  adds a static finite terminal-output factorization and its polynomial size
  budget; finite minimax and compactness then convert universal catalog
  accuracy into the exact catalog-coordinate map.

  Assumption support: `assump:source-parameter-regime`,
  `assump:finite-horizon-randomized-adaptivity`,
  `assump:bounded-unrestricted-queries`,
  `assump:full-adversarial-tolerance`, and
  `assump:universal-expected-accuracy` are the standard/source conditions in
  the COLT 2017 SQ framework and the source open problem.
  `assump:finite-terminal-catalog` is a standard finite-output or
  finite-hypothesis-pool specialization of that protocol.
  `assump:polynomial-catalog-budget` is the branch's explicit, primitive,
  checkable family-size condition. Their recorded branch-specific
  verification examples are: a fixed pool of \(K\) terminal hypotheses
  (\(L=K\)); a zero-query singleton learner (\(L=1\)); the two constant
  targets learned by one label-mean query for \(0<\tau<1\) (\(L=2\)); and a
  two-round continuous-reply tree whose terminal selector has four labels
  (\(L=4\)). Finite matrix minimax, compactness of \(\Delta_L\), and the
  coordinate sign embedding are standard derived tools, not theorem-facing
  assumptions.

  Source alignment: arbitrary domains, one learner for every
  distribution-target pair, every tolerance-valid continuous reply policy,
  expectation only over learner coins, unrestricted bounded adaptive queries,
  and deterministic exact signs are preserved. The finite catalog and
  polynomial budget are explicit conditional refinements, and the conclusion
  is polynomial with a base term rather than the source's unconditional linear
  rate. Progress type: `conditional`. Materiality: this is a
  domain-independent deterministic polynomial special case for unrestricted
  adaptive response trees; it isolates terminal-output diversity as a
  sufficient compression interface while leaving derivation of that catalog
  bound from \(m\) and \(\tau\) alone unresolved.
