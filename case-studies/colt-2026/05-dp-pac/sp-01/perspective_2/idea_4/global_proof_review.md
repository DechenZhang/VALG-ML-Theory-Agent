# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_2/idea_4`
- Sketch attempt: 1
- Global-proof producer attempt: 2
- Global-proof review attempt: 2
- Binding setting: `perspective_2/idea_4/setting.md`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Reviewed proof sketch: `perspective_2/idea_4/proof_sketch.md`
- Reviewed proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Reviewed proof-sketch review: `perspective_2/idea_4/proof_sketch_review.md`
- Reviewed proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Upstream sketch-review status: `ACCEPTED`
- Reviewed global proof: `perspective_2/idea_4/global_proof.md`
- Reviewed global-proof SHA-256: `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
- Reviewed global-proof status: `PARTIAL_BLOCKED`
- Reviewed suggested routing: `None`
- Triggering review identity: review attempt 1, SHA-256 `0ffdf7e2a917a4d33774dba38ad3c75887ddbb6fdb58ccb4f9e8352b2d150939`, status `REVISE_GLOBAL`, target `/global-proof`
- Independently checked primary source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, official source archive; `submission/main.tex` SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The reviewed diagnostic contains every required section: a controlled status, attempted theorem, whole-proof draft, theorem-level block map, coverage of `step_001` through `step_016`, dependency and assumption audit, citation and tool audit, quantitative audit, scope-and-closure certificate, exported-interface table, generated-output flow, early-obstruction screen, hard-step list, diagnostic-boundary note, and suggested routing. `PARTIAL_BLOCKED` with `Suggested Routing = None` is valid because the diagnostic exposes a coherent theorem-level architecture while leaving only fixed-interface proof derivations to the accepted steps. It neither treats itself as proof evidence nor changes a sketch claim.

The triggering review's document-level defect has been repaired. Block K no longer relies on "same," "verbatim," or "repeat" shortcuts: (K.1)-(K.31) give an independent old-arm dictionary, event, source map, support recurrence, mechanism, privacy proof interface, SOA certificate, marked reconstruction, confidence ledger, rate, and optional schedule. The dependent block map, certificates, exports, flow rows, obstruction screen, and hard-step notes now identify those concrete producers.

## Claim And Sketch Fidelity Audit

The attempted theorem preserves the exact conditional goal and its quantifiers. It assumes only finite Littlestone dimension, a finite-or-countable measurable evaluation quotient, realizable iid sampling for utility, and the declared approximate-DP parameter regime. It retains all-input raw replace-one privacy, the quotient release in `H_C`, exact decoded binary risk, improper outputs, the displayed `R_VC`, `R_old`, and `R_fin` dependences, and unconditional confidence over sampling and learner randomness.

The restriction to countably many evaluation types remains explicit; no unrestricted solution or `poly(v,log d)` claim is introduced. The `d=0` no-data law, `v=d` return to the `d^5` scale, independently valid old arm, finite-class arm, infinite-class disabling of only the finite arm, and fixed-versus-scheduled-`delta` distinction are all preserved. No accepted step, dependency, assumption, output target, or generated-output allocation is changed.

## Theorem-Level Structure Audit

Blocks A-C produce the parameter tuple, quotient bridge, kernels, and released/marked-law interfaces. Blocks D-F produce the finite trace event, exact source/current structural wrapper, and finite DDim support closure. Blocks G-I produce an actual item, all-input privacy, the exact SOA empirical certificate, and the marked population reconstruction. Block J exports the complete VC-sensitive arm. Block K independently exports the old arm through (K.8), (K.20), (K.22), (K.28), and (K.30), with (K.31) isolated as an optional sequence statement. Block L proves the finite arm and compares thresholds only after the two Lyu arms are complete.

This order covers all sixteen accepted steps and is acyclic. In particular, the final minimum does not certify an arm, the mark is not released, source-good events are not used for privacy, and neither old-arm confidence nor its rate is borrowed from the VC-sensitive arm.

## Dependency And Assumption Audit

Every theorem-facing nonprimitive condition has a legal producer before use. Block B produces quotient dimensions, pushforward sampling, raw-neighbor preservation, and exact risk. Block C produces measurable pointwise and raw kernels. Blocks D-F produce the event, lists, leaf witnesses, potential, and common item. Blocks G-I produce mechanism success, privacy, empirical loss, projection, and population success. Blocks J, K, and L then normalize complete arm tuples.

The old path is independently forward: (K.1)-(K.7) fix its tuple before sampling; (K.8) produces its kernel; (K.9)-(K.12) produce and charge its event; (K.13)-(K.17) produce lists and common support; (K.18)-(K.20) produce actual output and all-input privacy; (K.21)-(K.28) produce the SOA, marked projection, core-qualified PAC event, and confidence ledger; and (K.29)-(K.31) produce the finite-parameter rate and separately qualified limit. Conditional tail and holdout hypotheses are removed by finite union and tower, not promoted to theorem assumptions.

## Citation And Tool Audit

The official arXiv v1 source supports the uses recorded in the diagnostic. Proposition 2, label `prop:chernoff-sample-without-replacement`, supplies only the high-mean relative without-replacement tail; the near-zero one-sided tail in (D.4) and (K.10) is a separate finite-population mgf/KL derivation. Definition 4.2, `def: p-decomposition`, its existence claim, and Lemma 4.1, `lemma: number of leaves`, supply pointwise decompositions, irreducibility, and the list-size scale, not raw measurability.

Lemma 4.3, `lemma: p-decomposition`, has the required direction `G subset H`, compares optimal `(2p,d)` and `(p,d)` decompositions, and supplies exact SOA equality in the equality case. Definition 4.3 and Corollary 4.1, labels `def: essential hypothesis` and `coro: essential hypotheses`, supply actual-function essential lists, inheritance, existence, and zero-DDim support. Lemma 4.2, `lemma: Ldim-of-SOA`, supplies only the fixed-family Littlestone bound.

Algorithm 1/Lemma 3.1, labels `algo:private sample` and `lemma: privacy of sparse sampling`, support the actual exponential-weight law and one-list replacement privacy; the commented utility statement is not consumed. Algorithm 2/Lemma 3.2, labels `algo: abovethreshold` and `lemma: privacy of abovethreshold`, support sensitivity-one adaptive privacy and the concurrent-composition interface. Theorem 3's malformed displayed `SOA_G(h)` is not used; its proof supports the identity `hat h = SOA_G` and the empirical contradiction. Its unproved probability-one amplification sentence is also excluded. Corollary 5.1 supplies rate lineage only, not quotient-kernel measurability, raw-neighbor transfer, a near-zero tail, marked projection, or the current high-confidence wrapper.

Sauer--Shelah, the without-replacement mgf comparison, the countable-product standard-Borel fact, the Bernoulli lower tail, and the finite exponential-mechanism calculation are all applied to the exact quotient objects and declared probability modes. No source result is asked to bridge a different output, metric, adjacency convention, or population target.

## Quantitative Dependence Audit

The VC arm exposes `d,v,alpha,beta,epsilon,delta`; the finite arm additionally exposes `|C|`. All hidden constants and powers of `Lambda` are universal. Equations (A.1)-(A.3), (D.5)-(D.6), (I.2)-(I.5), and (J.1)-(J.3) expose the teacher, trace, reconstruction, and public-rate controls without hiding another positive power of `d` or `v`.

For the old arm, (K.4)-(K.7) give a noncircular feasible teacher; (K.10)-(K.12) separately control the high and near-zero trace regimes and make `a_o >= d+log(4k_o/beta)` pay the coarse trace multiplicity; (K.24)-(K.27) make the complement exponent dominate `k_o(d+1)L_o`; and (K.29)-(K.30) retain ceilings while exposing block scale `d^3/alpha`, teacher scale `d^2 log(1/(delta beta))/epsilon`, and product scale `d^5 log(1/(delta beta))/(epsilon alpha)`. No VC-arm event or `v`-sensitive estimate enters this calculation.

Kernel, DP, PAC, rate, and the finite-parameter minimum are valid for every allowed `0<delta<1`. The statements `N delta -> 0` and `N_o delta -> 0` are made only under their displayed sequence dominations; fixed positive `delta` is not relabeled as the source asymptotic regime. The probability mode is fixed-sample unconditional PAC, the metric is exact binary population risk, and all repeated operations have finite displayed budgets.

## Scope And Closure Review

All theorem-critical closures are noncircular and scope-compatible. The least feasible teacher has an explicit public witness. The trace events have fixed finite multiplicities and exponents that close their own fixed points before use. The DDim recurrence has zero additive forcing, a one-unit drop, reserve at most `d`, immediate support at zero DDim, and horizon `d+1`. Mechanism utility has an explicit score margin and failure-symbol ratio; privacy is one finite two-component composition. Population reconstruction uses a core-qualified pathwise inclusion before conditioning, a producer-local finite set, and an iid complement.

The repaired old-arm closure has the same required specificity but independent producers: (K.12) closes its trace event; (K.14)-(K.17) close the exact half-scale structural recurrence; (K.18)-(K.20) close selection and every-input privacy; (K.23)-(K.25) put the core event on the marked inclusion before conditioning; (K.26)-(K.28) close multiplicity and confidence; and (K.29)-(K.31) separate finite validity from an optional limit. Entry tests at `d=0`, `d=1`, mean zero, zero DDim, `k=2`, empty restrictions, fallback, finite/infinite `C`, and fixed/scheduled `delta` leave no inactive mechanism with a false exported conclusion.

The generated-output flow and exported-interface tables have legal producer-consumer paths and zero unresolved object residuals. The only nonzero transfer factor is `k/(k-1) <= 2` (and its old analogue), already dominated at the `alpha/4` holdout threshold. Every unresolved derivation is therefore local to an unchanged accepted step.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Feasible tuple and `d=0` law | Activation, totality, null baseline | Least-feasible teacher and public witness; singleton consequence of `LD=0` | Primitive parameter assumptions; Lyu list/privacy formulas | Linear teacher score dominates list/noise logs; null branch is exact | Same source list and privacy conventions; current tuple is explicit | (A.1)-(A.3), `n_0=km`, `p_0>=max{n_0,d+1}` | Primitive parameters fix every threshold, block, and fallback before sampling | Exact learner tuple; no surrogate sample | One deterministic fixed point; ceilings are finite defects | Candidate tuples -> feasible `bar k` -> least `k` -> learner | A/`step_001` -> C-G,J | `d=0`, `d=v=1`, `k=2`, ceiling-dominated `m` pass | step-local | None |
| Quotient dimensions, neighbors, sampling, and risk | Structural/object-target bridge | Evaluation equivalence and pushforward | Primitive measurable countable quotient | Bijection preserves VC/LD witnesses; record map preserves/equalizes one replacement | Binary class, labels, adjacency, decoder, and risk match source/current conventions | (B.1)-(B.4) | Measurable cells, `T_N`, `bar C`, `bar D`, decoder | Zero quotient/raw object and metric residual | Finite exact identities; no accumulation | Primitive quotient -> B before every source/final consumer | B/`step_002` -> C-D,I-L | Repeated fibers, improper output, finite/countable quotient, `d=0` pass | step-local | None |
| Quotient/raw kernels | Generated measurable learner | Countable discrete input and standard-Borel output | Direct product/measurability facts | Pointwise totalized laws have measurable sections | Exact `H_C` output and raw `T_N` pullback | (C.1) and countable risk partial sums | Total pointwise laws, lookup locality, measurable `T_N` | Exact codomain/input transfer | Finite stages on countable input; no selector defect | A+B -> C before DP or PAC use | C/`step_003` -> G,I,K,L | Empty lists, fallback, arbitrary labels, `N=0` pass | step-local | None |
| Marked projection | Analysis-only producer coordinate | Finite occurrence split of joint internal/output law | Direct marked-kernel construction | Actual paths have nonempty occurrence sets; fallback gets mark 0 | Mark uses realized exact lists and is never released | (C.2)-(C.3) | Joint kernel, finite mark space, occurrence sets | Summing marks gives exact released marginal | One finite split; repetitions alter weights only | Released law -> mark -> reconstruction | C/`step_004` -> I; K constructs its own analogue | One/all/no occurrence, fallback, `k=2` pass | step-local | None |
| VC trace event and fixed point | Generated concentration/confidence control | Sauer--Shelah; Lyu Proposition 2 high branch; direct KL low branch | Exact v1 label plus current derivation | Separate sources match relative-high and one-sided-low claims | One marginal uniform block; no conditional block independence | (D.1)-(D.6), `4k(en_0/v)^v exp(-c m alpha/d^2)<=beta_tr` | Exact traces and public `a,Q,m,k` export source thresholds | Same empirical losses; only fixed `gamma` conversion | One finite union; exponent pays trace/block multiplicity | Trace count -> two tails -> fixed point -> event | D/`step_005`-`step_007` -> E,F,H,I | Mean 0, `gamma/3`, repeats, `v=1`, `k=2` pass | step-local | None |
| Source map, lists, and leaf witnesses | Cited structural wrapper | Exact `(2p,p)` decomposition comparison and essential lists | Lyu Definitions 4.2/4.3, Lemmas 4.1/4.3, Corollary 4.1 | Source gives DDim comparison, exact SOA equality, list cap, irreducibility | Missing endpoint defined locally; half-scale lists use uniformity in `p`, not false literal identity | (E.1)-(E.6) | `E_good`, nonempty restrictions, fixed optimal decompositions | Actual quotient functions and exact scales; zero residual | `d+1` finite transitions; empty privacy states totalized | D -> E before structural/mechanism consumers | E/`step_008` -> F-I | First/last stage, empty restriction, `d=1`, DDim zero pass | step-local | None |
| DDim descent and common item | Finite support/termination closure | Lemma 4.3 equality case and Corollary 4.1 zero-DDim support | Checked active source statements plus realizability | Equality forces one actual SOA into every list; zero DDim exposes target | Same actual quotient function is counted | (F.2)-(F.3), `q_r<k => M_{r+1}<=M_r-1`, reserve `M_0<=d` | Inclusion, integer DDim, lists, target membership | Zero common-item residual | Unit drop, zero forcing, finite reserve/horizon | E -> F; termination derived, not assumed | F/`step_009` -> G | `M_0=0`, first drop, `M_d=0`, `d=1` pass | step-local | None |
| Actual output and all-input privacy | Generated selection and theorem privacy | One AT process, one Sparse Sample call, local one-list adjacency | Lyu Algorithms/Lemmas 3.1-3.2 plus direct tails | Score margin excludes fallback; source privacy claims match adjacency after locality proof | Actual-function lists, sensitivity-one queries, arbitrary labels | (G.1)-(G.4) | Teacher margin, list cap, quotient kernel/neighbor bridge, total paths | Literal list output; exact quotient/raw DP | Two finite confidence charges and two-component privacy composition | A+C+E+F -> G before H-I/J | G/`step_010`-`step_011` -> H-I,J | Empty/false/last stage, different transcripts, nonrealizable fallback pass | step-local | None |
| SOA certificate and marked PAC | Same-target empirical/population closure | Leaf SOA/irreducibility; producer-local candidates; iid complement | Lyu Theorem 3 proof only for contradiction; direct mark/tail wrapper | Exact SOA gives empirical loss; pathwise inclusion gives fixed-candidate test | Malformed theorem display and unsupported amplification excluded | (H.1)-(H.3), (I.2)-(I.5) | Actual item, core event, marked kernel, `(d+1)L` cap, iid complement | Same function/target; `k/(k-1)<=2` dominated at `alpha/4` | One contradiction and finite union; no post-mark independence claim | E+G -> H; C+H -> core-qualified I | H/`step_012` -> I/`step_013` -> J/final | Empirical zero, mark 0, `k=2`, repeats, improper output pass | step-local | None |
| VC public rate and schedule | Quantitative arm closure | Explicit teacher/block envelopes and completed DP/PAC tuple | Direct algebra from A,D,G,I | Product has exact `d^4(v+log(1/beta))` profile | Fixed-sample risk/DP modes and displayed variables agree | (J.1)-(J.3) | Every auxiliary has an earlier producer | Only allowed `Lambda` powers remain | One scalar specialization; limit separately conditioned | Completed VC outputs -> J -> L | J/`step_014` -> L/final | `d=0`, `v=1`, `v=d`, fixed/scheduled `delta` pass | step-local | None |
| Old tuple, kernel, and trace event | Independent baseline activation/confidence | Old public teacher witness; coarse trace count; separate high/KL tails | Lyu Proposition 2 high branch plus direct low branch and quotient facts | Old event has its own source-adequate tails and fixed point | Same source thresholds; no VC event borrowed | (K.1)-(K.12) | Old `a_o,Q_o,m_o,k_o,L_o,B_o`, kernel, partition, traces | Exact `H_C,T_N`, empirical errors, decoder bridge | Deterministic fixed point plus finite old trace union | Old tuple -> K.8 kernel -> K.9-K.12 event | K/`step_015` source/support consumers | `d=0`, `d=1`, `k_o=2`, mean 0, fixed `delta` pass | step-local | None |
| Old source map and support | Independent cited-wrapper termination | Endpoint/half-scale bridge, essential lists, integer DDim | Same active Lyu decomposition labels | Exact SOA equality and zero-DDim support close common item | `(2p_o,r,p_o,r)` direction and actual functions match | (K.13)-(K.17) | Old event, restrictions, fixed decompositions, target membership | Exact scale/function transfer | Unit drop, zero forcing, reserve at most `d` | K.9-K.12 -> K.13-K.17 before mechanisms | K/`step_015` -> K.18-K.21 | Empty restriction, zero DDim, first transition, `d=1` pass | step-local | None |
| Old output and raw privacy | Independent generated selection/privacy | Old AT/SS and one-block/list locality | Lyu Lemmas 3.1-3.2 plus old current wrapper | Score margin gives actual item; privacy holds without utility events | Same raw replacement, adaptive transcript, fallback conventions | (K.18)-(K.20) | Old teacher/list cap/kernel/neighbor map and every total path | Literal list output; exact raw pullback | Two confidence charges; finite two-component composition | Old support -> mechanisms/privacy -> old SOA/PAC | K/`step_015` -> K.21-K.28,L | Immediate/last success, `perp`, exhaustion, nonrealizable input pass | step-local | None |
| Old SOA, mark, and PAC ledger | Independent same-target population closure | Old irreducible SOA, exact marked projection, iid complement | Theorem 3 proof pattern plus current direct reconstruction | Empirical contradiction and fixed-candidate tail match exact old objects | Unsupported source amplification is not used | (K.21)-(K.28), especially core-qualified (K.25) and domination (K.27) | Old core, producer union, mark, complement, four confidence shares | Same quotient function/target; factor at most two; exact decoder risk | One deterministic contradiction and finite mark/candidate union | Actual output -> SOA -> mark/core inclusion -> tail/ledger | K/`step_015` -> old rate,L/final | Mark 0, `k_o=2`, empirical zero, finite/infinite `C` pass | step-local | None |
| Old rate and optional schedule | Baseline quantitative closure | Ceiling-aware old parameter envelopes | Direct algebra from (K.4)-(K.7), (K.12), (K.27) | Exposes `d^3` block and `d^2` teacher scales | Same old learner/risk; fixed validity separated from limit | (K.29)-(K.31) | Completed old kernel/DP/PAC tuple | Only allowed `Lambda` powers; no VC residual | One scalar multiplication and separate sequence domination | Completed old tuple -> K.29-K.30; optional K.31 | K/`step_015` -> L/final | `d=0`, `d=1`, fixed and scheduled `delta` pass | step-local | None |
| Finite arm and common minimum | Finite DP/PAC and baseline assembly | Finite exponential mechanism; deterministic threshold choice | Direct finite calculation and completed J/K arms | Realizable zero-score comparator and finite multiplicity give rate | Same `bar C,H_C`, decoder, adjacency, confidence/risk mode | (L.1)-(L.3) | Finite class, score sensitivity, complete prior arm tuples | Zero interface residual; infinite arm set to infinity only | One finite selection and deterministic comparison | B+C+J+K -> L after all arms complete | L/`step_016` -> final theorem | Singleton, `d=0`, finite/infinite, `v=d`, fixed/scheduled `delta` pass | step-local | None |

## Hard-Step Localization Audit

The ceiling and logarithmic envelopes in `step_001`, `step_007`, `step_014`, and `step_016`; formal kernel and mark constructions in `step_003`-`step_004`; tail constants in `step_006`; source instantiation in `step_008`; DDim equality case in `step_009`; mechanism and all-input privacy derivations in `step_010`-`step_011`; and SOA/marked reconstruction in `step_012`-`step_013` all have unchanged claims, sources, raw controls, boundaries, and consumers. They are `step-local`.

The repaired `step_015` diagnostic is also `step-local`: every old theorem-facing interface is fixed by (K.1)-(K.31), and the remaining work is to prove those stated relations, not invent a kernel, event, source bridge, privacy interface, mark, confidence conversion, rate, or schedule. `step_016` consumes complete J/K tuples; its finite-law proof and deterministic minimum are local. No obligation is a `sketch/interface defect` or `idea/theorem-contract defect` on current evidence.

## Early Idea-Failure Screen

- Contract contradiction: none. The theorem remains explicitly conditional and does not claim the unrestricted open problem.
- Missing mechanism: none. Countability, two trace tails, exact `(2p,p)` structure, integer DDim reserve, score margin, one-list privacy, irreducibility, iid complement, and explicit rate envelopes cover each theorem-critical claim class.
- Source-convention and object-target stress: passed. Endpoint and half-scale differences are bridged explicitly; source non-outputs are excluded; quotient/raw risk, adjacency, and marked/released laws are exact.
- Residual and exported-interface stress: passed. The only empirical residual is the factor at most two in complement error, already dominated before the population tail.
- Persistent-defect and accumulation stress: passed. All unions and compositions are finite; DDim has a finite monotone reserve and no forcing; no all-time claim is made.
- Entry and boundary stress: passed at `d=0`, `d=1`, zero mean, zero DDim, `k=2`, empty/fallback paths, finite/infinite `C`, `v=d`, and fixed/scheduled `delta`.
- Generated-condition and output-flow stress: passed. Every event, list, support item, selected output, privacy conclusion, empirical certificate, mark, PAC event, and arm tuple has a forward producer.
- Dependence, probability-mode, and baseline stress: passed. No excluded quantity or positive structural power is hidden, and every inherited baseline remains theorem-facing.
- Same-setting repair screen: no repair is presently indicated. A later failed local derivation would be new evidence to route at that time; it is not a current global, sketch, or idea obstruction.

## Review Rationale

`ACCEPTED` is the smallest sound status. The attempt-2 diagnostic is contract-complete, faithful to the accepted setting and sketch, and detailed enough to constrain downstream proof steps without treating itself as evidence. Most importantly, the old `d^5` arm is now an independent theorem-level path: its core event is present before the marked inclusion, its kernel/privacy/PAC/rate outputs have concrete producers, and its fixed-parameter validity is separated from the optional small-`delta` limit. All remaining hard work is derivationally substantial but step-local under unchanged interfaces, so no rerun of `/global-proof`, `/proof-sketch`, or `/subagent-idea-generator` is justified.
