# Global Proof Review

## Global-Proof Review Identity

- Branch path: `perspective_1/idea_2`.
- Sketch attempt: 1.
- Reviewed `proof_sketch.md`: sketch attempt 1, SHA-256 `d4f7150a803758cb3ae0c1b83b62c48782e29f6e6b8b057a13697d7aadf22442`.
- Reviewed `proof_sketch_review.md`: accepted review, SHA-256 `215ff66413663f1d0ce05bb94a6c72bae7b56995a050f21785a005bbe565726d`.
- Reviewed `global_proof.md`: global attempt 1, SHA-256 `ccba3bca328ff50f6e05c5c7128672b9f8614a4e37b4db612de6fbdeab8a11db`.
- Reviewed global-proof status: `PARTIAL_BLOCKED`.
- Independent source preflight: Yan arXiv:2505.06581v2; Alon--Livni--Malliaris--Moran arXiv:1806.00949v3; Bun--Nissim--Stemmer--Vadhan arXiv:1504.07553, including the exact labeled statements and proof passages used by `step_002` and `step_008`.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The reviewed diagnostic contains every required section: reviewed-sketch identity, controlled status, attempted theorem claim, detailed whole-proof draft, theorem-level block map, complete sketch-step coverage, dependency and assumption audit, citation and tool audit, quantitative dependence audit, scope-and-closure certificate, exported-interface audit, generated-output flow, early obstruction audit, hard-step list, diagnostic-boundary note, and suggested routing. `PARTIAL_BLOCKED` and `Suggested Routing = None` are aligned. The boundary note correctly denies the diagnostic any role as proof evidence, citation authority, assumption source, or authority to alter an accepted step.

The whole-proof draft is not a restatement of the sketch table: it exposes the mathematical interfaces G1--G8, including the exact occupancy inequality, the ALMM resampling route, the compact minimax game, the hard-mass calculation, the optimized overflow exponent, the one-use simulator, the common product-prior experiment, and the final rational comparison. Every unresolved theorem-critical obligation is attached to an unchanged accepted step and classified `step-local`. Thus `PARTIAL_BLOCKED`, rather than `SKETCH_BLOCKED`, is contract-valid.

## Claim And Sketch Fidelity Audit

The attempted claim matches `setting.md` and the accepted sketch. It preserves the full Cartesian VC-one factor assumptions, replacement DP on arbitrary fixed-size inputs, arbitrary distributions and improper outputs, the fixed PAC constants, the exact routed upper learner, the displayed quota rate, and the candidate-wise lower statement. The first delta conjunct is retained even though the proof uses only the factor-budget conjunct. The sample-complexity sandwich is invoked only when the candidate condition holds at the actual value of `SC`, and no cross-candidate or uniform-delta conclusion is introduced.

All 15 step claims, output targets, and dependencies are preserved. In particular, the diagnostic does not replace Yan utility by padded utility, the ALMM factor result by its weaker formal PAC corollary, the exact factor/global risks by surrogate risks, or the final PAC lower conclusion by an expectation-only statement. The branch remains correctly labeled `conditional`; no claim is made for higher-VC indecomposable factors.

Both baseline invariance obligations pass. At (k=1), the upper construction is the same improper Yan factor learner up to fixed privacy allocation and conservative universal constants. For the lower clause, (\pi_1=1) and (m_{n,1}\ge 4n), so overflow is impossible; the VC and ALMM branches retain the accepted one-factor lower conclusion under the same candidate delta condition.

## Theorem-Level Structure Audit

G1 produces exact product structure. G2 consumes it to instantiate the factor learners and prove support-two routed privacy. G3 proves arbitrary-mass utility and the public upper rate. G4 supplies independent additive-VC and iterated-log lower sources. G5 fixes learner-independent finite priors and calibrates the hard-factor mass. G6 supplies the only nonidentity experiment bridge, with exact one-use privacy and explicit overflow residual. G7 places all factor inequalities in one prior-before-learner experiment and closes the same-risk contradiction. G8 preserves the distinct upper and candidate-wise lower scopes.

Every `step_001`--`step_015` row has a coherent role and an earlier-only dependency path. The two lower chains

\[
\texttt{step\_001}\to\texttt{step\_007},
\qquad
\texttt{step\_001}\to\texttt{step\_008}\to\texttt{step\_009}
\]

are independent before calibration, and `step_009` fixes every factor prior before `step_012` constructs any simulated learner. `step_013` identifies one common ideal product experiment rather than selecting hard factors or tasks after observing the global learner. The final assembly consumes only already-produced upper and lower certificates.

## Dependency And Assumption Audit

The four setting assumptions remain primitive. Counts, success events, priors, the set (H), low mass (w_L), overflow events, simulators, couplings, and expected-risk bounds are all derived after their stated producers. The contradiction hypothesis (n<cM) is local and discharged; it is not exported as a theorem assumption.

The candidate-wise delta quantifier is exact. For a fixed candidate (n), `assump:candidate-delta-budget` is checked at every exact (m_{n,i}). Each hidden-factor learner is ((\varepsilon,\delta))-DP and hence ((0.1,\delta))-DP because (\varepsilon\le 0.1), and the factor-budget conjunct supplies the ALMM delta hypothesis. No conclusion is transferred to another candidate. There is no missing generated-condition bridge and no unconditional conclusion completed by assumption.

## Citation And Tool Audit

- **Yan v2, `step_002`.** The source defines neighboring fixed-size datasets as differing in one entry. Algorithm `alg:improperlearner` uses (d_{\rm Yan}=TD(\mathcal X,\mathcal C_f)+1); `thm:privacy-OPTPrivateLearner` gives the internal ((2\varepsilon,2\delta)) guarantee, and the substitution immediately before `thm:improper sample complexity` gives the advertised requested budget. The source also proves (TD(\mathcal X,\mathcal C_f)\le2^{d_i+1}) and preserves Littlestone dimension under the (f)-representation. Thus the branch's positive (TD+1) endpoint and universal domination by (s_i=1+\log_2^*(d_i+1)) are source-compatible, including (d_i=1). The source output is an improper distributional-risk PAC learner and does not output padded utility, routing, a product theorem, or a lower bound. The permutation wrapper is a current-notation bridge from routed multisets to the source sequence convention.
- **ALMM v3 and Bun et al., `step_008`.** ALMM `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, and `thm:ADPimpliesLD` exist with the stated roles. Bun et al. Lemma 5.9's secrecy calculation is exactly
  \[
  \widetilde\varepsilon=6\varepsilon m/N,
  \qquad
  \widetilde\delta=e^{6\varepsilon m/N}(4m/N)\delta
  \]
  for with-replacement sampling when (N\ge2m) and (\varepsilon\le1). At (N\in[9m,10m]), both parameters fit the ALMM empirical budget after shrinking the universal (c_\delta). On a fixed realizable database, uniform-distribution population risk equals empirical loss exactly. In the active proof of ALMM `lem:reduction`, empirical utility is used through the sole bound (\mathbb E L_S\le1/8), equivalently expected empirical accuracy at least (7/8); the homogeneous-set and binary-family arguments require only this probability jump and privacy. Shelah's theorem fixes a finite threshold pattern of size at least (\lfloor\log_2d\rfloor), and the (N\le10m) and additive log-star shifts are absorbable into universal (a_{\rm L},c_\delta). The formal PAC corollary is correctly recorded as a known non-output rather than misquoted as the expected-risk statement.
- **Finite minimax, `step_009`.** On the fixed Shelah point set, include all finite realizable empirical databases of the required size and their uniform laws. This is a finite task set independent of the learner. Kernels from all finite labeled input databases to all binary output vectors form a nonempty compact convex polytope under every replacement-DP event inequality, including nonrealizable inputs. Arbitrary improper hypotheses reduce by postprocessing to these vectors without loss on task supports. The finite maximum loss is continuous, so its pointwise strict (>1/8) lower bound has an attained strict minimum; finite minimax therefore gives a prior fixed before every simulated learner with the same strict gap.
- **Standard tools.** Basic composition is applied only after the support-two routed-adjacency certificate. The occupancy and overflow Chernoff bounds expose their exact means and thresholds. Markov, finite linearity, and the PAC-to-expectation inequality act on nonnegative or ([0,1])-valued quantities in the exact risk metric. No cited theorem is consumed for a different object, target, adjacency convention, output class, or probability mode.

## Quantitative Dependence Audit

The upper bound exposes (k,(d_i,r_i,s_i,q_i)_i,M,n,\varepsilon,\delta); the lower bound exposes the same structural quantities together with every exact (m_{n,i}). Hidden constants are restricted to the fixed numerical conventions and universal source constants, and factor cardinalities never enter.

The hard-factor arithmetic is valid after harmlessly shrinking (a_{\rm L}\le1). With (R_0=\lceil32/a_{\rm L}\rceil) and the displayed choice of (c), the VC certificate gives

\[
w_L\le (R_0+2)k/M<1/128.
\]

For (i\in H), (4n\pi_i< a_{\rm L}r_i/8), the ceiling defect is at most (1\le a_{\rm L}r_i/32), and the floor obeys (8\le a_{\rm L}r_i/4), so (m_{n,i}<a_{\rm L}r_i) strictly.

The optimized binomial calculation is also correct. The integer overflow threshold is at least (max\{9,4\mu+1\}). For (mu\le2) the exponent is minimized at (mu=2); for (mu\ge2),

\[
f'(\mu)=4\log(4+1/\mu)-1/\mu-3>0.
\]

Thus (eta_0=e^7(2/9)^9\approx0.00144927<3/2048). Finally,

\[
\frac{127}{128}\left(\frac18-\frac3{2048}\right)
=\frac{32131}{262144}
>\frac{31744}{262144}
=\frac{31}{256},
\]

so every explicit defect is dominated at the same-risk theorem scale. Probability mode, fixed-candidate horizon mode, and distributional 0-1 risk are unchanged throughout.

## Scope And Closure Review

The scope-and-closure certificate covers every theorem-critical structural equality, cited wrapper, generated event, quantitative specialization, hard prior, simulator, residual bridge, tensorization step, theorem closure, and one-factor baseline. Each row identifies its source, defect split, concrete relation, producer-consumer path, boundary behavior, and `step-local` verdict.

There is no iterative, recursive, all-time, limsup, or asymptotic claim. Accumulation consists only of finite nonnegative weighted sums, one support-two privacy composition, and one bounded-loss subtraction per factor marginal. The diagnostic states the controlling equations rather than only category labels. Counts and overflow are produced from primitive sampling; source interfaces precede every consumer; no closure claim assumes the final theorem or itself. The Noncircular Closure Gate therefore passes.

The relevant entry and boundary traces also pass. A cross-block replacement activates at most two source comparisons. A zero-mass block remains risk-null. If no hidden-factor slot is requested, no input row is used. On overflow, the simulator selects the input-independent branch before reading an unavailable row. On nonoverflow, one changed factor row changes at most one global row, including for nonrealizable neighboring factor inputs. At (k=1), the simulator never overflows. No claimed mechanism is inactive while its theorem-facing conclusion remains false.

Every exported interface is feasible. Yan and the VC/ALMM sources use the exact consumed factor or global risks. The finite hard restriction is a subproblem within the same factor. The truncated simulator is the only surrogate experiment; off overflow, its target, distribution, global sample, learner randomness, output restriction, and factor risk coincide with the ideal experiment, while the entire residual is bounded by (1_{O_i}) and then by (eta_0). The common product-prior identity transfers these exact marginal risks to the exact global metric.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Product VC, LD, and finite-cardinality identities | Exact structural interface for both clauses | Disjoint full Cartesian freedom; factor VC and LD | Primitive `assump:canonical-product`, `assump:vc-one-factors`; direct derivation | Projection/product shattering and concatenated/factorwise online arguments give both directions | Exact binary labels, disjoint whole-domain partition, same class | (VC(C)=k), (LD(C)=\sum_i d_i); finite products multiply cardinalities | Raw factor classes export exact global quantities and (k\le M/2), (s_i\le r_i+2) | N/A: exact same class and dimensions, no surrogate | Finite nonnegative sum; infinite cardinality excluded only from unused cardinality identity | Primitive structure -> `step_001` -> all consumers | `step_001`; consumers `step_006`, `step_007`, `step_010`, `step_015` | (k=1), (d_i=1), and infinite-cardinality boundary pass | `step-local` | None |
| Yan factor learner at exact quota | Cited wrapper supplying factor DP and PAC utility | Yan v2 `alg:improperlearner`, internal (TD+1), privacy theorem, `thm:improper sample complexity` | Primary source plus current-notation endpoint and permutation bridge | (TD(C_{i,f})+1\le2^{d_i+1}+1); universal (K) makes source threshold at most (q_i) | Fixed-size one-entry replacement, binary labels, arbitrary distributions, improper output; permutation aligns multiset/sequence | Source threshold (\le q_i); unpadded risk (\le1/64) except probability (1/4096) | VC one, finite LD, positive parameters, (s_i), and (K) export exact factor interface; padding excluded | Same (c_i,D_i,R_{D_i}); padding is separately charged downstream | One fixed call; hidden constant/log shift absorbed; no cross-factor privacy sum here | Source + `step_001` -> `step_002` -> routing/utility/rate | `step_002`; consumers `step_003`, `step_005`, `step_006` | (d_i=1) remains active through (TD+1); padded nonrealizable inputs use DP only | `step-local` | None |
| Routed two-factor privacy | Exact global replacement-DP closure | Routed multiset coupling, symmetrization, basic composition, postprocessing | Direct derivation from `step_002` and primitive disjointness | One global replacement changes at most two factor multisets by one replacement each | Coupled permutations give source sequences differing in one entry; DP includes nonrealizable data | At most (2(\varepsilon/2,\delta/2)=(\varepsilon,\delta)) | Exact factor outputs export tuple and deterministic piecewise hypothesis | Exact postprocessing; zero target residual | Support size at most two, independent of (k); no repeated accumulation | `step_002` -> `step_003` -> `step_015` | `step_003`; final upper privacy consumer | Same-block, cross-block, selected/unselected, padded/full, and (k=1) pass | `step-local` | None |
| Weighted shortage and upper PAC closure | Generated bad-mass control and high-probability utility | Binomial light/heavy split, Yan conditional utility, Markov | Primitive iid sample; `step_002`; direct risk algebra | Weighted rather than union-bounded defects match exact block contributions | Same (D_i,c_i,R_{D_i}); conditional first quota observations remain iid | (E W\le128Q/n+e^{-16}+1/4096); (R_D\le1/64+W) | Counts, exact quotas, block weights, and factor guarantees export the exact PAC event | (W) contains all padding and factor-failure residuals with correct weights | Finite nonnegative weighted sum; count dependence irrelevant | Primitive sample and `step_002` -> `step_004` -> `step_005` | `step_004` produces occupancy; `step_005` produces PAC bound; `step_015` consumes | (\rho_i=0) has zero risk weight; all-good state has (W=0); (k=1) full occupancy passes | `step-local` | None |
| Quota-sum specialization | Public explicit upper rate | Exact quota formula and structural inequalities | `step_001`, `step_002`; direct arithmetic | Monotonic logs and (\sum_i s_i=M) have the needed upper direction | Base and fixed-log shifts absorbed universally; no cardinality convention enters | (Q\le C(M/\varepsilon)\log^2(16384M/(\varepsilon\delta))+k), then absorb (k) | Exact (q_i,s_i,M,k) export the exact public sample threshold | N/A: produced quantity is the consumed (Q) | Finite ceiling defect at most (k); no probability accumulation | `step_001/002` -> `step_006` -> `step_015` | `step_006`; public-rate consumer `step_015` | (k=1,d_i=1,\delta\uparrow1), and tiny positive (delta) pass | `step-local` | None |
| Global VC lower certificate | Additive one-per-factor risk lower source | Independent unseen labels on one product-shattered point per block | `step_001`; direct random-target argument | Full product supplies all labels; improper output cannot predict unseen fair bits | Same global iid sample, arbitrary output, and distributional risk; privacy unused | If (n<k/2), expected risk (>1/4>31/256) | Shattered points and uniform distribution export (n\ge a_{VC}k) | Exact global target and risk; no surrogate | One finite expectation; collisions only increase unseen mass | `step_001` -> `step_007` -> calibration/contradiction | `step_007`; consumers `step_010`, `step_014` | (k=1,n\ge1), small (d_i), and improper outputs pass | `step-local` | None |
| ALMM expected-risk floor (>1/8) | Cited structural lower source for factors | ALMM v3 labeled proof; Bun et al. Lemma 5.9; Shelah threshold embedding | Primary-source proof path `lem:bun` -> `lem:reduction` -> `thm:main` + `thm:shelah` | Expected empirical loss (\le1/8) is exactly the active utility input; privacy jump and threshold proof force (m=\Omega(\log^*d)) | Replacement DP, arbitrary output, binary relabeling, population loss; (N\in[9m,10m]) and log-star shifts absorbed | Resampling gives ((6\varepsilon m/N,e^{6\varepsilon m/N}(4m/N)\delta)); threshold lower returns factor floor | Factor DP, exact delta scale, fixed finite threshold pattern, and uniform empirical laws export the wrapper | Uniform-database population risk equals empirical loss; threshold task is within same factor | One fixed budget; factor-nine and delta/log shifts are universal constant losses | Source proof independent of product theorem -> `step_008` -> minimax | `step_008`; consumer `step_009` | (m=8) and parity rounding pass; (d=1) is inactive; smaller epsilon transfers by monotonicity | `step-local` | None |
| Finite hard prior | Learner-independent factor task distribution | Fixed finite ALMM task set and compact finite DP-kernel minimax | `step_008`; finite-dimensional direct argument | Strict continuous max loss on compact kernel polytope has strict attained minimum; minimax preserves it | Inputs include all finite labeled databases and replacement events; outputs include every improper label vector | (min_K\max_\theta\ell(K,\theta)>1/8=\max_\nu\min_K E_\nu\ell(K,\theta)) | Finite tasks, every DP event inequality, row-stochastic kernels, exact task risk | Exact (R_{D_i}); finite support is a same-factor subproblem | One compact game per factor; finite product priors; no learner-dependent task remains | `step_008` fixes task universe -> `step_009` fixes prior -> simulator | `step_009`; consumers `step_012`, `step_013` | Infinite ambient class/output passes by finite restriction; nonrealizable inputs remain in DP constraints | `step-local` | None |
| Hard set, low mass, subcritical budgets | Generated membership and quantitative bridge | VC certificate, ALMM constants, exact (s_i,\pi_i,m_{n,i}) arithmetic | `step_007`, `step_008`; direct derivation | VC pays factor count; large (r_i) dominates every fixed floor/ceiling defect | Same log-star definitions and exact candidate budgets | (w_L<1/128); (m_{n,i}<a_Lr_i) on (H) with displayed (R_0,c) | Exact theorem weights and exact factor budgets export ALMM eligibility | N/A: no changed weights or budgets | Finite partition; discarded mass explicit and charged once | `step_007/008` -> `step_010` -> lower consumers | `step_010`; consumers `step_012`--`step_014` | All-low regime is already ruled out by VC; one-high, floor, and ceiling boundaries pass | `step-local` | None |
| Binomial overflow certificate | Generated coupling-loss control | Optimized binomial Chernoff bound | Primitive block-index law; direct derivation | Factor-four buffer and floor eight give the required uniform upper tail | Exact (L_i\sim Bin(n,\pi_i)) and integer threshold | (P(O_i)\le e^7(2/9)^9<3/2048) with increasing (f(\mu)) above (mu=2) | Exact (n,\pi_i,m_{n,i}) export the ideal/truncated disagreement event | Any local ([0,1])-risk residual is at most (1_{O_i}) | One local subtraction per marginal; never union bounded | Primitive slots -> `step_011` -> simulator/tensor/constant checks | `step_011`; consumers `step_012`--`step_014` | (p=0,n=1,\mu=2), large (mu), and (k=1) pass | `step-local` | None |
| Hidden-factor learner and one-use bridge | Exact factor-DP reduction and same-target coupling | Sequential one-use embedding, constant overflow branch, one call to global learner | `step_009`--`step_011`; direct construction | One input replacement changes zero or one assembled global row; full product realizes utility inputs | Factor inputs stay in (X_i); global replacement adjacency and arbitrary labels match; output restriction is improper-allowed | Conditional auxiliary-randomness adjacency plus A's DP; off overflow exact experiment equality | Fixed priors, block slots, input stream, global DP, and candidate delta export eligible (B_i) | Off overflow same (c_i,D_i), sample, output, and risk; only residual (eta_0) | No row reuse or privacy composition; one bounded event residual | Priors/hard set/overflow -> `step_012` -> tensorization | `step_012`; consumer `step_013` | No requested row uses no input; overflow branches before unavailable read; used/unused replacement and nonrealizable inputs pass | `step-local` | None |
| Product-prior tensorization | Weighted global expected-risk lower | Priors fixed before simulators, common ideal experiment, exact risk identity | `step_009`--`step_012`; finite linearity | Each factor inequality is a marginal of the same joint experiment; output dependence is irrelevant | Full Cartesian target and mixture sampling match exact PAC convention | (E R_D=\sum_i\pi_i E R_{D_i}>(1-w_L)(1/8-\eta_0)) | Hard priors, hard mass, exact couplings, and weights export global lower risk | Every local residual is weighted once; same target on both sides | Finite nonnegative sum; no factor selection or union bound | Producers `step_009`--`step_012` -> `step_013` -> contradiction | `step_013`; consumer `step_014` | One hard factor, zero-risk low factors, correlated outputs, and (k=1) pass | `step-local` | None |
| Numerical PAC contradiction and deterministic witness | Same-risk theorem closure and expectation-to-PAC conversion | PAC bounded-loss ceiling and exact lower certificate | `step_007`, `step_010`, `step_013`; direct arithmetic | Both bounds concern the same global task family and risk | Same PAC threshold/failure convention and fixed candidate | Lower (>32131/262144>31/256); negation gives failure probability (>1/16) | (w_L,eta_0), PAC constants, and candidate condition export exact lower clause | All residuals explicit and strictly dominated | One fixed-candidate comparison; no cross-candidate accumulation | Earlier lower controls -> `step_014` -> final assembly | `step_014`; consumer `step_015` | (n=1), all-low, one-high, equality in delta cap pass | `step-local` | None |
| Candidate-wise final assembly | Exact theorem closure and scope guard | Accepted upper and lower interfaces; sample-complexity definition | `step_003`, `step_005`, `step_006`, `step_014` | Each interface is invoked only on its proved parameter scope | Upper arbitrary-delta and lower candidate-wise modes remain distinct | Lower uses both conjuncts at current (n); sandwich only at admissible (n_*) | Exact clause outputs export exact setting goal | No expectation-only or uniform-delta surrogate | No cross-candidate or limiting accumulation | Earlier theorem outputs -> `step_015` -> final theorem | `step_015`; final theorem consumer | If condition fails at (n_*), lower is inactive and only upper remains | `step-local` | None |
| One-factor upper and lower baselines | Baseline invariance obligation | Yan source; VC and ALMM sources; zero overflow | Same producers as general theorem specialized at (k=1) | Upper is same improper factor result; lower combines constant and log-star regimes | Same class, target, distribution, risk, privacy mode, and candidate condition | (\rho_1=\pi_1=1), (m_{n,1}\ge4n), so no coupling loss | Exact one-factor quotas and lower sources export original baseline conclusions | No stopped, remainder-only, proper, finite-cardinality, or expectation-only replacement | No factor aggregation | Source steps -> `step_015` baseline specialization | Final theorem consumes both baselines | (d_1=1) uses VC; large (r_1) uses ALMM; overflow is zero | `step-local` | None |

## Hard-Step Localization Audit

All unresolved obligations pass the Step-Locality And Theorem-Contract Gate.

- `step_001`, `step_003`--`step_007`, `step_010`, `step_011`, and `step_013`--`step_015` are direct structural, concentration, coupling, arithmetic, or logical derivations with exact interfaces and existing primitive or accepted-derived sources.
- `step_002` is source-local: the source identity, version, labels, (TD+1) endpoint, privacy substitution, convention bridge, known nonoutputs, and exact consumer interface are fixed.
- `step_008` is source-local: the precise expected-loss premise, resampling privacy map, threshold witness, delta/sample translation, known PAC-corollary nonoutput, and required expected-risk conclusion are fixed and source-supported.
- `step_009` is local finite convex analysis: the fixed finite task universe, full improper output vectors, nonrealizable-input DP constraints, compactness, strict continuity, and minimax output are all fixed.
- `step_012` is local construction: the simulator is total on every factor database, priors are fixed first, every input row is used at most once, overflow is input-independent, and the sole target residual is already quantified.

None of these tasks requires a new assumption, changed algorithm, changed dependency, changed output target, changed metric or probability mode, new mechanism source, weakened conclusion, or altered candidate scope. No obligation is a `sketch/interface defect` or `idea/theorem-contract defect`.

## Early Idea-Failure Screen

- Contract contradiction: none; every needed property is allowed by the setting and has a producer.
- Missing mechanism: none; positive and lower sources are full Cartesian freedom, unseen fair labels, Yan's factor learner, ALMM's expected-accuracy probability jump and finite threshold witness, the factor-four buffer, compact minimax, and one-use embedding.
- Source-convention stress: passes for replacement adjacency, arbitrary improper outputs, binary relabeling, empirical/population risk equality on uniform databases, and log-star/sample translations.
- Residual-to-target stress: passes; overflow is the only nonzero transfer residual and is dominated in the exact consumed factor and global risks.
- Persistent-defect and accumulation stress: no persistent, additive-over-time, adversarial-sign, or unbounded defect exists; all sums are finite and every defect is charged once.
- Entry/boundary stress: passes at (k=1), (d_i=1), (m=8), (\rho_i=0), no requested row, overflow, (n=1), (mu=2), infinite ambient factors, padding, nonrealizable neighbors, and candidates outside the lower delta condition.
- Generated-condition stress: every event, prior, hard-set certificate, simulator, and risk lower bound has an earlier noncircular producer.
- Dependence/mode stress: no hidden factor cardinality, horizon, approximation, or uniform-candidate dependence appears.
- Baseline invariance stress: both one-factor conclusions are preserved, and the lower proof returns from expectation to the exact PAC failure event.
- Same-setting repair plausibility: no repair is needed. The remaining substantial work is precisely local proof and source instantiation under the accepted interfaces.

## Review Rationale

The diagnostic is contract-complete, exact-goal faithful, and detailed enough to allocate local proof work. Independent primary-source checks support the two nonstandard wrappers, including the (TD+1) endpoint in Yan and the (1/8) expected-risk route in ALMM. The finite minimax game fixes its task universe before the learner, the hidden-factor reduction is total and one-use on arbitrary neighboring inputs, all factor bounds coexist in one prior-before-simulator experiment, and the final PAC contradiction is in the exact theorem risk with strict numerical slack. Every unresolved item is therefore genuinely `step-local` under the unchanged sketch, making `ACCEPTED` with retry target `None` the smallest sound decision.
