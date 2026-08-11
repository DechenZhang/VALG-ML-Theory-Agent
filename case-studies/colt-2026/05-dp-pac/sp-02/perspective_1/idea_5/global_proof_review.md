# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_1/idea_5`
- Sketch attempt: `1`
- Global producer attempt: `1`
- Reviewed `setting.md` SHA-256: `3d1f048cfe58f6ccfbc606d560e7543c57379d84d1859c8dd655e27e81434f58`
- Reviewed `proof_sketch.md` SHA-256: `e2048e550f88bc4fb129aadea810dbfb601451d2cfc885f0272dfb2546f8b5fd`
- Reviewed `proof_sketch_review.md` SHA-256: `ed07df57cca1c8591466f9d70f5699032daae3724832365f51987f7c87345096`
- Reviewed `global_proof.md` SHA-256: `29fe55b5c731f40c454af7ca83b67a9effb5a84705964c7d6fe5c2b04e851105`
- Reviewed `proof_tracker.md` SHA-256: `11f4049e57b487e64fa7bf638769714534e827a35cb8b1e4b10040f478641427`
- Accepted sketch-review status: `ACCEPTED`
- Reviewed global-proof status: `PARTIAL_BLOCKED`
- Reviewed global suggested routing: `None`
- Tracker state: sketch attempt `1` is accepted; global attempt `1` is the current unreviewed row.
- Primary-source preflight: Bun--Livni--Moran, arXiv:2003.00563v3 (22 June 2021), local source archive `<TEMP_ROOT>/blm2003.00563.tar` SHA-256 `8c023b35df7296a311ce59c194857db5701f924db7fc4abf4a63af9aa7eb189c`; extracted `privatelittlestone.tex` SHA-256 `4b4cf5c00ee876ed6abbc37e5fce08f63effbfa68c4ceb4f50f645872a555882`. The checked source is Section 5.2, Theorem 17, label `thm:selection`, together with the displayed learner construction and the fixed-length one-record replacement-DP definition.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The reviewed diagnostic contains every required section: reviewed identity, controlled status, attempted claim, detailed whole-proof draft, theorem-level block map, sketch-step coverage, dependency and assumption audit, citation and tool audit, quantitative dependence audit, scope and closure certificate, generated-output flow, early obstruction analysis, global gaps, diagnostic-boundary note, and suggested routing. `PARTIAL_BLOCKED` is a controlled status and aligns with `Suggested Routing = None`.

The status is justified rather than inherited. Each unresolved obligation is a local proof obligation under an unchanged accepted step claim and dependency interface, and each has a concrete mechanism source, control relation, boundary stress check, and producer-consumer path. No row is merely deferred to a future step as its first mechanism source. The diagnostic boundary is explicit: the derivations remain guidance until separately proved and accepted at step level.

## Claim And Sketch Fidelity Audit

The attempted theorem preserves the exact conditional goal in `setting.md`. It keeps `assump:polynomial-global-stability` as the sole novel primitive hypothesis, fixes `alpha_0=beta_0=1/8` and arbitrary fixed `epsilon_0 in (0,1)`, retains arbitrary improper and computationally unrestricted outputs, and uses the same distribution-free realizable PAC and replacement-adjacency conventions. It preserves the quantifier order in `(SP)`, the universal class-sequence scope, the explicit cardinality correction `u(L)`, every-fixed-`rho` privacy conclusion, and the `conditional` progress label.

The accepted six-step roadmap is unchanged. G1--G6 implement `step_001`--`step_006` in order, with no altered assumption, step target, dependency, generated-output interface, privacy mode, metric, exposed dependence, or conclusion. The inherited baseline conclusions also remain exact: binary recoding preserves risk and arbitrary-output scope; padding preserves the same PAC and DP parameters; and bounded-`q_kappa` sequences retain both `N_kappa=o(L_kappa)` and `delta_kappa N_kappa^rho -> 0` rather than being excluded or replaced by a weaker schedule.

## Theorem-Level Structure Audit

G0 fixes legal ranges. G1 produces the sole private learner and raw BLM bound. G2 produces the class-independent constant, `(SC)`, the exact ceiling, and the exactly-`N_a` padded learner. G3 produces the exact privacy schedule. G4 derives `(AS)` from the primitive sequence premises. G5 derives `(PN)` and the standard source allowance. G6 performs privacy relaxation and the `o(L)` versus `Omega(L)` contradiction. This order is acyclic and accounts for every accepted sketch step and every theorem-facing output.

Every main transition exposes its mathematical interface: (G1.4), the termwise bounds (G2.2)--(G2.7), exact identities (G3.1)--(G3.2), quantified subpower bounds (G4.1)--(G4.10), the ceiling-aware factorization (G5.1)--(G5.6), and privacy/lower-bound comparisons (G6.1)--(G6.2). No closure or assembly label exports an unproved generated condition without a named producer.

## Dependency And Assumption Audit

The only nonstandard theorem-facing primitive condition is `assump:polynomial-global-stability`. Finiteness, nonemptiness, parameter ranges, realizability, size divergence, `(SP)`, and the finite-class counting bound are primitive setup or standard current-notation facts. The BLM learner, `(SC)`, `(LD)`, `(AS)`, `(PN)`, allowance certificate, and final conditional conclusion are all derived outputs with prior producers and legal consumer dependencies.

There is no hidden generated event, invariant, recurrence, stability trajectory, boundedness premise, or local-validity condition. The distribution-specific accurate atom may depend on `Q`, but the producer `G_C`, its cost, the exponent `a`, and the resulting BLM learner kernel do not. Conditionality is therefore exactly the declared primitive theorem hypothesis, not an assumed downstream conclusion.

## Citation And Tool Audit

- **Exact BLM source statement:** The checked v3 source's `thm:selection` assumes a randomized `G:(X x {+/-1})^m -> {+/-1}^X` with an output atom of mass at least `eta` and population loss at most `alpha/2`. It concludes an arbitrary-output `(epsilon,delta)`-DP learner with loss at most `alpha`, failure at most `beta`, and
  \[
  n=O\!\left(\frac{m\log(1/(\eta\beta\delta))}{\eta\epsilon}
  +\frac{\log(1/(\eta\beta))}{\alpha\epsilon}\right).
  \]
  The hidden constants are numerical constants from the displayed stable-histogram and generic-learner construction, so extracting one universal `C_BLM` is legitimate.
- **Distribution-free wrapper:** The source construction partitions its input, calls the fixed `G`, applies a stable histogram, and runs a generic private learner using only `G` and public parameters. It does not take `Q` or the frequent hypothesis as an algorithm input. Thus one distribution-independent `G_C` yields one learner kernel whose pointwise guarantee holds for every realizable `Q`; the atom `h_{C,Q}` is used only in the utility analysis.
- **Source convention:** The source uses `{-1,+1}` labels, the full hypothesis space, and fixed-length samples differing in one example. The pointwise bijection `y -> 2y-1` and its inverse preserve realizability, exact function equality, zero-one loss, iid sampling, and replacement adjacency. Inverse output recoding is postprocessing. The source's proof prose informally says the final learner identifies the frequent hypothesis, but the theorem statement guarantees only an accurate output; the diagnostic correctly consumes only that valid conclusion.
- **Known non-outputs:** The source does not prove the primitive polynomial profile, `(SC)`, `(LD)`, `(AS)`, `(PN)`, properness, or efficiency. The diagnostic assigns each of those obligations to a direct later block rather than to the citation.
- **Direct tools:** Prefix padding is an exact projection under ordered replacement adjacency. Finite-class Littlestone counting uses the same class and base-two convention. The log/log-star comparisons, exponential-versus-polynomial bounds, DP monotonicity, and `o`/`Omega` contradiction are direct current-notation facts with their raw assumptions and boundary cases exposed.

The cited-result source identity, version, label, role, object map, hypothesis discharge, conclusion interface, source-convention bridge, and known non-output boundary are therefore adequate for `step-local` classification.

## Quantitative Dependence Audit

The quantitative interfaces pass independently.

- Substituting `m_C <= q^a`, `eta=q^{-a}`, and `log(1/delta_a)=T` into the exact BLM formula gives (G2.1) with no omitted term. With `x=q^(2a+2)`, `q^(2a)<=x`, `T>=x`, and `log q<=x`, the five source terms are bounded by `xT`, `a xT`, `B_0 x`, `alpha_0^(-1)a x`, and `alpha_0^(-1)B_0 x`. The stated `D_a` and `K_a >= C_BLM D_a` therefore suffice. `K_a` is independent of the class, cardinality, sequence index, distribution, and `epsilon_0`; `epsilon_0^(-1)<=epsilon_0^(-2)` is used in the valid direction.
- The ceiling and padding are exact. `n_C<=A<=ceil(A)=N_a`; `N_a<=1+A`; and ignoring the suffix preserves iid utility and both DP inequalities. A change confined to the ignored suffix produces identical output laws.
- The privacy schedule has `u(L)>=1`, `T>=2`, `delta in (0,1)`, `e^{-u(L)}=1/log(e^e+L)`, and the exact `(LD)` identity. The cardinality term is public and cannot be hidden in a constant.
- For every `t>0`, choosing an integer `p>2/t` in the exact `(SP)` quantifier gives `d_kappa<=L_kappa^(t/2)` eventually, including `d_kappa=0`. Counting gives `ell_kappa<=L_kappa/log 2`, hence `s_kappa=L_kappa^{o(1)}`. The factor `2` is absorbed only after increasing the eventual threshold, so `q_kappa=L_kappa^{o(1)}` with no assumption `q_kappa->infinity`.
- Fixed powers, sums, products, the fixed factor `K_a epsilon_0^(-2)`, and the ceiling preserve the subpower bound. Since the quantity inside the ceiling is at least one, `N<=2A`; arbitrary exponent allocation yields `N_kappa=L_kappa^{o(1)}` and then `N_kappa/L_kappa->0`. If `q_kappa` is bounded, the exact formula separately gives `N_kappa=O(1+u(L_kappa))=o(L_kappa)`.
- For each fixed real `rho>0`, the exact ceiling gives
  \[
  \delta N^\rho\le (2K_a\epsilon_0^{-2})^\rho
  \bigl[e^{-x}x^\rho(1+x)^\rho\bigr]
  \bigl[e^{-u}(1+u)^\rho\bigr].
  \]
  The first factor has a finite supremum for `x>=1`, and the second tends to zero because `u(L_kappa)->infinity`. This covers bounded, unbounded, and oscillating `q_kappa`, as well as the ceiling.
- Taking `rho=3` gives `delta N^3->0`. Since `log(eN)<=N` for every integer `N>=1`, the claimed `delta<=c/[N^2 log(eN)]` follows eventually for every fixed `c>0`.
- If `bar_delta(N)>=delta`, the defining DP inequalities immediately give privacy at `bar_delta` in both adjacency directions. The learner is then eligible for the exact or weaker allowed schedule, while `N/L->0` contradicts every positive eventual `Omega(L)` lower-bound constant.

All exposed variables, fixed quantities, hidden-constant permissions, probability modes, limiting modes, and risk/metric conventions agree with the setting and accepted sketch.

## Scope And Closure Review

The `Scope And Closure Certificate` covers all six theorem-critical obligations and passes the independent gates. The proof has no recursive trajectory or all-time invariant. The applicable accumulated scope is the sequence limit, and each row supplies a concrete pointwise relation rather than a category label.

- G1 has the primitive nonzero atom and audited Theorem 17 as its source; finite source costs are already represented in (G1.4).
- G2 has explicit power slack, termwise domination, ceiling control, and a zero-residual prefix projection.
- G3 has the exact exponent identity and an independently active `u(L)` source on bounded-`q` sequences.
- G4 has the full every-`p`, eventually-all-`kappa` source, exact exponent allocation, and no circular use of the desired sublogarithmic rate.
- G5 has a finite uniform budget `sup_{x>=1} F_rho(x)` and a separately vanishing factor `H_rho(u_kappa)`; no privacy loss is composed across `kappa`.
- G6 consumes only earlier learner and rate outputs, relaxes privacy in the correct direction, and compares the exact same learner/sample/risk interface with Item 3.

Noncircular closure, generated-output flow, exported-interface feasibility, residual-to-target adequacy, source-convention compatibility, and baseline invariance all pass. Entry-state traces are not recurrence traces here; the relevant boundary activations are nevertheless explicit at `q=1`, `L=0`, `d=0`, bounded `q_kappa`, ignored-coordinate replacement, and equality or relaxation of the privacy allowance.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| BLM wrapper and binary-recoding baseline (`step_001`) | Cited conversion; sole private-learner producer | Accurate atom from `assump:polynomial-global-stability` plus BLM Theorem 17 | arXiv:2003.00563v3, Section 5.2, `thm:selection`; exact source and construction checked | Atom mass `>=eta` and loss `<=alpha/2` produce arbitrary-output PAC/DP learning and the exact two-term dependence | Pointwise `{0,1}<->{-1,+1}` bijection preserves functions, risk, iid law, and fixed-length one-record replacement; inverse output map is postprocessing | `n<=C_BLM[m log(1/(eta beta delta))/(eta epsilon)+log(1/(eta beta))/(alpha epsilon)]`; construction uses fixed `G_C` and public parameters only | Fixed `G_C`, `m_C<=q^a`, atom `>=q^{-a}`, risk `<=alpha_0/2`, and legal parameters export one distribution-free learner and raw bound | Source and target hypotheses are exact recodings; risk, atom, adjacency, and output residuals are zero | Finite source batches and selection sample are already priced by the theorem; no cross-`kappa` accumulation | Primitive profile -> recoded `G_C` -> Theorem 17 -> G2/G6 | G1 produces learner/bound; G2 and G6 consume them | At `q=1`, `m_C=1` and `eta=1`; improper/randomized outputs remain allowed | `step-local` | None |
| `(SC)`, universal `K_a`, ceiling, and padding (`step_002`) | Quantitative specialization and baseline-preserving sample interface | Direct algebra from G1 and primitive scalar bounds | G1.4 plus `b=2a+2`, `T>=x`, `q>=1`, fixed `alpha_0,beta_0` | Every BLM term is retained and dominated at the declared `x(1+T)` scale | N/A: exact current-notation scalars; prefix projection uses the branch replacement convention | Bracket `<=D_a x(1+T)`; `epsilon_0^{-1}<=epsilon_0^{-2}`; `K_a>=C_BLM D_a`; `n_C<=N_a<=1+A` | Raw BLM bound and profile controls export an exactly-`N_a` learner with class-independent `K_a` | Used prefix has the exact source law; ignored suffix leaves PAC and DP unchanged, so residual is zero | Log, confidence, error, privacy, rounding, and unused-record defects are separately controlled; fixed-class only | G1 -> G2 -> G4/G6; `(AS)` is not assumed | G2 produces `(SC)`/padded learner; G4 and G6 consume them | `q=1`, `epsilon_0` near `1`, nonintegral analytic bounds, and ignored-coordinate changes pass | `step-local` | None |
| Exact `(LD)` and bounded-`q` privacy activation (`step_003`) | Exact parameter identity and bounded-complexity baseline | Direct evaluation of public `u,T_a,delta_a` | Primitive definitions in `setting.md` | Supplies the exact privacy parameter consumed by BLM, `(PN)`, and final assembly | N/A: direct current-notation scalar identity with declared natural logs | `u(L)>=1`, `T=q^b+u>=2`, `e^{-u}=1/log(e^e+L)`, and `log(1/delta)=T` exactly | Raw `q>=1,L>=0` export `delta in (0,1)` and the explicit cardinality-aware logarithm | Produced and consumed privacy parameters are identical; residual zero | No composition; when `q` is bounded, the independent `u(L)->infinity` term prevents persistent nondecay | Definitions -> G3 -> G5/G6; `(PN)` is not assumed | G3 produces schedule; G5 and G6 consume it | `L=0` gives `u=1`; `q=1`; bounded and unbounded `q_kappa` all keep the source active | `step-local` | None |
| `(AS)` from exact Item 2 quantifiers (`step_004`) | Sequence mode conversion and sublogarithmic sample closure | Full `(SP)`, size divergence, finite-class counting, direct log/log-star bounds | Primitive sequence premises and `ell<=log_2 card(C)` from the setting | Controls the exact target variables `d,s,q,T,N,L` under the required quantifier order | N/A: direct current-notation derivation; natural-log and base-two conventions are explicitly bridged | Choose `p>2/t`; obtain `d,s<=L^(t/2)`, `q<=L^t`; propagate arbitrary exponents through `x,T,A`, then `N<=2A` | Exact formulas and fixed constants export `q,T,N=L^{o(1)}` and `N=o(L)` with no proxy benchmark | Ceiling and fixed factors are absorbed at arbitrary target exponent; all controls are on the consumed `N,L` | Eventual pointwise inequalities only; no sum, union, persistent, or adversarial-sign accumulation | Item 1/`(SP)`/counting -> G4 -> G6; sublog growth is not a premise | G4 produces `(AS)`; G6 consumes it | `d=0`, `d=1`, bounded `ell`, bounded `q`, and no `q->infinity` assumption pass | `step-local` | None |
| `(PN)` and ceiling-aware negligible privacy (`step_005`) | Limiting privacy closure at the exact learner sample scale | Exact G3 schedule, exact `N_a`, `x=q^b>=1`, and `u(L_kappa)->infinity` | Derived G2/G3 formulas plus primitive size divergence | Controls `delta_kappa N_kappa^rho` for every fixed real `rho>0`, uniformly in all `x_kappa` behavior | N/A: direct current-notation scalar derivation on the exact theorem quantities | `N<=2K_a epsilon_0^{-2}x(1+x+u)` and `delta N^rho<=C F_rho(x)H_rho(u)` with `sup F_rho<infinity`, `H_rho->0` | Exact `N,delta,x,u` and the ceiling export `(PN)` and the source-allowance certificate | Ceiling contributes only a fixed factor; every residual is dominated at the required `N^{-rho}` scale | Pointwise sequence product, not privacy composition; arbitrary/oscillating `x` has a finite uniform budget and the `u` factor vanishes | G2/G3 and Item 1 -> G5 -> G6; negligibility is not assumed | G5 produces `(PN)`/allowance; G6 consumes them | Constant `q` including `q=1`, unbounded/oscillating `q`, and noninteger fixed `rho` pass | `step-local` | None |
| `rho=3` allowance, privacy monotonicity, and Item 3 contradiction (`step_006`) | Public specialization and final theorem closure | Padded learner, `(AS)`, `(PN)`, defining DP inequality, and definition of eventual `Omega` | Derived outputs G2--G5 and direct current-notation definitions | Same unrestricted learner is below the linear lower scale and is private at the exact or any larger allowed delta | Same class, sample, risk, output, and replacement metric; only the additive privacy allowance is relaxed | `delta N^3->0`; `log(eN)<=N`; `delta<=bar_delta(N)` implies DP; `N/L->0` contradicts `N>=c_*L` eventually | Exact learner, exact sample count, and exact privacy/rate certificates export the conditional nonexistence theorem | No object transfer; privacy relaxation has zero learner/risk residual and only enlarges allowed delta | Pointwise learners and eventual inequalities; arbitrary fixed `c,c_*` are handled without cross-class composition | All prior producers -> G6 -> final theorem; Item 3 failure is not used upstream | G6 produces final claim | `bar_delta=delta`, larger allowances, every positive lower-bound constant, and bounded `q` pass | `step-local` | None |

## Hard-Step Localization Audit

- `step_001`: `step-local`. The exact source identity, theorem label, object map, parameter range, distribution-free kernel construction, output scope, recoding, and adjacency bridge are fixed.
- `step_002`: `step-local`. The source terms, universal constant, dominance inequalities, ceiling, and exact padding interface are fixed under the accepted output target.
- `step_003`: `step-local`. The privacy parameter is an exact direct identity with explicit bounded-`q` activation and no missing source.
- `step_004`: `step-local`. The full `(SP)` quantifier, counting source, exponent allocations, ceiling propagation, `d=0`, and bounded-`q` branches are fixed.
- `step_005`: `step-local`. The exact ceiling relation, uniform `x` budget, vanishing `u` factor, every-fixed-`rho` quantifier, and source-allowance specialization are fixed.
- `step_006`: `step-local`. The learner/rate inputs are prior generated outputs; privacy monotonicity and the `o`/`Omega` contradiction use the exact same target interface.

No hard obligation requires a changed sketch step, dependency, assumption, generated-condition interface, mechanism source, theorem scope, privacy mode, metric, exposed dependence, success criterion, or conclusion.

## Early Idea-Failure Screen

- **Contract contradiction:** None. The result is explicitly conditional and does not claim an unconditional resolution.
- **Missing mechanism:** None. Every hard obligation has an existing primitive, cited, or direct current-notation source; a future proof step only derives the fixed relation.
- **Source-convention stress:** The BLM label, output, adjacency, parameter, and distribution-free interfaces match after exact recoding. No properness or efficiency restriction is imported.
- **Residual-to-target stress:** Recoding and padding have zero residual. All scalar bridges use the exact `q,L,T,N,delta` consumed by the theorem.
- **Persistent-defect stress:** No additive privacy or probability defect is accumulated across `kappa`. The only limiting product has a concrete finite `x` budget and vanishing `u` factor.
- **Limiting and boundary stress:** `q=1`, `L=0`, `d=0`, bounded/oscillating/unbounded `q_kappa`, noninteger fixed `rho`, ceiling effects, ignored-record changes, and exact/larger privacy allowances all preserve an active mechanism.
- **Entry-state trace:** No recursive or iterative theorem-critical process is used. The applicable first-use traces are explicit: the source atom is active at `q=1`, the cardinality correction is active on bounded-`q` sequences before rate consumers, and padding ignores the suffix before the source kernel is evaluated.
- **Generated-condition and flow stress:** Every learner, schedule, rate certificate, and final conclusion has a legal prior producer and dependency path. No closure or assembly label creates a new output.
- **Dependence and mode stress:** `K_a` has the permitted dependence, `epsilon_0` and `rho` are fixed before sequence limits, and no fixed-distribution, pointwise, or fixed-sample statement is upgraded to an unsupported uniform mode.
- **Baseline invariance:** Binary risk/output scope, exact PAC/DP padding, and bounded-`q` sample/privacy conclusions are preserved rather than weakened.
- **Same-setting repair plausibility:** No repair is required. The truth of the universal polynomial global-stability profile remains the theorem's explicit primitive hypothesis and the exact unresolved conditional gap, not a missing bridge in this proof.

## Review Rationale

The reviewed diagnostic is contract-valid, faithful, and sufficiently detailed for downstream step work. Direct source inspection confirms the only external theorem interface. Independent algebraic and quantifier checks confirm the universal constant extraction, ceiling and padding, explicit privacy schedule, bounded-`q` asymptotics, every-fixed-`rho` privacy decay, privacy monotonicity, and the Item 3 contradiction. All six unresolved obligations are genuinely `step-local` under the unchanged accepted sketch, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest sound decision.
