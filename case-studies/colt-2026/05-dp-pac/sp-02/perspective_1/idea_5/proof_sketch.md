# Proof Sketch

## Formalized Setting

The branch is in exact-goal mode for the conditional theorem in `setting.md`. For a nonempty finite binary class $C$, write

\[
d=\operatorname{VC}(C),\qquad
\ell=\operatorname{LD}(C),\qquad
s=1+\log^*(1+\ell),\qquad
q=d+s\geq 1.
\]

The sole novel primitive hypothesis is `assump:polynomial-global-stability`: for one universal integer $a\geq1$, every $C$ has an integer $m_C\leq q^a$ and a randomized, distribution-independent producer $G_C$ such that every realizable distribution $Q$ has an arbitrary hypothesis $h_{C,Q}$ with

\[
R_Q(h_{C,Q})\leq \alpha_0/2,
\qquad
\Pr[G_C(Q^{m_C})=h_{C,Q}]\geq q^{-a}.
\]

Here $\alpha_0=\beta_0=1/8$, $\varepsilon_0\in(0,1)$ is fixed, outputs may be improper and computationally unbounded, and privacy uses ordered-sample replacement adjacency. For $L=\log|C|$, put

\[
b=2a+2,\qquad
u(L)=\log\log(e^e+L),\qquad
T_a(q,L)=q^b+u(L),
\]
\[
\delta_a(q,L)=e^{-T_a(q,L)},\qquad
N_a(q,L,\varepsilon)=
\left\lceil K_a\varepsilon^{-2}q^b(1+T_a(q,L))\right\rceil.
\]

The proof must derive the private learner and all four bridges `(SC)`, `(LD)`, `(AS)`, and `(PN)`; none is an additional assumption.

## Formalized Goal

Assuming `assump:polynomial-global-stability`, prove that every sequence of nonempty finite binary classes $\{C_\kappa\}$ with $|C_\kappa|\to\infty$ and

\[
\forall p\in\mathbb N\ \exists \kappa_0(p)\ \forall \kappa\geq\kappa_0(p):
\quad L_\kappa>d_\kappa^p,
\qquad L_\kappa=\log|C_\kappa|,
\tag{SP}
\]

has, for every $\kappa$, an arbitrary-output distribution-free realizable $(\alpha_0,\beta_0)$-PAC learner that is $(\varepsilon_0,\delta_\kappa)$-DP and uses exactly

\[
N_\kappa=N_a(q_\kappa,L_\kappa,\varepsilon_0)=o(L_\kappa)
\]

records, where $\delta_\kappa=\delta_a(q_\kappa,L_\kappa)$ and

\[
\forall \rho>0:\qquad \delta_\kappa N_\kappa^\rho\longrightarrow0.
\]

Consequently, no such sequence also satisfies Item 3 at this source-compatible approximate-DP scale (or at a weaker privacy allowance $\bar\delta(N_\kappa)\geq\delta_\kappa$). This remains a `conditional` result: the universal profile is assumed, not proved.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

The selected framework is **Bun--Livni--Moran stable selection with an explicit privacy schedule** from `technical_survey.md`.

1. Audit and wrap Bun--Livni--Moran, arXiv:2003.00563v3 (22 June 2021), Section 5.2, Theorem 17 (`thm:selection`). Recode labels bijectively from $\{0,1\}$ to $\{-1,+1\}$, verify that the source construction is independent of the realizable distribution once $G_C$ is fixed, and retain its arbitrary-output and replacement-adjacency conclusions.
2. Substitute $m_C\leq q^a$ and $\eta=q^{-a}$ into the theorem's exact two-term bound. Choose a universal $K_a$ and prove `(SC)`, including ceiling and unused-record padding.
3. Prove `(LD)` exactly from the declared privacy schedule. The $u(L)$ term is explicit and is not absorbed into a constant.
4. Use the exact quantifiers in `(SP)` and $\ell\leq\log_2|C|$ to prove $q_\kappa=L_\kappa^{o(1)}$, then propagate this through $T_a$ and $N_a$ to prove `(AS)`.
5. Prove `(PN)` by separating $x_\kappa=q_\kappa^b$ from $u_\kappa=u(L_\kappa)$. This proof is uniform in $x_\kappa\geq1$, so it explicitly covers bounded-$q_\kappa$ sequences.
6. Assemble the per-class learners, apply privacy monotonicity when a source allowance is larger than $\delta_\kappa$, and contradict an eventual $\Omega(L_\kappa)$ Item 3 lower bound using $N_\kappa/L_\kappa\to0$.

### Audited source map

The theorem-critical cited source is Mark Bun, Roi Livni, and Shay Moran, *An Equivalence Between Private Classification and Online Prediction*, arXiv:2003.00563v3, 22 June 2021.

- Exact locator and role: Section 5.2, Theorem 17, source label `thm:selection`; it converts one frequent accurate output of a randomized producer into a private accurate output.
- Source statement: if $G:(X\times\{-1,+1\})^m\to\{-1,+1\}^X$ has, for a realizable $D$, an $h$ with $\Pr[G(D^m)=h]\geq\eta$ and $\operatorname{loss}_D(h)\leq\alpha/2$, then an arbitrary-output $(\varepsilon,\delta)$-DP learner has failure at most $\beta$, loss at most $\alpha$, and
  \[
  n\leq C_{\rm BLM}\left[
  \frac{m}{\eta\varepsilon}\log\frac1{\eta\beta\delta}
  +\frac1{\alpha\varepsilon}\log\frac1{\eta\beta}
  \right]
  \tag{BLM}
  \]
  for a universal numerical constant $C_{\rm BLM}$.
- Current/source object map: $x$ is unchanged; $y\mapsto2y-1$; $h\mapsto2h-1$; $Q$ is pushed forward by this label map; $G_C$ is conjugated by the same input/output bijection; $m=m_C$, $\eta=q^{-a}$, $\alpha=\alpha_0$, $\beta=\beta_0$, $\varepsilon=\varepsilon_0$, and $\delta=e^{-T_a(q,L)}$.
- Hypothesis discharge: realizability is preserved by recoding; the risk and atom inequalities are exactly `assump:polynomial-global-stability`; $G_C$, $m_C$, and $a$ are fixed independently of $Q$; all four privacy/utility parameters lie in $(0,1)$.
- Convention compatibility: the label map is a pointwise bijection, so exact hypothesis equality, zero-one risk, i.i.d. sampling, and replacement adjacency are unchanged. Recoding the output back to $\{0,1\}^X$ is postprocessing. The current measurability convention makes singleton outputs and histogram events legal.
- Distribution-free wrapper: the source theorem is phrased for a realizable $D$, but its displayed algorithm uses only $G$ and the public parameters, not $D$. Since one fixed $G_C$ satisfies the atom premise for every realizable $Q$, the same constructed learner succeeds for every such $Q$.
- Conclusion-interface match: the source range is all of $\{-1,+1\}^X$, not just the concept class; its DP definition is symmetric replacement adjacency; and its sample dependence is exactly the two displayed terms. These match the branch after recoding.
- Known non-outputs: Theorem 17 does not prove the primitive global-stability profile, `(SC)`, `(LD)`, `(AS)`, or `(PN)`, and supplies no efficiency guarantee. The proof prose informally says the generic learner identifies the frequent hypothesis, but only the theorem's valid conclusion -- an output of loss at most $\alpha$ -- is consumed here.

## Rate Objectives

### Objective R1: per-class stability-to-private conversion and privacy specialization

- Objective type: structural-parameter explicit, privacy-explicit, confidence-explicit fixed-sample bound.
- Exposed variables: (a,q,L,m_C,eta,\alpha_0,\beta_0,\varepsilon_0,\delta_a,T_a,N_a), and (C_{\rm BLM}).
- Hidden constants may depend on: (a,\alpha_0,\beta_0,C_{\rm BLM}).
- Hidden constants may not depend on: (X,C,Q,q,L,|C|,\kappa,\varepsilon_0), or the producer's output representation.
- Fixed quantities: zero-one loss, replacement adjacency, (\alpha_0=\beta_0=1/8), and the universal exponent (a) supplied by the primitive profile.
- Probability mode: ((\alpha_0,\beta_0))-PAC high probability jointly over the i.i.d. sample and all learner randomness; DP is a pointwise kernel inequality for every adjacent pair.
- Horizon mode: fixed per-class sample size; no time horizon or stopping rule.
- Norm mode: population zero-one risk (R_Q).
- Required bridge or simplification obligations: exact label wrapper; universal source constant; `(SC)` with every logarithmic term retained until dominated; exact `(LD)`; ceiling and padding; no hidden cardinality dependence.
- Baseline invariance obligations: recoding must recover exactly the original ({0,1}) risk and arbitrary-output interface; padding from (n_{\rm BLM}) to (N_a) must preserve the same PAC and DP conclusions.

### Objective R2: sequence-level sublogarithmic sample bound

- Objective type: structural-parameter explicit sequence asymptotic.
- Exposed variables: (L_\kappa,d_\kappa,\ell_\kappa,s_\kappa,q_\kappa,b,u(L_\kappa),T_a,N_a), and the full `(SP)` quantifiers.
- Hidden constants may depend on: (a,\alpha_0,\beta_0,C_{\rm BLM},\varepsilon_0) and, inside an eventual bound, the requested exponent (t>0).
- Hidden constants may not depend on: (kappa,X_\kappa,C_\kappa,L_\kappa).
- Fixed quantities: (a,\varepsilon_0), the log/log-star conventions, and the sequence itself while (kappa\to\infty).
- Probability mode: deterministic asymptotic comparison; the PAC probability mode remains that of R1.
- Horizon mode: sequence-asymptotic, with every eventual statement preserving `for every exponent, eventually for all kappa`.
- Norm mode: scalar sample-complexity ratio (N_\kappa/L_\kappa).
- Required bridge or simplification obligations: prove (d_\kappa=L_\kappa^{o(1)}), (s_\kappa=L_\kappa^{o(1)}), then (q_\kappa,T_a,N_a=L_\kappa^{o(1)}), and finally (N_\kappa=o(L_\kappa)).
- Baseline invariance obligations: the conclusion must remain true when (q_\kappa) is bounded; no step may replace this case by an assumption (q_\kappa\to\infty).

### Objective R3: source-compatible privacy negligibility and Item 3 contradiction

- Objective type: privacy-decay explicit, sequence-asymptotic, and universal-nonexistence specialization.
- Exposed variables: (\delta_\kappa,N_\kappa,x_\kappa=q_\kappa^b,u_\kappa), every fixed (\rho>0), and any comparison allowance (\bar\delta(n)).
- Hidden constants may depend on: (a,\rho,\varepsilon_0,K_a).
- Hidden constants may not depend on: (kappa,q_\kappa,L_\kappa,C_\kappa).
- Fixed quantities: (a,\varepsilon_0,\rho) while (kappa\to\infty).
- Probability mode: deterministic privacy-parameter comparison; learner utility remains high probability as in R1.
- Horizon mode: sequence-asymptotic, uniform over every possible behavior of (q_\kappa\geq1).
- Norm mode: scalar products (\delta_\kappa N_\kappa^\rho) and sample ratio (N_\kappa/L_\kappa).
- Required bridge or simplification obligations: prove `(PN)`; derive (\delta_\kappa\leq c/[N_\kappa^2\log(eN_\kappa)]) eventually; apply DP monotonicity only in the direction (\delta_\kappa\leq\bar\delta(N_\kappa)); translate (o(L_\kappa)) into a contradiction to every positive eventual (Omega(L_\kappa)) constant.
- Baseline invariance obligations: for bounded (q_\kappa), the (u(L_\kappa)) correction alone must still give both negligible privacy and a sublogarithmic sample size.

## Assumption Provenance Objectives

- Stable producer and accurate atom: `assump:polynomial-global-stability` is the sole theorem-facing nonstandard primitive condition. It produces (G_C,m_C,h_{C,Q}); `step_001` verifies the cited theorem consumes exactly these objects.
- Sequence premises: finiteness, (|C_\kappa|\to\infty), and `(SP)` are primitive hypotheses of the conditional goal, not generated events. The counting fact (ell(C)\leq\log_2|C|) is part of the formalized setup.
- BLM learner and raw sample bound: derived output of `step_001`, consumed by `step_002` and `step_006`.
- Padded (N_a)-sample learner and `(SC)`: derived output of `step_002`, consumed by `step_006`.
- Exact privacy schedule `(LD)`: derived identity of `step_003`, consumed by `step_005` and `step_006`.
- Subpower controls (q_\kappa,T_a,N_\kappa=L_\kappa^{o(1)}) and (N_\kappa=o(L_\kappa)): derived in `step_004` from the primitive sequence premises, consumed only afterward in `step_005` and `step_006`.
- Privacy-negligibility certificate `(PN)` and the standard-allowance comparison: derived in `step_005`, consumed by final assembly in `step_006`.
- No realized good event, recurrence, stability trajectory, or boundedness invariant is assumed. All randomness is already inside the one-shot producer/conversion guarantees.

## Mechanism-Source And Boundary Stress

### `step_001`: exact Bun--Livni--Moran wrapper

- Step ID: `step_001`
- Claim class: cited-tool conversion, arbitrary-output preservation, and fixed-distribution to distribution-free wrapper.
- Theorem role: Produces the private learner and the only raw sample bound used downstream.
- Mechanism source: Bun--Livni--Moran, arXiv:2003.00563v3, Section 5.2, Theorem 17 (`thm:selection`), with source objects and hypotheses mapped in the audited source map above; `assump:polynomial-global-stability` supplies the theorem's frequent accurate atom.
- Source-to-claim adequacy: The source conclusion has the same loss, failure, privacy mode, replacement adjacency, and arbitrary-function output required here. The ({0,1}\leftrightarrow\{-1,+1}) conjugation preserves every premise and conclusion exactly. A fixed (G_C) works for every (Q), and the source algorithm depends on (G_C), not on (Q), so one learner is distribution-free.
- Residual-to-target adequacy: The produced source hypothesis (h^{\pm}) and consumed target (h) satisfy (h=(h^{\pm}+1)/2) pointwise; hence (R_Q(h)=\operatorname{loss}_{Q^{\pm}}(h^{\pm})) and the residual is zero. The same bijection preserves atom mass and adjacency exactly.
- Key positive/control term or structural source: Atom mass (eta=q^{-a}>0) and source stable-histogram frequency threshold, followed by its finite-list generic private learner.
- Opposing defect terms: Producer cost (m_C), inverse mass (1/\eta), stable-histogram (\log(1/\delta)), private selection (1/\alpha_0), source label convention, and the per-distribution wording.
- Closure/dominance/absorption relation: No defect is dropped: all quantitative terms remain in `(BLM)`; recoding is equality; the quantifier wrapper uses the same (G_C) for every (Q).
- Accumulation behavior / scope compatibility: The source uses finitely many disjoint producer batches and one fresh selection sample. Its theorem already accounts for their finite privacy/accuracy costs in `(BLM)`; this sketch adds no repeated or all-time scope.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The primitive profile produces (G_C) before the source theorem is invoked; Theorem 17 does not assume private learnability or the final sublogarithmic conclusion. Path: primitive profile -> `step_001` -> `step_002`/`step_006`.
- Entry-state / first-update stress result: No recurrence is present. At the boundary (q=1), (m_C=1) and (eta=1), so the source mechanism remains active rather than losing its atom.
- Baseline conclusion preserved: Recoding and postprocessing return exactly the original binary risk and arbitrary-output class, not a proper or efficient surrogate.
- Producer-consumer provenance: `assump:polynomial-global-stability` -> recoded producer -> Theorem 17 -> raw learner and `(BLM)` bound; consumers are `step_002` and `step_006`.
- Null or boundary regime tested: (q=1), (eta=1), improper hypotheses, randomized (G_C), non-countable hypothesis domains under the stated measurability convention, and replacement of either a label or an instance.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without exact atom equality or arbitrary-output selection, the assumed profile would not supply an unrestricted private learner.
- Repair route if source is unsupported: The audited source supports the interface; otherwise the missing arbitrary-output/distribution-free wrapper would be a `sketch/interface defect` if a same-source wrapper existed, and an `idea/theorem-contract defect` if properness or a distribution-dependent producer had to be assumed.

### `step_002`: `(SC)` and exact-size padding

- Step ID: `step_002`
- Claim class: quantitative specialization and exported sample ceiling.
- Theorem role: Converts the raw source bound into the declared (N_a(q,L,\varepsilon_0)) interface.
- Mechanism source: Direct algebra from `(BLM)`, (m_C\leq q^a), (eta=q^{-a}), (b=2a+2), (T_a\geq q^b), (q\geq1), and (\varepsilon_0<1).
- Source-to-claim adequacy: With (B_0=\log(1/\beta_0)), substitution gives exactly
  \[
  \frac{C_{\rm BLM}}{\varepsilon_0}
  \left[q^{2a}(T_a+a\log q+B_0)
  +\alpha_0^{-1}(a\log q+B_0)\right].
  \]
  Since (a\log q\leq a q^b), (q^{2a}\leq q^b), and (T_a\geq q^b\geq1), the bracket is at most (D_aq^b(1+T_a)) for a constant (D_a) depending only on (a,\alpha_0,\beta_0). Taking (K_a\geq C_{\rm BLM}D_a) and using (\varepsilon_0^{-1}\leq\varepsilon_0^{-2}) proves `(SC)`.
- Residual-to-target adequacy: The produced learner reads (n_{\rm BLM}\leq N_a) records and the consumed interface asks for exactly (N_a). Ignoring the final (N_a-n_{\rm BLM}) records is an exact projection: risk and privacy are unchanged, so the transfer residual is zero.
- Key positive/control term or structural source: The two-power slack (b-2a=2) and the factor (1+T_a).
- Opposing defect terms: (a\log q), (B_0), the (1/\alpha_0) term, (\varepsilon_0^{-1}), and integer rounding.
- Closure/dominance/absorption relation: Each displayed defect is bounded by a named factor of (q^b(1+T_a)); (\varepsilon_0^{-2}) dominates (\varepsilon_0^{-1}); the outer ceiling dominates the integer source size.
- Accumulation behavior / scope compatibility: Fixed per-class algebra only; there is no accumulated defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `(SC)` uses only `step_001` and primitive scalar definitions; it does not assume `(AS)` or the final rate. Path: `step_001` -> `step_002` -> `step_004`/`step_006`.
- Entry-state / first-update stress result: No iteration. At (q=1), all logarithmic (q)-terms vanish and the (1+T_a) factor still dominates the source bound.
- Baseline conclusion preserved: Padding preserves exactly the same DP and PAC parameters; no weaker confidence, privacy, or loss is introduced.
- Producer-consumer provenance: Raw `(BLM)` bound from `step_001` -> `(SC)` and padded learner in `step_002`; consumers are `step_004` and `step_006`.
- Null or boundary regime tested: (q=1), (\varepsilon_0\uparrow1), (m_C<q^a), and nonintegral analytic upper bounds.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. An unabsorbed (|C|)-dependent source term or inverse mass larger than (q^a) would destroy the declared ceiling.
- Repair route if source is unsupported: The direct inequality supplies the interface; otherwise a missing term split would be a `sketch/interface defect` under the same theorem contract.

### `step_003`: exact privacy logarithm `(LD)` and bounded-(q) activation

- Step ID: `step_003`
- Claim class: exact privacy specialization and boundary-preserving parameter interface.
- Theorem role: Supplies the precise (\delta_\kappa) later used in `(PN)` and the source-scale comparison.
- Mechanism source: Direct evaluation of (\delta_a(q,L)=\exp[-q^b-u(L)]), with (u(L)=\log\log(e^e+L)).
- Source-to-claim adequacy: For all (q\geq1,L\geq0), (T_a=q^b+u(L)\geq2), hence (\delta_a\in(0,1)) and
  \[
  \log(1/\delta_a)=T_a=q^{2a+2}+\log\log(e^e+L).
  \tag{LD}
  \]
  Also (u(L)\geq1), (u(L)\to\infty) when (L\to\infty), and (e^{-u(L)}=1/\log(e^e+L)).
- Residual-to-target adequacy: The produced privacy parameter is exactly the (\delta_a) consumed by Theorem 17 and final assembly. There is no surrogate schedule or asymptotic replacement.
- Key positive/control term or structural source: The explicit additive (u(L)) in the exponent, alongside the polynomial (q^b) term.
- Opposing defect terms: Cardinality growth with bounded (q), which a polynomial-in-(q) exponent alone cannot control.
- Closure/dominance/absorption relation: The identity is exact. If (q) is bounded and (L\to\infty), (u(L)\to\infty) forces (\delta_a\to0); if (q\to\infty), both terms are nonnegative and the (q^b) term only strengthens privacy.
- Accumulation behavior / scope compatibility: The limiting scope is controlled pointwise by a monotone exponent; no additive privacy leakage accumulates across (kappa).
- Obligation locality classification: `step-local`.
- Noncircular closure status: The schedule is defined before `(PN)` is proved and does not assume privacy negligibility. Path: scalar definitions -> `step_003` -> `step_005` -> `step_006`.
- Entry-state / first-update stress result: Along the allowed boundary (q_\kappa\equiv q_0), the first per-class learner is well-defined and (u(L_\kappa)) is already active; as (L_\kappa\to\infty), it alone drives (\delta_\kappa\to0).
- Baseline conclusion preserved: The bounded-(q) specialization retains source-compatible shrinking (\delta), rather than replacing it by a fixed approximate-DP parameter.
- Producer-consumer provenance: Public definitions -> exact `(LD)` in `step_003`; consumers are `step_005` and `step_006`.
- Null or boundary regime tested: (L=0), (q=1), bounded (q_\kappa) with (L_\kappa\to\infty), and unbounded (q_\kappa).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Removing (u(L)) permits a bounded-(q), growing-cardinality sequence with (\delta_\kappa) bounded away from zero, violating the target privacy scale.
- Repair route if source is unsupported: The exact identity supports the current setting. Removing or hiding the cardinality correction would be an `idea/theorem-contract defect` for the approved bounded-(q) target.

### `step_004`: `(AS)` from the exact Item 2 quantifiers

- Step ID: `step_004`
- Claim class: sequence mode conversion and explicit asymptotic rate.
- Theorem role: Proves the constructed learner is sublogarithmic in class cardinality.
- Mechanism source: Primitive sequence premises `(SP)` and (L_\kappa\to\infty), the counting bound (ell_\kappa\leq L_\kappa/\log2), and elementary growth comparisons for (\log^*) and (u).
- Source-to-claim adequacy: Fix (t>0). Choose an integer (p) with (1/p<t/2). Then `(SP)` gives (d_\kappa<L_\kappa^{1/p}\leq L_\kappa^{t/2}) eventually. Moreover
  \[
  s_\kappa=1+\log^*(1+\ell_\kappa)
  \leq O(1+\log(e+L_\kappa))
  \leq L_\kappa^{t/2}
  \]
  eventually. Thus (q_\kappa\leq2L_\kappa^{t/2}\leq L_\kappa^t) eventually. Since this holds for every (t>0), (q_\kappa=L_\kappa^{o(1)}). Fixed powers, sums, products, (u(L_\kappa)=L_\kappa^{o(1)}), and the ceiling in (N_a) then give
  \[
  T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)},\qquad
  N_\kappa=L_\kappa^{o(1)}=o(L_\kappa).
  \tag{AS}
  \]
- Residual-to-target adequacy: The controls are on the exact (q_\kappa,T_a,N_a) appearing in the target formula. No proxy dimension or different cardinality benchmark is used.
- Key positive/control term or structural source: The `for every p, eventually` quantifier in `(SP)` plus the finite-class Littlestone counting bound.
- Opposing defect terms: The additive (s_\kappa), the possibility (d_\kappa=0), the factor (2) in (q=d+s), the (u(L)) correction, fixed powers/products, and the ceiling.
- Closure/dominance/absorption relation: Allocate exponent (t/2) separately to (d) and (s), then use (2L^{t/2}\leq L^t) eventually. For any target exponent (r>0), allocate sufficiently small subexponents to every fixed factor in (q^b(1+q^b+u)); the fixed prefactor and (+1) are eventually below (L^r). Taking (r<1) yields (N/L\to0).
- Accumulation behavior / scope compatibility: These are eventual pointwise inequalities, not a sum over (kappa). No probability or defect is union-bounded across the infinite sequence.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The rate is derived solely from primitive sequence conditions and explicit formulas from `step_002`/`step_003`; it does not assume a sublogarithmic learner. Path: `(SP)` and counting -> `step_004` -> `step_006`.
- Entry-state / first-update stress result: No recurrence. If (d_\kappa) and (q_\kappa) stay bounded, the argument still works because (u(L_\kappa)=o(L_\kappa^t)); no activation by (q_\kappa\to\infty) is needed.
- Baseline conclusion preserved: The bounded-(q) boundary retains (N_\kappa=O(u(L_\kappa))=o(L_\kappa)), rather than being excluded.
- Producer-consumer provenance: `(SP)`, (L_\kappa\to\infty), and the counting bound -> `(AS)` in `step_004`; consumer is `step_006`, with `step_005` using the same sequence notation.
- Null or boundary regime tested: (d_\kappa=0), (d_\kappa=1), bounded (ell_\kappa), bounded (q_\kappa), and the exact superpolynomial quantifier order.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. One fixed polynomial separation or an `infinitely often` version of `(SP)` would not imply (q=L^{o(1)}) eventually.
- Repair route if source is unsupported: The direct quantifier argument supports the claim. Weakening `(SP)` would change the theorem contract and be an `idea/theorem-contract defect`.

### `step_005`: `(PN)`, including bounded (q_\kappa)

- Step ID: `step_005`
- Claim class: limiting privacy closure and source-allowance specialization.
- Theorem role: Proves the chosen approximate-DP parameters are negligible in the actual learner sample size, uniformly over all admissible sequences.
- Mechanism source: Direct factorization with (x_\kappa=q_\kappa^b\geq1), (u_\kappa=u(L_\kappa)\to\infty), the exact `(LD)` schedule, and the explicit ceiling in (N_a).
- Source-to-claim adequacy: Because the quantity inside the ceiling is at least a positive universal constant,
  \[
  N_\kappa\leq C_{a,\varepsilon_0}
  x_\kappa(1+x_\kappa+u_\kappa).
  \]
  Hence for every fixed (\rho>0),
  \[
  \delta_\kappa N_\kappa^\rho
  \leq C_{a,\rho,\varepsilon_0}
  e^{-x_\kappa-u_\kappa}
  [x_\kappa(1+x_\kappa+u_\kappa)]^\rho.
  \]
  Using (1+x+u\leq(1+x)(1+u)), the right side is at most a constant times
  \[
  \underbrace{e^{-x_\kappa}x_\kappa^\rho(1+x_\kappa)^\rho}_{\text{uniformly bounded for }x_\kappa\geq1}
  \underbrace{e^{-u_\kappa}(1+u_\kappa)^\rho}_{\longrightarrow0}.
  \]
  This proves `(PN)` without requiring (x_\kappa\to\infty).
- Residual-to-target adequacy: The factorization uses the exact (\delta_\kappa) and exact (N_\kappa) from the theorem. The ceiling contributes only the displayed fixed multiplicative constant, so every residual is dominated at the target scale (N_\kappa^{-\rho}).
- Key positive/control term or structural source: Exponential decay in (x+u), with (u_\kappa\to\infty) independently of (x_\kappa).
- Opposing defect terms: Arbitrary growth or non-growth of (x_\kappa), the polynomial factor (x(1+x+u)), its fixed power (\rho), and the ceiling.
- Closure/dominance/absorption relation: The (x)-dependent exponential-polynomial factor has a finite supremum on ([1,\infty)); the (u)-dependent exponential dominates every fixed polynomial as (u\to\infty). Their product therefore vanishes.
- Accumulation behavior / scope compatibility: The declared scope is a sequence limit. The privacy defect is not additively composed over (kappa); the exact one-point product is bounded uniformly in (x_\kappa) and decays in (u_\kappa).
- Obligation locality classification: `step-local`.
- Noncircular closure status: `(PN)` is derived from `step_003` and the explicit (N_a) formula, not assumed as an admissibility condition. Path: `step_003`/`step_004` -> `step_005` -> `step_006`.
- Entry-state / first-update stress result: On the critical boundary (q_\kappa\equiv q_0), the (x)-factor is a fixed positive constant while (u_\kappa\to\infty), so the mechanism remains active and forces the product to zero. If (q_\kappa\to\infty), exponential decay in (x) only helps.
- Baseline conclusion preserved: The original negligible-privacy conclusion holds even at bounded (q); it is not replaced by merely (\delta_\kappa\to0).
- Producer-consumer provenance: Exact schedule from `step_003` plus explicit (N_a) and (L_\kappa\to\infty) -> `(PN)` and allowance comparison in `step_005`; consumer is `step_006`.
- Null or boundary regime tested: Constant (q_\kappa), (q_\kappa=1), rapidly growing (q_\kappa), every fixed noninteger (\rho>0), and the ceiling in (N_a).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. With no (u(L)) term and bounded (q), the product would stay bounded away from zero for every fixed (\rho).
- Repair route if source is unsupported: The factorization supports the current schedule. A schedule without a cardinality correction would be an `idea/theorem-contract defect` for the approved theorem.

### `step_006`: universal conditional nonexistence assembly

- Step ID: `step_006`
- Claim class: theorem closure, privacy-mode comparison, and asymptotic contradiction.
- Theorem role: Combines the preceding outputs into the exact formalized goal.
- Mechanism source: Per-class padded learners from `step_002`, exact schedule from `step_003`, `(AS)` from `step_004`, `(PN)` from `step_005`, DP monotonicity in (\delta), and the definition of an eventual (Omega(L_\kappa)) lower bound.
- Source-to-claim adequacy: Each (M_\kappa) is already an unrestricted distribution-free realizable PAC learner for (C_\kappa). `(AS)` gives (N_\kappa/L_\kappa\to0). `(PN)` gives the required source-scale privacy. If (\bar\delta(N_\kappa)\geq\delta_\kappa), the same kernel is ((\varepsilon_0,\bar\delta(N_\kappa)))-DP by the defining inequality.
- Residual-to-target adequacy: The produced learner is evaluated on the same (C_\kappa), risk, adjacency relation, and sample count as the consumed Item 3 interface. Privacy monotonicity changes only to a weaker allowed (\delta); no learner or target object is transformed.
- Key positive/control term or structural source: The strict rate separation (N_\kappa/L_\kappa\to0) together with a valid learner at the required privacy scale.
- Opposing defect terms: An unknown positive (Omega)-constant, the source's displayed (c/[N^2\log(eN)]) allowance, and possible weaker privacy schedules.
- Closure/dominance/absorption relation: For any (c_*>0), `(AS)` gives (N_\kappa<c_*L_\kappa) eventually. From `(PN)` with (\rho=3), (\delta_\kappa N_\kappa^3\to0); since (\log(eN)\leq N) for (N\geq1), for every fixed (c>0), eventually
  \[
  \delta_\kappa\leq \frac{c}{N_\kappa^3}
  \leq \frac{c}{N_\kappa^2\log(eN_\kappa)}.
  \]
  Thus the learner contradicts any eventual (c_*L_\kappa) lower bound at that or a weaker privacy allowance.
- Accumulation behavior / scope compatibility: The universal sequence claim is pointwise in (\kappa) followed by an eventual comparison. There is no composition across classes and no probability union over the sequence.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The learner is produced in `step_001`/`step_002`, its rates in `step_004`/`step_005`, before the contradiction is asserted. Item 3's negation is not used by any producer.
- Entry-state / first-update stress result: No iterative state. On a bounded-(q) sequence, `step_003`--`step_005` still give a stronger-private learner with (N_\kappa=O(u(L_\kappa))=o(L_\kappa)), so the final mechanism does not go inactive at the critical boundary.
- Baseline conclusion preserved: The final theorem retains universal quantification over all admissible finite-class sequences, including bounded-(q) sequences, and retains unrestricted improper learners and the source privacy scale.
- Producer-consumer provenance: `step_001` -> `step_002` (learner); `step_003` (schedule); `step_004` (sublog rate); `step_005` (negligibility) -> `step_006` -> final conditional theorem.
- Null or boundary regime tested: Bounded (q_\kappa), arbitrary positive Item 3 constant, exact (\bar\delta=\delta_\kappa), larger (\bar\delta), and (\rho=3) specialization.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without either (N=o(L)) or a learner private at the source schedule, no contradiction to Item 3 follows.
- Repair route if source is unsupported: All inputs are supplied by earlier steps. A missing earlier bridge routes to that step; changing Item 3's privacy or learner scope would be an `idea/theorem-contract defect`.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Arbitrary-output distribution-free private learner with `(BLM)` | `step_001`; BLM Theorem 17 | `assump:polynomial-global-stability`: fixed (G_C), (m_C\leq q^a), risk (\leq\alpha_0/2), atom mass (\geq q^{-a}) | Controlled: label convention and distribution quantifier by exact wrapper. Retained: (m/\eta), (\log(1/\delta)), (1/\alpha_0), confidence terms. Uncontrolled: none under the primitive profile. | Source/target hypotheses are pointwise recodings; risk, atom mass, adjacency, and output scope are equal, so residual (=0). | Apply Theorem 17 with the exact object map; use one fixed source algorithm for every realizable (Q). | Positive atom (q^{-a}>0); source universal constant (C_{\rm BLM}). | `step_002`, `step_006` | None |
| `(SC)`: (n_{\rm BLM}\leq N_a) and exact-size padded learner | `step_002` | `(BLM)`, (m\leq q^a), (eta=q^{-a}), (q\geq1), (b=2a+2), (T\geq q^b), (\varepsilon_0<1) | Controlled separately: (a\log q), fixed confidence log, (1/\alpha_0), (\varepsilon_0^{-1}), ceiling. Uncontrolled: none. | Produced raw learner and consumed padded learner are the same kernel after ignoring a suffix; risk/privacy residual (=0). | Bracket (\leq D_aq^b(1+T)); (\varepsilon^{-1}\leq\varepsilon^{-2}); choose (K_a\geq C_{\rm BLM}D_a); take ceiling. | Exponent slack (b-2a=2), (1+T), and public (K_a). | `step_004`, `step_006` | None |
| `(LD)`: exact (\delta_a) and privacy logarithm | `step_003` | Definitions of (u,T_a,\delta_a), (q\geq1,L\geq0) | Controlled: bounded-(q) nondecay by (u(L)). Fixed: polynomial (q^b). Uncontrolled: none. | Produced and consumed privacy parameter are identical; no surrogate schedule. | (log(e^{T_a})=T_a) exactly; (e^{-u}=1/\log(e^e+L)). | Explicit (u(L)) correction; no hidden constant. | `step_005`, `step_006` | None |
| `(AS)`: (q,T_a,N_a=L^{o(1)}) and (N_a=o(L)) | `step_004` | `(SP)`, (L\to\infty), (ell\leq L/\log2), explicit formulas | Controlled: (d,s,u), sum factor (2), powers/products, ceiling. Uncontrolled: none. | Bounds apply to the exact target (q,T_a,N_a,L). | Allocate arbitrarily small exponents; use fixed-power closure; choose final exponent (<1). | Full `for every p, eventually` Item 2 quantifier and finite-class counting. | `step_006` | None |
| `(PN)`: (\delta N^\rho\to0) for every fixed (\rho>0), including bounded (q) | `step_005` | `(LD)`, explicit (N_a), (x=q^b\geq1), (u(L)\to\infty) | Controlled: ceiling and polynomial factor by a constant; arbitrary (x)-behavior by a uniform supremum; persistent bounded-(x) case by (u). Uncontrolled: none. | Exact (\delta) and (N) are compared at required scale (N^{-\rho}); all residual factors are dominated. | Factor into bounded (e^{-x}x^\rho(1+x)^\rho) and vanishing (e^{-u}(1+u)^\rho). | Exponential decay in explicit (x+u). | `step_006` | None |
| Source-allowance comparison and conditional universal nonexistence | `step_006` | Padded learners, `(AS)`, `(PN)`, DP monotonicity | Controlled: arbitrary (Omega)-constant, standard (N^{-2}\log(eN)^{-1}) allowance, larger allowed (\delta). Uncontrolled: the primitive global-stability profile remains assumed and is stated as such. | Same class, sample count, risk, and learner; only valid monotonic relaxation (\delta\leq\bar\delta). | (N/L\to0); `(PN)` at (\rho=3); (log(eN)\leq N). | Any positive Item 3 lower-bound constant; exact DP definition. | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| (G_C,m_C,h_{C,Q}) and atom/risk certificate | `assump:polynomial-global-stability` | `step_001` | Supplies the conditional theorem's only nonstandard premise | primitive profile -> `step_001` | primitive | None |
| Recoded BLM learner and raw `(BLM)` bound | `step_001`; arXiv:2003.00563v3 Theorem 17 with exact recoding wrapper | `step_002`, `step_006` | Establishes unrestricted distribution-free PAC and DP existence | primitive profile -> `step_001` -> consumers | derived | None |
| `(SC)` and exactly (N_a)-record padded learner | `step_002` | `step_004`, `step_006` | Gives the public per-class sample interface | `step_001` -> `step_002` -> consumers | derived | None |
| Exact schedule and `(LD)` | `step_003` | `step_005`, `step_006` | Gives the theorem's displayed privacy parameter with explicit cardinality correction | definitions -> `step_003` -> consumers | derived | None |
| (q_\kappa,T_a,N_\kappa=L_\kappa^{o(1)}) and (N_\kappa=o(L_\kappa)) | `step_004` | `step_006` | Supplies the sublogarithmic upper bound contradicting Item 3 | sequence premises + `step_002`/`step_003` -> `step_004` -> `step_006` | derived | None |
| `(PN)` and (\delta\leq c/[N^2\log(eN)]) eventually | `step_005` | `step_006` | Certifies the source-compatible approximate-DP regime, including bounded (q) | `step_003` + explicit (N_a) + (L\to\infty) -> `step_005` -> `step_006` | derived | None |
| Conditional universal-nonexistence conclusion | `step_006` | Final assembly | Rules out Items 1--3 jointly under the primitive profile | all prior steps -> `step_006` -> final theorem | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Under `assump:polynomial-global-stability`, for every finite (C), every (L=\log\lvert C\rvert), and the declared parameters, construct one arbitrary-output distribution-free realizable private learner satisfying the exact two-term `(BLM)` bound after a loss/adjacency-preserving ({0,1}\leftrightarrow\{-1,+1}) recoding. | None | Primitive `assump:polynomial-global-stability`; primitive parameter ranges from `setting.md`; cited theorem hypotheses discharged by the audited map | Verify source identity, label convention, arbitrary-output range, replacement adjacency, fixed-(Q) wording, measurability, and exact quantitative conclusion before using the theorem | Bun--Livni--Moran, arXiv:2003.00563v3, Section 5.2, Theorem 17 (`thm:selection`); direct recoding wrapper | Raw learner and `(BLM)` bound with universal (C_{\rm BLM}) | R1: retain full dependence on (m,\eta,\alpha_0,\beta_0,\varepsilon_0,\delta); no term absorption yet | PENDING |
| `step_002` | Prove `(SC)` by substituting (m\leq q^a,eta=q^{-a},\delta=e^{-T_a}), choose (K_a) independent of class/cardinality/(\varepsilon_0), and pad the source learner to exactly (N_a) records without changing PAC or DP. | `step_001` | Primitive `assump:polynomial-global-stability` through `step_001`; derived `(BLM)` | Dominate every source logarithm and the (1/\alpha_0) term explicitly; handle (q=1), (\varepsilon_0\uparrow1), ceiling, and unused records | Direct inequalities (a\log q\leq aq^b), (q^{2a}\leq q^b), (T_a\geq q^b), (\varepsilon^{-1}\leq\varepsilon^{-2}) | `(SC)` and exactly (N_a)-sample learner | R1: prove the displayed (q,L,\varepsilon_0) dependence and allowed hidden-constant set | PENDING |
| `step_003` | Prove `(LD)` exactly, including (u(L)\geq1), (u(L)\to\infty), (e^{-u(L)}=1/\log(e^e+L)), and activation of the privacy correction when (q) is bounded. | `step_002` | Scalar definitions in `setting.md`; no new assumption | Preserve explicit cardinality dependence and avoid assuming (q_\kappa\to\infty) | Direct logarithm/exponential identities and monotonicity | Exact privacy schedule consumed by `(PN)` and final theorem | R1 and R3: exact privacy-log dependence, no hidden (\lvert C\rvert) term | PENDING |
| `step_004` | From (\lvert C_\kappa\rvert\to\infty), exact `(SP)`, and (ell_\kappa\leq\log_2\lvert C_\kappa\rvert), prove for every (t>0) eventually (q_\kappa\leq L_\kappa^t), then prove `(AS)`: (T_a,N_a=L_\kappa^{o(1)}) and (N_a=o(L_\kappa)). | `step_002`, `step_003` | Primitive sequence premises from the formalized goal; standard finite-class counting in `setting.md`; derived explicit formulas | Preserve quantifier order; separately control VC and iterated-log LD; propagate subpower rates through sums/products and the ceiling; cover (d=0) and bounded (q) | Direct exponent allocation and elementary log/log-star growth | `(AS)` and sublogarithmic sample certificate | R2: sequence-asymptotic structural dependence with all fixed/hidden quantities stated | PENDING |
| `step_005` | Prove `(PN)` for every fixed (\rho>0) by a uniform (x=q^b\geq1) factorization; derive the standard (c/[N^2\log(eN)]) comparison, explicitly including bounded (q_\kappa). | `step_003`, `step_004` | Primitive (L_\kappa\to\infty); derived exact schedule and (N_a) formula | Control the ceiling and polynomial factor uniformly without using (q_\kappa\to\infty); maintain every-(\rho) quantifier | Exponential-versus-polynomial bound, (1+x+u\leq(1+x)(1+u)), and (\log(eN)\leq N) | `(PN)` and source-privacy allowance certificate | R3: explicit (\rho,a,\varepsilon_0) dependence and bounded-(q) boundary | PENDING |
| `step_006` | Assemble (M_\kappa), `(SC)`, `(LD)`, `(AS)`, and `(PN)` into the exact conditional theorem; use DP monotonicity for (\bar\delta(N_\kappa)\geq\delta_\kappa) and contradict every eventual (Omega(L_\kappa)) Item 3 lower bound. | `step_001`, `step_002`, `step_003`, `step_004`, `step_005` | Primitive `assump:polynomial-global-stability` and sequence premises; all listed derived outputs | Preserve unrestricted/distribution-free scope, exact privacy direction, universal sequence quantifier, and conditional progress label | Direct theorem assembly, DP monotonicity, definition of (o(cdot)) versus (Omega(cdot)) | Conditional universal nonexistence of an Items 1--3 sequence | R1--R3: final rate, probability/privacy modes, hidden constants, standard allowance, and bounded-(q) baseline | PENDING |

## Dependency Notes

The graph is acyclic and every edge points to an earlier step. `step_001` fixes the only cited-tool interface. `step_002` consumes that interface to produce the exact learner size. `step_003` certifies the privacy schedule. `step_004` derives the sample asymptotics from primitive sequence premises and the explicit size formula. `step_005` derives privacy negligibility from the already-fixed schedule and size. `step_006` is the sole final consumer and introduces no new lemma or assumption.

The assembly is target-exact: `(SC)` supplies the learner, `(LD)` supplies its displayed privacy logarithm, `(AS)` supplies (o(\log|C_\kappa|)), and `(PN)` supplies the source-compatible negligible-(\delta) regime. The bounded-(q) edge is carried by (u(L)) through `step_003`, `step_004`, and `step_005`; it is never excluded or assumed away.

## Blockers

None.
