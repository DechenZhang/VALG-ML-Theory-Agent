# Global Proof Review

## Global-Proof Review Identity

- Branch path: `perspective_3/idea_3`
- Global-proof attempt reviewed: `1`
- Sketch attempt reviewed: `1`
- Reviewed setting: `perspective_3/idea_3/setting.md` (SHA-256 `b2b388c3355f61378fad862ef081e780922231ab0e1793f0f73fb4b7fa691a1f`)
- Reviewed `proof_sketch.md`: SHA-256 `207b24d21df74b23b7f0f1b0e4069cb8b452497c9e74572e8b8afdf4fe7dcef2`
- Reviewed `proof_sketch_review.md`: SHA-256 `ed798a2a463eee757fb0d9f9dbd3c1e88668e3185dae67576d4cf72ab4845502`
- Reviewed `global_proof.md`: `PARTIAL_BLOCKED`, attempt `1`
- Input sketch-review status: `ACCEPTED`
- Goal mode: exact-goal mode
- Progress type: conditional

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None. `global_proof.md` is a usable theorem-level diagnostic. Its open TF/TC and normalized-Gram calculations are explicitly localized proof-step obligations with fixed interfaces; they are not missing theorem-level mechanisms.

## Required Repair Bundle

None.

## Contract And Status Audit

The required inputs are present and the upstream `proof_sketch_review.md` accepts the reviewed sketch. `global_proof.md` contains the reviewed identity, controlled `PARTIAL_BLOCKED` status, attempted claim, whole-proof draft, theorem-level block map, sketch-step coverage, dependency/assumption audit, citation/tool audit, quantitative dependence audit, scope-and-closure certificate, exported-interface feasibility audit, generated-output flow, early obstruction/repair analysis, global gaps, diagnostic-boundary note, and `Suggested Routing = None`. The status and routing obey the global-proof contract (`PARTIAL_BLOCKED` with no routing is consumable by this review). No proof, assumption, or sketch claim is silently imported from the diagnostic boundary.

## Claim And Sketch Fidelity Audit

The attempted claim preserves the setting's realized target `T=(A tensor B tensor C)D_r`, raw coefficient target `D_r`, physical Frobenius loss, balanced simultaneous full-batch GD, step size `(nkr)^(-12)`, rank window `r<k<=floor(r^(5/4))`, arbitrary allowed `n>=C(kappa,q)r^4 log r`, deterministic well-conditioned bases, and joint smoothing/initialization probability. It preserves the exact conditional scope: high-probability `E_init_norm`, deterministic implication on `E_init_norm intersect C_path`, and the explicit factor `P(C_path | E_init_norm)` with no constant-probability upgrade. Normalized coordinates are used only for the Gram certificate; `D_r`, `Dhat_0`, `S_0`, the Taylor norm, and the physical target remain raw. All nine accepted sketch steps appear with the same dependencies, output targets, and quantitative constants. The inherited baseline/recovery obligation is preserved by the exact raw-scale identity, span equality, and zero-path specialization.

## Theorem-Level Structure Audit

The block chain is acyclic and complete:

`G1 -> {G2,G3}`, `{G1,G2,G3} -> G4`, `{G2,G4,C_path} -> G5`, `{G1,G5} -> G6`, `{G3,G5,G6} -> G7`, `{G1,G7} -> G8`, and `{G4,G5,G8} -> G9`.

G1 supplies realized conditioning; G2 supplies normalized initialization geometry, exact raw scaling, tangent-span equality, and initial size; G3 supplies the quotient-frame and diagonal-core normal margin; G4 assembles the generated initialization event; G5 derives the actual finite limit and radius from the sole conditional path budget; G6--G8 preserve and transfer the raw residual; and G9 performs only event/probability assembly. No block consumes a later conclusion as an assumption. The unresolved G2/G3 calculations have explicit theorem-facing interfaces and consumers, so their locality is step-local.

## Dependency And Assumption Audit

The six primitive assumptions are used only as declared: base conditioning and smoothing in G1, dimension/rank/initialization in G2--G3, and the fixed GD protocol in G5. `E_cond`, normalized Grams, `E_size`, `(TF)`, `(TC)`, `W_0`, convergence, radius, Taylor remainder, coefficient margin, physical floor, and the final event are classified as derived outputs. `C_path` is the only public conditional hypothesis and contains only finite path length. Internal radial-good restrictions and the exact gauge quotient are proof-local conditional controls, not promoted assumptions. Every generated condition has a producer before its first theorem-facing consumer; no unconditional target consumes an unproduced generated condition.

## Citation And Tool Audit

No parent paper is used as a theorem-critical black box. Each listed tool is either an exact current-notation derivation or a standard finite-dimensional fact with its role and affected block exposed: Gaussian operator tails/Weyl (G1), radius-direction and chi laws plus conditional elliptic Gram concentration (G2), ACG/angular moments, gauge quotient algebra, decoupling/Bernstein, and scalar Bernstein (G3), tower/union (G4), finite-dimensional completeness (G5), trilinear expansion and Frobenius Cauchy--Schwarz (G6), and projection/Kronecker singular-value identities and continuity (G8--G9). The source objects, Euclidean/Frobenius conventions, realized-factor conditioning, rank boundary, and no-error/zero-path boundaries are stated. The only theorem-critical concentration items not yet written are G2 pair-Gram concentration and G3 `(TF)`/`(TC)`; the diagnostic fixes their exact ACG source, raw controls, variance scales, failure budgets, conclusion interfaces, and the prohibition on conditioning on the generated Gram event. Thus they remain local derivations rather than unsupported citations or missing wrappers.

## Quantitative Dependence Audit

All exposed variables and modes are retained: fixed `kappa,q`, `rho=r^(-q)`, `r`, `n`, `k`, the maximal rank boundary, the lower dimension threshold, normalized Gram window `[r^(-20),r^(20)]`, four constituent failure budgets `r^(-20)`, public failure `r^(-10)`, `delta_0=1/8`, `C_CP(kappa,3)`, `E_star`, and `epsilon_0(kappa)=kappa_1^(-12)(15 delta_0/16)^2`. Hidden random-geometry constants depend only on `(kappa,q)` and deterministic transfer constants only on `kappa`; no `n`, `k`, horizon, base, realization, or conditional-path probability is hidden. The initialization mode is high probability, the trajectory mode is all-time only under the explicit finite-path event, and the norm modes (factor `d_bal`, coefficient Frobenius, physical Frobenius) are not conflated. The remaining conditional probability is retained multiplicatively. Baseline reduction at zero path and arbitrary large `n` preserve the original raw conclusion.

## Scope And Closure Review

Every theorem-critical row in `global_proof.md` has a concrete source and scope-compatible closure:

- `E_cond` uses the primitive singular-value margin and a perturbation below half that margin; the source is active before the first update and remains valid at zero smoothing.
- The normalized Gram/raw-scale/span row uses elliptic covariance, local radial control, centered pair-Gram fluctuation, and the exact `(r/n)^2` transfer. The produced span and consumed tangent target are identical; normalization does not touch `D_r`, `Dhat_0`, or loss.
- `E_size` is a finite initialization union of chi tails and directly bounds the actual balanced columns.
- `(TF)` has a nonvacuous within-component quotient lower bound `I <= J_i^*J_i` and a centered off-component operator defect with stated `sqrt(k/r^2)+sqrt(log r/r)` control. The gauge kernel is removed exactly; the maximal-rank defect is `o(1)`.
- `(TC)` uses the exact raw diagonal core and Hadamard-product correlation, with projection energy bounded by `2||J^*D_r||^2`; at `k=r^(5/4)` this is `o(r)`, leaving a normal residual of order `sqrt(r)`.
- Initialization probability is a finite, noncircular union/tower closure.
- Factor convergence/radius uses the explicit recurrence `d(theta_u,theta_t) <= sum_{s=t}^{u-1} ell_s`, finite total variation, and `2+E_path<=3`; it does not assume convergence or boundedness in `C_path`.
- The Taylor block is a one-shot exact trilinear expansion with quadratic/cubic terms controlled by `C_CP d^2`; no per-iteration accumulation is hidden.
- The limiting coefficient margin uses exact tangent orthogonality and absorbs only the one endpoint remainder, with zero displacement traced separately.
- The physical bridge is an equality after projection to the realized mode span, followed by the positive Kronecker singular-value comparison; the discarded orthogonal residual is safe in the lower-bound direction.
- The final probability row is an exact event inclusion and conditional identity and allows `P(C_path|E_init_norm)=0`.
- The baseline package explicitly preserves the raw target and gives the zero-path first-update/endpoint trace.

All-time and accumulated rows name their producer, defect, charge/tail or endpoint relation, and finite-budget/scope reason. Closure is noncircular, entry-state checks are present for path/Taylor/baseline claims, and no row relies on a category label such as “later proof” as its mechanism. The two pending random-geometry derivations have source-adequate interfaces and therefore do not require a sketch rewrite.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_cond`, full rank, and `||M^dagger||<=kappa_1` | Structural singular-value/nondegeneracy support for coefficient and physical transfers | Primitive base singular margin plus Gaussian perturbation | `assump:base_conditioning`, dimension, smoothing; G1 | Weyl comparison gives the exact lower/upper bounds consumed downstream | Same realized matrices and Euclidean operator norm | `||Xi_M|| <= (2 kappa^2)^(-1)` leaves `sigma_min(M)>=kappa_1^(-1)` | Perturbation tail exports the named event and inverse bound | Produced/consumed object is the same realized `M`; no surrogate | Finite three-mode initialization union; no temporal accumulation | Primitive margins -> G1 -> every consumer | G1 produces event/inverse bounds for G2,G3,G6,G8 | Zero smoothing and lower base-margin boundary remain positive | `step-local` | None |
| Normalized pair Grams, exact raw scale, and `S_0^raw=S_0^norm` | Generated Gram nondegeneracy and baseline-preserving scale bridge | Balanced radius-direction law, conditioned elliptic covariance, centered pair-Gram concentration | G1 plus independent Gaussian initialization; G2 | Constant normalized window implies the public polynomial window | Exact coefficient coordinates, Khatri--Rao convention, and raw factor `(r/n)` are aligned | Local radial control plus centered fluctuation gives constant spectral window; `G_raw=(r/n)^2G_norm` exactly | Raw controls are G1 inverse bounds, radii, and `k/r^2=o(1)`; export is the named normalized event and exact span | Multiplicative identity has no additive residual; target/core/loss stay raw | Finite three-mode union; no `n`-persistent uncontrolled term | Primitive initialization -> G2 -> G3/G4 | G2 produces Gram event, scale identity, and span equality | Normalized scale stays constant as `n` grows; raw scale is exposed; radial lower/upper tails are internal | `step-local` | None |
| `E_size` | Generated initial/entry bound for path and Taylor domain | Chi concentration of common balanced radius `g_i` | Dimension, rank window, Gaussian initialization; G2 | Directly bounds actual balanced columns by `2` | Same balanced representatives and `d_bal` metric used later | `max_i g_i<=2` with failure budget `r^(-20)` | `3k` radius controls export the exact initial columns | Produced columns coincide with consumed columns | Initialization-only finite union | Primitive initialization -> G2 -> G4/G5 | G2 produces event for G4 and G5 | Maximal `k` and minimal allowed `n` are included | `step-local` | None |
| `(TF)` quotient-frame conditioning | Structural coercivity modulo the CP gauge | Exact quotient lower spectrum plus centered off-component ACG blocks | G1-conditioned independent angular directions; G3 | `J^*J=D+E`, `D>=I`, `||E||<=1/2` gives the required pseudoinverse bound | Unit rescaling preserves the raw tangent range; coefficient inner product is Euclidean | `||E|| <= C_kappa(sqrt(k/r^2)+sqrt(log r/r)) <=1/2` | ACG moment bounds and rank window export the same `J` used in the projection formula | No transformed tangent target; range is exactly `S_0` | One initialization operator event; no path accumulation | G1/G2 representations -> G3 -> G4/G7 | G3 produces quotient bound for projection and deficit | Gauge kernel removed before first update; maximal `k` defect is `o(1)`; null source would be exposed as failure | `step-local` | None |
| `(TC)` and `E_deficit`/`W_0` | Structural normal-margin lower bound for final loss | Hadamard-product correlation with exact diagonal core plus `(TF)` pseudoinverse | G1-conditioned independent angular directions; G3 | `||J^*D_r||^2<=C_kappa(k/r+log r)` and ambient `||D_r||^2=r` leave `||P_{S_0^perp}D_r||>=sqrt(r/2)` | `D_r`, `Dhat_0`, `S_0`, and Frobenius pairing remain raw | `||P_S D_r||^2 <=2C_kappa(k/r+log r)<=r/2`; `P_{S^perp}(D_r-Dhat_0)=P_{S^perp}D_r` | Exact quotient projection produces a unit `W_0` with the public `delta_0 sqrt(r)` margin | Same-target residual identity; no transformed/whitened target | Initialization-only scalar sums; no accumulated defect | G3 TF/TC -> `W_0`/deficit -> G4/G7 | G3 produces witness before any GD conclusion | At maximal rank correlation is `o(r)`; zero/degenerate frame source would block and is explicitly identified | `step-local` | None |
| `P(E_init_norm)>=1-r^(-10)` | Confidence-explicit generated-event closure | Four constituent budgets, tower property, finite union | G1--G3 derived outputs | Exact event intersection receives each required constituent | Joint smoothing/initialization law; no false independence | `P(E^c)<=4r^(-20)<=r^(-10)` for large `r` | Each named event has a producer and budget | No enlarged proxy event | Finite union only | G1--G3 -> G4 -> G5/G9 | G4 produces public initialization probability | Minimal/maximal dimension/rank boundaries are included | `step-local` | None |
| Finite-path convergence, endpoint displacement, radius `3` | All-time convergence/boundedness under conditional scope | Finite nonnegative path-length series and initial size | Explicit `C_path` plus G2; G5 | Tail-sum Cauchy argument directly proves actual limit and radius | Actual balanced iterates and `d_bal`, not an auxiliary trajectory | `d(theta_u,theta_t)<=sum ell_s`, `sum ell_s<=E_star<=1`, `||m_it||<=2+sum ell_s` | Initial size and path budget export actual `theta_inf`, displacement, and radius | Produced limit is the theorem's consumed object/metric | Each increment charged once; tails vanish; no persistent forcing | `C_path`/G2 -> G5 -> G6--G9 | G5 produces limit/radius for all downstream blocks | Zero first update is stationary; maximal budget still gives radius `3`; zero-factor branch is allowed | `step-local` | None |
| Raw CP Taylor remainder | Second-order endpoint control | Exact trilinear expansion and left-inverse bounds | G1 and G5; direct algebra in G6 | Three quadratic plus one cubic terms give `C_CP(kappa,R)d^2` | Exact raw `Psi`, coefficient Frobenius norm, and same factor endpoints | `sum_i a_i b_i <=||a||_2||b||_2`; `d^3<=d^2` for `d<=1` | Radius `R=3`, displacement `d<=E_star`, and inverse bounds are available before export | Remainder is exactly the residual beyond the initial derivative | One endpoint defect, not an iterated error | G1/G5 -> G6 -> G7 | G6 produces `R_inf` for G7 | At `d=0` remainder is exactly zero; `d=1` cubic conversion is valid | `step-local` | None |
| Limiting raw coefficient margin | Structural positive residual at actual limit | Initial `W_0` orthogonality and one-shot Taylor absorption | G3, G5, G6; G7 | `delta_0 sqrt(r)` minus `delta_0/16` gives `c_0 sqrt(r)` | Same raw coefficient residual throughout | `C_CP E_star^2<=delta_0/16`; derivative and `Dhat_0` cancel against `W_0` | Initial margin and endpoint remainder export the consumed coefficient lower bound | Produced/consumed object is `D_r-Psi(theta_inf)` exactly | Full path enters once through endpoint displacement | G3/G5/G6 -> G7 -> G8 | G7 produces coefficient floor | Zero path retains full initial margin; allowed maximal `E_star` leaves slack | `step-local` | None |
| Exact physical bridge and relative floor | Same-target physical loss lower bound | Orthogonal mode-span projection and Kronecker singular values | G1 and G7; exact identity in G8 | Projection plus `sigma_min(A tensor B tensor C)>=kappa_1^(-3)` matches physical claim | Realized target and physical Frobenius metric are unchanged | `F>=kappa_1^(-6)c_0^2 r`, `||T||^2<=kappa_1^6 r`, hence `epsilon_0(kappa)` | Lower/upper singular controls export the exact relative specialization | Projection discards only a nonnegative orthogonal component; no surrogate target | One-time endpoint comparison | G1/G7 -> G8 -> G9/final | G8 produces physical floor and continuity target | Lower singular boundary remains positive; full rank excludes singular failure | `step-local` | None |
| Final conditional probability interface | Event inclusion and conditional distributional conclusion | Deterministic implication and elementary conditional identity | G4, G5, G8; G9 | `E_init_norm intersect C_path subset F_+` gives exact lower bound | Joint law and actual event definitions agree | `P(F_+)>=P(E)P(C|E)>=(1-r^(-10))P(C|E)` | Uncontrolled conditional factor is explicitly exported, not assumed | `F_+` uses actual convergence and physical loss | All-time dependence remains inside authorized conditional event | G4/G5/G8 -> G9 -> final | G9 is terminal consumer only | `P(C|E)=0` is allowed and leaves a correct zero lower bound | `step-local` | None |
| Baseline invariance package | Recovery/zero-path specialization and repair fidelity | Exact normalized/raw algebra plus stationary path trace | G2, G3, G5--G8 | Normalization changes only certificate scale; raw conclusion is unchanged | Same raw target/core/tangent/loss conventions | `G_raw=(r/n)^2G_norm`, `S_0^raw=S_0^norm`, `E_path=0 => theta_inf=theta_0`, remainder `0` | Exact same-target bridge and initial witness remain available | No residual-to-surrogate substitution | No accumulated defect in zero-path branch | G2/G3/G5 -> G7/G8 | G2/G5 outputs consumed by baseline specialization | Zero first update/zero path is explicitly traced; arbitrary `n` remains valid | `step-local` | None |

## Hard-Step Localization Audit

The local obligations are correctly classified. G1 tail constants, G2 normalized pair-Gram concentration/radial bookkeeping, G3 ACG moments plus `(TF)`/`(TC)`, G4 union/tower bookkeeping, G5 finite-variation completeness, G6 exact expansion, G7 orthogonality/arithmetic, G8 projection/singular-value comparison, and G9 conditional assembly all have fixed inputs, outputs, source conventions, and consumers. In particular, the G3 hard step has a positive quotient source, explicit variance/correlation scales, exact raw target, boundary regime, and failure budget; it is not being justified by “geometry,” a later closure, or an upper bound alone. No obligation is a sketch/interface defect or theorem-contract defect. Every row in the gate table is therefore `step-local` with retry target `None` at this diagnostic stage.

## Early Idea-Failure Screen

- Contract contradiction: none. The setting permits the normalized certificate, raw tangent witness, finite conditional path, and relative physical floor at the declared rank/dimension scope.
- Missing mechanism: none at theorem level. `(TF)` has the quotient positive source and centered off-block control; `(TC)` has the exact diagonal-core source; path closure has an explicit finite budget; physical transfer has realized singular-value coercivity.
- Source-convention and object-target stress: passed. Normalized Grams are never consumed as fixed raw Grams; the tangent frame and Taylor map use the actual raw coefficient target; the physical identity uses the same realized `T`; no transformed or population object is substituted.
- Residual-to-target stress: passed. The Gram bridge is multiplicative and exact, the tangent residual uses `Dhat_0 in S_0`, the Taylor remainder is the sole endpoint defect, and the projection identity transfers to the physical residual in the safe direction.
- Entry/first-update stress: passed for initialization, path, Taylor, and baseline rows. The witness is constructed at `theta_0`; zero path is stationary with zero remainder; nonzero path increments are charged by the declared finite series.
- Noncircular/accumulation stress: passed. The only all-time relation is the independently supplied path budget; its tails produce convergence and radius before those outputs are consumed. No final loss or generated event is used to construct `W_0`.
- Generated-condition and flow stress: passed. Every theorem-facing generated event/output has one legal producer, an earlier dependency path, and named consumers.
- Dependence/mode and baseline stress: passed. The public `n`, `k`, rank, confidence, norm, horizon, and conditional-probability modes are preserved, and the inherited raw baseline remains exact.
- Same-setting repair plausibility: no repair is currently required. If a future proof-step derivation disproves the stated TF/TC interface, that later evidence would trigger a new `/proof-sketch` review; it does not make the present diagnostic non-consumable.

## Review Rationale

`global_proof.md` is sufficiently detailed and internally consistent for downstream step work. It exposes the normalized-to-raw scale repair, a source-adequate gauge-fixed Terracini mechanism with concrete TF/TC relations, finite-path accumulation and entry behavior, exact raw Taylor and same-target physical bridges, epsilon arithmetic, probability boundaries, assumption provenance, and a complete generated-output flow. The scope-and-closure certificate and gate rows classify every theorem-critical obligation as `step-local`, with no circular closure, hidden generated assumption, missing residual-to-target bridge, or theorem-contract change. Therefore the smallest sound review outcome is `ACCEPTED` with `Smallest Retry Target = None`; proceed to the nine proof-step artifacts and their local reviews.
