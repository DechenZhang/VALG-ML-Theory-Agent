# Proof Sketch

## Formalized Setting

Use exactly `perspective_1/idea_1/setting.md`: the Gaussian-smoothed rank-`$r$` third-order CP target, every deterministic base satisfying `assump:base_conditioning`, every \(r<k\le r^{5/4}\), independent iid Gaussian initial factors, the simultaneous damped Moore--Penrose Jacobi ALS map, and balanced factor GD with step \(\eta_0/(nk)\). No residual barrier, descent event, boundedness, convergence, basin membership, or invariant is assumed.

## Formalized Goal

Prove the single unconditional conjunctive probability statement in `setting.md`: uniformly over the admissible base and parameters, with probability at least \(p_0(\kappa,q)>0\), both exact trajectories have a finite objective limit at least \(\epsilon_0(\kappa,q)\|T\|_F^2\).

## Sketch Identity

- Sketch attempt: 1
- Proof status: `PARTIAL_BLOCKED`
- Mode: exact-goal

## Proof Roadmap

The intended parent framework is the moving ambient residual span plus descent-controlled leakage, with provenance recorded in `technical_survey.md`. A direct ambient-isotropy calculation plausibly supplies the initial margin \(\Delta_0^M\gtrsim\|T\|_F\) for both independent initializations. The roadmap cannot be promoted to a target-valid step graph, however, because its central all-time recurrence, its common finite leakage budget, and its absolute smoothing-transfer scale have no source under the unchanged setting and fail the required obstruction-level stress tests. The precise defects are recorded below rather than being assigned to future local proof.

## Rate Objectives

- Objective type: structural-parameter explicit and confidence-explicit positive asymptotic lower bound.
- Exposed variables: \(r,n,k,\kappa,q,\rho=r^{-q},\eta_0,p_0,\epsilon_0\), the coefficient \(k/r^2\), and the method \(M\in\{M_{\mathrm{ALS}},M_{\mathrm{GD}}\}\).
- Hidden constants may depend on: \(\kappa,q\), except that \(\eta_\star\) is universal as required by the goal.
- Hidden constants may not depend on: \(r,n,k\), the admissible deterministic base, the smoothing realization, the initialization, time, or the method unless a method-specific constant is explicitly maximized into a common constant.
- Fixed quantities: \(\kappa,q\) while \(r\to\infty\); \(n,k\) range over the full declared window.
- Probability mode: a lower bound for the joint law of one shared smoothing draw and two conditionally independent initializations, uniform conditional on the deterministic base.
- Horizon mode: all-time recurrence plus asymptotic \(t\to\infty\); a fixed-time or stopped statement is not sufficient.
- Norm mode: ambient tensor Frobenius norm for \(T,S_t,W_t\), objective \(F=\frac12\|T-S_t\|_F^2\), and exact projector distance \(\Delta_t=\|\operatorname{Proj}_{\mathcal R_t^\perp}T\|_F\).
- Required bridge or simplification obligations: (i) a conditional-on-`$T$` initial-span estimate for each initialization and a valid joint-probability conversion; (ii) a one-step recurrence with constants uniform in all exposed variables; (iii) an all-time summability relation for exactly the leakage charged in that recurrence; (iv) domination \(C_\Delta(k/r^2)C_\ell+C_\rho\rho\le c\|T\|_F\); and (v) \(F_M(t)\ge\frac12(\Delta_t^M)^2\) followed by a limit passage.
- Baseline invariance obligations: the exact/noiseless case \(\rho=0\) and coordinate-orthonormal, independently rotated orthonormal, and normalized-Gaussian admissible bases must retain the same positive-limit conclusion for both exact maps. Replacing the theorem by a finite-time, stopped, conditional, one-method, or random-base-only result is target-changing.

## Assumption Provenance Objectives

- Initial ambient residual margin: derived, expected from `assump:independent_initialization` conditional on `$T$`; a prospective direct calculation would use \(v_i=x_{i,0}\otimes y_{i,0}\otimes z_{i,0}\), \(\mathbb E[\langle T,v_i\rangle^2\mid T]=\|T\|_F^2/n^3\), and concentration of the `$v_i$` Gram matrix. This has a primitive source and is not the blocker.
- Positive residual for all time: derived; it would have to follow from a valid recurrence and finite accumulated leakage before being consumed by the final lower bound. No such producer is available.
- Common finite leakage budget: derived; it cannot be assumed as an admissibility event. It would require method-specific descent plus factor/self-conditioning control, neither of which follows from the primitive assumptions.
- Bounded trajectories and convergence: derived; a KL or descent argument may consume them only after an earlier bridge proves them. The balancing gauge is product-preserving but not coercive and supplies no factor bound.
- Joint good event: derived; it must be produced by conditioning on the shared (T) and proving uniform conditional lower bounds for both independent initializations. Two marginal constant-probability statements alone do not produce a positive intersection.

## Mechanism-Source And Boundary Stress

### Candidate `step_001`: initial ambient residual margin

- Step ID: `step_001` (candidate only; not admitted to `## Sketch Steps` because no target-valid downstream graph exists).
- Claim class: structural lower bound at initialization.
- Theorem role: provide \(\Delta_0^M\ge c_0\|T\|_F\) simultaneously for the two method-specific initial spans.
- Mechanism source: primitive `assump:independent_initialization`; direct derivation in the exact ambient Frobenius convention. Conditional on the realized `$T$`, the rank-one initialization tensors are iid, isotropic with covariance \(n^{-3}I\), and independent of `$T$`.
- Source-to-claim adequacy: If \(G=(\langle v_i,v_j\rangle)\) and \(h_i=\langle T,v_i\rangle\), then \(\|\operatorname{Proj}_{\operatorname{span}(v_i)}T\|_F^2=h^\mathsf{T}G^\dagger h\); \(G\succeq cI\) and \(\|h\|_2^2=o(\|T\|_F^2)\) imply the claim. The source and branch use the same ambient tensor, ordering-independent Frobenius inner product, and exact initialization law.
- Residual-to-target adequacy: produced object and consumed target are the same realized (T) and same exact span \(\mathcal R_0^M\); no whitening or surrogate metric is used. The only residual is the projected component, controlled directly at scale (k/n^3=o(1)).
- Key positive/control term or structural source: ambient dimension (n^3\) versus (k\le r^{5/4}\), plus conditional isotropy.
- Opposing defect terms: random Gram conditioning and the projection coefficients (h); both are initialization-level random terms.
- Closure/dominance/absorption relation: on (G\succeq\frac12I) and \(\|h\|_2^2\le\frac18\|T\|_F^2\), \(\Delta_0^2\ge\frac34\|T\|_F^2\).
- Accumulation behavior / scope compatibility: entry-time only; no accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: N/A; this is an entry certificate, not an all-time invariant.
- Entry-state / first-update stress result: the exact Gaussian entry span is handled, but this certificate says nothing about the first ALS or GD rotation; it is active before only the initial margin is consumed.
- Baseline conclusion preserved: the derivation is conditional on the exact realized (T) and therefore includes \(\rho=0\) and all three named base examples without changing the target object.
- Producer-consumer provenance: primitive initialization -> candidate `step_001` -> candidate recurrence block -> final lower bound.
- Null or boundary regime tested: if (T=0), the normalized positive-fraction claim is vacuous; admissible bases and sufficiently small smoothing give (T\ne0) with probability one. Rank deficiency of (G) is an initialization event to exclude quantitatively, not assume.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes; without an initial margin the residual-barrier route cannot start.
- Repair route if source is unsupported: N/A; this candidate source is adequate.

### Candidate `step_002`: moving-span leakage recurrence

- Step ID: `step_002` (blocked candidate).
- Claim class: all-time recurrence and structural lower-bound preservation.
- Theorem role: export \(\Delta_{t+1}^M\ge\Delta_t^M-C_\Delta(k/r^2)\ell_t^M\) for every (t) on a noncircular derived event.
- Mechanism source: none in the primitive setting or cited literature. MTTKRP identities describe the updates but do not yield the claimed quadratic charge for a moving component span.
- Source-to-claim adequacy: failed. In a two-dimensional rank-one slice, choose orthonormal rank-one tensors \(e_0=a_0\otimes b\otimes c\) and \(e_1=a_1\otimes b\otimes c\), let \(T=\cos\phi\,e_0+\sin\phi\,e_1\) with \(0<\phi<\pi/2\), and rotate one component from \(v(0)=e_0\) to \(v(\theta)=\cos\theta\,e_0+\sin\theta\,e_1\). Then \(\Delta(0)-\Delta(\theta)=\cos\phi\,\theta+O(\theta^2)\), while \(\|v(\theta)-v(0)\|_F^2=\theta^2+O(\theta^4)\). Thus no state-independent constant multiplying squared represented-tensor motion controls generic projector loss. This rank-one slice is compatible with the branch's CP and Frobenius conventions and can be embedded in an orthonormal admissible base.
- Residual-to-target adequacy: failed. The produced control \(\ell_t=\|S_{t+1}-S_t\|_F^2\) measures only motion of the sum, whereas the consumed interface is motion of \(\operatorname{span}\{x_i\otimes y_i\otimes z_i\}_{i=1}^k\). Component cancellation permits large span rotation with small or zero sum motion; no residual term controls this kernel.
- Key positive/control term or structural source: the proposed (k/r^2) coefficient has no derivation or positive source.
- Opposing defect terms: first-order projector rotation, componentwise cancellation invisible to (S_{t+1}-S_t), Gram near-singularity, and adaptive alignment with (T).
- Closure/dominance/absorption relation: unsupported. The required linear projector variation cannot be absorbed by a quadratic charge uniformly, even before summing over time.
- Accumulation behavior / scope compatibility: unsupported; if one replaced the charge by \(\|S_{t+1}-S_t\|_F\), square-summability would still not imply finite path length, so an infinite sequence of small rotations can have finite squared energy and unbounded cumulative angle.
- Obligation locality classification: `idea/theorem-contract defect` for the mandated squared-leakage interface; repairing it requires changing the mechanism/output fixed in the idea and `setting.md`, or adding an unsupported trajectory invariant.
- Noncircular closure status: failed. Any event asserting small span rotation or positivity of \(\Delta_t\) would already assume the generated invariant this recurrence is meant to prove.
- Entry-state / first-update stress result: generic GD has a first-order factor-direction update toward the residual while \(\ell_t\) is second order in the step size. Jacobi ALS can rotate a component by order one. No primitive event established before the first update cancels these effects.
- Baseline conclusion preserved: no; the failure already occurs in an exact/noiseless orthonormal rank-one slice, so smoothing cannot repair it.
- Producer-consumer provenance: candidate `step_001` -> missing candidate `step_002` -> all later barrier and theorem blocks. The producer path breaks here.
- Null or boundary regime tested: \(\rho=0\), orthonormal base, arbitrarily small nonzero rotation, and component-cancellation directions.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the obstruction remains present: the adaptive span can move toward (T) while the proposed budget records only quadratic sum motion.
- Repair route if source is unsupported: `/subagent-idea-generator`; a fixed witness with a genuine conservation law or a different target-valid dynamical obstruction is needed.

### Candidate `step_003`: common descent and leakage summability

- Step ID: `step_003` (blocked candidate).
- Claim class: signed descent, boundedness, and all-time finite-budget control.
- Theorem role: prove \(\sum_{t\ge0}\ell_t^M\le C_\ell\) uniformly for both exact maps and supply convergence prerequisites.
- Mechanism source: none. The balancing gauge preserves represented tensors and equalizes within-component norms, but it is not a coercive regularizer and does not control cancellation between components.
- Source-to-claim adequacy: failed for ALS. Even in the scalar one-component specialization (T=1,x=y=z=s>0), simultaneous damped Jacobi ALS gives (s^+=(s+s^{-2})/2); for small (s), \(\frac12(1-(s^+)^3)^2\gg\frac12(1-s^3)^2\). This exact first-update trace shows that blockwise least-squares optimality does not imply descent when all three minimizers are applied simultaneously. The cited ALS upper-bound framework does not state a theorem for this exact map with these unconditional hypotheses.
- Residual-to-target adequacy: even a factor-step budget would need a map from parameter motion to \(\ell_t\) and from \(\ell_t\) to span motion. Balanced factors can still be large and cancel, so neither map is available uniformly.
- Key positive/control term or structural source: GD has a local descent term \(\eta_G\|\nabla F\|^2\) only on a region with a verified smoothness bound; ALS has no corresponding global signed term for this Jacobi schedule.
- Opposing defect terms: degree-six Taylor remainder for GD, unbounded factor norms, Khatri--Rao ill-conditioning, pseudoinverse discontinuity, cross-block Jacobi interaction, and cancellation.
- Closure/dominance/absorption relation: unsupported. No primitive bound makes the GD Taylor remainder smaller than its descent term for all time, and no objective-drop potential exists for the exact ALS map.
- Accumulation behavior / scope compatibility: unsupported; \(F_t-F_{t+1}\) is not known nonnegative for ALS, and for GD the needed local Lipschitz constant is itself a generated unbounded quantity.
- Obligation locality classification: `idea/theorem-contract defect`; changing to sequential ALS, line search, projection, coercive regularization, or adaptive step size changes the fixed algorithm.
- Noncircular closure status: failed. Deriving boundedness from descent requires descent on a bounded region, while deriving descent requires the same boundedness/smoothness region.
- Entry-state / first-update stress result: the scalar Jacobi trace permits an arbitrarily large objective increase from an allowed nonzero state. For GD, an allowed large balanced component makes \(\eta_0/(nk)\) exceed the local descent threshold because balance does not bound its norm.
- Baseline conclusion preserved: no method-uniform descent source exists even at \(\rho=0\).
- Producer-consumer provenance: primitive algorithm definitions -> missing descent/self-bound producer -> leakage budget and convergence consumers.
- Null or boundary regime tested: exact/noiseless data, small scalar Jacobi entry, large balanced GD entry, rank-changing Khatri--Rao matrices, and cancelling components.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes; finite leakage and convergence remain unproved and cannot be assumed.
- Repair route if source is unsupported: `/subagent-idea-generator` because the map or theorem contract must change, or a genuinely new map-specific invariant must be supported at idea level.

### Candidate `step_004`: smoothing and whitening transfer

- Step ID: `step_004` (blocked candidate).
- Claim class: perturbation transfer and explicit-dependence specialization.
- Theorem role: export the setting-mandated absolute smoothing error (C_\rho\rho), with (C_\rho) independent of (r), from a whitened planted block to the realized ambient target.
- Mechanism source: Gaussian perturbation size from `assump:gaussian_smoothing` and conditioning from `assump:base_conditioning`.
- Source-to-claim adequacy: failed at the stated absolute scale. For the coordinate-orthonormal base, the first-order perturbation contains \(\sum_{j=1}^r\xi_j^a\otimes e_j\otimes e_j\), whose squared Frobenius norm is \(\sum_j\|\xi_j^a\|_2^2=\Theta(r\rho^2)\) with high probability. Hence the ambient perturbation is naturally \(\Theta(\sqrt r\,\rho)\), not (O(\rho)) with an (r)-independent constant.
- Residual-to-target adequacy: failed for the stated bridge. Whitening produces a surrogate coordinate tensor under a transformed inner product, whereas \(\Delta_t\) is the projector distance in the original ambient Frobenius metric to an adaptively generated span. Conditioning can transfer norms up to (\kappa)-dependent factors but cannot remove the \(\sqrt r\) accumulation or identify the whitened span with the consumed ambient span without an explicit same-target bridge.
- Key positive/control term or structural source: relative perturbation is plausibly (O(\rho)\|T\|_F\), because \(\|T\|_F=\Theta(\sqrt r)\) under the base conditioning assumptions.
- Opposing defect terms: (r) independent first-order factor perturbations, higher-order products, whitening metric distortion, and adaptive-span mismatch.
- Closure/dominance/absorption relation: the natural relation is relative, (\|T-T_0\|_F\lesssim_{\kappa}\rho\sqrt r\asymp_{\kappa}\rho\|T_0\|_F\); it does not imply the absolute (C_\rho\rho) interface required in `setting.md`.
- Accumulation behavior / scope compatibility: static, but its (r)-dependence is exposed and cannot be hidden.
- Obligation locality classification: `idea/theorem-contract defect` because correcting the mandated interface changes its exposed dependence, although a relative-error redesign could preserve the final positive-fraction goal.
- Noncircular closure status: N/A; static transfer.
- Entry-state / first-update stress result: at \(\rho=0\) the perturbation vanishes exactly, but this does not repair the moving-span or descent defects.
- Baseline conclusion preserved: the correct relative bridge preserves the exact/noiseless baseline, whereas the mandated absolute scale is unsupported for \(\rho>0\).
- Producer-consumer provenance: primitive smoothing/base conditioning -> missing absolute transfer -> proposed residual margin specialization.
- Null or boundary regime tested: coordinate base, \(\rho=0\), and any fixed (q>0), including (q<1/2) where the absolute perturbation grows with (r).
- Target conclusion false or theorem-critical obstruction present if source vanishes: the moving-span and descent obstructions remain even when \(\rho=0\).
- Repair route if source is unsupported: `/subagent-idea-generator` or upstream formalization repair to replace the absolute transfer by a correctly normalized same-target interface.

### Candidate `step_005`: convergence and joint theorem closure

- Step ID: `step_005` (blocked downstream candidate).
- Claim class: convergence, mode conversion, and joint probability closure.
- Theorem role: turn residual positivity into finite positive objective limits for both maps on one event of probability at least (p_0).
- Mechanism source: (F_t\ge\frac12\Delta_t^2) is a direct same-target fact because (S_t\in\mathcal R_t). Existence of \(\lim_tF_t\), however, has no producer after candidate `step_003` fails.
- Source-to-claim adequacy: partial only. The projector inequality supplies a pointwise lower bound, not convergence. Analyticity/KL does not cover an unbounded trajectory automatically, and the Moore--Penrose Jacobi map is not an analytic fixed map across rank changes.
- Residual-to-target adequacy: pointwise adequacy is exact: \(\|T-S_t\|_F\ge\operatorname{dist}(T,\mathcal R_t)=\Delta_t\). The missing inputs are all-time residual positivity and objective convergence, not a metric transfer.
- Key positive/control term or structural source: exact projection duality and conditional independence of the two initializations given (T).
- Opposing defect terms: missing recurrence, missing convergence, and possible anti-correlation through the shared smoothing draw.
- Closure/dominance/absorption relation: if a shared target event (E_T) and uniform conditional bounds \(\mathbb P(E_M\mid T)\ge p_M\) held, conditional independence would give \(\mathbb P(E_{\mathrm{ALS}}\cap E_{\mathrm{GD}}\cap E_T)\ge\mathbb P(E_T)p_Ap_G\). Marginal unconditional bounds alone are insufficient.
- Accumulation behavior / scope compatibility: unsupported because neither limit nor all-time barrier has a finite-budget producer.
- Obligation locality classification: `idea/theorem-contract defect` downstream of candidates `step_002` and `step_003`.
- Noncircular closure status: failed; boundedness or convergence cannot be put into the good event without prior derivation.
- Entry-state / first-update stress result: exact pointwise duality is active at (t=0), but the first updates can destroy the proposed barrier and ALS can increase the objective.
- Baseline conclusion preserved: no; exact/noiseless specialization remains blocked.
- Producer-consumer provenance: candidate initial margin plus missing recurrence/descent/convergence producers -> final assembly. The dependency chain is broken before theorem closure.
- Null or boundary regime tested: shared target draws for which only one method has a good conditional event, rank-changing ALS states, and \(\rho=0\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes; a positive pointwise subsequential lower bound does not imply a finite limit, and separate method events need not intersect with positive probability.
- Repair route if source is unsupported: `/subagent-idea-generator` after preserving any valid direct initial-span calculation.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Initial margin \(\Delta_0^M\ge c_0\|T\|_F\) | Candidate `step_001`; direct Gaussian-isotropy derivation | `assump:independent_initialization`, (k/n^3=o(1)), conditional realized (T) | Gram conditioning and projection coefficients are controlled initialization terms; no persistent defect | Exact same realized tensor, exact ambient Frobenius metric, exact initial component span; no surrogate residual | (h^\mathsf{T}G^\dagger h\le\frac14\|T\|_F^2\) on explicit Gram/coefficient events | Ambient dimension and initialization isotropy | Candidate `step_002`, final floor | None at sketch level |
| All-time recurrence \(\Delta_{t+1}^M\ge\Delta_t^M-C_\Delta(k/r^2)\ell_t^M\) | No legal producer | Initial margin and update formulas only | First-order span rotation and cancellation are uncontrolled, persistent, and adaptive | Inadequate: squared sum motion does not control moving-span projector distance | Required (O(\theta)\le C(k/r^2)O(\theta^2)\) fails for small \(\theta\) | None | Leakage summation, final floor | `idea/theorem-contract defect`: false/missing squared-leakage interface |
| Common budget \(\sum_t\ell_t^M\le C_\ell\) | No legal producer | Local GD algebra; blockwise ALS minimizers; balancing identity | Factor norms, cancellation, smoothness, ALS cross-block interaction, and pseudoinverse rank changes uncontrolled | Inadequate for span motion even if obtained | No common objective-drop charge; Jacobi ALS may increase (F) | None | Recurrence accumulation, convergence | `idea/theorem-contract defect`: exact methods lack common descent/self-bound source |
| Absolute smoothing transfer error \(C_\rho\rho\) | `assump:gaussian_smoothing`, `assump:base_conditioning` are proposed sources | Per-factor perturbations of size (\rho), conditioning constants | Sum of (r) independent first-order terms is \(\Theta(\sqrt r\rho)\); whitening-to-ambient span mismatch uncontrolled | Inadequate at absolute scale and missing same-target projector bridge | Natural bound is relative (O_\kappa(\rho)\|T\|_F), not absolute (O(\rho)) | Base conditioning only controls constant distortion | Residual specialization | `idea/theorem-contract defect`: exposed (r)-dependence is wrong |
| Finite positive limits for both methods on a joint event | No legal producer beyond pointwise (F_t\ge\frac12\Delta_t^2) | Exact projection duality and conditional independence | Convergence and uniform conditional event probabilities uncontrolled | Pointwise target transfer is exact; horizon/probability transfer is missing | Would require accepted all-time recurrence, method-specific convergence, and \(\mathbb P(E_M\mid T)\ge p_M\) on a shared (T)-event | Missing recurrence/descent sources | Final theorem | Upstream idea-level blockers |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Initial residual margin | Candidate `step_001` from primitive initialization | Candidate `step_002` | Starting reserve for positive loss | `assump:independent_initialization` -> candidate `step_001` -> candidate `step_002` | derived | None locally; downstream recurrence missing |
| All-time residual barrier | No legal producer | Candidate `step_005`, final assembly | Uniform positive objective lower bound | Broken at candidate `step_002` | derived | First-order/quadratic mismatch and cancellation kernel |
| Finite leakage budget | No legal producer | Candidate `step_002`, candidate `step_005` | Summability and convergence | Broken at candidate `step_003` | derived | No common descent or factor-self-bound source |
| Objective convergence for each method | No legal producer | Candidate `step_005`, final assembly | Existence of the two limits | Broken at candidate `step_003` | derived | Boundedness, sufficient decrease, and ALS continuity/descent absent |
| Joint good event | No legal producer | Final assembly | Probability at least (p_0) for the conjunction | Would require shared target event -> uniform conditional method events -> product bound | derived | Uniform conditional probabilities unavailable because method certificates are missing |

## Sketch Steps

None. Candidate `step_001` is a plausible local initialization lemma, but no acyclic step graph targeting the exact theorem can be formed because candidate `step_002` (moving-span recurrence), candidate `step_003` (common descent/leakage and convergence), and candidate `step_004` (mandated absolute smoothing transfer) fail the theorem-critical mechanism and exported-interface gates under the unchanged setting. Listing these claims as `PENDING` proof steps would incorrectly treat a future proof step as their missing source.

## Dependency Notes

The only valid prospective dependency is primitive initialization -> candidate `step_001`. Every theorem-closing path must then pass through candidate `step_002` and candidate `step_003`; candidate `step_004` is additionally mandated by the formalized setting. Those interfaces have no noncircular producer, so candidate `step_005` cannot legally consume an all-time residual barrier, a convergence result, or method-level conditional good events. There is therefore no target-valid acyclic dependency graph to submit for step proof.

## Blockers

1. **Squared-leakage recurrence (`idea/theorem-contract defect`).** Generic rank-one subspace rotation changes \(\Delta\) at first order while \(\ell=\|S_{t+1}-S_t\|_F^2\) is second order; cancellation also makes sum motion inadequate for component-span motion. No primitive or cited source supplies the mandated (k/r^2) coefficient or removes these allowed directions.
2. **No common all-time descent/boundedness mechanism (`idea/theorem-contract defect`).** The exact simultaneous Jacobi ALS map can increase the objective on its first update, and the balanced fixed-step GD map has no global smoothness or factor-self-bound source. Consequently neither the finite leakage budget nor convergence can be derived uniformly for both maps.
3. **Mis-scaled smoothing interface (`idea/theorem-contract defect`).** On the required coordinate-orthonormal test base, the ambient first-order perturbation has Frobenius scale \(\Theta(\sqrt r\rho)\), contradicting an absolute (C_\rho\rho) bound with (r)-independent (C_\rho). A relative (O(\rho)\|T\|_F) bridge would change the fixed interface.
4. **Broken all-time and joint-probability closure.** Pointwise projection duality and an initial residual margin do not produce objective convergence or a positive-probability intersection for both methods; the required uniform conditional method events have no producer after Blockers 1--3.

Smallest target-preserving sketch repair: none identified. Repair requires revising the idea/theorem contract while preserving the source direction, for example by replacing the false moving-span squared-leakage mechanism with a source-backed fixed-witness conservation law and choosing method definitions with a verified noncircular descent/self-bound interface, or by explicitly relabeling a weaker one-method/conditional result rather than presenting it as full progress.
