# Global Proof Review

## Global-Proof Review Identity

- Branch path: `perspective_3/idea_1`.
- Sketch attempt: 1.
- Reviewed `proof_sketch.md`: sketch attempt 1, 16-step set `step_001` through `step_016`, SHA-256 `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`.
- Reviewed `proof_sketch_review.md`: `ACCEPTED`, viability score 9, SHA-256 `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`.
- Reviewed `global_proof.md`: global attempt 1, SHA-256 `08f3f4cf7b314f3d177b097cf025d714d8fc1ba83c71afb8142b3679ce59ec75`.
- Reviewed global proof status: `PARTIAL_BLOCKED` with `Suggested Routing = None`.
- Reviewer role: independent global-proof reviewer; no producer artifact is treated as proof authority.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The diagnostic contains every required section: reviewed identity, controlled status, attempted claim, detailed whole-proof draft, block map, coverage table for all 16 sketch steps, dependency/assumption audit, citation/tool audit, quantitative audit, scope-and-closure certificate, generated-output flow, early-obstruction audit, hard-step list, diagnostic-boundary note, and suggested routing. `PARTIAL_BLOCKED` and `None` align because every unresolved obligation is classified `step-local` and has an unchanged source, interface, dependency path, and boundary treatment. The whole-proof draft exposes the actual equations and implications used at each transition rather than merely restating the sketch.

The diagnostic boundary is explicit and respected. Nothing in `global_proof.md` is used here as proof evidence or as authority to alter the accepted sketch. The missing backslash before `quad` in the display introducing the iid vector in Transition 08 is a cosmetic transcription defect; the quantified iid statement is repeated correctly in the surrounding prose and all consuming interfaces, so it does not impair diagnostic identity or routing.

## Claim And Sketch Fidelity Audit

The attempted claim is faithful to `setting.md` and the accepted sketch: fixed candidate size (n), central one-row replacement adjacency, arbitrary randomized computationally unrestricted improper output, population 0-1 risk, universal fixed-instance realizable PAC, the complete candidate-δ conjunction, and the deterministic pointwise implication (n\ge a k\log_2^*N). Constants are chosen before candidate quantification. The `material_partial` label and the remaining universal-characterization, exponential-separation, and cardinality gaps are preserved.

All 16 accepted claims, dependencies, output targets, and rate roles are unchanged. The source lower bound is not strengthened beyond its ((1/16,1/16))-PAC interface; the expectation conversion deliberately pays the second factor (1/16). No proper decoder, Bayesian PAC premise, conditional no-overflow theorem, expected sample size, or altered privacy mode is introduced. The tower statement is only the accepted deterministic specialization.

Baseline invariance passes: the source remains unrestricted and improper; endpoint thresholds remain members; actual and ideal samples agree exactly on (U\le M), including (U=0); replacement privacy is exact; and the lower/upper comparison is for the same fixed product instance. For (k=2,3), (M\ge n) makes overflow impossible rather than replacing the baseline by a residual statement.

## Theorem-Level Structure Audit

The eight blocks compose in accepted dependency order. Independent step audit:

| Step | Independent theorem-level audit |
| --- | --- |
| `step_001` | Exact cardinality and VC arguments are direct; one-tag LD is ⌊\(\log_2(N+1)\)⌋ and disjoint-product LD is additive by concatenated lower trees and per-tag upper mistake budgets. |
| `step_002` | Direct source inspection confirms the unrestricted randomized/improper, exact-size iid, population-risk, replacement-DP threshold interface and the required small-δ scale. |
| `step_003` | Contrapositive failure probability (>1/16) gives the strict expected-risk gap (>2^{-8}) without an invalid probability-mode upgrade. |
| `step_004` | The finite kernel polytope is compact convex; joint continuity makes the pointwise strict gap uniform; minimax has the correct `min learner / max prior` orientation; coefficient-vector Caratheodory preserves every kernel payoff exactly. |
| `step_005` | The floor, ceiling, source threshold, and two privacy denominators are discharged for the exact (M). |
| `step_006` | PAC is applied pointwise to each fixed product instance before any prior averaging and gives the same-object expected upper bound. |
| `step_007` | Coordinate restriction is a legal arbitrary one-block hypothesis and preserves exact block risk. |
| `step_008` | Conditional on the iid instance vector and ideal sample/output, (J) remains independent and uniform, so learner asymmetry does not affect the selected-risk identity. |
| `step_009` | Both factorial-moment cases give the claimed strict overflow constant, including (M=8), (n<k), and the zero-overflow (k=2,3) cases. |
| `step_010` | The simulator is total on all labeled inputs; the abort branch reads no input and each nonoverflow input row has at most one image. |
| `step_011` | Shared randomness gives exact actual/ideal equality off overflow and a single bounded-loss residual on overflow. |
| `step_012` | Seedwise preprocessing maps neighbors to equal or one-replacement datasets; postprocessing and a common input-independent mixture preserve one δ charge. |
| `step_013` | The prior applies only after simulator privacy is certified; the strict (2^{-8}) gap loses only (p_{\rm ov}<2^{-9}). |
| `step_014` | Finite extraction removes the prior before comparison with the pointwise PAC upper bound for the identical object. |
| `step_015` | The contradiction closes the exact pointwise implication with constants fixed before all candidates. |
| `step_016` | Exact tower inversion, the LD floor, and (r-1\le\log_2^*(rT_{r-1})\le r) give the stated (r)-independent specialization. |

No block exports a theorem-facing conclusion by a later-assembly label alone. Every transition has an earlier producer and an exact downstream interface.

## Dependency And Assumption Audit

The only public conditions are the three stable primitive assumptions. `assump:candidate-regime` is consumed only in scalar source membership and closure; `assump:central-dp` produces simulator privacy through `step_012`; and `assump:distribution-free-realizable-pac` produces the pointwise upper interface through `step_006`. The hard regime, source constants, game gap, prior, iid instance vector, overflow event, one-use invariant, coupling, simulator privacy, average lower bound, and fixed vector are derived outputs, not assumptions.

The prior-before-simulator order is valid: `step_003` gives a strict value over the complete compact DP-kernel class, `step_004` chooses one prior uniform over that class, and only then does `step_010` construct a kernel whose code uses the prior. The universal kernel quantifier therefore includes that simulator without circularity. Local conditioning on a kernel, instance, seed, or (U\le M) does not escape into the public theorem assumptions.

## Citation And Tool Audit

- **ALMM source.** I independently inspected Alon, Livni, Malliaris, and Moran, arXiv:1806.00949v3, `ADP.tex`, theorem `thm:main` and the PAC/privacy definitions. The source learner is a possibly randomized map to arbitrary functions, uses exactly (m) iid examples, is evaluated by population 0-1 loss on every realizable threshold distribution, and uses samples differing in one example. The theorem fixes ε (=0.1) and states δ (=O(1/(m^2\log m))); its proof exhibits the same universal scale (with constants affected by the empirical-learner reduction). Thus sufficiently small absolute (d_*>0), together with (N_*,b_*>0), supports the diagnostic wrapper. Label bijection, order isomorphism/reversal, restriction to ([N]), endpoint enlargement, and privacy monotonicity preserve the consumed interface. The source does not supply a prior, minimax statement, simulator, coupling, or product conclusion, and the diagnostic does not credit it with those outputs.
- **Compact minimax.** Inputs are the finite-dimensional compact convex DP-kernel polytope and weakly compact probability measures over compact ([N+1]\times\Delta([N])). The payoff is continuous and affine in each argument. Hence `min_B max_mu = max_mu min_B` has the orientation used. The maximum over priors equals the maximum over instances by Dirac measures. No source-convention translation or surrogate object is present.
- **Finite support.** The payoff is a finite linear functional of kernel coordinates. The barycenter of its continuous compact coefficient image lies in the finite-dimensional convex hull, so Caratheodory gives exact finite support and no approximation residual.
- **Direct standard tools.** The LD/mistake-tree argument, falling-factorial identity, bounded-loss coupling, conditional expectation, DP postprocessing/common mixtures, finite-average extraction, and tower arithmetic are all stated in the exact branch convention with their raw-assumption-to-output relations and relevant boundaries. None is invoked as category-only future work.

## Quantitative Dependence Audit

The diagnostic retains all exposed variables (k,N,n,\varepsilon,\delta,M,L_N,r,\operatorname{VC},\operatorname{LD},|C|). Hidden constants depend only on the fixed absolute ALMM and PAC constants, never on a candidate, hard support point, or simulator draw. The final theorem is deterministic and fixed-size; intermediate expectation statements are never promoted to high probability.

Under (n<(b_*/16)kL_N) and fixed (b_*L_N\ge16), both (8) and ⌈(4n/k)⌉ are strictly below (b_*L_N). The candidate cap implies ε ≤ 0.1 and

\[
\delta\le \frac{c_\delta}{M^2\log(M+1)}
\le \frac{d_*}{M^2\log M}.
\]

For (U\sim\operatorname{Bin}(n,1/k)), the (M=8) branch gives (2^9/9!<2^{-9}); the (M=\lceil4n/k\rceil\ge9) branch gives ((9/4)^{10}/10!<2^{-10}). Thus

\[
2^{-8}-p_{\rm ov}>2^{-9}>2^{-12}=\alpha_0+\beta_0.
\]

The diagonal uses the exact same theorem: log-star mode changes only after setting \(N=T_r\), and every asymptotic constant is independent of \(r\). No rate term, probability parameter, privacy parameter, or baseline conclusion is hidden or absorbed by prose.

## Scope And Closure Review

There is no recursive, all-time, limiting, stability, basin, or convergence closure. The applicable finite-scope controls are nevertheless explicit: per-tag LD mistakes have a finite additive budget; the hidden count has exact falling-factorial moments; each input row has at most one image; and overflow is one nonnegative residual subtracted once. These controls have fixed signs, concrete charge relations, and finite declared scopes.

The hard prior has a noncircular producer: compact uniformization of the strict source game precedes the simulator. The ideal product law has a noncircular producer: iid prior draws and tags precede (A). The one-use property precedes both coupling and privacy, simulator privacy precedes the hard-prior instantiation, and fixed extraction precedes PAC contradiction. No closure source assumes the target lower bound.

Entry/activation traces pass. At (U=0), no input row is read and actual/ideal datasets coincide. For (1\le U\le M), input row ℓ enters exactly the ℓ-th hidden occurrence. For (U>M), the simulator returns a fixed hypothesis before reading input or calling (A). On arbitrary nonrealizable neighboring inputs, the same seedwise trace changes at most one global row. The exact nonoverflow baseline and all theorem-facing generated outputs therefore have active sources before consumption.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001`: exact structure | Structural certificate for R2 | Independent threshold parameters and per-tag mistake strategies | Primitive class definition; direct derivation | Distinct cuts give size; one point per tag gives VC; balanced trees and per-tag budgets give exact LD | Exact branch labels, order, endpoints, and standard mistake-tree convention | Concatenate (k) depth-(d_N) trees; charge each mistake to one tag, total at most (kd_N) | Raw class definition exports exact size, VC, and LD to `step_016` | Identical class and quantities; no transfer residual | Finite (k)-term ledger, one charge per mistake | Direct `step_001` proof precedes specialization | Producer `step_001`; consumers `step_016` and assembly | Endpoint cuts, (k=2), and (N=N_0) remain valid | `step-local` | None |
| `step_002`: ALMM wrapper | Sole external lower source | ALMM `thm:main` and PAC/privacy definitions | arXiv:1806.00949v3, independently source-checked | Unrestricted randomized exact-(M) threshold learner with source PAC and DP parameters implies (M\ge b_*L_N) | Label/order bijections preserve iid law, population risk, arbitrary outputs, and replacement adjacency; endpoints enlarge the class | Contrapositive under (M<b_*L_N); privacy monotonicity for smaller ε,δ | Raw (N,M,\varepsilon,\delta) export fixed (b_*,d_*,N_*) and only the one-block impossibility | Same one-block object and metric; only fixed convention constants | One fixed-size source use, no composition | Cited theorem fixed before game, prior, and simulator | Producer `step_002`; consumers `step_003`, `step_005` | (M=8), smaller privacy, arbitrary outputs, and endpoint enlargement pass | `step-local` | None |
| `step_003`: strict expected gap | Lower/sign source for minimax | Source failure event plus bounded nonnegative risk | Derived from `step_002` | Failure probability \(>1/16\) at loss \(>1/16\) gives expectation \(>2^{-8}\) | Same \(Q,t,M\), arbitrary hypothesis, and population-risk convention | \(\mathbb E[R\mathbf 1_{\{R>1/16\}}]>(1/16)\Pr(R>1/16)>2^{-8}\) | Raw source failure exports exact payoff \(\ell_M(B;t,Q)\) | Intentional \(1/16\) conversion loss already included; no residual later | One expectation, no accumulation | `step_002 -> step_003 -> step_004` | Producer `step_003`; consumer `step_004` | Easy zero-risk instances do not affect the worst-instance quantifier | `step-local` | None |
| `step_004`: finite hard prior | Uniform quantifier swap | Compact DP-kernel polytope, compact instance space, minimax, coefficient Caratheodory | Direct finite-dimensional/compact tools | Compactness upgrades pointwise (f(B)>\eta) to μ-independent value (v>\eta); minimax makes one prior hard for all kernels | Kernel coordinates cover all labeled inputs and arbitrary outputs in exact replacement-DP convention | (v=\min_B\max_z\ell=\max_\mu\min_B E_\mu\ell>\eta); exact coefficient barycenter | Raw compact sets and strict gap export finite μ before any simulator | Exact payoff preservation; no net or approximation residual | One finite convex combination | `step_003` produces gap; `step_004` fixes μ before `step_010` | Producer `step_004`; consumers `step_006`, `step_008`, `step_010`, `step_013` | Constant kernel proves nonempty set; point-mass (Q) and nonunique representations included | `step-local` | None |
| `step_005`: source calibration | Explicit-rate admissibility bridge | Candidate inequalities and ALMM constants | Primitive `assump:candidate-regime` plus `step_002` | Negated R1 puts exact \(M\) below source threshold and exact privacy below source cap | Natural log and base-two log-star are used only in declared roles | With \(x=b_*L_N\ge16\), \(\lceil4n/k\rceil<5x/16<x\), \(8<x\), and \(\delta\) is monotone to the source cap | Raw candidate variables export exact \(M,\varepsilon,\delta\) source membership | Ceiling, floor, and denominator fully dominated; no hidden candidate term | One scalar specialization | Primitive regime and source constants precede consumers | Producer `step_005`; consumers `step_010`, `step_012`, `step_015` | \(n=1,n<k,M=8,k=2,N=N_0\) pass | `step-local` | None |
| `step_006`: PAC upper bound | Same-object upper comparison | Distribution-free PAC and risk bounded by one | Primitive `assump:distribution-free-realizable-pac` | Each fixed vector defines a fixed realizable product instance | Exact (P_{\boldsymbol Q},c_{\boldsymbol t},n,A), and population metric later consumed | Split success/failure: (E R\le\alpha_0(1-\beta_0)+\beta_0\le2^{-12}) | Universal fixed-instance premise exports pointwise Φ before averaging | Same object in `step_014`; zero residual | One fixed expectation | Primitive PAC produces `step_006` before extraction | Producer `step_006`; consumer `step_014` | Endpoints, point masses, and randomized (A) covered | `step-local` | None |
| `step_007`: exact restriction | Improper one-block output interface | Coordinate map (D_jh=h(j,\cdot)) | Primitive tagged output space | Every arbitrary product output restricts to a legal arbitrary one-block output with exact tag risk | Source and branch both permit full function outputs; no monotonicity translation | (R_Q(D_jh,\tau_t)=e_j(h;t,Q)) | Full output space exports the exact function consumed by the source game | Identical hypothesis and risk; zero residual | One postprocessing map | Direct definition precedes all consumers | Producer `step_007`; consumers `step_008`, `step_010`, `step_011`, `step_013` | Constant, oscillating, randomized outputs and point-mass (Q) pass | `step-local` | None |
| `step_008`: hidden-coordinate identity | Generated iid law and average-risk bridge | Iid prior vector, independent uniform \(J\), uniform tags | `step_004` plus direct probability construction | Conditional on vector/sample/output, \(J\) remains uniform and \(\mathbb E_J e_J=k^{-1}\sum_i e_i=R_P\) | Exact product sample, labels, output, and population metric; no learner symmetry assumed | Factor the joint law as \(\mu^k\otimes\operatorname{Unif}[k]\), then condition and average over \(J\) | Raw \(\mu\), tag law, and restriction export exact ideal experiment and equality | Same product risk; zero residual despite asymmetric \(A\) | Finite \(k\)-coordinate average | `step_004 + step_007 -> step_008` | Producer `step_008`; consumers `step_011`, `step_013` | \(U=0\), \(k=2,3\), unequal blocks, and deliberate asymmetry pass | `step-local` | None |
| `step_009`: overflow | Finite-budget residual certificate | Binomial factorial moments and fourfold budget | Direct tag law | Exact tail event (U>M) is below the required risk slack | Exact integer (M=\max\{8,\lceil4n/k\rceil\}); no asymptotic tail convention | (P(U\ge q)\le E(U)_q/q!); use (q=9) or (q=M+1) | Raw (n,k,M) export (p_{ov}<2^{-9}) to coupling | A [0,1]-valued risk changes by at most (p_{ov}), strictly within the required target margin | Nonnegative count over (n) trials; event charged once; no uncontrolled term | Tag law produces certificate before simulator | Producer `step_009`; consumers `step_010`, `step_011`, `step_013` | (M=8,n<k,U=0) pass; (k=2,3) have (M\ge n) and zero overflow | `step-local` | None |
| `step_010`: simulator | Total kernel and one-use invariant | Predrawn tags, finite prior, fresh nonhidden rows, occurrence indexing, fixed abort | Earlier generated outputs plus direct preprocessing | Unknown hidden law is supplied by labeled input rows; each used row has one image | Exact size-(M) input, size-(n) output, arbitrary labeled adjacency, improper restriction | Row ℓ maps only to the ℓ-th hidden occurrence when ℓ ≤ (U\le M); overflow maps no row | Raw μ, tags, (D), and (A) export a total one-block kernel | Exact ideal rows off overflow; sole residual delegated to `step_011` | Finite one-use ledger, no repeated charge | Prior exists before construction; invariant before privacy/coupling | Producer `step_010`; consumers `step_011`, `step_012` | (U=0,U>M), unused/corrupt rows, and nonrealizable neighbors are defined | `step-local` | None |
| `step_011`: actual/ideal bridge | Baseline-preserving risk transfer | Shared infinite hidden sequence and all auxiliary randomness | Direct coupling from `step_008`-`step_010` | Actual and ideal datasets and restricted outputs coincide on (U\le M) | Same sample order, instance, output, and population risk | (L_{id}\ge L_{act}-1_{U>M}), hence (E L_{id}\ge E L_{act}-p_{ov}) | Exact nonoverflow identity plus `step_009` tail export bridge | The source and target risks are identical off overflow; (p_{ov}) controls the complete target-side difference | Sole adversarial residual is one overflow indicator, below target scale | `step_009 + step_010 -> step_011` | Producer `step_011`; consumer `step_013` | (U=0) gives equality; (k=2,3) equality holds everywhere | `step-local` | None |
| `step_012`: simulator privacy | Exact source-private membership | Pathwise one-use preprocessing, primitive DP, postprocessing, common mixture | `assump:central-dp`, `step_005`, `step_010` | Fixed seed maps adjacent inputs to equal or one-replacement global datasets | Same replacement convention on all labeled datasets; (A)'s coins remain random | Apply (A)'s DP once seedwise, postprocess, integrate the input-independent seed, then use parameter monotonicity | Raw (A)-privacy and one-use map export exact ((\varepsilon,\delta)), then ((0.1,\Delta_M)) | Produced and consumed privacy interfaces coincide after scalar monotonicity; zero target residual | One δ charge, no composition or accumulated privacy defect | One-use is produced before privacy and prior instantiation | Producer `step_012`; consumer `step_013` | Overflow, (U=0), unused replacement, feature-plus-label replacement, nonrealizable inputs pass | `step-local` | None |
| `step_013`: product lower bound | Theorem-critical lower transfer | Uniform prior gap, certified kernel, coupling, hidden-coordinate identity | Outputs of `step_004`, `step_008`, `step_009`, `step_011`, `step_012` | Simulator lies in exact hard kernel class; ideal selected risk equals exact product risk | Same source privacy class and theorem population metric | (E L_{act}>2^{-8}), (E L_{id}\ge E L_{act}-p_{ov}>2^{-9}) | Accepted raw inputs export exact prior-averaged Φ | The exported object is exact product population risk and the sole transfer residual is strictly target-dominated | Sole negative defect (p_{ov}) is subtracted once and strictly absorbed | All producers precede `step_013`; no self-support | Producer `step_013`; consumer `step_014` | Unobserved hidden tag, (n<k), (k=2,3), and asymmetric (A) remain covered | `step-local` | None |
| `step_014`: extraction | Fixed-instance theorem closure bridge | Finite μ-product average and pointwise PAC upper bound | `step_006`, `step_013` | Strict average gives a fixed vector with the same Φ above (2^{-9}), while PAC bounds it by (2^{-12}) | Identical fixed (P,c,n,A,R) on both sides | Finite maximum principle followed by direct numerical comparison | Raw finite prior lower and pointwise upper export fixed contradiction | Zero extraction residual; only sample/(A) randomness remains in both | One finite extraction | Lower and upper producers precede extraction | Producer `step_014`; consumer `step_015` | Endpoint/point-mass vector and nonunique representation remain valid | `step-local` | None |
| `step_015`: R1 closure | Exact nonasymptotic implication | Negated target plus complete prior chain | Three primitive assumptions through accepted dependencies | Negation supplies every hard-regime premise and produces contradiction | Exact (n,k,N,\varepsilon,\delta,A), fixed-size and risk mode | Contradiction discharges (n<akL_N) and yields (n\ge akL_N) | All theorem inputs reach closure through legal dependencies | No dropped term, conditional event, or surrogate conclusion | One pointwise contradiction | Final conclusion is not consumed upstream | Producer `step_015`; consumers `step_016` and assembly | (n=1,M=8,k=2,N=N_0) already discharged | `step-local` | None |
| `step_016`: tower R2 | Quantitative public specialization | Exact tower recursion, `step_001`, `step_015` | Primitive tower convention plus earlier derived theorem | Log-star inversion and exact structural formulas turn R1 into \(\Omega(r^2)\) | Exact base-two convention, floor, same class sequence; fixed initial exclusion | \(L_{T_r}=r\), \(\lfloor\log_2(T_r+1)\rfloor=T_{r-1}\), and \(r-1\le\log_2^*(rT_{r-1})\le r\) | Raw R1 and structure export the stated corollary with \(r\)-independent constants | Same class and sample lower bound are deterministically re-expressed; zero target residual | Only finitely many initial \(r\); no rate residual | `step_001 + step_015 -> step_016` | Producer `step_016`; final interpretation consumer | \(r=2\) checks convention; theorem begins at first fixed admissible index | `step-local` | None |

## Hard-Step Localization Audit

Every unresolved item is `step-local`. In particular, `step_002` only has to restate and map a source whose exact unrestricted interface is already verified; `step_004` only has to formalize the already-fixed compact game, minimax orientation, attainment, and coefficient extraction; `step_008` only has to prove the fixed joint-law factorization; `step_009` only has to certify the displayed finite arithmetic; and `step_010`-`step_012` only have to formalize the total construction, coupling, and one-use privacy proof. None needs a new source, assumption, dependency, output target, margin, residual bridge, closure mechanism, boundary exclusion, mode, metric, or conclusion.

The remaining structural, scalar, restriction, transfer, extraction, and tower steps likewise instantiate exact interfaces already fixed by the accepted sketch. No hard obligation is a `sketch/interface defect` or `idea/theorem-contract defect`.

## Early Idea-Failure Screen

- Contract contradiction: none; all theorem modes and quantifiers match the setting.
- Missing mechanism: none. The positive lower source is the unrestricted ALMM failure gap; compact minimax makes it uniform; independent hiding gives exact average risk; one-use preprocessing gives privacy; and the strict numerical ledger closes the theorem.
- Source-convention stress: passes for labels, order, arbitrary output, fixed iid size, population loss, and replacement privacy. No proper-only or interior-point interface is substituted.
- Residual-to-target stress: the only nonzero residual is overflow, and it is compared in the same population-risk metric at a strictly adequate scale. All other object transfers are identities.
- Persistent-defect and accumulation stress: no persistent or adversarial accumulated term occurs. The finite count and row-use ledgers have explicit one-shot budgets.
- Limiting/boundary stress: endpoints, point-mass laws, (k=2,3), (n<k), (M=8), (U=0), overflow, unused and nonrealizable neighboring rows, arbitrary asymmetric/nonmonotone output, and the first tower index are handled.
- Entry-state trace: the mechanism is active or the required equality is already true in every (U=0), (1\le U\le M), and (U>M) branch.
- Generated-condition check: every prior, event, invariant, privacy certificate, risk bound, and hard vector has an earlier producer and legal consumer path.
- Dependence/mode check: no hidden candidate dependence, average-case PAC premise, expected-size substitution, probability upgrade, or privacy composition appears.
- Baseline invariance: unrestricted improper hardness and exact no-overflow behavior are preserved, not weakened into a conditional or remainder-only statement.
- Same-setting repair plausibility: no repair is presently required. The diagnostic exposes no theorem-contract change and no roadmap defect that should preempt local proof work.

## Review Rationale

`ACCEPTED` is the smallest sound outcome. The reviewed `PARTIAL_BLOCKED` status reflects unproved local derivations, not a missing theorem-level mechanism. Independent source inspection and obstruction-level checks support every exported interface, the hard-prior quantifier order, the hidden-coordinate identity, the finite overflow margin, the one-use privacy map, and the same-object PAC contradiction under the unchanged 16-step sketch. Routing back to `/global-proof`, `/proof-sketch`, or `/subagent-idea-generator` would therefore be unsupported at this gate.
