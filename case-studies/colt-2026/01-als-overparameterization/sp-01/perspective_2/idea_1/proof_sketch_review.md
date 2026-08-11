# Proof Sketch Review

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_1`.
- Sketch attempt: 1.
- Reviewed artifact: `perspective_2/idea_1/proof_sketch.md`.
- Binding setting: `perspective_2/idea_1/setting.md` in target-spec mode.
- Reviewed target: the conjunction of a global quantitative
  gradient/negative-curvature/feasible-dormant-cubic landscape certificate, a
  coverage-conditioned PL region, and single-initialization projected-gradient
  convergence at
  \(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil\).

## Sketch Viability Score

2

## Sketch Review Status

IDEA_FAIL

## Smallest Retry Target

/subagent-idea-generator

## Retry Mode

new_idea

## Audit Summary

- Goal alignment: The sketch faithfully preserves the exact normalized
  signed-coefficient/unit-direction parameterization, the full-domain landscape
  quantifier, the separate instance and initialization probabilities, the
  explicit subquadratic rank, and the relative-error target. It does not
  silently weaken the approved conditional target. Instead, it correctly
  identifies that the landscape conjunct is false under that target.
- Dependency audit: `Sketch Steps = None`, so there is no accepted dependency
  graph and no step-ready proof roadmap. The diagnostic order in `Dependency
  Notes` is acyclic, but it is not a legal producer-consumer chain. In
  particular, the good-instance controls, winner event, persistence invariant,
  PL-chart membership, and rate bridge have no allocated producers.
- High-risk coverage: The sketch exposes the fatal dormant-state obstruction
  and also records the secondary winner, off-span/coefficient persistence, and
  trajectory-to-PL interface defects. The dormant-state calculation survives an
  independent derivative audit. The secondary obligations remain too shallow
  for step allocation and cannot be hidden as generated assumptions.
- Explicit-rate coverage: The two rate objectives list the exposed variables,
  allowed and forbidden hidden-constant dependence, probability mode, horizon
  mode, norm mode, and baseline requirements. No positive landscape, winner,
  persistence, basin, or PL scale has a legal producer, so the requested
  explicit polynomials and inverse-polynomial thresholds cannot yet be
  instantiated.
- Assumption and citation plausibility: The primitive assumptions are cited by
  stable ids and no generated trajectory property is promoted to a primitive
  condition. The cited ALS, symmetric regularized/refresh, and local-ALS
  frameworks do not have the current objective, parameterization, update, or
  output interface; the sketch appropriately does not use them as theorem
  authorities. The fatal obstruction is a direct calculation in the exact
  branch convention and does not depend on an external citation.

## Early Obstruction Audit

- Limiting-case stress: The allowed asymptotic regime has \(n>r\), and on the
  stated good-instance event the three realized factor spans have dimension
  \(r\). Choose every dormant direction in the corresponding orthogonal
  complement and set every coefficient to zero. Then
  \(\Phi=0\), the coefficient point is interior, and the residual is exactly
  \(T\ne0\). This is an allowed non-global stationary state on every such
  instance, independent of smoothing strength and overparameterization.

  More explicitly, write
  \[
  F=\tfrac12\lVert T\rVert_F^2-\sum_i\alpha_i f_i(u_i)
     +\tfrac12\alpha^\top G(u)\alpha,
  \qquad
  f_i(u_i)=\langle T,p_i\otimes q_i\otimes s_i\rangle.
  \]
  At the dormant point, \(f_i=Df_i=D^2f_i=0\), because after at
  most two mode derivatives at least one undifferentiated direction remains
  orthogonal to its realized factor span. Hence the gradient vanishes and
  \[
  D^2F[(a,\xi),(a,\xi)]
    =\left\lVert\sum_i a_i
       p_i^\perp\otimes q_i^\perp\otimes s_i^\perp\right\rVert_F^2\ge0.
  \]
  If this Hessian form vanishes, the cubic variation of the model norm is an
  inner product with the zero first-order tensor variation, while the target
  coupling needs one coefficient variation and all three direction variations
  and therefore starts at degree four. Thus every Hessian-null smooth tangent
  has zero third-order loss term. The displayed one-component path with
  \(\alpha(t)=\lambda t^3\) gives
  \(F(t)-F(0)=-\lambda^2t^6/2+O(t^8)\), confirming a genuine
  higher-order descent but not the required cubic alternative.

  There is one presentation qualification in the producer: its phrase that the
  *first* possible descent of the full \(k\)-component configuration is sixth
  order should explicitly choose the dormant tensors linearly independent,
  preferably orthonormal, to exclude lower-order coefficient-cancellation
  paths. Such a choice exists for all sufficiently large \(r\), because
  \((n-r)^3\ge k\), by taking tensors from product orthonormal bases of the
  three complements. Then the coefficient Gram is the identity, the local
  target contractions are \(O(\delta^3)\), and optimization over coefficients
  gives an \(O(\delta^6)\) first negative term. This omitted sentence does not
  affect the already valid zero-gradient, PSD-Hessian, and zero-cubic
  conclusions, which hold even for a singular coefficient Gram.
- Theorem-critical bridge support: The fatal landscape output has no bridge at
  all: the exact branch geometry supplies a counterexample rather than the
  requested positive certificate. The realized-instance, winner, persistence,
  regular-chart, refinement, and rate bridges are separately identified but
  remain unallocated and unsupported at the required interfaces.
- Exported-interface feasibility: The global trichotomy is infeasible because
  its proposed cubic margin is identically zero at the dormant state. For the
  secondary outputs, pair-feature conditioning does not export an individual
  three-mode winner, initial correlation does not export persistent coverage,
  leakage control does not export a regular active representation, and a local
  Jacobian margin does not export trajectory membership in its chart. The
  necessary defect splits, positive margins, and same-target transfer relations
  are absent.
- Theorem-critical mechanism witness gate: L0 fails at idea level: no primitive,
  derived, cited, direct, standard, or conditional source supplies a cubic
  normalized-coordinate escape at the allowed dormant state. W0, P0, and B0
  fail at sketch/interface level because the proposed order-statistic, coupled
  potential, and regular-chart sources have not been converted into concrete
  source-adequate control relations. No obligation is ready to be labeled as
  merely difficult future step work.
- Entry-state trace stress: At the dormant stationary state all projected and
  Riemannian gradient blocks vanish, so the exact update fixes the point while
  \(F=\lVert T\rVert_F^2/2>0\). This state is not the random initialization
  specified in `assump:random-initialization`, so it does not alone refute the
  probabilistic trajectory conjunct; it does refute the independently quantified
  global landscape conjunct. For the actual random entry, the direction update
  is scaled by the extremely small \(\alpha_0\), collective feature conditioning
  does not establish a balanced individual first update, and the initial
  off-span leakage is near one when \(r\ll n\). These transition obligations
  have no legal producers.
- Obligation locality classification: L0 is an
  `idea/theorem-contract defect`. The good-instance producer, exact
  representation producer, W0 winner/activation bridge, P0 coupled persistence
  invariant, B0 trajectory-to-PL bridge, refinement closure, and public rate
  specialization are `sketch/interface defect` obligations conditional on first
  changing the fatal theorem contract. None of the unresolved theorem-critical
  obligations is currently `step-local`.
- Noncircular closure gate: L0 is a direct static counterexample and uses no
  closure premise. W0 lacks a producer from initial order statistics to
  persistent coverage. P0 would be circular if small leakage, coefficient
  balance, or small cross-forcing were assumed. B0 would be circular if the PL
  neighborhood were defined by chart validity and trajectory entry were then
  asserted without an independent membership certificate. The final rate and
  convergence outputs inherit these missing producer paths.
- Mechanism-source and boundary stress: Smoothing, Khatri--Rao near-isometry,
  rank, and compactness do not generate a signed cubic term at L0. The normalized
  map makes target coupling proportional locally to one coefficient change and
  three direction changes. A homogeneous zero-factor injection, a dormant
  re-gauging/refresh, or a sixth-order escape uses a different mechanism and
  therefore changes the parameterization/procedure or the landscape conclusion.
  The secondary proposed sources have the correct broad roles but do not yet
  dominate their stated competitor, retraction, cross-component, cancellation,
  chart-remainder, and probability defects.
- Generated-output flow: The realized controls have only a candidate direct
  Gaussian source and no allocated bridge. The landscape trichotomy has no legal
  producer. The winner certificate, coupled persistence invariant, and PL-chart
  membership are consumed downstream before any producer proves them. The
  public polynomial rates and probability conversion consequently have no
  complete dependency path. Treating any of these as an admissibility package
  would violate assumption provenance.
- Source-to-claim adequacy: The direct dormant-state differentiation is in the
  exact signed-coefficient/unit-sphere convention and adequately proves failure
  of the required gradient, negative-curvature, and cubic alternatives. The ALS
  source has a pseudoinverse update and quadratic-width interface; the symmetric
  source has a modified objective, homogeneous coordinates, regularization,
  mode switching, and refresh; the local ALS source supplies neither GD basin
  entry nor the redundant normalized chart. They therefore cannot supply the
  missing positive claims. The proposed direct order-statistic, potential, and
  Jacobian arguments lack raw-assumption-to-exported-interface checks and remain
  non-`step-local`.
- Residual-to-target adequacy: At L0 there is no surrogate: the produced tensor
  is exactly zero and the consumed Frobenius residual is exactly \(T\), so no
  transfer can place the point in a positive-PL zero-residual neighborhood. For
  W0 the produced initial gap is not transferred to a persistent representative.
  For P0 a leakage bound is not transferred to noncancelling channel mass. For
  B0 the trajectory's split/cancelling redundant representation is not
  transferred to the active regular chart for the same tensor. These are
  target-side, not merely source-side, gaps.
- Baseline invariance audit: The inherited baseline conclusion is exact
  zero-residual representability and arbitrary relative accuracy as
  \(\epsilon\downarrow0\). On the realized pair-Khatri--Rao event, direct
  Schur-product contraction gives the normalized triple-component Gram within
  \(1/32\) of identity, so \(T\ne0\) and the true \(r\)-term representation is
  noncancelling. Its coefficients obey the box at the intended scale, making
  exact representability plausible under the current setting. The sketch does
  not weaken this baseline, but it allocates no producer for the coefficient-box
  check and no trajectory-to-exact-refinement chain. Any new idea must retain the
  exact baseline unless it explicitly records a target-changing weakening.
- Scope-accumulation compatibility: L0 is static. W0 requires a finite activation
  recurrence whose gap dominates competitor, model, and retraction defects, but
  none is stated. P0 has persistent, potentially adversarial-sign
  cross-component forcing and coefficient cancellation, with no one-step
  charge, potential drop, summability, or finite budget. B0 has a plausible
  contractive PL phase only after an unsupported membership bridge. The claimed
  polynomial horizon and \(\log(1/\epsilon)\) refinement therefore have no
  accumulation-compatible chain.
- Scope and dependence consistency: The counterexample lies in the full domain
  for every sufficiently large allowed \(n,r,k\) and does not exploit an
  excluded smoothing, conditioning, probability, or coefficient-boundary
  regime. Increasing \(k\) or strengthening the realized near-isometry does not
  remove it. The secondary objectives correctly expose \(n,r,k,\kappa,\rho\),
  \(\epsilon\), both random sources, and fixed exponents, but no numerical
  thresholds or polynomial degrees can be supported before their producers
  exist.
- Generated-condition provenance: The sketch correctly treats realized
  near-isometry, winner coverage, leakage, persistence, coefficient control,
  basin entry, PL validity, and convergence as derived outputs. Each is still
  missing rather than being assumed, so there is no hidden-assumption repair of
  the target.
- Citation and tool applicability: The source identities and broad roles in
  `technical_survey.md` are adequate for rejecting transfer, not for invoking a
  theorem. No exact label or statement from those sources is used as proof
  authority. Source conventions differ in objective, symmetry,
  parameterization, update, width, initialization/refresh, and output. A new idea
  may reuse algebraic patterns only after a current-notation proof or a fully
  discharged wrapper is supplied.
- Same-setting repair plausibility: Secondary defects W0, P0, B0, and the rate
  bridge could in principle be reorganized within the same primitive setting.
  L0 cannot. Its counterexample is an allowed point of the exact domain and
  invalidates one conjunct of the goal before any dependency choice. No new
  lemma, dependency, conditional local interface, or conservative quantitative
  loss allowed by the present target can create a nonzero cubic coefficient.
- Target-preserving bridge-repair gate: Moving the dormant point into the PL
  region is impossible because its gradient is zero and its objective gap is
  positive. Excluding it narrows the full-domain landscape scope; permitting a
  fourth- or sixth-order escape weakens the landscape certificate; switching to
  homogeneous factors changes the parameterization and GD dynamics; adding a
  refresh or free dormant re-gauging changes the procedure. Dropping the global
  landscape conjunct changes the theorem type/success criterion. Every valid
  repair is therefore an idea-level theorem-contract change.
- High-risk obligation classes: Present and unresolved classes are structural
  signed escape and curvature; exact entry-state activation; Gaussian
  normalization and probability transfer; individual random-product
  anti-concentration; iterative winner persistence; off-span, coefficient, and
  cancellation control; noncircular basin membership; local Jacobian/PL
  coercivity; same-target representation transfer; accumulated error control;
  public quantitative specialization; and exact-zero baseline preservation.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| L0 global gradient/negative-curvature/dormant-cubic certificate | Structural signed-escape classification; first landscape conjunct | No positive source; exact dormant geometry instead supplies a counterexample | Direct differentiation of the current objective from primitive domain data | Failed: at the dormant state the gradient is zero, Hessian is PSD, and every Hessian-null cubic term is zero | Exact match to signed coefficients, unit spheres, coefficient box, Frobenius loss, and simultaneous projected/Riemannian update | \(F=c-\alpha^\top f+\alpha^\top G\alpha/2\), with \(f=Df=D^2f=0\); descent can begin at order six after choosing an injective dormant tensor frame | Raw controls are the exact domain and realized factor spans; the required positive inverse-polynomial cubic output is infeasible | \(\Phi=0\), residual is exactly \(T\ne0\), and no surrogate or PL transfer applies | Static obstruction; no accumulation can restore a vanished cubic coefficient | Direct counterexample independent of any closure premise | No producer; consumers are the landscape theorem and any escape-based trajectory block | All-dormant interior state is fixed by GD while the objective gap is positive | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| E0 realized good-instance controls | Generated event and structural conditioning used by every later block | Gaussian perturbations plus base conditioning, base KR margin, dimension, and perturbation margin | Primitive assumptions `assump:base-conditioning`, `assump:base-kr-isometry`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:perturbation-margin` | Plausible but incomplete: no normalization perturbation inequality, simultaneous tail calculation, or full exported event is proved | Branch convention is explicit, but no cited or direct current-notation wrapper is completed | Needed relation is a high-probability base-to-realized norm and pair-Gram perturbation bound yielding \(\Delta_{\mathrm{KR}}^{\mathrm{real}}\le1/32\) | Raw Gaussian column errors and the \(1/64\) base margin are available; normalized-column, norm, triple-Gram, and confidence outputs are not exported | Same realized factors and norms are consumed downstream; no surrogate is intended, but every normalization residual must be dominated by the \(1/64\) slack | Static finite collection of perturbations; union-bound allocation and small-column boundary control are missing | Candidate direct Gaussian derivation, but no allocated producer step | Producer missing; consumers are Z0, W0, L0 thresholds, B0, and R0 | Small realized norms and simultaneous cyclic normalization are not stress-quantified | `sketch/interface defect` | `/proof-sketch` after idea repair |
| Z0 exact zero-residual representation and coefficient-box membership | Baseline structural certificate; proves \(\mathcal Z_T\ne\varnothing\) | True normalized \(r\)-term factors plus a triple-Gram lower bound from realized pair-KR control | Direct current-notation linear algebra from E0 and `assump:rank-regime` | Plausible: a Schur-product contraction gives a well-conditioned triple Gram, but the sketch does not allocate or state the coefficient-box bridge | Exact same tensor, factors, Frobenius norm, and coefficient box | Needed relation is \(T=\sum_j\tau_j\widetilde a_j\otimes\widetilde b_j\otimes\widetilde c_j\) with each \(\tau_j<B_{\mathrm{box}}\) | Raw realized factors and \(B_{\mathrm{box}}=4\kappa r\lVert T\rVert_F\) are present; the explicit \(\tau_j\)-to-\(\lVert T\rVert_F\) inequality is unallocated | Exact equality gives zero residual once coefficient membership is checked; no surrogate residual | Static; possible cancellation is controlled only after the missing triple-Gram statement | E0 to an unallocated exact-representation bridge | No legal producer; consumers are L0 non-globality, B0, C0, and baseline assembly | Exact/noiseless specialization preserves zero residual, but the box boundary check is not written as a producer | `sketch/interface defect` | `/proof-sketch` after idea repair |
| W0 balanced per-channel winner and first-update activation | Random structural nondegeneracy; creates one representative per target channel | Haar/Rademacher initialization, exact first updates, and proposed balanced triple-product extreme order statistics | Primitive `assump:random-initialization` plus a novel current-notation argument not yet supplied | Failed as an export: collective pair-feature conditioning does not imply an individual three-mode winner gap | Exact update convention is stated; neither parent paper has the same update/interface | Missing inequality must make one seed's balanced triple product dominate all competitors, model-model error, \(\alpha_0\)-scaling, and retraction error through a finite activation horizon | Raw independent seeds, rank redundancy, pair-KR slack, and update formulas exist; no winner margin or activated representative is exported | An initial correlation gap is not bridged to a persistent representative in the later target chart | Finite-horizon amplification is unsupported; competitor and update errors have no stated recurrence or budget | No producer from the initialization law to persistent coverage | Missing winner bridge; consumers are P0, B0, and the initialization-success theorem | At time zero direction motion is scaled by tiny \(\alpha_0\); a well-conditioned collective frame need not contain the required individual winner | `sketch/interface defect` | `/proof-sketch` after idea repair |
| P0 coupled winner, off-span, coefficient, and competition persistence | Generated all-time recurrence and boundedness; maintains coverage until basin entry | Exact residual algebra plus a proposed coupled potential | Direct current-notation recurrence, but the potential and source-adequate control relation are absent | Incomplete: data forcing is multiplicative off-span, but model-model forcing and cancellation remain uncontrolled | Exact branch update and retraction convention are used | The displayed leakage recurrence contains persistent cross-component forcing; a missing one-step potential drop must charge it together with coefficient mass, signs, competition, and retraction | Raw residual decomposition, box projection, and prospective winner margin exist; no invariant or finite-budget certificate is exported | Small leakage alone does not imply noncancelling active mass for the same tensor and PL chart | Persistent, potentially adversarial-sign forcing; no absorption, telescoping, summability, projection, or finite budget is shown | Assuming balance or small cross-forcing would be circular | No producer; consumers are B0, C0, and no-restart convergence | Haar entry has leakage near one, so the desired regime must be reached rather than assumed | `sketch/interface defect` | `/proof-sketch` after idea repair |
| B0 trajectory-produced representation to regular PL chart | Basin membership, structural coercivity, and same-target transfer | Prospective active CP-Jacobian lower bound from realized KR conditioning plus a missing cluster-aggregate bridge | Direct/current-notation local geometry is proposed; cited local ALS results do not have this GD interface | Incomplete: a regular-chart Jacobian margin does not show that the redundant split/cancelling trajectory enters that chart | The proposed proof must use the exact normalized redundant representation; ALS wrappers are incompatible | Needed relation transfers aggregate channel mass to an active representative margin and makes the chart remainder smaller than a fixed fraction of the Jacobian margin | Raw realized conditioning and prospective W0/P0 controls are named; chart membership, representative threshold, and PL constant are not exported | Missing bridge from split/cancelling parameter representations to the same tensor target in Frobenius norm | Entry is unsupported; only after legal membership would PL contraction control accumulation | Defining membership by PL validity and then asserting entry is circular | No producer; consumers are C0, R0, and final relative-error assembly | Random entry and the all-dormant state are outside a regular active chart; coefficient splitting can leave every representative below threshold | `sketch/interface defect` | `/proof-sketch` after idea repair |
| C0 PL refinement and arbitrary relative accuracy | Convergence closure; turns legal basin entry into \(\epsilon\)-relative residual | Smooth descent plus the unproduced positive PL constant from B0 | Standard/direct descent could apply only after current-notation smoothness, membership, and PL interfaces are proved | Incomplete because the controlling PL source and entry event are absent | Exact step size, retraction, coefficient projection, and Frobenius objective must be used; no completed wrapper does so | Needed recurrence is a positive contraction of the objective gap over \(P_{\mathrm{refine}}\log(1/\epsilon)\) steps with invariance of the chart | Step size and compact domain are raw controls; PL constant, descent margin, and chart preservation are unavailable | Consumed target is exact relative Frobenius residual for the same \(T\); no positive error floor is allowed | Repeated contraction is plausible only after B0; projection/retraction defects and chart exit otherwise lack control | Dependency path W0 to P0 to B0 to C0 is missing at every producer edge | No producer; consumer is the final convergence conclusion and R0 | Exact \(\epsilon\downarrow0\) limit cannot be replaced by a finite-radius remainder | `sketch/interface defect` | `/proof-sketch` after idea repair |
| R0 explicit landscape scales, entry/refinement polynomials, and probability conversion | Quantitative specialization and public rate bridge | All preceding generated margins plus primitive polynomial parameter ranges | No independent source; this is a downstream specialization obligation | Failed because landscape, winner, persistence, basin, and PL thresholds have no numerical producers | Required modes are correctly declared, but no technical theorem exists to specialize | Needed inequalities must choose every auxiliary threshold, verify conditions, absorb every term, keep instance and initialization probabilities separate, and state polynomial degrees/hidden constants | Raw parameter ranges and confidence targets exist; no complete technical bound reaches the exported public rates | Public output is same-target relative Frobenius error; absent upstream margins prevent target-scale domination | Fixed entry horizon and logarithmic refinement require finite activation and contractive accumulation, neither available | Must be produced after E0, W0, P0, B0, and C0; that DAG is incomplete | No producer; consumer is the public polynomial-runtime theorem | Boundary \(\rho\), \(\kappa\), small \(\epsilon\), and separate confidence modes are exposed but not discharged | `sketch/interface defect` | `/proof-sketch` after idea repair |
| F0 end-to-end generated-output flow | Theorem-closure DAG for good instance, landscape, winner, persistence, basin, refinement, and rates | Legal producers would be E0, a repaired landscape block, W0, P0, B0, C0, and R0 | Current sketch records only proposed sources and blockers | Failed: L0 has no possible producer and all later generated controls lack allocated producer steps | Object and mode conventions are identified, but source-compatible wrappers and direct derivations are not completed | Required dependency order is E0 before downstream geometry, W0 before P0, P0 before B0, B0 before C0, and all before R0 | Raw primitives are available; none of the theorem-facing generated interfaces has a complete export chain | Each edge must preserve the exact tensor, parameterization, norm, probability mode, and target scale; those transfers are missing | Static, finite-horizon, and repeated-scope defects are mixed without their separate controls | No noncircular complete path from primitives to the final theorem | Landscape producer absent; every other producer is unallocated; final assembly consumes all | Dormant stationary state breaks the landscape edge; random entry breaks assumed basin/leakage edges | L0 is `idea/theorem-contract defect`; remaining edges are `sketch/interface defect` | `/subagent-idea-generator` overall |
| BI0 exact-zero and no-restart baseline invariance | Baseline recovery and exact-limit obligation | Exact true representation for existence; legal W0-P0-B0-C0 chain for algorithmic recovery | Setting and rate objectives explicitly preserve this baseline | Partially matched for existence, unsupported for trajectory recovery; no weaker surrogate is currently substituted | Same tensor, Frobenius metric, one initialization, and exact projected-GD procedure are required | Needed relations are Z0 coefficient membership and a no-floor contraction to every \(0<\epsilon<1\) without restart | Raw true factors, coefficient box, random initialization, and accuracy range exist; exact trajectory refinement is not exported | Must reach the same \(T\) with residual tending to zero; finite-radius or stopped guarantees are inadequate | Exact-limit refinement needs contractive accumulation and all-time chart maintenance | Z0 and C0 are the missing noncircular producers | Producers Z0 and C0; consumers are main theorem and final rate bridge | At L0 the algorithm stays at positive residual; at random entry exact recovery remains unproved | `sketch/interface defect` under any repaired idea; weakening it would be `idea/theorem-contract defect` | `/proof-sketch` after idea repair |

## Blocking Issues

1. **L0, `Mechanism-Source And Boundary Stress`: false global cubic
   trichotomy.** The allowed all-dormant interior point has zero projected
   gradient, PSD tangent Hessian, and zero cubic loss term while its residual is
   \(T\ne0\). The exact update fixes it. This invalidates the first goal
   conjunct and blocks every landscape-dependent consumer. The smallest repair
   is `/subagent-idea-generator` because the theorem contract, parameterization,
   procedure, or landscape scope must change.
2. **L0 sixth-order presentation qualification.** The sketch does not explicitly
   choose the full collection of dormant rank-one tensors linearly independent
   before saying that the first descent of the full configuration is sixth
   order. Coefficient-cancellation directions could otherwise complicate that
   stronger phrase. An orthonormal product-frame choice is available
   asymptotically and makes the statement rigorous. This does not rescue the
   target: the PSD and zero-cubic counterexample is already valid without that
   strengthening.
3. **E0 and Z0, `Generated Output Flow`: missing instance and exact-
   representation producers.** The normalization perturbation, realized cyclic
   KR event, triple-Gram bound, nonzero-tensor check, and coefficient-box
   membership are not allocated to steps with explicit inequalities. All later
   instance, landscape, PL, and baseline claims consume these controls. Under a
   repaired idea, the smallest local repair would be `/proof-sketch`.
4. **W0: collective conditioning is not an individual winner/activation
   certificate.** No balanced triple-product gap, simultaneous first-update
   inequality, or finite activation recurrence dominates competitor, model, and
   retraction defects. This blocks channel coverage, persistence, and no-restart
   basin entry. Under a repaired idea, the smallest local repair would be
   `/proof-sketch`.
5. **P0: no accumulation-compatible persistence mechanism.** The exact
   recurrence exposes persistent, unknown-sign model-model off-span forcing,
   coefficient cancellation, duplicate competition, and large entry leakage.
   No coupled potential, one-step charge, or finite budget controls them. This
   blocks all-time coverage and noncircular basin entry. Under a repaired idea,
   the smallest local repair would be `/proof-sketch`.
6. **B0 and C0: no same-target trajectory-to-PL or exact-refinement bridge.** A
   local active-Jacobian margin does not establish that a split or cancelling
   redundant trajectory has an active representative or lies in the regular
   chart. Hence neither PL membership nor no-floor contraction to arbitrary
   relative accuracy has a legal producer. Under a repaired idea, the smallest
   local repair would be `/proof-sketch`.
7. **R0, F0, and BI0: rate, flow, and baseline chain absent.** The public
   inverse-polynomial scales, polynomial horizons, separate probability
   conversion, and exact-zero/no-restart baseline depend on all preceding
   missing outputs. No quantitative specialization can be performed by naming
   polynomial placeholders. Under a repaired idea, the smallest local repair
   would be `/proof-sketch`; weakening exact recovery or adding restart would be
   a further idea-level change.

## Required Repair Bundle

1. **Required theorem-contract repair for L0; target
   `/subagent-idea-generator`.** A new idea must choose and label one precise
   change rather than treating L0 as a future lemma:
   - permit a quantitatively controlled fourth-/sixth-/higher-order escape in
     the normalized coordinates, changing the landscape success criterion;
   - replace the normalized signed-coefficient coordinates by homogeneous
     unnormalized factors and specify the resulting GD map, changing the
     parameterization, metric, and procedure;
   - add an explicit dormant-direction refresh or re-gauging operation, changing
     the algorithm/procedure;
   - restrict the landscape theorem to a proved reachable region that excludes
     the dormant stationary manifold, changing theorem scope and requiring a
     noncircular reachability producer; or
   - drop the global landscape conjunct and pursue a trajectory-only theorem,
     changing theorem type and success criterion.
   The new idea must preserve the `conditional` source-gap labeling and explain
   how its chosen change affects materiality and the one-initialization target.
2. **Counterexample rigor carried into the new idea.** When using the
   sixth-order obstruction, explicitly choose dormant tensors from an
   orthonormal product basis of
   \(\mathcal U_A^\perp\otimes\mathcal U_B^\perp\otimes
   \mathcal U_C^\perp\), verify \((n-r)^3\ge k\) in the asymptotic regime, and
   separate the universally valid zero-cubic conclusion from the stronger
   first-negative-order-six statement. Do not edit the current sketch in place
   as though this repaired the false target.
3. **Instance and representation interfaces after contract repair.** Allocate a
   primitive-to-realized step with normalized Gaussian perturbation inequalities,
   cyclic probability accounting, triple-Gram control, and exact hidden
   dependence. Allocate a separate exact-representation step proving
   \(\mathcal Z_T\ne\varnothing\), coefficient-box membership, and the
   exact-zero baseline from those controls.
4. **Winner interface after contract repair.** State a current-coordinate
   balanced triple-product order-statistic lemma, its simultaneous per-channel
   probability, the exact first coefficient and direction update, all competitor
   and retraction defects, a positive margin, and a finite activation recurrence.
   A pair-feature singular-value result alone is insufficient.
5. **Persistence interface after contract repair.** Introduce a concrete coupled
   potential or other source-adequate mechanism controlling channel margin,
   cross-component off-span forcing, coefficient signs and cancellation,
   duplicate competition, and retraction error. State its one-step relation,
   accumulated defect, sign status, finite budget, entry transition from large
   leakage, and producer-consumer dependencies.
6. **PL-target interface after contract repair.** Define the exact active or
   cluster-aggregate representation object produced by the trajectory, the
   regular chart consumed by the Jacobian/PL argument, the same-target Frobenius
   residual decomposition, representative-mass threshold, Jacobian margin,
   quadratic-remainder domination, chart-maintenance recurrence, and all
   consumers. Do not invoke a local ALS result as a GD basin-entry wrapper.
7. **Rate, flow, and baseline interfaces after contract repair.** Build an
   explicit generated-output DAG from instance controls through winner,
   persistence, basin, PL refinement, and final theorem. Instantiate every
   inverse-polynomial scale and polynomial horizon, prove each absorption
   inequality, preserve the separate instance/initialization probabilities,
   state hidden-constant dependence, and retain arbitrary relative accuracy and
   the exact \(\epsilon\downarrow0\) baseline unless the new idea openly makes
   and justifies an additional target-changing weakening.

No target-preserving sketch-level bridge can repair item 1. Items 3--7 are
secondary sketch/interface repairs only after a valid new theorem contract has
removed or changed the fatal cubic-trichotomy conjunct.

## Review Rationale

`IDEA_FAIL` is the deepest and smallest sound route because one conjunct of the
formalized goal is false at an allowed point of the exact parameter domain. The
obstruction is static, source-convention compatible, independent of smoothing
and rank, outside any positive-PL zero-residual neighborhood, and fixed by the
stated projected/Riemannian update. Reorganizing steps cannot create the missing
cubic term. Every viable repair changes the theorem conclusion, parameterization,
algorithm/procedure, landscape scope, or theorem type. The score is 2 rather
than a sketch-repair score because no proof steps can legally be allocated under
the unchanged target, even though the producer diagnosed the obstruction well
and exposed the secondary interfaces that a future idea must still discharge.
