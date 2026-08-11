# Proof Review

## Formalized Setting

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

## Formalized Goal

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

## Reviewed Roadmap

The accepted sketch attempt 1 has six dependency-ordered steps.
`step_001` constructs the exact-center policy only to establish
policy-class nonemptiness, then pushes the learner-tape law through the
measurable terminal selector to obtain the exact finite catalog law and loss
and correlation mixtures for every arbitrary valid policy. `step_002`
uses universal expected accuracy and the binary loss identity to obtain the
exact policywise mixture correlation and then removes the policy-dependent
output law through a finite maximum. `step_003` applies that policy-free
certificate to every finite-support distribution and proves, in current
notation, the exact finite matrix minimax and finite simultaneous feasibility.
`step_004` proves compactness and closedness in the fixed simplex,
establishes the exact finite-intersection identity, and extracts one
arbitrary-domain weight. `step_005` identifies the mixture score with the
fixed catalog-coordinate map and converts the positive binary margin to exact
strict signs. `step_006` applies the dimension definition and appends the
primitive polynomial catalog budget verbatim. The aggregate review used the
current accepted proof/review pair for every step, the accepted sketch and
global diagnostic pair, and repaired assembly attempt 4 in this order.

## Attempted Claim

Under the seven primitive assumptions in `setting.md`, including the static
finite terminal catalog and its explicit polynomial budget, the single map
\(\phi_G(x)=(g_1(x),\ldots,g_L(x))\) satisfies
\[
\forall h\in H\ \exists w_h\in\Delta_L\ \forall x\in X,
\qquad
h(x)\langle w_h,\phi_G(x)\rangle
\ge 1-2\varepsilon>\tfrac12,
\]
and therefore
\[
\operatorname{dc}(H)\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
\]
The conclusion is deterministic, fixed-horizon, exact pointwise, and valid on
arbitrary domains, including the empty domain. It retains the exact
\(m=0\), every finite \(\tau>0\), \(L=1\), \(B=1\), and
\(\varepsilon=0\) boundary cases. The theorem remains explicitly
conditional on the catalog assumptions and does not claim the unresolved
catalog-free source theorem.

## Review Mode

split

## Review Verdict

- Score: 10
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: PASS. The assembled theorem proves the authoritative exact
  conditional goal with the same arbitrary-domain, learner, distribution,
  target, valid-policy, reply, transcript, and learner-tape quantifiers. The
  catalog map is fixed before the instance, only \(w_h\) is target-dependent,
  and the pointwise margin and dimension chain are unchanged.
- Roadmap or step coverage: PASS. The six-step dependency graph is closed,
  acyclic, and used producer-before-consumer. Sketch attempt 1, global attempt
  1, all six unit-attempt-1 proof/review pairs, and assembly attempt 4 are
  current and synchronized; archived assembly attempts were not used.
- Proof-details audit: PASS. The terminal selector pushforward,
  loss-correlation equalities, max-over-average elimination, finite-support
  reduction, closest-point convex-hull alternative, exact minimax,
  finite-intersection identity, arbitrary-family compactness argument,
  same-target score transfer, strict sign conversion, and dimension
  definition were checked directly, including all quantifier and boundary
  transitions.
- Adversarial stress test: PASS. Empty \(X\), empty finite \(F\), \(L=1\),
  \(m=0\), every finite \(\tau>0\), \(\varepsilon=0\), \(B=1\),
  uncountable domains, policy-varying catalog laws, continuous adaptive
  replies, randomized queries, and catalog functions outside \(H\) do not
  invalidate the stated conditional theorem. No favorable policy, tape,
  distribution-dependent map, or catalog-free inference is selected.
- LaTeX export structure/provenance gate: PASS. The bundle contains all nine
  required files and the required setup, preliminaries, main theorem, proof
  sketch, six appendix step subsections, and final theorem proof. No forbidden
  public environment, workflow provenance, audit scaffolding, placeholder,
  malformed command, mechanical debris, or source-directory build artifact
  appears.
- Main theorem self-containedness: PASS. The concise theorem uses only
  setup/preliminary notation and all seven numbered primitive assumptions. It
  declares the map and weight dependence, exact margin, dimension chain,
  deterministic probability mode, fixed-horizon mode, pointwise sign metric,
  exposed variables, absence of hidden constants, conditional scope, and
  principal boundary cases without appendix-local notation.
- Assumption provenance gate: PASS. The finite catalog and polynomial budget
  are explicit primitive, pre-instance conditions. The catalog law,
  correlation certificate, finite feasibility, global weight, and strict-sign
  representation are derived by named accepted steps and public results; no
  generated event, invariant, stability, boundedness, recurrence, membership,
  or local-validity fact is hidden as a theorem assumption.
- Redundant public prose gate: PASS. Public TeX contains mathematical
  exposition, theorem-style statements, and proofs rather than dependency
  inventories, accepted-step narration, source-audit blocks, or copied
  sketch-row fields.
- Proof-step notation surface gate: PASS. Public-facing notation is limited to
  setting-derived catalog, simplex, score, margin, and dimension objects.
  Payoff matrices, finite-support laws, closest-point variables, constraint
  functionals, and compactness helpers remain appendix-local, and no
  proof-local dictionary leaks into the main theorem.
- Theorem readability and notation economy: PASS. The reader-facing theorem
  is a compact conditional statement rather than an admissibility dictionary.
  The preliminaries define only \([L]\), \(\Delta_L\), \(\phi_G\), and
  \(s_w\), each with its purpose and theorem use.
- Explicit-rate contract: PASS. The exact deterministic fixed-horizon,
  pointwise chain
  \(\operatorname{dc}(H)\le L\le
  B(1+m/\tau^2)^k\) exposes every variable and the fixed dependence of
  \(B,k\), has no hidden constant or auxiliary tolerance, and performs no
  absorption, dropped-term, probability, horizon, or norm conversion.
- Rate Specialization Bridge: Not required. The appendix and public theorem
  state the same exact margin and dimension rate with the same assumptions,
  constants, modes, and dependence; no technical-to-public simplification is
  made.
- Baseline-reduction check: PASS. The proof preserves margin one at
  \(\varepsilon=0\), the unique simplex weight at \(L=1\), the exact
  \(L\le B\) bound at \(m=0\), every finite positive tolerance, the literal
  \(B=1\) specialization, and \(\operatorname{dc}(H)=0\) on the empty
  domain. It does not replace these by a weaker surrogate or the invalid
  no-base rate \(Cm/\tau^2\).
- LaTeX appendix full-derivation gate: PASS. Every used step, not a sample,
  passed direct source-to-appendix comparison. All 17 accepted non-atomic
  local units, every cited/dependency application, and all six target-step
  assemblies have substantive paper-facing translations preserving their
  definitions, equations, inequality chains, substitutions, compactness and
  continuity checks, assumption discharges, policy semantics, quantifier
  transitions, boundary cases, and final composition.
- LaTeX export citation/reference gate: PASS. Ten citation commands invoke
  the single matching BibTeX key `rudin1976principles` at the precise
  finite-dimensional topology facts used in the proof. The bundle has 77
  unique labels and 163 `\ref`/`\eqref` uses with no duplicate label,
  missing target, missing citation key, malformed command, or internal
  dependency cited externally.
- LaTeX export synchronization: PASS. The live assembly report
  `51393bc39b691b04ed18b164d55c12570b29827c317388bfecacbe629f170f99`,
  appendix
  `09ff420e779b7139212bda30bf4831aa23655f556da4d2c3fad8eb614bdf1ad9`,
  structural review
  `55accd0abfd0272bb2fbcef9e40d3488ac55a6b716f92722198a01c668dfbefe`,
  rigor review
  `3ba0f8d7b7760462fb204373de7d061778d758b88ad04c77095269e3acb4c2aa`,
  citation review
  `e7585c4512d1e2258f5f18dc0f11099125426ad8bc26b20fcea8a01b9cd35415`,
  and adversarial review
  `8fa9e6ba38a017a3b89ba9311a32d0b171db0af698298679fbec51968b746d0d`
  match the aggregate dispatch exactly. An independent clean cached
  Tectonic/BibTeX build produced a 19-page PDF and nonempty bibliography with
  no actual TeX warning, error, undefined reference or citation,
  multiply-defined label, missing character, or box diagnostic.
- Specialized-review resolution: Structural, rigor, citation, and
  adversarial reviews are all contract-valid `PASS` artifacts with
  `Blocking Issues = None`, `Suggested Repair Depth = None`, and
  `Smallest Candidate Repair Target = None`. There is no reviewer
  disagreement and no aggregate blocker.
- Source/progress alignment: PASS. The result is consistently labeled
  `conditional`, a source-permitted partial-progress category. It preserves
  the unrestricted adaptive randomized SQ interface, arbitrary domains, one
  learner for every distribution-target pair, all tolerance-valid continuous
  reply policies, expectation only over learner coins, and deterministic
  exact signs. It explicitly adds the static finite terminal catalog and its
  polynomial budget and does not imply that the full catalog-free linear
  source target is solved; deriving a boundary-corrected catalog-free bound
  from \(m,\tau\) alone remains open.

## Critical Issues

None

## Failure-Type Rationale

No failure type applies. All four specialized review contracts and every
independent aggregate gate pass, the current assembly proves the authoritative
formalized conditional goal, and no acceptance-blocking or nonblocking concern
remains. The aligned final failure type is therefore `ACCEPTED`.

## Suggested Next Action

None

## Retry Mode

none
