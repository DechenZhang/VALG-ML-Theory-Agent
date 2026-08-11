# Proof Sketch

## Formalized Setting

This is `perspective_1/idea_3`, sketch attempt 1.  The primitive setting is the
third-order asymmetric CP tensor
\[
T=\sum_{j=1}^r\lambda_j u_j\otimes v_j\otimes w_j
\]
obtained from independently Gaussian-smoothed, bounded-scale,
cumulatively-incoherent, nearly weight-balanced base factors.  EP-ALS uses
\(k=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\) independent Gaussian
proposal triples.  Each proposal is updated by *cyclic* normalized rank-one
ALS for \(L_0=\lceil C_0\log\log r\rceil\) sweeps, then passes through an
observable displacement/score filter and graph clustering.  The selected
active rank-\(r\) representatives are refined by cyclic CP-ALS; the other
\(k-r\) columns remain zero.

The primitive technical assumptions are `assump:base-scale`,
`assump:cumulative-gram`, `assump:base-weight-balance`,
`assump:gaussian-smoothing`, `assump:smoothing-margin`,
`assump:subquadratic-rank`, `assump:random-initialization`, and
`assump:accuracy-confidence`.  Realized Gram control, weight balance,
Khatri--Rao conditioning, proposal coverage, cyclic contraction, filtering,
clustering, basin membership, Hessian positivity, and terminal convergence are
derived obligations, not assumptions.

## Formalized Goal

The branch is in exact-goal mode.  It asks for universal
\(C_{\rm rank},C_0,C_{\rm rep}\) such that, with probability at least
\(1-\delta_{\rm sm}\) over the once-drawn smoothed tensor and then at least
\(1-\delta_{\rm init}\) over EP-ALS randomness conditional on every retained
instance, the returned rank-\(k\) tensor has relative Frobenius residual at
most \(\epsilon\) in explicit polynomial time.  A theorem-critical required
interface is the cyclic contamination recurrence
\[
R_{t+1}\le
\frac{\Gamma(R_t^2+2q_*)}{1-2\Gamma q_*}
\qquad\text{from }R_0\le 19/20,
\tag{1}
\]
where \(q_*=1/4096\).  The goal requires (1), rather than merely an
unspecified proposal-basin condition, to produce alignment for filtering,
clustering, local-basin entry, and terminal refinement.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

No viable proof roadmap exists for the unchanged formalized setting and goal.
The natural roadmap would first derive the good smoothed-instance event, then
prove rare-extreme proposal coverage, use (1) to obtain component alignment,
certify the observable filter and clusters, transfer representatives into the
joint quotient-Hessian basin, prove local CP-ALS contraction, and finally
aggregate restart probability and runtime.  The first transition from
rare-extreme entry to cyclic alignment is algebraically false even in the
orthogonal, equal-weight boundary subcase permitted by the primitive geometry.
Consequently the roadmap cannot legally allocate that transition to a future
proof step.

No `technical_survey.md` is used.  The obstruction is a direct calculation in
the branch's own update equations; a proof framework or citation cannot make
the false recurrence true.

## Rate Objectives

1. **Strictly subquadratic rank (structural-parameter explicit).**
   - Exposed variables: \(r,k\), with
     \(k=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\), \(r<k\le n\).
   - Hidden constants may depend on: the fixed numerical \(q_*\), fixed
     exponent \(c=2/3\), and universal EP-ALS constants.
   - Hidden constants may not depend on: the base triple, \(n,r,k,\rho\),
     \(\kappa_0,\epsilon,\delta_{\rm sm},\delta_{\rm init}\).
   - Fixed quantities: \(q_*\), \(c=2/3\), and the finite regime exponents
     \(d_\kappa,d_\rho\).
   - Probability mode: nested high probability over the instance and
     conditional initialization.
   - Horizon mode: one proposal run of \(L_0=O(\log\log r)\) sweeps, followed
     by a first-residual-hitting refinement horizon.
   - Norm mode: relative Frobenius norm for the final output.
   - Required bridge or simplification obligations: the rare-event probability
     \(\Omega(r^{-5/3}(\log r)^{-3/2})\) must combine with \(k\) to give an
     \(\Omega(\log r)\) coverage exponent without adding confidence dependence
     to \(k\).  This bridge is downstream of the false recurrence and cannot
     currently be completed.
   - Baseline invariance obligations: the claimed cyclic contraction must in
     particular remain true in the zero-interference, equal-weight limit.  It
     fails there, so no target-preserving rate bridge exists.

2. **Smoothed-instance geometry (confidence- and regularity-explicit).**
   - Exposed variables: \(n,r,\rho,\kappa_0,\delta_{\rm sm}\), including the
     separate linear directional, quadratic, and normalization terms required
     by `assump:smoothing-margin`.
   - Hidden constants may depend on: universal Gaussian concentration
     constants only.
   - Hidden constants may not depend on: the deterministic base triple or an
     unlisted conditioning quantity.
   - Fixed quantities: \(q_*\), \(d_\kappa\), and \(d_\rho\).
   - Probability mode: at least \(1-\delta_{\rm sm}\) over one tensor draw.
   - Horizon mode: static, before proposal randomness.
   - Norm mode: Euclidean column norm, normalized Gram row-sum norm, weight
     ratio, and spectral norm for cyclic Khatri--Rao Grams.
   - Required bridge or simplification obligations: raw perturbation controls
     must export \(q(U),q(V),q(W)\le q_*\), \(\Gamma\le1.01\), and
     \(\lambda_{\min}((V\odot W)^\top(V\odot W))\ge1-q_*^2\), cyclically.
     This isolated bridge is not the blocker, but proving it cannot repair
     (1).
   - Baseline invariance obligations: as \(\rho\) tends to zero around an
     orthogonal equal-weight base, the proposed dynamic interface must reduce
     to the exact orthogonal cyclic update.  That specialization exposes the
     contradiction below.

3. **Initialization, accuracy, and runtime (confidence-, horizon-, and
   numerical-error explicit).**
   - Exposed variables: \(n,r,k,\kappa_0,\rho^{-1},\epsilon,
     \delta_{\rm init}\).
   - Hidden constants may depend on: universal algorithmic constants and the
     fixed regime exponents, with polynomial dependence on the exposed
     \(\kappa_0\) and \(\rho^{-1}\) shown rather than hidden.
   - Hidden constants may not depend on: the base triple or an unlisted
     trajectory condition.
   - Fixed quantities: \(q_*\), \(c=2/3\), \(d_\kappa,d_\rho\).
   - Probability mode: conditional success amplified to
     \(1-\delta_{\rm init}\) by
     \(J=O(\log(1/\delta_{\rm init}))\) independent runs on the same tensor.
   - Horizon mode: finite proposal horizon and stopping time at relative
     residual \(\epsilon\).
   - Norm mode: relative Frobenius residual.
   - Required bridge or simplification obligations: a primitive-to-per-run
     success bridge, a local linear-rate bound giving
     \(O(\log(1/\epsilon))\) refinement sweeps, and explicit costs for all
     proposals, filtering, clustering, ALS sweeps, and restarts.  The per-run
     success bridge has no producer because (1) fails.
   - Baseline invariance obligations: exact CP data must permit arbitrarily
     small residual rather than a nonzero error floor.  Replacing this by a
     stopped or conditional remainder would weaken the goal and is not an
     allowed sketch repair.

## Assumption Provenance Objectives

The following generated facts would be needed for an unconditional proof from
the branch's primitive conditions.

1. The realized event containing norm retention, normalized Gram row-sum
   control, weight balance, and cyclic Khatri--Rao conditioning would have to
   be derived from `assump:base-scale`, `assump:cumulative-gram`,
   `assump:base-weight-balance`, `assump:gaussian-smoothing`, and
   `assump:smoothing-margin`.
2. A per-target extreme-entry event and simultaneous all-target coverage would
   have to be derived from the realized event, `assump:subquadratic-rank`, and
   `assump:random-initialization`.
3. Cyclic ratio contraction and component alignment would have to be derived
   from those two outputs before filtering or clustering could consume them.
   The proposed bridge is false; it cannot be reclassified as an admissibility
   condition or local conditional hypothesis because the formalized goal
   explicitly requires it from the primitive random-start protocol.
4. Filter correctness, one-cluster-per-component correctness, joint-basin
   membership, quotient-Hessian positivity, and terminal linear convergence
   would then be derived invariants in that order.  None may be assumed in the
   public theorem.  All lack a legal producer after item 3 fails.
5. A universal positive one-run success probability and the polynomial
   stopping bound would have to be derived before restart amplification.
   Neither may be assumed through a `successful run` package.

## Mechanism-Source And Boundary Stress

- Step ID: N/A (blocked theorem-contract obligation: cyclic recurrence)
- Claim class: Recursive contraction, basin production, and generated-invariant
  maintenance.
- Theorem role: Convert a rare proposal satisfying \(R_0\le19/20\) into an
  aligned component representative after \(L_0\) cyclic sweeps.
- Mechanism source: The formalized goal proposes cyclic rank-one ALS together
  with small cumulative Gram interference and near-balanced weights.  In the
  exact orthogonal equal-weight convention the raw update is coordinatewise
  multiplication; this is a direct current-notation derivation from the EP-ALS
  equations, not a cited tool.
- Source-to-claim adequacy: It fails.  Fix target component 1 and competitor 2
  and define the absolute coordinate ratios at an allowed proposal state by
  \[
  x=\frac{|\langle u_2,p\rangle|}{|\langle u_1,p\rangle|}=0.5,
  \quad
  y=\frac{|\langle v_2,q\rangle|}{|\langle v_1,q\rangle|}=0.5,
  \quad
  z=\frac{|\langle w_2,s\rangle|}{|\langle w_1,s\rangle|}=1.9.
  \]
  Other component ratios may be taken arbitrarily small and nonzero.  Then
  \(R_0=\max\{xy,xz,yz\}=0.95=19/20\).  For orthogonal factors and unit
  weights, one exact cyclic \(p\)-, \(q\)-, \(s\)-update gives
  \[
  x^+=yz=0.95,
  \qquad y^+=x^+z=1.805,
  \qquad z^+=x^+y^+=1.71475.
  \]
  Hence
  \[
  R_1=\max\{x^+y^+,x^+z^+,y^+z^+\}
     =1.805\cdot1.71475=3.09512375.
  \]
  In contrast, (1) with \(\Gamma=1\) and the branch's fixed
  \(q_*=1/4096\) gives
  \[
  \frac{0.95^2+2/4096}{1-2/4096}<0.904.
  \]
  The source convention and branch convention coincide in this specialization:
  normalized orthogonal factors, Euclidean inner products, exact cyclic
  rank-one contractions, and the same target component.
- Compatibility with the advertised rare-entry event: Let \(a=10/9\),
  \(b=19/18\), so \(b/a=19/20\), and take \(n\) large enough that
  \(\tau=\sqrt{a\log r/n}<1/2\).  In each proposal mode set the target
  spherical coordinate to \(\tau\), set the competitor coordinates to
  \(0.5\tau,0.5\tau,1.9\tau\), respectively, and put the remaining norm in
  directions orthogonal to the factor spans.  All three target scaled
  correlations meet the \(\sqrt{a\log r}\) threshold, while every displayed
  competitor pair product is at most
  \(0.95a\log r=b\log r\).  Thus the counterexample is compatible with the
  exact extreme-entry inequalities used to justify \(R_0\le19/20\), and an
  open neighborhood of it has positive Gaussian-proposal probability.
- Residual-to-target adequacy: It fails at the recurrence interface.  The
  produced scalar control \(R_0\le0.95\) is consumed as a bound on the next
  cyclic state, but it loses individual coordinate imbalance.  Pair products
  \(xy,xz,yz\) do not control the sequentially reused factor \(z\); the
  residual term \(y^+z^+=x^+(z)(x^+y^+)\) is not dominated at the required
  \(<1\) contraction scale.  Thus no same-target transfer from the
  rare-entry certificate to the claimed cyclic basin exists.
- Key positive/control term or structural source: The intended source is
  squaring of off-target pair products.  That source would match a simultaneous
  three-mode update, but cyclic reuse changes the update exponents and destroys
  the alleged square contraction.
- Opposing defect terms: Individual mode imbalance, specifically a competitor
  with \(z>1\) offset by \(x,y<1\), is invisible to \(R_0\) but is reused twice
  in the cyclic sweep.  This is present even with zero Gram leakage and no
  weight imbalance.
- Closure/dominance/absorption relation: Unsupported.  The required one-step
  inequality is numerically reversed by a gap greater than 2; neither the
  \(2q_*\) allowance nor \(\Gamma\le1.01\) can absorb it.
- Accumulation behavior / scope compatibility: Unsupported at the first
  update.  There is no contractive recurrence, telescoping charge, finite
  budget, or stopping relation to accumulate over \(L_0\) sweeps.  Iterating a
  nonexistent one-step control cannot yield the all-sweep alignment invariant.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: Failed.  Any later filter, cluster, or basin step
  would have to assume the alignment that (1) was supposed to produce.
- Entry-state / first-update stress result: The explicit allowed state above is
  the first-update trace, and the mechanism is inactive in the required sense:
  the target is inside the stated \(R_0\) entry set but exits rather than
  contracts after one cyclic sweep.
- Baseline conclusion preserved: No.  Orthogonal equal-weight factors are the
  zero-interference, no-weight-defect baseline of the claimed recurrence, yet
  the conclusion already fails there.
- Producer-consumer provenance: The intended producer is the extreme-entry
  certificate; intended consumers are proposal alignment, displacement/score
  filtering, clustering, representative-to-basin transfer, and final per-run
  success.  The producer exports only \(R_0\), which is insufficient for all
  these consumers.
- Null or boundary regime tested: \(q(U)=q(V)=q(W)=0\), \(\Gamma=1\), with
  nonzero target pair products.  The state is realizable by unit proposal
  vectors (embed the displayed two-coordinate ratios and fill the remaining
  norm in orthogonal coordinates) and has an open neighborhood under Gaussian
  proposal sampling.  The failure is not confined to the zero-smoothing
  point: all contractions are nonzero and the violation gap is strict, so
  continuity preserves it for sufficiently small positive factor
  perturbations and weight deviations, which occur in the allowed smoothed
  model around an orthogonal equal-weight base.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Yes.  The stated entry certificate does not imply cyclic capture,
  so the entire end-to-end success chain lacks its required alignment source.
- Repair route if source is unsupported: `/subagent-idea-generator`.  A
  weighted cyclic-basin potential plus a newly quantified rare event would
  replace the explicit recurrence and its coverage interface; simultaneous
  proposal updates would change the algorithm; a primitive coordinate-balance
  condition would change the initialization/theorem assumptions; deleting (1)
  would weaken the formalized goal.  Each is a theorem-contract or procedure
  change, not a proof of the current claim.

- Step ID: N/A (blocked downstream obligation: filtering and clustering)
- Claim class: Structural support, score separation, and generated membership
  certificate.
- Theorem role: Use displacement and score to retain exactly the component
  proposals and export one representative per true component without labels.
- Mechanism source: The proposed source is an aligned-proposal certificate
  from the cyclic recurrence, combined with \(q\le q_*\) and
  \(\Gamma\le1.01\).
- Source-to-claim adequacy: Missing because the aligned-proposal input has no
  valid producer.  The orthogonal mixture score heuristic cannot certify the
  filter on the actual cyclic output without first proving the output is either
  component-near or a controlled approximate stationary mixture.
- Residual-to-target adequacy: Missing.  There is no bound transferring
  \(R_{L_0}\) to modewise angular distance, last-sweep displacement, score
  error, or the graph threshold \(1-64q_*\).
- Key positive/control term or structural source: Intended component score
  near \(\lambda_j\) and orthogonal-mixture score at most
  \(\lambda_j/\sqrt2\).
- Opposing defect terms: Uncontrolled cyclically imbalanced states, approximate
  stationary mixtures, Gram leakage, weight perturbation, and score error.
- Closure/dominance/absorption relation: No relation is available because the
  required alignment margin is unproduced.
- Accumulation behavior / scope compatibility: The filter is finite-time, but
  its input accumulates the unsupported cyclic trajectory defect over
  \(L_0\) sweeps.
- Obligation locality classification: `idea/theorem-contract defect` inherited
  from the missing recurrence producer.
- Noncircular closure status: Failed; declaring retained proposals to be
  aligned would assume the fact the filter is meant to prove.
- Entry-state / first-update stress result: The counterexample reaches a more
  contaminated state after its first sweep, so the filter's intended component
  branch is not activated by the stated entry certificate.
- Baseline conclusion preserved: No; the producer fails already in the
  orthogonal equal-weight baseline.
- Producer-consumer provenance: Invalid recurrence -> intended aligned
  proposals -> filter -> clusters -> basin.  The first arrow is missing.
- Null or boundary regime tested: Orthogonal equal-weight tensor and the
  explicit imbalanced entry above.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: The claimed one-representative-per-component certificate has no
  unconditional source.
- Repair route if source is unsupported: `/subagent-idea-generator` for a new
  proposal potential/event or proposal update procedure.

- Step ID: N/A (blocked downstream obligation: local-basin entry and terminal
  refinement)
- Claim class: Basin membership, quotient coercivity, recursive contraction,
  and exact-limit convergence.
- Theorem role: Transfer the selected representatives to the active CP-ALS
  basin and contract to arbitrary relative accuracy.
- Mechanism source: Khatri--Rao conditioning and the local ALS framework in
  *Local Convergence of the Alternating Least Squares Algorithm for Canonical
  Tensor Approximation* can at most support a local conditional interface.
  They do not produce basin entry from random proposals.
- Source-to-claim adequacy: Missing for the global-to-local transfer.  The
  cited local framework's known non-output boundary is precisely random basin
  entry.  No source identity or wrapper can turn it into an entry theorem.
- Residual-to-target adequacy: Missing.  The produced representatives have no
  valid angular/error certificate to compare with the quotient-Hessian basin
  radius under the final relative-Frobenius metric.
- Key positive/control term or structural source: Intended positive quotient
  Hessian margin modulo CP scaling and block Gauss--Seidel contraction.
- Opposing defect terms: Representative angular and scaling errors, cross-term
  leakage, and the absent basin radius comparison.
- Closure/dominance/absorption relation: A local contraction could control
  these terms only after basin membership is proved.  Using the local theorem
  to prove its own premise would be circular.
- Accumulation behavior / scope compatibility: Unsupported for the all-sweep
  stopping horizon because the initial basin premise has no producer.
- Obligation locality classification: `idea/theorem-contract defect` inherited
  from the failed proposal-to-alignment contract.
- Noncircular closure status: Failed; basin membership cannot be both a premise
  and the generated conclusion.
- Entry-state / first-update stress result: The active CP-ALS first update
  cannot be certified because the clustered entry object is unavailable.
- Baseline conclusion preserved: The exact-data arbitrary-\(\epsilon\)
  conclusion is not established; replacing it by conditional local
  convergence would weaken the exact goal.
- Producer-consumer provenance: cluster representatives -> basin certificate
  -> local Hessian/contraction -> stopping rule -> final residual.  The first
  object is unproduced.
- Null or boundary regime tested: The same orthogonal equal-weight instance;
  local exact solutions exist, but the specified proposal mechanism does not
  certify entry to them.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Yes; a local theorem alone is not a random-initialization global
  convergence theorem.
- Repair route if source is unsupported: `/subagent-idea-generator` after
  repairing the proposal mechanism or formalized recurrence.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Realized geometry: norms, \(q(U),q(V),q(W)\le q_*\), \(\Gamma\le1.01\), cyclic Khatri--Rao spectral floor | Would be a direct Gaussian-concentration bridge from `assump:base-scale`, `assump:cumulative-gram`, `assump:base-weight-balance`, `assump:gaussian-smoothing`, `assump:smoothing-margin` | Base Gram row sums, base scale/weight bounds, linear and quadratic Gaussian terms, normalization controls | Concentration terms are potentially controlled by \(n,\rho,\kappa_0,\delta_{\rm sm}\); no trajectory term is controlled here | Same realized factors are consumed, so no surrogate transfer is needed; exact row-sum and spectral inequalities would still require proof | The scalar smoothing margins are intended to dominate the linear, quadratic, and normalization defects separately | Primitive slack between \(q_*/4\) and \(q_*\), and between base balance and 1.01 | Extreme-event analysis, recurrence, filtering, Hessian analysis | This isolated export may be feasible, but it does not control cyclic coordinate imbalance and therefore cannot repair the blocker |
| Rare-entry certificate \(R_0\le19/20\) with per-target probability \(\Omega(r^{-5/3}(\log r)^{-3/2})\) | Would be a correlated-Gaussian extreme-event derivation from realized geometry and `assump:random-initialization` | Three target correlations and competing pair-product tails | Pair products are controlled; individual coordinate imbalance is uncontrolled and persistent through the cyclic reuse pattern | Produced scalar \(R_0\); consumed target is the next cyclic-state ratio \(R_1\).  The exact counterexample gives residual gap \(R_1-f(R_0)>2.19\), far above the required contraction scale | None: \(R_0\) does not dominate the cyclically reused individual ratios | Claimed \(20/19\) target/competitor pair-product margin | Cyclic recurrence and alignment | The raw controls do not support the exported recurrence; `idea/theorem-contract defect` |
| All-target coverage at rank \(k\) | Would be coupon coverage from the rare-entry event | Independent proposal slots and a per-target extreme-event lower bound | Slot failure could be controlled, but useful coverage additionally requires each covered slot to enter the cyclic basin; that class is uncontrolled | Coverage of \(R_0\)-states is not coverage of the consumed aligned-target basin | The intended \(kp\gtrsim\log r\) relation controls absence of raw entries only, not dynamic capture | Universal \(C_{\rm rank}\) | Filter and clustering | Covered proposals have no valid alignment interface |
| Aligned proposal after \(L_0\) sweeps | Required recurrence (1) | Only \(R_0\le19/20\), small \(q_*\), and near-unit \(\Gamma\) | Individual mode imbalance is uncontrolled and can grow on the first sweep | No residual-to-angular-distance bridge exists because \(R_{L_0}\) is not produced | Required one-step contraction is false | None | Score/displacement filter, clustering, basin transfer | Core false interface |
| Observable filter and exactly one graph cluster per component | Would require aligned proposals plus a component-versus-mixture score lemma | Observable scores/displacements and graph correlations | Mixture, perturbation, and graph errors lack sources without alignment | No produced representative is compared to a true component under a basin metric | No available score-gap or angular-threshold domination relation from current inputs | Intended 0.85 score and \(64q_*\) angular/displacement slack | Joint local-basin transfer | Alignment producer missing; filter cannot assume its own correctness |
| Joint quotient-basin certificate and local Hessian margin | Would require representatives plus Khatri--Rao conditioning and a current-notation local wrapper | Potential Khatri--Rao spectral floor; no representative error bound | Conditioning may control local curvature; entry error is uncontrolled | No representative-to-exact-factor or representative-to-basin residual comparison is available | No inequality comparing initialization error with a sourced basin radius | Intended positive quotient-Hessian margin | Active CP-ALS contraction | Entry object and basin comparison missing |
| Arbitrary-\(\epsilon\) residual and polynomial stopping time | Would require a valid basin certificate and local linear contraction | Exact tensor and intended local curvature | Initial error and contraction factor are unproduced; no noise floor is allowed | Consumed target is relative Frobenius residual; no legal chain reaches it | No valid \(O(\log(1/\epsilon))\) specialization | Exact-data zero-residual solution | Restart aggregation and final theorem | Local premise missing; assuming it would violate assumption provenance |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Realized norm/Gram/weight/Khatri--Rao event | No step allocated; would be a direct concentration bridge from primitive smoothing assumptions | Extreme-event analysis, recurrence, filtering, local Hessian analysis | Instance-level \(1-\delta_{\rm sm}\) qualification | Primitive assumptions -> intended geometry bridge -> dynamic blocks | derived | Isolated production may be plausible, but no complete roadmap can consume it after the dynamic contract fails |
| Per-target rare entry and simultaneous coverage | No step allocated; would be derived from realized geometry and proposal randomness | Cyclic alignment | Supply at least one useful proposal per component | Geometry -> intended extreme-event bridge -> intended coverage bridge -> recurrence | derived | The produced \(R_0\)-certificate is not a legal input to the claimed recurrence |
| Cyclic contraction and aligned proposals | Required recurrence (1), which is false | Filter, clustering, basin transfer | Create component representatives from random starts | Coverage -> **missing producer** -> filter | derived | First-update counterexample; no noncircular producer |
| Filter correctness and one representative per component | No legal producer after alignment fails | Basin transfer, active initialization | Construct the data-only active rank-\(r\) set | Alignment -> filter -> cluster -> representative | derived | Alignment is consumed before it is produced |
| Joint-basin membership and quotient-Hessian margin | No legal producer; local ALS literature is conditional on local entry | Active CP-ALS contraction | Start terminal refinement in a valid local region | Representative -> intended basin bridge -> local wrapper | derived | Representative error and basin-radius comparison are absent |
| Linear contraction to arbitrary relative error | No legal producer without basin membership | Stopping rule and final assembly | Achieve \(\epsilon\lVert T\rVert_F\) residual in \(O(\log(1/\epsilon))\) sweeps | Basin -> intended local contraction -> stopping | derived | Would assume a missing derived invariant |
| Universal positive one-run success and restart amplification | No legal producer without all previous outputs | Final theorem | Conditional probability \(1-\delta_{\rm init}\) with no rank inflation | Per-run chain -> intended success bound -> independent restarts | derived | Per-run success event has no complete producer path |

## Sketch Steps

None

## Dependency Notes

No dependency graph is opened.  A nominal graph would be acyclic in the order
geometry -> extreme coverage -> cyclic alignment -> filter/cluster -> local
basin -> local contraction -> restart/rate aggregation, but its third node has
no valid source.  Assigning the false recurrence to a future proof-step row would
violate the Step-Locality And Theorem-Contract Gate: a future proof step may
derive from an existing mechanism source, but it cannot create a source that
contradicts the exact first-update equations.

The smallest mathematical repairs are not same-setting sketch repairs.  A
weighted potential adapted to the cyclic exponent matrix would replace the
formalized \(R_t\) recurrence and require a new rare-event probability and
coverage calculation.  A simultaneous/Jacobi proposal sweep would change the
EP-ALS procedure.  Requiring coordinatewise target dominance would change the
initialization success interface and likely its rank exponent.  Removing the
explicit recurrence or making basin entry conditional would weaken the exact
goal and its assumption-provenance contract.  Therefore the obstruction is an
`idea/theorem-contract defect`, not a missing bridge, dependency, or step
decomposition under the current theorem contract.

## Blockers

1. **False theorem-critical cyclic recurrence.**  The allowed orthogonal,
   equal-weight specialization and the explicit entry state
   \((x,y,z)=(0.5,0.5,1.9)\) satisfy \(R_0=19/20\), but one cyclic sweep gives
   \((x^+,y^+,z^+)=(0.95,1.805,1.71475)\) and
   \(R_1=3.09512375\), contradicting the required upper bound \(<0.904\).
   The strict violation persists under sufficiently small positive allowed
   smoothing.  Locality: `idea/theorem-contract defect`.  Smallest repair
   target: `/subagent-idea-generator`.
2. **Missing generated-output chain.**  Because the rare-entry certificate
   does not export cyclic alignment, filter correctness, graph-cluster
   correctness, representative-to-basin transfer, local contraction,
   per-run success, restart amplification, and the explicit runtime/rate
   certificate have no legal noncircular producer.
3. **No target-preserving sketch repair.**  Repair requires changing the
   explicit recurrence/potential, the proposal update procedure, the
   initialization event/assumptions, or the theorem conclusion.  Each changes
   the formalized theorem contract or algorithm rather than proving the
   current exact goal.
