# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_2/idea_2`.
- Sketch attempt: `1`.
- Global attempt: `1`.
- Reviewed setting: `perspective_2/idea_2/setting.md`.
- Reviewed sketch: `perspective_2/idea_2/proof_sketch.md`.
- Reviewed sketch review: `perspective_2/idea_2/proof_sketch_review.md`, with `Sketch Review Status = ACCEPTED`.
- Reviewed global diagnostic: `perspective_2/idea_2/global_proof.md`.
- Reviewed global proof status: `PARTIAL_BLOCKED` with `Suggested Routing = None`.
- Goal mode: exact literal conditional event inclusion.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The diagnostic contains every required section: reviewed identity, controlled status, attempted claim, whole-proof draft, theorem-level block map, sketch-step coverage, dependency and assumption audit, citation and tool audit, quantitative audit, scope-and-closure certificate, exported-interface feasibility, generated-output flow, early obstruction screen, gap localization, diagnostic-boundary note, and suggested routing. `PARTIAL_BLOCKED` is aligned with `Suggested Routing = None`: the five remaining items are proof-step derivations, not missing theorem-level interfaces. The diagnostic explicitly states that it is not proof evidence or an assumption source.

The draft is detailed enough to review the unresolved work. In particular, it exposes the normalized projector recurrence and its total charge, the finite-variation tail relation, the exact `Q` residual identity and operator comparison, the complete epsilon formula, and the conditional probability boundary. The status does not conceal a sketch or theorem-contract obstruction.

## Claim And Sketch Fidelity Audit

The attempted claim preserves the exact setting and accepted sketch: the same Gaussian-smoothed rank-`r` tensor, full rank window, well-conditioned bases, iid initialization, half-relaxed parallel Jacobi ALS update, pseudoinverse convention, and product-preserving gauge. It preserves the four clauses of `C_2` exactly and does not add Gram conditioning, factor bounds, a fixed subspace, a basin, descent, certificate nonemptiness, or a certificate-probability lower bound.

Quantifier order, norm modes, all-time and limiting scopes, and exposed dependence match `setting.md`. The conclusion is the literal set inclusion on `C_2`, with a finite objective limit and a positive relative limiting floor. The exact/noiseless coordinate-orthonormal baseline is preserved with the stronger specialized floor `(delta-L_P)||T||_F`; it is not replaced by a remainder-only, stopped, or conditional surrogate beyond the already-declared certificate.

## Theorem-Level Structure Audit

Blocks A--E cover `step_001`--`step_005` in the accepted dependency order. A produces the fixed coordinate interface. B independently produces the all-time coefficient deficit. C consumes A, B, and clause 4 to produce the exact ambient floor. D independently produces represented-tensor and objective convergence from clause 3. E consumes C and D to close the event inclusion. Every accepted step has one coherent theorem-level role, and every generated theorem-facing output is produced before consumption.

The five unresolved obligations are genuinely step-local. Each asks the corresponding proof-step worker to verify a displayed current-notation derivation whose inputs, output, norm, target, defects, margin, consumers, and boundary cases are already fixed. None requires a changed step claim, dependency, theorem-facing hypothesis, output target, closure mechanism, generated-condition interface, source convention, probability mode, or conclusion.

## Dependency And Assumption Audit

`assump:base_conditioning` is the only primitive hypothesis used in the deterministic inequalities; it supplies full column rank and the coordinate-map norm bound. `assump:dimension`, `assump:rank_window`, `assump:gaussian_smoothing`, and `assump:independent_initialization` remain in the exact theorem scope and joint-law context but are not used to manufacture the certificate.

The four certificate clauses are correctly treated as explicitly conditional theorem inputs. Clauses 1--2 produce the entry reserve and finite projector-path budget for B, clause 3 produces the finite variation input for D, and clause 4 produces the smoothing and target-scale controls for C. The persistent coefficient deficit, ambient residual floor, represented-tensor limit, objective limit, epsilon, and final event inclusion are derived outputs with legal dependency paths. No unconditional target is being completed by assuming a missing generated condition, because the formalized target itself is conditional on all four clauses.

## Citation And Tool Audit

Kolda--Bader (2009), DOI `10.1137/07070111X`, is convention-only; no theorem-critical inequality or convergence result is imported from it. The substantive tools are direct current-notation facts: the singular-value product lower bound for `bar M = tilde M D_barM`, the norm of the left pseudoinverse, the tensor-product operator upper bound in Frobenius geometry, orthogonal-projector distance identities, distance-to-subspace Lipschitzness, the Cauchy criterion, finite-dimensional completeness, and continuity of squared Frobenius distance.

The source conventions match the branch objects and metrics. The `Q` calculation uses the same mode ordering and coefficient Frobenius geometry as the definition of `p_{i,t}` and `S_t`. The projector recurrence uses orthogonal projectors in that geometry. The convergence argument uses the exact ambient represented tensors and objective. The remaining requests to state these standard facts explicitly and check the positive/zero gauge branches are local derivational obligations, not unresolved source identities or wrapper interfaces.

## Quantitative Dependence Audit

The residual margin is

\[
m=\delta-L_P-\zeta>\delta/2>0,
\qquad
\epsilon=\left(\frac{m}{\kappa^6 C_T}\right)^2.
\]

All defects remain visible. The projector loss contributes `L_P`, smoothing contributes `zeta`, coordinate distortion contributes `kappa^6`, and target-scale conversion contributes `C_T`. There is no hidden dependence on `r,n,k,t`, the admissible base triple, or the realization. The theorem-facing constants may depend only on `kappa,q`, as required. Clause 3 supplies no uniform numerical variation bound, so the draft correctly claims convergence without a convergence rate. The probability mode is a deterministic implication/set inclusion under the joint law, not a probability lower bound or high-probability statement.

## Scope And Closure Review

The scope-and-closure certificate is complete and noncircular.

- The normalized projector transport has the concrete recurrence `d_{t+1} >= d_t-a_t||D_r||_F`. Since `||D_r||_F=sqrt(r)>0`, division gives the literal normalized recurrence `d_{t+1}/||D_r||_F >= d_t/||D_r||_F-a_t`. The defect has adversarial sign but finite total charge `sum_t a_t <= L_P`, leaving reserve `delta-L_P` for every finite time. Clauses 1--2 are explicit conditional sources and do not assume the persistent deficit.
- Finite represented-tensor variation has the concrete tail control `||That_m-That_n||_F <= V_n`, where `V_n=sum_{t>=n}v_t -> 0`. Clause 3 supplies absolute summability, not convergence itself, so D noncircularly derives the tensor and objective limits. Stationary entry and the first increment are covered.
- The `Q` bridge is same-target and residual-adequate. Full-rank base maps give `0<||Q||_op<=kappa^6`; multilinearity gives `Q(T-That_t)=D_r+E_rho-C_t` with `C_t in S_t`. The only additive residual is `E_rho`, clause 4 controls it at `D_r` scale, and the same clause supplies `||T||_F<=C_T||D_r||_F`. The transfer uses only `||QR||_F<=||Q||_op||R||_F`, in the correct lower-bound direction.
- Final closure consumes the pointwise nonnegative floor and the independently produced objective limit. Squaring and limit passage preserve every parameter and do not change the conditional event-inclusion mode.
- Entry and baseline stresses pass. The exact identity holds at the raw entry; the first projector transition pays `a_0||D_r||_F`; positive product-one gauge and the zero-component branch preserve both represented and coefficient rank-one tensors. In the exact/noiseless specialization, `Q=I`, `E_rho=0`, and `T=D_r`, so the same recurrence and convergence source retain a constant positive relative limiting floor.

All generated-output flows are legal: clauses 1--2 feed B, clause 4 and A--B feed C, clause 3 feeds D, and C--D feed E. Certificate probability has no consumer in the literal theorem and is correctly outside the flow.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Fixed coordinate/gauge interface (`step_001`) | Structural map, norm bound, and exact residual-object producer for C | Full-rank base coordinates, tensor-product linearity, product-preserving gauge | Primitive `assump:base_conditioning` and setting definitions; Kolda--Bader only fixes conventions | `sigma_min(bar M)>=kappa^-2` gives `||Lambda_M||_op<=kappa^2`; multilinearity gives the exact coefficient identity | Same CP mode ordering, left coordinate maps, coefficient Frobenius geometry, and gauge as the branch | `0<||Q||_op<=kappa^6`; `Q(T-That_t)=D_r+E_rho-C_t`, `C_t in S_t` | Column-norm and normalized singular-value bounds plus exact definitions export precisely the `Q` bound and identity consumed by C | Produced object is exactly `Q` of `R_t=T-That_t`; `||QR_t||<=kappa^6||R_t||`; `E_rho` remains explicit | Pointwise; fixed coordinate distortion; no accumulated forcing | Primitive base conditioning/definitions -> A -> C -> E | Producer A/`step_001`; consumer C/`step_003`, then E | Raw entry, positive gauge, zero-factor branch, `S_t={0}`, and rank changes all preserve the identity; exact case gives `Q=I` | `step-local` | None |
| Normalized persistent coefficient deficit (`step_002`) | All-time structural lower bound and recurrence closure | Conditional clauses 1--2 and orthogonal-projector geometry | Explicitly conditional theorem interface | Entry reserve and total projector-motion budget have exactly the lower-bound and accumulated-defect content required | Same `D_r`, orthogonal projectors, coefficient Frobenius norm, and induced operator norm throughout | `d_{t+1}>=d_t-a_t||D_r||`; equivalently `d_{t+1}/||D_r||>=d_t/||D_r||-a_t`; hence `d_t>=(delta-L_P)||D_r||` | Raw controls `d_0>=delta||D_r||` and `sum_t a_t<=L_P` export the exact all-time deficit consumed by C | Same object and metric; no transformed-object residual | Each `a_t||D_r||` is adversarial for the lower bound, but total charge is at most `L_P||D_r||` under the declared all-time scope | Clauses 1--2 -> B -> C -> E; persistent deficit is derived, not assumed | Producer B/`step_002`; consumer C/`step_003`, then E | At `t=0` reserve is active; first update pays `a_0||D_r||`; valid for `P_0=0`, stationary projectors, rank jumps, and saturated budget | `step-local` | None |
| Exact ambient residual floor (`step_003`) | Horizon-uniform nondegenerate same-target lower bound and quantitative bridge | A, B, and conditional clause 4 | Accepted derived outputs plus explicit conditional smoothing/scale controls | Coefficient reserve, fixed residual control, `Q` distortion, and target comparison jointly imply the exact exported relative floor | Same target tensor, residual, Frobenius norm, fixed coordinate map, and time index | `||R_t||>=kappa^-6(d_t-||E_rho||)>=m/(kappa^6 C_T)||T||`, `m=delta-L_P-zeta` | `||Q||<=kappa^6`, B's deficit, `||E_rho||<=zeta||D_r||`, and `||T||<=C_T||D_r||` are all available before export | Residual decomposition is exact; `E_rho` is the sole additive residual and is dominated at `D_r` scale before conversion to the required `T` scale | Projector charge was finite-budgeted in B; `E_rho` is fixed and absorbed pointwise; no repeated persistent forcing | A+B+clause 4 -> C -> E; no positive-loss premise is assumed | Producer C/`step_003`; consumer E/`step_005` | Floor is active at entry and after the first charged update; zero/rank-deficient spans, `E_rho=0`, maximal margins, and `T=0` are consistent | `step-local` | None |
| Represented-tensor and objective convergence (`step_004`) | Infinite-horizon convergence and limit producer for E | Conditional clause 3 and completeness of ambient Frobenius space | Explicitly conditional theorem interface plus direct standard finite-dimensional analysis | Absolute increment summability exactly implies Cauchy convergence; continuity exactly gives objective convergence | Same ambient tensor, target, Frobenius metric, and objective at production and consumption | `||That_m-That_n||<=sum_{t=n}^{m-1}v_t<=V_n`, with `V_n->0`; then `L_t->||T-That_infty||^2` | Clause 3 supplies every increment and a finite total variation; no factor, Gram, or quotient control is required | No transfer residual: objective is evaluated on the convergent represented tensor itself | Increment directions are arbitrary, but norm forcing is summable and its tail vanishes | Clause 3 -> D -> E; convergence is derived rather than assumed | Producer D/`step_004`; consumer E/`step_005` | First increment is included; stationary entry gives zero variation; factor divergence, zero components, and rank changes do not affect the claimed object | `step-local` | None |
| Epsilon, limit, and conditional probability boundary (`step_005`) | Theorem closure, asymptotic relative floor, and probability-mode preservation | Derived outputs C and D and the definition of set inclusion under the joint law | Accepted earlier-step outputs; primitive law supplies context only | Pointwise nonnegative floor plus an existing finite limit exactly gives the limiting squared-loss floor | Same objective sequence, target, norm, event, and horizon transition; no conditional-to-unconditional conversion | `m>delta/2`; `epsilon=(m/(kappa^6C_T))^2`; square C's floor and pass to D's limit | C and D are available before assembly; all exposed parameters remain in the final interface | No residual or defect is dropped at assembly | All accumulation is closed upstream; pointwise floor is compatible with the produced limit | C+D -> E -> final theorem; no feedback and no certificate-probability producer is required | Producer E/`step_005`; consumer is the final event inclusion | Holds for stationary trajectories and empty or measure-zero `C_2`; exact/noiseless baseline is retained; no probability lower bound is asserted | `step-local` | None |
| Exact/noiseless baseline invariance | Baseline specialization preserving a constant positive relative limiting floor | A/B recurrence, clause 3 convergence, and `Q=I`, `E_rho=0`, `T=D_r` specialization | Existing interfaces under the recorded baseline specialization | Removing smoothing strengthens the same-target floor; it does not alter convergence or the limit passage | Produced and consumed object is exactly `T=D_r` in ambient/coefficient Frobenius geometry | `||T-That_t||>=(delta-L_P)||T||`, followed by the same finite objective limit | Entry reserve, projector budget, and finite variation are already available | No surrogate and no additive residual remain | Projector charges remain finite-budgeted; variation remains summable | Baseline specialization -> A/B/D -> E | Producers A, B, D; consumer E and the inherited baseline conclusion | Entry, first transition, stationary, zero-variation, `P_0=0`, and rank-change cases preserve the mechanism | `step-local` | None |

## Hard-Step Localization Audit

1. `step_001` is `step-local`: its output and source convention are fixed; only the singular-value/tensor-product calculation and gauge branches remain to be written rigorously.
2. `step_002` is `step-local`: the normalized recurrence, adversarial defect, one-step charge, all-time budget, and output floor are fixed by clauses 1--2.
3. `step_003` is `step-local`: the produced coefficient object, consumed ambient residual, sole additive residual, target scale, strict margin, and downstream interface are fixed.
4. `step_004` is `step-local`: the clause-3 summable tail is a complete noncircular convergence source for the exact represented-tensor target.
5. `step_005` is `step-local`: it consumes already-produced controls, has no missing probability producer, and changes neither theorem scope nor probability mode.

No obligation is a `sketch/interface defect` or `idea/theorem-contract defect`. In particular, proving positive probability or nonemptiness of `C_2` would be a different source-level theorem, but it is not consumed by the literal conditional claim and therefore is not one of the five unresolved obligations.

## Early Idea-Failure Screen

- Contract contradiction: none. The setting expressly authorizes the four certificate clauses as conditional inputs.
- Missing mechanism: none. A has primitive full-rank geometry; B has a finite reserve/charge ledger; C has an exact same-target bridge and strict residual dominance; D has a summable tail; E has compatible produced outputs.
- Source-convention and object-target stress: passed. `Q` is applied to the exact residual, and no transformed or surrogate target is substituted.
- Persistent-defect and accumulation stress: passed. Projector motion has a finite all-time budget; tensor increments have vanishing summable tails; smoothing is fixed and pointwise dominated.
- Entry-state trace: passed at the raw entry, first projector transition, stationary state, zero-component gauge branch, and rank-change boundary.
- Limiting and baseline stress: passed in the exact/noiseless coordinate-orthonormal specialization, which retains a positive relative limiting floor.
- Generated-condition and flow stress: passed. Every theorem-facing derived output has a legal producer and consumer; certificate probability is outside the theorem contract.
- Dependence and mode stress: passed. No hidden `r,n,k,t` dependence, convergence rate, probability lower bound, or scope upgrade is introduced.
- Same-setting repair plausibility: no repair is needed. The only unresolved source-level probability question would require an expanded theorem objective, not repair of this conditional proof.

## Review Rationale

`ACCEPTED` with `Smallest Retry Target = None` is the smallest sound decision. Although `global_proof.md` is marked `PARTIAL_BLOCKED`, each of its five unresolved obligations is a bounded proof-step derivation under an unchanged, source-adequate interface. The all-time and limiting mechanisms are concrete and noncircular, the `Q` bridge reaches the exact consumed residual with every defect controlled, epsilon and baseline dependence are preserved, and the final assembly respects the literal conditional probability boundary. The diagnostic is therefore safe to pass to `/proof-step` without rerunning `/global-proof` or revising the sketch.
