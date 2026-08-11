# Proof Sketch

## Formalized Setting

Let \(X\) be an arbitrary nonempty set and \(C\subseteq\{0,1\}^X\) an arbitrary, possibly infinite, binary class. Set
\[
v=\operatorname{VC}(C),\qquad d=\operatorname{LD}(C),\qquad
Q(v,d)=(v+1)(1+\lceil\log_2(d+1)\rceil).
\]

The primitive assumptions are exactly assump:finite-littlestone, assump:realizable-iid, and assump:approximate-dp-regime. There is no certificate, order, stability, support, membership, finiteness, cardinality, or generated-candidate assumption. For a nonempty finite-sample restriction \(V=C_s\), the setting fixes \(\operatorname{LD}(\varnothing)=-1\), label-0 tie breaking for \(\operatorname{SOA}_V\), and dyadic rank
\[
r(V)=\lceil\log_2(\operatorname{LD}(V)+1)\rceil.
\]

This branch is in target-spec mode and has progress type material_partial.

## Formalized Goal

Construct the specified unrestricted approximate-DP learner and prove, uniformly over all \(C,D,c\),
\[
m_C(\alpha,\beta;\varepsilon,\delta)
\le K\,\Phi_{\mathrm{inh}}(\alpha,\beta,\varepsilon,\delta)
Q(v,d)^5[\log(2+Q(v,d))]^k
\]
for universal \(K,k\ge1\). The proof must generate a valid finite dyadic SOA chain-or-rank-drop certificate for every reached nonempty restriction, prove
\[
q(T)\le c_0Q(v,d),
\]
generate low-error coverage, stable candidate mass, neighboring-sample support and membership, and establish end-to-end privacy and utility. None of those generated facts may be a theorem assumption. At fixed source-comparison privacy/learning parameters, taking the best known learner must give
\[
\widetilde O\!\left(\min\{\log^+|C|,d^5,Q(v,d)^5\}\right).
\]

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial
- Search mode: OPEN
- Step count: 0
- Diagnostic outcome: blocked before a legal step decomposition

## Proof Roadmap

The proposed roadmap was preflighted as the hybrid framework recorded in technical_survey.md: Lyu rank/decomposition nodes, Cohen et al. threshold-chain nodes, and private block aggregation. No framework is selected because the universal certificate producer fails on an allowed class with \(v=d=1\). Consequently there is no target-preserving proof roadmap under the current algorithm and node types.

For the preflight, a valid certificate must have the minimum semantics needed by its downstream learner: it is a finite rooted recursive object labeled by nonempty restrictions; its children/fibers cover every target remaining in the parent; every rank-node recursive child has strictly smaller dyadic rank; every chain node exports a fixed finite total order with the single-cut property and sends every off-chain target to a strictly lower-VC fiber; and every leaf has a complete source-compatible learner interface. A nonempty class with \(\operatorname{VC}=0\) or \(\operatorname{LD}=0\) is a singleton as a set of functions, so it is a valid terminal base case. Empty restrictions are not reached. No cited source supplies a terminal interface for a positive-dimensional leaf that is neither a rank piece nor a genuine threshold-chain piece.

The earliest obstruction is the infinite point-function class. Let \(X\) be infinite and define
\[
h_0(z)=0,\qquad h_x(z)=\mathbf 1\{z=x\},\qquad
C_\star=\{h_0\}\cup\{h_x:x\in X\}.
\]
Then \(\operatorname{VC}(C_\star)=1\): one point is shattered, while no two points admit the labeling \(11\). Also \(\operatorname{LD}(C_\star)=1\): a depth-one tree is realized, while after the label-1 edge at any root query \(x\) the restriction is the singleton \(\{h_x\}\), so a complete depth-two tree is impossible.

For every finite \(F\subset X\), let
\[
V_F=\{h_0\}\cup\{h_x:x\in X\setminus F\}.
\]
This is the restriction obtained by observing label \(0\) on \(F\). For \(z\notin F\),
\[
(V_F)_{z,1}=\{h_z\},\qquad
(V_F)_{z,0}=V_{F\cup\{z\}},
\]
with Littlestone dimensions \(0\) and \(1\), respectively. Thus \(\operatorname{SOA}_{V_F}(z)=0\) without a tie and
\[
r(V_{F\cup\{z\}})=r(V_F)=1.
\]
At points of \(F\), the label-1 restriction is empty and the label-0 restriction is \(V_F\). Hence every finite all-SOA path leaves an infinite restriction with the same \(v=1\), \(d=1\), and \(r=1\). Indeed, \(V_F\) is \(p\)-irreducible for every finite \(p\), so Lyu's root-only valid \((p,1)\)-decomposition is legal and supplies no rank drop.

The chain alternative cannot compress the missing branches into a Cohen-compatible threshold piece. Positive singleton restrictions have SOA states \(h_x\). In any total order containing \(h_x\) for at least three distinct \(x\)'s, the label sequence at coordinate \(x\) has a single \(1\), at state \(h_x\), and \(0\)'s at all other point states. A sequence with at most one cut can have such a singleton \(1\) only at an endpoint. At most two point states can be endpoints, so no total order realizes all these states as single-cut thresholds.

If a finite certificate handles only finitely many point states, its residual restriction is another \(V_F\). If it groups at least two unhandled point states in one off-chain fiber, that fiber has VC dimension one, not strictly below \(\operatorname{VC}(V_F)=1\). Handling each point in a separate VC-zero fiber requires infinitely many nodes. Thus no finite certificate with the two specified node types covers \(C_\star\).

Calling \(\{h_0\}\) a trivial one-state chain and quantifying symbolically over all singleton disagreement fibers does not supply the missing interface. If every fiber is a child, the recursive certificate has infinite branching rather than being finite. If an infinite family is permitted as one finitely described schema, the setting still lacks a finite ordered domain, a true-threshold target family, and an adjacency-preserving map that would let Cohen et al.'s routine privately route to the realized fiber. That alternative is a new certificate semantics and private mechanism, not a proof of the stated two-node interface.

This obstruction occurs before privacy or sample bookkeeping. Repair requires a new star/heavy-point or general VC-one tree routine, an infinite symbolic certificate plus a new source-compatible private interface, or a restriction to finite \(C\). Each changes the specified algorithm, theorem scope, or theorem-critical mechanism source and is therefore an idea/theorem-contract defect, not future proof-step work.

## Rate Objectives

### Universal \(Q(v,d)^5\) learner

- Objective type: structural-parameter explicit, confidence-explicit, fixed-sample minimax PAC bound.
- Exposed variables: \(v,d,Q(v,d),\alpha,\beta,\varepsilon,\delta\), and the universal logarithmic exponent \(k\). The alternative frontier also exposes \(|C|\) through \(\log^+|C|\).
- Hidden constants may depend on: universal numerical constants only.
- Hidden constants may not depend on: \(X,C,D,c,v,d,|C|\), a certificate, its size or charge, any candidate set, generated order, support event, or membership event.
- Fixed quantities: the theorem is uniform in \(X,C,D,c\). Only the source-comparison corollary fixes \(\alpha,\beta,\varepsilon\) at named constants while retaining the inherited \(\delta\) dependence and \(n\delta_n\to0\).
- Probability mode: utility with probability at least \(1-\beta\), jointly over \(S\sim P_{D,c}^n\) and learner randomness; privacy as the deterministic neighboring-dataset \((\varepsilon,\delta)\)-DP inequality over learner randomness.
- Horizon mode: fixed-sample minimax sample complexity, not online, stopping-time, or horizon-uniform.
- Norm mode: population binary \(0\)-\(1\) risk \(\operatorname{err}_D(h,c)\).
- Required bridge or simplification obligations: derive an exact technical bound in \(q(T)\); prove \(q(T)\le c_0Q(v,d)\); substitute it without leaving certificate size, chain length, list size, or raw \(d\) in hidden constants; instantiate all privacy and confidence splits; prove every polylogarithmic absorption by an explicit inequality; and eliminate all generated conditions from the theorem.
- Baseline invariance obligations: retain the unrestricted arbitrary-class regime and parent privacy/accuracy/confidence dependence. The new arm must coexist with, not weaken, the established \(\widetilde O(d^5)\) learner and finite-class \(O(\log|C|)\) learner.
- Blocker: \(C_\star\) has \(Q(1,1)=4\) but no finite certificate of the specified form. Thus \(q(T)\) is not produced and the objective cannot be specialized.

### Inherited parameter factor and minimum frontier

- Objective type: parameter-explicit source instantiation and public Rate Specialization Bridge.
- Exposed variables: \(\alpha,\beta,\varepsilon,\delta,Q(v,d),d,\log^+|C|\).
- Hidden constants may depend on: universal numerical constants only.
- Hidden constants may not depend on: class or certificate data.
- Fixed quantities: \(\alpha,\beta,\varepsilon\) only in the final source-comparison display; \(C,D,c,X\) remain uniform.
- Probability mode: the three learner arms must each be converted to common accuracy/confidence/privacy parameters before taking their minimum.
- Horizon mode: fixed-sample.
- Norm mode: population \(0\)-\(1\) error.
- Required bridge or simplification obligations: Lyu's current Corollary coro: PAC learning states
  \[
  \widetilde O\!\left(\frac{\log(1/\delta)d^5}{\varepsilon\alpha}\right)
  \]
  and suppresses some confidence/polylogarithmic dependence. Cohen et al. Theorem theo:learning-threshold states
  \[
  O\!\left(
  \frac{\log^*L\,\log^2(\log^*L/(\beta\delta))}
       {\alpha\varepsilon}
  \right)
  \]
  for a fixed finite ordered domain of size \(L\). A proof must derive one explicit \(\Phi_{\mathrm{inh}}\), allocate privacy/confidence across all nodes and aggregation, control \(L\) by \(Q\), verify \(n\delta_n\to0\), and then prove the fixed-parameter minimum display. None of these terms may be hidden by writing only a tilde.
- Baseline invariance obligations: when \(C\) is infinite, \(\log^+|C|=+\infty\) and only the other arms participate. When \(C\) is finite, taking a minimum must not claim a common parameter factor unless all arms have been normalized to the same \((\alpha,\beta,\varepsilon,\delta)\).
- Blocker: there is no finite chain length \(L\) for \(C_\star\), no \(q\)-parameterized parent theorem, and no privacy/utility composition interface from which to derive \(\Phi_{\mathrm{inh}}\).

## Assumption Provenance Objectives

The target is unconditional. Each item below is a required derived invariant, but none has a legal producer under the current two-node certificate.

1. **Finite certificate existence and validity.** It must follow from assump:finite-littlestone. Blocker: \(V_F\subseteq C_\star\) remains irreducible, same-band, and non-threshold-orderable after every finite all-SOA trace.
2. **Charge bound.** A potential must decrease by dyadic rank or VC along every continuing branch. Blocker: \(V_F\to V_{F\cup\{z\}}\) preserves both quantities, so a potential depending on \((v,r)\) has zero one-step decrease for arbitrarily many steps and forever when \(X\) is infinite.
3. **Low-error candidate coverage.** A source-compatible node must generate a candidate with the allocated population error. Blocker: neither a rank node nor a true-threshold chain node is available at \(V_F\).
4. **Stable mass and neighboring-sample support.** Candidate lists/orders and their frequencies must be proved stable under one-record replacement before sparse selection or RSC consumes them. Blocker: the cited sources do not export this interface for a hybrid certificate, and the branch has no producer.
5. **Generated support and membership.** Every selected SOA state, restriction, order, slice, and returned hypothesis must belong to its declared generated object on every consumed event. Blocker: no legal generated-object flow starts without a certificate.
6. **End-to-end privacy.** Sparse-list replacement, adjacency preservation of every RSC map, finite composition counts, and failure-event privacy losses must be derived. Blocker: no maps or lists are produced.
7. **Quantitative specialization.** A technical \(q(T)^5\) bound, exact \(\Phi_{\mathrm{inh}}\), \(q\)-to-\(Q\) substitution, and three-arm minimum bridge must be proved. Blocker: Lyu supplies only its own \(d^5\) construction and Cohen et al. supplies a finite-threshold rate.

None of these facts can be reclassified as a primitive assumption or theorem-facing admissibility condition.

## Mechanism-Source And Boundary Stress

### Blocker blocker_001: universal finite certificate and charge recurrence

- Step ID: N/A; the obstruction precedes legal step creation.
- Claim class: finite recursive structural certificate, rank/VC recurrence closure, and generated membership.
- Theorem role: sole producer of \(q(T)\) and every downstream node interface.
- Mechanism source: the proposed direct SOA restriction argument under the exact setting convention and label-0 tie rule; Lyu arXiv:2510.00076, Definition def: p-decomposition and Claim claim: exist decomposition, are the only cited structural sources.
- Source-to-claim adequacy: failed. Lyu guarantees a valid raw-LD decomposition whose leaves may retain full Littlestone dimension and be \(p2^{d-t}\)-irreducible. It does not guarantee lower dyadic rank, an ordered SOA chain, or VC-drop fibers. On \(V_F\subseteq C_\star\), the root-only tree is a valid decomposition for every finite \(p\).
- Residual-to-target adequacy: failed. The produced object is an irreducible root of rank one; the consumed object must be a lower-rank restriction or finite true-threshold chain with lower-VC fibers. There is no equality or transfer relation.
- Key positive/control term or structural source: the proposed potential decreases \(r(V)\) at rank nodes or \(\operatorname{VC}(V)\) at off-chain transitions.
- Opposing defect terms: the continuing restriction \(V_F\to V_{F\cup\{z\}}\) has zero rank decrease and zero VC decrease; the set of unhandled point states remains infinite.
- Closure/dominance/absorption relation: none. For any potential \(P(v,r)\),
  \[
  P(1,1)-P(1,1)=0
  \]
  on every finite negative update. A bound on charged transitions does not bound zero-charge updates or imply termination.
- Accumulation behavior / scope compatibility: unsupported. The same-band forcing term is persistent and one-sided. Finite truncations with \(N\) point functions give \(N\) same-band updates while \(Q=4\); the infinite class gives no finite budget.
- Obligation locality classification: idea/theorem-contract defect.
- Noncircular closure status: failed. Certificate validity would have to assume either a finite cover of all point states or a threshold order, exactly the missing generated structure.
- Entry-state / first-update stress result: enter at \(V_\varnothing=C_\star\). Querying any \(z\) produces a singleton rank-zero positive child and an infinite negative child \(V_{\{z\}}\) with the original \((v,d,r)=(1,1,1)\). The claimed progress mechanism is inactive on the continuing child before certificate termination is consumed.
- Baseline conclusion preserved: no. The established generic learner covers \(C_\star\), but the specified certificate learner is undefined there; this is not a conservative loss in the same theorem.
- Producer-consumer provenance: no producer for \(T_V\) or \(q(T_V)\); all candidate, stability, aggregation, and rate consumers are blocked.
- Null or boundary regime tested: \(\operatorname{VC}=0\) or \(\operatorname{LD}=0\) gives a singleton base leaf; \(\operatorname{VC}=\operatorname{LD}=1\) gives the star obstruction. Empty positive restrictions at already excluded points do not help. The decisive SOA comparisons are strict, so tie breaking does not help.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the certificate-existence conclusion is false under the two stated node interfaces, although private learnability of the class itself remains true by other algorithms.
- Repair route if source is unsupported: /subagent-idea-generator; add a new star/VC-one node and private routine, permit a different symbolic certificate, or change class scope. These are theorem-contract or procedure changes.

### Blocker blocker_002: Lyu rank-node and sparse-selection export

- Step ID: N/A; downstream of blocker_001.
- Claim class: source wrapper, stable candidate generation, support, and low-error coverage.
- Theorem role: rank-node private routine and source of the claimed fifth-power charge bound.
- Mechanism source: Lyu arXiv:2510.00076, Lemma lemma: p-decomposition, Corollary coro: essential hypotheses, Lemma lemma: privacy of sparse sampling, Theorem thm: DP-ERM-littlestone, and Corollary coro: PAC learning.
- Source-to-claim adequacy: failed for the consumed interface. The source essential lists have size at most \(p^d2^{d^2}\), its sparse sampler is private given list-size bound \(L\) and
  \[
  B\ge10\log(L/\delta)/\varepsilon,
  \]
  and its DP-ERM is an end-to-end algorithm using \(d+1\) stages. No statement accepts an external certificate, returns neighboring-sample support, or replaces every raw-\(d\) occurrence by \(q(T)\).
- Residual-to-target adequacy: failed. The source control is \(\widetilde O(d^5)\); the target consumes \(\widetilde O(q^5)\) with \(q\le cQ\). There is no source relation bounding source lists, stages, irreducibility levels, or concentration terms by \(q\). Since \(d/Q\) is unbounded over allowed parameter pairs, residual raw-\(d\) terms cannot be absorbed into \(Q\).
- Key positive/control term or structural source: common essential SOA hypotheses across interleaved source blocks.
- Opposing defect terms: certificate-dependent candidate creation, potentially infinite or neighbor-unstable lists, raw \(d\)-stage/list bounds, and absent hybrid low-error transfer.
- Closure/dominance/absorption relation: none supplied. The source PAC proof cannot be invoked nodewise without re-proving its interleaving, frequency, irreducibility, and generalization interfaces.
- Accumulation behavior / scope compatibility: unsupported across recursive certificate nodes; no recurrence charges list changes, privacy calls, or confidence splits to \(q(T)\).
- Obligation locality classification: sketch/interface defect if a valid certificate and new modular wrapper theorem were independently available; currently downstream-blocked by blocker_001.
- Noncircular closure status: failed; stable mass/support would be consumed by sparse selection but has no earlier producer.
- Entry-state / first-update stress result: at \(C_\star\), Lyu's structural source may stop at the irreducible root rather than exporting a rank-drop piece. The proposed rank-node routine never activates.
- Baseline conclusion preserved: Lyu's original \(d^5\) PAC conclusion remains valid, but it does not imply the new \(Q^5\) arm.
- Producer-consumer provenance: Lyu produces its own DP-ERM output; it does not produce the branch rank-node list/support interface for certificate traversal.
- Null or boundary regime tested: \(d=1\), infinite candidate universe, root irreducibility, and the finite list-size requirement.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the \(q^5\) and support claims remain absent.
- Repair route if source is unsupported: after idea revision supplies a valid structural routine, a new sketch must expose separate producers for list size, common mass, neighboring support, empirical error, population error, and nodewise privacy.

### Blocker blocker_003: Cohen et al. chain-node export

- Step ID: N/A; downstream of blocker_001.
- Claim class: source wrapper, threshold utility, fixed-order membership, and RSC privacy.
- Theorem role: private processing of every alleged SOA chain.
- Mechanism source: Cohen et al., DOI:10.1145/3564246.3585148 / arXiv:2211.06387, Algorithm algo:partition; Theorems theo:partition-private, theo:partition-privatek, theo:threshold-utility, theo:threshold-privacy, and theo:learning-threshold.
- Source-to-claim adequacy: failed. Theorem theo:partition-private is only a privacy theorem for finite adaptive calls whose maps \(E_i\) are adjacency preserving and whose slice computations are already DP. Theorem theo:learning-threshold is a utility theorem for realizable threshold functions on a fixed finite totally ordered domain. Neither certifies an order, handles an infinite generated order, or proves arbitrary SOA states are thresholds.
- Residual-to-target adequacy: failed. The produced object is a cut/interior point in the source ordered domain. The consumed target is a low-error hypothesis in an arbitrary class. No fixed order, cut-to-hypothesis map, population-risk transfer, finite order-size bound, or neighbor-compatible generated-order bridge exists.
- Key positive/control term or structural source: a true single-cut target and adjacency-preserving noisy slices.
- Opposing defect terms: point-function label columns have two changes unless their unique positive state is an endpoint; generated orders may change under one sample; certificate pieces can be infinite; no chain membership/support event is produced.
- Closure/dominance/absorption relation: none. The star class has more than two singleton-positive states, so the single-cut premise fails before any privacy theorem applies.
- Accumulation behavior / scope compatibility: unsupported. Repeated one-point peeling has unbounded or infinite slice count and data demand while \(Q=4\); RSC privacy alone gives no utility or sample budget independent of that count.
- Obligation locality classification: idea/theorem-contract defect for universal coverage by the specified chain routine.
- Noncircular closure status: failed; the order and membership facts needed to invoke the source are exactly the outputs the branch has not produced.
- Entry-state / first-update stress result: at \(C_\star\), the first proposed chain must omit infinitely many point states or include at least three, in which case the true-threshold premise fails.
- Baseline conclusion preserved: N/A; Cohen et al. is a restricted threshold parent, not an unrestricted baseline.
- Producer-consumer provenance: no legal chain producer; hence no source theorem can produce the low-error chain output consumed by aggregation.
- Null or boundary regime tested: finite orders containing \(h_0\) and at least three point states, infinite \(X\), and actual threshold realizability rather than a post hoc sample order.
- Target conclusion false or theorem-critical obstruction present if source vanishes: universal chain coverage remains false.
- Repair route if source is unsupported: add a different source-compatible routine for star/tree pieces or revise the procedure.

### Blocker blocker_004: generated stability, privacy aggregation, and public rate

- Step ID: N/A; downstream of blocker_001 through blocker_003.
- Claim class: generated invariant closure, approximate-DP composition, confidence allocation, fifth-power bookkeeping, and rate specialization.
- Theorem role: convert node outputs into the final unconditional PAC theorem.
- Mechanism source: none with the required hybrid interface. The cited papers establish privacy/utility only for their own inputs and algorithms.
- Source-to-claim adequacy: failed. Independent blocks do not imply common candidate mass, neighboring support, fixed generated membership, or adjacency preservation.
- Residual-to-target adequacy: failed. Unproduced residuals are certificate size/length, raw \(d\), candidate-list size, chain-domain size, privacy-call count, and event failure probabilities. They cannot be hidden in \(\Phi_{\mathrm{inh}}\), which may not depend on class or generated objects.
- Key positive/control term or structural source: the proposed charge \(q(T)\) and disjoint-block composition.
- Opposing defect terms: persistent zero-charge star continuations, list/order changes across neighbors, separate sparse-sampler and RSC privacy losses, and confidence union bounds over an unbounded number of nodes.
- Closure/dominance/absorption relation: absent. There is no one-step inequality charging every sample/privacy/confidence loss to a rank or VC drop, and no finite total budget.
- Accumulation behavior / scope compatibility: unsupported; defects are nondecaying and privacy/failure losses accumulate monotonically.
- Obligation locality classification: sketch/interface defect downstream, with no repair value until the primary idea defect is removed.
- Noncircular closure status: failed; final aggregation would assume the stable support and membership it must prove.
- Entry-state / first-update stress result: the procedure has no legal first node on \(C_\star\), so no privacy ledger or utility event can be initialized.
- Baseline conclusion preserved: failed for the new arm; the existing \(d^5\) and finite-cardinality arms remain separate external baselines.
- Producer-consumer provenance: every generated-output path is missing at its first certificate producer.
- Null or boundary regime tested: \(Q=4\) with arbitrarily many or infinitely many point states, \(\delta=o(1/n)\), and finite/infinite \(C\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: the exact \(Q^5\) theorem and minimum-frontier bridge are unsupported.
- Repair route if source is unsupported: idea revision followed by a new source preflight and new sketch.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Finite valid \(T_V\) and \(q(T_V)\le c_0Q(v,d)\) | No producer; proposed direct structural lemma | Only finite \(v,d\), SOA restrictions, and the two node definitions | Rank/VC drops would be controlled; persistent same-\((v,r)\) star restrictions are uncontrolled | Produced object absent; consumed interface is a finite certificate for every restriction | Required one-step rank or VC decrease fails on \(V_F\to V_{F\cup\{z\}}\) | No positive slack; both discrete decreases equal zero | All later interfaces | blocker_001 |
| Bounded, common, low-error rank-node candidate lists | Lyu source only for its own \((p,d)\)-essential lists | Raw list bound \(p^d2^{d^2}\), interleaved source blocks, source irreducibility | Raw \(d\), list size, hybrid membership, neighbor support, and \(q\)-substitution uncontrolled | Source lists are not branch certificate lists; no same-object bridge | No inequality turns \(p^d2^{d^2}\) and \(d\) stages into \(\operatorname{poly}(q)\) | Sparse threshold \(B\ge10\log(L/\delta)/\varepsilon\) depends on a missing \(L\) bound | Sparse selection, aggregation, rate | blocker_002 |
| Fixed finite single-cut chain and low-error chain hypothesis | Cohen et al. threshold source only | Fixed finite total order, true threshold realizability, source TreeLog maps | Generated/data-dependent order, infinite size, cut-to-hypothesis risk, support, and membership uncontrolled | Interior point/cut is not an arbitrary-class hypothesis; no mapping or risk residual bound | No transfer relation; star label matrix violates the one-cut premise | Source sample threshold uses finite \(L,\alpha,\beta,\varepsilon,\delta\) | Chain aggregation, final learner | blocker_003 |
| Neighbor-stable candidate mass/support/membership | No producer | Independent blocks and parent routines in their original algorithms | All hybrid support and generated membership defects uncontrolled | No produced event to compare with consumed event | No frequency lower bound, neighbor-overlap inequality, or membership implication | None | Sparse sampler, frequency selection, utility | blocker_004 |
| End-to-end \((\varepsilon,\delta)\)-DP generated learner | No producer | Parent privacy theorems under their own list/map hypotheses | Adjacency of generated maps, list replacement, node count, and failure privacy uncontrolled | Parent output distributions are for different procedures | No composition inequality with finite allocated calls is available | No finite privacy ledger | Final theorem | blocker_004 |
| \(K\Phi_{\mathrm{inh}}Q^5\log^k(2+Q)\) and minimum frontier | No producer | Lyu \(d^5\) PAC corollary and Cohen finite-threshold rate | \(q\), chain length \(L\), raw \(d\), hidden polylogs, and privacy/confidence allocation uncontrolled | Source rates concern different objects/procedures; no technical-to-public bridge | No \(q\le cQ\) object and no absorption inequalities | None | Public theorem and comparison corollary | blocker_004 |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Valid finite certificate \(T_V\) | None | Candidate generation, privacy routing, charge proof | Defines the learner on every restriction | Missing at root | derived | blocker_001 |
| Charge \(q(T_V)\) and \(q\le c_0Q\) | None | Sample bookkeeping and rate specialization | Removes generated certificate dependence | Missing certificate -> missing charge -> missing rate | derived | blocker_001 |
| Rank-node candidate list and common low-error item | Lyu source does not produce the branch wrapper | Sparse selection and aggregation | Low-error coverage | Missing certificate node -> missing wrapper list -> consumer | derived | blocker_002 |
| Chain order, threshold membership, and returned chain hypothesis | Cohen et al. source requires these inputs rather than producing them for arbitrary classes | Chain utility and aggregation | Low-error chain coverage | Missing chain producer -> source theorem inapplicable | derived | blocker_003 |
| Stable mass and neighboring-sample support | None | Sparse/frequency selection and DP proof | Utility and privacy | Missing candidate producers -> missing stability bridge -> consumers | derived | blocker_004 |
| Generated restriction/state/hypothesis membership | None | Every node routine and final risk argument | Well-defined learner and utility | Missing certificate -> missing membership -> consumers | derived | blocker_004 |
| Privacy ledger and joint good event | None | Final assembly | \((\varepsilon,\delta)\)-DP and failure probability \(\beta\) | Missing finite node flow -> missing allocation/composition -> final theorem | derived | blocker_004 |
| Explicit \(\Phi_{\mathrm{inh}}\), \(Q^5\) rate, and frontier bridge | None | Public theorem | Exact sample bound and minimum display | All prior outputs -> technical rate -> specialization; path breaks at first output | derived | blocker_004 |

## Sketch Steps

None

## Dependency Notes

There is no step DAG. Any downstream step would consume the certificate or a node output before a legal producer exists. Creating privacy, support, rate, or specialization steps despite this would violate the Assumption Provenance, Source-To-Claim Adequacy, Generated Output Flow, Noncircular Closure, and Entry-State / Activation Trace gates.

## Blockers

1. **Primary idea/theorem-contract defect: the universal two-node certificate is unavailable and, under the source-compatible finite-chain meaning, false.** The allowed infinite point-function class \(C_\star\) has \(v=d=1\), is finitely irreducible along every all-SOA trace, has persistent same-rank/same-VC restrictions, and has no total order containing all positive SOA states with the single-cut property. A finite certificate cannot send the infinite residual to lower-VC fibers.
2. **No charge recurrence.** The continuing update \(V_F\to V_{F\cup\{z\}}\) has zero decrease in both dyadic rank and VC. Thus the proposed charge ignores arbitrarily long finite same-band traces and an infinite trace, so it cannot be the sole budget for sample, privacy, confidence, or termination losses.
3. **Lyu interface mismatch.** The cited source exports raw-\(d\) valid decompositions, essential-list bounds, a conditional sparse-sampling privacy lemma, and an end-to-end \(d^5\) DP-ERM/PAC result. It does not export dyadic drops, threshold chains, stable hybrid support, or a \(q^5\) modular theorem.
4. **Cohen et al. interface mismatch.** RSC supplies privacy for adjacency-preserving noisy slices; threshold utility applies only to actual thresholds on a fixed finite total order. The star class is not threshold-realizable under one order, and the branch has no order-size, adjacency, membership, or cut-to-hypothesis bridge.
5. **Downstream sketch/interface defects remain unlocalizable as steps.** Low-error coverage, stable mass, neighbor support, generated membership, end-to-end composition, five-power \(q\) bookkeeping, explicit \(\Phi_{\mathrm{inh}}\), and the minimum-frontier bridge all lack legal inputs.

Smallest sound repair target: /subagent-idea-generator. A repair must change the procedure by adding a source-supported star/VC-one tree node and re-prove the quantitative global budget, or otherwise change the certificate or class scope. None is permitted inside the current proof-sketch attempt.

## Self-Audit

- Formalized setting and goal: preserved exactly; no certificate, support, stability, membership, finiteness, or order assumption was added.
- Sketch identity and roadmap: initial attempt 1, OPEN search, zero steps, and source-traceable rejected framework recorded.
- Rate objectives: exposed variables, hidden constants, fixed quantities, probability, horizon, risk metric, inherited factor, baseline arms, and public specialization obligations are explicit.
- Assumption provenance: every required generated fact is classified as derived and has either a missing producer or exact blocker.
- Mechanism/boundary stress: covers \(\operatorname{VC}=0\), \(\operatorname{LD}=0/1\), infinite \(C\), label-0 tie breaking, empty restrictions, off-chain fibers without VC drop, arbitrarily long same-band traces, and the fact that Cohen et al. utility applies only to true finite-order thresholds.
- Source preflight: exact Lyu and Cohen et al. statement labels, hypotheses, outputs, convention matches, and non-output boundaries are recorded.
- Exported interfaces and generated flow: every theorem-facing output has its raw controls, object mismatch, uncontrolled defects, consumers, and missing producer recorded.
- Dependency validity: no downstream obligation was mislabeled as step-local; Sketch Steps is None because the primary obstruction is an idea/theorem-contract defect.
- Blocker honesty: step count is 0; all remaining blockers are explicit and no proof or review artifact was written.
