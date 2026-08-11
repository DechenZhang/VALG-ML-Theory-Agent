# Formalized Setting

- Basic setup:
  Let \(\mathcal X\) be an arbitrary, possibly infinite domain and let
  \(\mathcal H\subseteq\{+1,-1\}^{\mathcal X}\). For a distribution
  \(\mathcal D\) on \(\mathcal X\), a target \(h\in\mathcal H\), and a
  binary predictor \(g:\mathcal X\to\{+1,-1\}\), define the binary risk
  \[
  \mathcal L_{\mathcal D,h}(g)
  :=\Pr_{x\sim\mathcal D}[g(x)h(x)<0].
  \]
  All query expectations and risks below are understood in the standard SQ
  sense whenever they arise on an actual execution. No measurability or
  output behavior is imposed on a prescribed response sequence that is not
  an actual tolerance-valid execution.

  Let \(m\) denote the query-budget parameter, \(\tau\) the tolerance,
  \(\varepsilon\) the target risk, and \(B,k\) the catalog-family constants.
  Their ranges and uniformity requirements are stated in
  `assump:sq-parameter-regime`.

  Define the deterministic exact dimension complexity
  \(\operatorname{dc}(\mathcal H)\) to be the least
  \(d\in\mathbb N_0\) for which there is a single map
  \(\psi:\mathcal X\to\mathbb R^d\) such that
  \[
  \forall h\in\mathcal H\ \exists u_h\in\mathbb R^d\ \forall x\in\mathcal X,
  \qquad h(x)\langle u_h,\psi(x)\rangle>0,
  \]
  with value \(+\infty\) if no such finite \(d\) exists. Thus the target is
  pointwise exact sign representation, with no distributional exceptional
  set.

  An unrestricted SQ query is any bounded query
  \(q:\mathcal X\times\{+1,-1\}\to[-1,1]\). For fixed
  \((\mathcal D,h)\), an adaptive tolerance-\(\tau\) oracle policy may
  choose each real reply from the reached interaction history, but its reply
  \(a\) to the current query \(q\) must obey
  \[
  \left|a-\mathbb E_{x\sim\mathcal D}q(x,h(x))\right|\le\tau.
  \]
  There is no averaging over the policy: validity and the learner guarantee
  are required for each adversarial policy separately.

  Let \((\Omega,\mathcal F,\mu)\) be the random-tape probability space of a
  learner \(A\), and write \(R\sim\mu\). The space may be arbitrary,
  including nonatomic. Once a complete tape \(r\in\Omega\) is fixed, the
  learner's queries, stopping rule, and terminal binary predictor are
  deterministic, although each query may depend on all of \(r\) and on all
  preceding real replies. For a tolerance-valid policy \(\mathcal O\), write
  \(A_r^{\mathcal O}(\mathcal D,h):\mathcal X\to\{+1,-1\}\) for the
  terminal predictor on that actual execution.

  For the tolerance parameter \(\tau\), put
  \[
  K:=\lceil 1/\tau\rceil,
  \qquad
  G:=\{-1+2j/K:0\le j\le K\},
  \]
  and fix, before any instance, a deterministic nearest-grid map
  \(\rho:[-1,1]\to G\), with midpoint ties resolved by a fixed rule. Then
  \[
  |\rho(v)-v|\le 1/K\le\tau\qquad(v\in[-1,1]).
  \]
  For each \((\mathcal D,h)\), define the proof-only nearest-grid
  exact-center policy
  \[
  \mathcal O^{\rho}_{\mathcal D,h}(q)
  :=\rho\!\left(\mathbb E_{x\sim\mathcal D}q(x,h(x))\right).
  \]
  This is an actual tolerance-valid policy by the displayed rounding bound.
  The learner sees only its rounded replies; it is not given the exact
  expectations used by the oracle to choose them.

  For an ordered finite catalog
  \(\mathcal C=(g_1,\ldots,g_L)\) of binary functions on \(\mathcal X\),
  define its deterministic coordinate map and probability simplex by
  \[
  \phi_{\mathcal C}(x):=(g_1(x),\ldots,g_L(x))\in\{+1,-1\}^L,
  \qquad
  \Delta_L:=\left\{w\in[0,1]^L:\sum_{i=1}^Lw_i=1\right\}.
  \]

- Technical assumptions:
  - `assump:sq-parameter-regime` (SQ and catalog-family parameter regime):
    \[
    m\in\mathbb N_0,\qquad \tau\in(0,\infty),\qquad
    \varepsilon\in[0,1/4),\qquad B\in[1,\infty),\qquad
    k\in\mathbb N,\ k\ge1.
    \]
    The catalog-family constants \(B\) and \(k\) are fixed as part of the
    protocol-family certificate and are independent of the domain
    \(\mathcal X\), class \(\mathcal H\), learner parameters
    \((m,\tau,\varepsilon)\), instance \((\mathcal D,h)\), oracle policy and
    replies, and learner tape \(r\). The horizon is the fixed finite upper
    bound \(m\), including \(m=0\).

  - `assump:universal-adversarial-sq` (Universal randomized adversarial-SQ
    learner): One learner \(A\), fixed independently of
    \((\mathcal D,h)\) and the oracle policy, makes at most \(m\) adaptive
    unrestricted queries of tolerance \(\tau\) and returns a binary
    predictor. For every distribution \(\mathcal D\) on \(\mathcal X\),
    every \(h\in\mathcal H\), and every adaptive tolerance-valid adversarial
    policy \(\mathcal O\), the actual-run loss is a
    \(\mu\)-measurable random variable and
    \[
    \mathbb E_{R\sim\mu}
    \mathcal L_{\mathcal D,h}
    \bigl(A_R^{\mathcal O}(\mathcal D,h)\bigr)
    \le\varepsilon.
    \]
    The expectation is only over the learner tape. This premise grants the
    learner neither favorable-policy selection nor exact-expectation access.

  - `assump:canonical-rounded-output-catalog` (Pre-instance canonical-policy
    output catalog): As part of the certified protocol, there is a specified
    finite ordered catalog
    \[
    \mathcal C_A^{\rho}=(g_1,\ldots,g_L),
    \qquad
    1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k,
    \]
    fixed after the protocol and \(\rho\) are fixed but before the current
    distribution, target, oracle interaction, or learner tape, such that
    \[
    \forall\mathcal D\ \forall h\in\mathcal H\ \forall r\in\Omega,
    \qquad
    A_r^{\mathcal O^{\rho}_{\mathcal D,h}}(\mathcal D,h)
    \in\mathcal C_A^{\rho}
    \]
    as an equality of terminal functions on \(\mathcal X\). This condition
    concerns only actual executions against the canonical tolerance-valid
    policy. It imposes no catalog, finiteness, rank, or measurability
    condition on outputs under other valid policies or under prescribed
    tolerance-invalid response strings; in particular, the output range over
    other valid policies may be infinite.

# Formalized Goal

- Goal statement:
  Under `assump:sq-parameter-regime`,
  `assump:universal-adversarial-sq`, and
  `assump:canonical-rounded-output-catalog`, there exists the deterministic
  common feature map
  \[
  \phi:=\phi_{\mathcal C_A^{\rho}}:\mathcal X\to\mathbb R^L,
  \qquad
  \phi(x)=(g_1(x),\ldots,g_L(x)),
  \]
  fixed independently of the current distribution, target, valid oracle
  policy, and learner tape, such that
  \[
  \forall h\in\mathcal H\ \exists w_h\in\Delta_L\ \forall x\in\mathcal X,
  \qquad
  h(x)\langle w_h,\phi(x)\rangle
  \ge 1-2\varepsilon>\tfrac12>0.
  \]
  Each \(w_h\) may depend on \(h\) but not on \(\mathcal D\), the oracle
  policy, or the learner tape. Consequently,
  \[
  \operatorname{dc}(\mathcal H)
  \le L
  \le B\left(1+\frac{m}{\tau^2}\right)^k.
  \]

# Note

- Rigor:
  Assumption support: `assump:sq-parameter-regime` and
  `assump:universal-adversarial-sq` preserve the regime and universal
  adversarial-tolerance semantics of the COLT 2026 parent open problem, with
  the randomized adaptive SQ model also calibrated by Feldman's 2017 general
  SQ characterization. `assump:canonical-rounded-output-catalog` is the
  approved novel protocol certificate, verified in the idea by (i) any
  adaptive learner whose terminal choice is from a fixed hypothesis pool of
  size at most \(B(1+m/\tau^2)^k\); (ii) for Borel \(\mathcal X=[0,1]\), the
  two constant targets, and \(0<\tau<1\), the query \(q(x,y)=y\) with a
  uniform nonatomic tape \(U\), where grid replies yield the two constants
  but nongrid valid replies may flip the chosen constant only at \(U\), so
  \(\mathbb E_U\mathcal D(\{U\})=0\) for every Borel \(\mathcal D\) while
  the full valid-output range is uncountable; and (iii) for the singleton
  target \(h=+1\), the two-query construction with \(q_1=0\),
  \(q_2=\operatorname{clip}(v_1,-1,1)\), output \(h\) with probability
  \(1-\eta\), and output a transcript-indexed threshold with probability
  \(\eta\le\varepsilon\), whose recursively rounded canonical transcript has
  catalog size at most two although its valid-output range is infinite. These
  examples support the primitive certificate but are not theorem assumptions.
  The catalog is only an output-compression certificate for one valid policy
  and does not assume a representation, a correlation bound, or an
  all-response mean-rank condition. Catalog correlation, finite-subset
  minimax, compact-simplex finite-intersection exactification, and pointwise
  separation are proof obligations rather than primitive assumptions.

  Source alignment: the same learner, every distribution-target pair, every
  tolerance-valid adversarial policy in the premise, expectation only over
  learner coins, arbitrary domains, and exact deterministic signs are
  preserved. The canonical policy is used only because it is one policy
  covered by the universal premise. Progress type: `conditional`.
  Materiality: this is the source-endorsed domain-independent polynomial
  weakening under a strictly one-policy terminal-catalog condition, while
  other valid policies may have infinitely many outputs. Removing the catalog
  certificate and proving the unconditional linear bound
  \(\operatorname{dc}(\mathcal H)\le C m/\tau^2\), or deriving the required
  catalog from \((m,\tau)\) alone, remains open.
