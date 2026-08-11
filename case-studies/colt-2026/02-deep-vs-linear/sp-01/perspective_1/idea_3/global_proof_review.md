# Global Proof Review

## Global-Proof Review Identity

- Branch path: `perspective_1/idea_3`.
- Sketch attempt: `1`.
- Reviewed `setting.md`: SHA-256 `41b4fe863423828b96d1adef0bcd66e1fbf09f9c6258d71d6eb0c2d064767ddd`.
- Reviewed `proof_sketch.md`: SHA-256 `6cfa97961bfca0d27ea1134521445aa3454a10fc3871f139551b4133769f56cd`.
- Reviewed `proof_sketch_review.md`: SHA-256 `489e604e39d02a75afb42b07460d0c967eadf530caa0d7e359ba60934d176252`; upstream status `ACCEPTED`, viability score `9`, retry target `None`.
- Reviewed `global_proof.md`: SHA-256 `0d0070ee9af8bad3612ef8ae0d5ab74690deca40637a8cc0303f7b996b1c3837`.
- Reviewed global-proof status: `COMPLETE_DRAFT`.
- Reviewed suggested routing: `None`.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The reviewed diagnostic contains every required section: reviewed-sketch identity, controlled status, attempted theorem claim, a dependency-ordered whole-proof draft, theorem-level block map, coverage of all seven accepted sketch steps, dependency and assumption audit, citation and tool audit, quantitative dependence audit, scope-and-closure certificate, exported-interface feasibility table, generated-output flow, early obstruction analysis, global gaps, diagnostic-boundary note, and suggested routing. `COMPLETE_DRAFT` and `Suggested Routing = None` are aligned controlled outputs.

The diagnostic is substantially more than a restatement of the sketch. Blocks G1--G7 expose the exact recurrences, equalities, order relations, probability split, and arithmetic interfaces on which local proofs must close. It also states that it is diagnostic only and cannot serve as proof evidence, an assumption source, or authority to alter accepted step claims. Its identities match the current input hashes, and the accepted upstream review authorizes this stage.

## Claim And Sketch Fidelity Audit

The attempted claim exactly preserves the conditional theorem in `setting.md`: the fixed bias-free ReLU architecture and Gaussian initialization, fixed source conventions `(s_0,\kappa)`, exact one-sample all-layer logistic SGD, fixed horizon and latter-half aggregate, the four stable `assump:` conditions, and the single unconditional initialization-gate law selected before every `(\mathcal D,h)`. The quantifier order remains
\[
\exists\mathcal P_{\rm gate}\;\forall\mathcal D\;\forall h,
\]
and the claimed expectation, metric, tie rule, feature dimension, and error threshold remain those of the formalized goal.

The diagnostic does not turn the static event `E_r` into a trajectory assumption. It derives containment, then gate constancy, then the exact path representation. It retains the target- and sample-dependent trained weights only in feasible comparison coefficients and never exports them into the feature law. The final public consequences are precisely
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}\le S^{L_0},
\qquad
\operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}.
\]
No unconditional, general-depth, deterministic, or `CTS` conclusion is implied. The progress type remains `conditional`.

The accepted sketch's baseline obligations are preserved: the gate-free exact linear representation at `L=1`, exact removal of the complement charge at `\delta_0=0`, exact `s_0` behavior at a zero score, `d_{\rm path}=S` at `L=1`, equality-compatible counting at `S=1`, and zero threshold when `\varepsilon=\delta_0=0`.

## Theorem-Level Structure Audit

The block composition is complete and acyclic:

| Global block | Accepted step | Output and consumer |
| --- | --- | --- |
| G1 | `step_001` | Finite exact selected-gradient envelope `G_r`, consumed by G2 |
| G2 | `step_002` | All-history containment through time `T`, consumed by G3--G5 |
| G3 | `step_003` | Ball-wide strict gate identity, consumed by G4 |
| G4 | `step_004` | Exact path coefficients and tie-preserving aggregate equality, consumed by G5 |
| G5 | `step_005` | Path-independent infimum bounded pointwise before sample averaging, consumed by G6 |
| G6 | `step_006` | Unconditional pushforward witness at error `\varepsilon+\delta_0`, consumed by G7 and the theorem |
| G7 | `step_007` | `S^{L_0}` dimension and `2\varepsilon` specialization, consumed by final assembly |

Every accepted Step ID has one coherent theorem-level role, its declared dependencies are honored, and all theorem-facing outputs have a producer before their first consumer. G1 provides the static bound before G2 invokes the ball supremum; G2 provides containment before G3 transfers the static margin; G3 fixes the gates before G4 expands paths; G4 supplies a feasible coefficient before G5 compares risks; G5 supplies the stable-event inequality before G6 removes the condition; and G6 supplies the witness before G7 specializes it. There is no closure or assembly label standing in for an unproduced output.

## Dependency And Assumption Audit

- Primitive conditions are exactly `assump:fixed-source-witnesses`, `assump:universal-expected-success`, `assump:constant-depth`, and `assump:robust-tube`.
- `assump:robust-tube` gives only the initialization probability of the static event defined through `M_r` and `G_r`. It does not assume a realized tube, stable gates, a path representation, or representation quality.
- Finiteness of `G_r` is derived in G1 from the finite coordinate box, finite widths and depth, bounded logistic output factor, and the exact fixed-`\kappa` selector in `[0,1]`.
- All-history parameter membership is a derived invariant of G2. Its producer relation is `D_{t+1}\le D_t+\eta G_r`, with base `D_0=0` and finite budget `T\eta G_r\le r`.
- Gate identity is a derived structural invariant of G3. Its nonzero source is the primitive ball-wide margin `M_r>0`, combined with independently derived containment.
- Path coefficients, exact score identity, conditional risk comparison, pushforward identity, unconditional risk bound, and quantitative specializations are derived outputs of G4--G7.
- Local use of the phrase "on `E_r`" is discharged in G6. The final theorem retains the unconditional law, retains maps from `E_r^c`, and bounds their total contribution rather than assuming the generated condition.

No unconditional theorem-facing conclusion is completed by a local conditional hypothesis, and no derived invariant has been moved into the public assumptions.

## Citation And Tool Audit

No external theorem supplies a theorem-critical mechanism. The parent papers are lineage and motivation only. The diagnostic's tools are direct or elementary current-notation facts with compatible objects:

| Tool/interface | Source and convention check | Exact conclusion used | Locality |
| --- | --- | --- | --- |
| Forward/backward coordinate recurrences | Same bias-free network, Boolean input scale, coordinate sup norm, logistic derivative, and fixed `\rho_\kappa\in[0,1]`; no continuity of the selected gradient is assumed | Every coordinate of the exact selected all-layer gradient is bounded on the same ball defining `G_r` | `step-local` in G1 |
| Closed-ball induction | Same update, center, radius, norm, input set, and label set as the setting | `D_t\le t\eta G_r\le r` for every labeled history | `step-local` in G2 |
| Continuity and IVT | Exact forward preactivations and the same strict `>0` gate convention as the feature map | A positive ball-wide absolute margin prevents every sign crossing | `step-local` in G3 |
| Finite path algebra | Same no-bias architecture, full path index, trained weights, fixed gates, and prescribed time indices | Exact scalar equality with zero residual, including ties | `step-local` in G4 |
| Feasible-candidate order | Same feature, evaluation distribution, target, strict loss, and tie label | `\inf_w R(w,\varphi)\le R(w_\omega,\varphi)` pointwise before averaging | `step-local` in G5 |
| Finite-map pushforward and tower property | Gate map has finite domain/range representation; `E_r` is initialization-only; all losses are bounded and nonnegative | Exact expectation identity and legal conditional-to-joint conversion | `step-local` in G6 |
| Integer and threshold monotonicity | Positive widths, actual parameter-count summands, `L\le L_0`, and `\delta_0\le\varepsilon` | Exact dimension comparison and reuse of the same witness at the larger threshold | `step-local` in G7 |

There is no source-object mismatch, transformed reference object, hidden inner-product change, normalization change, or unverified cited wrapper. The relevant source-convention checks are internal and explicit. Each produced object is the exact object consumed downstream, so no unlisted source-to-target residual is present.

## Quantitative Dependence Audit

For the expected representation result, the diagnostic exposes `\varepsilon,\delta_0,T,\eta,r,M_r,G_r,s_0,\kappa,d_{\rm path}` and states that there are no hidden constants. The architecture, initialization law, `L,L_0,T,\eta,r,\varepsilon,\delta_0,s_0,\kappa` are fixed before `(\mathcal D,h)`. The learner premise is a joint initialization/sample expectation, the tube premise is an initialization-only probability statement, and the conclusion is an expectation under the unconditional pushforward law. The horizon is exactly the finite state set `0,\ldots,T`; the norm is the coordinate sup norm for containment and the exact tie-resolved risk for the theorem.

The complement conversion is explicit and has the required scale:
\[
\mathbb E F
\le \mathbb E[\mathbf 1_{E_r}\mathcal L]+\Pr(E_r^c)
\le \varepsilon+\delta_0.
\]
No event, horizon, or confidence dependence is hidden or union-bounded away.

For the public specialization, the diagnostic exposes `d_{\rm path},S,L,L_0,\varepsilon,\delta_0`, uses no hidden multiplicative factor, and gives both required domination relations:
\[
d_{\rm path}\le S^L\le S^{L_0},
\qquad
\varepsilon+\delta_0\le2\varepsilon.
\]
The same feature-law witness is reused; no new probability conversion or metric change occurs. All baseline reductions are exact.

## Scope And Closure Review

The scope-and-closure certificate covers every theorem-critical condition and final bridge. Its rows give concrete controls rather than future-step or category-only labels.

- Static boundedness: G1 identifies the exact forward and backward recurrences, the selected-gradient convention, the coordinate bound, and the exact `G_r` interface.
- Finite-horizon recurrence: G2 exposes the accumulated arbitrary-sign forcing `\sum_{q<t}\eta G_r=t\eta G_r`, its one-step charge `\eta G_r`, the terminal reserve `T\eta G_r\le r`, and why the closed-ball supremum is invoked noncircularly. The entry trace `D_0=0` and first update `D_1\le\eta G_r` are present.
- Structural gate source: G3 identifies the positive source `M_r>0`, the exact sign-crossing contradiction, the independent producer of containment, and the handling of the null-margin complement. Gate stability does not rely on a generic local-tube label.
- Exact representation and ties: G4 states the path coefficient and score equality with residual zero. Current trained weights and sample dependence stay entirely in the coefficient, while the feature is initialization-only. The `L=1`, zero-weight, cancellation, zero-score, and `T=1` traces are present.
- Infimum order: G5 fixes the feature and its best risk before the path is drawn, uses each path-dependent coefficient only as a feasible point, and averages only after the pointwise inequality. No optimizer selection or illegal exchange is used.
- Pushforward and event closure: G6 keeps the full unconditional map law, gives a producer path for the finite-map risk functional, and charges arbitrary complement behavior once by `\Pr(E_r^c)\le\delta_0`. The stable contribution is transferred through the exact tower identity in the same risk metric.
- Quantitative closure and baselines: G7 uses the actual factors represented by parameter-count summands, threshold inclusion, and the original primitive restrictions. The exact baseline specializations are recorded rather than replaced by stopped or conservative surrogates.

Every certificate row is `step-local`. All repeated or accumulated controls have a declared finite-scope relation; all generated conditions have noncircular producers; all theorem-facing outputs have exact raw-control-to-interface paths; and every bridge either has zero residual or, only for `E_r^c`, the explicit residual budget `\delta_0`.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Finite exact `G_r` | Static boundedness; activates the event's finite update budget | Direct exact forward/backward recurrences | Primitive finite architecture/ball, logistic loss, fixed `\kappa` | Bounds every coordinate of the exact selected full gradient whose supremum is `G_r` | Same network, input scale, coordinate norm, and selector convention; kinks are included | With `B=max(1,\|\theta^0\|_\infty+r)`, forward bounds `a_\ell`, backward bounds `b_\ell`, and `G_r\le\max_\ell b_\ell a_{\ell-1}<\infty` | Finite coordinates, finite widths, `|\ell'|\le1`, and `0\le\rho_\kappa\le1` export the exact full-gradient envelope | Exact object and norm; residual zero | Static depth/width products may be large but do not accumulate and remain finite | Primitive architecture and ball -> G1; no trajectory conclusion is assumed | G1 / `step_001` produces; G2 and the event interface consume | Zero weights, hidden kinks, `\kappa=0,1`, arbitrary finite `r`, and `L=1` all preserve the upper bound | step-local | None |
| All-history closed-tube membership | Generated invariant; enables every later stable-gate block | Exact update, G1, and `T\eta G_r\le r` | Accepted dependency plus primitive initialization event | Controls the exact parameter vector in the same ball and norm consumed by G3 | Same all-layer update, label set, center, closed radius, and coordinate norm | `D_0=0`; `D_{t+1}\le D_t+\eta G_r`; hence `D_t\le t\eta G_r\le r` for all `t\le T` | One-step exact-gradient bound and terminal reserve export membership for every labeled history | Exact state-to-ball distance is the controlled residual and is at most `r` | Arbitrary-sign increments are charged by `\eta G_r`; total worst-case forcing is `t\eta G_r`, finite under the declared horizon | Membership at time `t` licenses the ball supremum, which proves membership at `t+1` | G2 / `step_002` produces; G3--G5 consume | `D_0=0`, `D_1\le\eta G_r`, zero gradient, maximal outward motion, `T=1`, and terminal equality pass because the ball is closed | step-local | None |
| Ball-wide gate identity | Structural nondegeneracy and generated local-validity invariant | `M_r>0`, continuity/IVT, and G2 containment | Primitive static margin plus accepted derived membership | The positive margin excludes a zero of the exact preactivation whose strict indicator is consumed | Same ReLU preactivation, strict `>0` gate, feature coordinates, and fixed source protocol | `|u_{\ell,j}(\theta,x)|\ge M_r>0` on a connected ball; opposite signs would force a zero | Uniform margin plus exact containment export precisely the initialization indicators for every input/state/history | Gate indicators coincide exactly on `E_r`; residual zero | Gate crossings are source-excluded in the tube; arbitrary complement behavior is separated for G6 | Static margin and G2 are available before G3; neither assumes gate stability | G3 / `step_003` produces; G4 consumes | Initialization and first-update signs, ball boundary, gate-free `L=1`, and `M_r=0` on the explicitly charged complement are covered | step-local | None |
| Exact path score and tie preservation | Exact representation interface; makes actual aggregate feasible in fixed feature map | Fixed gates from G3 and direct no-bias path algebra | Accepted dependency plus exact network equations | Current weight products give every coefficient while initialization gates give every feature coordinate | Same full path index, trained weights, strict gates, latter-half indices, scalar score, and `s_0` rule | `f_\theta(x)=\langle c(\theta),\varphi_{\theta^0}(x)\rangle`; `w_\omega=\sum_{t=\lceil T/2\rceil}^T c(\theta^{(t)}(\omega))`; `A=\langle w_\omega,\varphi\rangle` | Exact gates and weights export an exact coefficient in `\mathbb R^{d_{\rm path}}` | Produced and consumed scores are identical; residual zero even at a zero score | Finite exact summation; moving weights and path dependence remain in coefficients and create no feature defect | G2/G3 produce state and gates before G4 | G4 / `step_004` produces; G5 consumes; coefficients are not exported beyond risk comparison | Formula holds at the entry state and first update; `L=1`, `T=1`, zero path weights, cancellation, and ties pass | step-local | None |
| Infimum-before-sample-expectation comparison | Conditional risk transfer; links actual SGD risk to fixed-feature best risk | Exact score equality and elementary feasible-point order | G4 accepted output plus the definition of `R` | Each `w_\omega` is in the same feasible set used by the path-independent infimum | Same `\mathcal D,h`, feature, evaluation risk, strict error, and tie convention | For fixed `(\mathcal D,h,\theta^0)`, `F=\inf_wR(w,\varphi)\le R(w_\omega,\varphi)=\mathcal L_\omega` for every `\omega`, then average | G4 supplies one exact feasible candidate for every path; no optimizer is exported | Same risk target and exact score; residual zero | Path-dependent candidates vary arbitrarily, but only bounded risk is averaged after the pointwise comparison | G4 produces each candidate before G5; `F` is defined before sampling | G5 / `step_005` produces; G6 consumes | Nonattainment, deterministic paths, zero scores, and `T=1` do not affect the inequality | step-local | None |
| Measurable unconditional gate-map pushforward | Generated-law interface; identifies the representation expectation | Finite input/path sets and Borel strict gate indicators | Primitive initialization law and direct finite-space derivation | The risk functional factors through exactly the feature map distributed as `\mathcal P_{\rm gate}` | Same initialization, strict gates, feature coordinates, and unconditional law; no surrogate reference object | `\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}\inf_wR=\mathbb E_{\theta^0}F(\theta^0)` | Finite range supplies measurability without a measurable optimizer; duplicate and complement maps retain mass | Exact pushforward object on both sides; residual zero | Static mapping only; no temporal or sampling accumulation | Initialization -> gate map -> finite risk value -> pushforward expectation | G6 / `step_006` produces and immediately consumes in the event split/final witness | Duplicate maps, zero feature coordinates, gate-free `L=1`, and maps from `E_r^c` remain in the law | step-local | None |
| Unconditional error `\varepsilon+\delta_0` | Final probability closure; supplies the dc witness | G5, bounded risk, initialization-only event, and the two primitive expectation/probability bounds | Accepted dependencies plus `assump:universal-expected-success` and `assump:robust-tube` | Stable risk uses the exact source loss; unstable risk has the exact unit bound needed for the advertised additive scale | Same initialization/sample probability space, fixed map law, target, risk, and horizon | `\mathbb EF\le\mathbb E[1_E\mathcal L]+\Pr(E^c)\le\varepsilon+\delta_0` with tower identity before the last inequalities | Conditional comparison, `F\le1`, event probability, and learner expectation export the unconditional witness for every fixed `(\mathcal D,h)` | Stable residual zero; the sole uncontrolled residual is at most `1` on mass `\delta_0` | Complement behavior may be adversarial but is charged once, not accumulated or union-bounded over histories | G5 precedes G6; `E_r` is fixed from initialization before samples and does not assume the final risk | G6 / `step_006` produces; G7 and final theorem consume | Event evaluated before first sample; `\delta_0=0` removes the charge exactly; `\varepsilon=0` and arbitrary complement predictors are covered | step-local | None |
| Polynomial dimension and `2\varepsilon` bridge | Quantitative specialization and final public interface | Positive widths, actual summands of `S`, constant depth, error ordering, and G6 witness | Primitive restrictions plus accepted representation output | Factor bounds address the exact path-map dimension; threshold monotonicity reuses the exact law | Same architecture count, feature dimension, risk definition, and expectation mode | `n_\ell\le n_{\ell+1}n_\ell\le S`, so `d_{\rm path}\le S^L\le S^{L_0}`; `\varepsilon+\delta_0\le2\varepsilon` | Exact path dimension and same law are exported; no hidden coordinate or factor | No transformed object and no dropped risk term; residual zero | Finite multiplication and direct threshold inclusion; no stochastic accumulation | G6 produces the witness before G7 specializes it | G7 / `step_007` produces; final theorem consumes | This is static arithmetic, so the entry-state gate is inapplicable; `L=L_0=1`, `S=1`, `\delta_0=\varepsilon`, and zero threshold pass directly | step-local | None |
| Baseline invariance and conditional progress boundary | Public-claim integrity; prevents a weaker surrogate or overclaim | Exact identities in G3--G7 and fixed protocol conventions | Primitive setting plus all accepted producer paths | Exact gate-free algebra, tie equality, event split, and arithmetic recover every declared baseline | Same `s_0,\kappa`, architecture, metric, law, and conditional target; broader source claim is explicitly excluded | At `L=1`, `\varphi(x)=x` and `d_{\rm path}=S`; at `\delta_0=0`, complement charge is zero; at `\varepsilon=\delta_0=0`, threshold is zero | Exact prior outputs export the original baseline conclusions, not stopped or approximate versions | Every declared baseline residual is zero | Finite exact specializations; no persistent defect is hidden | Baselines are checked after their producers and are not used to prove them | G3--G7 produce; final theorem consumes | Entry `D_0`, first update, zero gradient, `L=1`, zero-score tie, `S=1`, and exact-probability boundaries pass | step-local | None |

## Hard-Step Localization Audit

All remaining obligations are local derivations under unchanged accepted contracts:

| Obligation | Why it is step-local |
| --- | --- |
| Exact selected-gradient coordinate bound | Primitive finite architecture/ball and exact selector already supply the full raw-assumption interface; only the recurrence derivation remains |
| All-history containment | The exact recurrence, finite accumulated forcing, one-step charge, terminal reserve, norm, and boundary behavior are fixed |
| Gate stability | The positive source `M_r>0`, exact consumed preactivation, IVT bridge, complement handling, and producer dependency are fixed |
| Path expansion and ties | The precise coefficient, feature coordinates, time indices, exact residual-zero equality, and tie rule are fixed |
| Best-risk comparison | The path-independent infimum and path-dependent feasible candidate are ordered pointwise before expectation; no interface change is needed |
| Pushforward and event charge | The unconditional law, finite-map factorization, tower relation, stable and unstable defect classes, and `\delta_0` scale are fixed |
| Dimension and error specialization | Every factor, exponent, threshold direction, and boundary case is fixed by primitive restrictions |

No future worker is being asked to invent a mechanism source, generated-output producer, closure mode, new margin, source-convention bridge, residual-to-target bridge, theorem assumption, or weaker conclusion. Thus there is no `sketch/interface defect` and no `idea/theorem-contract defect`.

## Early Idea-Failure Screen

- Contract contradiction: none. The formalized theorem is explicitly conditional on the static robust-tube probability and constant depth, and the diagnostic proves only that theorem.
- Missing mechanism: none. The finite coordinate bound, finite update reserve, positive preactivation margin, exact path algebra, feasible-candidate order, unconditional event split, and integer comparisons are concrete and source-matched.
- Source-convention stress: no mismatch appears. The exact fixed-`\kappa` selected gradient, strict `>0` path gates, `s_0` tie resolution, same feature map, same fresh-evaluation risk, and same probability spaces are retained.
- Object-target and residual-to-target stress: every stable bridge consumes the exact produced object. The only nonzero residual is arbitrary behavior on `E_r^c`, bounded at the required target scale by its mass `\delta_0`.
- Persistent-defect and accumulation stress: update increments may have adversarial sign, but the concrete fixed-horizon budget controls their full sum. Gate and path defects are exactly excluded on `E_r`; the complement defect is a one-time expectation charge.
- Limiting and boundary stress: `T=1`, `L=1`, `S=1`, zero gradients, hidden kinks for the gradient envelope, zero path weights, zero aggregate score, closed-ball equality, `M_r=0` on the complement, `\delta_0=0`, and `\varepsilon=0` expose no inactive mechanism with a false target conclusion.
- Entry-state trace: `D_0=0` and `D_1\le\eta G_r`; initialization gates are nonzero on `E_r`; the path identity holds at the entry and first-update states. In the gate-free branch no gate activation is required.
- Generated-condition and output-flow stress: containment, gates, coefficients, conditional risk, pushforward identity, unconditional witness, and specialization each have a noncircular producer and dependency path.
- Dependence and mode stress: there is no hidden horizon, confidence, metric, norm, target, or distribution dependence and no upgrade beyond the fixed finite-horizon expectation modes in the setting.
- Baseline invariance: exact gate-free, zero-charge, tie, dimension, and zero-threshold conclusions remain intact.
- Same-setting repair plausibility: no repair is needed. No visible obstruction requires an added assumption, altered procedure, changed scope/mode/metric, changed exposed dependence or success criterion, unsupported theorem-facing mechanism source, or weakened conclusion.

The broader unconditional deterministic source target remains open, but it is outside this branch's declared theorem contract and therefore is not an idea failure for the reviewed conditional claim.

## Review Rationale

`ACCEPTED` is the smallest sound outcome because `global_proof.md` is contract-complete, faithful to the current setting and accepted sketch, and sufficiently explicit for independent step work. In particular, it derives trajectory containment from the static `E_r` interface, fixes the exact strict gates before path expansion, preserves zero-score ties through scalar equality, keeps the infimum outside and before sample-path averaging, retains the unconditional feature-map law, and charges `E_r^c` exactly once by `\delta_0`. Every theorem-critical generated condition and exported interface has a noncircular, source-adequate, scope-compatible producer and is classified `step-local`. No rewrite of the diagnostic, sketch, or idea is justified.
