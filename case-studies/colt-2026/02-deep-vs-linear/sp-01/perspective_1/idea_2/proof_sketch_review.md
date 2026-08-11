# Proof Sketch Review

## Reviewed Sketch Identity

- Sketch attempt: 1
- Reviewed branch: `perspective_1/idea_2`
- Reviewed roadmap: encode a length-
  \(T\) SGD transcript in \(\mathbb R^{(T+1)S}\), export it as an exact
  reduction to stochastic convex optimization, apply Chornomaz--Moran--Waknine
  Theorem 3, and conclude \(\operatorname{dc}(\mathcal H)\le 3TS\). The sketch
  records that the reduction export has no legal producer and therefore gives
  no proof steps.

## Sketch Viability Score

3

## Sketch Review Status

IDEA_FAIL

## Smallest Retry Target

/subagent-idea-generator

## Retry Mode

new_idea

## Audit Summary

- Goal alignment: The branch remains faithful to the exact-goal theorem in
  `setting.md`: an unconditional, deterministic, common feature map of
  dimension \(O(TS)\), with the two primitive assumptions and no change in the
  source protocol. The proposed conditional arithmetic would match that goal,
  but the roadmap does not establish its first theorem-critical implication.
- Dependency audit: The hypothetical chain is acyclic after an exact SCO
  reduction is supplied. There is, however, no dependency path from
  `assump:fixed-source-witnesses` and `assump:universal-expected-success` to
  that reduction, so the sketch correctly contains no executable proof steps.
- High-risk coverage: The sketch explicitly records all three central failures:
  the exact-SCO interface, the local-strata-to-global-convex-relation interface,
  and the expected-randomized-to-exact-shared-output interface. These blockers
  cover the proposed route, but their honest coverage does not make the route
  viable.
- Explicit-rate coverage: RO-1 correctly exposes \(T,S\), a universal constant,
  the deterministic conclusion mode, the expected-risk premise mode, and all
  forbidden hidden dependence. The arithmetic
  \((T+1)S+1\le 3TS\) is valid for \(T,S\ge1\); the dimension certificate to
  which it would apply is absent.
- Assumption and citation plausibility: The sketch uses only the stable setting
  assumptions and does not hide a generated event as primitive. Direct
  inspection of arXiv:2411.10784v1 verifies Definition 6 (`def:red`) and
  Theorem 3 (`t:halfspaces-complete`): a reduction has fixed maps
  \(r_{\rm in}\) and \(r_{\rm out}\), exactness requires every realizable source
  distribution to push forward to a realizable target distribution, and for a
  finite class an exact \((\alpha,\beta)\)-reduction to an SCO task in
  \(\mathbb R^d\), with \(\beta<1/2\), yields an exact homogeneous-halfspace
  representation in \(\mathbb R^{d+1}\). The proof uses zero target loss,
  finite-class minimax, convex zero-loss hulls, and strict separation. None of
  those interfaces follows from the current SGD premise.

## Early Obstruction Audit

- Limiting-case stress: At \(T=1\), transcript coordinate count still supplies
  no convex reduction. At \(\varepsilon=0\), nonnegative risk gives zero risk
  almost surely only for each fixed \((\mathcal D,h)\); it does not identify
  fixed reduction maps, a common convex parameter, or a target-independent
  linear feature map. Point-mass distributions alter the first SGD update when
  their support point changes. Full-support distributions do not repair the
  missing nonlinear-to-convex/linear interface. ReLU kink and dead-unit cases
  also remain in scope.
- Theorem-critical bridge support: Source Theorem 3 consumes, rather than
  produces, an exact SCO reduction. Its source objects are a finite concept
  class, fixed example/output maps, a convex SCO domain with nonnegative convex
  losses, realizable push-forwards, and \(\beta<1/2\). The branch supplies only
  a randomized, distribution-dependent nonlinear algorithm with an expected
  classification-risk guarantee. The sole bridge is therefore unsupported.
- Exported-interface feasibility: A realized transcript in
  \(\mathbb R^{(T+1)S}\) is legally produced, but its coordinate encoding does
  not export an SCO instance, a convex zero-loss fiber, or a common linear
  representation. No raw-control-to-interface implication, positive exactness
  margin, or prediction-preserving convexification relation is present.
- Theorem-critical mechanism witness gate: B1 has the correct conditional
  source theorem but lacks a producer for its hypotheses. B2 has no source that
  turns analytic strata into the closed/open convex relation required by source
  Theorems 7 or 9. B3 has no exact derandomization source. All three witnesses
  fail at mechanism-source level, not merely at derivational detail.
- Entry-state trace stress: Gaussian initialization followed by the first update
  creates another transcript coordinate but no exact or convex certificate. At
  a zero preactivation, fixed \(\kappa\) makes the update single-valued but does
  not make adjacent-stratum maps continuous; a dead unit can remain inactive.
  Under a point mass, changing the point changes the first update. The desired
  shared representation is not already true or activated by any of these
  transitions.
- Obligation locality classification: B1 exact reduction export, B2 global
  convex/topological relation, and B3 exact shared derandomization are each
  `idea/theorem-contract defect`. The final exact representation and linear
  rate are blocked by those defects. No unresolved theorem-critical obligation
  is `step-local`.
- Noncircular closure gate: Calling transcript coordinates an SCO parameter
  would assume the missing reduction interface. Using label separation to
  prove convex-hull separation would assume the representation consequence.
  There is no independent producer for either closure.
- Mechanism-source and boundary stress: Exactness does not follow from a small
  positive expected residual. Even when that residual vanishes, arbitrary
  nonlinear correct transcripts need not have prediction-preserving convex
  hulls. Finite activation stratification controls descriptions, not convexity,
  global gluing, or sign-rank. Thus the obstruction survives the most favorable
  boundary cases admitted by the theorem.
- Generated-output flow: The protocol produces a path-dependent transcript and
  predictor. The missing exact-SCO certificate is consumed by Theorem 3; its
  missing output then blocks the feature map and the \(3TS\) arithmetic. There
  is no legal producer-consumer path across the first missing arrow.
- Source-to-claim adequacy: Theorem 3 is adequate only conditionally on its
  verified exact-reduction hypotheses. Its strict separation creates nonzero
  inner products, so the branch tie convention causes no source mismatch. The
  theorem has no statement converting arbitrary low-dimensional randomized
  transcripts into reductions. Source Theorem 7 requires a closed relation over
  compact convex \(W\) with nonempty convex antipodally disjoint fibers; source
  Theorem 9 requires nonempty fibers, disjoint convex hulls, open inverse fibers,
  and compact convex \(W\). Local analytic strata satisfy none of these global
  interfaces by themselves.
- Residual-to-target adequacy: The produced control is expected
  distribution-weighted \(0\)-\(1\) error at most \(\varepsilon\). The consumed
  interface requires zero transformed loss for every realizable push-forward,
  followed by exact pointwise separation. There is no decomposition or
  dominance relation eliminating the positive residual, distribution-dependent
  path law, nonlinear readout, or nonconvex-fiber residual. At
  \(\varepsilon=0\), the latter three residual classes remain uncontrolled.
- Baseline invariance audit: The inherited baseline is the same exact,
  deterministic, pointwise representation, including the
  \(\varepsilon=0\) specialization. The sketch does not weaken it, but also has
  no source-adequate bridge that proves it. A probabilistic, confident,
  polynomial-only, or high-probability replacement would change the current
  theorem contract and must be a new idea.
- Scope-accumulation compatibility: Gate histories accumulate over the fixed
  \(T\) updates, but enumerating them gives no recurrence or finite budget for
  global convexity. Pointwise failures over \(2^n\) inputs are nonnegative and
  have no \(TS\)-controlled cancellation or union-bound budget. The central
  mismatch is already static at \(T=1\).
- Scope and dependence consistency: The sketch preserves universality in
  \((\mathcal D,h)\), deterministic exact output, fixed finite horizon, and a
  universal constant independent of every listed parameter. No hidden
  dependence is introduced; rather, the required mode conversion is absent.
- Generated-condition provenance: Exact realizability, convex good-solution
  fibers, an all-input-correct shared event, and the target-independent feature
  map are derived outputs. None is improperly promoted to a primitive
  assumption, and none has a producer.
- Citation and tool applicability: arXiv:2411.10784v1, Definition 6 and Theorem
  3, have been checked against the v1 source. Finiteness holds because
  \(\mathcal X\) and hence \(\mathcal H\) are finite. The source's exactness,
  fixed-map, convex-loss, and \(\beta<1/2\) requirements are not discharged.
  Theorems 7 and 9 were also checked for the convexity, compactness,
  antipodality/separation, and closed/open-fiber requirements used in B2.
- Same-setting repair plausibility: A same-setting proof would have to introduce
  a new exact transcript-to-convex-reduction theorem, a prediction-preserving
  global convexification theorem, or an exact distribution-independent
  derandomization/linearization theorem. Neither the setting, the cited source,
  nor a raw direct relation supplies such a mechanism. This is the core open
  bridge rather than a missing sketch decomposition.
- Target-preserving bridge-repair gate: Adding ordinary bridge steps cannot
  preserve the current goal because there is no source or obstruction-level
  raw-assumption implication for their intended conclusions. Supplying one
  would add an unsupported theorem-facing mechanism. The available fallback of
  a polynomial or confident/high-probability conclusion weakens the exact
  deterministic success criterion and therefore requires idea revision.
- High-risk obligation classes: The audit finds failed structural convexity and
  separation claims, failed exact probability-mode conversion, failed
  generated-output provenance, an unsupported scope accumulation/union-bound
  route, an absent exact-rate input, and no hidden assumption that could legally
  repair them.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| B1: exact SCO reduction in dimension \(\le(T+1)S\) | Exact reduction; sole input to Theorem 3 | Theorem 3 consumes this certificate but does not produce it | arXiv:2411.10784v1, Definition 6 and Theorem 3 | Adequate only after fixed maps, realizable push-forwards, convex SCO losses, and \(\beta<1/2\) are proved; those are absent | Finite class and strict-separation/tie conventions match; SGD transcript and SCO-task conventions do not | Source relation is zero transformed loss \(\Rightarrow\) common \(w_c\) by minimax \(\Rightarrow\) disjoint zero-loss convex hulls; no branch relation supplies the first implication | Available: expected risk and transcript coordinates. Required export: exact fixed-map convex reduction. Coordinate count does not export it | \(\varepsilon\) is not dominated at zero scale; at \(\varepsilon=0\), nonconvexity and distribution/path dependence remain | Static persistent mismatch, already at \(T=1\); no absorption or finite budget | None; declaring the transcript an SCO parameter is circular | Protocol produces transcript; intended consumers are Theorem 3 and final feature map, but the reduction producer is missing | First update adds coordinates only; zero-error and kink/dead cases do not create convex exactness | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| B2: analytic strata to one global convex topological relation | Convex-fiber/continuity/separation bridge for Borsuk--Ulam | Source Theorems 7 and 9 require the global geometry; local analytic formulas are the only branch source | arXiv:2411.10784v1, `t:Borsuk-Ulam` and `t:BU-open`; branch direct stratum observation | Mismatch: finite analytic strata do not imply compact convex fibers, closedness/open inverse fibers, or antipodal convex-hull separation | Fixed \(\kappa\) is single-valued at kinks but not a source-compatible continuity/gluing rule; unbounded Gaussian transcript space is not compact \(W\) | Required relation is closed/open global fiber control plus antipodal disjointness; no gluing, convexification, or separation inequality exists | Available: local branch formulas. Required export: one compact convex relation preserving predictions. No feasible transfer is stated | Convexification can add wrong-label predictors; kink, dead-unit, disconnected-region, and unboundedness residuals are uncontrolled | Gate choices accumulate for \(T\) updates; finite enumeration controls count only, with no global closure budget | None; deriving hull separation from desired label correctness would be circular | Local formulas may be produced; the topological theorem consumes a global relation that has no producer | Zero preactivation, \(\kappa\in\{0,1\}\), dead units, and later kink hits fail global continuity/activation | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| B3: expected randomized success to one exact shared feature map | Probability-mode conversion and derandomization | No exact source; Markov/randomized representation tools yield only relaxed outputs | Primitive premise plus cited exact-vs-approximate separation context | Expected per-\((\mathcal D,h)\) risk has the wrong claim type for a deterministic distribution-independent embedding | Branch probability and tie conventions are explicit; no source interface exists to compare beyond them | Required implication is per-pair expected risk \(\Rightarrow\) one all-points, all-target exact map; no coupling, minimax, or zero-residual relation supplies it | Available: laws of target/distribution-specific trajectories. Required export: one common feature map. Laws change with \(\mathcal D\) | Positive \(\varepsilon\) remains; at zero error, incompatible nonlinear trajectories and absent linearization remain | Pointwise errors are nonnegative/nondecaying across \(2^n\) points, with no \(TS\)-budget or valid union bound | None; an all-input-correct shared event cannot be assumed before it is produced | Premise produces scalar expected risks; final theorem consumes a shared exact map; dependency path is broken | Point masses on different inputs generate different first updates; full support and \(\varepsilon=0\) do not supply common linear features | `idea/theorem-contract defect` | `/subagent-idea-generator` |
| Exact baseline and \(3TS\) specialization | Baseline invariance and final quantitative closure | Theorem 3 plus arithmetic, conditional on B1; B3 is also required | Verified Theorem 3 and direct integer arithmetic | The conditional source conclusion matches exact homogeneous sign representation, but its hypotheses are unavailable | Strict source separation makes the fixed tie label harmless; no architecture-dependent constant is introduced | If \(d_0\le(T+1)S\), then \(d_0+1\le3TS\) for \(T,S\ge1\); no valid \(d_0\) is produced | Raw \(T,S\) support arithmetic only; exact representation certificate is missing | No residual is allowed in the baseline; the available expected-risk residual and interface defects are not dominated | Fixed-horizon arithmetic is controlled, but the structural certificate defect persists | Conditional path B1 -> Theorem 3 -> arithmetic is noncircular; B1 itself has no producer | Intended producer is Theorem 3 after B1; consumer is the final theorem | \(\varepsilon=0\) preserves the requested target but does not activate B1/B3 | `idea/theorem-contract defect` | `/subagent-idea-generator` |

## Blocking Issues

1. In `Proof Roadmap`, B1, `Exported Interface Feasibility`, and
   `Generated Output Flow`, the transcript-to-exact-SCO arrow has no producer.
   Theorem 3's verified fixed-map, realizable-push-forward, convex-loss, and
   zero-loss interfaces are not discharged. Without them, neither the feature
   map nor the \(O(TS)\) conclusion follows. The smallest sound repair is a new
   idea with a supported theorem-facing mechanism or an explicitly weakened
   target.
2. In B2, branchwise piecewise analyticity is used only as a candidate local
   description, while the cited topological theorems consume global compact
   convex relations with closed/open and antipodal-separation properties. No
   prediction-preserving gluing or convexification source exists. Repair would
   require a new theorem-facing mechanism, not a reordered proof step.
3. In B3, the premise is an expectation over a trajectory law that depends on
   \(\mathcal D\), while the conclusion is a single exact deterministic feature
   map. No exact mode-conversion or common-embedding producer exists, including
   in the \(\varepsilon=0\) boundary case. Polynomial or confident/high-
   probability output changes the conclusion and belongs to idea revision.
4. The sketch contains no stable proof steps. This is honest, but it means there
   is no step-level work that can begin without first resolving all three
   idea-level source failures.

## Required Repair Bundle

1. Linked issues: B1 and Blocking Issue 1. Required change: generate a new idea
   whose theorem-facing mechanism either directly derives a deterministic
   representation from the primitive SGD premise or supplies a source-adequate
   exact reduction with fixed \(r_{\rm in},r_{\rm out}\), realizable
   push-forwards, convex losses, and a dimension bound. Affected assumptions:
   `assump:fixed-source-witnesses` and
   `assump:universal-expected-success`. Affected step IDs: none exist. Smallest
   retry target: `/subagent-idea-generator`.
2. Linked issues: B2 and Blocking Issue 2. Required change: do not reuse local
   analytic stratification as if it supplied global convex topology. A new idea
   must provide and preflight an actual prediction-preserving global relation,
   including compactness or a valid replacement, fiber geometry, boundary
   gluing, antipodal separation, and a raw-assumption-to-interface implication;
   otherwise abandon this route. Affected step IDs: none. Smallest retry target:
   `/subagent-idea-generator`.
3. Linked issues: B3 and Blocking Issue 3. Required change: provide a legal
   distribution-independent producer and coupling for the exact shared output.
   If no exact producer is available, follow the user-authorized fallback order
   in a new branch by first weakening to a polynomial bound or a confident/high-
   probability representation under the weakest explicit condition, labeling
   the result `conditional` or `material_partial` rather than `full`. Affected
   step IDs: none. Smallest retry target: `/subagent-idea-generator`.
4. Target-preserving repair check: No sketch-only bridge repair is supported.
   Preserving the current exact goal would require adding one of the unsupported
   theorem-facing mechanisms above, which is the core unresolved content.
   Weakening to polynomial or probabilistic output changes the success
   criterion and therefore also requires idea revision and re-formalization.

## Review Rationale

`IDEA_FAIL` is the deepest required change. The sketch is goal-faithful and
diagnostically careful, but it has no proof roadmap after checking its only
candidate source. The verified source theorem is a conditional converter from
an exact convex reduction, not a converter from arbitrary low-dimensional SGD
transcripts. The current setting supplies no exact convexification, global
convex-fiber relation, or distribution-independent exact derandomization
mechanism, and the favorable boundary cases do not activate one. Consequently,
same-setting sketch repair would have to add an unsupported theorem-facing
mechanism; the practical fallback changes the conclusion to a polynomial or
confident/high-probability target. Both routes are idea-level, so
`REVISE_SKETCH` would incorrectly classify the core open bridge as local proof
organization.
