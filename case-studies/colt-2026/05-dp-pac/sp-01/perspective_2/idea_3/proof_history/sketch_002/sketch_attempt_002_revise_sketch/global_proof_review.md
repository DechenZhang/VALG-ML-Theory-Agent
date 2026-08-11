# Global Proof Review

## Global-Proof Review Identity

- Branch: perspective_2/idea_3
- Progress type: material_partial
- Sketch attempt: 2
- Reviewed global-producer attempt: 1
- Binding setting: perspective_2/idea_3/setting.md, SHA-256 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Reviewed sketch: perspective_2/idea_3/proof_sketch.md, SHA-256 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Reviewed sketch review: perspective_2/idea_3/proof_sketch_review.md, SHA-256 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Upstream sketch-review status: ACCEPTED
- Reviewed global proof: perspective_2/idea_3/global_proof.md, SHA-256 dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407
- Reviewed global-proof status and routing: PARTIAL_BLOCKED; None
- Primary source independently checked: Xin Lyu, Private Learning of Littlestone Classes, Revisited, arXiv:2510.00076v1, submission/main.tex SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87
- Input-identity result: all four binding hashes matched before analysis and again immediately before this review was written.
- Evidence boundary: proof_history/sketch_001 and the superseded review were not used as current proof evidence.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The diagnostic has every required section: reviewed identity, controlled status, attempted claim, a dependency-ordered whole-proof draft, theorem-level block map, coverage of all twelve sketch steps, dependency and assumption audit, citation and tool audit, quantitative audit, scope-and-closure certificate, exported-interface audit, generated-output flow, early obstruction audit, gap localization, boundary note, and suggested routing. PARTIAL_BLOCKED with Suggested Routing equal to None is controlled and aligned because the unresolved work consists only of local derivations under unchanged accepted interfaces. The diagnostic boundary is explicit: the document is not proof evidence, a cited result, an assumption source, or authority to alter a step.

The whole-proof draft is substantially more than a restatement of sketch rows. Blocks A through I expose the scalar relations, concentration event, exact source/current map, signed DDim recurrence, selection margin, raw-record privacy map, same-function SOA bridge, relative-VC transfer, and public specialization used in the final composition. No required theorem-level transition is hidden behind a generic later-proof label.

## Claim And Sketch Fidelity Audit

The attempted claim preserves the exact setting: arbitrary nonempty possibly infinite binary classes of finite Littlestone dimension, realizable distribution-free utility, replacement-adjacency approximate central DP on every labeled input, computationally unrestricted and potentially improper output, fixed-sample population \(0\)-\(1\) error, and exposed dependence on \(d,v,\alpha,\beta,\varepsilon,\delta\). It preserves the unconditional quantifier order; \(E_{\rm good}\), list support, common-item support, selection, sensitivity, privacy, exact SOA membership, and generalization remain derived conclusions.

All twelve accepted sketch claims and their forward dependencies are unchanged. In particular, the diagnostic does not silently identify the branch pair with Lyu's literal stage pair. The source uses \(s=1,\ldots,d+1\), \(H_{i,\mathrm{src}}^s\), and \(p_{s,\mathrm{src}}=2^sn_0d\). The branch uses \(r=0,\ldots,d\), \(H_i^r=H_{i,\mathrm{src}}^{r+1}\), and the setting-mandated \(p_r=2^rn_0d=p_{r+1,\mathrm{src}}/2\). Thus the branch lists are a half-scale variant, not the literal source lists. The unchanged theorem-critical interface is instead the exact consecutive pair \((p_{r+1},p_r)=(2p_r,p_r)\), together with the leaf lower scale \(p_r2^{d-t}\ge n_0d\ge\max\{n_0,d+1\}\). This is precisely the bridge fixed by the accepted sketch.

The material_partial label is accurate. The new arm is smaller than the \(d^5\) arm only when \(v=o(d)\), returns to \(d^5\) at \(v=d\), and does not claim a characterization or a universal polynomial in \(v,\log d\), or \(v,\log^*d\).

Every baseline obligation is retained: exact zero-sample recovery at \(d=0\); the full-cube \(v=d\) scale; independently private and PAC old-Lyu and finite-class arms before minimization; disabling only the finite-class arm when \(C\) is infinite; and \(N\delta\to0\) only along the schedule declared in the setting.

## Theorem-Level Structure Audit

Blocks A through I compose in the accepted dependency order.

- step_001 produces the boundary branch, total all-input procedure, exact candidate dictionary, least feasible teacher, and public teacher envelope.
- steps 002 and 003 independently produce the trace count and the two per-trace tails; steps 004 and 005 combine them into the exact generated event and close its scalar fixed point.
- step_006 alone owns the endpoint definition, threshold inclusion, half-scale source bridge, exact essential-function lists, and both irreducibility scales.
- step_007 turns Lemma 4.3's equality case and Corollary 4.1's zero case into the finite signed DDim descent and a score-\(k\) actual item.
- step_008 consumes the already-produced teacher margin and exports an actual list item rather than \(\perp\).
- step_009 proves privacy from the total procedure and raw-record-to-one-list map without using utility.
- steps 010 and 011 prove exact membership in Lyu's fixed improper SOA family, empirical error, and uniform population conversion.
- step_012 consumes completed privacy, utility, and scalar outputs to prove the public rate and the independently normalized comparison arms.

The final assembly uses every block and does not ask a comparison arm, closure label, or final theorem statement to produce a missing new-arm fact. All twelve sketch steps are represented in both the block map and the step-coverage table.

## Dependency And Assumption Audit

The only theorem-facing assumptions are assump:finite-littlestone, assump:realizable-iid, and assump:approximate-dp-regime. The fixed-trace premise in step_003 is a local conditional hypothesis discharged by steps 002 and 004. The nonemptiness of utility-path restrictions is derived from the realizable target's zero block error; empty restrictions on arbitrary inputs are separately totalized and are not excluded from privacy.

The generated outputs have legal forward paths: the trace event precedes inclusion; inclusion and current lists precede DDim descent, privacy, and SOA identity; the score-\(k\) item precedes mechanism selection; total list maps precede raw-record privacy; actual selection and leaf identity precede empirical error; exact fixed-family membership precedes relative-VC generalization; and all completed outputs precede public specialization. No unconditional conclusion is completed by assuming a generated event, invariant, support property, adjacency statement, or output-family membership.

The only recurrence is \(M_{r+1}\le M_r-1\) after a good Below report with no common item. Its source is step_006 plus Lyu Lemma 4.3, its sign is fixed, its one-step charge is one, and its finite budget is \(M_0\le d\). It is not circularly inferred from eventual selection.

## Citation And Tool Audit

The primary-source identity and stable statement labels are verified against arXiv:2510.00076v1.

| Source or tool | Exact role and current-object map | Convention and hypothesis discharge | Conclusion interface and known non-output boundary | Locality |
| --- | --- | --- | --- | --- |
| Lyu Proposition 2, prop:chernoff-sample-without-replacement | One fixed indexed error trace and one marginally uniform size-\(m\) block produce the high-error relative tail with tolerance \(1/(5d)\) | Same without-replacement empirical-mean convention; conditioning on the full indexed sample fixes the trace | Supplies only the relative branch; the low-error absolute branch is a current-notation hypergeometric/KL derivation | step-local in step_003 |
| Sauer-Shelah and the direct hypergeometric/KL tail | Xor by the fixed label vector maps prediction traces bijectively to error traces; the KL tail handles \(\mu\le\gamma/3\), including \(\mu=0\) | \(1\le v\le n_0\); repeated indices only reduce trace count; the threshold is the same \(\gamma/2\) consumed by the stage algebra | Gives \(\Pi_C(n_0)\) and a nonvanishing low-error exponent; it does not produce inclusion or the fixed point | step-local in steps 002-005 |
| Lyu Definition 4.2, Lemma 4.1, Lemma 4.3, Definition 4.3, and Corollary 4.1 | Current nonempty \(H_i^r\), current integer \(p_r\), and the exact pair \((2p_r,p_r)\) produce optimal leaves, list bounds, DDim comparison, actual-function equality, and zero-DDim support | These statements are uniform in \(p\); the branch does not claim equality with the literal source \(2p_r\)-list. Cross-block inclusion discharges \(\mathcal G\subseteq\mathcal H\) | Lemma 4.3 does not by itself produce essentiality without equality and arbitrary-decomposition quantification; Corollary Items 2 and 3 are used only under their exact equality hypotheses | step-local in steps 006-007 |
| Lyu Algorithm 1 and Lemma 3.1, algo:private sample and lemma: privacy of sparse sampling | The exact current list tuple, list bound \(L\), exponent \(\varepsilon_s\), and \(B\ge10\log(L/\delta_{\rm SS})/\varepsilon_s\) give one-list replacement privacy | One raw replacement changes only one list coordinate for each fixed partition; the list universe consists of actual functions on \(X\) | The source lemma supplies privacy and an actual-item-or-\(\perp\) output, not nonfailure utility; the direct effective-domain inequality supplies that utility | step-local in steps 008-009 |
| Lyu Algorithm 2 and Lemma 3.2, algo: abovethreshold and lemma: privacy of abovethreshold | The fixed queries \(q_0,\ldots,q_d\), each of sensitivity one, use one process with a one-success budget and external first-Above stopping | The source fixed threshold/noisy-query convention matches the branch; \(\eta\) conservatively discharges the source big-\(O\) privacy constant | The source supplies approximate privacy, not the two accuracy directions or raw sensitivity; both are direct current obligations | step-local in steps 008-009 |
| Adaptive composition, postprocessing, and data-independent mixtures | For each fixed transcript prefix, the optional second mechanism is uniformly DP or fixed; the common random partition is averaged afterward | Handles different stopping stages on neighboring inputs and every failure/default path | Produces the raw-record output-distribution guarantee; no realizability premise is used | step-local in step_009 |
| Lyu Lemma 4.2, lemma: Ldim-of-SOA | The exact fixed class \(\widehat C_{d+1}=\{\operatorname{SOA}_{\mathcal G}:\mathcal G\subseteq C\text{ is }(d+1)\text{-irreducible}\}\) | Same SOA tie convention and actual functions on \(X\); membership is proved first by step_010 | Gives \(\operatorname{LD}(\widehat C_{d+1})\le d\), not selected-output membership or generalization | step-local in step_011 |
| Lyu Theorem 3 proof and Corollary 5.1 | The empirical contradiction uses the same master sample, actual leaf \(\mathcal G\), and selected \(\operatorname{SOA}_{\mathcal G}\); the coarse arm reuses the source structural architecture | The printed endpoint omission, probability-one amplification, and tilde teacher are not treated as outputs. The current proof supplies the endpoint, finite-confidence mechanism, and explicit calibration | Supplies the empirical proof pattern and coarse comparison provenance, while current wrappers prove exact rates and confidence | step-local in steps 010-012 |
| One-sided relative VC inequality | The fixed xor error class has VC dimension at most \(d\); the same \(f,c\) occur in empirical and population risks | I.i.d. realizability and the fixed-sample mode match; \(n_0\) is checked against the explicit threshold | Produces \(R(f)\le2\widehat R(f)+\alpha/2\); it does not establish family membership | step-local in step_011 |
| Exponential mechanism and finite-class relative tail | A finite \(C\), sensitivity-one negative error count, and the realizable zero-error target produce the finite comparison arm | Replacement adjacency and the same population metric; infinite \(C\) is explicitly outside this arm | Produces a separate pure-DP/PAC learner, not a truncation or bridge for the new arm | step-local in step_012 |

The source's displayed definition of \(H_i^j\) stops at \(j\in[d]\) while its algorithm consumes \(d+1\) stages. The diagnostic correctly labels \(H_{i,\mathrm{src}}^{d+1}\) as a current-notation endpoint definition using the printed threshold formula, not as a source theorem. The source-convention audit therefore passes without fabricating a label or silently identifying different list objects.

## Quantitative Dependence Audit

The exposed variables are exactly \(d,v,\alpha,\beta,\varepsilon,\delta\), with \(|C|\) only in the finite-class comparison arm. All constants and the power of \(\Lambda\) are universal. No hidden dependence on \(X,C,D,c\), a partition, stage, decomposition, list, generated event, support set, or output survives.

The teacher/list/noise fixed point is noncircular. For every integer candidate \(t\ge2\), \(a(t),Q(t),m(t),n(t),p_d(t),L(t),B(t)\), and \(\tau_{\rm SS}(t)\) are defined before feasibility. Since
\[
\log L(t)=d\{\log n(t)+\log d+d\log2\}+d^2\log2,
\]
the explicit candidate \(\bar k\) gives the obstruction-level bounds \(\log n(\bar k)=O(\Lambda)\) and \(\log L(\bar k)=O(d^2\Lambda)\). Its linear score dominates \(B+\tau_{\rm SS}+\tau_{\rm AT}+2\), proving that the least feasible \(k\) exists and obeys the public envelope. The allowed logarithmic dependence on \(\alpha\) is exposed through \(\Lambda\), not hidden in an \(n_0\)-dependent constant.

The trace fixed point is also noncircular: \(Q=e+ekd^2a/(\alpha v)\) precedes \(m,n_0\), and
\[
\frac{en_0}{v}\le C Q\log Q,\qquad
\log(en_0/v)\le C_{\rm fp}\log Q.
\]
Thus \(c_{\rm tr}m\alpha/d^2\) dominates both \(v\log(en_0/v)\) and \(\log(16k/\beta)\) after one universal choice of \(C_{\rm blk}\). Ceilings are explicitly retained.

The public bridge preserves probability mode, fixed-sample horizon, and population \(0\)-\(1\) metric. The four utility failures sum to \(\beta\); the two privacy mechanisms compose to \((\varepsilon/2,\delta)\), which is stronger than required. The substitutions for \(k,a,\log Q\) leave the displayed \(d^4(v+\log(1/\beta))\log(1/(\delta\beta))/(\varepsilon\alpha)\) term and only powers of \(\Lambda\). The relative-VC sample threshold is checked from the actual block calibration. The comparison is made only after all three arms have the same \((\alpha,\beta,\varepsilon,\delta)\) interface.

## Scope And Closure Review

The scope-and-closure certificate contains a row for every theorem-critical generated event, source bridge, recurrence, selected-output support claim, raw-record privacy upgrade, SOA membership bridge, population conversion, public specialization, comparison arm, and baseline obligation. Each row identifies its positive source, opposing defects, concrete relation, producer path, boundary trace, and locality. No row merely names a reserve, potential, stopping argument, or future proof.

The Noncircular Closure Gate passes. Candidate scalars are total before the least-feasible choice; per-trace controls precede the union; the trace event precedes inclusion; inclusion and exact lists precede the recurrence; the recurrence precedes selection; total list maps precede privacy; exact leaf identity precedes fixed-family membership; and completed DP/PAC outputs precede public specialization. No generated conclusion is used to prove its own producer.

The Scope-Accumulation Compatibility Gate passes. The trace and confidence errors are finite unions. The DDim recurrence has zero additive forcing, controlled negative sign, one-step charge one, and budget \(d\). AboveThreshold stops after one reported success, Sparse Sample is invoked at most once, and privacy is one adaptive composition rather than a per-stage sum. There is no persistent, unknown-sign, or nondecaying defect.

The Entry-State / Activation Trace Gate passes. The \(d=0\) branch already satisfies the theorem. At \(d\ge1\), \(p_0=n_0d\) activates both irreducibility interfaces. If \(M_0=0\), Corollary 4.1 Item 4 and the target immediately give score \(k\); otherwise a good first Below report activates Lemma 4.3 before \(M_1\) is consumed. Empty first-stage lists on arbitrary inputs have \(q_0=0\), all transcript outcomes terminate, and empirical-zero output is already inside the relative-VC bridge.

The Exported Interface Feasibility and Residual-To-Target Adequacy Gates pass. Error traces, block errors, current lists, actual selected functions, leaf SOAs, empirical losses, and population losses are transferred without a surrogate-object residual. The one genuine convention residual is the factor-two absolute \(p\)-shift; it is discharged by the exact \((2p_r,p_r)\) source interface and by the leaf lower-scale inequality. The PAC residual is explicit: \(2(\alpha/8)+\alpha/2=3\alpha/4<\alpha\). Every comparison arm is a separate learner rather than a residual transferred into the new output.

The Baseline Invariance Obligation passes for \(d=0\), \(v=d\), the old universal arm, the finite/infinite class split, and the declared \(N\delta\) schedule. None is replaced by a conditional, stopped, or remainder-only surrogate.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Boundary branch and exact teacher tuple | Baseline recovery, scalar existence, total procedure | Singleton LD argument; candidate dictionary; explicit \(\bar k\); source list and privacy thresholds | Primitive assumptions, direct algebra, Lyu Cor. 4.1 and Lem. 3.1 numerical interfaces | Linear candidate score supplies the needed positive margin and exact public tuple | Same list-size and Sparse Sample exponent conventions; no source claim supplies the public envelope | \(\log n(\bar k)=O(\Lambda)\), \(\log L(\bar k)=O(d^2\Lambda)\), \(\bar k/2>B+\tau_{\rm SS}+\tau_{\rm AT}+2\) | Every scalar and terminal path is defined before use; the produced tuple is the learner's tuple | Zero tuple residual; \(d=0\) output equals the target | One deterministic feasibility check; ceilings and all logs are dominated | Candidate tuple for every \(t\), then feasible witness, then least \(k\) | step_001 to every parameter consumer and final boundary | \(d=0\) bypasses positive formulas; \(d=v=1\), tiny \(\alpha,\delta\), and ceilings remain legal | step-local | None |
| Exact trace event and fixed point | Generated concentration and confidence closure | Xor/Sauer, Lyu Prop. 2, direct hypergeometric/KL tail, scalar fixed point | Exact v1 proposition plus current direct derivations | High and low source clauses have the same block, trace, and thresholds consumed downstream | Same indexed without-replacement convention; \(\mu=0\) handled directly | \(4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}\le\beta/4\) after \(\log(en_0/v)\le C\log Q\) | Finite trace count and per-trace tails export the exact simultaneous event | Same error vector and block errors; zero object residual | Finite union only; no block-independence assumption; scalar multiplicity dominated once | steps 002/003 to 004/005 before any event consumer | \(E_{\rm good}\) to steps 006, 010, and 011 | Repeated points, \(v=1\), zero trace, and the \(\gamma/3\) boundary pass | step-local | None |
| Source endpoint, half-scale lists, inclusion, and leaf scales | Source-convention, membership, and irreducibility bridge | Direct endpoint definition; threshold algebra; Lyu Def. 4.2, Lemmas 4.1/4.3, Def. 4.3, Cor. 4.1 | Exact v1 labels and binding branch definitions | Uniform-in-\(p\) results plus the exact consecutive pair supply every consumed conclusion | Source \(H^{d+1}\) omission and literal \(2p_r\) list are explicit; branch exports its current-\(p_r\) list | \(H_i^{r+1}\subseteq\cap_{i'}H_{i'}^r\), \(p_{r+1}=2p_r\), \(p_r2^{d-t}\ge n_0d\) | \(E_{\rm good}\), thresholds, current \(p_r\), and nonempty utility classes produce exact lists and leaves | No literal-source-list transfer is used; both target irreducibility scales follow directly | Finite exact transitions; no accumulating numeric error | steps 004/005 to 006, then all list/leaf consumers | step_006 to steps 007-011 | Undefined source endpoint is totalized; arbitrary empty classes map to empty lists; \(d=1\) retains the pair and scales | step-local | None |
| DDim descent and common actual item | Signed structural recurrence and finite support production | Lyu Lem. 4.3 equality case, Cor. 4.1 Items 1-4, realizable target | Exact v1 structural statements plus step_006 outputs | Equality for arbitrary optimal decompositions produces one actual function essential to every current block; Item 4 handles zero | Exact \((2p_r,p_r)\) interface and equality on \(X\) | No common item implies \(M_{r+1}\le M_r-1\); \(0\le M_0\le d\) | Inclusion, exact lists, integer DDim, and target \(c\) export a score-\(k\) stage | The produced actual function is exactly the one counted by \(q_r\) | Zero additive forcing; negative one-step charge with budget \(d\) | step_006 before step_007; recurrence does not assume selection | step_007 to steps 008 and 010 | \(M_0=0\) activates support immediately; all first \(d\) good Below reports force \(M_d=0\) | step-local | None |
| AboveThreshold detection and Sparse Sample actual output | Positive-margin generated selection | Lyu Algorithms 1-2 and Lemmas 3.1-3.2; direct Laplace and exponential-weight tails | Exact v1 mechanisms plus current utility derivations | A score-\(k\) stage is detected; any reported stage has enough score; the return beats \(\perp\)'s score | Fixed threshold/noisy-query and exact Sparse Sample score conventions match | \(q_r\ge k/2-\tau_{\rm AT}\), selected score \(\ge q_r-\tau_{\rm SS}>B\) | Score stage, \(L,B\), effective domain \(kL+1\), and teacher slack export an actual function | Exact member of the current union list; \(\perp\) is excluded, not identified with a hypothesis | \(d+1\) finite noise tails and one selection tail; one stopped process and one call | steps 001 and 007 before step_008 | step_008 to steps 010-011 and utility assembly | Empty lists cannot good-noise trigger; first and last success stages are covered | step-local | None |
| Total all-input replacement privacy | Scope upgrade from list mechanisms to raw-record DP | Total procedure, RawList, Lyu Lemmas 3.1-3.2, adaptive composition, postprocessing, mixture | Exact v1 privacy statements plus direct block-locality wrapper | One raw replacement gives sensitivity-one queries and at most one replaced list in every fixed-prefix second mechanism | Source list replacement matches the exact conditional tuple; raw adjacency is bridged explicitly | \((\varepsilon/4,\delta/2)+(\varepsilon/4,\delta/2)=(\varepsilon/2,\delta)\preceq(\varepsilon,\delta)\) | Fixed partition, all list maps, stopping, \(\perp\), defaults, and exhaustion are total | Exact raw-to-list map; partition mixture adds no residual | One finite transcript and one optional call; no per-stage privacy sum | step_001 totalization and step_006 list map precede step_009; no utility premise | step_009 to step_012 and final theorem | Arbitrary labels, empty lists, immediate Above, all Below, and \(\perp\) all terminate | step-local | None |
| Exact SOA identity and empirical error | Same-target membership and empirical utility | Essential-function definition, actual decomposition leaf, irreducibility, \(E_{\rm good}\), Lyu Theorem 3 proof pattern | Exact v1 definitions and proof pattern with current leaf witness | The selected function is exactly \(\operatorname{SOA}_{\mathcal G}\); every \(g\in\mathcal G\) has master error at most \(2\gamma\) | Same SOA tie convention, sample, and functions on \(X\) | If \(e_S(f)>2\gamma\), the \(f\)-labeled \(n_0\)-restriction is empty, contradicting \(n_0\)-irreducibility | Actual list item and leaf lower scale export exact identity and empirical error \(\le\alpha/8\) | Produced and consumed function, labels, and empirical metric coincide | One deterministic contradiction; stochastic defects are upstream finite failures | steps 006 and 008 before step_010 | step_010 to step_011 | Infinite \(C\), improper output, repeated points, \(d=1\), and empirical zero pass | step-local | None |
| Fixed improper family and relative-VC PAC transfer | Structural class control and empirical-to-population conversion | Lyu Lem. 4.2; VC \(\le\) LD; one-sided relative VC inequality | Exact v1 fixed family plus direct current uniform-convergence wrapper | The source controls exactly the fixed family containing every produced output | Same actual function class, target, and \(0\)-\(1\) metric; no eligible-family substitution | \(\operatorname{VC}(\widehat C_{d+1})\le d\), \(R(f)\le2\widehat R(f)+\alpha/2<\alpha\) | Exact membership, empirical slack, i.i.d. sample, and explicit sample threshold export utility | Residual \(2(\alpha/8)+\alpha/2=3\alpha/4\) is below target | One fixed uniform event with failure \(\beta/4\) | step_010 before step_011; family fixed before data | step_011 to step_012 and final theorem | Infinite family, output outside \(C\), \(d=1\), and empirical zero pass | step-local | None |
| New VC-sensitive public rate | Quantitative specialization and new-arm closure | Teacher envelope, trace fixed point, completed DP/PAC outputs, direct algebra | steps 001, 005, 009, and 011 | Every auxiliary is eliminated and every structural power remains visible | Same public parameters, probability mode, fixed-sample horizon, and metric | \(k\le Kd^2G\Lambda^2/\varepsilon\), \(a\le K\Lambda(v+\log(1/\beta))\), \(\log Q\le K\Lambda\) | Exact \(k,m,n_0\) used by the learner export the public sample bound | Only allowed powers of \(\Lambda\) remain; no hidden positive-power residual | One finite failure addition and scalar specialization | all new-arm producers before step_012 | step_012 to final theorem/frontier | \(v=1\), \(v=d\), small \(\alpha\), and tiny \(\delta\) preserve direction | step-local | None |
| Coarse Lyu comparison arm | Baseline universal-arm normalization | Same structural/privacy/PAC sources with coarse exponent \(d\) and independent exact dictionary | Lyu Theorem 3/Cor. 5.1 plus current explicit calibration | Produces a separate DP/PAC \(d^5\) learner rather than an undefined tilde parameter | Same current totalization, allocations, SOA family, and public interface | Coarse trace fixed point and \(\bar k_{\rm old}\) give the explicit old-arm inequality | Independent old tuple, margins, privacy, and PAC wrappers export a completed arm | No residual is transferred into the new learner | One independent finite proof | step_012 derives the arm before minimization | step_012 to the final frontier | Infinite \(C\), full cube, and fixed-\(\delta\) DP/PAC remain legal | step-local | None |
| Finite-class arm and infinite-class disabling | Baseline comparison and domain split | Exponential mechanism and finite-class relative tail | Standard direct mechanisms under finite \(C\) | Sensitivity-one score and realizable zero-error target supply privacy and utility | Same replacement adjacency and population metric; infinite \(C\) is not approximated | The displayed empirical and population thresholds dominate the two failure events | Finite \(M=\lvert C\rvert\) and a fixed score domain export a pure-DP/PAC arm | Same selected \(h,c\); infinite \(C\) maps only this cost to \(+\infty\) | Two finite confidence events | Independent producer inside step_012 before comparison | step_012 to final frontier | Singleton is handled by \(d=0\); finite and infinite cases are disjoint and total | step-local | None |
| \(d=0\), \(v=d\), common-interface frontier, and \(N\delta\) | Baseline invariance and limiting comparison | Binding definitions and completed three arms | Direct substitution and the setting's declared asymptotic schedule | Preserves the exact inherited conclusions rather than a weaker surrogate | All arms first use common \((\alpha,\beta,\varepsilon,\delta)\) normalization | Substitute \(v=d\); \(0\le N\delta\le\delta K\Lambda^qR_{\rm VC}\to0\) only on the declared schedule | Completed rates and boundary learner export the comparison and limit | Scalar comparison only; no object residual | One finite minimum and one declared-sequence implication | completed arms before the baseline comparisons | final theorem/frontier | Exact \(d=0\), full cube, infinite class, fixed versus vanishing \(\delta\) all pass | step-local | None |

## Hard-Step Localization Audit

Every unresolved obligation is step-local under the unchanged accepted sketch.

- steps 001 and 005 are finite scalar derivations with their exact candidate tuples, target inequalities, ceilings, consumers, and failure route already fixed.
- steps 002-004 are fixed-trace and finite-union derivations; neither creates a new event interface.
- step_006 is high risk but local: the endpoint definition, half-scale list target, exact \((2p_r,p_r)\) pairing, source labels, inclusion thresholds, leaf scales, and consumers are already fixed. It may not switch to the literal source list or change the stage map.
- step_007 instantiates a fixed signed potential and exact actual-function equality; it is not the first source of the recurrence or the zero-DDim item.
- step_008 instantiates fixed mechanism tails under an already-proved teacher margin.
- step_009 proves a fixed raw-to-list map and adaptive-composition statement for a procedure already total on all inputs.
- steps 010-011 instantiate the already-fixed same-function leaf bridge and exact \(\widehat C_{d+1}\) family, followed by a fixed relative-VC interface.
- step_012 performs finite algebra and independent arm normalization under already-fixed output targets and baselines.

No obligation needs a changed step claim, dependency, assumption, output target, generated-output flow, mechanism source, source convention, boundary exclusion, accumulation interface, theorem scope, metric, probability mode, exposed dependence, success criterion, or conclusion.

## Early Idea-Failure Screen

- Contract contradiction: none. The precise half-scale algorithm fixed by the setting is supported by source results uniform in \(p\); no source theorem is asked to identify it with Lyu's literal list.
- Missing mechanism: none. The linear teacher score, concentration exponent, exact factor-two structural comparison, finite DDim potential, score margin, one-block locality, irreducibility, fixed-family dimension bound, and realizable zero-score finite-class source are all nonvacuous and available before consumption.
- Source-convention stress: the source endpoint omission and factor-two absolute scale are explicit. At the noiseless/realizable specialization, the current and consumed targets are the same actual functions and risks; no transformed or trace-only surrogate is used.
- Residual-to-target stress: the only nonzero target residual is the explicit PAC inequality, which leaves \(3\alpha/4<\alpha\). All other object bridges are identities on the current branch objects, or the exact factor-two decomposition interface.
- Persistent-defect stress: no persistent defect is present. Trace and mechanism errors are finite failures, DDim has negative unit charge, and privacy has a one-call budget.
- Limiting and boundary stress: \(d=0\), \(d=v=1\), \(v=d\), \(\mu=0\), \(\mu=\gamma/3\), repeated points, empty arbitrary-input classes, \(M_0=0\), stage-\(d\) success, \(\perp\), infinite \(C\), empirical zero, tiny \(\alpha,\delta\), and fixed versus scheduled \(\delta\) are all explicitly covered.
- Entry-state trace: every recursive or adaptive mechanism is active before its conclusion is consumed, or the conclusion is already true at the tested entry.
- Generated-condition provenance: every event, list, common item, selection, adjacency statement, SOA witness, and population event has a legal earlier producer.
- Dependence and mode: no horizon, expectation, conditional-event, norm, or hidden-positive-power upgrade occurs.
- Baseline invariance: exact recovery and every comparison/specialization conclusion are preserved.
- Same-setting repair plausibility: no repair is needed. A later failure of the scalar envelope, half-scale source bridge, RawList map, exact SOA membership, or arm normalization would expose a sketch/interface defect rather than justify a local patch, but the present diagnostic already supplies a source-adequate interface for each.

No current evidence requires a new primitive assumption, changed procedure, narrower class scope, changed metric or probability mode, additional exposed dependence, changed success criterion, unsupported theorem-facing source, or weakened conclusion.

## Review Rationale

ACCEPTED with Smallest Retry Target equal to None is the smallest sound decision. The global diagnostic is contract-valid, faithful to the accepted sketch and exact setting, and source-adequate at theorem level. Its PARTIAL_BLOCKED status accurately records substantial local proof work without disguising a missing producer or theorem-contract obstruction. All twelve steps have fixed claims and forward dependencies, every generated output has a legal path, every theorem-critical bridge has a concrete witness and boundary trace, and every unresolved hard obligation is genuinely step-local.
