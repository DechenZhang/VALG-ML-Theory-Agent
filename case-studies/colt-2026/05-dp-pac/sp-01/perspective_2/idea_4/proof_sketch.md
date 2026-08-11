# Proof Sketch

## Formalized Setting

The binding formalization is `perspective_2/idea_4/setting.md`, SHA-256
`a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`; the
accepted idea is `perspective_2/idea_4/idea.md`, SHA-256
`e5b309c3a9041d18c73672d91b4914bb3d17f871e2f7dedad34e6a7b5a0d05de`.
The theorem is conditional only on the four primitive assumptions
`assump:finite-littlestone`, `assump:countable-evaluation-quotient`,
`assump:realizable-iid`, and `assump:approximate-dp-regime`.

Let (Q_C=X/{\equiv_C}), with its discrete sigma-field, and let
(\kappa:X\to Q_C) be the measurable quotient map.  The map
(c\mapsto\bar c) factors every concept through (Q_C), and the released
object is (\bar h\in H_C:=\{0,1\}^{Q_C}), decoded only after release by
(\operatorname{Dec}_C(\bar h)=\bar h\circ\kappa).  For finite or countable
(Q_C), (Z_Q^N=(Q_C\times\{0,1\})^N) is countable discrete and
((H_C,\mathcal H_C)) is standard Borel.  This is a primitive input coding
condition, not an assumption that a version space, list, selector, good
event, occurrence law, or learner kernel is measurable.

For (d=0), nonemptiness and Littlestone dimension zero imply that all
members of (C) agree, so the quotient learner uses (N=0) and the fixed
singleton output (\bar c_0).  For (d\ge1), the learner first applies
(T_N) recordwise and then runs exactly the source-valid fixed-block Lyu
construction on (\bar C): the same (d+1) stages, exact decompositions,
essential-SOA lists and candidate identities, one AboveThreshold process, and
one Sparse Sample call after the successful stage.  Empty restrictions,
empty lists, failed thresholds, the failure symbol, stage exhaustion, and the
output fallback are totalized before any privacy or utility argument.  The
analysis-only occurrence mark is never released.

All lists and functions below are functions on (Q_C), not representatives
of empirical traces.  Every assertion about the raw space is obtained only
after a quotient statement has been proved and pulled back through (T_N).

## Formalized Goal

This is exact-goal mode with progress type `conditional`.  Prove that the
totalized quotient-first law, pulled back by (T_N), is a measurable Markov
kernel, is ((\varepsilon,\delta))-DP for every raw neighboring labeled
pair (including nonrealizable inputs), and has realizable population error at
most (\alpha) with failure at most (\beta), uniformly over all probability
measures (D) on ((X,\Sigma)) and all (c\in C).  For (d\ge1), the
sample size must obey
\[
 N\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
 \left[
 \frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}{\varepsilon\alpha}
 +\frac{d+\log(1/\beta)}{\alpha}
 \right]
\]
for universal (K\ge1) and (q\in\mathbb N_0), and (N=0) for (d=0).

On the same quotient interface, prove separately that the old-Lyu law has
the (\widetilde O(R_{\mathrm{old}})) bound and, when (|C|<\infty), the
finite-class private-ERM law has the (\widetilde O(R_{\mathrm{fin}})) bound.
Only after all three arms have the same output, decoder, raw-neighbor, DP,
and PAC interfaces may the minimum be stated.  At fixed
((\alpha,\beta,\varepsilon)), with the declared small-(\delta) schedule,
the comparison is
\[
 \widetilde O\!\left(\min\{\log^+|C|,d^5,vd^4\}\right).
\]
The quotient restriction is explicit; no claim is made for uncountable
evaluation quotients or for a universal polynomial in (v) and
(\log d) outside this conditional regime.

## Sketch Identity

- Sketch attempt: 1
- Producer unit attempt: 1
- Retry mode: initial sketch
- Search mode: OPEN
- Selected framework: quotient-first VC-trace recalibration of Lyu's fixed-block DP-ERM, with a measurable marked finite-reconstruction bridge
- Source provenance: Lyu arXiv:2510.00076v1, Ghazi et al. arXiv:2012.03893, and the finite-class exponential-mechanism route arXiv:0803.0924
- Step count: 16

## Proof Roadmap

### Exact source preflight and current-object mapping

The source theorem family is Xin Lyu, *Private Learning of Littlestone
Classes, Revisited*, arXiv:2510.00076v1.  The proof-step mapping is fixed as
follows.

| Source identity | Current quotient object and hypothesis discharge | Exact interface consumed | Known non-output boundary |
| --- | --- | --- | --- |
| `prop:chernoff-sample-without-replacement` (Proposition 2) | A fixed indexed quotient error vector and one marginally uniform block of a data-independent partition; the source's finite-population sampling convention is unchanged | High-error relative deviation in `E_good` | The printed factor-one two-sided display is not used for the near-zero branch; that branch is proved locally |
| `def: p-decomposition`, `claim: exist decomposition`, `lemma: number of leaves` (Lemma 4.1) | A nonempty restriction (H\subseteq\bar C), with (p) and (d) exactly as in the source | Existence, leaf count, and irreducible leaf witnesses | These statements do not provide measurable dependence on a raw uncountable input; quotient kernel production is separate |
| `lemma: p-decomposition` (Lemma 4.3) | (H_{i,\mathrm{src}}^{r+1}\subseteq\bigcap_{i'}H_{i',\mathrm{src}}^r), paired as ((2p_r,d)) and ((p_r,d)) | DDim comparison and exact SOA equality as functions on (Q_C) | It does not by itself produce an essential item when DDim is zero |
| `def: essential hypothesis`, `coro: essential hypotheses` (Corollary 4.1) | Essential sets are sets of actual quotient functions; empty restrictions are totalized to empty lists | (|\mathcal L_i^r|\le p_r^d2^{d^2}), equal-DDim inheritance, and the DDim-zero common-support conclusion | The source list lemma is pointwise; measurability is supplied by the countable quotient input domain |
| `algo:private sample`, `lemma: privacy of sparse sampling` (Algorithm 1/Lemma 3.1) | The input is the ordered tuple of at most (L) actual quotient-function lists; one raw replacement changes at most one list coordinate after quotienting | One-list replacement DP and the actual-item/failure-symbol law | The lemma does not map raw records to lists; that map is proved in `step_011` |
| `algo: abovethreshold`, `lemma: privacy of abovethreshold` (Algorithm 2/Lemma 3.2) | Queries are maximum occurrence counts over the quotient list tuple, with sensitivity one | One adaptive transcript and first-success stage | Source privacy does not itself imply utility or measurable raw pullback |
| `lemma: Ldim-of-SOA` (Lemma 4.2), restating Ghazi et al. Lemma 4.4 | (\widehat C_{d+1}:=\{\operatorname{SOA}_{G}:G\subseteq\bar C\text{ is }(d+1)\text{-irreducible}\}) | (\operatorname{LD}(\widehat C_{d+1})\le d), hence the fixed output family used only for structural bookkeeping | No generic permissible-class or raw-space measurability conclusion is imported |
| `thm: DP-ERM-littlestone` (Theorem 3) | Same exact quotient restrictions, actual essential functions, one-list replacement, AboveThreshold, and Sparse Sample path | Source empirical utility and privacy arithmetic after the current wrappers discharge hypotheses | Its displayed PAC wrapper is not used as a hidden measurability assumption |
| `coro: PAC learning` (Corollary 5.1) | Current quotient distribution (P_{\bar D,\bar c}), with risk transferred exactly through (\kappa) | Source rate comparison and confidence convention, after the marked holdout proof supplies the explicit utility event | No source statement is used to bypass the finite reconstruction or quotient-kernel steps |

Ghazi et al. arXiv:2012.03893 is used only through the structural SOA/Ldim
statement restated by Lyu.  The current objects are the induced binary class
(\bar C) and its quotient restrictions; source properness is not imported,
and the released output remains potentially improper.  Source conventions
match on binary labels, realizable population sampling, Littlestone/irreducible
objects, and the SOA map.  The only changed convention is the explicit
quotient input and output coding, for which `step_002`-`step_003` give a
current-notation wrapper and exact risk bridge.

For the explicit stage convention, put
\[
 \rho:=1-\frac1{2d},\qquad
 H_{i,\mathrm{src}}^s
 :=\{\bar h\in\bar C:
       \operatorname{err}_{\bar S_i}(\bar h)\le \rho^s\gamma\},
 \quad s=1,\ldots,d+1,
\]
and \(p_{s,\mathrm{src}}:=2^sn_0d\).  The branch indices are
\[
 H_i^r:=H_{i,\mathrm{src}}^{r+1},\qquad
 p_r:=2^rn_0d=\tfrac12p_{r+1,\mathrm{src}},
 \quad r=0,\ldots,d.
\tag{SourceMap}
\]
Thus each structural transition uses Lyu Lemma 4.3 only with
\[
 \mathcal G=H_{i_*}^{r+1},\quad
 \mathcal H=H_i^r,\quad
 (2p,d)=(p_{r+1},d),\quad(p,d)=(p_r,d).
\tag{Pair}
\]
If a maximal leaf has Littlestone dimension \(t\), its source
irreducibility is \(p_r2^{d-t}\), and
\[
 p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\}.
\tag{Irred}
\]
These are exact source/current identities, not asymptotic comparisons.

### Why the quotient repairs the idea_3 diagonal

The idea_3 counterexample used a point class
\(C_A=\{x\mapsto\mathbf1\{x=t\}:t\in A\}\) indexed by a non-Borel set
\(A\). Its diagonal positive samples forced an empty-versus-singleton list
coordinate whose positivity set was \(A\), so the raw pointwise source laws
could not form a kernel. That class has one distinct evaluation type for
each \(t\in A\) (and the outside type), hence an uncountable evaluation
quotient and is excluded by `assump:countable-evaluation-quotient`
itself.

For the current branch, the primitive source is instead the measurable map
\(\kappa:X\to Q_C\) into a countable discrete space. A diagonal or any other
raw dataset first maps into the countable set \(Z_Q^N\). Every pointwise
totalized restriction, list, event, and output-law coordinate on that set is
measurable, and composition with the already measurable \(T_N\) gives the
raw coordinate. Thus the repair derives the desired kernel from a static
pre-sampling coding condition; it does not assume the kernel, a measurable
list, a selector, or a good event.

### Parameter package and total procedure

For (d\ge1), use an internal tolerance (\gamma=\alpha/16), with the
universal block constant absorbing this fixed conversion.  Split confidence
as
\[
 \beta_{\mathrm{tr}}=\beta_{\mathrm{AT}}=\beta_{\mathrm{SS}}=\beta_{\mathrm{gen}}=\beta/4,
 \qquad \delta_{\mathrm{AT}}=\delta_{\mathrm{SS}}=\delta/2.
\]
Let \(c_{\mathrm{AT}}\ge1\) be a universal constant for Lyu Lemma 3.2,
put
\[
 g_\delta:=\log(4/\delta),\qquad
 \eta:=\frac{\varepsilon}
 {4c_{\mathrm{AT}}(\sqrt{g_\delta}+g_\delta)},\qquad
 \varepsilon_{\mathrm{SS}}:=\varepsilon/8.
\]
Then the source AboveThreshold prefix and Sparse Sample call cost at most
\((\varepsilon/4,\delta/2)\) each.  For each integer
(t\ge2), define
\[
 a(t)=v+\log(4t/\beta),\qquad
 Q(t)=e+\frac{e t d^2a(t)}{\alpha v},
\]
\[
 m(t)=\left\lceil C_{\mathrm{blk}}\frac{d^2}{\alpha}a(t)\log Q(t)\right\rceil,
 \quad n(t)=t m(t),\quad p_d(t)=2^dn(t)d,
\]
\[
 L(t)=p_d(t)^d2^{d^2},\qquad
 B(t)=\left\lceil\frac{10\log(L(t)/\delta_{\mathrm{SS}})}{\varepsilon_{\mathrm{SS}}}\right\rceil.
\]
Let
\[
 \tau_{\mathrm{AT}}
 :=\eta^{-1}\log((d+1)/\beta_{\mathrm{AT}})
\]
be the simultaneous Laplace-noise threshold for the \(d+1\)
AboveThreshold queries and let
\[
 \tau_{\mathrm{SS}}(t)
 :=\varepsilon_{\mathrm{SS}}^{-1}
   \log((tL(t)+1)/\beta_{\mathrm{SS}})
\]
be the Sparse Sample effective-domain threshold.  Pin the teacher count by
the least feasible integer
\[
 k=\min\left\{t\ge2:
 \frac t2-\tau_{\mathrm{AT}}
 \ge B(t)+\tau_{\mathrm{SS}}(t)+2\right\}.
\tag{Teacher}
\]
The direct candidate
\[
 \bar k=\left\lceil C_{\mathrm{teach}}
 \frac{d^2\log(64/(\delta\beta))\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^2}{\varepsilon}\right\rceil
\]
has (\log\bar k,log n(\bar k),log L(\bar k)) bounded by universal
polynomials in (\Lambda), so a universal (C_{\mathrm{teach}}) makes it
feasible.  Thus (k\le\bar k) is proved before any random event is used.

Draw the complete quotient master sample, then a data-independent uniform
partition into (k) indexed blocks of size (m=m(k)), and reuse this same
partition at every source stage.  For (r=0,\ldots,d), define the source
restrictions and exact essential lists on (Q_C).  On every quotient input,
run one AboveThreshold process on the stage scores, call Sparse Sample once
after the first successful stage, and return an actual quotient function or
the fixed default (\bar c_0) on every fallback path.

The pointwise source existence statements are made deterministic before the
learner is run.  At fixed public parameters, the set of reachable local
quotient block states (ordered block data, stage, and derived restriction) is
countable.  For each nonempty local restriction, fix one decomposition whose
existence is supplied by the cited source result and one ordering of its
finite essential list; empty restrictions use the already declared
empty-list/fallback convention.  This is a countable lookup table on a
discrete state space: every fiber is measurable, and no theorem-facing
measurable-selector assumption is introduced.  In particular, identical
local block states use identical fixed choices, which is the locality needed
by the raw one-list replacement proof.

### Marked finite reconstruction

For an actual output \(\bar h\) on a realized internal path (partition,
stage transcript, list tuple, and Sparse Sample coins), define
\[
 I_{\bar s,\mathrm{state}}(\bar h)
 :=\{i:\bar h\in\mathcal G_i(\bar s,\mathrm{state})\},
\]
and draw (J) uniformly from this nonempty set; put (J=0) on every
non-actual/fallback path.  The resulting marked law is an analysis-only lift.
It is formed on the joint pointwise law of the internal state and output and
then the internal state is integrated out.  Therefore different partitions
that produce the same \(\bar h\) may have different occurrence sets without
affecting the projection identity.
For a fixed producer block (i),
\[
 \mathcal G_i(\bar S_i)=\bigcup_{r=0}^d\mathcal L_i^r(\bar S_i),
 \qquad |\mathcal G_i|\le(d+1)L(k).
\]
It depends only on the producer block.  On the core source/mechanism event,
if (J=i), the selected actual output belongs to (\mathcal G_i) and its
full-sample empirical loss is at most (\alpha/8), hence
\[
 \widehat{\operatorname{err}}_{-i}(\bar h)
 \le \frac{k}{8(k-1)}\alpha\le\frac\alpha4.
\tag{Holdout}
\]
Conditional on (\bar S_i) and a fixed candidate with population error
(p>\alpha), the independent complement of ((k-1)m) quotient examples has
the one-sided bound
\[
 \Pr[\widehat{\operatorname{err}}_{-i}(\bar h)\le\alpha/4]
 \le \exp\left(-\frac9{32}\alpha(k-1)m\right).
\tag{LowerTail}
\]
The finite union over (i) and (\mathcal G_i), together with the trace,
AboveThreshold, and Sparse Sample ledgers, yields the unconditional PAC
bound.  No uncountable supremum event is used.

### Separately normalized comparison arms

The old-Lyu arm is not introduced only by a tilde citation.  On the same
quotient interface, repeat the parameter dictionary with
\[
 a_{\mathrm{old}}(t):=d+\log(4t/\beta),\qquad
 Q_{\mathrm{old}}(t)
 :=e+\frac{e t d^2a_{\mathrm{old}}(t)}{\alpha d},
\]
\[
 m_{\mathrm{old}}(t)
 :=\left\lceil C_{\mathrm{old}}\frac{d^2}{\alpha}
 a_{\mathrm{old}}(t)\log Q_{\mathrm{old}}(t)\right\rceil.
\]
Define \(L_{\mathrm{old}},B_{\mathrm{old}},k_{\mathrm{old}}\) by the same
source list/noise margin and use the coarse source trace exponent \(d\).
The quotient kernel, raw-neighbor, exact SOA, marked projection,
producer-block holdout, and decoder-risk steps are repeated rather than
borrowed from the new arm.  They yield
\[
 N_{\mathrm{old}}\le K_{\mathrm{old}}\Lambda^{q_{\mathrm{old}}}
 \left[
 \frac{d^5\log(1/(\delta\beta))}{\varepsilon\alpha}
 +\frac{d+\log(1/\beta)}{\alpha}\right].
\tag{OldArm}
\]

When \(M:=|C|<\infty\), the bijection \(C\leftrightarrow\bar C\) gives
\(|\bar C|=M\).  The finite arm applies the exponential mechanism to the
empirical error counts of the fixed finite set \(\bar C\), releases in
\(H_C\), and then uses the same decoder.  Its quotient law is pure
\(\varepsilon\)-DP and its utility inequalities are normalized to
\[
 N_{\mathrm{fin}}\le K_{\mathrm{fin}}\Lambda^{q_{\mathrm{fin}}}
 \left[
 \frac{\log^+M+\log(1/\beta)}{\varepsilon\alpha}
 +\frac{\log(1/\beta)}{\alpha}\right].
\tag{FiniteArm}
\]
For infinite \(C\), this arm has cost \(+\infty\) and no data-dependent
finite subclass is substituted.  Both comparison laws use the exact
\(d=0\) no-data branch.

## Rate Objectives

- Objective type: structural-parameter explicit, confidence-explicit, privacy-parameter explicit, fixed-sample PAC rate.
- Exposed variables: (d,v,\alpha,\beta,\varepsilon,\delta), with (|C|) exposed only in the separate finite-class arm.
- Hidden constants may depend on: nothing; all constants and the logarithmic exponent (q) are universal.
- Hidden constants may not depend on: (X,\Sigma,C,D,c,|C|), a decomposition, list, support, partition, stage, generated event, kernel, or output.
- Fixed quantities: none for the main theorem; the frontier comparison fixes (\alpha,\beta,\varepsilon) and retains only the declared (\delta\)-schedule.
- Probability mode: all-input Markov-kernel DP for every raw neighboring pair; unconditional high-probability PAC over iid sampling, partition randomness, mechanism randomness, and the analysis-only mark after projection.
- Horizon mode: fixed sample (N); no all-time or stopping-time upgrade.
- Norm mode: population binary (0)-(1) error, with exact quotient-risk equality.
- Required bridge or simplification obligations: prove quotient preservation; prove the kernel and marked-kernel interfaces; prove the trace bound and fixed point; discharge all source hypotheses; prove the producer-block holdout and one-sided Chernoff inequality; eliminate (k,m,L,B) and all failure allocations; and normalize the old-Lyu and finite-class arms before taking a minimum.
- Baseline invariance obligations: (d=0) exact no-data recovery, (v=d) return to the (d^5) scale, the old-Lyu arm, the finite-class arm, infinite-class disabling of only the finite arm, and the declared (N\delta\to0) schedule are all preserved.

## Assumption Provenance Objectives

| Needed theorem-facing output | Primitive conditions/source | Producer step | Classification and use before production |
| --- | --- | --- | --- |
| Quotient factorization, dimension preservation, risk and neighbor transfer | `assump:finite-littlestone`, `assump:countable-evaluation-quotient` | `step_002` | Derived; no quotient property is assumed downstream |
| Countable-domain standard-Borel output and raw learner kernel | `assump:countable-evaluation-quotient`; direct countable-discrete kernel argument | `step_003` | Derived; pointwise laws are not promoted to a raw kernel before this step |
| Marked occurrence kernel and projection | `step_003` output law and finite occurrence sets | `step_004` | Derived analysis-only output; the released marginal remains unchanged |
| Exact parameter tuple, teacher margin, and total fallback paths | `assump:finite-littlestone`, `assump:approximate-dp-regime`; direct scalar closure and Lyu list envelope | `step_001` | Primitive inputs imply a derived public tuple before any event or mechanism consumer |
| VC trace family and `E_good` | `step_005`-`step_007` | `step_005`-`step_007` | Derived concentration outputs; never theorem assumptions |
| Source restrictions, lists, irreducible leaves, and common-score stage | Lyu source statements with quotient object map and preceding event | `step_008`-`step_009` | Derived from accepted dependencies; conditional source lemmas are discharged before use |
| Actual Sparse Sample output | `step_001`, `step_004`, `step_009` and Lyu mechanisms | `step_010` | Derived mechanism output; fallback remains explicit |
| All-input DP | `step_003`, `step_008`, `step_010`, Lyu privacy lemmas | `step_011` | Derived without realizability or `E_good` |
| Exact SOA identity and empirical error | `step_008`, `step_010`, `E_good` | `step_012` | Derived output identity; no improper output family is assumed |
| Population PAC guarantee | `step_004`, `step_007`, `step_008`, `step_010`, `step_012`, `assump:realizable-iid` | `step_013` | Derived finite reconstruction; no generic measurable VC event is assumed |
| Public VC-arm rate | all new-arm outputs and direct algebra | `step_014` | Derived new-arm specialization before comparison |
| Old-Lyu common-interface arm | quotient/kernel/source wrappers and coarse trace calibration | `step_015` | Derived separately; no new-arm PAC event is assumed |
| Finite-class arm and comparison minimum | quotient kernel/risk bridge, finite exponential mechanism, and the two normalized arms | `step_016` | Derived final minimum and baseline specializations |

## Mechanism-Source And Boundary Stress

### `step_001`: parameter closure and totalization

- Step ID: `step_001`
- Claim class: deterministic parameter feasibility, positive-branch activation, and total generated procedure.
- Theorem role: define the exact (k,m,n_0,L,B), privacy allocations, and every fallback path before trace, privacy, or utility claims consume them.
- Mechanism source: direct scalar dictionary in (Teacher), Lyu `coro: essential hypotheses` for (L(t)=p_d(t)^d2^{d^2}), and Lyu `lemma: privacy of sparse sampling` for (B(t)\ge10\log(L(t)/\delta_{\mathrm{SS}})/\varepsilon_{\mathrm{SS}}).
- Source-to-claim adequacy: source list and threshold conventions match current quotient functions; the public (\bar k) is a direct scalar witness, not an appeal to a hidden tilde parameter. The (d=0) branch is separately direct.
- Residual-to-target adequacy: the produced tuple is exactly the tuple used by the algorithm and by the public sample count; ceiling terms are retained and bounded explicitly.
- Key positive/control term or structural source: the score margin (t/2) grows linearly in (t), while (\tau_{\mathrm{AT}}+B(t)+\tau_{\mathrm{SS}}(t)) grows only through logarithms of (t,n(t),L(t)) and the displayed (d^2/\varepsilon) factor.
- Opposing defect terms: (\log\alpha^{-1},log\beta^{-1},log\delta^{-1},log n(t),log L(t)), privacy noise, and ceilings.
- Closure/dominance/absorption relation: (\log\bar k,log n(\bar k),log L(\bar k)le C\Lambda) (with the explicit (d^2) factor in (\log L)); choosing universal (C_{\mathrm{teach}}) makes (\bar k/2) dominate all defects by at least (2).
- Accumulation behavior / scope compatibility: one finite deterministic feasibility check; no stochastic or repeated-scope forcing term.
- Obligation locality classification: `step-local`.
- Noncircular closure status: every candidate tuple is defined for each integer (t) before feasibility; (\bar k) is a feasible witness, so the least (k) is fixed before any generated event.
- Entry-state / first-update stress result: (d=0) bypasses all positive-branch mechanisms and returns the unique concept; (d\ge1,t\ge2) gives (p_0=n_0d\ge\max\{n_0,d+1\}) and a legal first stage.
- Baseline conclusion preserved: exact (N=0) recovery and the (v=d) source-scale specialization are unchanged.
- Producer-consumer provenance: this step produces the parameter dictionary and total procedure for `step_003`-`step_014`.
- Null or boundary regime tested: (d=0), (d=v=1), (v=d), (k=2), ceiling-dominated (m), (\beta\uparrow1/4), and small (\delta).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without a feasible margin, Sparse Sample can return the failure symbol on the intended source-success path and the public rate is undefined.
- Repair route if source is unsupported: `/proof-step step_001`; a failed public envelope would be a `sketch/interface defect`.

### `step_002`: quotient factorization and exact transfers

- Step ID: `step_002`
- Claim class: measurable quotient bridge, combinatorial dimension preservation, and object-target/risk transfer.
- Theorem role: establish that the source theorem can be applied to (\bar C) and that its output has exactly the raw-space target meaning.
- Mechanism source: direct derivation from (x\equiv_Cx'), the measurable-cell condition in `assump:countable-evaluation-quotient`, and the definitions of VC and Littlestone dimension.
- Source-to-claim adequacy: the map (c\mapsto\bar c) is bijective; every finite shattered set or Littlestone tree in (X) maps to one with distinct quotient points, and every quotient witness lifts by choosing one representative per cell. Thus (\operatorname{VC}(\bar C)=v) and (\operatorname{LD}(\bar C)=d), including the (d=0) singleton case.
- Residual-to-target adequacy: the produced quotient target ((\bar D,\bar c)) and consumed raw target ((D,c)) have exact equality
  (\operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)=operatorname{err}_{\bar D}(\bar h,\bar c)); no approximation or representative residual remains.
- Key positive/control term or structural source: equality of all concept evaluations on a quotient cell, and the exact pushforward identity (\kappa_\#P_{D,c}=P_{\bar D,\bar c}).
- Opposing defect terms: duplicate raw points, arbitrary fibers, improper (\bar h), and raw neighbors that collapse to one quotient record.
- Closure/dominance/absorption relation: duplicates are identified exactly; a raw replacement either maps to the same quotient record or to one replacement neighbor, so no defect is absorbed heuristically.
- Accumulation behavior / scope compatibility: finite products preserve the recordwise identity; no iterative accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all claims are direct from the primitive quotient relation and precede source restrictions, lists, and kernels.
- Entry-state / first-update stress result: for (d=0), all concepts are identical and the no-data output already has zero risk; for (d\ge1), the first quotient record is well-defined even when raw points in its fiber differ.
- Baseline conclusion preserved: VC/LD values, realizable distribution mode, improper output allowance, and exact zero-risk (d=0) branch remain unchanged.
- Producer-consumer provenance: this step supplies (\bar C), dimension values, neighbor transfer, pushforward sampling, and the decoder-risk bridge to `step_003`, `step_005`, and `step_013`-`step_016`.
- Null or boundary regime tested: singleton quotient cells, repeated raw points, finite (Q_C), countably infinite (Q_C), (v=0), (v=1), and (d=v).
- Target conclusion false or theorem-critical obstruction present if source vanishes: applying Lyu directly to (X) without this bridge would leave both source dimensions and the released risk object unmatched.
- Repair route if source is unsupported: `/proof-step step_002`; changing the quotient or risk metric would be an `idea/theorem-contract defect`.

### `step_003`: countable-domain kernel and raw pullback

- Step ID: `step_003`
- Claim class: measurable Markov-kernel construction and theorem-facing generated-output feasibility.
- Theorem role: make the totalized quotient learner, all list/event coordinates, and its raw pullback legitimate before DP or PAC probabilities are stated.
- Mechanism source: `assump:countable-evaluation-quotient` plus the direct fact that (Z_Q^N) is countable discrete and (H_C=\{0,1\}^{Q_C}) is a countable product of finite discrete standard-Borel spaces.
- Source-to-claim adequacy: every pointwise restriction, list, transcript,
  finite candidate tuple, fallback, and source \(E_{\mathrm{good}}\) section
  is an arbitrary function of a countable discrete input and hence
  measurable. Every pointwise finite probability law is therefore a kernel;
  no global measurable enumeration or selector is invoked. Evaluation maps
  \(\bar h\mapsto\bar h(q)\) are measurable, and for fixed
  \((\bar D,\bar c)\) the population risk is the monotone limit of the
  measurable partial sums
  \(\sum_{q\in F}\bar D(q)\mathbf1\{\bar h(q)\ne\bar c(q)\}\) over finite
  \(F\uparrow Q_C\). The decoder is measurable because \(\kappa\) is.
- Residual-to-target adequacy: the produced quotient kernel has exactly output space ((H_C,\mathcal H_C)) required by the setting; the raw kernel is (A_N(s,E)=K_C(T_N(s),E)), not a surrogate codomain.
- Key positive/control term or structural source: countability of the quotient input, which turns every pointwise assignment into a measurable coordinate map.
- Opposing defect terms: the original idea_3 nonmeasurable diagonal, uncountable raw domain, arbitrary infinite (\bar C), and data-dependent finite lists.
- Closure/dominance/absorption relation: the qualitative measurability defect is removed exactly by the countable discrete domain; no probability or size threshold is claimed to absorb it.
- Accumulation behavior / scope compatibility: finite products, finite stages, and finite mark coordinate preserve standard Borel structure; no all-time closure is used.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the source pointwise law is assigned first on each quotient atom; only then is it called a kernel and pulled back through (T_N).
- Entry-state / first-update stress result: an empty quotient input, an all-fallback transcript, and a singleton list are all atoms of the same countable domain and receive explicitly defined laws.
- Baseline conclusion preserved: the output remains potentially improper and the exact source procedure is unchanged on source-valid paths; only the primitive input coding is changed as declared by idea_4.
- Producer-consumer provenance: this step produces the quotient kernel, raw pullback, measurable list/event coordinates, and source law needed by `step_004`, `step_010`, `step_011`, `step_013`, and `step_015`-`step_016`.
- Null or boundary regime tested: finite (Q_C), countably infinite (Q_C), empty lists, duplicate quotient records, arbitrary nonrealizable labels, and (N=0).
- Target conclusion false or theorem-critical obstruction present if source vanishes: pointwise privacy inequalities and finite section bounds would not define a learner kernel on the raw interface.
- Repair route if source is unsupported: `/proof-step step_003`; adding a stronger measurable-selection assumption would be target-changing and is forbidden.

### `step_004`: marked-kernel lift and projection

- Step ID: `step_004`
- Claim class: generated occurrence coordinate and exact output projection.
- Theorem role: supply the legal analysis-only mark used by finite producer-block reconstruction without changing the released law or privacy claim.
- Mechanism source: the finite pathwise occurrence sets \(I_{\bar s,\mathrm{state}}(\bar h)\) evaluated on the exact Sparse Sample state, and the quotient-kernel result of `step_003`.
- Source-to-claim adequacy: on each realized internal path,
  \(I_{\bar s,\mathrm{state}}(\bar h)\) is nonempty and finite; split that
  path's output mass uniformly over its occurrence coordinates and put all
  fallback mass at mark \(0\), then integrate out the full internal randomness. Since
  the input domain is countable discrete, every marked coordinate is
  measurable even if no global list enumeration is chosen.
- Residual-to-target adequacy: summing over marks gives exactly
  (sum_{i=0}^k\widetilde K(\bar s,E\times\{i\})=K(\bar s,E)); the consumed released object is the same (\bar h), with zero residual under the output metric.
- Key positive/control term or structural source: finite nonempty occurrence set and finite mark space ({0,\ldots,k\}).
- Opposing defect terms: repeated occurrences across blocks, empty occurrence sets on fallback paths, and adaptive selected stages.
- Closure/dominance/absorption relation: uniform finite splitting preserves total mass; mark (0) absorbs only non-actual paths and is never treated as a candidate.
- Accumulation behavior / scope compatibility: one finite mark, no repeated release; projection is exact.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_003` produces the released kernel before the lift; the mark is consumed only in `step_013` after projection has been established.
- Entry-state / first-update stress result: on an immediate successful stage the mark is drawn from a nonempty occurrence set; on no-success, empty-list, and failure-symbol paths the fixed mark (0) is used.
- Baseline conclusion preserved: the released output marginal and all privacy parameters are unchanged; the mark is analysis-only.
- Producer-consumer provenance: `step_004` produces (\widetilde K_C) and the projection identity for `step_013` and the independently instantiated old arm in `step_015`.
- Null or boundary regime tested: one occurrence, all (k) occurrences, duplicate candidates, no occurrence, and (k=2).
- Target conclusion false or theorem-critical obstruction present if source vanishes: finite section reconstruction would lack a measurable producer, even though pointwise formulas remained valid.
- Repair route if source is unsupported: `/proof-step step_004`; changing the released output or adding a selector would be a theorem-contract change.

### `step_005`: VC trace counting

- Step ID: `step_005`
- Claim class: finite combinatorial trace export for a possibly infinite class.
- Theorem role: replace the coarse (d)-exponent union by the displayed (v)-exponent without changing source list identities.
- Mechanism source: Sauer--Shelah applied to (\bar C), with quotient dimension preservation from `step_002`; xor by the fixed label vector is a bijection of prediction and error traces.
- Source-to-claim adequacy: for every fixed labeled quotient master sample (\bar S), (|\mathcal E_{\bar C}(\bar S)|\le\Pi_{\bar C}(n_0)\le(en_0/v)^v) when (1\le v\le d).
- Residual-to-target adequacy: the trace vectors consumed by `E_good` are exactly the source error vectors; no trace representative is substituted for a candidate function.
- Key positive/control term or structural source: the VC dimension (v) of the induced quotient class.
- Opposing defect terms: infinite (\bar C), duplicate records, and (v=0) at the constant branch.
- Closure/dominance/absorption relation: duplicates collapse in the trace map; (v=0) is bypassed by `step_001` and `step_002`; no hidden class-cardinality factor enters.
- Accumulation behavior / scope compatibility: finite trace union for one fixed master sample; no independence among partition blocks is needed.
- Obligation locality classification: `step-local`.
- Noncircular closure status: quotient dimension is produced by `step_002` before the trace count is used by `step_006`.
- Entry-state / first-update stress result: (v=1) and repeated quotient records still give a finite trace family; (v=d) reproduces the coarse source scale.
- Baseline conclusion preserved: no finite-cardinality, properness, or separability assumption is added.
- Producer-consumer provenance: `step_005` feeds `step_006` and `step_007`.
- Null or boundary regime tested: (v=1), (v=d), (n_0=v), repeated records, and (d=0) bypass.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the advertised (vd^4) rate cannot be obtained from the fixed-block union.
- Repair route if source is unsupported: `/proof-step step_005`.

### `step_006`: fixed-trace tails and exact `E_good`

- Step ID: `step_006`
- Claim class: generated simultaneous concentration event and source threshold interface.
- Theorem role: prove the exact fixed-block high-error relative and low-error upper-tail clauses consumed by Lyu's cross-stage inclusion.
- Mechanism source: Lyu arXiv:2510.00076v1 `prop:chernoff-sample-without-replacement` for the relative high-error branch, and a current-notation finite-population exponential-mgf/KL derivation for the low-error branch.
- Source-to-claim adequacy: condition on the complete indexed quotient sample; each block is marginally uniform without replacement, and the error trace is fixed. The same source thresholds and tolerance are used. The local low-error derivation covers empirical mean zero and values near (\gamma/3), where the printed two-sided source display is not invoked.
- Residual-to-target adequacy: produced and consumed block errors are the same quotient empirical losses; the only constant conversion is the declared universal (\gamma=\alpha/16) factor.
- Key positive/control term or structural source: exponent (c_{\mathrm{tr}}m\alpha/d^2).
- Opposing defect terms: (4k\Pi_{\bar C}(n_0)) trace/block multiplicity and the ceiling in (m).
- Closure/dominance/absorption relation: union over the finite trace family and (k) blocks gives exactly the displayed `Trace` inequality; `step_007` makes its logarithm at most (\beta_{\mathrm{tr}}).
- Accumulation behavior / scope compatibility: one finite union; block dependence is not multiplied or falsely assumed independent.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_005` supplies the finite trace family and this step produces `E_good` before source inclusion is consumed.
- Entry-state / first-update stress result: zero empirical error makes the low-error failure event impossible under the one-sided tail; repeated records remain indexed and valid.
- Baseline conclusion preserved: source (E_{\mathrm{good}}) thresholds and fixed-block procedure are unchanged, with only VC trace counting and the local near-zero tail wrapper.
- Producer-consumer provenance: `step_006` produces `E_good` for `step_008`, `step_009`, `step_012`, and `step_013`.
- Null or boundary regime tested: empirical error zero, (\gamma/3) boundary, (v=1), dependent partition blocks, and (k=2).
- Target conclusion false or theorem-critical obstruction present if source vanishes: the cross-block restriction inclusion can fail.
- Repair route if source is unsupported: `/proof-step step_006`; a mismatch in source thresholds would be a `sketch/interface defect`.

### `step_007`: fixed point and confidence budget

- Step ID: `step_007`
- Claim class: explicit quantitative fixed-point closure.
- Theorem role: turn `Trace` into a public-confidence interface while preserving all displayed dependence.
- Mechanism source: direct scalar inequalities from (a,Q,m,n_0,k), with the source-valid (\bar k) witness from `step_001`.
- Source-to-claim adequacy: (Q) is defined before (m,n_0); (a) dominates (v) and (\log(4k/\beta)), so (\log(en_0/v)\le C\log Q) after retaining the ceiling.
- Residual-to-target adequacy: the (n_0=km) used in the trace count is exactly the public learner sample size; no alternate master sample is introduced.
- Key positive/control term or structural source: (C_{\mathrm{blk}}a\log Q) in the negative trace exponent.
- Opposing defect terms: (vlog(en_0/v)), (\log(k/\beta_{\mathrm{tr}})), and the additive ceiling term.
- Closure/dominance/absorption relation: choose universal (C_{\mathrm{blk}}) so the negative exponent dominates all terms and yields (Pr[E_{\mathrm{good}}^c]\le\beta_{\mathrm{tr}}).
- Accumulation behavior / scope compatibility: one scalar fixed point; no iterative random forcing.
- Obligation locality classification: `step-local`.
- Noncircular closure status: (Q) and the candidate (\bar k) are fixed before `E_good`; no event is used to define its own sample size.
- Entry-state / first-update stress result: (d=v=1) has positive denominators; (d=0) bypasses the fixed point.
- Baseline conclusion preserved: (v=d) returns to the source (d^5) scale up to allowed logarithms.
- Producer-consumer provenance: this step exports the trace confidence ledger and quantitative (n_0) bound to `step_008`, `step_010`, `step_013`, and `step_014`.
- Null or boundary regime tested: (v=1), (v=d), smallest (k=2), ceiling-dominated (m), and (\alpha\downarrow0).
- Target conclusion false or theorem-critical obstruction present if source vanishes: an uncontrolled (vlog n_0) term would prevent the public rate.
- Repair route if source is unsupported: `/proof-step step_007`.

### `step_008`: source/current stage bridge, lists, and irreducibility

- Step ID: `step_008`
- Claim class: cited-result wrapper, generated restriction/list state, and source-convention bridge.
- Theorem role: make every source decomposition and essential candidate identity available on the quotient before DDim descent or selection.
- Mechanism source: Lyu `def: p-decomposition`, `claim: exist decomposition`, `lemma: number of leaves`, `lemma: p-decomposition`, `def: essential hypothesis`, and `coro: essential hypotheses`.
- Source-to-claim adequacy: write (H_i^r=H_{i,\mathrm{src}}^{r+1}) and (p_r=2^rn_0d=p_{r+1,\mathrm{src}}/2). The consecutive pair is exactly ((p_{r+1},p_r)=(2p_r,p_r)), so Lyu Lemma 4.3 applies with (\mathcal G=H_{i_*}^{r+1}) and (\mathcal H=H_i^r). Source objects are binary functions on (Q_C), matching the current quotient convention; empty classes are handled by the declared empty list.
- Residual-to-target adequacy: the only convention residual is the factor-two source-index shift, and the exact pairing plus (p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\}) transfers both required irreducibility scales to the consumed target. Actual functions, not trace representatives, are preserved.
- Key positive/control term or structural source: (p_{r+1}=2p_r), the source leaf lower scale (p_r2^{d-t}), and the exact SOA identity in Lemma 4.3.
- Opposing defect terms: empty restrictions on arbitrary inputs, source stage indexing, duplicate empirical traces, and potentially infinite (\bar C).
- Closure/dominance/absorption relation: source lemmas are invoked only on nonempty restrictions; empty restrictions are totalized to empty lists. The factor-two relation is exact, so no approximation is absorbed.
- Accumulation behavior / scope compatibility: (d+1) finite stages; the bridge is exact at each transition and has no accumulating error term.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_006` supplies the inclusion event before Lemma 4.3; this step exports lists and leaf witnesses before DDim or mechanism consumers.
- Entry-state / first-update stress result: at (r=0), (p_0=n_0d) already exceeds the needed (n_0) and (d+1) scales; the first transition uses the exact ((2p_0,p_0)) pair.
- Baseline conclusion preserved: all (d+1) source stages, actual essential functions, and improper SOA output are retained.
- Producer-consumer provenance: `step_008` produces cross-block inclusion, finite lists, exact leaf witnesses, and irreducibility for `step_009`, `step_010`, `step_012`, and `step_013`.
- Null or boundary regime tested: empty restriction, DDim-zero restriction, (d=1), infinite (\bar C), and (v=d).
- Target conclusion false or theorem-critical obstruction present if source vanishes: same-scale shorthand would not discharge the source Lemma 4.3 hypotheses or the output irreducibility target.
- Repair route if source is unsupported: `/proof-sketch`; an unresolved object-map residual is a `sketch/interface defect`.

### `step_009`: DDim descent and score-(k) common stage

- Step ID: `step_009`
- Claim class: signed finite-potential descent, common-support production, and finite-stage termination.
- Theorem role: prove that an accurately `Below` stage either decreases DDim or a quotient function has occurrence score (k), so a usable stage exists by (r=d).
- Mechanism source: Lyu Lemma 4.3 and Corollary 4.1 Items 2-4, instantiated with the exact lists and inclusion from `step_008`; realizability supplies the common target (\bar c) in the DDim-zero case.
- Source-to-claim adequacy: if no actual common list item exists and the current maximum DDim is positive, the exact SOA equality makes the next potential at most one smaller. At DDim zero, Corollary 4.1 identifies the essential list with the restriction, so (\bar c) is in every list and has score (k).
- Residual-to-target adequacy: the produced common object is the same actual quotient function consumed by the count query; there is no representative or surrogate.
- Key positive/control term or structural source: integer potential (M_r=\max_i\operatorname{DDim}_{p_r,d}(H_i^r)\in\{0,\ldots,d\}) and a one-unit strict drop under an accurately `Below` stage.
- Opposing defect terms: false `Below`/`Above` reports and mechanism noise, which are isolated to `step_010` and do not enter the deterministic recurrence.
- Closure/dominance/absorption relation: at most (d) strict drops are possible; if all prior stages are accurately `Below`, stage (d) has a score-(k) actual item. The zero case is closed by the target (\bar c), not by assuming a selected output.
- Accumulation behavior / scope compatibility: monotone finite budget (M_0\le d), one-step charge (1), no adversarial additive forcing, and declared finite horizon (d+1).
- Obligation locality classification: `step-local`.
- Noncircular closure status: the recurrence is derived from `step_008`; it does not assume termination or common support.
- Entry-state / first-update stress result: if (M_0=0), common support is active at the first stage; if (M_0>0) and the first stage is accurately `Below`, the first Lemma 4.3 transition produces the strict drop before any later consumer.
- Baseline conclusion preserved: Lyu's finite (d+1)-stage termination and one-list selection route are unchanged.
- Producer-consumer provenance: `step_009` produces a score-(k) stage and common actual support for `step_010`, and the actual candidate guarantee for `step_013`.
- Null or boundary regime tested: (M_0=0), (M_d=0), (d=1), singleton restrictions, and all earlier stages `Below`.
- Target conclusion false or theorem-critical obstruction present if source vanishes: nonnegativity of DDim alone would not imply a common actual item.
- Repair route if source is unsupported: `/proof-step step_009`; a missing same-target identity would require `/proof-sketch`.

### `step_010`: mechanism accuracy and actual selected item

- Step ID: `step_010`
- Claim class: finite mechanism utility, generated output support, and failure-symbol control.
- Theorem role: turn the score-(k) stage into an actual quotient-function output with high probability.
- Mechanism source: Lyu `algo: abovethreshold` / `lemma: privacy of abovethreshold`, `algo:private sample` / `lemma: privacy of sparse sampling`, Laplace tails, and the exact teacher margin from `step_001`.
- Source-to-claim adequacy: max occurrence queries have sensitivity one; on the simultaneous noise event an `Above` report has true score at least (k/2-\tau_{\mathrm{AT}}), and Sparse Sample's finite effective domain has size at most (kL(k)+1). The source threshold (B(k)) and (\tau_{\mathrm{SS}}(k)) therefore leave a margin of at least (2), so the output is an actual list item rather than the failure symbol.
- Residual-to-target adequacy: the produced (\bar H) is literally a member of one current list and hence of its all-stage producer union; fallback output is separately identified and never treated as an actual candidate.
- Key positive/control term or structural source: score-(k) common item from `step_009` and the strict teacher margin from `step_001`.
- Opposing defect terms: (d+1) Laplace noises, false positives, effective-domain mass on the failure symbol, list-size (L), and empty lists.
- Closure/dominance/absorption relation: (\beta_{\mathrm{AT}}) and (\beta_{\mathrm{SS}}) pay the two finite mechanism tails; the teacher inequality dominates all score and failure-symbol losses.
- Accumulation behavior / scope compatibility: one AboveThreshold transcript over finitely many stages and one Sparse Sample call; no naive per-stage privacy or confidence multiplication.
- Obligation locality classification: `step-local`.
- Noncircular closure status: parameters and list bounds are fixed by `step_001` and `step_008`; the score-(k) producer precedes mechanism invocation.
- Entry-state / first-update stress result: empty first-stage lists yield score (0) and cannot create a good-noise false success when (k/2>\tau_{\mathrm{AT}}); immediate score-(k) success is detected on the first query.
- Baseline conclusion preserved: one AboveThreshold process, one post-success Sparse Sample call, source fallback convention, and improper output are unchanged.
- Producer-consumer provenance: `step_010` produces the mechanism-good event, actual output support, selected stage, and output law for `step_011`, `step_012`, and `step_013`.
- Null or boundary regime tested: empty lists, false-positive stages, first-stage success, stage-(d) success, (perp), and (k=2).
- Target conclusion false or theorem-critical obstruction present if source vanishes: an uncharged failure-symbol probability could invalidate both empirical utility and finite reconstruction.
- Repair route if source is unsupported: `/proof-step step_010`; an unsupported source margin would be a `sketch/interface defect`.

### `step_011`: all-input privacy and raw-neighbor transfer

- Step ID: `step_011`
- Claim class: raw-record replacement DP for the released quotient output.
- Theorem role: establish privacy independently of realizability, `E_good`, and the PAC argument.
- Mechanism source: quotient neighbor map from `step_002`, countable quotient kernel from `step_003`, Lyu `lemma: privacy of abovethreshold`, Lyu `lemma: privacy of sparse sampling`, adaptive composition, and postprocessing.
- Source-to-claim adequacy: for a fixed data-independent partition, a raw replacement changes either no quotient record or exactly one block record. Every stage list outside that block is unchanged; the changed list coordinate is the sole one-list replacement allowed by Sparse Sample. Each occurrence-count query changes by at most one, so AboveThreshold has sensitivity one. The same argument holds for arbitrary nonrealizable labels and every transcript prefix.
- Residual-to-target adequacy: quotient DP on equal/neighboring (T_N(s),T_N(s')) transfers exactly to raw replacement DP; averaging over the common independent partition and mechanism coins is postprocessing and introduces no object residual.
- Key positive/control term or structural source: one-list replacement and sensitivity-one count queries, with ((\varepsilon/4,\delta/2)) allocations for each mechanism component.
- Opposing defect terms: empty restrictions, transcript-dependent stopping, stage exhaustion, (perp), default paths, and raw neighbors collapsing to equal quotient inputs.
- Closure/dominance/absorption relation: totalization defines every path; adaptive composition handles transcript divergence; the total cost is at most ((\varepsilon/2,\delta)\preceq(\varepsilon,\delta)). Equal quotient neighbors incur equality.
- Accumulation behavior / scope compatibility: one finite adaptive transcript and one optional call; the stage count is handled inside one AboveThreshold process rather than a repeated composition.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_003` produces a kernel and `step_008` produces the list locality before any privacy inequality is consumed; no utility event is used.
- Entry-state / first-update stress result: the first arbitrary input, including empty lists and nonrealizable labels, has a defined query and output; every terminal transcript is totalized.
- Baseline conclusion preserved: privacy convention, raw replacement adjacency, quotient decoder, and source mechanism budget are unchanged.
- Producer-consumer provenance: `step_011` produces raw ((\varepsilon,\delta))-DP for `step_014`; the normalized VC-arm tuple then flows through `step_016` to final assembly.
- Null or boundary regime tested: same-cell replacement, replacement in each block, empty lists, immediate success, no success, (perp), and arbitrary labels.
- Target conclusion false or theorem-critical obstruction present if source vanishes: pointwise list privacy would not imply raw-kernel DP without the quotient neighbor and kernel bridges.
- Repair route if source is unsupported: `/proof-step step_011`; changing adjacency or release would be a theorem-contract change.

### `step_012`: exact SOA identity and empirical utility

- Step ID: `step_012`
- Claim class: object-target identity, irreducibility, and empirical-error certificate.
- Theorem role: show that every actual selected quotient function is in the exact fixed improper SOA family and has master empirical loss at most (\alpha/8) on the source-good path.
- Mechanism source: Lyu `def: essential hypothesis`, leaf identity from `step_008`, Lyu `thm: DP-ERM-littlestone` empirical contradiction, and `lemma: Ldim-of-SOA`.
- Source-to-claim adequacy: an actual list item has a maximal leaf (G\subseteq H_i^r\subseteq\bar C), (\bar h=\operatorname{SOA}_G), and irreducibility at least (n_0) and (d+1) by `step_008`. The source contradiction uses the exact quotient sample losses and yields (e_{\bar S}(\bar h)\le2\gamma=\alpha/8). Lemma 4.2 maps the same quotient SOA object to (\operatorname{LD}(\widehat C_{d+1})\le d), without asserting properness.
- Residual-to-target adequacy: produced and consumed functions are identical on (Q_C), and decoder risk is transferred by `step_002`; no trace representative or surrogate class is used.
- Key positive/control term or structural source: irreducibility prevents the SOA-labeled restriction on all master records from being empty, yielding the empirical contradiction.
- Opposing defect terms: adaptive output choice, infinite (\bar C), improperness, repeated quotient records, and fallback paths.
- Closure/dominance/absorption relation: exact leaf identity plus (n_0)-irreducibility controls the full-sample error; fallback is charged to the mechanism failure event.
- Accumulation behavior / scope compatibility: one deterministic contradiction after finite source stages; no recursive random forcing remains.
- Obligation locality classification: `step-local`.
- Noncircular closure status: source list and actual output are produced by `step_008` and `step_010` before this claim; fixed SOA-class membership is not assumed.
- Entry-state / first-update stress result: (d=1) has (p_0=n_0) and an empirical-zero output already satisfies the target internal error threshold.
- Baseline conclusion preserved: the potentially improper output and source exact SOA family are retained.
- Producer-consumer provenance: `step_012` produces exact SOA membership and empirical error for `step_013`.
- Null or boundary regime tested: DDim-zero leaf, output outside (\bar C), empirical error zero, infinite class, and (d=v=1).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without exact actual-function identity, neither source empirical utility nor block-local reconstruction is valid.
- Repair route if source is unsupported: `/proof-step step_012`; a source-object mismatch would require `/proof-sketch`.

### `step_013`: measurable marked holdout and PAC conversion

- Step ID: `step_013`
- Claim class: generated-output flow, finite producer-block reconstruction, one-sided concentration, and unconditional PAC utility.
- Theorem role: convert the actual selected quotient output to population error at most (\alpha) without assuming a measurable uncountable supremum event.
- Mechanism source: marked kernel from `step_004`, block-local lists from `step_008`, actual output and empirical error from `step_010` and `step_012`, `assump:realizable-iid`, and a direct exponential-Markov Bernoulli lower-tail proof.
- Source-to-claim adequacy: conditional on the data-independent partition and producer block (i), (\mathcal G_i(\bar S_i)) is generated only from the (m) producer records and has at most ((d+1)L(k)) actual functions. For each fixed candidate with population error (p>\alpha), the complement of ((k-1)m) iid records is independent of (\bar S_i), and the lower-tail bound in (LowerTail) applies. The marked law is a genuine kernel by `step_004`, so the marked failure event is measurable.
- Residual-to-target adequacy: (Holdout) transfers the same selected function's full-sample empirical loss to its complement with factor (k/(k-1)\le2); (LowerTail) uses the same function, target, and quotient population (0)-(1) metric. Every residual is explicit and dominated at the (\alpha/4) threshold.
- Key positive/control term or structural source: independent complement size ((k-1)m) and exponent ((9/32)\alpha(k-1)m).
- Opposing defect terms: (k) possible marks, ((d+1)L(k)) candidates per mark, adaptive selected stage, source/mechanism failures, and the fallback output.
- Closure/dominance/absorption relation: finite union gives (k(d+1)L(k)\exp[-9\alpha(k-1)m/32]); (C_{\mathrm{blk}}) and `step_007` ensure its logarithm is dominated and it is at most (\beta_{\mathrm{gen}}). The trace and mechanism ledgers contribute the other three (\beta/4) shares.
- Accumulation behavior / scope compatibility: one finite mark and finite section union; no persistent or adversarial forcing and no conditioning on a nonmeasurable complete-sample event.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_008` produces block-local lists, `step_010` produces the actual output, `step_012` produces empirical error, and only then does this step form the marked failure event and evaluate the finite complement union.
- Entry-state / first-update stress result: (k\ge2) leaves a nonempty complement; immediate or last-stage success and an empirical-zero output both satisfy the same holdout relation; mark (0) is excluded from the actual-candidate union.
- Baseline conclusion preserved: no generic permissibility assumption, properness restriction, outer probability, or changed success criterion is introduced; the quotient learner and released marginal are unchanged.
- Producer-consumer provenance: `step_013` produces the unconditional quotient PAC event for `step_014`, and `step_002` transfers it to raw risk; the normalized VC-arm tuple then flows through `step_016` to final assembly.
- Null or boundary regime tested: (k=2), (d=v=1), finite and countably infinite quotients, repeated records, fallback paths, and high-error candidates.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without a measurable mark or producer-local candidate union, finite section tails could not be converted to a product-space probability bound.
- Repair route if source is unsupported: `/proof-step step_013`; inability to make the exact quotient mark a kernel would be a `sketch/interface defect` under the current primitive assumption.

### `step_014`: VC-arm public rate specialization

- Step ID: `step_014`
- Claim class: public explicit-rate bridge for the VC-sensitive arm.
- Theorem role: eliminate every new-arm auxiliary and state the conditional
  quotient-first \(K\Lambda^qR_{\mathrm{VC}}\) theorem before comparison.
- Mechanism source: `step_001`, `step_007`,
  `step_011`, `step_013`, and direct scalar algebra.
- Source-to-claim adequacy: the arm uses \(k\le\bar k\),
  \(m\asymp d^2a\log Q/\alpha\), and
  \(a=v+\log(4k/\beta)\); all DP and PAC interfaces have already been
  proved on the exact quotient/raw target.
- Residual-to-target adequacy: all terms dropped in the new-arm public rate
  are logarithmic in displayed parameters and bounded by powers of
  \(\Lambda\); positive powers \(d^4,v\), the confidence log, privacy log,
  and \(1/\alpha\) remain visible. The quotient/raw risk identity is exact.
- Key positive/control term or structural source: (k\le C d^2\log(1/(\delta\beta))\Lambda^2/\varepsilon) and (m\le C d^2(v+\log(1/\beta))\Lambda^2/\alpha).
- Opposing defect terms: ceilings, \(\log k,\log Q,\log L\), and the
  trace/mechanism/holdout confidence conversions.
- Closure/dominance/absorption relation: explicit inequalities bound every
  new-arm auxiliary by a universal power of \(\Lambda\), with no hidden
  positive power of \(d\) or \(v\).
- Accumulation behavior / scope compatibility: one finite specialization;
  the small-\(\delta\) conclusion \(N\delta\to0\) is asserted only under
  `assump:approximate-dp-regime`.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all new-arm rate inputs are earlier generated
  outputs; neither comparison arm is used here.
- Entry-state / first-update stress result: \(d=0\) uses the no-data branch;
  \(v=d\) substitutes directly and gives the \(d^5\) scale; fixed positive
  \(\delta\) is not silently put in the asymptotic schedule.
- Baseline conclusion preserved: exact no-data recovery, \(v=d\), and the
  stated conditional scope remain intact; the other arms are handled
  separately in `step_015`-`step_016`.
- Producer-consumer provenance: `step_014` produces the normalized
  VC-arm DP/PAC/rate tuple for `step_016`.
- Null or boundary regime tested: \(d=v=0\), \(v=1\), \(v=d\), and
  \(\delta\downarrow0\) versus fixed \(\delta\).
- Target conclusion false or theorem-critical obstruction present if source vanishes:
  an unclassified positive-power or confidence term would invalidate the
  VC-sensitive theorem.
- Repair route if source is unsupported: `/proof-step step_014`; a surviving positive-power or interface mismatch would route to `/proof-sketch`.

### `step_015`: old-Lyu quotient arm

- Step ID: `step_015`
- Claim class: separately normalized source-baseline arm with its own
  measurable kernel, privacy, PAC, and explicit-rate interfaces.
- Theorem role: establish the \(d^5\) comparison arm before any minimum is
  taken.
- Mechanism source: Lyu arXiv:2510.00076v1
  `thm: DP-ERM-littlestone`/`coro: PAC learning`, the
  parameter-uniform quotient and marked wrappers of `step_002`-
  `step_004`, and the source coarse \(d\)-trace calibration displayed
  in (OldArm).
- Source-to-claim adequacy: instantiate the same source stage map, exact
  lists, one-list privacy, AboveThreshold, actual SOA identity, marked
  projection, and producer-block Chernoff proof with
  \(a_{\mathrm{old}},Q_{\mathrm{old}},m_{\mathrm{old}},
  k_{\mathrm{old}}\).  Source conventions and current quotient objects are
  unchanged; only the trace exponent and scalar block size revert to the
  old source values.
- Residual-to-target adequacy: the old arm releases in the same \(H_C\),
  pulls back through the same \(T_N\), and uses the same decoder-risk
  identity. No output, metric, privacy, or probability-mode residual remains.
- Key positive/control term or structural source: the coarse source
  concentration exponent at block scale
  \(\widetilde O(d^3/\alpha)\), multiplied by the same
  \(\widetilde O(d^2\log(1/(\delta\beta))/\varepsilon)\) teacher count.
- Opposing defect terms: old \(d\)-trace multiplicity, list/noise logs,
  ceilings, marked candidate multiplicity, and four confidence shares.
- Closure/dominance/absorption relation: the explicit old dictionary
  dominates every source and marked-reconstruction defect and yields
  \(N_{\mathrm{old}}\le K_{\mathrm{old}}\Lambda^{q_{\mathrm{old}}}
  R_{\mathrm{old}}\); only displayed-parameter logarithms are hidden.
- Accumulation behavior / scope compatibility: the same finite \(d+1\)
  stages, one AboveThreshold transcript, one Sparse Sample call, one finite
  mark, and one finite confidence ledger.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all quotient interfaces precede this
  specialization; the old parameter tuple is defined and verified
  independently of the new-arm success event or rate.
- Entry-state / first-update stress result: \(d=0\) uses the same no-data
  singleton branch; at \(d=1\) the quotient procedure and first stage are
  legal; no VC-sensitive improvement is claimed.
- Baseline conclusion preserved: exactly the public old-Lyu \(d^5\) arm,
  including its source-compatible \(\delta\) convention.
- Producer-consumer provenance: `step_015` produces the old-arm
  DP/PAC/rate tuple for `step_016`.
- Null or boundary regime tested: \(d=0\), \(d=1\), finite and infinite
  \(C\), \(v=d\), empty lists, and fixed versus scheduled \(\delta\).
- Target conclusion false or theorem-critical obstruction present if source vanishes:
  comparing a scalar \(d^5\) expression without a quotient kernel and PAC
  proof would violate the common-interface target.
- Repair route if source is unsupported: `/proof-step step_015`; a
  source-object mismatch would require `/proof-sketch`.

### `step_016`: finite arm, minimum, and baseline specialization

- Step ID: `step_016`
- Claim class: finite-class DP/PAC arm, public arm comparison, and baseline
  invariance.
- Theorem role: establish \(R_{\mathrm{fin}}\) separately and then state the
  minimum and fixed-parameter class-complexity frontier.
- Mechanism source: the exponential mechanism/private-ERM route of
  Kasiviswanathan et al. arXiv:0803.0924, the quotient bijection and
  kernel/risk wrappers of `step_002`-`step_003`, and the
  normalized new/old arms from `step_014`-`step_015`.
- Source-to-claim adequacy: when \(M=|C|<\infty\), the score is minus the
  quotient empirical error count, with replacement sensitivity one; the
  exponential mechanism is pure \(\varepsilon\)-DP. Its finite effective
  range and a finite-class error tail yield (FiniteArm), with the
  \(\log M/\alpha\) sampling term dominated by the displayed private term
  because \(\varepsilon\le1\). For infinite \(C\), this arm is assigned
  \(+\infty\) and is not approximated.
- Residual-to-target adequacy: \(|\bar C|=|C|\), the output lies in
  \(H_C\), and the exact decoder-risk bridge gives the same raw population
  target. The minimum chooses among already valid learner sample sizes; it
  does not mix their laws.
- Key positive/control term or structural source: empirical score gap
  \(N\alpha\), finite multiplicity \(M\), and the separate accepted
  \(R_{\mathrm{VC}},R_{\mathrm{old}}\) bounds.
- Opposing defect terms: \(\log M\), confidence, empirical-to-population
  conversion, infinite-cardinality boundary, and arm-specific hidden logs.
- Closure/dominance/absorption relation: finite mechanism and sampling tails
  yield \(R_{\mathrm{fin}}\); taking the least of three certified sample
  thresholds gives the public minimum. At \(v=d\), \(vd^4=d^5\); no hidden
  positive power changes this equality.
- Accumulation behavior / scope compatibility: one finite-class selection
  and one deterministic comparison of three thresholds; no iterative defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: both Lyu arms are completed before the finite
  arm and minimum are consumed; the finite arm is never used to prove either
  infinite-class arm.
- Entry-state / first-update stress result: \(d=0\) chooses the shared
  no-data law; finite \(C\) activates private ERM; infinite \(C\) sets only
  the finite arm to \(+\infty\); fixed positive \(\delta\) is not treated as
  satisfying the source asymptotic schedule.
- Baseline conclusion preserved: \(d=0\), finite-class \(\log^+|C|\),
  old-Lyu \(d^5\), \(v=d\), infinite-class disabling, and
  \(N\delta\to0\) only under the declared schedule.
- Producer-consumer provenance: `step_016` consumes
  `step_014`-`step_015` and produces the final theorem
  comparison for assembly.
- Null or boundary regime tested: singleton finite class, \(d=0\), \(v=1\),
  \(v=d\), infinite \(C\), and \(\delta\downarrow0\) versus fixed \(\delta\).
- Target conclusion false or theorem-critical obstruction present if source vanishes:
  the minimum would compare non-equivalent outputs or probability modes.
- Repair route if source is unsupported: `/proof-step step_016`; an
  arm-interface mismatch would require `/proof-sketch`.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Quotient class and exact dimension/risk bridge | `step_002`; primitive quotient relation | Measurable cells, (c\mapsto\bar c), pushforward (\bar D) | Duplicate fibers and improper outputs are handled exactly; no uncontrolled residual | Same quotient function and decoded raw function have equal risk | Bijection and pushforward equality | Cellwise label equality | `step_003`, `step_005`, `step_013`-`step_016` | None |
| Countable quotient learner kernel and raw pullback | `step_003`; direct countable-discrete construction | Countable (Z_Q^N), standard-Borel (H_C), pointwise totalized law | Pointwise list/output variation is arbitrary but measurable on countable input; no hidden selector | Output codomain is exactly (H_C); raw law is composition with (T_N) | Any function on a countable discrete domain is measurable; (T_N) is measurable | Countable evaluation quotient | `step_004`, `step_011`, `step_015`-`step_016` | None |
| Marked law and projection | `step_004`; finite occurrence split | Released quotient law, finite occurrence sets, finite mark space | Repeated occurrences and fallback mass are explicit; no mark is released | Exact projection sum equals the released law | Uniform \(1/|I|\) split and mark \(0\) for fallback | Nonempty occurrence set for actual paths | `step_013`, `step_015` | None |
| VC trace family | `step_005`; Sauer--Shelah on (\bar C) | (v=\operatorname{VC}(\bar C)), fixed quotient sample | Infinite class and duplicate records collapse to finitely many traces | Error vectors are exactly those consumed by `E_good` | (|\mathcal E|\le(en_0/v)^v) | (1\le v\le d); constant branch bypass | `step_006`, `step_007` | None |
| Exact `E_good` and trace confidence budget | `step_006`-`step_007`; Lyu Proposition 2 plus local KL tail | Fixed-trace without-replacement tails, trace count, (a,Q,m,k) | High/low tails, block multiplicity, and ceiling controlled; no independence claim | Same block empirical losses and source thresholds | (4k(en_0/v)^v e^{-c m\alpha/d^2}\le\beta_{\mathrm{tr}}) | (C_{\mathrm{blk}}), fixed-point inequality | `step_008`, `step_009`, `step_012`, `step_013` | None |
| Source/current restrictions, lists, and leaf witness | `step_008`; Lyu Definitions/Lemmas/Corollary 4.1 | `E_good`, exact (p_{r+1}=2p_r), quotient source objects | Empty restrictions totalized; factor-two source index and duplicate traces controlled | Actual quotient function and required irreducibility scales are preserved | Exact Lemma 4.3 pairing and (p_r2^{d-t}\ge n_0d) | Geometric threshold and source list envelope | `step_009`, `step_010`, `step_012`, `step_013` | None |
| Score-(k) common stage | `step_009`; Lyu Lemma 4.3/Corollary 4.1 | Integer DDim potential and common target at zero DDim | Mechanism noise is not mixed into structural recurrence | Same function is consumed by the count query and candidate list | One-unit potential drop for each accurate `Below`; budget (d) | DDim zero common target (\bar c) | `step_010` | None |
| Actual Sparse Sample output | `step_010`; Lyu mechanisms and teacher margin | Score-(k), list bound (L), finite effective domain, noise tails | False reports and failure symbol controlled by (\beta_{\mathrm{AT}},\beta_{\mathrm{SS}}) | Output is an actual list member; fallback is separate | (k/2-\tau_{\mathrm{AT}}\ge B+\tau_{\mathrm{SS}}+2) | Teacher margin | `step_011`, `step_012`, `step_013` | None |
| Raw all-input DP | `step_011`; quotient neighbor bridge and Lyu privacy lemmas | One changed quotient record/list, sensitivity-one counts, total paths | Equal-cell replacements, empty paths, adaptive stop all controlled; no utility event needed | Quotient DP transfers exactly to raw replacement DP | One AboveThreshold prefix plus one Sparse Sample call | ((\varepsilon/4,\delta/2)) each | `step_014`, then `step_016` through the normalized VC-arm tuple | None |
| Exact SOA membership and empirical error | `step_012`; essential leaf and source contradiction | Actual list member, `E_good`, irreducibility | Improperness and infinite class handled by exact fixed SOA family | Same quotient function under full-sample empirical metric | (e_{\bar S}(\bar h)\le\alpha/8) | (n_0)-irreducibility and (\gamma=\alpha/16) | `step_013` | None |
| Producer-block finite reconstruction and population risk | `step_013`; marked law, block-local lists, iid complement | (k\ge2), (|\mathcal G_i|\le(d+1)L), independent complement, LowerTail | Adaptive stage/output and finite multiplicity controlled; no uncountable supremum | Same (\bar h,\bar c) under full, complement, and population metrics; residual factor (k/(k-1)\le2) | (k(d+1)L e^{-9\alpha(k-1)m/32}\le\beta_{\mathrm{gen}}) | (C_{\mathrm{blk}}), holdout threshold (\alpha/4) | `step_014`, then `step_016` through the normalized VC-arm tuple | None |
| Public VC-arm rate | `step_014`; explicit new-arm algebra | \(k,m\) envelopes and accepted new-arm DP/PAC outputs | Only allowed logarithms are absorbed; \(d^4v\) remains exposed | Exact quotient/raw target already proved | New-arm auxiliary inequalities | Universal \(K,q\) | `step_016`, final assembly | None |
| Old-Lyu common-interface arm | `step_015`; coarse source calibration and parameter-uniform wrappers | Old \(k,m,L,B\), quotient kernel, source privacy, marked holdout | Coarse \(d\)-trace, lists, noise, and confidence all controlled independently | Same \(H_C,T_N,\operatorname{Dec}_C\), privacy and PAC mode | (OldArm) and source-compatible \(\delta\) convention | Old block constant and source margins | `step_016` | None |
| Finite arm and comparison minimum | `step_016`; finite exponential mechanism and three certified arm bounds | Finite \(\bar C\), score sensitivity, finite sampling tail, normalized VC/old arms | \(\log M\), confidence, infinite-cardinality boundary, and arm-specific logs controlled | Same quotient/raw target for all arms; no mixed law | (FiniteArm), \(+\infty\) convention, and deterministic threshold minimum | Finite score gap and accepted arm bounds | Final assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Exact quotient factorization, dimensions, pushforward, and risk identity | `step_002` | `step_003`, `step_005`, `step_013`-`step_016` | Apply source theorem and decode raw risk | primitive quotient condition -> `step_002` -> all consumers | derived | None |
| Countable-domain kernel and measurable pullback | `step_003` | `step_004`, `step_011`, `step_015`-`step_016`, final theorem | Define released and raw learner laws | `step_002` -> `step_003` -> privacy/mark consumers | derived | None |
| Marked kernel and exact output projection | `step_004` | `step_013`, `step_015` | Analysis-only producer block, unchanged released marginal in both Lyu arms | `step_003` -> `step_004` -> (`step_013` or `step_015`) | derived | None |
| Parameter tuple, teacher margin, and total fallback procedure | `step_001` | `step_003`, `step_006`-`step_014` | Legal VC-arm algorithm and public rate | primitive parameter regime -> `step_001` -> all new-arm positive steps | derived | None |
| VC trace family | `step_005` | `step_006`, `step_007` | VC-sensitive trace union | `step_002` -> `step_005` -> `step_006` -> `step_007` | derived | None |
| Per-trace tails and `E_good` | `step_006`, `step_007` | `step_008`, `step_009`, `step_012`, `step_013` | Cross-block inclusion and confidence ledger | `step_005` -> `step_006` -> `step_007` -> consumers | derived | None |
| Source/current lists and irreducible leaf identities | `step_008` | `step_009`, `step_010`, `step_012`, `step_013` | Structural descent, output support, empirical utility | `step_006`,`step_007` -> `step_008` -> consumers | derived | None |
| DDim potential descent and score-(k) stage | `step_009` | `step_010` | Mechanism utility | `step_008` -> `step_009` -> `step_010` | derived | None |
| Actual mechanism output and selected stage | `step_010` | `step_011`, `step_012`, `step_013` | DP, empirical error, mark | `step_001`,`step_004`,`step_009` -> `step_010` -> consumers | derived | None |
| Raw replacement DP | `step_011` | `step_014`, `step_016` | VC-arm privacy conclusion | `step_003`,`step_008`,`step_010` -> `step_011` -> `step_014` -> `step_016` -> final | derived | None |
| Exact SOA membership and empirical error | `step_012` | `step_013` | Fixed producer-block candidate and holdout threshold | `step_008`,`step_010` -> `step_012` -> `step_013` | derived | None |
| Marked finite reconstruction and quotient PAC event | `step_013` | `step_014`, `step_016` | VC-arm population error and confidence | `step_004`,`step_007`,`step_008`,`step_010`,`step_012` -> `step_013` -> `step_014` -> `step_016` -> final | derived | None |
| Normalized VC-arm rate | `step_014` | `step_016` | New conditional theorem arm | all accepted new-arm interfaces -> `step_014` -> `step_016` -> final | derived | None |
| Old-Lyu common-interface bound | `step_015` | `step_016` | \(d^5\) comparison arm | quotient/source wrappers plus old calibration -> `step_015` -> `step_016` -> final | derived | None |
| Finite-class common-interface bound and minimum | `step_016` | Final assembly | \(R_{\mathrm{fin}}\), minimum, and baselines | `step_002`-`step_003`, `step_014`-`step_015` -> `step_016` -> final | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove the (d=0) branch, define the exact positive-branch allocations and least feasible teacher count, prove the (\bar k) witness and teacher margin, and totalize every source failure/fallback path. | None | Primitive `assump:finite-littlestone`, `assump:approximate-dp-regime` | Couple (k,m,n_0,L,B) without circular dependence and preserve boundaries. | Direct scalar inequalities; Lyu `coro: essential hypotheses`, `lemma: privacy of sparse sampling`; source mechanism definitions. | Exact public parameter tuple and total procedure. | Close all auxiliary logarithms and expose (d^2/\varepsilon) teacher dependence. | PENDING |
| `step_002` | Prove bijective quotient factorization, (\operatorname{VC}(\bar C)=v), (\operatorname{LD}(\bar C)=d), (T_N) measurability and neighbor preservation, pushforward sampling, and exact decoder-risk identity. | None | Primitive `assump:finite-littlestone`, `assump:countable-evaluation-quotient`, `assump:realizable-iid` | Preserve combinatorial dimensions and the raw target under arbitrary fibers and improper outputs. | Direct quotient/tree/shattering derivation and pushforward measure identities. | Quotient/source object map and raw-risk bridge. | None. | PENDING |
| `step_003` | Construct the measurable quotient Markov kernel for every totalized pointwise law and prove its raw pullback is a kernel on (Z_X^N). | `step_001`, `step_002` | Primitive `assump:countable-evaluation-quotient`; derived quotient map/procedure | Countable discrete input must support every list, event, transcript, and output coordinate without importing a selector. | Countable-discrete measurability and standard-Borel product facts. | `K_C` and (K_C\circ T_N) kernels; measurable event interfaces. | None. | PENDING |
| `step_004` | Lift the exact output law to (\widetilde K_C) with a finite occurrence mark and prove the exact projection identity. | `step_003` | Derived quotient kernel and finite occurrence sets | Preserve output marginal while making producer-block analysis measurable. | Finite marked-kernel construction and pointwise finite sums. | Marked law and projection. | None. | PENDING |
| `step_005` | For a fixed quotient master sample, prove (|\mathcal E_{\bar C}(\bar S)|\le(en_0/v)^v). | `step_001`, `step_002` | Primitive `assump:finite-littlestone`; derived (v) and positive branch | Infinite class and duplicate records. | Xor bijection and Sauer--Shelah. | Finite VC error-trace family. | Preserve exponent (v) exactly. | PENDING |
| `step_006` | Prove the fixed-trace high-error and low-error block tails and define the exact simultaneous `E_good` event. | `step_005` | Primitive `assump:approximate-dp-regime`; derived fixed trace | Correct near-zero one-sided tail and no false block independence. | Lyu `prop:chernoff-sample-without-replacement` plus local finite-population mgf/KL derivation. | `E_good` conditional trace interface. | Exponent (m\alpha/d^2). | PENDING |
| `step_007` | Solve the (n_0=km) fixed point, prove (\log(en_0/v)=O(\log Q)), and charge `E_good` failure to (\beta_{\mathrm{tr}}). | `step_001`, `step_006` | Primitive `assump:approximate-dp-regime`; derived trace event | Ceiling-aware noncircular scalar closure. | Direct inequalities and tower/finite union accounting. | Trace confidence budget and sample envelope. | Structural/confidence explicit intermediate rate. | PENDING |
| `step_008` | Prove the exact source/current stage map, factor-two Lemma 4.3 pairing, essential-list envelope, actual SOA identities, and irreducibility scales on the quotient. | `step_006`, `step_007` | Primitive `assump:finite-littlestone`; derived `E_good` | Source stage indexing and object-convention compatibility. | Lyu Definitions 4.2/4.3, Lemmas 4.1/4.3, Corollary 4.1. | Quotient restrictions, lists, leaf witnesses, irreducibility. | Keep (\log L) explicit. | PENDING |
| `step_009` | Prove finite DDim descent and a score-(k) common actual quotient function by stage (d). | `step_008` | Primitive `assump:finite-littlestone`, `assump:realizable-iid`; derived inclusion/lists | Signed one-unit potential drop and DDim-zero support. | Lyu Lemma 4.3 and Corollary 4.1 Items 2-4. | Common-stage producer. | No additional stage sample factor. | PENDING |
| `step_010` | Instantiate AboveThreshold and Sparse Sample, prove the mechanism-good event, and show the output is an actual list item rather than fallback. | `step_001`, `step_004`, `step_009` | Primitive `assump:approximate-dp-regime`; derived margin/lists | Effective-domain failure symbol and adaptive stage selection. | Lyu Algorithms 1-2 and Lemmas 3.1-3.2; Laplace/exponential-weight tails. | Actual selected quotient output and mechanism ledger. | Consume only allowed logarithms. | PENDING |
| `step_011` | Prove all-input quotient and raw replacement ((\varepsilon,\delta))-DP for the released output. | `step_003`, `step_008`, `step_010` | Primitive `assump:approximate-dp-regime`; derived quotient neighbor/list locality | Adaptive stopping, empty paths, and raw-to-list adjacency. | Lyu privacy lemmas, sensitivity-one queries, adaptive composition, postprocessing. | Raw learner DP. | Explicit two-component privacy allocation. | PENDING |
| `step_012` | Prove exact SOA membership and (e_{\bar S}(\bar H)\le\alpha/8) for actual outputs on the source-good path. | `step_006`, `step_008`, `step_010` | Primitive `assump:finite-littlestone`; derived `E_good` and actual output | Preserve actual-function identity and improper fixed-family membership. | Lyu Definition 4.3, Theorem 3 empirical contradiction, Lemma 4.2. | SOA fixed-family and empirical-error output. | Internal accuracy bridge. | PENDING |
| `step_013` | Prove measurable marked producer-block reconstruction, (Holdout), the one-sided lower-tail Chernoff bound, finite multiplicity domination, and quotient population error at most (\alpha). | `step_004`, `step_007`, `step_008`, `step_010`, `step_012` | Primitive `assump:realizable-iid`; derived kernel, lists, output, empirical error | Adaptive output versus block-local candidate union; no uncountable supremum. | Finite marked kernel, Fubini on measurable marked event, direct exponential-Markov Chernoff. | Unconditional quotient PAC event. | (k(d+1)L e^{-9\alpha(k-1)m/32}\le\beta_{\mathrm{gen}}). | PENDING |
| `step_014` | Eliminate all VC-arm auxiliaries and prove the displayed conditional `R_{\mathrm{VC}}` rate with no hidden positive power. | `step_001`, `step_002`, `step_007`, `step_011`, `step_013` | All four primitive assumptions; accepted new-arm DP/PAC outputs | Explicit-rate bridge, ceilings, confidence conversion, and `N\delta\to0` schedule. | Direct inequalities and source rate definitions. | Normalized VC-arm theorem. | Full \(d,v,\alpha,\beta,\varepsilon,\delta\) dependence. | PENDING |
| `step_015` | Independently instantiate the quotient-first old-Lyu construction with coarse `d`-trace calibration and prove its own DP/PAC/rate bound. | `step_002`, `step_003`, `step_004` | All four primitive assumptions; source Lyu wrappers | Same measurable kernel, raw-neighbor, marked holdout, and source convention with old scalar parameters. | Lyu source identities plus the old dictionary and finite reconstruction. | `R_{\mathrm{old}}` arm. | Explicit `d^5` dependence. | PENDING |
| `step_016` | Prove the finite-class arm, take the minimum only after all arms share interfaces, and state `d=0`, `v=d`, finite/infinite, and small-`\delta` baselines. | `step_002`, `step_003`, `step_014`, `step_015` | All four primitive assumptions; accepted arm outputs | Finite exponential mechanism, `+\infty` disabling, and baseline invariance. | Finite-class private ERM and direct comparison algebra. | `R_{\mathrm{fin}}` arm and final frontier. | \(\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}\). | PENDING |

## Dependency Notes

The dependency graph is acyclic and every edge points to an earlier step.
`step_001` fixes the exact algorithm and scalar dictionary.  `step_002`
then proves the quotient object map, and `step_003` turns the pointwise
quotient law into a kernel before any DP or probability claim is consumed.
`step_004` supplies the analysis-only mark.  `step_005`-`step_007` produce the
VC trace event and its confidence budget.  `step_008` and `step_009` discharge
all Lyu source hypotheses and produce a common actual stage.  `step_010`
produces the actual output; `step_011` proves privacy independently of
utility; `step_012` supplies exact SOA membership and empirical loss; and
`step_013` performs the finite producer-block PAC conversion.
`step_014` specializes the VC-sensitive rate,
`step_015` independently instantiates the old-Lyu quotient arm, and
`step_016` proves the finite-class arm and only then takes the
common-interface minimum.

The quotient source is noncircular: it is a static pre-sampling condition,
whereas kernels, lists, events, marks, and risk bounds are generated by the
listed steps.  The marked projection is exact, so it cannot alter privacy.
The finite reconstruction uses conditional block independence only after
fixing the data-independent partition and producer block; it never asserts
independence of blocks conditional on the complete master sample.

## Blockers

None.

## Self-Audit

- Goal alignment: the theorem is explicitly conditional on exactly the four setting assumptions and preserves the quotient-first procedure, raw replacement DP, realizable distribution-free utility, improper output, confidence criterion, and displayed (R_{\mathrm{VC}}) rate.
- Source fidelity: every theorem-critical Lyu and Ghazi identity has a concrete source label, current quotient-object mapping, hypothesis discharge path, conclusion interface, source-convention compatibility note, and known non-output boundary.
- Quotient repair: the idea_3 nonmeasurable diagonal is excluded by the primitive finite/countable evaluation quotient; no desired kernel, selector, list, event, or version space is assumed.
- Assumption provenance: all restrictions, lists, `E_good`, occurrence marks, source-success events, DP, and PAC conclusions are derived outputs with named producers.
- Explicit rate: exposed (d,v,\alpha,\beta,\varepsilon,\delta), universal hidden constants, fixed-sample probability mode, exact population-risk norm, and all logarithmic simplification/ceiling obligations are recorded.
- Baseline invariance: (d=0), (v=d), old-Lyu (d^5), finite-class (\log^+|C|), infinite-class disabling, and the declared small-(\delta) schedule are preserved.
- Mechanism witnesses: quotient measurability, finite DDim descent, mechanism margin, raw-neighbor DP, exact SOA membership, marked holdout, and rate specialization each have source, defect, closure, boundary, entry-state, and producer-consumer audits.
- Exported interfaces and generated flow: every theorem-facing output has a legal producer, consumers, exact dependency path, residual-to-target relation, and no missing blocker.
- Scope accumulation: only finite stage/potential/union scopes are used; each has an explicit finite budget or finite multiplicity relation.
- Dependency validity: 16 stable forward-only step IDs, all with `Review status = PENDING`.
