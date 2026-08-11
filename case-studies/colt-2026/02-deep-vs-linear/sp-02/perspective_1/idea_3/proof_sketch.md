# Proof Sketch

## Formalized Setting

Let \(\mathcal X\) be an arbitrary, possibly empty or infinite domain and let
\(\mathcal H\subseteq\{+1,-1\}^{\mathcal X}\).  Under
`assump:sq-parameter-regime`,
\[
m\in\mathbb N_0,\qquad \tau>0,\qquad 0\le\varepsilon<\frac14,
\qquad B\ge1,\qquad k\in\mathbb N,\ k\ge1.
\]
The fixed randomized learner \(A\) in
`assump:universal-adversarial-sq` makes at most \(m\) adaptive unrestricted
SQ queries and, for every distribution \(\mathcal D\), target
\(h\in\mathcal H\), and tolerance-valid adaptive policy \(\mathcal O\),
has \(\mu\)-measurable actual-run loss satisfying
\[
\mathbb E_{R\sim\mu}\mathcal L_{\mathcal D,h}
  (A_R^{\mathcal O}(\mathcal D,h))\le\varepsilon.
\]
The tape space may be nonatomic.  The premise is pointwise in the policy; no
policy is averaged or chosen favorably.

Put \(K=\lceil1/\tau\rceil\), let
\(G=\{-1+2j/K:0\le j\le K\}\), and fix the nearest-grid map \(\rho\) from
the setting.  For each instance, the proof-only policy
\[
\mathcal O^\rho_{\mathcal D,h}(q)
=\rho\!\left(\mathbb E_{x\sim\mathcal D}q(x,h(x))\right)
\]
is to be validated only along its reached adaptive execution.  Under
`assump:canonical-rounded-output-catalog`, the ordered catalog
\[
\mathcal C_A^\rho=(g_1,\ldots,g_L),
\qquad 1\le L\le B\left(1+\frac m{\tau^2}\right)^k,
\]
is fixed before the instance and contains, as a terminal function on
\(\mathcal X\), the output of every tape on every such actual canonical
execution.  No catalog or measurability assertion is available or needed for
tolerance-invalid synthetic transcripts or for outputs under other valid
policies.

Define
\[
\rho_\varepsilon:=1-2\varepsilon>\frac12,
\qquad
\phi(x):=(g_1(x),\ldots,g_L(x)),
\qquad
\Delta_L:=\{w\in[0,1]^L:\textstyle\sum_iw_i=1\}.
\]

## Formalized Goal

Prove, under exactly the three binding assumptions above, that
\[
\forall h\in\mathcal H\ \exists w_h\in\Delta_L\ \forall x\in\mathcal X,
\qquad
h(x)\langle w_h,\phi(x)\rangle
\ge\rho_\varepsilon>\frac12>0.
\]
The map \(\phi\) must be fixed independently of \(\mathcal D,h\), the oracle
policy, and the tape; only \(w_h\) may depend on \(h\).  Consequently prove
the exact deterministic rate
\[
\operatorname{dc}(\mathcal H)\le L
\le B\left(1+\frac m{\tau^2}\right)^k.
\]

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch
- Binding setting SHA-256:
  `a77db70b5e184b062eabd7b32b21c1f0010c2e7122cd6c4ed4c2d277ff0e7587`

## Proof Roadmap

The selected framework is **Canonical-valid catalog game and fixed-simplex
exactification** from `technical_survey.md`.  Its source provenance is the
COLT 2026 open problem and Feldman (COLT 2017) for the universal randomized
adversarial-SQ convention, Ben-David et al. (JMLR 2002) for the deterministic
common Euclidean sign-map target, and Sion (1958), Theorem 3.4,
https://doi.org/10.2140/pjm.1958.8.171, for the finite bilinear minimax
identity.  The compactness passage is stated and proved in current notation
from Heine--Borel and the open-cover definition of compactness.

The proof has five steps.  First validate the nearest-grid exact-center
policy at each reached query and invoke the primitive catalog only on those
actual executions.  Second, for fixed \((\mathcal D,h)\), use the measurable
actual-run loss, its finite set of possible catalog-function values, and the
universal guarantee to obtain one catalog function of risk at most
\(\varepsilon\), equivalently correlation at least \(\rho_\varepsilon\).
Third, for every nonempty finite \(F\subseteq\mathcal X\), instantiate that
conclusion for every finitely supported distribution on \(F\) and use the
finite matrix game
\[
\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
=\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x,
\qquad A_{xi}=h(x)g_i(x),
\]
to obtain one weight working simultaneously on \(F\).  Fourth, the closed
pointwise-margin subsets of the one fixed compact simplex \(\Delta_L\) have
the finite-intersection property, producing one \(w_h\) valid on all of an
arbitrary \(\mathcal X\).  Fifth, exact catalog coordinates turn this margin
into strict signs and give the displayed dimension bound.

This route never evaluates a learner on a prescribed synthetic reply string,
never forms a random feature-map law, and never strengthens the catalog to
all valid policies, all transcripts, finite tape support, or a mean-response
rank condition.  The finite-support distributions in the matrix game are
proof instantiations of the theorem's every-distribution premise, not a
narrowing of that premise.  Their payoffs are finite sums of the already
defined pointwise catalog values, so the game introduces no joint
measurability demand.

## Rate Objectives

### R1: Exact pointwise correlation margin

- Objective type: fixed-horizon, structural-parameter explicit, deterministic
  pointwise-margin conclusion.
- Exposed variables: \(m,\tau,\varepsilon,L,B,k\), with
  \(\rho_\varepsilon=1-2\varepsilon\) and
  \(1\le L\le B(1+m/\tau^2)^k\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(m,\tau,\varepsilon,L,B,k\),
  \(\mathcal X,\mathcal H,\mathcal D,h\), any policy or reply, the learner
  tape, or catalog multiplicities.
- Fixed quantities: the certified learner \(A\), nearest-grid tie rule
  \(\rho\), ordered pre-instance catalog \(\mathcal C_A^\rho\), and the
  family constants \(B,k\).  The target \(h\) is fixed only while producing
  its own weight.
- Probability mode: deterministic final margin.  The sole premise expectation
  is over \(R\sim\mu\) on an actual canonical execution and is eliminated in
  `step_002`; there is no probability statement in the output.
- Horizon mode: fixed finite upper bound \(m\), including \(m=0\); no
  horizon-uniform or stopping-time upgrade is claimed.
- Norm mode: pointwise signed margin
  \(h(x)\langle w_h,\phi(x)\rangle\), uniformly over every point of the
  original domain.  There is no average, exceptional set, surrogate norm, or
  probabilistic representation metric.
- Required bridge or simplification obligations: prove per-query canonical
  validity with error at most \(\tau\); preserve the exact identity
  \(\mathbb E_{\mathcal D}[hg_i]=1-2\mathcal L_{\mathcal D,h}(g_i)\);
  preserve \(\rho_\varepsilon\) with zero loss through finite minimax and
  fixed-simplex compactness; and use the same function coordinates in the
  final score.  No term may be dropped or absorbed.
- Baseline invariance obligations: \(\varepsilon=0\) must give margin exactly
  \(1\); \(m=0\) must use the actual no-query execution; all \(\tau>0\),
  \(L=1\), nonatomic tape laws, infinite \(\mathcal X\), and duplicate
  catalog entries must remain covered.

### R2: Exact deterministic dimension rate

- Objective type: fixed-horizon and structural-parameter explicit exact
  dimension bound.
- Exposed variables: \(m,\tau,\varepsilon,L,B,k\), with the exact chain
  \(\operatorname{dc}(\mathcal H)\le L\le
  B(1+m/\tau^2)^k\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: any exposed variable, domain or class,
  instance, policy, reply, tape, or catalog function.
- Fixed quantities: the same certified protocol objects as in R1; \(B,k\)
  are fixed family constants but remain visibly exposed in the theorem.
- Probability mode: deterministic exact sign representation.
- Horizon mode: fixed finite \(m\), including \(m=0\).
- Norm mode: the definition of exact deterministic dimension complexity,
  namely strict pointwise sign in \(\mathbb R^L\).
- Required bridge or simplification obligations: use
  \(\rho_\varepsilon>1/2>0\), exact coordinate equality, and direct
  substitution of the primitive catalog-size inequality.  No rate
  specialization, probability conversion, or hidden constant is permitted.
- Baseline invariance obligations: at \(m=0\), retain
  \(\operatorname{dc}(\mathcal H)\le L\le B\); at
  \(\varepsilon=0\), retain exact margin \(1\); at \(L=1\), use the
  singleton simplex; for empty \(\mathcal X\) or \(\mathcal H\), retain the
  vacuous exact-sign conclusion and \(\operatorname{dc}=0\).

## Assumption Provenance Objectives

1. **Canonical execution validity and membership.**  The nearest-grid policy
   is a derived fact, not a favorable-oracle assumption.  `step_001` derives
   its per-query tolerance validity from `assump:sq-parameter-regime` and then
   applies the primitive `assump:canonical-rounded-output-catalog` only to the
   resulting actual executions.  `step_002` may consume this output.
2. **Catalog correlation witness.**  The existence of a catalog function with
   correlation at least \(\rho_\varepsilon\) is not assumed by the catalog
   certificate.  `step_002` derives it from the universal expected-risk
   premise and the finite actual-output range.  `step_003` may consume it.
3. **Finite simultaneous separator.**  The weights \(w_{h,F}\) are generated
   outputs of `step_003`, derived from the correlation statement for all
   finitely supported laws and finite minimax.  No compatibility between
   different finite-set weights is assumed.
4. **Global separator.**  The weight \(w_h\) is a generated output of
   `step_004`, derived by the finite-intersection property inside the fixed
   primitive simplex.  `step_005` consumes it only after production.
5. **No hidden generated conditions.**  There is no random feature-map law,
   measurable catalog selector, finite-support tape approximation, generated
   stability event, recurrence, basin, all-policy catalog, or mean-response
   rank invariant.  Actual-run loss measurability is primitive only where
   explicitly granted by `assump:universal-adversarial-sq`; finite matrix
   payoffs are algebraic finite sums.

## Mechanism-Source And Boundary Stress

### `step_001`: Canonical-policy legality and actual catalog membership

- Step ID: `step_001`
- Claim class: Generated local-validity and membership certificate.
- Theorem role: Produces the sole legal learner executions from which the
  expected-risk premise and canonical catalog may be used.
- Mechanism source: Direct primitive-source derivation in the exact setting
  convention.  Every reached query has range \([-1,1]\), hence its center
  \(v=\mathbb E_{\mathcal D}q(x,h(x))\) lies in \([-1,1]\).  The fixed grid
  has spacing \(2/K\), so nearest-grid rounding gives
  \(|\rho(v)-v|\le1/K\le\tau\).  This is exactly the branch's additive
  tolerance convention and is checked separately at every reached adaptive
  query.  The conclusion then matches the actual-execution antecedent of
  `assump:canonical-rounded-output-catalog`, which gives
  \(A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\in
  \mathcal C_A^\rho\) for every tape.
- Source-to-claim adequacy: The raw assumptions supply the right claim type:
  a per-reached-query absolute error bound, not an average or approximate
  transcript claim.  The policy is deterministic and nonanticipating once
  \((\mathcal D,h)\) is fixed, because its reply uses only the current query's
  population center and the fixed tie rule.  The learner receives only the
  rounded reply.  Source and branch conventions agree on query range,
  additive tolerance, fixed tape, adaptivity, and terminal-function equality.
  No conclusion is asserted on an unreached or tolerance-invalid response
  string.
- Residual-to-target adequacy: Produced reply \(a=\rho(v)\); consumed target
  is the tolerance interval \([v-\tau,v+\tau]\); theorem metric is absolute
  response error; residual is \(|a-v|\le1/K\le\tau\).  Produced terminal
  object and consumed catalog object are the same function on \(\mathcal X\)
  by the primitive membership equality, with zero object-transfer residual.
- Key positive/control term or structural source: The deterministic covering
  radius \(1/K\) and the primitive canonical-only catalog membership.
- Opposing defect terms: Grid rounding error and adaptive dependence of later
  queries on earlier replies.  The former is bounded by \(\tau\); the latter
  creates no cumulative error because validity is defined and checked
  pointwise at each reached query.
- Closure/dominance/absorption relation:
  \(K=\lceil1/\tau\rceil\ge1/\tau\), hence
  \(1/K\le\tau\).  Inductively, after any valid reached prefix, the next
  reply is again valid, so the recursion defines an actual valid execution of
  length at most \(m\).
- Accumulation behavior / scope compatibility: Controlled quantity is the
  current response error over at most \(m\) reached queries.  There is no
  additive accumulated defect: each validity constraint is local
  \(|a_t-v_t|\le\tau\), and the oracle definition requires no bound on
  \(\sum_t|a_t-v_t|\).  Early stopping ends the checks; \(m=0\) has the empty
  valid execution.  Thus the fixed-horizon scope is exact.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Noncircular primitive path
  `assump:sq-parameter-regime` -> rounding inequality -> actual canonical
  execution -> primitive catalog membership -> `step_002`.  Neither validity
  nor membership assumes low risk, correlation, or the final separator.
- Entry-state / first-update stress result: At \(m=0\), no query or update is
  needed and catalog membership applies to the actual no-query execution.  If
  a first query is reached, its exact center is in \([-1,1]\) and its first
  rounded reply is already tolerance-valid before any downstream guarantee is
  consumed.
- Baseline conclusion preserved: The \(m=0\) execution remains actual and
  catalog-covered; arbitrary \(\tau>0\), including \(\tau\ge1\), is covered
  because \(K\ge1\) and \(1/K\le\tau\).
- Producer-consumer provenance: Producer `step_001`; actual validity and
  catalog membership are consumed by `step_002`.  The catalog identity and
  size are also consumed by `step_005`.
- Null or boundary regime tested: \(m=0\), \(\tau\ge1\), midpoint ties,
  early stopping, arbitrary and nonatomic tapes, and tape-dependent adaptive
  queries.  All use the same fixed \(\rho\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without per-query validity, the universal learner guarantee and
  canonical catalog antecedent cannot be invoked.  The displayed rounding
  calculation supplies the source on every allowed branch.
- Repair route if source is unsupported: None.

### `step_002`: Actual-run risk yields a catalog correlation witness

- Step ID: `step_002`
- Claim class: Positive lower bound and generated correlation certificate.
- Theorem role: Supplies, for every fixed \((\mathcal D,h)\), a catalog
  coordinate with risk at most \(\varepsilon\) and signed correlation at least
  \(\rho_\varepsilon\).
- Mechanism source: The primitive every-policy expected-risk inequality,
  instantiated at the valid policy from `step_001`, plus the finite actual
  terminal range from canonical catalog membership.  Let
  \(Z(r)=\mathcal L_{\mathcal D,h}
  (A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h))\).  This bounded
  random variable is \(\mu\)-measurable by
  `assump:universal-adversarial-sq`, satisfies \(\mathbb E Z\le\varepsilon\),
  and takes values among risks of at most \(L\) actual output functions.  If
  every actually occurring catalog function had risk strictly larger than
  \(\varepsilon\), finiteness would give a minimum
  \(\delta>\varepsilon\) and hence \(Z\ge\delta\) everywhere, contradicting
  \(\mathbb E Z\le\varepsilon\).  Thus one actually occurring \(g_i\) has
  risk at most \(\varepsilon\).
- Source-to-claim adequacy: The source controls the same binary risk and the
  same \((\mathcal D,h)\) used downstream.  For the selected actual-output
  function, the error event is measurable and
  \[
  h(x)g_i(x)=1-2\mathbf 1\{g_i(x)\ne h(x)\},
  \qquad
  \mathbb E_{\mathcal D}[hg_i]
  =1-2\mathcal L_{\mathcal D,h}(g_i)
  \ge\rho_\varepsilon.
  \]
  No measurable map \(r\mapsto i\), pushforward output law, or evaluation of
  a never-reached catalog coordinate under arbitrary \(\mathcal D\) is used.
- Residual-to-target adequacy: Produced control is actual risk
  \(\le\varepsilon\); consumed interface is signed correlation of the same
  catalog function under the same \((\mathcal D,h)\).  The exact identity has
  zero residual and converts the error scale to the required margin
  \(1-2\varepsilon\).
- Key positive/control term or structural source: The finite attained
  actual-output range and the universal upper bound \(\mathbb E Z\le
  \varepsilon\).
- Opposing defect terms: Learner randomness may be nonatomic, the output-index
  map need not be measurable, and a best output need not have positive tape
  mass.  None is a defect: only \(Z\) is integrated, its range is finite, and
  existence of one low-risk range value is purely order-theoretic.
- Closure/dominance/absorption relation: If all finitely many occurring risk
  values exceed \(\varepsilon\), their minimum exceeds \(\varepsilon\), which
  contradicts the expectation bound.  Then
  \(1-2\mathcal L\ge1-2\varepsilon\) exactly.
- Accumulation behavior / scope compatibility: Static one-instance argument;
  no iteration, policy averaging, limiting distribution, or accumulated
  error is present.  The universal quantifiers are retained, and the policy
  is merely instantiated after being proved valid.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` legally produces the actual execution
  and membership; the primitive universal guarantee produces the expected
  loss bound; the finite-range contradiction produces correlation; only then
  does `step_003` consume it.  Correlation is not part of the catalog
  assumption.
- Entry-state / first-update stress result: No iterative update is needed.  On
  the \(m=0\) actual execution, the same measurable loss and finite-range
  argument applies.  At \(\varepsilon=0\), nonnegativity plus finite range
  forces an occurring zero-risk value and hence correlation \(1\).
- Baseline conclusion preserved: \(\varepsilon=0\) gives exact correlation
  \(1\), not \(1\) minus a rounding or measurability remainder.
- Producer-consumer provenance: Producer `step_002`; its per-distribution
  catalog best response is consumed by `step_003` for each finitely supported
  \(\mathcal D_p\).
- Null or boundary regime tested: \(L=1\), duplicate catalog functions,
  nonatomic tapes, measure-zero tapes, \(m=0\), and \(\varepsilon=0\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without the finite canonical range, an infimum risk at
  \(\varepsilon\) need not be attained by any output.  The primitive finite
  catalog supplies precisely this attainment source.
- Repair route if source is unsupported: None.

### `step_003`: Finite-distribution game produces a simultaneous separator

- Step ID: `step_003`
- Claim class: Finite minimax lower bound and finite simultaneous-margin
  certificate.
- Theorem role: Changes \(\forall p\,\exists i\) into
  \(\exists w_{h,F}\,\forall x\in F\) at the unchanged margin.
- Mechanism source: Sion, *On General Minimax Theorems* (1958), Theorem 3.4,
  DOI 10.2140/pjm.1958.8.171, specialized to two finite simplices.  The exact
  standard statement used is: for nonempty finite sets \(F\) and \([L]\),
  any real matrix \(A\in\mathbb R^{F\times L}\), and the continuous bilinear
  payoff \(f(w,p)=p^TAw\),
  \[
  \max_{w\in\Delta_L}\min_{p\in\Delta_F}p^TAw
  =\min_{p\in\Delta_F}\max_{w\in\Delta_L}p^TAw.
  \]
  Both current domains are nonempty compact convex subsets of finite
  Euclidean spaces, and \(f\) is affine and continuous in each variable, so
  all Sion hypotheses hold.  The theorem supplies only this order equality.
- Source-to-claim adequacy: Fix \(h\) and nonempty finite \(F\), set
  \(A_{xi}=h(x)g_i(x)\), and for each \(p\in\Delta_F\) let
  \(\mathcal D_p\) be the finitely supported distribution with masses
  \(p_x\).  `step_002` gives an index \(i(p)\) for which
  \(\sum_xp_xA_{x,i(p)}\ge\rho_\varepsilon\).  Hence
  \[
  \min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
  \ge\rho_\varepsilon.
  \]
  Linearity on simplices gives
  \(\max_{w\in\Delta_L}p^TAw=\max_i p^TAe_i\) and
  \(\min_{p\in\Delta_F}p^TAw=\min_{x\in F}(Aw)_x\).  Therefore the exact
  minimax orientation is
  \[
  \boxed{
  \min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
  =\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x
  }
  \ge\rho_\varepsilon.
  \]
  Compactness of \(\Delta_L\) attains the maximum, producing
  \(w_{h,F}\) with \(h(x)\sum_iw_{h,F,i}g_i(x)\ge\rho_\varepsilon\) for
  every \(x\in F\).
- Residual-to-target adequacy: Produced matrix payoff and consumed pointwise
  signed margin use the same values \(h(x)g_i(x)\), the same weights, and the
  same threshold.  The extreme-point equalities have zero residual; no
  surrogate distribution, norm, or function is transferred.
- Key positive/control term or structural source: The uniform lower bound
  \(\forall p\in\Delta_F:\max_i p^TAe_i\ge\rho_\varepsilon\) from
  `step_002`, together with exact finite minimax equality.
- Opposing defect terms: The best index may vary arbitrarily with \(p\), and
  the set of all \(p\)'s is uncountable.  Bilinear minimax, not an index
  selection argument, handles that variation with no loss.
- Closure/dominance/absorption relation: The left game value is at least
  \(\rho_\varepsilon\); minimax equality transfers exactly that value to the
  maximizing mixture; minimization over \(\Delta_F\) is attained at a point
  mass, yielding every point constraint.
- Accumulation behavior / scope compatibility: The declared scope is one
  finite \(F\) and all its probability weights.  All payoffs are finite sums
  \(\sum_{x\in F}p_xh(x)g_i(x)\), so their sign and value are exact.  There is
  no approximation or persistent forcing term.  Repeating the conclusion for
  each finite \(F\) creates no summed error; `step_004` uses only the exact
  finite-intersection property.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` -> every \(p\) best-response lower
  bound -> finite minimax -> `step_003` finite separator -> `step_004`.
  Neither the premise nor Sion's theorem assumes a simultaneous separator.
- Entry-state / first-update stress result: For a singleton \(F=\{x\}\), the
  only \(p\) is the point mass and the game gives a mixture with the single
  point margin.  For \(F=\varnothing\), minimax is not invoked; because
  \(L\ge1\), any \(w\in\Delta_L\) satisfies the vacuous finite system.
- Baseline conclusion preserved: At \(\varepsilon=0\), both game values and
  the finite pointwise margin remain at least \(1\) exactly.
- Producer-consumer provenance: Producer `step_003`; every
  \(w_{h,F}\) certifies the finite intersection consumed by `step_004`.
- Null or boundary regime tested: Empty and singleton \(F\), \(L=1\),
  duplicate matrix columns, zero simplex coordinates, and
  \(\rho_\varepsilon=1\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without the minimax order equality, distribution-dependent best
  catalog indices need not yield a single simultaneous mixture.  The fully
  mapped finite-dimensional theorem supplies exactly this reversal.
- Repair route if source is unsupported: None.

### `step_004`: Fixed-simplex finite-intersection globalization

- Step ID: `step_004`
- Claim class: Arbitrary-domain compactness closure and global pointwise-margin
  certificate.
- Theorem role: Changes exact feasibility on every finite subset into one
  weight satisfying every point of the original arbitrary domain.
- Mechanism source: Two fully specified standard finite-dimensional facts.
  First, \(\Delta_L\) is closed and bounded in \(\mathbb R^L\), hence compact
  by Heine--Borel.  Second, in a compact topological space \(K\), any family
  \(\{C_j\}_{j\in J}\) of closed subsets for which every finite intersection
  is nonempty has nonempty total intersection.  Direct proof: if the total
  intersection were empty, \(\{K\setminus C_j\}_{j\in J}\) would be an open
  cover; a finite subcover would make the corresponding finite intersection
  empty.  In current objects,
  \[
  C_{h,x}:=\{w\in\Delta_L:
  h(x)\textstyle\sum_iw_ig_i(x)\ge\rho_\varepsilon\}
  \]
  is closed because it is the inverse image of
  \([\rho_\varepsilon,\infty)\) under a continuous linear functional.
- Source-to-claim adequacy: `step_003` states exactly that
  \(\bigcap_{x\in F}C_{h,x}\ne\varnothing\) for every nonempty finite
  \(F\).  The empty finite intersection is \(\Delta_L\ne\varnothing\)
  because \(L\ge1\).  Thus the same closed subsets of the same fixed compact
  space have the FIP.  The standard theorem yields
  \(w_h\in\bigcap_{x\in\mathcal X}C_{h,x}\).  It does not require a sequence,
  a topology on \(\mathcal X\), or compatible choices of \(w_{h,F}\).
- Residual-to-target adequacy: Finite and global constraints use the same
  catalog, target, simplex, pointwise functional, and fixed threshold
  \(\rho_\varepsilon\).  There is no limiting function outside the catalog
  span and no margin residual.
- Key positive/control term or structural source: Closed constraints at one
  uniform positive margin inside one fixed compact finite-dimensional
  simplex.
- Opposing defect terms: Arbitrary cardinality of \(\mathcal X\), possible
  incompatibility of separately selected finite witnesses, failure of a
  sequential argument on uncountable index families, and possible loss of
  strictness under open constraints.  FIP uses no compatibility or sequence,
  and closed constraints at the unchanged threshold prevent margin loss.
- Closure/dominance/absorption relation:
  \[
  \forall F\subseteq\mathcal X\text{ finite}\quad
  \bigcap_{x\in F}C_{h,x}\ne\varnothing
  \quad\Longrightarrow\quad
  \bigcap_{x\in\mathcal X}C_{h,x}\ne\varnothing.
  \]
  The implication follows by the finite-subcover contradiction above, with
  zero defect.
- Accumulation behavior / scope compatibility: This is an arbitrary-family
  scope.  Controlled quantities are all signed point evaluations; the local
  interface is exact finite feasibility; accumulated forcing/residual is
  identically zero with controlled sign.  Compactness plus FIP is the
  mechanism-specific relation valid for the whole arbitrary cardinality,
  rather than a finite budget or asymptotic limit.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Fixed compact \(\Delta_L\) comes from the
  primitive finite \(L\); `step_003` independently produces every finite
  intersection; the open-cover theorem then produces the total intersection;
  `step_005` consumes the resulting \(w_h\).  No input assumes a global
  separator or a compatible family of finite witnesses.
- Entry-state / first-update stress result: The empty finite subfamily has
  intersection \(\Delta_L\ne\varnothing\); the first singleton constraint is
  feasible by `step_003`.  If \(\mathcal X=\varnothing\), the full indexed
  intersection is \(\Delta_L\), and any weight works without an update.
- Baseline conclusion preserved: At \(\varepsilon=0\), every closed set uses
  threshold \(1\), so the global margin remains exactly \(1\).
- Producer-consumer provenance: Producer `step_004`; the global \(w_h\) is
  consumed by `step_005` for exact signs and dimension closure.
- Null or boundary regime tested: Empty, finite, countably infinite, and
  uncountable \(\mathcal X\); \(L=1\); duplicate catalog entries; and
  threshold \(1\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Finite feasibility in varying spaces or with open/lossy
  constraints need not globalize.  Here the fixed compact simplex and closed
  exact-threshold constraints supply the missing source.
- Repair route if source is unsupported: None.

### `step_005`: Exact coordinate signs and quantitative closure

- Step ID: `step_005`
- Claim class: Strict-sign representation and explicit-rate theorem closure.
- Theorem role: Converts the global simplex certificates into the precise
  deterministic dimension-complexity conclusion.
- Mechanism source: Direct current-notation coordinate identity and primitive
  catalog-size certificate.  For the fixed pre-instance map
  \(\phi(x)=(g_1(x),\ldots,g_L(x))\),
  \[
  \langle w_h,\phi(x)\rangle=\sum_iw_{h,i}g_i(x).
  \]
  `step_004` gives signed value at least
  \(\rho_\varepsilon=1-2\varepsilon>1/2>0\), and
  `assump:canonical-rounded-output-catalog` gives the exact size inequality.
- Source-to-claim adequacy: Produced separator and consumed score are exactly
  the same function, in the same pointwise metric and on the same domain.
  The positive lower bound excludes ties and matches the definition of
  \(\operatorname{dc}\) with \(u_h=w_h\).  The feature map is fixed before
  \(h\); only the weights depend on \(h\).  Duplicate coordinates do not
  change the equality and need not be removed.
- Residual-to-target adequacy: The residual between the produced mixture
  function and consumed linear score is identically zero for every point.
  The required target scale is strict positivity; zero residual is dominated
  by the available margin \(\rho_\varepsilon>1/2\).
- Key positive/control term or structural source: The exact global margin and
  the primitive finite catalog bound.
- Opposing defect terms: Sign ties, target-dependent feature maps, hidden
  constants, domain-size terms, and losses at boundary parameters.  Strict
  positive margin excludes ties; the catalog is pre-instance; the displayed
  inequalities expose every parameter and contain no hidden term.
- Closure/dominance/absorption relation:
  \[
  h(x)\langle w_h,\phi(x)\rangle\ge1-2\varepsilon>0,
  \qquad
  \operatorname{dc}(\mathcal H)\le L
  \le B(1+m/\tau^2)^k.
  \]
  Both are direct inequalities; no absorption or simplification occurs.
- Accumulation behavior / scope compatibility: Static final assembly.  The
  arbitrary-domain scope was closed with zero defect in `step_004`; no new
  recurrence, limit, or probability conversion is introduced.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` fixes the catalog and map data;
  `step_002` produces correlation; `step_003` produces finite separators;
  `step_004` produces \(w_h\); only then does `step_005` invoke the definition
  of dimension complexity and the primitive catalog-size bound.  The catalog
  certificate does not assume that it represents \(\mathcal H\).
- Entry-state / first-update stress result: No update is required.  If
  \(\mathcal H=\varnothing\) or \(\mathcal X=\varnothing\), the sign
  quantifiers are vacuous and \(\operatorname{dc}=0\).  Otherwise the global
  positive margin is active before exact signs are asserted.
- Baseline conclusion preserved: \(m=0\) gives \(L\le B\); \(\varepsilon=0\)
  gives margin \(1\); \(L=1\) uses its unique simplex weight; every
  \(\tau>0\), nonatomic tape, infinite domain, and duplicate catalog remain
  within the same exact conclusion.
- Producer-consumer provenance: Producers `step_001` and `step_004`; consumer
  is final theorem assembly.
- Null or boundary regime tested: Empty \(\mathcal H\), empty \(\mathcal X\),
  \(m=0\), \(\varepsilon=0\), \(L=1\), \(B=1\), \(k=1\), arbitrary
  \(\tau>0\), infinite domains, and duplicate functions.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: If the global margin vanished, exact signs could fail; if the
  primitive size bound vanished, the polynomial rate could fail.  Both
  sources are available before assembly.
- Repair route if source is unsupported: None.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Actual tolerance-valid canonical execution and terminal membership in \(\mathcal C_A^\rho\) | `step_001`, direct from `assump:sq-parameter-regime`, the bounded-query convention in `assump:universal-adversarial-sq`, and primitive `assump:canonical-rounded-output-catalog` | \(K=\lceil1/\tau\rceil\), nearest-grid radius \(1/K\), exact center of each reached bounded query, at most \(m\) reached queries, and catalog equality on actual canonical runs | Per-query rounding error is controlled by \(1/K\le\tau\); adaptive query changes are not errors and require no accumulation bound; invalid synthetic branches and outputs under other policies are deliberately uncontrolled and unused | Reply produced is \(\rho(v)\), target is the current tolerance interval about the same \(v\), absolute residual \(\le\tau\); terminal output and catalog member are equal functions, residual zero | Check \(|\rho(v)-v|\le1/K\le\tau\) at every reached query, then apply the exact primitive membership implication; no policy or transcript conversion | Grid covering radius and primitive catalog certificate | `step_002`; catalog identity and size also feed `step_005` | None |
| For every fixed \((\mathcal D,h)\), an actually occurring \(g_i\) with risk \(\le\varepsilon\) and correlation \(\ge\rho_\varepsilon\) | `step_002`, from actual-run expected risk plus finite terminal range | Measurable bounded actual loss \(Z\), \(\mathbb EZ\le\varepsilon\), and at most \(L\) actual terminal functions | Error defect \(2\varepsilon\) is exposed; nonatomic tapes, nonmeasurable output-index selectors, and zero-mass outputs are harmless because only \(Z\) is integrated; risks of never-occurring catalog functions under arbitrary \(\mathcal D\) are uncontrolled and unused | Same selected actual function, same \((\mathcal D,h)\), and exact binary identity \(\mathbb E[hg_i]=1-2\mathcal L(g_i)\); residual zero at target scale \(\rho_\varepsilon\) | Finite range makes a value \(\le\mathbb EZ\) attainable in the required weak sense; exact affine conversion yields \(1-2\varepsilon\) | Universal risk bound and finite canonical catalog | `step_003` for each finitely supported \(\mathcal D_p\) | None |
| For fixed \(h\) and every finite \(F\), a weight \(w_{h,F}\in\Delta_L\) satisfying all \(F\)-point margins at \(\rho_\varepsilon\) | `step_003`, Sion (1958), Theorem 3.4, specialized to the finite matrix \(A_{xi}=h(x)g_i(x)\) | For every \(p\in\Delta_F\), `step_002` gives \(\max_i p^TAe_i\ge\rho_\varepsilon\); finite nonempty compact convex simplices and continuous bilinear payoff | The best index can depend on \(p\), controlled by minimax; all payoffs are finite sums, so no measurability defect; empty \(F\) is handled vacuously; no approximation or uncontrolled matrix term | Matrix mixture and consumed pointwise score are identical: \((Aw)_x=h(x)\sum_iw_ig_i(x)\); zero residual | \(\min_p\max_i p^TAe_i=\max_w\min_x(Aw)_x\ge\rho_\varepsilon\); maximum attained; no loss | Uniform correlation lower bound from `step_002` and exact minimax equality | `step_004` | None |
| For fixed \(h\), one global \(w_h\in\Delta_L\) satisfying every point constraint on arbitrary \(\mathcal X\) | `step_004`, Heine--Borel plus the fully stated closed-set FIP theorem | Fixed \(L\ge1\), compact \(\Delta_L\), closed halfspace constraints \(C_{h,x}\), and nonempty intersections for all finite subfamilies from `step_003` | Arbitrary domain cardinality, incompatible finite witnesses, and nonsequential scope are controlled by the arbitrary-family FIP; zero limiting defect; no topology or measurability on \(\mathcal X\) is required | Finite and global interfaces use the same weights, evaluations, and threshold; no transformed or surrogate object and zero residual | If the total intersection were empty, open complements would have a finite subcover, contradicting finite feasibility | Fixed closed threshold \(\rho_\varepsilon>1/2\) and compactness of the same simplex | `step_005` | None |
| Exact common map, strict signs, and \(\operatorname{dc}(\mathcal H)\le L\le B(1+m/\tau^2)^k\) | `step_005`, exact coordinate algebra plus primitive catalog-size certificate | Pre-instance catalog/map, global weights, strict positive margin, and explicit size inequality | Tie, domain-size, hidden-constant, policy, and tape defects are absent; empty-domain/class branches are vacuous; duplicates are allowed | Produced mixture function equals the consumed Euclidean score pointwise, residual zero, which is below the strict margin scale | Exact identity followed by the definition of \(\operatorname{dc}\) and direct substitution of the catalog bound | \(\rho_\varepsilon=1-2\varepsilon>1/2>0\) and primitive \(L\) bound | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Reached-query validity of \(\mathcal O^\rho_{\mathcal D,h}\) and actual canonical catalog membership for every tape | `step_001`, direct nearest-grid derivation in the branch's additive-tolerance convention plus primitive `assump:canonical-rounded-output-catalog`; exact response residual \(\le1/K\le\tau\), exact terminal-function equality | `step_002`; catalog/map data also used by `step_005` | Makes the only learner risk expectation legal and fixes the theorem's coordinate functions | Primitive parameter/query conventions -> `step_001` -> `step_002`; primitive catalog + `step_001` -> `step_005` | derived validity; primitive catalog membership instantiated on the derived valid execution | None |
| Per-\((\mathcal D,h)\) actual catalog function with risk \(\le\varepsilon\) and correlation \(\ge\rho_\varepsilon\) | `step_002`, finite-range contradiction from the primitive measurable actual-run loss and universal expectation; exact risk-correlation identity | `step_003`, instantiated for every finite-support \(\mathcal D_p\) | Supplies the positive game-value source | `step_001` + primitive universal guarantee -> `step_002` -> `step_003` | derived | None |
| Finite simultaneous separator \(w_{h,F}\) | `step_003`, Maurice Sion, *On General Minimax Theorems* (1958), Theorem 3.4, DOI 10.2140/pjm.1958.8.171; current objects are \(\Delta_L,\Delta_F,A\), both domains are compact convex, payoff is continuous bilinear, and the theorem supplies only the exact order equality | `step_004` | Certifies every finite intersection of pointwise closed constraints | `step_002` -> finite-support instantiation -> `step_003` -> `step_004` | derived | None |
| Global pointwise separator \(w_h\) | `step_004`, compactness of the fixed finite simplex and the closed-set FIP theorem, fully proved by finite-subcover contradiction in current objects | `step_005` | Supplies one target-dependent weight for all points of arbitrary \(\mathcal X\) | `step_003` finite intersections -> `step_004` global intersection -> `step_005` | derived | None |
| Target weight, exact sign certificate, and explicit dimension chain | `step_005`, exact catalog-coordinate identity, positive margin, definition of \(\operatorname{dc}\), and primitive catalog bound | Final assembly | Is the formalized theorem conclusion | `step_001`,`step_004` -> `step_005` -> final theorem | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | For every \((\mathcal D,h)\), prove recursively that the nearest-grid exact-center policy is tolerance-valid at every reached adaptive query; its execution is therefore actual, and for every tape its terminal function belongs to the fixed catalog.  Cover early stopping and \(m=0\), and assert nothing about a prescribed invalid transcript. | None | Primitive `assump:sq-parameter-regime`, `assump:universal-adversarial-sq`, and `assump:canonical-rounded-output-catalog` | Keep validity pathwise on reached queries, distinguish oracle computation from learner access, and avoid any all-transcript or all-policy strengthening. | Direct current-notation derivation \(|\rho(v)-v|\le1/K\le\tau\), followed by exact primitive catalog membership; source conventions and object equality fixed above. | Actual valid canonical executions and fixed-catalog membership, with no synthetic-output object. | R1 and R2: retain every \(m,\tau,L,B,k\), including the actual \(m=0\) branch and all \(\tau>0\). | PENDING |
| `step_002` | For each fixed \((\mathcal D,h)\), prove that some catalog function occurring as a terminal output on the actual canonical execution has \(\mathcal L_{\mathcal D,h}(g_i)\le\varepsilon\), and hence \(\mathbb E_{\mathcal D}[h g_i]\ge\rho_\varepsilon\).  Use only the measurable actual-run loss and do not require a measurable catalog selector. | `step_001` | Primitive `assump:sq-parameter-regime`, `assump:universal-adversarial-sq`, and `assump:canonical-rounded-output-catalog`; derived validity/membership from `step_001` | Extract an attained low-risk catalog value with a nonatomic tape while never integrating catalog functions reached only on invalid or irrelevant branches. | Finite-range contradiction for the measurable scalar loss, then \(hg=1-2\mathbf1\{g\ne h\}\). | Per-distribution catalog best response with exact correlation margin. | R1: exact \(\rho_\varepsilon=1-2\varepsilon\), including \(\varepsilon=0\), with zero rounding or measurability residual. | PENDING |
| `step_003` | For every fixed \(h\) and nonempty finite \(F\subseteq\mathcal X\), set \(A_{xi}=h(x)g_i(x)\), apply `step_002` to every finitely supported \(\mathcal D_p\), and prove \(\min_{p\in\Delta_F}\max_i p^TAe_i=\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x\ge\rho_\varepsilon\).  Select \(w_{h,F}\) attaining the right side.  Treat \(F=\varnothing\) separately by vacuity. | `step_002` | Primitive `assump:sq-parameter-regime`; derived per-distribution correlation from `step_002` (which already discharges the universal premise and canonical membership) | Preserve the exact minimizing-distribution/maximizing-mixture orientation and explain why finitely supported proof distributions require only finite pointwise sums and do not narrow the theorem premise. | Sion (1958), Theorem 3.4, DOI 10.2140/pjm.1958.8.171, fully specialized and mapped above; simplex extreme-point equalities. | Exact simultaneous \(\rho_\varepsilon\)-margin on every finite restriction. | R1: preserve the exact margin through minimax, with no approximation or probability conversion; retain all exposed \(m,\tau,\varepsilon,L,B,k\) from the producer contract. | PENDING |
| `step_004` | For fixed \(h\), define the closed constraints \(C_{h,x}\subseteq\Delta_L\), prove their FIP from `step_003`, and use compactness to obtain \(w_h\in\bigcap_{x\in\mathcal X}C_{h,x}\).  Audit empty, finite, and arbitrarily infinite \(\mathcal X\) without requiring compatible finite witnesses or a sequence. | `step_003` | Primitive `assump:canonical-rounded-output-catalog` for \(L\ge1\); derived finite feasibility from `step_003` | Globalize \(\forall F\text{ finite}\,\exists w_{h,F}\) to \(\exists w_h\,\forall x\) in one fixed space while retaining a closed positive margin. | Heine--Borel and the fully specified closed-set FIP theorem, proved by the open-cover finite-subcover contradiction in current notation. | One global simplex weight with exact pointwise margin on arbitrary \(\mathcal X\). | R1: zero-residual arbitrary-domain bridge at unchanged \(\rho_\varepsilon\), including \(\varepsilon=0\), \(L=1\), and duplicate catalog entries. | PENDING |
| `step_005` | Fix \(\phi(x)=(g_1(x),\ldots,g_L(x))\); for every target use `step_004` to prove \(h(x)\langle w_h,\phi(x)\rangle\ge1-2\varepsilon>1/2>0\) for all \(x\), then derive \(\operatorname{dc}(\mathcal H)\le L\le B(1+m/\tau^2)^k\).  Handle empty \(\mathcal X/\mathcal H\), \(m=0\), \(L=1\), and duplicate coordinates. | `step_001`, `step_004` | Primitive `assump:sq-parameter-regime` and `assump:canonical-rounded-output-catalog`; derived fixed catalog data from `step_001` and global weights from `step_004` | Preserve pre-instance map independence, strict signs, and every exposed rate variable with no hidden constants or silent boundary loss. | Exact coordinate algebra and the definition of deterministic dimension complexity; direct substitution of the primitive catalog inequality. | Full conditional canonical-policy catalog theorem. | R1 and R2: exact public margin and dimension inequalities, no hidden constants, and exact \(m=0,\varepsilon=0,L=1,B=1,k=1\) specializations. | PENDING |

## Dependency Notes

The graph is acyclic and every edge points to an earlier step:
`step_001` produces legal actual canonical executions and membership;
`step_002` consumes only that output and primitive expected risk;
`step_003` consumes the correlation output for finitely supported proof laws;
`step_004` consumes only finite feasibility in the already fixed simplex; and
`step_005` consumes the pre-instance catalog data and the global weights.

The quantifier flow is exact:
\[
\begin{aligned}
&\forall(\mathcal D,h)\ \exists i=i(\mathcal D,h)
  &&\text{(`step_002`)},\\
&\forall h\ \forall F\ne\varnothing\ \forall p\in\Delta_F\
  \exists i=i(p)
  &&\Longrightarrow
  \forall h\ \forall F\ne\varnothing\ \exists w_{h,F}\ \forall x\in F
  \quad\text{(`step_003`)},\\
&\forall h\ \forall F\subseteq\mathcal X\text{ finite}\
  \exists w_{h,F}\ \forall x\in F
  &&\Longrightarrow
  \forall h\ \exists w_h\ \forall x\in\mathcal X
  \quad\text{(`step_004`)}.
\end{aligned}
\]
The first implication is finite minimax with the distribution player on the
outer minimum and the catalog-mixture player on the outer maximum.  The
second is the finite-intersection theorem; it does not select a compatible
family \(F\mapsto w_{h,F}\).

Assembly preserves object identity at every interface.  `step_001` uses only
reached canonical executions; `step_002` integrates only their primitive
measurable loss; `step_003` uses algebraic finite sums of catalog point values;
`step_004` stays in the same \(\Delta_L\); and `step_005` uses the exact same
mixture as a Euclidean weight.  Thus there is no invalid-transcript
measurability demand, random feature-map law, favorable-policy premise,
surrogate target, residual, mode upgrade, or hidden parameter dependence.

Boundary assembly is also closed.  If \(\mathcal H=\varnothing\), all target
claims are vacuous and \(\operatorname{dc}=0\).  For fixed h and
\(\mathcal X=\varnothing\), `step_004` selects any point of the nonempty
\(\Delta_L\), and \(\operatorname{dc}=0\).  If \(m=0\), `step_001` uses the
actual no-query execution and the final rate is \(L\le B\).  The arguments
are unchanged for nonatomic tape spaces, \(L=1\), duplicate catalog
functions, every \(\tau>0\), and \(\varepsilon=0\).

## Blockers

None.
