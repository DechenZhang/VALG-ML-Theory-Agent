# Proof Sketch

## Formalized Setting

Let \(X\) be arbitrary and let \(C\subseteq\{0,1\}^X\) be nonempty and possibly infinite, with
\[
v:=\operatorname{VC}(C)\le d:=\operatorname{LD}(C)<\infty.
\]
The primitive conditions are exactly `assump:finite-littlestone`, `assump:realizable-iid`, and `assump:approximate-dp-regime`. Utility is distribution-free realizable PAC utility; privacy is replacement-adjacency central approximate DP on every labeled input, including nonrealizable inputs. The learner may be improper and computationally unbounded.

If \(d=0\), the nonempty class is a singleton and the learner outputs its unique concept with \(N=0\). If \(d\ge1\), then \(1\le v\le d\). Retain Lyu's exact fixed-block learner and source-valid teacher count
\[
k=k_{\mathrm{Lyu}}(d,\beta,\varepsilon,\delta)
=\widetilde O\!\left(\frac{d^2\log(1/(\delta\beta))}{\varepsilon}\right).
\]
For
\[
a:=v+\log(4k/\beta),\qquad
Q:=e+\frac{e k d^2a}{\alpha v},
\]
fix a sufficiently large universal \(C_{\mathrm{blk}}\) and set
\[
m:=\left\lceil C_{\mathrm{blk}}\frac{d^2}{\alpha}a\log Q\right\rceil,
\qquad n_0:=km,
\qquad N:=n_0.
\]
The labeled master sample is partitioned uniformly into the same \(k\) fixed blocks of size \(m\) used at all \(d+1\) source stages. Constant-factor internal accuracy and failure allocations are implemented by universal rescaling inside the steps below; they do not change these displayed dependences.

## Formalized Goal

This branch is in exact-goal mode with progress type `material_partial`. Prove that universal \(K\ge1\) and \(q\in\mathbb N_0\) exist such that \(A_C^{\mathrm{VC\text{-}Lyu}}\) is \((\varepsilon,\delta)\)-DP and
\[
\sup_D\sup_{c\in C}
\Pr\!\left[\operatorname{err}_D(A_C^{\mathrm{VC\text{-}Lyu}}(S),c)>\alpha\right]
\le\beta,
\]
with \(N=0\) for \(d=0\), and, for \(d\ge1\),
\[
N\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
\left[
\frac{d^4\bigl(v+\log(1/\beta)\bigr)\log(1/(\delta\beta))}
     {\varepsilon\alpha}
+\frac{d+\log(1/\beta)}{\alpha}
\right].
\]
The only change to Lyu's source proof is the conditional VC-trace estimate
\[
\Pr_{\mathcal P}\!\left(E_{\mathrm{good}}^c\mid S\right)
\le4k\Pi_C(n_0)e^{-c_{\mathrm{tr}}m\alpha/d^2}
\le4k(en_0/v)^v e^{-c_{\mathrm{tr}}m\alpha/d^2}.
\tag{Trace}
\]
Every event, list, common-item, support, sensitivity, privacy, output-class, and population-generalization fact is a derived obligation, not a theorem assumption.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial
- Search mode: OPEN
- Selected framework: VC-trace recalibration of Lyu's fixed-block DP-ERM, as recorded in `technical_survey.md`
- Step count: 12

## Proof Roadmap

Condition on the full indexed labeled master sample before drawing the uniform partition. The \(0/1\) error vector of each \(h\in C\) is then fixed, and xor with the fixed label vector bijects prediction traces and error traces. Sauer--Shelah therefore replaces Lyu's coarse \(n_0^d\) count by \(\Pi_C(n_0)\le(en_0/v)^v\). A current-notation without-replacement tail lemma supplies the two clauses of Lyu's exact event \(E_{\mathrm{good}}\); no independence among teacher blocks is used. The explicit \((a,Q,m)\) choice closes \(n_0=km\), because
\[
\log(en_0/v)\le C_{\mathrm{fp}}\log Q
\]
for a universal \(C_{\mathrm{fp}}\) after \(C_{\mathrm{blk}}\) is fixed.

Once \(E_{\mathrm{good}}\) is produced, every downstream object is source-identical: the fixed blocks, \(H_i^j\), the geometric \(p_j\) sequence fixed in `setting.md`, valid decompositions, essential-SOA lists, common-item frequency queries, one AboveThreshold process, the single successful-stage Sparse Sample call, and the improper SOA output. The proof rechecks rather than assumes the source list/support/sensitivity interfaces. Finally, Lyu's SOA-output-class control gives VC dimension at most \(d\), and a relative VC generalization step gives the population guarantee. A last bridge eliminates all auxiliary quantities and records the full-cube and constant-class baselines.

Exact source preflight uses Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076, current arXiv source accessed 2026-07-24:

| Source interface | Current-branch role | Object and convention match | Known non-output boundary |
| --- | --- | --- | --- |
| `prop:chernoff-sample-without-replacement` and \(E_{\mathrm{good}}\) in the proof of `thm: DP-ERM-littlestone` | Per-trace block deviations and the exact event consumed downstream | Same indexed master sample, uniform blocks without replacement, and error functions \(h\in C\) | The displayed proposition alone does not state the large-relative-deviation low-error tail; `step_003` supplies the standard one-sided hypergeometric/KL wrapper explicitly |
| `def: p-decomposition`, `claim: exist decomposition`, `lemma: number of leaves`, `lemma: p-decomposition`, `def: essential hypothesis`, `coro: essential hypotheses` | Finite lists, inclusion-to-descent, and common-item production | Same \(H_i^j\subseteq C\), same geometric \(p_j\) convention after the setting's stage-index normalization, and same SOA identities | These results do not prove \(E_{\mathrm{good}}\), privacy, or population generalization |
| `algo:private sample` and `lemma: privacy of sparse sampling` | Successful-stage private output and one-list replacement privacy | Same finite essential lists and the same list-level addition/removal/replacement adjacency | The lemma assumes the list envelope and threshold; `step_008` proves utility and `step_009` maps raw-record replacement to one-list replacement |
| `algo: abovethreshold` and `lemma: privacy of abovethreshold` | Private search over the source stages | Same sensitivity-one maximum-frequency queries and one source process | The lemma requires query sensitivity and privacy allocation; it does not produce a common item |
| `lemma: Ldim-of-SOA` (restating Ghazi et al., arXiv:2012.03893, Lemma 4.4), `thm: DP-ERM-littlestone`, and `coro: PAC learning` | Improper-output class control, empirical-risk transfer, and PAC conversion | Same \(\operatorname{SOA}_{\mathcal G}\) output with \(\mathcal G\subseteq C\) sufficiently irreducible | The source theorem uses the coarse trace calibration; this sketch re-proves exactly that input before invoking the remaining interfaces |

The prior idea_1 certificate and idea_2 RSC scheduler are negative roadmap memory only. No certificate, RSC slice, new candidate identity, or procedure modification enters this roadmap.

## Rate Objectives

- Objective type: structural-parameter explicit, confidence-explicit, privacy-parameter explicit, fixed-sample PAC rate.
- Exposed variables: \(d,v,\alpha,\beta,\varepsilon,\delta\); \(k,m,n_0,a,Q,p_j\), list thresholds, and failure allocations are auxiliary and must be eliminated.
- Hidden constants may depend on: nothing. \(K,q,c_{\mathrm{tr}},C_{\mathrm{blk}}\), and all internal allocation constants are universal.
- Hidden constants may not depend on: \(X,C,D,c,|C|\), a decomposition, candidate list, list size, generated event, support set, stage, teacher block, or output hypothesis.
- Fixed quantities: The theorem is uniform over all displayed parameters. Only in the final class-complexity comparison are \(\alpha,\beta,\varepsilon\) fixed; \(\delta\) follows the explicit source-compatible schedules in `setting.md`.
- Probability mode: privacy is the neighboring-dataset output-distribution inequality over all internal randomness; utility is high probability jointly over the i.i.d. sample, random partition, and learner randomness.
- Horizon mode: fixed-sample minimax PAC complexity; there is no expectation, stopping-time, asymptotic-only, or conditional-event theorem.
- Norm mode: population binary \(0\)-\(1\) error \(\operatorname{err}_D(h,c)\).
- Required bridge or simplification obligations: prove (Trace); prove the ceiling-aware fixed point; allocate trace, private-mechanism, and generalization failures; verify the source-valid \(k\), list envelope, thresholds, and privacy allocation; show
  \[
  a\le\Lambda^{O(1)}\bigl(v+\log(1/\beta)\bigr),\qquad
  \log Q\le\Lambda^{O(1)},
  \]
  and dominate every rounding and generalization condition by the displayed two-term rate.
- Baseline invariance obligations: \(d=0\) must retain exact zero-sample recovery; \(v=d\) must return to Lyu's \(\widetilde O(d^5)\) scale rather than claim a false saving; the unchanged Lyu arm and separately normalized finite-class arm remain valid; and the three-arm minimum is stated only after all arms have matching \((\alpha,\beta,\varepsilon,\delta)\) guarantees.

## Assumption Provenance Objectives

| Needed derived output | Primitive/source inputs | Producer step | Conditional use before production |
| --- | --- | --- | --- |
| Positive-dimensional parameter legality \(1\le v\le d\), \(n_0\ge v\), and integer block partition | `assump:finite-littlestone`, `assump:approximate-dp-regime` | `step_001` | None |
| Error-trace cardinality \(\lvert\mathcal E_C(S)\rvert\le\Pi_C(n_0)\) | `assump:finite-littlestone` and fixed \(S\) | `step_002` | `step_003` is per fixed trace and does not assume the cardinality bound |
| Per-trace high/low block deviations | Uniform partition and source thresholds | `step_003` | None |
| \(E_{\mathrm{good}}\) and its conditional/unconditional failure budget | Outputs of `step_002`-`step_003` | `step_004` | Later source lemmas may reason conditionally on this event only after `step_004` |
| Fixed-point and trace-failure closure | Primitive parameter ranges and `step_004` | `step_005` | None |
| Cross-block inclusion and source parameter/list feasibility | `step_004`-`step_005` and source definitions | `step_006` | None |
| Finite essential lists, dimension descent, and a common-item certificate | `step_006` and Lyu's decomposition interfaces | `step_007` | None |
| Accurate private detection, actual-list output, and output membership | `step_005`, `step_007`, and source private mechanisms | `step_008` | None |
| End-to-end all-input \((\varepsilon,\delta)\)-DP | Source mechanisms, one-block change, and `step_008` totalization | `step_009` | Utility events are not used in privacy |
| Improper SOA representation and low full-sample error | `step_006`-`step_008` | `step_010` | None |
| Output-class VC control and population error | `step_010` and `assump:realizable-iid` | `step_011` | None |
| Public rate, boundary cases, and frontier | `step_001`, `step_005`, `step_009`, `step_011` | `step_012` | None |

The final theorem is unconditional. No generated event, list membership, common item, support fact, sensitivity statement, or generalization event is promoted to a theorem-facing condition.

## Mechanism-Source And Boundary Stress

### `step_004`: simultaneous fixed-block trace event

- Step ID: `step_004`
- Claim class: generated concentration event and finite-scope union closure.
- Theorem role: supply the exact \(E_{\mathrm{good}}\) consumed by every Lyu utility stage.
- Mechanism source: Lyu arXiv:2510.00076, `prop:chernoff-sample-without-replacement` and the definition of \(E_{\mathrm{good}}\) in the proof of `thm: DP-ERM-littlestone`; `step_002`-`step_003` give the current-notation trace and tail wrappers.
- Source-to-claim adequacy: The source population is the fixed error vector on the indexed master sample and the source sample is one uniform block. The high-error relative clause follows directly; the low-error clause uses the standard one-sided without-replacement KL tail at threshold \(\alpha/2\). The conclusion is exactly the source event, not a surrogate event.
- Residual-to-target adequacy: Produced and consumed objects are the same blocks, hypotheses \(h\in C\), full-sample errors, and source thresholds. Residual is zero after union bounding; block dependence is irrelevant.
- Key positive/control term or structural source: exponent \(m\alpha/d^2\) per fixed trace and block.
- Opposing defect terms: \(k\) blocks and \(\Pi_C(n_0)\) traces.
- Closure/dominance/absorption relation: union bound gives \(4k\Pi_C(n_0)e^{-c_{\mathrm{tr}}m\alpha/d^2}\); `step_005` dominates its logarithm.
- Accumulation behavior / scope compatibility: Finite union only; no independence or iterative accumulation is asserted.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` and `step_003` are available before \(E_{\mathrm{good}}\) is consumed by `step_006`.
- Entry-state / first-update stress result: For a fixed sample with duplicate points or zero-error traces, indices rather than distinct records define the partition; zero-error traces make the low-tail event deterministic.
- Baseline conclusion preserved: The source \(E_{\mathrm{good}}\) is unchanged; only its cardinality bound is sharpened.
- Producer-consumer provenance: `step_004` produces \(E_{\mathrm{good}}\) for `step_006`, `step_007`, `step_010`, and `step_011`.
- Null or boundary regime tested: \(v=1\), repeated sample points, empirical error \(0\), empirical error exactly near \(\alpha/3\), and mutually dependent blocks.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without this event the source inclusion and descent do not follow.
- Repair route if source is unsupported: `/proof-step step_003` for a tail-derivation defect or `/proof-sketch` if the produced event differs from Lyu's event.

### `step_005`: ceiling-aware fixed point and trace failure budget

- Step ID: `step_005`
- Claim class: explicit-rate bridge and generated-event probability closure.
- Theorem role: close \(n_0=km\) without hiding a positive power of \(v\) or \(d\).
- Mechanism source: direct algebra from the setting definitions. For \(Q\ge e\), the ceiling gives \(en_0/v\le C_1Q\log Q\), hence \(\log(en_0/v)\le C_{\mathrm{fp}}\log Q\).
- Source-to-claim adequacy: The exact setting convention and every exposed variable are used. Choosing universal \(C_{\mathrm{blk}}\) with \(c_{\mathrm{tr}}C_{\mathrm{blk}}>C_{\mathrm{fp}}+O(1)\) dominates both \(v\log(en_0/v)\) and \(\log(4k/\beta)\).
- Residual-to-target adequacy: The produced bound controls the same \(n_0\) inside the trace count. Ceiling, \(+e\) in \(Q\), and constant failure allocations are explicitly dominated at the required logarithmic scale.
- Key positive/control term or structural source: \(c_{\mathrm{tr}}C_{\mathrm{blk}}a\log Q\).
- Opposing defect terms: \(v\log(en_0/v)\), \(\log k\), \(\log(1/\beta)\), and rounding.
- Closure/dominance/absorption relation: \(a=v+\log(4k/\beta)\) dominates both coefficient classes, while \(\log Q\ge1\); the resulting trace failure is at most its allocated constant fraction of \(\beta\).
- Accumulation behavior / scope compatibility: One finite scalar fixed point; no repeated-scope defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: \(Q\) depends on \(k,d,v,\alpha,\beta\), not on \(m\) or \(n_0\); the ceiling bound then determines \(m,n_0\) noncircularly.
- Entry-state / first-update stress result: At \(d=v=1\), all denominators are positive and \(Q>e\); at \(d=0\), `step_001` bypasses the formula.
- Baseline conclusion preserved: At \(v=d\), \(a=\Theta(d+\log(k/\beta))\), returning the source \(d^3/\alpha\) block scale up to logs.
- Producer-consumer provenance: `step_005` exports the failure budget and \(n_0\)-in-terms-of-\(k\) bound to `step_006`, `step_008`, `step_011`, and `step_012`.
- Null or boundary regime tested: \(v=1\), \(v=d\), large \(k\), \(\beta\uparrow1/4\), and the ceiling-dominated smallest admissible parameters.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the fixed point, the trace union bound could retain an uncontrolled \(v\log n_0\) term.
- Repair route if source is unsupported: `/proof-step step_005`; no theorem-contract change is anticipated.

### `step_006`-`step_007`: fixed-block inclusion, decomposition descent, and common item

- Step ID: `step_006`, `step_007`
- Claim class: generated membership/support invariant and finite-stage structural closure.
- Theorem role: transfer \(E_{\mathrm{good}}\) into a source-valid candidate at one of \(d+1\) stages.
- Mechanism source: Lyu arXiv:2510.00076, proof of `thm: DP-ERM-littlestone` for \(H_i^{j+1}\subseteq\bigcap_{i'}H_{i'}^j\), then `lemma: p-decomposition` and `coro: essential hypotheses`.
- Source-to-claim adequacy: Blocks, \(H_i^j\), \(p_j\), decompositions, and SOA identities are source-identical. The setting's stage index is only a relabeling of the same geometric \(p\)-sequence. The source lemma maps inclusion plus equal decomposition dimension to common essential hypotheses and otherwise yields a strict dimension drop.
- Residual-to-target adequacy: No fresh-slice or transformed-object residual exists. Smaller \(n_0\) only decreases \(p_j\) and \(p_j^d2^{d^2}\); all consumed objects are produced from the same fixed blocks.
- Key positive/control term or structural source: integer potential \(M_j:=\max_i\operatorname{DDim}_{p_j,d}(H_i^j)\in\{0,\ldots,d\}\), with \(M_{j+1}\le M_j-1\) after a failed common-item stage.
- Opposing defect terms: AboveThreshold/Sparse Sample noise can misclassify a stage; `step_008` controls those finite failures.
- Closure/dominance/absorption relation: At most \(d\) strict unit drops occur, so one of \(d+1\) stages has a source common item; list size is at most \(p_j^d2^{d^2}\).
- Accumulation behavior / scope compatibility: Monotone-potential controlled with one-step drop at least \(1\) and initial budget at most \(d\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_006` produces inclusion before `step_007` consumes it; the potential proof does not assume successful termination.
- Entry-state / first-update stress result: At stage \(0\), \(M_0\le d\). If the first common-item query fails accurately, the source lemma activates before stage \(1\) is consumed.
- Baseline conclusion preserved: The same \(d+1\)-stage descent and source candidate identities are retained.
- Producer-consumer provenance: `step_006` produces inclusion and list envelopes; `step_007` produces finite lists, membership, the potential certificate, and a common item for `step_008`-`step_010`.
- Null or boundary regime tested: \(d=1\), empty or singleton \(H_i^j\), decomposition dimension \(0\), and possibly infinite \(C\) with finite essential lists.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without strict potential descent, no finite-stage common-item guarantee follows.
- Repair route if source is unsupported: `/proof-step step_006` or `/proof-step step_007`; object mismatch would instead require `/proof-sketch`.

### `step_008`-`step_009`: source selection utility, support, and all-input privacy

- Step ID: `step_008`, `step_009`
- Claim class: private generated-output production, support membership, and end-to-end privacy.
- Theorem role: publish an actual essential SOA hypothesis with controlled failure while satisfying replacement-adjacency \((\varepsilon,\delta)\)-DP.
- Mechanism source: Lyu `algo: abovethreshold`, `lemma: privacy of abovethreshold`, `algo:private sample`, `lemma: privacy of sparse sampling`, and the privacy/utility paragraphs of `thm: DP-ERM-littlestone`; concurrent-composition sources are invoked only through Lyu's stated interface.
- Source-to-claim adequacy: The frequency query changes by at most one when one teacher list is replaced. Each list has the proved envelope \(L_j\le p_j^d2^{d^2}\). Sparse Sample permits arbitrary addition/removal/replacement of one list when \(B\ge10\log(L_j/\delta_s)/\varepsilon_s\). The source-valid \(k\) and explicit confidence allocation make the \(k/2\) common-item margin exceed all noise and failure-symbol thresholds.
- Residual-to-target adequacy: A raw labeled-record replacement changes one block under a fixed partition coupling, hence at most one \(H_i^j\) and one list per stage. The same AboveThreshold state and the single successful-stage Sparse Sample output are consumed; no list-level-to-raw-level residual remains after this mapping.
- Key positive/control term or structural source: common-item score at least \(k/2\), sensitivity-one frequency queries, one-block change, and one-list replacement privacy.
- Opposing defect terms: Laplace deviations, the failure symbol score \(B\), effective domain \(kL_j+1\), stage confidence union, and arbitrary nonrealizable inputs.
- Closure/dominance/absorption relation: Source parameter inequalities choose \(k\) so the common-item score margin dominates \(B+O(\log(kL_j/\beta_s)/\varepsilon_s)\); AboveThreshold is one process and Sparse Sample is called once.
- Accumulation behavior / scope compatibility: At most \(d+1\) query failures are union bounded for utility; privacy uses the source one-process/concurrent-composition accounting and one Sparse Sample call, not naive stage composition.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_007` produces lists/common-item support before `step_008` consumes them; `step_009` proves privacy without conditioning on any utility event.
- Entry-state / first-update stress result: The first frequency query is sensitivity one on every labeled input. If no source common item exists yet, an accurate Below answer releases no hypothesis; if one exists, Sparse Sample receives already-bounded lists.
- Baseline conclusion preserved: The private mechanisms, candidate identities, list adjacency, and all-input source algorithm are unchanged.
- Producer-consumer provenance: `step_008` produces the actual-list selected output and mechanism good event for `step_010`-`step_011`; `step_009` produces final DP for `step_012`.
- Null or boundary regime tested: nonrealizable neighboring data, empty lists, candidate appearance/disappearance, \(d=1\), and a record lying in any block.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Utility fails without the score margin; privacy fails without the one-block-to-one-list map.
- Repair route if source is unsupported: `/proof-step step_008` or `/proof-step step_009`; a mismatch in source candidate identity would require `/proof-sketch`.

### `step_010`-`step_011`: empirical-risk and improper-output PAC bridges

- Step ID: `step_010`, `step_011`
- Claim class: object-target compatibility, empirical-to-population conversion, and confidence closure.
- Theorem role: convert the selected essential SOA hypothesis into population error at most \(\alpha\).
- Mechanism source: Lyu's utility proof inside `thm: DP-ERM-littlestone`, `lemma: Ldim-of-SOA`, and `coro: PAC learning`; the latter lemma is Lyu's restatement of Ghazi et al., arXiv:2012.03893, Lemma 4.4.
- Source-to-claim adequacy: `step_007`-`step_008` produce \(\widehat h=\operatorname{SOA}_{\mathcal G}\) for the exact source \(\mathcal G\subseteq H_i^j\subseteq C\) with sufficient irreducibility. Lyu's contradiction argument yields low master-sample error. `lemma: Ldim-of-SOA` places every such improper output in a fixed class of Littlestone, hence VC, dimension at most \(d\).
- Residual-to-target adequacy: The produced output is the same hypothesis evaluated in both empirical and population error. Relative VC uniform convergence controls \(\operatorname{err}_D(\widehat h,c)-\operatorname{err}_S(\widehat h,c)\) at the target \(\alpha\) scale; no properness or transformed-target residual remains.
- Key positive/control term or structural source: irreducibility excludes an empty restriction along the output labels; output-class VC dimension at most \(d\) supplies uniform generalization.
- Opposing defect terms: internal constant-factor empirical error, \(d\)-dimensional uniform-convergence error, and mechanism/trace/generalization failures.
- Closure/dominance/absorption relation: choose source internal accuracy as a universal fraction of public \(\alpha\), require \(n_0\ge C(d\log(1/\alpha)+\log(1/\beta_g))/\alpha\), and union bound the three allocated failure classes.
- Accumulation behavior / scope compatibility: Finite confidence union only; no adaptive data reuse beyond the fixed output-class uniform event.
- Obligation locality classification: `step-local`.
- Noncircular closure status: output representation and empirical error are produced by `step_010` before `step_011` invokes generalization.
- Entry-state / first-update stress result: For a singleton/constant class, `step_001` already gives zero error. For \(d\ge1\), an output with excessive master error makes the irreducible restriction empty, contradicting the producer property.
- Baseline conclusion preserved: The potentially improper SOA output and Lyu's PAC conversion are unchanged; no properness restriction is introduced.
- Producer-consumer provenance: `step_010` produces output representation and empirical error; `step_011` produces the final utility event for `step_012`.
- Null or boundary regime tested: \(d=1\), infinite \(C\), output outside \(C\), and empirical error \(0\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Low empirical error alone would not imply population utility for a data-dependent improper output without the fixed output-class complexity bound.
- Repair route if source is unsupported: `/proof-step step_010` or `/proof-step step_011`; a different output class would require `/proof-sketch`.

### `step_012`: public rate, \(d=0\), and baseline frontier

- Step ID: `step_012`
- Claim class: public Rate Specialization Bridge and baseline invariance.
- Theorem role: state the exact theorem and source-facing class-complexity comparison.
- Mechanism source: `step_001`, `step_005`, `step_009`, `step_011`, Lyu `coro: PAC learning`, and the standard finite-class private learner summarized in `LITERATURE_SURVEY.md` D1.
- Source-to-claim adequacy: Substitute the source-valid teacher envelope into \(n_0\le Ck d^2a\log Q/\alpha\); bound \(\log k,\log Q\), list logs, and confidence allocations by powers of the displayed logarithmic envelope. Keep the VC-output generalization term explicit.
- Residual-to-target adequacy: Every auxiliary quantity is eliminated. The new arm, old Lyu arm, and finite-class arm each have the same public parameter interface before taking their minimum.
- Key positive/control term or structural source: actual raw block-size replacement \(d^3/\alpha\mapsto\widetilde O(d^2(v+\log(k/\beta))/\alpha)\).
- Opposing defect terms: \(\log k,\log Q,\log p_j,d^2\) list exponent, rounding, and generalization sample demand.
- Closure/dominance/absorption relation: Explicit logarithmic inequalities absorb only logs into \(\Lambda^q\); no positive power is absorbed. The calibrated \(n_0\) also dominates the required \(O((d+\log(1/\beta))/\alpha)\) generalization size for \(d\ge1\).
- Accumulation behavior / scope compatibility: One public specialization; all finite failure allocations have already been closed.
- Obligation locality classification: `step-local`.
- Noncircular closure status: All privacy, utility, and rate inputs are earlier accepted outputs.
- Entry-state / first-update stress result: \(d=0\) invokes the zero-sample deterministic branch; \(v=d\to\infty\) returns the \(d^5\) scale; \(v=o(d)\) gives a strict saving.
- Baseline conclusion preserved: Exact zero-sample recovery, Lyu's universal \(d^5\) arm, and the finite-class arm are all retained without weakening.
- Producer-consumer provenance: `step_012` consumes all earlier theorem-facing outputs and produces final assembly data.
- Null or boundary regime tested: \(d=v=0\), \(v=1\le d\), full cubes \(v=d\), infinite classes, and source-compatible \(\delta\ll1/N\) sequences.
- Target conclusion false or theorem-critical obstruction present if source vanishes: A hidden \(d\), \(v\), list, or event dependence would invalidate the public claim.
- Repair route if source is unsupported: `/proof-step step_012`; a positive-power residual would require `/proof-sketch` or idea revision according to its source.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Error-trace count \(\lvert\mathcal E_C(S)\rvert\le\Pi_C(n_0)\le(en_0/v)^v\) | `step_002`; xor bijection and Sauer--Shelah | Fixed indexed sample, \(n_0\ge v\), VC dimension \(v\) | Duplicate hypotheses/traces are identified; no uncontrolled class-cardinality term | Same error traces consumed by `step_004`; no object transfer | Direct cardinality inequality | \(v\ge1\) in the positive branch | `step_004`, `step_005` | None |
| Per-trace two-branch deviation \(\le4e^{-c_{\mathrm{tr}}m\alpha/d^2}\) | `step_003`; Lyu `prop:chernoff-sample-without-replacement` plus one-sided KL wrapper | One fixed \(0/1\) vector and one uniform block | High-error and low-error cases controlled separately; block dependence is irrelevant | Same block empirical and master empirical errors as Lyu | Relative/KL Chernoff at exact source thresholds | Gap between \(\alpha/3\) and \(\alpha/2\), and relative tolerance \(1/(5d)\) | `step_004` | None |
| Exact \(E_{\mathrm{good}}\) with allocated failure | `step_004`-`step_005` | Trace count, tail, \(a,Q,m,n_0\) | \(k\Pi_C(n_0)\) multiplicity and ceiling are controlled; none remains | Produced event equals source-consumed event | \(c_{\mathrm{tr}}m\alpha/d^2\ge v\log(en_0/v)+\log(4k/\beta_{\mathrm{tr}})\) | Universal \(C_{\mathrm{blk}}\) | `step_006`, `step_007`, `step_010`, `step_011` | None |
| Cross-block inclusion and finite essential lists | `step_006`; Lyu proof of `thm: DP-ERM-littlestone`, `coro: essential hypotheses` | \(E_{\mathrm{good}}\), fixed blocks, source \(H_i^j,p_j\) | Sampling defect controlled by \(E_{\mathrm{good}}\); list cardinality controlled by \(p_j^d2^{d^2}\) | Same source objects; no fresh-slice residual | Source threshold algebra and leaf bound | Source geometric stage thresholds | `step_007`-`step_010` | None |
| Common-item/potential certificate within \(d+1\) stages | `step_007`; Lyu `lemma: p-decomposition` | Inclusion, finite lists, integer DDim potential | Accurate stage outcome deferred to `step_008`; structural defects controlled | Common item is an actual essential SOA in produced lists | Failure implies one-unit DDim drop; budget at most \(d\) | Integer potential and \(d+1\) stages | `step_008`, `step_010` | None |
| Actual-list selected SOA output with mechanism failure budget | `step_008`; Lyu AboveThreshold and Sparse Sample | Common-item score \(k/2\), list envelope, source-valid \(k\) | Laplace, failure-symbol, and effective-domain errors controlled by confidence allocation; no unsupported candidate class | Output is sampled from the exact union of source lists | Score margin dominates \(B+O(\log(kL/\beta_s)/\varepsilon_s)\) | Source-valid teacher count and privacy split | `step_009`-`step_011` | None |
| End-to-end all-input \((\varepsilon,\delta)\)-DP | `step_009`; Lyu private-mechanism lemmas and concurrent-composition interface | Data-independent partition coupling, one-block/list replacement, sensitivity-one queries | Nonrealizable utility behavior is irrelevant; every published mechanism is controlled | List-level adjacency is bridged exactly from one raw-record replacement | Source privacy allocation and postprocessing/concurrent composition | Public \(\varepsilon,\delta\) budget | `step_012` | None |
| Low master-sample error and fixed improper output class | `step_010`; Lyu utility proof and `lemma: Ldim-of-SOA` | Selected essential SOA, irreducibility, source \(H_i^j\subseteq C\) | Improperness is controlled by the fixed SOA-output class; no membership defect remains | Same selected hypothesis is consumed by PAC conversion | Irreducibility contradiction plus output-class LD/VC bound | Internal accuracy fraction | `step_011` | None |
| Population error \(\le\alpha\) with failure \(\le\beta\) | `step_011`; relative VC bound and Lyu `coro: PAC learning` | Empirical error, output-class VC \(\le d\), all allocated events | Trace, mechanism, and generalization failures separately controlled | Empirical and population metrics apply to the same output/target | Relative VC inequality and finite union bound | \(n_0\) dominating generalization size | `step_012` | None |
| Public sample rate and three-arm frontier | `step_012` | \(n_0\le Ckd^2a\log Q/\alpha\), teacher envelope, DP/PAC outputs | Only displayed logarithms are controlled by \(\Lambda^q\); no positive-power or generated-object term is uncontrolled | All arms have common public parameter interface | Explicit substitutions and domination inequalities | Universal constants and \(\Lambda\) | Final theorem assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Positive-dimensional parameter certificate and zero-dimensional learner | `step_001` | All later steps; `step_012` | Formula legality and exact \(d=0\) conclusion | `step_001` -> positive branch / final boundary assembly | derived | None |
| VC error-trace family bound | `step_002` | `step_004`, `step_005` | Replace the coarse exponent \(d\) by \(v\) | `step_002` -> `step_004` -> `step_005` | derived | None |
| Per-trace deviation bound | `step_003` | `step_004` | Produce \(E_{\mathrm{good}}\) | `step_003` -> `step_004` | derived | None |
| \(E_{\mathrm{good}}\) | `step_004` with budget closed in `step_005` | `step_006`, `step_007`, `step_010`, `step_011` | Source inclusion and utility | `step_002`,`step_003` -> `step_004`,`step_005` -> consumers | derived | None |
| Fixed-point and trace-failure certificate | `step_005` | `step_006`, `step_008`, `step_011`, `step_012` | Confidence and sample-rate closure | `step_001`,`step_004` -> `step_005` -> consumers | derived | None |
| Cross-block inclusion and bounded essential lists | `step_006` | `step_007`-`step_010` | Source-object utility and privacy inputs | `step_004`,`step_005` -> `step_006` -> consumers | derived | None |
| DDim potential descent and common-item support | `step_007` | `step_008`, `step_010` | Finite-stage termination and candidate support | `step_006` -> `step_007` -> consumers | derived | None |
| Selected actual-list SOA output and mechanism good event | `step_008` | `step_009`-`step_011` | Private hypothesis and utility | `step_005`,`step_007` -> `step_008` -> consumers | derived | None |
| End-to-end all-input DP | `step_009` | `step_012` | Privacy half of main theorem | `step_006`-`step_008` -> `step_009` -> `step_012` | derived | None |
| Improper SOA representation and low empirical error | `step_010` | `step_011` | Input to PAC conversion | `step_006`-`step_008` -> `step_010` -> `step_011` | derived | None |
| Population utility and joint confidence event | `step_011` | `step_012` | Utility half of main theorem | `step_004`,`step_005`,`step_008`,`step_010` -> `step_011` | derived | None |
| Public rate, baseline cases, and frontier | `step_012` | Final assembly | Exact formalized goal | all accepted prior outputs -> `step_012` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove the \(d=0\) zero-sample branch; for \(d\ge1\), prove \(1\le v\le d\), integer/denominator legality, \(n_0\ge v\), and a fixed public-to-internal accuracy/confidence/privacy allocation. | None | Primitive `assump:finite-littlestone`, `assump:approximate-dp-regime` | Preserve exact boundary recovery without invoking positive-branch formulas. | Direct VC/LD facts and deterministic DP. | Boundary learner and legal positive-branch parameter package. | Establish fixed quantities and universal allocation constants. | PENDING |
| `step_002` | Conditional on the indexed labeled sample \(S\), prove \(\lvert\mathcal E_C(S)\rvert\le\Pi_C(n_0)\le(en_0/v)^v\). | `step_001` | Primitive `assump:finite-littlestone`; derived positive-branch legality | Count error traces rather than concepts for possibly infinite \(C\). | Xor bijection and Sauer--Shelah. | Finite VC trace family. | Preserve exponent \(v\) exactly. | PENDING |
| `step_003` | For each fixed error trace and block, prove both source deviation clauses with total failure at most \(4e^{-c_{\mathrm{tr}}m\alpha/d^2}\). | `step_001` | Primitive parameter ranges; fixed-trace local hypothesis | Uniform low-error exponent when the master error is near zero. | Lyu `prop:chernoff-sample-without-replacement` plus a current-notation one-sided hypergeometric/KL derivation. | Per-trace, per-block tail lemma. | Keep exponent \(m\alpha/d^2\) and universal constants explicit. | PENDING |
| `step_004` | Union bound over \(k\lvert\mathcal E_C(S)\rvert\) events to prove (Trace), then integrate over \(S\). | `step_002`, `step_003` | Primitive `assump:realizable-iid` only for the later utility interpretation; partition bound is deterministic conditional on \(S\) | Avoid any false block-independence assumption. | Finite union bound and tower property. | Exact generated event \(E_{\mathrm{good}}\). | Conditional and unconditional trace failure formula. | PENDING |
| `step_005` | Prove \(\log(en_0/v)\le C_{\mathrm{fp}}\log Q\), allocate trace failure \(\le\beta_{\mathrm{tr}}\), and show \(n_0\le C k d^2a\log Q/\alpha\), including ceilings. | `step_001`, `step_004` | Primitive parameter ranges; derived trace formula | Noncircular fixed point with \(C_{\mathrm{blk}}\) appearing inside a logarithm. | Direct scalar inequalities. | Fixed-point/failure certificate and technical \(k\)-dependent sample bound. | Structural/confidence-explicit intermediate rate. | PENDING |
| `step_006` | Define the exact source \(H_i^j,p_j\) objects, prove \(H_i^{j+1}\subseteq\bigcap_{i'}H_{i'}^j\) on \(E_{\mathrm{good}}\), and verify source stage indexing, list envelope, and monotonicity under the smaller \(n_0\). | `step_004`, `step_005` | Primitive `assump:finite-littlestone`; derived \(E_{\mathrm{good}}\) | Exact source-object and threshold match. | Proof of Lyu `thm: DP-ERM-littlestone`; `lemma: number of leaves`; `coro: essential hypotheses`. | Inclusion, bounded lists, and source compatibility wrapper. | Expose \(\log p_j\) and \(d^2\) list terms for later elimination. | PENDING |
| `step_007` | Prove the DDim potential drop after every accurately failed stage and production of an actual common essential SOA within \(d+1\) stages. | `step_006` | Primitive `assump:finite-littlestone`; derived inclusion/list membership | Make termination and common-item support noncircular. | Lyu `lemma: p-decomposition`, `def: essential hypothesis`, `coro: essential hypotheses`. | Potential certificate, common item, and producer-backed support/membership. | Preserve source stage count without a multiplicative sample factor. | PENDING |
| `step_008` | Instantiate source-valid \(k\), thresholds, and failure allocations so AboveThreshold detects the first successful stage and Sparse Sample returns an actual list item with probability at least \(1-\beta_{\mathrm{mech}}\). | `step_005`, `step_007` | Primitive `assump:approximate-dp-regime`; derived lists/common item | Close \(k,L_j,B\), noise, failure-symbol, and confidence inequalities with only displayed logs. | Lyu `algo: abovethreshold`, `algo:private sample`, source utility calculation, and exponential-mechanism utility bound. | Selected essential SOA output and mechanism good event. | Teacher-count/confidence/list-log parameter closure. | PENDING |
| `step_009` | Prove the unchanged algorithm is \((\varepsilon,\delta)\)-DP for every neighboring labeled input pair, including nonrealizable inputs. | `step_006`, `step_007`, `step_008` | Primitive `assump:approximate-dp-regime`; no utility event | Map one raw replacement to one block/list while totalizing all source operations. | Lyu `lemma: privacy of abovethreshold`, `lemma: privacy of sparse sampling`, stated concurrent-composition interface, and postprocessing. | End-to-end all-input DP. | Explicit privacy allocation with no stage-count power hidden. | PENDING |
| `step_010` | On the produced source events, prove \(\widehat h=\operatorname{SOA}_{\mathcal G}\) for a sufficiently irreducible \(\mathcal G\subseteq C\) and master-sample error at most the internal accuracy target. | `step_006`, `step_007`, `step_008` | Primitive `assump:finite-littlestone`; derived selected-output membership | Preserve the exact improper candidate identity and irreducibility level. | Utility proof of Lyu `thm: DP-ERM-littlestone`. | Improper-output representation and low empirical error. | Constant-factor internal-to-public accuracy bridge. | PENDING |
| `step_011` | Prove the fixed SOA-output class has VC dimension at most \(d\), derive population error at most \(\alpha\), and close total utility failure at most \(\beta\). | `step_004`, `step_005`, `step_008`, `step_010` | Primitive `assump:realizable-iid`, `assump:finite-littlestone`; derived events/output | Uniform generalization for a data-dependent improper output. | Lyu `lemma: Ldim-of-SOA`, `coro: PAC learning`, and a relative VC generalization inequality. | Final PAC utility event. | Generalization term \(O((d+\log(1/\beta))/\alpha)\) with probability conversion. | PENDING |
| `step_012` | Substitute the source-valid \(k\), eliminate all auxiliaries, prove the displayed \(K\Lambda^qR_{\mathrm{VC}}\) rate, verify \(N\delta\to0\) under the stated schedules, and derive the three-arm frontier with exact \(d=0\) and \(v=d\) baselines. | `step_001`, `step_005`, `step_009`, `step_011` | All three primitive assumptions; accepted DP/PAC/rate outputs | Show every suppressed term is logarithmic and every arm has a common parameter interface. | Explicit Rate Specialization Bridge, Lyu `coro: PAC learning`, and finite-class learner from `LITERATURE_SURVEY.md` D1. | Exact formalized theorem and comparison frontier. | Full structural-, confidence-, privacy-, and accuracy-explicit public rate. | PENDING |

## Dependency Notes

The graph is acyclic and every dependency points to an earlier step. `step_002` and `step_003` are independent local producers after the boundary split; `step_004` combines them. `step_005` closes the scalar fixed point before any source stage consumes \(E_{\mathrm{good}}\). `step_006`-`step_008` reproduce Lyu's fixed-block utility objects in source order. `step_009` audits privacy independently of utility-event truth, while `step_010`-`step_011` complete utility. `step_012` consumes only already-produced DP, PAC, and quantitative outputs.

The highest-risk local steps are `step_003` (uniform low-error hypergeometric tail), `step_008` (teacher/list/noise parameter closure with arbitrary confidence), `step_009` (all-input raw-record-to-list privacy map), and `step_012` (no-hidden-positive-power public specialization). None currently requires a changed assumption, procedure, source object, theorem scope, or success criterion.

## Blockers

None.

## Self-Audit

- Goal alignment: exact `material_partial` setting and unchanged Lyu procedure preserved.
- Rate objective: all \(d,v,\alpha,\beta,\varepsilon,\delta\) dependence and hidden-constant restrictions are explicit.
- Assumption provenance: all events, lists, support, privacy, output membership, and generalization facts have earlier producers.
- Source adequacy: primary Lyu labels, object maps, hypotheses, conclusions, and known non-output boundaries are recorded.
- Generated output flow: every theorem-facing generated output has a legal producer and dependency path.
- Baseline invariance: zero-sample constants, the \(v=d\) return to \(d^5\), the old Lyu arm, and the finite-class arm are preserved.
- Dependency validity: 12 stable steps, all forward-ordered, all starting with `Review status = PENDING`.
- Blocker honesty: no idea-level or sketch-interface obstruction was found in source preflight; the four highest-risk items are localized as step-level proof obligations rather than assumed.
