# Proof Sketch

## Formalized Setting

Let (X) be arbitrary, (H\subseteq\{+1,-1\}^X), and let one randomized
adaptive learner (A) make at most (m) unrestricted bounded SQ queries.
At node (z=(u,v_{<t})), write

\[
q_z(x,y)=a_z(x)+y b_z(x),\qquad |a_z(x)|+|b_z(x)|\le 1,
\]

and let the full legal response slab for ((P,h)) be

\[
I_z(P,h)=[\mu_z(P,h)-\tau,\mu_z(P,h)+\tau],\qquad
\mu_z(P,h)=\mathbb E_P[a_z+h b_z].
\]

The primitive assumptions are
`assump:finite-depth-adaptive-tree`,
`assump:bounded-unrestricted-queries`,
`assump:full-adversarial-tolerance`,
`assump:universal-expected-accuracy`, and
`assump:source-parameter-regime`.  In particular, the same learner must work
for every (P,h), and every nonanticipating tolerance-valid policy, with
expectation only over its random tape.  The domain and reply space are not
finite or discretized, and no response-span, compactness, or positive-margin
assumption is available.

## Formalized Goal

The exact-goal target is an unconditional universal constant (C) such that

\[
\operatorname{dc}(H)\le C\frac{m}{\tau^2},
\]

with one deterministic feature map fixed independently of (P,h), all legal
replies and policies, and the sampled tape.  Strict signs must hold at every
point of the original arbitrary domain.  The formalized goal additionally
requires the five named derived obligations in `setting.md`, including an
exact finite-support annihilating distribution and a branch-uniform
depth-energy inequality.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

No target-preserving viable roadmap is available under the exact formalized
setting.  Accordingly, no framework in `technical_survey.md` is selected and
no proof steps are activated below.

The proposed decomposition was nevertheless audited in dependency order:

1. Finite-support separation was supposed to turn
   (h\notin\operatorname{Sign}(V)) into a finite-support (P) satisfying
   (\mathbb E_P[hf]=0) for every (f\in V).  This implication is false on
   an arbitrary domain when strict pointwise separation has no uniform
   margin.  The explicit counterexample in `## Blockers` has no annihilating
   probability distribution at all.
2. For fixed comparison states, interval intersection does support a common
   response prefix while the two slabs overlap.  At the first non-overlap,
   the center gap is greater than (2\tau).  This local fact does not repair
   the false separation input or create a common finite pivot list.
3. Conditional on an annihilating (P), a qualitative null-center policy can
   produce some residual outside (V): answer (\mathbb E_Pa_z) while
   (|\mathbb E_P[h b_z]|\le\tau), and switch to an exact-center legal answer
   after the first failure.  If failure has positive tape probability, some
   first-failure (b_z\notin V); if it has probability zero, the tape-average
   terminal predictor has correlation greater than (1/2) and is outside
   (V).  This is only a witness-dependent qualitative pivot alternative.
   It exports neither a universal list nor an accumulated charge.
4. The required branch-uniform energy step has no mechanism source.  Its
   local charges live in changing seminorms (L_2(P_j)) selected from
   different targets and spans.  No primitive assumption or cited result
   supplies a common potential, a one-round drop relation, or a summation
   rule over the union of continuous adaptive branches.  Depth at most (m)
   controls one execution path, not all pivots collected across executions.
5. Finite termination and exact sign extraction are elementary conditional
   consequences of a valid common-pivot length bound, but the missing energy
   producer leaves those conclusions without a dependency path.

Two parameter boundaries independently falsify the displayed theorem as
formalized: a nonempty singleton class has dimension complexity one and is
learned exactly by a reply-ignoring learner, whereas the right side is zero
when (m=0); moreover, for (m=1) the same example violates any universal
(C m/\tau^2) bound when the expressly allowed (\tau>0) is chosen larger
than (\sqrt C).  Repair requires changing the theorem contract, for example
by imposing (m\ge1) and (0<\tau\le1), or by adding a base term to the rate.

## Rate Objectives

- Objective type: structural-parameter explicit, deterministic fixed-horizon
  exact-sign bound.
- Exposed variables: query budget (m) and tolerance (\tau); the premise
  also exposes (\varepsilon<1/4).
- Hidden constants may depend on: nothing; (C) must be numerical and
  universal.
- Hidden constants may not depend on: (X,H,A,m,\tau,\varepsilon,P,h), the
  response policy or values, or learner tapes.
- Fixed quantities: none globally; the theorem is universally quantified.
- Probability mode: deterministic conclusion; expected error only over the
  learner tape in the premise, uniformly for every (P,h,pi).
- Horizon mode: fixed finite query budget, with the claimed bound uniform over
  all executions of depth at most (m).
- Norm mode: exact strict pointwise sign representation; the proposed energy
  uses squared witness correlations, but no common norm has been produced.
- Required bridge or simplification obligations: every independent query
  pivot would need charge at least (c_0\tau^2), every terminal pivot would
  need a universal positive charge from (1-2\varepsilon>1/2), and a single
  potential would need total charge at most (C_0m) across all accepted
  pivots.  None of these terms may be dropped.  The (m=0) and large-
  (\tau) specializations already contradict the claimed public rate.
- Baseline invariance obligations: the final output must remain one
  deterministic exact sign map on the original domain.  Approximate
  annihilation, probabilistic features, finite restrictions alone, or an
  additive remainder do not preserve this conclusion under the current goal.

## Assumption Provenance Objectives

- Exact annihilating witness: intended as a derived invariant from the current
  span and (h\notin\operatorname{Sign}(V)); it is not primitive and has no
  legal producer because the claimed implication is false.
- Common-response prefix: a derived local coupling fact produced directly by
  interval intersection under `assump:full-adversarial-tolerance`; it is valid
  only until first non-overlap.
- Strict pivot: a derived local output of the null-center policy and
  `assump:universal-expected-accuracy`, conditional on an annihilating witness.
  The unconditional producer path fails at the preceding item.
- Branch-uniform energy certificate: a derived all-branches invariant.  No
  primitive condition, prior result, or direct control relation produces it.
- Finite common span and exact feature map: derived outputs that require both
  strict pivot production and the energy certificate.  Their producer paths
  are therefore missing.

No derived obligation above is promoted to a theorem-facing assumption.

## Mechanism-Source And Boundary Stress

### Target-level parameter boundary

- Step ID: None (target-level blocker before step decomposition).
- Claim class: explicit structural rate and exact baseline case.
- Theorem role: makes the final dimension bound meaningful in every allowed
  parameter regime.
- Mechanism source: absent.  `assump:source-parameter-regime` says only that
  (m) is finite and (\tau>0).
- Source-to-claim adequacy: fails.  Those raw conditions do not imply a
  positive lower scale for (m/\tau^2).
- Residual-to-target adequacy: the irreducible base dimension one of a
  nonempty singleton class is not dominated by (C m/\tau^2) at (m=0) or
  as (\tau\to\infty) with (m=1).
- Key positive/control term or structural source: none.
- Opposing defect terms: the integer base dimension (1).
- Closure/dominance/absorption relation: impossible under the stated range;
  (1\le C m/\tau^2) fails in the allowed examples.
- Accumulation behavior / scope compatibility: N/A; this is a static boundary
  contradiction.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: N/A; the primitive parameter regime directly
  permits the counterexample.
- Entry-state / first-update stress result: With (H=\{h_0\}), the learner
  outputs (h_0) without using a reply.  The conclusion is already exact but
  its dimension is one; no first query activates a rate source.
- Baseline conclusion preserved: No.  The exact singleton baseline is learned,
  but the claimed numerical rate assigns it less than one dimension.
- Producer-consumer provenance: no producer exists for the missing base term;
  final theorem assembly would consume it implicitly.
- Null or boundary regime tested: (m=0), and separately (m=1) with
  arbitrarily large (\tau).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes, by the singleton examples.
- Repair route if source is unsupported: change the primitive parameter range
  or change the rate to include a base term; both require idea/setting repair.

### Exact finite-support separation

- Step ID: None (mandated derived obligation is blocked).
- Claim class: exact annihilating witness and arbitrary-domain exactification.
- Theorem role: supplies the witness measure under which every old pivot has
  zero correlation and a new residual can prove strict span growth.
- Mechanism source: the proposed finite-dimensional theorem of alternatives.
- Source-to-claim adequacy: fails for infinitely many strict inequalities.
  Without compactness or a uniform margin, infeasibility gives membership in
  a closed convex hull, not necessarily a finite convex hull or an exact
  probability barycenter.
- Residual-to-target adequacy: approximate barycenters leave nonzero old-span
  residuals.  No stated inequality compares those residuals with the
  (\tau)-scale pivot threshold while also preserving the mandated exact
  witness.
- Key positive/control term or structural source: none for exact barycentric
  attainment.
- Opposing defect terms: nonattainment of the limit direction at infinity.
- Closure/dominance/absorption relation: absent; taking a limit does not create
  a countably additive probability measure with exact zero barycenter in the
  counterexample.
- Accumulation behavior / scope compatibility: unsupported; approximation
  errors can be made small one span at a time but have no declared global
  budget and do not satisfy the exact obligation.
- Obligation locality classification: `idea/theorem-contract defect` because
  the formalized goal expressly mandates a false exact witness.
- Noncircular closure status: no producer exists; assuming the witness would
  assume the failed derived condition.
- Entry-state / first-update stress result: At the first nontrivial
  two-dimensional span in the counterexample, no witness distribution exists,
  so coupling and pivot generation cannot start.
- Baseline conclusion preserved: N/A.
- Producer-consumer provenance: intended producer was separation; consumers
  were overlap coupling, strict pivot generation, energy accounting, and
  termination.  The path fails at its source.
- Null or boundary regime tested: a countably infinite discrete domain with
  bounded evaluation vectors converging to an omitted antipodal direction.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: the required intermediate conclusion is false and all downstream
  consumers lose their witness.
- Repair route if source is unsupported: revise the idea and formalized
  obligation to an approximate witness with a proved tolerance-loss bridge,
  or add compactness/margin assumptions.  Either changes the current contract.

### Common-response prefix

- Step ID: None (supportable local component, not an activated proof step).
- Claim class: local adversarial coupling.
- Theorem role: keeps two executions at a common transcript until their legal
  slabs separate.
- Mechanism source: direct interval geometry under
  `assump:full-adversarial-tolerance`.
- Source-to-claim adequacy: at a common node,
  (I_z(P,h)\cap I_z(P',h')\ne\varnothing) exactly when the center gap is at
  most (2\tau); choosing a point in the intersection is legal for both
  prefixes and depends only on the currently revealed query.
- Residual-to-target adequacy: N/A for the prefix fact.  At non-overlap it
  exports only a scalar center separation, not yet an ordinary-function pivot
  compatible with a common target-independent span.
- Key positive/control term or structural source: nonempty interval
  intersection.
- Opposing defect terms: center gap greater than (2\tau).
- Closure/dominance/absorption relation: synchronize while the gap is at most
  (2\tau); stop the common prefix at the first larger gap.
- Accumulation behavior / scope compatibility: pathwise and finite-horizon;
  at most (m) prefix transitions occur on one paired execution.  This gives
  no budget over different branches or comparison pairs.
- Obligation locality classification: `step-local` for the prefix fact only;
  the claimed global pivot export is not included.
- Noncircular closure status: the slab intersection is checked before each
  common response, and the dependency is primitive slabs to common prefix.
- Entry-state / first-update stress result: at the root, choose a common reply
  if the root slabs intersect; if they do not, the root itself is the first
  separation.  No unseen coin is used because the issued randomized query is
  already revealed.
- Baseline conclusion preserved: N/A.
- Producer-consumer provenance: primitive slabs produce the prefix; the
  intended consumer is a later residual-conversion bridge, which is missing.
- Null or boundary regime tested: identical centers and tangent slabs are
  handled; disjoint slabs cannot share a response.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: the local coupling stops, but non-overlap alone does not establish
  exact sign representation.
- Repair route if source is unsupported: N/A for the prefix fact.

### Qualitative pivot alternative

- Step ID: None (supportable only conditionally, not an activated proof step).
- Claim class: strict local span growth.
- Theorem role: would add one query residual or averaged terminal predictor
  outside a current finite-dimensional span.
- Mechanism source: direct null-center response policy plus
  `assump:universal-expected-accuracy`, conditional on an exact annihilating
  (P).
- Source-to-claim adequacy: while
  (|\mathbb E_P[h b_z]|\le\tau), the reply (\mathbb E_Pa_z) is legal.  If
  a first failure occurs on a positive-measure set of tapes, some associated
  (b_z) has nonzero correlation and is outside (V).  If failure has tape
  probability zero, the averaged terminal predictor has correlation at least
  (1-2\varepsilon>1/2) and is outside (V).
- Residual-to-target adequacy: this proves only (p\notin V) for the current
  witness.  It does not identify a shared metric, a charge compatible with
  previous pivots, or a target-independent finite-list bound.
- Key positive/control term or structural source: first-failure correlation
  greater than (\tau), or terminal correlation greater than (1/2).
- Opposing defect terms: the missing annihilating witness and uncontrolled
  variation of (P,h,z), and the tape subset across iterations.
- Closure/dominance/absorption relation: the two cases exhaust tape measure
  only after an exact witness exists; neither case supplies cumulative energy.
- Accumulation behavior / scope compatibility: unsupported across repeated
  pivots because the witness seminorm changes at every iteration.
- Obligation locality classification: `step-local` for the conditional local
  alternative; `sketch/interface defect` for its proposed export as a common
  quantitatively charged pivot stream.
- Noncircular closure status: local derivation is noncircular conditional on
  (P); the unconditional producer path is broken by exact separation.
- Entry-state / first-update stress result: at the root, either the null-center
  reply is legal, or (b_z) is already a strict local pivot.  If all null
  replies are legal through termination almost surely, accuracy activates the
  terminal case.
- Baseline conclusion preserved: N/A.
- Producer-consumer provenance: separation was to produce (P); the policy
  produces a local pivot; branch energy was to consume it.  The first and last
  interfaces are missing.
- Null or boundary regime tested: zero failure probability and positive
  failure probability are both covered; a null set of failing tapes does not
  carry the expected-accuracy conclusion.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without (P), old-span annihilation and hence strict growth are
  unavailable.
- Repair route if source is unsupported: revise separation and separately
  supply a common quantitative export interface.

### Branch-uniform energy and termination

- Step ID: None (central blocked obligation).
- Claim class: accumulated (\tau^2)-energy, finite rank, and exact
  termination.
- Theorem role: bound the number (D) of accepted pivots by
  (D\le(C_0/c_0)m/\tau^2), then force
  (H\subseteq\operatorname{Sign}(V_D)).
- Mechanism source: absent.  Neither a primitive condition nor the surveyed
  COLT 2017 characterization supplies a common response-tree potential with
  the required output interface.
- Source-to-claim adequacy: bounded queries give (|b_z|\le1) separately at
  each node, and depth bounds charges along one path.  They do not compare
  correlations measured under changing (P_j), nor sum over pivots selected
  from different targets, seeds, and continuous transcripts.
- Residual-to-target adequacy: local gaps greater than (\tau) are in
  (L_1(P_j))-type witness functionals.  No relation transfers them to one
  common Hilbert norm or potential whose total scale is (O(m)).
- Key positive/control term or structural source: proposed charges
  (\Delta_j\ge c_0\tau^2), but no producer defines (\Delta_j) in a common
  geometry.
- Opposing defect terms: cross-witness norm changes, branch proliferation,
  continuous replies, seed dependence, and terminal/query pivot type changes.
- Closure/dominance/absorption relation: none.  The required relation
  (\Phi_j-\Phi_{j+1}\ge\Delta_j) with (0\le\Phi_j\le C_0m), or an
  equivalent telescoping identity, is not derived from any raw control.
- Accumulation behavior / scope compatibility: unsupported.  The accumulated
  defect has unknown sign across changing witness geometries, and there is no
  finite budget over the union of branches.
- Obligation locality classification: `sketch/interface defect` on current
  evidence.  A genuinely new same-setting global potential could repair it;
  no such interface is present.  Restricting replies, queries, distributions,
  or branches would instead be an `idea/theorem-contract defect`.
- Noncircular closure status: failed.  The proposed finite pivot list is both
  the object whose length the energy bound should prove and the assumed domain
  over which the undeclared potential is said to be finite.
- Entry-state / first-update stress result: a root path gives at most one
  pathwise charge, but subsequent accepted pivots may restart at different
  roots, witnesses, and reply branches; no first-update relation couples those
  restarts to a depleted common reserve.
- Baseline conclusion preserved: conditional termination would preserve exact
  signs, but no termination producer exists.
- Producer-consumer provenance: local pivots were intended inputs; the energy
  certificate would produce a finite common span; termination and exact sign
  extraction would consume it.  The producer is absent.
- Null or boundary regime tested: fixed-dictionary examples admit a common
  Gram matrix, but the allowed unrestricted continuous tree need not.  Taking
  all local correlations to zero removes the claimed charge while exact
  nonrepresentation can remain.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; strict span growth alone permits indefinitely many pivots and
  gives no (m/\tau^2) dimension bound.
- Repair route if source is unsupported: a revised sketch must state an actual
  common potential, its raw primitive inputs, its one-pivot drop identity, and
  why its initial budget is (O(m)) uniformly across continuous branches.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Exact finite-support (P) annihilating (hV) | None | Finite dimension of (V); failure of strict pointwise sign representation | Nonclosed-convex-hull nonattainment is uncontrolled | Approximate barycenters do not equal the exact consumed witness | No exact transfer relation exists in the counterexample | None | Coupling and pivot production | The required output is false on an allowed domain |
| Common response prefix | Direct interval-intersection source | Two current legal slabs and the revealed query | Center gap is controlled only until it exceeds (2\tau) | N/A; this exports a prefix, not a target object | Choose any point in the intersection; stop at first non-overlap | Slab radius (\tau) from `assump:full-adversarial-tolerance` | Local residual analysis | None for the prefix; no downstream pivot conversion follows automatically |
| One local (p\notin V) | Null-center policy and learner accuracy, conditional on exact (P) | Exact old-span annihilation; bounded queries; universal expected accuracy | Changing witness, node, and tape subset remain uncontrolled | Nonzero current-witness correlation proves only local span exclusion | First failure gives (>\tau); no-failure average gives (>1/2) | (\tau) or (1-2\varepsilon>1/2) | Branch-energy accounting | Missing unconditional (P) producer and common quantitative geometry |
| Branch-uniform energy certificate (\sum_j\Delta_j\le C_0m) with (\Delta_j\ge c_0\tau^2) | None | Pointwise query boundedness and path depth at most (m) | Cross-(P_j), cross-branch, seed, and terminal/query defects are uncontrolled | Local witness correlations have no bridge to one target-independent norm | No potential-drop, cancellation, or telescoping relation is available | None beyond local thresholds | Finite termination | Central missing interface |
| Finite common span (V_D) with (D\le Cm/\tau^2) | None because energy certificate is missing | Conditional strict local pivots | Pivot count is uncontrolled | No finite-rank target receives all local residuals | Would require the missing energy inequality | None | Exact sign extraction | Missing producer and rate contradiction at parameter boundaries |
| Deterministic exact feature map | Conditional algebra from a valid finite common span | A fixed finite pivot list covering all (H) | Coverage and dimension are uncontrolled | If the span existed, coordinates would target the original functions exactly | (h\in\operatorname{Sign}(V_D)) would give strict signs | Strict sign feasibility, conditional only | Final theorem | Missing finite-span producer; exact baseline cannot be weakened |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Exact annihilating witness (P) | None | Local coupling and pivot alternative | Orthogonalize every new pivot against the current span | Separation -> (P) -> pivot | derived | Producer claim is false on an allowed arbitrary domain |
| Common transcript prefix | Direct interval intersection | First-separation analysis | Preserve legal adversarial replies until a detectable gap | Primitive slabs -> prefix | derived | None locally; it has no automatic ordinary-function pivot export |
| Qualitative local pivot | Conditional null-center policy | Energy certificate | Strictly enlarge a current span | Exact (P) -> policy -> pivot | derived | Missing exact-(P) producer and common-energy consumer interface |
| Branch-uniform energy budget | None | Termination | Bound the number of pivots by (O(m/\tau^2)) | Local pivots -> missing potential -> budget | derived | No mechanism source or noncircular producer |
| Finite covering span | None | Exact sign extraction | Give a common finite coordinate list | Energy budget -> termination -> span | derived | Missing energy producer |
| Exact deterministic feature map | Conditional coordinate construction | Final theorem | Establish (operatorname{dc}(H)\le Cm/\tau^2) | Covering span -> coordinate map -> strict signs | derived | Missing covering span and false parameter-boundary rate |

## Sketch Steps

None.  The exact formalized goal has target-level counterexamples and mandates
a false exact finite-support separation obligation.  In addition, its central
branch-uniform energy output has no source-compatible, accumulation-compatible
producer.  Activating the supportable prefix-coupling fact or the conditional
local pivot alternative as proof steps would not form a viable roadmap to the
unchanged theorem.

## Dependency Notes

The intended graph would have been separation, then coupling/pivot production,
then branch-uniform energy, then termination, then exact coordinate extraction.
That order is acyclic, but it has no legal first producer for the exact witness
and no legal producer for the energy certificate.  The final rate is also
contradicted independently at allowed parameter boundaries.  Therefore there
is no accepted dependency graph to hand to step-level proof work.

## Blockers

1. **The displayed rate is false on allowed parameter boundaries
   (`idea/theorem-contract defect`).**  Let (X=\{x_0\}),
   (H=\{h_0\}), and (h_0(x_0)=1).  A learner that ignores every response
   and outputs (h_0) has zero error for every distribution and every valid
   policy.  Yet (\operatorname{dc}(H)=1): dimension zero yields only the
   zero score and cannot give a strict sign.  If (m=0), the claimed upper
   bound is zero.  Even if (m\ge1) is intended, taking (m=1) and any
   (\tau>\sqrt C), which `assump:source-parameter-regime` permits, gives
   (C m/\tau^2<1).  Repair requires a parameter restriction or an additive
   base term and hence a changed setting/goal.
2. **The mandated exact finite-support separation obligation is false
   (`idea/theorem-contract defect`).**  Take
   (X=\{0,1,2,\ldots\}), (h\equiv1), and
   (V=\operatorname{span}\{f_1,f_2\}) with evaluation vectors
   \[
   (f_1(0),f_2(0))=(1,0),\qquad
   (f_1(n),f_2(n))=(-\cos(1/n),\sin(1/n))\quad(n\ge1).
   \]
   If (f=a f_1+b f_2) were positive everywhere, positivity at (0) would
   give (a>0), while
   (f(n)=-a\cos(1/n)+b\sin(1/n)\to-a<0), a contradiction.  Thus
   (h\notin\operatorname{Sign}(V)).  For any probability (P), however,
   (\mathbb E_P f_2=0) forces (P(n)=0) for every (n\ge1), since all
   (\sin(1/n)>0); then (P=\delta_0) and
   (\mathbb E_P f_1=1\ne0).  No annihilating probability exists, even
   without the finite-support requirement.
3. **No branch-uniform (\tau^2)-energy mechanism is available
   (`sketch/interface defect`).**  The current raw controls are nodewise
   boundedness, pathwise depth, and local correlations under witness measures
   that change with the pivot.  They do not yield a common potential, a
   one-pivot potential drop, or a finite budget over different seeds and the
   continuum of response branches.  COLT 2017 does not export the required
   exact-rank interface.  Calling this a future hard lemma would violate the
   mechanism-source, exported-interface, scope-accumulation, and noncircular
   closure gates.
4. **Termination and exact sign extraction have no producer path.**  They are
   valid only conditional on a finite common pivot list with the stated
   dimension bound.  Strict local span growth alone does not bound the number
   of pivots, and approximate/probabilistic extraction would violate the exact
   baseline conclusion.
