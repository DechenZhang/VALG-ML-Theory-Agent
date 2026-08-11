# Proof Sketch

## Formalized Setting

The binding setting is perspective_2/idea_3/setting.md, SHA-256
13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327.
It is unchanged. In particular, \(X\) is an arbitrary nonempty set,
\(C\subseteq\{0,1\}^X\) is an arbitrary nonempty, possibly infinite class,
\[
v:=\operatorname{VC}(C)\le d:=\operatorname{LD}(C)<\infty,
\]
and the only primitive conditions are assump:finite-littlestone,
assump:realizable-iid, and assump:approximate-dp-regime. There is no
standard-Borel, countability, separability, permissibility, measurable-
selection, measurable-enumeration, jointly measurable evaluation, or
output-sigma assumption.

For \(d=0\), the learner returns the unique member of \(C\) with no data. For
\(d\ge1\), the procedure is exactly the binding VC-calibrated version of
Lyu's learner: the same fixed teacher blocks at all \(d+1\) stages, the same
valid decompositions, essential-SOA lists and actual-function identities, one
AboveThreshold process, one Sparse Sample call after the successful stage,
and the unchanged potentially improper output. No output quotient,
certificate, scheduler, fresh-slice replacement, properness restriction, or
computational restriction is introduced.

The setting does not name a sigma-field on \(X\), on the labeled sample
space, on \(\{0,1\}^X\), or on the exact finite-list state. Its references to
distributions, measurable output events, and PAC failure therefore cannot be
completed in this sketch by silently choosing sigma-fields that strengthen or
narrow the theorem contract.

## Formalized Goal

This remains exact-goal mode with progress type material_partial. The goal is
to prove universal \(K\ge1\) and \(q\in\mathbb N_0\) such that the unchanged
learner is \((\varepsilon,\delta)\)-DP on every neighboring labeled pair and,
for every distribution \(D\) and every \(c\in C\),
\[
\Pr\!\left[
  \operatorname{err}_D(A_C^{\rm VC\text{-}Lyu}(S),c)>\alpha
\right]\le\beta,
\]
using \(N=0\) when \(d=0\), and, when \(d\ge1\),
\[
N\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
\left[
\frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
     {\varepsilon\alpha}
+\frac{d+\log(1/\beta)}{\alpha}
\right].
\]
Equivalently, the goal is the binding
\[
\widetilde O\!\left(
\frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
     {\varepsilon\alpha}
+\frac{d+\log(1/\beta)}{\alpha}
\right)
\]
unconditional arbitrary-class upper bound, followed by the unchanged
finite-class and old-Lyu comparison
\[
\widetilde O\!\left(\min\{\log^+|C|,d^5,vd^4\}\right)
\]
at fixed \(\alpha,\beta,\varepsilon\) and under the declared small-\(\delta\)
schedule. No rate, metric, probability mode, success criterion, procedure, or
scope is weakened below.

## Sketch Identity

- Sketch attempt: 4
- Producer unit attempt: 1
- Retry mode: revise_sketch
- Triggering current review: perspective_2/idea_3/proof_sketch_review.md
- Triggering review SHA-256: 6cd0370c57c1bc5ee93035f76072e2bc538438942ce162ed1ed8a2e2b13a5bf2
- Triggering status: REVISE_SKETCH
- Reviewed attempt-3 sketch SHA-256: 36cc233d6584e181b899ae39a50035a539802e9c435db49c44ce52c9ed63523b
- Search mode: OPEN
- Technical survey used: Framework 1, VC-trace recalibration of Lyu's
  fixed-block DP-ERM, sourced to Xin Lyu, arXiv:2510.00076v1, and the
  Sauer-Shelah bookkeeping lineage recorded there
- Roadmap disposition: no viable proof sketch under the unchanged theorem
  contract
- Candidate locality: idea/theorem-contract defect
- Candidate reviewer route: IDEA_FAIL
- Step count: 0

## Proof Roadmap

No target-preserving roadmap survives the measurable-kernel gate. The
attempt-3 finite-reconstruction arithmetic remains correct after a measurable
marked learner event is supplied, but the exact arbitrary-class procedure has
no such producer under the primitive setting. The obstruction occurs before
lemma-sized proof steps can legally be assigned.

### Sigma-field preflight

Suppose one tries to interpret the setting on an arbitrary measurable instance
space \((X,\mathcal X)\). The least conventional sample interface would be
\[
\mathsf Z:=X\times\{0,1\},\qquad
\mathcal Z:=\mathcal X\otimes2^{\{0,1\}},\qquad
\mathcal S_{n_0}:=\mathcal Z^{\otimes n_0}.
\tag{Sigma-S}
\]
The least conventional output interface on
\(\mathsf H:=\{0,1\}^X\) would be the evaluation sigma-field
\[
\mathcal H_{\rm ev}
:=\sigma\bigl(\{f:f(x)=b\}:x\in X,\ b\in\{0,1\}\bigr).
\tag{Sigma-H}
\]
For finite lists of size at most \(L\), the natural analysis sigma-field is
the finite-counting sigma-field
\[
\mathcal F_L
:=\sigma\bigl(
  \{F:|F\cap E|=j\}:E\in\mathcal H_{\rm ev},\ 0\le j\le L
\bigr),
\tag{Sigma-F}
\]
followed by finite products over blocks and stages, the discrete transcript
sigma-field, and \(\mathcal H_{\rm ev}\) for the selected actual function.
These fields expose the empty/nonempty bit, list counts, score coordinates,
and output evaluation events that the exact algorithm consumes.

Equations (Sigma-S)-(Sigma-F) are only a diagnostic candidate. They cannot be
installed as theorem assumptions in this stage, and even if they are
provisionally adopted, the exact list and learner maps need not be measurable.
A richer output or state sigma-field makes the kernel obligation stronger,
not weaker. A trivial or tailor-made sigma-field that omits list membership or
population-error events cannot state the algorithm, DP definition, occurrence
mark, or PAC conclusion.

### Explicit finite-Littlestone kernel obstruction

Take the allowed measurable-space instance
\[
(X,\mathcal X)=([0,1],\mathcal B([0,1]))
\]
and choose a non-universally-measurable, hence non-Borel, set
\(A\subset[0,1]\) with at least two points. Define
\[
C_A:=\{h_t:t\in A\},\qquad h_t(x):=\mathbf1\{x=t\}.
\tag{PointClass}
\]
Every \(h_t\) is Borel measurable. Moreover,
\[
\operatorname{VC}(C_A)=\operatorname{LD}(C_A)=1.
\]
One point is shattered using \(h_x\) and any \(h_y\), \(y\ne x\), while
after a label-one branch only the single function \(h_x\) remains, so a
depth-two Littlestone tree is impossible. Thus (PointClass) satisfies the
positive-dimensional arbitrary-class scope without using a nonmeasurable
concept.

Fix the public parameters, hence the finite \(k,m,n_0\), and let
\(\Delta(x)\) be the labeled master sample whose \(n_0\) records are all
\((x,1)\). This is a Borel map from \(X\) to the sample space. At every block
and every source stage,
\[
H_i^r(\Delta(x))
=
\begin{cases}
\{h_x\},&x\in A,\\
\varnothing,&x\notin A,
\end{cases}
\tag{RestrictionWitness}
\]
because \(\rho^{r+1}\gamma<1\): \(h_x\) has empirical error zero when it
exists, and every other point function has empirical error one. Consequently
the exact state coordinate \(1\{H_i^r\ne\varnothing\}\), and hence the
empty-versus-singleton list coordinate required by the totalized procedure,
has pullback \(1_A\). If the sample-to-state or sample-to-list map were
measurable into any state sigma-field that exposes the branch actually used by
the algorithm, \(A\) would be Borel, a contradiction.

The obstruction also reaches the public output kernel, rather than only an
analysis state. Fix \(t_0\in A\), let the procedure's fixed default be denoted
by \(h_{t_0}\) after relabeling the index, and consider
\[
E:=\{f\in\{0,1\}^X:f(t_0)=0\}.
\tag{OutputEvent}
\]
This is a cylinder event in the full output codomain, and on \(C_A\) it is
exactly \(C_A\setminus\{h_{t_0}\}\). For \(x\in A\), every exact list in the
diagonal input has the singleton actual support \(h_x\), and the
AboveThreshold/Sparse Sample path returns that actual item with a public,
strictly positive probability \(p\) independent of its name \(x\). For
\(x\notin A\), every list is empty and the total procedure can return only
the fixed default. Therefore the exact fixed-input learner laws satisfy
\[
K_{\Delta(x)}(E)
=p\,\mathbf1\{x\in A\setminus\{t_0\}\}.
\tag{KernelWitness}
\]
The right-hand side is not Borel measurable. Hence \(s\mapsto K_s(E)\) is
not a measurable kernel on (Sigma-S), even for the minimal cylinder event
(OutputEvent). The pointwise privacy likelihood calculations do not repair
this failure.

This witness is also a population-error witness, not an artificial output
event. Take \(D=\delta_{t_0}\), \(c=h_{t_0}\), and any binding
\(0<\alpha<1/4\). On the full binary-function output codomain,
\[
E=\{f:\operatorname{err}_D(f,c)>\alpha\}.
\tag{RiskWitness}
\]
Thus declaring the risk event measurable does not suffice: its probability
under the exact data-to-output law is still a nonmeasurable function of the
input.

### Sparse Sample and occurrence-coordinate formulas

For a fixed input \(s\), let \(\kappa_s^{\rm act}\) be the subprobability law
of actual Sparse Sample outputs after the selected stage, let
\(\mathsf F(s)\) be its finite actual support, and put
\[
I_s(f):=\{i\in[k]:f\in\mathcal L_i^{r_*(s)}(s)\}.
\]
The only pointwise uniform occurrence refinement compatible with the
attempt-3 coupling is, for \(i\in[k]\),
\[
\widetilde K_s(E\times\{i\})
=
\sum_{f\in\mathsf F(s)\cap E}
\kappa_s^{\rm act}(\{f\})
\frac{\mathbf1\{i\in I_s(f)\}}{|I_s(f)|},
\tag{MarkedCoordinate}
\]
and
\[
\widetilde K_s(E\times\{0\})
=K_s(E)-\kappa_s^{\rm act}(E)
\tag{MarkedDefault}
\]
for nonactual/default paths. The sums are finite for each fixed \(s\), and
the pointwise projection identity is correct:
\[
\sum_{i=0}^k\widetilde K_s(E\times\{i\})=K_s(E).
\tag{Projection}
\]
These formulas preserve the exact output marginal and do not release the
mark.

They do not define a measurable kernel. Measurability of every coordinate in
(MarkedCoordinate) requires a measurable graph or enumeration of the
data-dependent lists, measurable atom weights, and measurable occurrence
membership. None is supplied by the setting or the cited fixed-input finite
law. On (PointClass), every actual occurrence set is \([k]\), and for every
\(i\in[k]\),
\[
\widetilde K_{\Delta(x)}(E\times\{i\})
=\frac pk\,\mathbf1\{x\in A\setminus\{t_0\}\},
\tag{MarkedWitness}
\]
which is non-Borel. Thus both the marked-coordinate formula and its projection
can be valid sectionwise while the marked law fails to be a kernel.

### Direct marked actual-output event

The event required by the repair bundle would have to be
\[
\mathcal B_i:=
\left\{
J=i,\ \widehat f\text{ is an actual output},\
e_S(\widehat f)\le\alpha/8,\
\operatorname{err}_D(\widehat f,c)>\alpha
\right\}.
\tag{DirectBad}
\]
It deliberately contains no \(E_{\rm good}\) premise. On the diagonal inputs
above, with \(D=\delta_{t_0}\) and \(c=h_{t_0}\), an actual \(h_x\) has
empirical error zero against the displayed positive labels and has population
error one for \(x\ne t_0\). Hence
\[
\Pr(\mathcal B_i\mid S=\Delta(x))
=\frac pk\,\mathbf1\{x\in A\setminus\{t_0\}\}.
\tag{DirectBadWitness}
\]
If (DirectBad) were a jointly measurable marked learner event, its section
probability would be Borel measurable. Equation (DirectBadWitness) is a
contradiction. This rules out the requested independently measurable final
event before Fubini is invoked.

The problem is not repaired by observing that, after a producer block
\(s_i\) is fixed, the candidate union is finite. A set
\[
\{(s_i,s_{-i}):s_i\in A\}
\]
has only full or empty, hence measurable, \(s_{-i}\)-sections, but is not a
product-measurable event when \(A\) is nonmeasurable. Finite measurable
sections and sectionwise finite unions therefore do not imply joint
measurability. This is precisely the gap exposed by infinite
Durst-Dudley-type or nonpermissible classes.

### Exact \(E_{\rm good}\) obstruction

The fixed-sample partition inequality remains set-theoretically valid because
the partition space is finite after \(S\) is fixed. It does not produce a
joint event. This can be seen on the same kind of allowed class. Let
\[
C_A^0:=\{0\}\cup C_A,
\]
which still has \(v=d=1\), choose \(z_0\notin A\), fix one partition \(P_0\),
and choose an integer \(q\) satisfying
\[
\gamma/2<q/m\le2\gamma/3.
\]
The interval has length \(\gamma m/6>1\): for \(d=v=1\),
\(\gamma m/6\ge C_{\rm blk}a\log Q/96>1\) under
\(C_{\rm blk}=2^{20}\). Thus such an integer is available. Let \(S_x\)
put \(q\) copies of \((x,0)\) in one fixed block and put
\((z_0,0)\) in every other position. The map \(x\mapsto S_x\) is Borel.
If \(x\notin A\), every concept has zero error and \(E_{\rm good}\) holds.
If \(x\in A\), \(h_x\) has
\[
e_S(h_x)=\frac{q}{km}\le\gamma/3,
\qquad
e_i(h_x)=\frac qm>\gamma/2,
\]
so the low-error clause fails. Therefore
\[
\{x:(S_x,P_0)\in E_{\rm good}^c\}=A.
\tag{GoodWitness}
\]
The exact \(E_{\rm good}\) is not jointly measurable on the candidate
sigma-fields. A measurable envelope with the same useful conditional charge
would require an additional universal-measurability, permissible-class, or
measurable-projection theorem not present in the setting. The alternative
route, integrating sections of an independently measurable final event, is
already ruled out by (DirectBadWitness). Outer probability or completion
depending on \(D\) would change the binding probability mode.

### Surviving conditional calculations

The following attempt-3 modules remain valid as set-theoretic or conditional
calculations. They are preserved, but none can be exported to the exact
unconditional theorem without the missing kernel/event interface.

1. Conditional on a fixed indexed master sample, xor by the label vector and
   Sauer-Shelah give
   \[
   |\mathcal E_C(S)|\le\Pi_C(n_0)\le(en_0/v)^v.
   \]
   The without-replacement tails and finite partition union give
   \[
   \Pr_{\mathcal P}(E_{\rm good}^c\mid S)
   \le4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}.
   \]

2. The ceiling-aware fixed point
   \(n_0=km\), \(\log(en_0/v)=O(\log Q)\), and the accepted universal block
   constant close the trace exponent and preserve the VC-sensitive rate.

3. If a legal occurrence mark \(J=i\) and the empirical output guarantee are
   already available, then
   \[
   |\mathcal U_i(S_i)|\le(d+1)L,\qquad
   e_{S_{-i}}(\widehat f)
   \le\frac{k}{8(k-1)}\alpha\le\alpha/4,
   \tag{Holdout}
   \]
   including the exact \(k=2\) boundary.

4. For a fixed candidate of population error \(p>\alpha\), the direct
   one-sided Chernoff derivation gives
   \[
   \Pr\!\left[e_{S_{-i}}(f)\le\alpha/4\right]
   \le\exp\!\left(-\frac9{32}\alpha(k-1)m\right).
   \tag{LowerTail}
   \]
   This does not use the incorrect factor-one two-sided source display.

5. The finite multiplicity and scalar domination remain
   \[
   k(d+1)L\exp\!\left(-\frac9{32}\alpha(k-1)m\right),
   \]
   \[
   \log\frac{4k(d+1)L}{\beta}
   \le22d^2a\log Q,
   \]
   while \(C_{\rm blk}=2^{20}\) makes the lower-tail exponent dominate the
   logarithmic multiplicity.

6. The finite DDim recurrence, exact SOA identity, empirical-error
   contradiction, one-list replacement arithmetic, AboveThreshold/Sparse
   Sample privacy budgets, teacher margin, and new-arm and old-arm scalar rate
   specializations are unchanged as pointwise calculations.

The old-Lyu arm uses the same exact restriction/list/Sparse Sample interface,
so (KernelWitness), (MarkedWitness), and (DirectBadWitness) apply to it as
well. The finite-class arm and the \(d=0\) branch do not repair the missing
common interface for the two Lyu arms.

## Rate Objectives

- Objective type: structural-parameter explicit, confidence-explicit,
  privacy-parameter explicit, fixed-sample PAC rate.
- Exposed variables: \(d,v,\alpha,\beta,\varepsilon,\delta\).
- Hidden constants may depend on: nothing; all displayed constants are
  universal.
- Hidden constants may not depend on: \(X,C,D,c,|C|\), decompositions, lists,
  support sets, generated events, partitions, stages, teachers, or outputs.
- Fixed quantities: none in the main theorem. Only the frontier comparison
  fixes \(\alpha,\beta,\varepsilon\) and keeps the declared \(\delta\)-schedule.
- Probability mode: an all-input measurable output kernel for DP and an
  unconditional joint PAC probability over the iid sample, partition, and
  mechanisms.
- Horizon mode: fixed sample.
- Norm mode: population binary \(0\)-\(1\) error.
- Required bridge or simplification obligations: all attempt-3 scalar
  inequalities remain conditionally available, but no public rate can be
  exported because the learner kernel and PAC event do not exist on the
  unchanged measurable interface.
- Baseline invariance obligations: the \(d=0\), \(v=d\), finite-class,
  old-Lyu, infinite-class, and small-\(\delta\) calculations are preserved.
  The old-Lyu common DP/PAC interface is blocked by the same kernel witness.

## Assumption Provenance Objectives

| Needed theorem-facing output | Raw source under the binding setting | Provenance audit | Result |
| --- | --- | --- | --- |
| Instance/sample sigma-field supporting every allowed \(D\) | No sigma-field is named | Choosing powerset, Borel, a completion, or a \(D\)-dependent field changes or narrows the scope | Blocker |
| Measurable sample-to-restriction/list state | Fixed-input set-theoretic definitions only | (RestrictionWitness) fails even for individually Borel concepts and \(v=d=1\) | Blocker |
| Measurable Sparse Sample learner kernel | A finite probability law for each fixed list tuple | (KernelWitness) shows fixed-input laws do not assemble into a kernel | Blocker |
| Measurable occurrence refinement | Pointwise finite formula (MarkedCoordinate) | (MarkedWitness) is nonmeasurable despite exact projection (Projection) | Blocker |
| Direct jointly measurable empirical-and-population bad event | Individual fixed-candidate loss sections | (DirectBadWitness) rules out the required event | Blocker |
| Joint \(E_{\rm good}\) or a useful measurable envelope | Fixed-\(S\) finite-partition sections | (GoodWitness) makes the exact joint event nonmeasurable; no envelope theorem is primitive | Blocker |
| Common old-Lyu DP/PAC interface | Same source lists and Sparse Sample law | Same point-class obstruction applies | Blocker |

The missing items are not derived invariants that can be assigned to a later
step. Supplying them requires a new primitive measurable-structure assumption
or a change to the exact procedure or theorem probability mode.

## Mechanism-Source And Boundary Stress

### Pre-step kernel producer

- Step ID: N/A; the obstruction precedes a legal step graph.
- Claim class: all-input measurable learner kernel and generated finite-list
  state.
- Theorem role: make the exact randomized learner, DP event quantification,
  Sparse Sample law, and every later marked event well-defined.
- Mechanism source: only fixed-input combinatorial lists and fixed-input
  finite probability masses are present.
- Source-to-claim adequacy: failed. A family of finite probability measures is
  not a kernel without measurable dependence on the sample.
- Residual-to-target adequacy: failed exactly, not at a quantitative scale;
  (KernelWitness) is nonmeasurable for an evaluation-measurable output event.
- Key positive/control term or structural source: none in the primitive
  setting. Finite support controls cardinality, not measurable variation.
- Opposing defect terms: arbitrary uncountable class indexing, nonmeasurable
  restriction/list graphs, and absent measurable selection/enumeration.
- Closure/dominance/absorption relation: no scalar threshold can control this
  qualitative defect.
- Accumulation behavior / scope compatibility: one-stage obstruction; no
  accumulated forcing is involved.
- Obligation locality classification: idea/theorem-contract defect.
- Noncircular closure status: any sigma-field tailored to make \(K_s(E)\)
  measurable assumes the output that it must produce.
- Entry-state / first-update stress result: on the first diagonal positive
  input, (RestrictionWitness) already separates \(A\) from its complement.
- Baseline conclusion preserved: the \(d=0\) branch remains valid, but the
  required \(d=1\) arbitrary-class entry fails.
- Producer-consumer provenance: the absent producer would have to precede
  privacy, marking, PAC conversion, rates, and the old arm.
- Null or boundary regime tested: \(v=d=1\), individually Borel concepts,
  all-identical blocks, empty restrictions, singleton restrictions, arbitrary
  nonrealizable inputs, and a cylinder output event.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: no randomized learner kernel or unconditional PAC law is
  available.
- Repair route if source is unsupported: add theorem-facing measurable
  structure or change the procedure; candidate reviewer route IDEA_FAIL.

### Pre-step marked PAC and \(E_{\rm good}\) producer

- Step ID: N/A; no legal kernel producer exists.
- Claim class: jointly measurable generated event and conditional-to-
  unconditional probability conversion.
- Theorem role: justify Fubini, the trace charge, and the finite-reconstruction
  PAC bound.
- Mechanism source: finite fixed sections, (Holdout), and (LowerTail).
- Source-to-claim adequacy: failed. Measurable finite sections do not imply a
  measurable product event.
- Residual-to-target adequacy: the same function and metric give zero
  quantitative residual, but the event residual is total: the target event is
  absent from the sigma-field/kernel interface.
- Key positive/control term or structural source: the valid exponent
  \((9/32)\alpha(k-1)m\) after a legal event exists.
- Opposing defect terms: nonmeasurable data-to-support variation,
  nonmeasurable occurrence coordinates, and the uncountable intersection in
  \(E_{\rm good}\).
- Closure/dominance/absorption relation: the exponent dominates finite
  multiplicity only after measurability; it cannot create measurability.
- Accumulation behavior / scope compatibility: one finite mark and finite
  union; the obstruction is prior to accumulation.
- Obligation locality classification: idea/theorem-contract defect.
- Noncircular closure status: the attempted section route assumes the
  independently measurable final event that (DirectBadWitness) disproves.
- Entry-state / first-update stress result: one marked coordinate on the
  diagonal sample already has the nonmeasurable probability \(p1_A/k\).
- Baseline conclusion preserved: holdout, Chernoff, multiplicity, and scalar
  rates are retained conditionally.
- Producer-consumer provenance: the absent event producer blocks PAC utility,
  total confidence, rate export, and final assembly.
- Null or boundary regime tested: \(k=2\), empirical error zero, infinite
  point classes, Durst-Dudley-type nonpermissibility, and fixed finite
  producer sections.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Fubini and the unconditional \(\beta\)-ledger are undefined.
- Repair route if source is unsupported: add joint evaluation/risk and
  measurable-list assumptions, use a measurably encoded replacement
  procedure, or change to an outer-probability success criterion; each changes
  the theorem contract.

### Old-Lyu comparison arm

- Step ID: N/A.
- Claim class: baseline common-interface recovery.
- Theorem role: establish the \(d^5\) arm before minimization.
- Mechanism source: the old scalar calibration plus the same exact Lyu
  restriction/list/Sparse Sample procedure.
- Source-to-claim adequacy: scalar adequacy passes; measurable-kernel and PAC
  adequacy fail by the same \(C_A\) witness.
- Residual-to-target adequacy: no rate residual remains, but there is no common
  measurable DP/PAC interface.
- Key positive/control term or structural source: the old \(d\)-exponent
  trace count and accepted scalar calibration.
- Opposing defect terms: the unchanged measurable-state/output defect.
- Closure/dominance/absorption relation: rate algebra cannot absorb a missing
  stochastic kernel.
- Accumulation behavior / scope compatibility: N/A; the obstruction is at
  learner definition.
- Obligation locality classification: idea/theorem-contract defect.
- Noncircular closure status: citing Lyu Corollary 5.1 as a measurability
  theorem would assume the missing interface.
- Entry-state / first-update stress result: the same \(v=d=1\) diagonal input
  reaches the same empty/singleton list split.
- Baseline conclusion preserved: its scalar \(d^5\) calculation is recorded,
  but its public PAC conclusion cannot be asserted.
- Producer-consumer provenance: absent old-arm kernel blocks the public
  frontier.
- Null or boundary regime tested: infinite \(C\), \(v=d=1\), finite \(C\),
  and \(d=0\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: minimization compares learners that do not share the claimed
  probability interface.
- Repair route if source is unsupported: the same theorem-contract change as
  for the new arm.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Sample-to-restriction/list state | No legal producer; fixed-input source definitions only | Finite stage count, finite list cardinality | Cardinality is controlled; graph/enumeration measurability is uncontrolled | Exact state is consumed, but (RestrictionWitness) is nonmeasurable | No scalar dominance applies | None | Sparse Sample, privacy, mark | New measurable-structure assumption or procedure change required |
| Exact Sparse Sample/output kernel | No legal producer; fixed-input finite laws only | Pointwise weights and supports | Pointwise normalization is controlled; sample variation is uncontrolled | Same exact output is intended, but (KernelWitness) fails | Pointwise likelihood inequalities do not imply kernel measurability | Source score margin only controls utility | DP, PAC, final theorem | All-input learner kernel absent |
| Uniform occurrence refinement | Pointwise formulas (MarkedCoordinate)-(MarkedDefault) | Finite nonempty occurrence sets | Projection is controlled; marked-coordinate measurability is uncontrolled | (Projection) has zero distributional residual sectionwise | Summing coordinates preserves the marginal but not measurability | Uniform \(1/|I_s(f)|\) weights | Marked PAC event | (MarkedWitness) is nonmeasurable |
| Direct actual-output bad event | No legal producer | Actual output, empirical slack, population bad set | Quantitative residual is controlled; joint event is uncontrolled | Same function under all three losses | (Holdout) and (LowerTail) apply only after event production | \(\alpha/8\) empirical slack | Fubini and PAC | (DirectBadWitness) rules out joint measurability |
| Exact \(E_{\rm good}\) or useful envelope | Fixed-\(S\) finite partition sections | Trace count and conditional tails | Section probability controlled; joint sample dependence uncontrolled | Exact thresholds match downstream source classes | Conditional bound cannot be towered without a measurable event or independent final-event route | Trace exponent | Structural and confidence consumers | (GoodWitness); no envelope theorem in primitives |
| Finite-reconstruction probability bound | Conditional arithmetic only | \((d+1)L\) candidates, complement size, Chernoff exponent | All finite multiplicities controlled; event interface uncontrolled | Same output and metric; zero scalar residual | \(22d^2a\log Q<(9/32)\alpha(k-1)m\) | \(C_{\rm blk}=2^{20}\) | PAC and rate | Cannot export without marked kernel/event |
| All-input DP conclusion | Pointwise source privacy arithmetic only | Raw one-list replacement and privacy split | Privacy loss controlled; randomized-kernel existence uncontrolled | Exact procedure intended | Composition proves inequalities only after a legal output kernel exists | \((\varepsilon/4,\delta/2)\) splits | Final theorem | KernelWitness |
| New and old public rates | Conditional scalar algebra | Teacher, trace, privacy, holdout, multiplicity calculations | Positive powers and logs controlled; PAC/kernel interface uncontrolled | Exact displayed rates preserved algebraically | Rate specialization cannot create stochastic measurability | Universal scalar constants | Final theorem/frontier | Both Lyu arms lack common DP/PAC interface |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Fixed-input restrictions and lists | Set-theoretic source construction | Sparse Sample and structural argument | Candidate production | No measurable sample-to-state producer | derived only sectionwise | RestrictionWitness |
| Fixed-input Sparse Sample law | Source Algorithm 1 on a fixed tuple | Output, privacy, occurrence lift | Randomized learner | List tuple to pointwise law only | derived only sectionwise | KernelWitness |
| Occurrence-marked law | Pointwise formula (MarkedCoordinate) | Finite reconstruction | Producer-block localization | Pointwise law to nonmeasurable coordinate | derived only sectionwise | MarkedWitness |
| Direct empirical/population bad event | Intended event (DirectBad) | Fubini and confidence ledger | PAC utility | No independent measurable producer | derived only sectionwise | DirectBadWitness |
| \(E_{\rm good}\) | Fixed-\(S\) partition analysis | Source inclusions and confidence ledger | Utility | Conditional sections only | derived only sectionwise | GoodWitness / no envelope |
| End-to-end DP/PAC learner | No legal producer | Rate specialization and assembly | Exact goal | Missing before all consumers | derived target | Measurable kernel and event absent |
| Old-Lyu common interface | Same blocked exact procedure | Public minimum | Baseline frontier | Same missing producer path | derived target | Same kernel/event obstruction |

## Sketch Steps

None.

## Dependency Notes

There is no step graph. Adding the old step_009 as a dependency of the old
step_011 would be correct only if step_009 could produce a measurable learner
and marked kernel. Equations (KernelWitness) and (MarkedWitness) show that no
such producer follows from the unchanged primitive assumptions. Relabeling the
obligation as step-local would violate the Step-Locality And Theorem-Contract
Gate.

All previously passed quantitative modules are retained in the roadmap as
conditional calculations, but none is assigned a Step ID because the theorem
cannot first define the randomized learner, its marked law, or its PAC event.

## Blockers

1. Candidate idea/theorem-contract defect: the exact arbitrary-class Lyu
   procedure is not a measurable sample-to-list or sample-to-output kernel.
   The allowed class (PointClass) has \(v=d=1\), consists entirely of Borel
   concepts, and nevertheless gives the nonmeasurable exact kernel coordinate
   (KernelWitness). Repair requires at least a fixed measurable instance
   space, a standard-Borel or countably generated output/state model, jointly
   measurable evaluation, and a measurable graph/enumeration/selection
   theorem for every exact restriction and essential list. Countability,
   universal separability/permissibility, or an image-admissible-Suslin
   condition would be theorem-facing assumptions absent from the binding
   setting.

2. Candidate idea/theorem-contract defect: the uniform occurrence refinement
   has valid pointwise coordinate formulas and exact projection, but
   (MarkedWitness) prevents it from being a kernel. The directly marked event
   carrying actual output, empirical error at most \(\alpha/8\), and
   population error above \(\alpha\) is likewise nonmeasurable by
   (DirectBadWitness). Repair by replacing actual hypotheses with a countable
   or standard-Borel encoded list/certificate and a measurable decoder would
   change the exact Lyu procedure, actual-function identity, or forbidden
   output-quotient interface.

3. Candidate idea/theorem-contract defect: the exact \(E_{\rm good}\) has
   valid fixed-\(S\) finite-partition bounds but need not be jointly
   measurable, as (GoodWitness) shows. A useful measurable envelope requires
   a new permissibility/universal-measurability assumption. The alternative
   section route requires the independently measurable final event ruled out
   by blocker 2. Using outer probability, a \(D\)-dependent completion, or a
   conditional/outer PAC statement would change the exact success criterion
   or probability mode.

4. Baseline propagation blocker: the old-Lyu arm uses the same state and
   Sparse Sample maps and inherits blockers 1-3. Its rate algebra, the
   finite-class arm, \(d=0\), \(v=d\), infinite-class disabling, privacy
   budget arithmetic, and the declared small-\(\delta\) schedule remain
   intact, but they cannot establish the required common unconditional
   DP/PAC interface.

The smallest sound reviewer-side route is IDEA_FAIL. A new idea must either
change the theorem contract by adding explicit measurable-structure
assumptions, or change the procedure to a measurably encoded output/list
mechanism. Neither change is permitted inside the present exact-goal
proof-sketch revision.

## Self-Audit

- Binding setting and exact goal: unchanged.
- Procedure and output identity: unchanged; no repair was silently installed.
- Arbitrary-class stress: includes an explicit infinite \(v=d=1\) class of
  individually Borel concepts and the Durst-Dudley-type distinction between
  finite measurable sections and joint measurability.
- Required Repair Bundle: every requested kernel, marked coordinate,
  projection, direct final event, \(E_{\rm good}\) route, dependency producer,
  and old-arm propagation is either derived pointwise or met by an explicit
  theorem-contract counterwitness.
- Passed mathematics: finite reconstruction, holdout, one-sided Chernoff,
  multiplicity, trace fixed point, privacy budget, rate, and baseline
  calculations are preserved conditionally.
- Assumption discipline: no standard-Borel, countability, permissibility,
  measurable-selection, output-sigma, or theorem-facing measurability
  assumption was added.
- Sketch status: no viable sketch; Step count \(=0\); Sketch Steps \(=\) None.
