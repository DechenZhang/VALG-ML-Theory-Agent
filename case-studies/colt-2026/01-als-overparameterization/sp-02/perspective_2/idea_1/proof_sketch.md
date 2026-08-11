# Proof Sketch

## Formalized Setting

Use exactly `perspective_2/idea_1/setting.md`: the Gaussian-smoothed rank-(r) third-order CP target, the full window (r<k\le r^{5/4}), well-conditioned deterministic base factors, iid Gaussian initialization, and the fixed half-relaxed parallel Jacobi ALS map followed by the product-preserving gauge. The event

\[
\mathsf C(\delta,L,\gamma)
\]

is an explicitly conditional theorem hypothesis, not a primitive setting assumption. Its three clauses are the initial coefficient deficit, all-time conditioning of the three realized Khatri--Rao Gram matrices, and the finite squared represented-tensor increment budget. Positive loss, a residual barrier, convergence, basin membership, and positive probability of the certificate are not clauses of the event.

## Formalized Goal

Prove the exact conditional event inclusion in `setting.md`: on \(\mathsf C(\delta,L,\gamma)\), the objective has a finite limit and that limit is at least \(\epsilon\|T\|_F^2\), uniformly over every admissible base and every allowed \(r,n,k\). The separate assertion

\[
\mathbb P[\mathsf C(\delta,L,\gamma)]\ge p_0(\kappa,q)>0
\]

is not part of this conditional target and must remain an explicit residual gap.

## Sketch Identity

- Sketch attempt: 1
- Proof status: `PARTIAL_BLOCKED`
- Goal mode: exact conditional goal

## Proof Roadmap

The requested candidate chain has four stable obligations:

1. `step_001` imports the conditional initial deficit and checks whether it has the scale required by the public relative-loss conclusion.
2. `step_002` attempts the deterministic normal-equation transfer from that deficit and the Gram/energy clauses to an all-time coefficient-space floor.
3. `step_003` attempts to prove objective convergence on the certificate and to transfer the coefficient floor to the same ambient tensor target.
4. `step_004` isolates the probability of the certificate as a non-consumed source-level upgrade obligation.

No target-valid step graph can be dispatched. The literal initial-deficit clause is available, but its scale is too weak for the claimed relative floor. More decisively, squared represented-tensor motion does not control first-order motion of the component span, even under balanced unit norms and perfectly conditioned pairwise Gram matrices. The same square-summability clause also does not imply convergence of the represented tensor or its objective. The exact relaxed-Jacobi normal equations provide blockwise least-squares orthogonality, but no source in the setting or parent literature supplies the missing squared-motion-to-span or square-summability-to-convergence interfaces. These are theorem-contract defects, not calculations that can safely be deferred to local proof steps.

No separate `technical_survey.md` is used. Kolda--Bader (2009, DOI:10.1137/07070111X) supplies the CP matricization and ALS conventions, and Arvanitakis--Srinivas--Vijayaraghavan (NeurIPS 2025) supplies source-regime context; neither states the required deterministic certificate lemma for this half-relaxed simultaneous map.

## Rate Objectives

- Objective type: structural-parameter explicit, conditional-on-event, horizon-uniform coefficient transfer followed by an asymptotic relative objective lower bound.
- Exposed variables: \(r,n,k,\kappa,q,\rho=r^{-q},\delta,L,\gamma,\epsilon\), the proposed coefficient \(k/r^2\), and the smoothing-coordinate error \(E_\rho\).
- Hidden constants may depend on: \(\kappa,q\), as allowed by `setting.md`.
- Hidden constants may not depend on: \(r,n,k\), time, the admissible deterministic base triple, or the smoothing and initialization realization.
- Fixed quantities: \(\kappa,q\) while \(r\) grows; \(n,k\) range over the full declared window.
- Probability mode: deterministic conditional implication on the realized event \(\mathsf C\). No positive probability, high-probability smoothing event, or expectation statement may be inserted into the conditional theorem.
- Horizon mode: all-time for the coefficient floor and certificate Gram bounds; infinite-horizon square-energy budget; asymptotic for the objective limit.
- Norm mode: coefficient-space Frobenius distance for \(D_r\) and \(\mathcal S_t\); ambient tensor Frobenius norm for increments, residuals, and the objective.
- Required bridge or simplification obligations: (i) export a coefficient margin of order \(\sqrt r\), not merely order one, if it is to imply \(\epsilon\|T\|_F^2\); (ii) control component-span motion by available trajectory controls with a valid all-time accumulation relation; (iii) prove objective convergence rather than infer it from square-summability; (iv) compare \(D_r+E_\rho\) and the represented coefficient tensor in the same target metric; and (v) control every realization-dependent term used in a set inclusion.
- Baseline invariance obligations: in the exact/noiseless coordinate-orthonormal specialization, \(E_\rho=0\), the coefficient and ambient target interfaces coincide, and \(\|T\|_F^2=\|D_r\|_F^2=r\). The same relative positive-floor conclusion must survive this case; a fixed absolute floor is not an adequate surrogate.

## Assumption Provenance Objectives

- Primitive conditions: `assump:dimension`, `assump:rank_window`, `assump:base_conditioning`, `assump:gaussian_smoothing`, and `assump:independent_initialization` specify the objects and joint law. They do not assert any realized trajectory property.
- Explicitly conditional hypotheses: the three clauses of \(\mathsf C(\delta,L,\gamma)\). The initial deficit, realized all-time Gram bounds, and finite squared increment energy may be consumed by the conditional theorem because the formalized goal explicitly conditions on them. They must not be described as consequences of the primitive assumptions.
- Needed derived output: an all-time lower bound on \(\operatorname{dist}_F(D_r,\mathcal S_t)\). Candidate producer `step_002` is blocked because the certificate controls only squared motion of the represented sum, not path length or component-span motion.
- Needed derived output: convergence of \(\mathcal L_t\). Candidate producer `step_003` is blocked because finite squared increments and compactness do not imply convergence, and no sufficient-decrease or finite-length property has a source.
- Needed derived output: an ambient relative residual floor. Candidate producer `step_003` is blocked by the order-one versus order-\(\sqrt r\) margin mismatch and by the absence of a deterministic certificate-level bound on \(E_\rho\).
- Residual source-level output: positive probability of \(\mathsf C\). Candidate diagnostic `step_004` is intentionally outside the conditional theorem. The all-time Gram and energy clauses are generated trajectory facts and have no primitive-to-event bridge in the current branch.

## Mechanism-Source And Boundary Stress

### Candidate `step_001`: conditional initial deficit and target-scale audit

- Step ID: `step_001` (candidate only; no target-valid downstream graph exists).
- Claim class: entry structural lower bound and quantitative-scale specialization.
- Theorem role: import \(\Delta_0\ge\delta\) from \(\mathsf C\) and export a margin suitable for the eventual relative objective floor.
- Mechanism source: the explicitly conditional target itself supplies only \(\Delta_0\ge\delta\), with \(\delta=\delta(\kappa,q)>0\) independent of \(r\).
- Source-to-claim adequacy: adequate for the literal order-one entry inequality; inadequate for the theorem-facing relative-loss scale. In the exact coordinate-orthonormal specialization, \(\|D_r\|_F=\sqrt r\), so an \(r\)-independent \(\delta\) does not supply a constant-fraction coefficient residual.
- Residual-to-target adequacy: the produced and consumed objects are the same \(D_r\) and \(\mathcal S_0\) in coefficient Frobenius norm. There is no surrogate mismatch at entry. The defect is quantitative: the required target scale is \(c\sqrt r\), while the certificate exports only \(\delta\).
- Key positive/control term or structural source: the conditional clause \(\Delta_0\ge\delta\).
- Opposing defect terms: the target norm grows as \(\sqrt r\); no clause strengthens \(\delta\) to \(\delta\sqrt r\) or \(\delta\|D_r\|_F\).
- Closure/dominance/absorption relation: even the requested bound \(\inf_t\operatorname{dist}_F(D_r,\mathcal S_t)\ge\delta-o(1)\) would yield at most an order-one squared residual after bounded-condition-number transfer, whereas the goal requires order \(r\).
- Accumulation behavior / scope compatibility: entry-only; no accumulation. The scale defect is present before the first update.
- Obligation locality classification: `idea/theorem-contract defect` for the theorem-facing export. Repair requires changing the certificate/goal interface to a normalized or \(\sqrt r\)-scale deficit.
- Noncircular closure status: N/A for the literal entry clause; it is supplied directly by the explicit conditional hypothesis.
- Entry-state / first-update stress result: at \(\rho=0\) with \(\bar A=\bar B=\bar C=I_r\), \(T=D_r\) and \(\|T\|_F^2=r\). An allowed order-one entry deficit cannot by itself imply \(\epsilon r\) loss, even before the ALS map is applied.
- Baseline conclusion preserved: no. The literal certificate preserves only an absolute entry gap, not the required exact/noiseless relative positive-floor conclusion.
- Producer-consumer provenance: explicitly conditional event -> candidate `step_001` -> blocked candidate `step_002` -> blocked candidate `step_003`.
- Null or boundary regime tested: \(\rho=0\), coordinate-orthonormal base, and \(r\to\infty\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: the obstruction is already present with nonzero fixed \(\delta\); the source need not vanish for the scale mismatch to persist.
- Repair route if source is unsupported: `/subagent-idea-generator` or upstream formalization repair; replace the entry clause by a normalized constant-fraction deficit without changing it inside the sketch.

### Candidate `step_002`: deterministic certificate-to-floor transfer

- Step ID: `step_002` (blocked candidate).
- Claim class: structural lower-bound preservation and all-time recurrence.
- Theorem role: prove the mandated same-target inequality
  \[
  \inf_{t\ge0}\operatorname{dist}_F(D_r,\mathcal S_t)
  \ge \delta-C_1(\kappa,q)(k/r^2)L-C_2(\kappa,q)\rho
  \]
  or a stronger target-compatible replacement.
- Mechanism source: the explicit conditional Gram and energy clauses plus the exact relaxed-Jacobi block normal equations. The normal equations give residual orthogonality for each old Khatri--Rao design. They do not give an identity relating motion of the span of individual rank-one coefficient features to squared motion of their sum.
- Source-to-claim adequacy: failed. Let \(r\ge2\), \(b=c=(e_1+e_2)/\sqrt2\), \(v_0=e_1\otimes b\otimes c\), \(v_1=e_2\otimes b\otimes c\), and \(v(\theta)=\cos\theta\,v_0+\sin\theta\,v_1\), which remains a balanced unit-norm rank-one tensor. For \(\mathcal S(\theta)=\operatorname{span}\{v(\theta)\}\),
  \[
  \operatorname{dist}_F(D_r,\mathcal S(\theta))^2
  =r-\frac{(\cos\theta+\sin\theta)^2}{4}.
  \]
  Its change at \(\theta=0\) is first order, while
  \[
  \|v(\theta)-v(0)\|_F^2=2(1-\cos\theta)=\theta^2+O(\theta^4).
  \]
  Thus no state-uniform constant can charge generic span-distance loss to squared represented-tensor motion. The construction has balanced factor norms and pair-Gram value one and can be embedded among additional orthogonal columns because \(n\gg k\).
- Residual-to-target adequacy: failed. The produced control \(\ell_t=\|\widehat T_{t+1}-\widehat T_t\|_F^2\) concerns the represented sum. The consumed interface concerns \(\mathcal S_t=\operatorname{span}\{\alpha_i^t\otimes\beta_i^t\otimes\gamma_i^t\}\). Component cancellation and reparameterization lie in the kernel of the sum map, and the certificate contains no residual term controlling that kernel.
- Key positive/control term or structural source: all-time Gram conditioning prevents singular block least-squares designs and, after gauging, bounds individual column norms. It does not control the derivative of the adaptive component span by \(\ell_t\).
- Opposing defect terms: first-order projector rotation, cancellation invisible to the represented sum, changes of coefficient directions under fixed base-coordinate maps, and cross-mode simultaneous-update terms.
- Closure/dominance/absorption relation: unsupported. Splitting a fixed rotation of angle \(\Theta\) into \(N\) increments gives total squared motion \(O(\Theta^2/N)\to0\) while the span moves by angle \(\Theta\). Hence no all-time budget of the proposed form follows from \(\sum_t\ell_t\le L\), for any fixed positive \(L\).
- Accumulation behavior / scope compatibility: unsupported. The accumulated defect is one-sided first-order span rotation; its sign can be adversarial for the deficit. The only supplied budget is quadratic, and there is no telescoping potential, finite path-length bound, projection law, or cancellation identity charging first-order rotation to that budget.
- Obligation locality classification: `idea/theorem-contract defect`. Repair requires a stronger conditional interface, such as summable componentwise path length or a source-backed fixed-witness invariant, rather than a reorganization of proof steps.
- Noncircular closure status: failed. Assuming small all-time span motion or a persistent coefficient deficit would assume the generated barrier that this step is required to prove.
- Entry-state / first-update stress result: the balanced Gram-one construction above is already an allowed local state. An arbitrarily small first rotation activates first-order loss of the deficit while the certificate charge is only second order. No pre-update source in the certificate cancels this term.
- Baseline conclusion preserved: no; the failure is present at \(\rho=0\) in the exact coefficient/ambient convention.
- Producer-consumer provenance: candidate `step_001` plus conditional Gram/energy clauses -> missing `step_002` export -> candidate `step_003` and final theorem. The path breaks at this step.
- Null or boundary regime tested: exact/noiseless data, perfectly conditioned pair Grams, balanced unit columns, infinitesimal rotations, and cancelling overcomplete components.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. Without a span-motion source, the adaptive span can approach the target while the squared sum-motion budget remains arbitrarily small.
- Repair route if source is unsupported: `/subagent-idea-generator` or upstream formalization repair to strengthen the certificate with a target-compatible accumulated-motion control.

### Candidate `step_003`: convergence on the certificate and ambient floor

- Step ID: `step_003` (blocked candidate).
- Claim class: convergence, same-target coefficient-to-ambient transfer, and asymptotic positive lower bound.
- Theorem role: prove existence of \(\lim_t\mathcal L_t\), then turn the output of `step_002` into \(\lim_t\mathcal L_t\ge\epsilon\|T\|_F^2\).
- Mechanism source: the conditional Gram bound and gauge imply, for \(t\ge1\), that each balanced component norm \(g_{i,t}\) satisfies \(\gamma^{1/4}\le g_{i,t}\le\gamma^{-1/4}\). Thus the factor state is bounded for fixed \(n,k\). The conditional energy clause gives square-summability of represented-tensor increments. The fixed coordinate map gives an exact static comparison.
- Source-to-claim adequacy: failed for convergence. If \(R_t=T-\widehat T_t\) and \(d_t=\widehat T_{t+1}-\widehat T_t\), then
  \[
  \mathcal L_{t+1}-\mathcal L_t=-2\langle R_t,d_t\rangle+\|d_t\|_F^2,
  \]
  so bounded residuals yield only \(|\mathcal L_{t+1}-\mathcal L_t|\le C\sqrt{\ell_t}+\ell_t\). The certificate does not imply \(\sum_t\sqrt{\ell_t}<\infty\). A bounded unit-circle path with angular increments \(\asymp1/t\) has summable squared increments but a nonconvergent distance to a fixed target. Analyticity or a Kurdyka--Lojasiewicz label does not repair this without a verified sufficient-decrease and relative-error interface for the exact simultaneous map.
- Residual-to-target adequacy: the valid raw bridge is
  \[
  Q(T-\widehat T_t)=D_r+E_\rho-P_t,
  \qquad
  Q=\Lambda_A\otimes\Lambda_B\otimes\Lambda_C,
  \qquad P_t\in\mathcal S_t,
  \]
  and hence
  \[
  \|T-\widehat T_t\|_F
  \ge \|Q\|_{\mathrm{op}}^{-1}
  \big(\operatorname{dist}_F(D_r,\mathcal S_t)-\|E_\rho\|_F\big)_+.
  \]
  This is a same-target bridge, not a whitening surrogate. It is still inadequate: the margin from `step_001` is only order one, while the required ambient residual is order \(\|T\|_F\asymp\sqrt r\) in the baseline case, and \(\mathsf C\) contains no deterministic bound on the unbounded Gaussian realization \(E_\rho\).
- Key positive/control term or structural source: bounded post-gauge factors and the exact coordinate identity above.
- Opposing defect terms: potentially nonsummable linear objective increments, simultaneous-Jacobi cross terms, component nonidentifiability, the missing span floor, realization-dependent \(E_\rho\), and the order-\(\sqrt r\) public target scale.
- Closure/dominance/absorption relation: unsupported. Square energy has no finite-variation or objective-drop relation; the coordinate residual can be dominated only after an event-level bound on \(E_\rho\) and an order-\(\sqrt r\) coefficient margin are available.
- Accumulation behavior / scope compatibility: unsupported. The forcing term in objective variation is \(\langle R_t,d_t\rangle\), whose sign is uncontrolled and whose absolute size is linear in \(\sqrt{\ell_t}\). No finite budget controls its all-time accumulation.
- Obligation locality classification: `idea/theorem-contract defect`. Repair requires changing the conditional certificate or adding a theorem-facing descent/finite-length mechanism not supported by the present setting.
- Noncircular closure status: failed. Bounded factor norms give compactness but not a unique cluster point or objective convergence. Assuming sufficient decrease, finite path length, or convergence would assume the missing generated output.
- Entry-state / first-update stress result: at a balanced Gram-conditioned entry, the simultaneous update need not provide a signed objective drop. At the exact/noiseless coordinate baseline, the same scale mismatch remains before and after any stationary update.
- Baseline conclusion preserved: no. At \(\rho=0\), the bridge is exact but an order-one coefficient floor cannot imply the required \(\epsilon r\) loss, and square energy still does not imply a limit.
- Producer-consumer provenance: missing `step_002` floor plus conditional Gram/energy clauses and primitive base conditioning -> missing `step_003` convergence/ambient export -> final theorem.
- Null or boundary regime tested: \(\rho=0\), stationary and slowly rotating bounded paths, zero increment limits, and multiple cluster points.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. A bounded nonconvergent path can have finite squared energy, and a constant coefficient gap can coexist with a vanishing relative gap.
- Repair route if source is unsupported: `/subagent-idea-generator` or upstream formalization repair adding a noncircular finite-length/descent clause, a normalized entry margin, and a controlled smoothing event.

### Candidate `step_004`: explicit certificate-probability gap

- Step ID: `step_004` (diagnostic candidate; it is not consumed by the conditional theorem).
- Claim class: probability-mode upgrade from a conditional theorem to the source-level constant-probability lower bound.
- Theorem role: state, without assuming, the missing obligation \(\mathbb P[\mathsf C(\delta,L,\gamma)]\ge p_0(\kappa,q)>0\), uniform in \(r,n,k\) and the admissible base.
- Mechanism source: primitive Gaussian smoothing and initialization plausibly support fixed-time concentration for \(\Delta_0\) and the three time-zero Gram matrices. No source supports the all-time Gram clause or finite trajectory energy for the exact half-relaxed parallel map.
- Source-to-claim adequacy: failed for the full certificate probability. Initial concentration does not imply trajectory-wide conditioning or finite energy, and the parent ALS source does not state this certificate for the branch algorithm and conventions.
- Residual-to-target adequacy: the produced fixed-time events are only strict subsets of the required information and do not transfer to the consumed all-time event. The missing residual is the entire post-initial trajectory.
- Key positive/control term or structural source: high ambient dimension and iid Gaussian entry for fixed-time quantities only.
- Opposing defect terms: adaptive dependence over infinitely many iterates, possible Gram deterioration, absence of signed descent, and the missing finite-length mechanism.
- Closure/dominance/absorption relation: unsupported for the all-time clauses. No union bound, stopping argument, recurrence, or invariant has a finite failure budget under the current setting.
- Accumulation behavior / scope compatibility: unsupported for the unconditional upgrade; the event is horizon-uniform and trajectory-generated.
- Obligation locality classification: `idea/theorem-contract defect` for the source-level upgrade; N/A to acceptance of a valid conditional theorem because the formalized goal expressly excludes this probability claim.
- Noncircular closure status: failed for the upgrade. Assuming all-time conditioning or finite energy as a good event merely renames \(\mathsf C\) and does not prove its probability.
- Entry-state / first-update stress result: time-zero concentration can be active before the first update, but no primitive mechanism preserves either Gram conditioning or an energy budget after that update.
- Baseline conclusion preserved: the gap remains at \(\rho=0\); removing smoothing does not prove the trajectory clauses.
- Producer-consumer provenance: primitive joint law -> available fixed-time concentration only -> missing all-time event producer. There is deliberately no dependency from `step_004` to the conditional theorem.
- Null or boundary regime tested: exact/noiseless data, raw iid entry, first relaxed Jacobi update, and infinite horizon.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the source-level constant-probability conclusion remains unproved, although this alone would not block a valid conditional theorem.
- Repair route if source is unsupported: a later new idea or theorem with a genuine trajectory recurrence; do not add the probability claim to the present conditional theorem.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Initial coefficient margin at theorem scale | Conditional clause via candidate `step_001` | \(\Delta_0\ge\delta\) | Controlled: literal entry gap. Uncontrolled: missing \(\sqrt r\) normalization | Same \(D_r\), same \(\mathcal S_0\), same Frobenius metric; wrong target scale | Would require \(\Delta_0\ge c\sqrt r\), which does not follow from fixed \(\delta\) | Only fixed \(\delta\) | `step_002`, `step_003` | Order-one margin cannot export a relative-loss margin |
| All-time coefficient floor | Candidate `step_002` | Conditional Gram bounds and \(\sum_t\ell_t\le L\); block normal equations | Controlled: block-design conditioning and squared sum motion. Uncontrolled: first-order span rotation and cancellation kernel | Produced sum-motion control does not control consumed adaptive component span | Required linear-span-motion charge by quadratic energy fails under infinitesimal rotation and accumulation | No positive span-preservation source | `step_003`, final theorem | Squared energy is not a path-length or span-motion budget |
| Objective convergence | Candidate `step_003` | Bounded post-gauge factors and square-summable tensor increments | Controlled: compactness and asymptotic regularity of represented tensors. Uncontrolled: nonsummable linear objective variation and multiple cluster points | Same represented tensor/objective, but no horizon-mode transfer from square energy to a limit | Would require sufficient decrease, finite variation, or a map-specific KL relative-error pair; none is available | None | Final theorem | Square-summability does not imply convergence |
| Ambient relative residual floor | Candidate `step_003` | Exact coordinate identity and base-map norm control | Controlled: static coordinate map. Uncontrolled: \(E_\rho\) realization and missing \(\sqrt r\) margin | Exact same-target relation displayed in `step_003`; residual terms are not dominated at required scale | Need \(\operatorname{dist}(D_r,\mathcal S_t)-\|E_\rho\|\ge c\sqrt r\) | No such margin in \(\mathsf C\) | Final theorem | Scale mismatch and missing smoothing-event control |
| Positive certificate probability | Diagnostic `step_004` | Primitive joint Gaussian law and plausible fixed-time concentration | Controlled: entry quantities only. Uncontrolled: all post-entry Gram and energy clauses | Fixed-time events do not equal or dominate the all-time certificate | Needs a noncircular trajectory recurrence and probability conversion | None | Source-level upgrade only | Explicit residual gap; not part of the conditional theorem |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Membership in \(\mathsf C(\delta,L,\gamma)\) | Explicitly conditional theorem target | candidate `step_001`, `step_002`, `step_003` | Supplies only the three stated conditional clauses | Conditional target -> candidates | explicitly conditional | None for consuming the literal clauses |
| Theorem-scale initial coefficient margin | candidate `step_001` | candidate `step_002`, `step_003` | Relative ambient loss | Conditional \(\Delta_0\ge\delta\) -> missing normalized export | derived | Fixed \(\delta\) does not produce a \(\sqrt r\)-scale margin |
| All-time coefficient floor | candidate `step_002` | candidate `step_003`, final theorem | Persistent positive residual | Gram/energy clauses -> missing span-motion bridge | derived | No legal producer controlling first-order span motion and accumulation |
| Objective limit | candidate `step_003` | final theorem | Existence of the displayed asymptotic loss | Gram/energy clauses -> missing finite-length or sufficient-decrease bridge | derived | No legal convergence producer |
| Ambient relative floor | candidate `step_003` | final theorem | \(\lim_t\mathcal L_t\ge\epsilon\|T\|_F^2\) | missing coefficient floor + coordinate bridge -> final theorem | derived | Wrong margin scale and uncontrolled \(E_\rho\) |
| Positive probability of \(\mathsf C\) | diagnostic `step_004` | source-level upgrade only | Would convert conditional progress to constant-probability progress | primitive law -> missing all-time event bridge | derived | Explicitly unresolved and not consumed by this theorem |

## Sketch Steps

None. The stable candidate IDs `step_001`--`step_004` above identify the requested obligations, but `step_001` cannot export the theorem-scale margin and candidates `step_002` and `step_003` fail theorem-critical mechanism and accumulation gates. Emitting them as `PENDING` proof steps would incorrectly delegate theorem-contract defects to local proof workers.

## Dependency Notes

The intended order is acyclic: `step_001 -> step_002 -> step_003`, while diagnostic `step_004` is independent and has no consumer in the conditional theorem. The graph is not executable because `step_001` lacks the required output scale, `step_002` has no source-compatible span-motion recurrence, and `step_003` has no convergence source. Final assembly therefore has no legal producer path for either the objective limit or the relative floor.

## Blockers

1. **The conditional initial deficit is mis-scaled (`idea/theorem-contract defect`).** In the exact coordinate-orthonormal baseline, \(\|T\|_F^2=r\), but the event exports only \(\Delta_0\ge\delta\) for fixed \(\delta\). Even the requested all-time bound would yield an order-one squared residual, not \(\epsilon r\). The certificate must use a normalized or \(\sqrt r\)-scale deficit to support the stated relative conclusion.
2. **Squared represented-tensor energy does not control the adaptive component span (`idea/theorem-contract defect`).** Balanced, perfectly Gram-conditioned rank-one features can rotate their span by a first-order amount while incurring only second-order represented-tensor energy. Splitting a fixed rotation into many small increments makes the total squared energy arbitrarily small. Component cancellation further disconnects motion of the sum from motion of \(\mathcal S_t\). The relaxed-ALS normal equations do not supply a verified relation that removes this kernel.
3. **The certificate does not imply objective convergence (`idea/theorem-contract defect`).** Boundedness plus \(\sum_t\|\widehat T_{t+1}-\widehat T_t\|_F^2<\infty\) permits bounded nonconvergent paths and nonsummable objective variation. A valid proof needs a noncircular sufficient-decrease/relative-error or finite-length mechanism for this exact simultaneous map.
4. **The same-target ambient bridge has uncontrolled scale and smoothing residual (`idea/theorem-contract defect`).** The exact coordinate identity is available, but it requires a coefficient margin of order \(\sqrt r\) and control of \(\|E_\rho\|_F\). The certificate contains neither a normalized margin nor a smoothing concentration clause; Gaussian smoothing is unbounded and cannot yield a deterministic realization-uniform \(C_2\rho\) term in the asserted event inclusion without an additional event or probability qualifier.
5. **Certificate probability remains an explicit residual gap.** Primitive Gaussian assumptions may support time-zero concentration, but no producer proves the all-time Gram and energy clauses with constant probability. This gap is outside the conditional theorem and must not be hidden as an assumption or claimed as completed progress.

Smallest repair target: `/subagent-idea-generator` (or upstream formalization repair). A target-preserving local sketch repair is unavailable because fixing Blockers 1--4 requires changing the theorem-facing conditional interface: normalize the initial deficit, control component/path motion rather than only squared sum motion, add a valid convergence mechanism, and include an appropriate smoothing-control event. The unaffected source alignment and the explicit conditional/probability-gap distinction should be retained.
