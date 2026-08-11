# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_1/idea_6`.
- Sketch attempt: 1.
- Reviewed `setting.md`: SHA-256
  `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`.
- Reviewed `proof_sketch.md`: SHA-256
  `97ca4a325c425bd2abf3ea13d6f68be96a3d7bd182f1d939a69127a44ff97bf3`.
- Reviewed `proof_sketch_review.md`: SHA-256
  `ca663c02a0b7a5975297cdf2a2244fb91c597aa2ccec8ad72ba353402c3528af`;
  it accepts the current sketch.
- Reviewed `global_proof.md`: global-proof attempt 1, SHA-256
  `84bc99505cf60c48a72deaaa4523731acec0d98cb799f55c463d1b22668fde01`,
  with `Status = PARTIAL_BLOCKED` and `Suggested Routing = None`.
- Goal mode: exact-goal. Progress type: conditional.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None.

## Required Repair Bundle

None.

## Contract And Status Audit

The reviewed diagnostic contains every required section: frozen identities,
controlled status, attempted theorem claim, a whole-proof draft with G1--G13,
the theorem-level block map, complete sketch-step coverage, dependency and
assumption audit, citation and tool audit, quantitative audit, scope and
closure certificate, exported-interface audit, generated-output flow, early
obstruction analysis, hard-step list, diagnostic-boundary note, and suggested
routing. `PARTIAL_BLOCKED` with `Suggested Routing = None` is an allowed and
aligned pair because the document identifies only unresolved local proofs.

The diagnostic explicitly denies itself proof-evidence, citation-source, and
assumption-source status. It does not consume stale idea-5 proofs or change an
accepted step claim. Its level of detail is sufficient to audit all hard
interfaces, including the repaired quotient chronology, without a
`/global-proof` rewrite.

## Claim And Sketch Fidelity Audit

The attempted claim preserves the formalized setting and accepted sketch:
the asymmetric realized CP tensor, the exact SC-JEP-ALS proposal and cyclic
refinement procedure, the eight primitive `assump:*` inputs, the rank
`ceil(C_rank r^(5/3)(log r)^(5/2))`, the original relative Frobenius target,
the nested smoothing and conditional initialization probabilities, and the
listed polynomial runtime dependence. Generated geometry, coverage,
certification, clustering, first-sweep entry, target-span membership, quotient
contraction, and stopping remain conclusions rather than admissibility
conditions.

The diagnostic also preserves the accepted semantic repair exactly. A full
quotient state has one represented-product field
`e=(C_U,C_V,C_W,s)`. The proof-only states are
`e_U=(C_U^+,C_V,C_W,s_U^+)`,
`e_V=(C_U^+,C_V^+,C_W,s_V^+)`, and
`e_W=(C_U^+,C_V^+,C_W^+,s_W^+)`; the first two product values are overwritten.
No raw modewise amplitude, intermediate full-state contraction, projection,
filter, or extra algorithmic update is introduced. The deterministic
orthogonal equal-weight conclusion is retained as an algebraic specialization,
not as a probability statement at `rho=0`.

## Theorem-Level Structure Audit

All thirteen accepted blocks have a coherent role and an accepted Step ID:
G1 produces realized geometry; G2--G3 produce the rare window and all-target
coverage; G4 produces recurrence closure, a chart, and stored certificates;
G5 produces the same-state equation and no-label ledger; G6 produces weighted
classification, graph clusters, and signs; G7 closes selected row and column
mass; G8 transfers to the exact target quotient; G9 performs the one sourced
cyclic sweep into the exact target spans; G10 constructs the refreshed
quotient full-sweep map and contraction; G11 converts it to the original
stopping rule; G12 amplifies conditional success and accounts for runtime; and
G13 proves the inherited exact baseline.

The dependency order is unchanged from the accepted sketch. In particular,
G9 retains the mixed `tau_r^2` and coherent `r tau_r^4` defects and proves
range entry before G10 consumes target-span membership. G10 defines only
solved-coordinate outputs for individual blocks and exports contraction only
for the completed state `e_W`. G11 and G12 therefore have a legal upstream
producer. Final assembly keeps the two probability quantifiers nested.

## Dependency And Assumption Audit

The eight named assumptions are the only primitive theorem conditions. Every
other theorem-facing object is classified as derived and has a producer before
its first consumer. The main generated path is

`E_sm -> E_win -> E_cov -> E_RS/E_chart/E_cert ->
E_cert_eq/E_cert_tail -> E_support_wt/E_cluster/E_gauge ->
E_col/E_row_residual/E_row -> E_best/E_quotient ->
E_pair_entry/E_parallel_entry -> E_basin_parallel -> E_stop -> E_restart`.

The internal G10 path is also legal:

`E_parallel_entry -> canonical balance -> U_U^q -> Refresh_s^U/e_U ->
U_V^q -> Refresh_s^V/e_V -> U_W^q -> Refresh_s^W/e_W ->
Psi^q -> E_basin_parallel`.

Exact scale equivariance makes each solved direction/product pair independent
of the incoming common product and replaced direction. Each refresh is
quotient-equivalent to the corresponding literal ALS intermediate, so no
consumer receives a historical or incompatible product field. Local lemmas
may condition on their accepted dependency outputs, but the final theorem does
not complete an unconditional claim by assuming a generated condition.

## Citation And Tool Audit

The standard tools are assigned to exact branch objects and limited to their
actual outputs. Gaussian norm, linear-form, and inner-product concentration
feed only the finite realized-geometry event; Schur product and Gershgorin
feed the exact Khatri-Rao floor; conditional Gaussian regression and product
tails feed the raw-coordinate window; Banach's theorem is invoked only after
the current chart self-map and derivative bound are to be proved; and the
Hadamard, inverse-resolvent, exact-unfolding, and Moore--Penrose identities use
the setting's Euclidean Grams, cyclic order, active factors, and frozen zero
columns. Their raw assumptions, quantitative margins, boundary branches, and
downstream interfaces are exposed as local obligations rather than deferred
by category name.

The only theorem-critical external source is Andre Uschmajew, *Local
Convergence of the Alternating Least Squares Algorithm for Canonical Tensor
Approximation*, SIAM J. Matrix Anal. Appl. (2012), DOI
`10.1137/110843587`, specifically Assumption 1, Lemma 3.2, and Theorems 3.3
and 3.5. Its role is restricted to the qualitative quotient and cyclic
block-Gauss--Seidel interpretation. The mapped objects are the active exact
rank-`r` CP objective and its positive component-scaling quotient. `step_008`
must independently establish the current scaling kernel, pair floors,
target-span entry, canonical refresh identity, numerical radius, `ell`,
zero-padding bridge, and same-target residual comparison. Those are recorded
as known non-outputs of the citation, so the source is not used to export an
unsupported numerical claim. The NeurIPS 2025 paper is procedure context only
and supplies no theorem-critical conclusion.

## Quantitative Dependence Audit

The diagnostic preserves the exposed variables and all quantitative modes.
The smoothing event depends on `n,r,kappa_0,rho,delta_sm`; proposal and
certification expose `r,k,q_real,Gamma,tau_r,L_burn,L_cert`; refinement exposes
`kappa_0,epsilon,rho_ALS`; and restart/runtime expose `delta_init` without
putting confidence dependence into `k`. Hidden constants are universal or
depend only on the fixed regime exponents, not on the base triple or an
unlisted generated condition number.

The numerical ledger is internally consistent:

- `p_win = Theta(r^(-5/3)(log r)^(-3/2))` and the chosen `k` give
  `k p_win` of order `log r`.
- `tau_r=q_*^2/(10^4 r)`,
  `omega=q_*^2+r tau_r<6.0e-8`, and
  `beta_perp<10^(-8)omega` retain every first-sweep defect class.
- `4096(omega+beta_perp)<rho_ALS/3` with `rho_ALS=1/1024`, so the produced
  entry has strict room inside the target-span tube.
- `ell=8q_*+32rho_ALS=0.033203125<1/16`; hence the all-sweep geometric budget
  is below `16/15`, while the public stopping argument may safely use `1/4`.
- Counting the entry sweep as sweep one,
  `m>=1+ceil(log(8kappa_0^2/epsilon)/log 4)` gives the displayed original
  relative-residual bound.
- `p_0>=1/2` and independent full runs give the finite failure product used by
  `J=O(log(1/delta_init))`.

The stochastic statement remains nested rather than merged. The exact
orthogonal equal-weight stationary specialization has zero certificate
residual, zero refresh registers, and zero final residual; no `tau_r` floor is
substituted for that baseline.

## Scope And Closure Review

The scope-and-closure certificate covers every theorem-critical generated
condition and gives a source, a concrete control relation, an accumulation
classification, a producer path, a boundary trace, and an obligation-locality
verdict. G1--G3 use finite static or finite-slot unions. G4 uses the displayed
`R,S,a` recurrences, a positive denominator, a chart self-map, and finite
geometric displacement. G5--G8 use finite algebraic ledgers, explicit defect
splits, strict margins, and one-time row/column absorption. G9 charges all
unknown-sign perpendicular terms during exactly one sweep and removes them
mode by mode by exact unfolding range containment.

The all-time G10 row passes the Noncircular Closure and Scope-Accumulation
gates. Its entry is produced by G9. For a held-direction discrepancy `D_h`,
the fixed coordinate-output interface is

`max{c_M^out,||Delta s_M^out||_infinity} <= ell D_h`.

Sequential substitution yields U and V outputs at most `ell D`, the W output
and final product at most `ell^2 D`, and the completed-state bound
`d_Q(Psi^q(e),Psi^q(e'))<=ell D`. Perpendicular and additive post-entry
forcing are exactly zero, historical product registers are overwritten, and
the concrete recurrence `||e^(t+1)||_Q<=ell||e^t||_Q` has the stated finite
geometric budget. Intermediate states need only remain legal; the diagnostic
does not assert that they contract as full states.

The Entry-State / Activation Trace Gate also passes. The first contracted
sweep starts from the actual exact-span state produced by G9 with norm below
`rho_ALS/3`; U, V, and W are traced in their literal chronological order; the
exact target is fixed; a pure product-one rescaling has zero quotient distance;
and singular pairs and zero-score branches are excluded before the relevant
map is consumed. G11 uses the same realized tensor and original Frobenius
loss, G12 uses finite independent conditional trials, and G13 separately
checks the exact stationary baseline. No generated output is exported by a
closure or assembly label without a producer, and no transformed, whitened,
population, or reference-operator surrogate requires an unproved target
bridge.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_sm` | Static realized geometry and pair nondegeneracy | Base norm/Gram/weight slack; Gaussian concentration; Schur/Gershgorin | Five geometry and smoothing primitives -> `step_001` | Produces exact norm floor, `q_real`, `Gamma`, and cyclic pair floors | Same normalized realized columns and Euclidean Grams as the setting | Separate linear, quadratic, and normalization margins; off-diagonal pair mass `<=q_*^2` | Base margins, union factors, and target thresholds are exposed before export | Produced realized factors are exactly those consumed later | Finite static tail union; no recurrence | Primitives -> G1 -> every geometry consumer | `step_001` produces `E_sm`; G2--G4 and G9--G10 consume it | Orthogonal zero-smoothing boundary is exact; zero norm and singular pair boundaries are excluded by margins | step-local | None |
| `E_win,E_cov` | Rare activation, all-target coverage, and rank rate | Conditional Gaussian regression/product tails; independent slots | `E_sm` and initialization primitive -> `step_002,003` | Raw target window gives exact `R_0,S_0`; slot miss gives coverage | Raw coordinates and old-state target ratios match `setting.md` | `p_win=Theta(r^-5/3(log r)^-3/2)`; `Pr(miss j)<=exp(-kp_win)`; `kp_win>=8log r` | `a_*,b_*,k`, finite-small-`r` comparison, and no cross-target-independence premise are exposed | Window object and consumed target-relative ratios coincide | Finite competitor-tail and slot-miss unions | G1 -> G2 -> G3 before chart or restart use | `step_002` produces `E_win`; `step_003` produces `E_cov,p_0`; G4, G6, G12 consume them | A miss is a run failure; a covered entry has nonzero target coordinates and `R_0<=19/20` | step-local | None |
| `E_RS,E_chart,E_cert` | Denominator invariant, finite proposal convergence, and stored-state producer | Exact simultaneous Jacobi expansion and Banach chart | `E_sm,E_win,E_cov` -> `step_004` | Same old state drives all three recurrences and the stored state is compared with its own look-ahead | Projective signs, ratios, and Euclidean chart agree with the procedure | Displayed `R,S,a` recurrences; denominator `>=31/32`; chart self-map; `L_chart<1/4`; geometric `zeta` decay | Initial pair mass, persistent `q_real`, horizon, chart radii, and contraction-norm floor are explicit | Same realized target and stored state; no post-update surrogate | Persistent `q_real` is absorbed in a fixed chart over a finite `O(log r)` horizon | Coverage -> recurrence -> chart -> certificate, all before G5 | G4 produces `E_RS,E_chart,E_cert`; G5--G6 consume them | First update has positive denominator; `q=0` gives exact pair products; zero contraction makes the run unsuccessful | step-local | None |
| `E_cert_eq,E_cert_tail` | Same-state equation and exhaustive no-label support ledger | Multilinearity, vector-level Gram expansion, scalar cancellation | `E_cert,E_sm` -> `step_004b` | Exact right-side sign equation and barred wrapper; all LOW/singleton/multi/straddle branches covered | Same stored directions, `diag(lambda)`, right-side signs, and proof-only product-preserving bars | `eta_G=2q_*+q_*^2`, `eta_N=5q_*^2`, `eta_C=2sqrt(r)tau_r`, retained floor and profile/tail bounds | Positive contraction norm, finite residual, weights, thresholds, and uncontrolled-class check are exposed | This row compares each state only with its own contraction; target transfer is correctly deferred | One sign-unknown residual per mode/slot; finite support conversion charged once | Certificate -> same-state equation/ledger before any label or clustering | G5 produces `E_cert_eq,E_cert_tail`; G6--G7 consume them | Finite `q=0` transient retains residual; stationary state has zero residual; `d_M=0` is an unsuccessful branch | step-local | None |
| `E_support_wt,E_cluster,E_gauge` | Weighted support, observable clustering, and sign/product gauge | G5 weighted profile and strict score/graph margins | `E_cert_eq,E_cert_tail,E_sm,E_cov` -> `step_005` | Component and mixture bounds match the exact filter and graph conclusions | Realized weights/correlations and the setting's initialized sign convention are retained | `s_mix*1.01<0.794<0.85s_-`; component ratio `>0.901`; same/cross-target graph gaps | LOW, singleton, multi-support, threshold-straddle, unequal-weight, sign, and tie branches are exposed | Representatives are actual realized directions; sign absorption preserves each initialized rank-one tensor | Finite classification and graph; no iterative forcing | Ledger and coverage precede classifier, graph, permutation, and gauge | G6 produces `E_support_wt,E_cluster,E_gauge`; G7--G8 consume them | Exact component is retained; multi-support, unequal weights, negative/zero scores, and ties are traced | step-local | None |
| `E_col,E_row_residual,E_row` | Selected target-dual row/column small gain | Exact same-state dual equation, per-entry residual, root selection, row absorption | G5--G6 -> `step_006` | Produces the exact induced coefficient and residual interfaces needed by G8 | Same realized target dual, indices, and row/column norms | `chi<=32omega`; per entry `<=2tau_r`; row and column residual mass `<=2r tau_r`; row self coefficient `<1/8` | Diagonal denominator, both roots, separate one-index sums, and all forcing classes are explicit | Ambient certificate residual is transferred directly through the exact target dual | Unknown-sign forcing is finite `r tau_r`; column closure precedes one-time row absorption | Classifier/equation -> column root -> residual -> row closure | G7 produces `E_col,E_row_residual,E_row`; G8 consumes them | Large root excluded by chart; finite `q=0` transient charged; exact state gives zero errors | step-local | None |
| `E_best,E_quotient` | Same-target balanced initialization and projector bridge | Direct tensor expansion, unit norms, exact target projector, product-one balance | G6--G7 and G1 -> `step_007` | Exports exact quotient/Frobenius and `B+N` interfaces used by G9 | Same realized tensor, target spans, signs, and represented-product coordinate | `512omega<rho_ALS/4`; `B-I` row/column `<=48omega`; `G_M^T N_M=0`; columns `N_M<=tau_r` | Scalar, direction, Gram, quadratic/cubic, row/column, and perpendicular classes are separated | Original relative Frobenius metric and exact target projector; no surrogate object | One finite expansion; no recurrence | Selected controls -> G8 -> G9 | G8 produces `E_best,E_quotient`; G9 consumes the exact decomposition | Exact CP component gives `B=I,N=0,s=0`; zero score and zero norm branches were excluded | step-local | None |
| `E_pair_entry,E_parallel_entry` | First-sweep conditioning and generated exact-span entry | Exact projector Gram identity, pair floor, inverse resolvent, exact unfolding range | `E_sm,E_best,E_quotient` -> `step_007b` | Exact held Khatri-Rao designs and exact literal ALS outputs | Same cyclic order, amplitudes, active factors, Moore--Penrose zero padding, and quotient target | `beta_perp`; cross/pair deviations `96/192`; inverse floor `31/32`; sequential `3072/3456/4096`; all `N_M^+=0` | Mixed `tau_r^2`, coherent `r tau_r^4`, coefficient and amplitude defects are retained and dominated | Outputs are exact `G_M Z_M` states and the same represented rank-`k` tensor, not projections | Unknown-sign perpendicular terms occur for one sweep and disappear mode by mode | G8 decomposition -> G9 inverse/range trace -> exact-span entry before G10 | G9 produces `E_pair_entry,E_parallel_entry`; G10--G11 consume them | Shared-perpendicular adversary is charged at actual `tau_r`; exact target is stationary; singular branch excluded before solve | step-local | None |
| `U_M^q` and `Refresh_s^M` | Solved-coordinate and literal-orbit chronology | Exact block normal equations, scale equivariance, canonical product balance | `E_parallel_entry,E_sm` -> internal G10 chain | Solved direction/product depends only on held directions; refreshed state is the literal intermediate quotient state | Positive product-one scaling action, one shared `s`, and setting's U/V/W order agree | `gamma_j^out=norm_2(T_(M)K_dirJ^-1(:,j))`; output discrepancy `<=ell D_h`; refresh overwrites the common register | Held directions, pair inverse, product formula, sign chart, and consumers are fixed; no incoming-scale forcing | Every `e_U,e_V,e_W` represents the corresponding exact ALS state and tensor | Historical U/V product values are overwritten, not accumulated | G9 entry -> U output/refresh -> V output/refresh -> W output/refresh | G10 produces the three states; each next block and `Psi^q` consume them chronologically | Exact target writes `s=0` at every refresh; pure rescaling has distance zero; zero/singular columns excluded | step-local | None |
| `E_basin_parallel,Psi^q` | Invariant tube, all-sweep contraction, and convergence producer | Target-span invariance, pair positivity, held-input Lipschitz estimates, quotient kernel | G9 entry plus G1 floor -> `step_008` | Completed `e_W` has the exact full-state interface consumed by stopping | Same target spans, quotient action, `d_Q`, represented tensor, and original loss | U/V outputs `<=ell D`; W/final product `<=ell^2D`; completed state `<=ell D`; `norm_Q(e^(t+1))<=ell norm_Q(e^t)` | Entry `<rho_ALS/3`, inverse floor, intermediate legality, zero forcing, and residual comparison are explicit | `e_W` is the literal post-sweep quotient state; balanced comparison controls the original residual | Perpendicular/additive forcing is zero; contractive accumulation has budget `<16/15` | G9 produces membership; G10 proves preservation and recurrence before G11 | G10 produces `E_basin_parallel,Psi^q`; G11 consumes them | First contracted sweep starts at actual exact-span entry; exact target fixed; tube edge and singular-pair boundary traced | step-local | None |
| `E_stop` | Original relative-error conversion and finite hitting time | G9 entry offset, G10 recurrence, balanced same-target comparison | `E_parallel_entry,E_basin_parallel` -> `step_009` | Converts the produced quotient state to the exact procedure's stopping rule | Same active/frozen-zero rank-`k` factors and original Frobenius loss | Residual `<=8kappa_0^2 4^(-(m-1))`; displayed `m` dominates `epsilon` | One-entry offset, conservative factor, residual constant, and inactive columns are exposed | Exact original tensor residual, with no surrogate norm at export | Finite geometric horizon; no additive error floor | Entry and basin are produced before the stopping comparison | G11 produces `E_stop`; G12 and final assembly consume it | Exact target stops immediately; `epsilon` near one remains covered by the conservative bound | step-local | None |
| `E_restart` | Conditional confidence and polynomial total runtime | Independent full-run proposal randomness and per-run success | `E_cov,E_stop` plus randomness/confidence primitives -> `step_010` | Finite failure product and operation count match the conditional theorem | Same fixed tensor across runs; independent proposals; returned output ranked by original residual | `(1-p_0)^J<=delta_init`; total cost is per-run cost times `O(log(1/delta_init))` | `p_0>=1/2`, all unsuccessful phases, refinement horizon, and exposed runtime variables are included | Smallest-residual successful output uses the theorem's exact target metric | Finite independent failures; no all-time or merged-probability upgrade | Coverage and per-run stop precede amplification | G12 produces `E_restart`; final assembly consumes it | `J=1` branch and exact successful run are valid; tensor randomness is not resampled | step-local | None |
| Orthogonal equal-weight baseline | Exact/noiseless invariance and zero-error conclusion | Direct Jacobi substitution and exact CP normal equations | Deterministic specialization -> `step_011` | Exact ratio map, stationary certificate, refreshes, and zero residual match the inherited conclusion | Same algorithm and factors; `rho=0` is explicitly nonprobabilistic | `(A+,B+,C+)=(BC,AC,AB)`; `Psi^q(0)=0`; every refresh writes `s=0` | Diagonal pair Gram and exact stationary state provide the positive source; finite transients remain separate | Produced and consumed tensors are identical at stationarity | Stationary zero defect; no accumulated remainder or positive floor | Direct G13 path, independent of noisy finite-tolerance bounds | G13 produces the exact baseline for final assembly | First update and every refresh are stationary; finite certified transients are not mislabeled exact | step-local | None |
| Final theorem assembly | Nested probability, rank, returned-output, and baseline closure | Static `E_sm`, conditional `E_restart`, `E_stop`, frozen-zero identity, and G13 | G1--G13 -> direct final assembly | Matches the exact-goal quantifier order, rank-at-most-`k` output, original residual, runtime, and baseline | Same once-drawn tensor, conditional proposal randomness, SC-JEP-ALS output, and Frobenius metric | `Pr(E_sm)>=1-delta_sm`; conditional success `>=1-delta_init`; residual `<=epsilon`; nonzero terms `<=k` | Every event, stopping output, cost bound, and deterministic specialization is produced before assembly | Returned tensor and baseline are measured against the exact realized target | Finite nesting and conjunction; probabilities are not merged and no trajectory defect is added | G1 static event -> conditional G2--G12 outputs; G13 supplies the separate deterministic baseline | Final assembly consumes `E_sm,E_stop,E_restart` and the G13 baseline; it exports the attempted theorem | `delta_sm,delta_init` remain separate; unsuccessful runs are charged; exact baseline remains zero | step-local | None |

## Hard-Step Localization Audit

| Step ID | Unresolved theorem-critical obligation | Locality classification | Audit basis |
| --- | --- | --- | --- |
| `step_001` | Three-scale normalized smoothing bounds and pair floors | step-local | Primitive margins, exact convention, union scope, and consumers are fixed. |
| `step_002` | Two-sided target window and competitor-product tail | step-local | Raw coordinates, event, rate, finite-small-`r` bridge, and target interface are fixed. |
| `step_003` | All-target miss bound and `p_0` | step-local | Slot independence and union calculation need no changed dependency or output. |
| `step_004` | Exact recurrences, invariant chart, derivative, and certificate horizon | step-local | Denominator source, concrete recurrences, finite scope, and boundary branches are specified. |
| `step_004b` | Signed same-state wrapper and exhaustive tail ledger | step-local | Sign placement, defect classes, scale conversion, thresholds, and consumers are fixed. |
| `step_005` | Weighted classifier, graph, signs, and unequal-weight cases | step-local | Exact score formulas, strict margins, no-label flow, and boundary alternatives are exposed. |
| `step_006` | Small-root column closure, per-entry residual, and row absorption | step-local | Raw dual equation, both induced norms, forcing budget, and absorption relation are fixed. |
| `step_007` | Best-scalar and exact-projector target transfer | step-local | Same-target decomposition, residual classes, target norm, and exported entry fields are fixed. |
| `step_007b` | Collective pair-Gram audit and exact first-sweep range trace | step-local | Mixed and coherent defects, inverse branches, zero padding, sequential envelopes, and range source are fixed. |
| `step_008` | Canonical quotient, scale equivariance, refresh identities, held-input bounds, kernel, and full-sweep recurrence | step-local | Coordinate codomains, chronology, one-register overwrite, concrete recurrence, source convention, and final interface are all fixed. |
| `step_009` | Same-target residual comparison and sweep count | step-local | The legal completed-state recurrence, one-entry offset, metric bridge, and target threshold are fixed. |
| `step_010` | Restart probability and full operation accounting | step-local | Conditional independence, per-run source, failure product, and cost phases are fixed. |
| `step_011` | Exact stationary baseline and finite-transient distinction | step-local | Direct algebraic source, nonprobabilistic specialization, first-update trace, and zero-floor target are fixed. |
| Final assembly | Nested quantifiers, returned rank/residual, runtime, and baseline conjunction | step-local | All inputs are earlier outputs; quantifier order, metric, rank, and dependence are fixed. |

No hard obligation is a `sketch/interface defect` or an
`idea/theorem-contract defect`. In particular, a future `step_008` worker is
not being asked to invent a map or choose between incompatible gauges: the
accepted sketch and diagnostic already fix the solved-output codomains,
held-direction inputs, three refreshes, completed state, recurrence, and
consumer. Failure of a local derivation may trigger a later retry, but it is
not presently an acceptance blocker.

## Early Idea-Failure Screen

- **Contract contradiction:** none. The target-span and quotient claims use
  properties permitted by the exact CP procedure and do not require a new
  primitive condition, algorithmic operation, theorem mode, metric, or public
  dependence.
- **Missing mechanism:** none at interface level. Positive norm and pair
  floors source all inverses; exact same-state algebra sources certification;
  strict weighted margins source clustering; exact unfolding sources span
  entry and preservation; and held-direction normal-equation estimates source
  the completed-sweep contraction.
- **Source-convention and residual-to-target stress:** all theorem-critical
  objects are the same realized factors, exact active ALS states, scaling
  quotient, and original Frobenius target. The external citation is not used
  for a numerical or refresh output, and there is no transformed or surrogate
  entry object needing an additional bridge.
- **Persistent-defect and accumulation stress:** proposal forcing occurs over
  a fixed finite window; certificate and row defects are charged once; the
  mixed `tau_r^2` and coherent `r tau_r^4` terms occur during one entry sweep;
  and all post-entry additive forcing is zero. The remaining recurrence is
  genuinely contractive and summable.
- **Entry and boundary stress:** the old unrestricted-tube counterexample is
  not in the consumed domain. The actual entry has zero perpendicular fields
  and strict tube margin. The exact target, pure scaling class, singular pair,
  zero contraction, negative/zero score, finite orthogonal transient, and
  stationary baseline branches are each traced at obstruction-level detail.
- **Generated-condition and flow stress:** every event, chart, membership,
  basin, stopping, and baseline conclusion has an earlier producer. No closure,
  specialization, or final assembly label manufactures a missing output.
- **Dependence and baseline stress:** rank, probability, horizon, metric,
  accuracy, and runtime modes are preserved. The deterministic orthogonal
  equal-weight conclusion remains exact and has no positive error floor.
- **Same-setting repair plausibility:** no repair is presently required. The
  diagnostic resolves the prior single-block/full-state obstruction through
  explicit coordinate outputs and chronological overwrite without changing
  the theorem contract.

## Review Rationale

`ACCEPTED` is the smallest sound disposition because the diagnostic is
contract-valid, faithful, complete enough for downstream local work, and its
`PARTIAL_BLOCKED` status reflects only unresolved step proofs. The repaired
G10 chronology has a legal producer-consumer path and a concrete
scope-compatible recurrence; G9 supplies its generated domain; G11--G12
consume the completed state in the original metric; and G13 preserves the
exact baseline. Every hard obligation is therefore local under the unchanged
accepted sketch. This acceptance makes `global_proof.md` usable only as
diagnostic context; it does not certify any of its local derivations as proved.
