# Proof Sketch

## Formalized Setting

Work under the exact setting in `perspective_1/idea_2/setting.md`. Thus (C) has the finite canonical disjoint Cartesian factorization

\[
X=\bigsqcup_{i=1}^kX_i,\qquad C=\prod_{i=1}^k C_i,
\]

where every (C_i) is nonconstant, has (\operatorname{VC}(C_i)=1), and has finite (d_i=\operatorname{LD}(C_i)). Put

\[
r_i:=\log_2^*d_i,\qquad s_i:=1+\log_2^*(d_i+1),\qquad
M:=M_{\oplus}(C)=\sum_i s_i,\qquad \pi_i=s_i/M.
\]

The learning model is realizable distribution-free binary PAC learning with arbitrary, possibly improper output, fixed replacement adjacency, (\alpha_0=\beta_0=1/16), (0<\varepsilon\le 1/10), and (0<\delta<1). For the upper bound use exactly the factor parameters, quotas (q_i), padding maps (T_i), and piecewise learner (A_n^{\oplus}) fixed in `setting.md`. For a lower-bound candidate (n\ge1), use exactly (m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}) and the candidate-wise delta condition in `assump:candidate-delta-budget`.

## Formalized Goal

Prove the single conditional two-sided theorem in `setting.md`, without weakening either clause:

1. For every (0<\delta<1), (A_n^{\oplus}) is ((\varepsilon,\delta))-DP and is a ((1/16,1/16))-PAC learner whenever (n\ge\lceil C_{\mathrm{up}}\sum_iq_i\rceil), with
   \[
   \sum_iq_i\le C_{\mathrm{quota}}\frac{M}{\varepsilon}
   \log^2\!\frac{eM}{\varepsilon\delta}.
   \]
2. For every candidate (n) satisfying `assump:candidate-delta-budget`, existence of any joint, improper, computationally unbounded ((\varepsilon,\delta))-DP ((1/16,1/16))-PAC learner implies (n\ge c_{\mathrm{low}}M).
3. Infer the stated sample-complexity sandwich only when the candidate-wise condition holds at (n_*=\mathrm{SC}_{\varepsilon,\delta}(C)). No uniform-in-(n) delta schedule is asserted.

## Sketch Identity

- Sketch attempt: 1 (initial mode, `SEARCH_MODE=OPEN`)

## Proof Roadmap

The selected framework is **Factorwise Yan learning with an ALMM expected-risk direct sum**, recorded in `technical_survey.md`. Its source provenance is Yan, arXiv:2505.06581v2, Algorithm `alg:improperlearner` and Theorem `thm:improper sample complexity`, together with Alon--Livni--Malliaris--Moran (ALMM), arXiv:1806.00949 / STOC 2019, `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, and `thm:ADPimpliesLD`.

The upper route first proves the product identities, instantiates a permutation-symmetrized Yan mechanism at the exact displayed quota, proves that a replaced global row changes at most two routed factor multisets by one replacement each, and controls utility through weighted bad-block mass. The occupancy proof splits blocks by whether (n\rho_i\) is a large constant multiple of (q_i), so it neither assumes balanced block masses nor unions over (k).

The lower route separates the additive (k\) cost from the iterated-log cost. A direct shattered-set argument gives (n\ge a_{\mathrm{VC}}k). A source-faithful wrapper of the ALMM proof gives an unrestricted factor lower interface at worst-case expected risk (1/8); finite minimax then supplies one hard prior per high-complexity factor. Under the contradiction hypothesis (n<cM), the VC lower bound makes low-(r_i) factors have negligible total (\pi)-mass, while every remaining factor has (m_{n,i}<a_{\mathrm{L}}r_i). A hidden-factor learner embeds its (m_{n,i}) rows into at most one global row each. The factor-four buffer gives a uniform binomial overflow probability

\[
\eta_0:=e^7(2/9)^9<3/2048.
\]

Coupling the truncated simulation to an ideal i.i.d. block mixture loses at most (\eta_0) expected local risk. Independent factor priors, hard on the high-complexity set and completed by fixed point masses wherever the hard interface is unavailable, together with the identity (R_D=\sum_i\pi_iR_{D_i}) then force expected global risk strictly above (31/256), contradicting the expectation bound implied by global ((1/16,1/16))-PAC utility.

## Rate Objectives

### Upper clause

- Objective type: structural-parameter explicit, confidence-explicit, fixed-sample finite-horizon.
- Exposed variables: (k,(d_i,r_i,s_i,q_i)_{i=1}^k,M,\varepsilon,\delta,n).
- Hidden constants may depend on: only the fixed numerical values (\alpha_0,\beta_0,\alpha_{\mathrm{fac}},\beta_{\mathrm{fac}}), the fixed factor split (\varepsilon/2,\delta/2), the log convention, and Yan's universal implicit constant.
- Hidden constants may not depend on: (C,X,k,d_i,|C_i|,D,\rho_i,n,\varepsilon,\delta).
- Fixed quantities: all displayed accuracy/confidence constants and the numerical occupancy split chosen in `step_004`.
- Probability mode: privacy is pointwise for every adjacent pair, including nonrealizable padded datasets; utility is high probability over the i.i.d. sample and all mechanism randomness.
- Horizon mode: fixed sample size (n); no all-time or asymptotic statement.
- Norm mode: distributional binary risk (R_D).
- Required bridge or simplification obligations: `step_002` must map Yan's (TD+1) proof parameter to (s_i); `step_004`--`step_005` must turn conditional factor guarantees into a global high-probability risk bound; `step_006` must prove every ceiling/logarithm domination in the public quota sum.
- Baseline invariance obligations: at (k=1), the construction remains a single symmetrized Yan factor learner with harmless routing/padding and the same displayed factor rate; no properness or cardinality term is introduced.

### Candidate-wise lower clause

- Objective type: structural-parameter explicit, candidate-wise confidence-explicit impossibility.
- Exposed variables: (k,(d_i,r_i,s_i,m_{n,i})_{i=1}^k,M,n,\varepsilon,\delta).
- Hidden constants may depend on: only fixed accuracy/confidence numbers, the source constants in the ALMM proof, the base-change/additive log-star convention, and fixed numerical overflow/minimax thresholds.
- Hidden constants may not depend on: (C,X,k,d_i,|C_i|,D,n,\varepsilon,\delta).
- Fixed quantities: (\gamma=1/8), (\eta_0=e^7(2/9)^9), the high-complexity threshold (R_0), and universal constants (a_{\mathrm{VC}},a_{\mathrm L},c_\delta).
- Probability mode: the theorem conclusion is a PAC impossibility; the proof passes through expectations and a finite minimax prior, then returns to the existence of a deterministic target/distribution witness.
- Horizon mode: separately fixed at each candidate (n); no inference between candidates and no uniform delta schedule.
- Norm mode: factor and global distributional 0-1 risks.
- Required bridge or simplification obligations: `step_008` must derive, rather than assume, the expected-risk ALMM wrapper; `step_009` must produce finite hard priors where ALMM applies and fixed realizable point-mass priors elsewhere; `step_010` must pay for discarded low-complexity factors by the VC lower bound; `step_011`--`step_013` must expose the overflow and one-use coupling losses; `step_014` must check the strict numerical contradiction.
- Baseline invariance obligations: for (k=1), the argument reduces to the maximum of the ordinary nonconstant-class/VC lower interface and the ALMM (\Omega(\log^*d_1)) interface, hence to (\Omega(s_1)) up to a universal constant. The first delta conjunct remains a candidate-wise source-regime condition even though the direct derivation consumes only the factor-budget conjunct.

## Assumption Provenance Objectives

- Product identities: derived from `assump:canonical-product` and `assump:vc-one-factors` by `step_001`; consumed by `step_006`, `step_007`, `step_010`, and `step_015`.
- Yan factor mechanism and quota certificate: derived from the cited source plus the setting assumptions in `step_002`; consumed by `step_003`, `step_005`, and `step_006`. The source theorem is not a theorem-facing assumption.
- Routed adjacency certificate: derived for every adjacent pair in `step_003`; consumed by the upper theorem in `step_015`.
- Membership counts, shortage events, and their weighted expectation: generated by the global sample and proved from binomial sampling in `step_004`; consumed only after production by `step_005`.
- Factor utility-failure events: generated by the unpadded Yan calls and bounded conditionally in `step_005`; they are not assumed in the theorem.
- VC lower certificate: derived in `step_007`; consumed by `step_010` and `step_014`.
- Expected-risk ALMM factor interface: derived from the primary-source proof in `step_008`; consumed by `step_009`.
- All-factor finite priors: hard priors are generated by minimax where `step_008` applies and realizable point-mass priors are fixed elsewhere in `step_009`; consumed by `step_012` and `step_013`.
- High-complexity set and low-mass certificate: generated from the contradiction hypothesis, `step_007`, and source constants in `step_010`; consumed by `step_013`--`step_014`.
- Overflow event and uniform probability certificate: generated from the block-index sequence and proved in `step_011`; consumed by `step_012`--`step_014`.
- Hidden-factor learner, one-use adjacency certificate, and ideal/truncated coupling: generated in `step_012`; consumed by `step_013`.
- Weighted expected-risk lower certificate: generated in `step_013`; consumed by `step_014`.
- Candidate lower conclusion and sample-complexity specialization: generated in `step_014` and `step_015`, respectively; neither is used before production.

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`
- Claim class: exact structural identities, including additive lower and upper interfaces.
- Theorem role: identifies the class parameters used in both theorem clauses and supplies the independent-target product structure.
- Mechanism source: direct derivation under the exact branch convention (X=\bigsqcup_iX_i) and (C=\prod_iC_i).
- Source-to-claim adequacy: a shattered set meets each VC-one block in at most one point, while one nonconstant witness point per block is jointly shattered by full Cartesian equality; concatenating factor mistake trees proves (\operatorname{LD}(C)\ge\sum_i d_i), and running an optimal mistake-bound learner separately on the queried block proves the reverse inequality. Finite cardinality multiplicativity follows from the assumed bijection. These arguments use the branch's binary labels and disjoint blocks exactly.
- Residual-to-target adequacy: N/A; the produced objects are the exact global class and its exact VC/LD/cardinality targets, not surrogates.
- Key positive/control term or structural source: full Cartesian freedom independently chooses every factor coordinate.
- Opposing defect terms: possible cross-block coupling or repeated shattered points; both are excluded by full product equality and disjointness, while within-block shattering is capped by VC one.
- Closure/dominance/absorption relation: exact equalities, with no loss term.
- Accumulation behavior / scope compatibility: finite algebraic addition over (1\le i\le k); all terms are nonnegative and (k<\infty), so no limiting accumulation occurs.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the identities follow directly from primitive structure before every consumer; dependency path is `step_001 -> {step_006, step_007, step_010, step_015}`.
- Entry-state / first-update stress result: N/A; there is no recursive process. At (k=1), all identities reduce to the corresponding factor quantities.
- Baseline conclusion preserved: the (k=1) specialization is exactly the original VC-one class, not a different representation.
- Producer-consumer provenance: produced by `step_001`; consumers are `step_006`, `step_007`, `step_010`, and `step_015`.
- Null or boundary regime tested: (k=1), finite versus infinite factor cardinality, and (d_i=1). The cardinality identity is asserted only when every factor is finite.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without full Cartesian equality, the VC lower witness and independent lower targets need not exist.
- Repair route if source is unsupported: None; it is primitive-source direct algebra under `assump:canonical-product`.

### `step_002`

- Step ID: `step_002`
- Claim class: cited-tool wrapper and exact factor quota/utility/privacy interface.
- Theorem role: supplies every upper-bound factor mechanism.
- Mechanism source: Chao Yan, arXiv:2505.06581v2 (the arXiv source metadata records version 2), Algorithm `alg:improperlearner`, Corollary `cor: threshold dimension and littlestone dimension`, and labeled Theorem `thm:improper sample complexity`. The first “Improper Learning” theorem in the introduction is unnumbered and is not assigned an invented number.
- Source-to-claim adequacy: source objects ((\mathcal X,\mathcal C,d_L,N,\alpha,\beta,\varepsilon,\delta)) map to ((X_i,C_i,d_i,q_i,\alpha_{\mathrm{fac}},\beta_{\mathrm{fac}},\varepsilon/2,\delta/2)). `assump:vc-one-factors` discharges VC one and finite LD; realizability and arbitrary (D_i) match the source PAC model; `assump:global-privacy-range` makes all parameters positive and (\varepsilon/2<2), as required by the source choosing mechanism. The source defines replacement adjacency on datasets differing in one entry and DP on all datasets, while utility is only for i.i.d. realizable data. Its output theorem is improper, matching the branch. The proof's private-median size uses (TD(C_{i,f})+1), and (TD\le2^{d_i+1}); hence its log-star term is bounded, under the branch's base-two convention, by a universal multiple of (s_i=1+\log_2^*(d_i+1)). Choose the universal (K\ge1) in `setting.md` to dominate the theorem's implicit constant and this convention shift. The ceiling (q_i) therefore meets the exact source threshold. Known non-outputs: Yan does not prove a product theorem, padded-input utility, a cardinality bound, or the lower clause.
- Residual-to-target adequacy: produced control is (\Pr[R_{D_i}(h_i,c_i)\le1/64]\ge1-1/4096) on an unpadded i.i.d. (q_i)-sample; the consumed target is exactly the same factor risk under (D_i). There is no transformed target residual. Padding is excluded from utility and handled as a bad-block event downstream.
- Key positive/control term or structural source: Yan's VC-one tree/threshold-dimension learner and its labeled sample-complexity theorem.
- Opposing defect terms: implicit-(O\) constant, log-star convention, the printed (d_i=1) endpoint, input ordering, and padding. (K,s_i), permutation symmetrization, and the downstream bad-block split control these separately.
- Closure/dominance/absorption relation: the exact inequality “source threshold (\le q_i)” follows from (TD+1\le2^{d_i+1}+1), log-star monotonicity, the chosen (K), and the fixed parameter substitution; no utility is claimed when padding occurs.
- Accumulation behavior / scope compatibility: one fixed invocation per factor. Privacy is not accumulated over all factors here; affected-input composition is deferred to `step_003` with an at-most-two certificate.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the cited theorem and direct wrapper produce the factor interface before routing and utility consume it; path `step_002 -> {step_003, step_005, step_006}`.
- Entry-state / first-update stress result: the boundary (d_i=1) is active because the source proof parameter is (TD+1\ge1); (s_i\ge2) gives a nonzero quota. No algorithmic recursion is consumed as a theorem-facing invariant.
- Baseline conclusion preserved: for (k=1), this is Yan's improper learner with a conservative universal constant and explicit endpoint wrapper, not a proper or finite-class surrogate.
- Producer-consumer provenance: producer is the cited source plus the current-notation wrapper in `step_002`; consumers are `step_003`, `step_005`, `step_006`, and final upper assembly.
- Null or boundary regime tested: (d_i=1), (\delta\uparrow1), arbitrarily small positive (\delta), infinite (C_i), improper output, and nonrealizable padded inputs. Only DP, never utility, is used on padded inputs.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the (TD+1\) wrapper, the printed (\log^*1=0) expression would not supply a valid positive quota.
- Repair route if source is unsupported: None after the source-proof wrapper; if review rejects the implicit-constant envelope, the smallest repair is `step_002`, not a new theorem assumption.

### `step_003`

- Step ID: `step_003`
- Claim class: routed-input support and privacy composition.
- Theorem role: proves the exact ((\varepsilon,\delta))-DP guarantee of (A_n^{\oplus}) for every fixed (n).
- Mechanism source: direct multiset adjacency derivation plus Yan's labeled composition theorem `thm:composition` (which cites the standard basic composition theorem). Define each factor call through an independent uniform-permutation wrapper, so its law depends only on the routed multiset.
- Source-to-claim adequacy: replacing a row within one block changes at most one selected multiset element. Moving a row from block (a) to block (b) removes at most one selected (a)-record and promotes at most one later (a)-record or pad, and inserts at most one (b)-record while displacing at most one last selected (b)-record or pad. Thus (T_a,T_b) are each one-replacement adjacent as multisets and every other (T_i) is identical. Coupled random permutations turn adjacent multisets into source-sequence inputs differing in one position. Two factor mechanisms cost exactly (2(\varepsilon/2,\delta/2)=(\varepsilon,\delta)); one affected factor costs less. Independent unaffected outputs and piecewise assembly are postprocessing.
- Residual-to-target adequacy: the produced interface is pointwise DP for the exact output tuple ((h_i)_i); the consumed object (A_n^{\oplus}) is its deterministic piecewise postprocessing. No privacy residual remains.
- Key positive/control term or structural source: disjoint block membership restricts one replacement to a source block and a destination block.
- Opposing defect terms: selection-order shifts, padding, nonrealizable labels, and a row crossing blocks. Multiset replacement plus symmetrization controls the shift; source DP applies to the other cases without realizability.
- Closure/dominance/absorption relation: at most two additive privacy losses, each (\varepsilon/2,\delta/2).
- Accumulation behavior / scope compatibility: finite support size two, not (k); the changed row has zero influence on every other factor input.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` supplies DP factor mechanisms, and the explicit affected-set certificate supplies composition; path `step_002 -> step_003 -> step_015`.
- Entry-state / first-update stress result: N/A; privacy compares one adjacent pair. The hardest first transition is a replacement whose old and new instances lie in different blocks, and it activates exactly the two stated factor comparisons.
- Baseline conclusion preserved: for (k=1), only one factor is affected and its ((\varepsilon/2,\delta/2)) guarantee implies the advertised ((\varepsilon,\delta)) guarantee by monotonicity.
- Producer-consumer provenance: producer `step_003`; consumer final upper theorem in `step_015`.
- Null or boundary regime tested: same-block replacement, cross-block replacement, selected versus unselected row, shortage versus full quota, and arbitrary padding labels.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without disjoint blocks or permutation symmetrization, one row could affect more factors or many sequence coordinates.
- Repair route if source is unsupported: None; the wrapper is part of the allowed instantiation of (A_i^{\mathrm{Yan}}).

### `step_004`

- Step ID: `step_004`
- Claim class: generated occupancy-event and weighted-shortage bound.
- Theorem role: controls the total risk weight on which factor utility cannot be invoked.
- Mechanism source: direct binomial concentration with the fixed numerical choice (A=128). Split (L=\{i:n\rho_i<128q_i\}) and (H=L^c).
- Source-to-claim adequacy: (N_i\sim\mathrm{Bin}(n,\rho_i)). The light mass satisfies (\sum_{i\in L}\rho_i<128\sum_iq_i/n). For (i\in H), (q_i\le n\rho_i/128), so the multiplicative lower-tail Chernoff inequality gives (\Pr[N_i<q_i]\le\exp[-n\rho_i(1-1/128)^2/2]\le e^{-16}), using (q_i\ge1). Hence
  \[
  \mathbb E\sum_i\rho_i\mathbf1\{N_i<q_i\}
  \le 128\frac{\sum_iq_i}{n}+e^{-16}.
  \]
- Residual-to-target adequacy: the produced random control is exactly the (D)-mass of padded factors, the same weight with which their worst-case risk enters (R_D).
- Key positive/control term or structural source: normalization (\sum_i\rho_i=1) and exponential binomial lower-tail decay on heavy blocks.
- Opposing defect terms: arbitrarily small or zero (\rho_i), arbitrary (k), and dependence among multinomial counts.
- Closure/dominance/absorption relation: light blocks are charged deterministically to (128\sum q_i/n); heavy blocks are averaged with (\sum_{H}\rho_i\le1). No independence or union bound over factors is used.
- Accumulation behavior / scope compatibility: finite weighted sum with nonnegative weights totaling one; the defect is an expectation at the single fixed sample size.
- Obligation locality classification: `step-local`.
- Noncircular closure status: primitive i.i.d. sampling produces the counts; the displayed inequality proves the event-mass control before `step_005` consumes it. Path `step_002 -> step_004 -> step_005`.
- Entry-state / first-update stress result: at (\rho_i=0), (N_i=0), the block is always padded, and its weighted contribution is exactly zero; no undefined (D_i) is used.
- Baseline conclusion preserved: for (k=1), (\rho_1=1) and the same binomial statement reduces to deterministic full occupancy once (n\ge q_1).
- Producer-consumer provenance: producer `step_004`; consumer `step_005`.
- Null or boundary regime tested: zero-mass blocks, extremely unbalanced masses, (q_i>n\rho_i), and arbitrary factor count.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without weighting by (\rho_i), a union bound would introduce an invalid (k\beta_{\mathrm{fac}}) or a balance condition.
- Repair route if source is unsupported: None.

### `step_005`

- Step ID: `step_005`
- Claim class: generated factor-success events and global high-probability utility closure.
- Theorem role: proves the upper PAC guarantee.
- Mechanism source: `step_002` factor utility, `step_004` weighted occupancy, conditional exchangeability of the first (q_i) block observations, and Markov's inequality on weighted bad mass.
- Source-to-claim adequacy: conditional on block-membership indicators and (N_i\ge q_i), the selected unpadded values are i.i.d. from (D_i) and realizably labeled by (c_i), so Yan gives a failure event (G_i^c) of conditional probability at most (\beta_{\mathrm{fac}}). Define
  \[
  W:=\sum_i\rho_i\mathbf1\{N_i<q_i\text{ or }G_i^c\}.
  \]
  Then (\mathbb EW\le128\sum_iq_i/n+e^{-16}+\beta_{\mathrm{fac}}). On every outcome, (R_D(A_n^{\oplus},c)\le\alpha_{\mathrm{fac}}+W), including arbitrary behavior on bad blocks. Set (C_{\mathrm{up}}=2^{17}). For (n\ge\lceil2^{17}Q\rceil),
  \[
  \mathbb EW\le \frac{128}{2^{17}}+e^{-16}+\frac1{4096}
  <\frac3{1024}.
  \]
  Markov at (3/64=1/16-1/64) gives failure probability strictly below (1/16).
- Residual-to-target adequacy: the produced control is in the exact global risk metric; the residual (W) includes every padding and factor-utility defect, each with its correct block weight.
- Key positive/control term or structural source: (\alpha_{\mathrm{fac}}=1/64) leaves the exact margin (3/64), while (A=128), (\beta_{\mathrm{fac}}=1/4096), and (C_{\mathrm{up}}=2^{17}) fit the Markov budget explicitly.
- Opposing defect terms: padding risk up to one, factor failure risk up to one, dependent counts, dependent success events through the sample, and zero-mass blocks.
- Closure/dominance/absorption relation: (R_D\le1/64+W) and (\mathbb EW\le3/1024=(3/64)(1/16)).
- Accumulation behavior / scope compatibility: finite weighted algebraic aggregation; bad terms have nonnegative sign and total weight at most one, with no iterative or horizon accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: occupancy is produced by `step_004`, and conditional factor utility by `step_002`; neither assumes global success. Path `{step_002,step_004} -> step_005 -> step_015`.
- Entry-state / first-update stress result: when every positive-mass block is unpadded and every factor succeeds, (W=0) and risk is at most (1/64); if a zero-mass block is always padded, it still contributes zero.
- Baseline conclusion preserved: (k=1) gives the source factor learner's utility (with a conservative (n\) threshold), not a weaker expectation-only result.
- Producer-consumer provenance: producer `step_005`; consumer upper assembly `step_015`.
- Null or boundary regime tested: (\rho_i=0), one block carrying all mass, arbitrarily many tiny-mass blocks, and padded hypotheses that are completely wrong.
- Target conclusion false or theorem-critical obstruction present if source vanishes: if the weighted factor-failure term were union-bounded over (k), the target's (k)-free confidence interface would fail.
- Repair route if source is unsupported: None.

### `step_006`

- Step ID: `step_006`
- Claim class: explicit-rate specialization and quota-sum simplification.
- Theorem role: exports the public upper rate with universal hidden constants.
- Mechanism source: direct inequalities from the exact (q_i) definition, (s_i\le M), (k\le M/2), (\varepsilon\le1/10), and fixed factor parameters.
- Source-to-claim adequacy: after substituting (\varepsilon_{\mathrm{fac}}=\varepsilon/2\), (\delta_{\mathrm{fac}}=\delta/2\), and (\beta_{\mathrm{fac}}=1/4096), every non-ceiling term is at most
  \[
  C\frac{s_i}{\varepsilon}\log^2\!\frac{16384s_i}{\varepsilon\delta}.
  \]
  Since (s_i\le M) and (\log(16384M/(\varepsilon\delta))\le C'\log(eM/(\varepsilon\delta))) throughout the primitive parameter range, summing gives the desired (M/\varepsilon) term. The ceilings add at most (k\le M/2), which is dominated by the same right side because (\varepsilon\le1/10) and the public logarithm is bounded below by a universal positive constant.
- Residual-to-target adequacy: the produced quantity is exactly (\sum_iq_i), the sample threshold consumed by the public upper theorem; every ceiling and fixed log multiplier is included.
- Key positive/control term or structural source: monotonicity (s_i\le M) and additivity (\sum_i s_i=M).
- Opposing defect terms: ceilings, the constant (16384), and potentially small public logarithm.
- Closure/dominance/absorption relation: explicit pointwise log domination plus (k\le M/2\le C(M/\varepsilon)\log^2(eM/(\varepsilon\delta))).
- Accumulation behavior / scope compatibility: finite summation with nonnegative terms; no probability conversion occurs here.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` supplies (k\le M/2) and `step_002` supplies the exact quotas; path `{step_001,step_002} -> step_006 -> step_015`.
- Entry-state / first-update stress result: at (k=1,d_1=1,\delta\uparrow1), (M\ge2) and (\varepsilon\le1/10), so the public logarithm remains positive and dominates the ceiling.
- Baseline conclusion preserved: the factor rate remains Yan's (1/\varepsilon) squared-log dependence up to universal constants.
- Producer-consumer provenance: producer `step_006`; consumer `step_015`.
- Null or boundary regime tested: (k=1), all (d_i=1), infinite factor cardinality, (\delta\uparrow1), and arbitrarily small positive (\delta).
- Target conclusion false or theorem-critical obstruction present if source vanishes: silently dropping ceilings or replacing (\log^*) by (\log) would violate the explicit-rate contract.
- Repair route if source is unsupported: None.

### `step_007`

- Step ID: `step_007`
- Claim class: unrestricted nonprivate lower bound from the product VC witness.
- Theorem role: pays the additive per-factor cost and later makes low-(r_i) blocks negligible.
- Mechanism source: direct random-label argument on the (k) points shattered in `step_001`; privacy is not needed.
- Source-to-claim adequacy: choose one witness point (x_i\in X_i) and let (D) be uniform on them. Full Cartesian equality makes a uniformly random label vector a uniformly random target in a finite (2^k)-subclass. Conditional on an (n)-sample, every unseen point's target label remains an independent fair bit even for an arbitrary improper randomized output. If (n<k/2), the expected unseen mass is at least (1/2), so average expected risk is at least (1/4). A ((1/16,1/16))-PAC learner has expected risk at most (31/256<1/4), a contradiction. Thus one may fix a universal (a_{\mathrm{VC}}>0), for example any (a_{\mathrm{VC}}\le1/4), such that (n\ge a_{\mathrm{VC}}k), including the integer boundary (k=1,n\ge1).
- Residual-to-target adequacy: the lower bound is for the same global risk and the same unrestricted output class; no properness or DP surrogate is used.
- Key positive/control term or structural source: independent unseen labels supplied by the full-product shattered set.
- Opposing defect terms: repeated sample points and arbitrary output dependence on seen labels.
- Closure/dominance/absorption relation: unseen labels remain unbiased, and their expected total (D)-mass directly lower-bounds risk.
- Accumulation behavior / scope compatibility: one finite expectation over (k) points; no repeated-scope claim.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` produces the shattered set, then the direct argument proves the lower certificate before `step_010` consumes it. Path `step_001 -> step_007 -> {step_010,step_014}`.
- Entry-state / first-update stress result: with (k=1), the candidate convention already has (n\ge1), so the chosen universal lower constant remains valid.
- Baseline conclusion preserved: this is the ordinary VC sample lower interface embedded inside the private theorem.
- Producer-consumer provenance: producer `step_007`; consumers `step_010` and `step_014`.
- Null or boundary regime tested: (k=1), (n=1), point-function-like (d_i=1) factors, and improper hypotheses.
- Target conclusion false or theorem-critical obstruction present if source vanishes: ALMM's (\log^*d_i) lower bound is zero or constant at small (d_i) and cannot by itself pay (\sum_i1).
- Repair route if source is unsupported: None.

### `step_008`

- Step ID: `step_008`
- Claim class: theorem-critical unrestricted expected-risk factor lower interface.
- Theorem role: supplies a constant local risk floor that can add under the block mixture.
- Mechanism source: ALMM, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949 / STOC 2019: resampling Lemma `lem:bun` (citing Bun et al. Lemma 5.9), empirical jump Lemma `lem:reduction`, threshold lower Theorem `thm:main`, embedding Theorem `thm:shelah`, and Corollary `thm:ADPimpliesLD`. Supporting resampling source: Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553, Lemma 5.9 as identified by ALMM.
- Source-to-claim adequacy: derive the following current-notation wrapper, rather than attributing it verbatim to the formal corollary. There are universal (a_{\mathrm L},c_\delta>0) such that for (m\ge8), (\delta\le c_\delta/(m^2\log(m+1))), and (r=\log_2^*d), every ((0.1,\delta))-DP, possibly improper learner on (m) i.i.d. realizable examples from a class of LD (d) has
  \[
  \sup_{c,D}\mathbb E R_D(B(S),c)>\gamma,\qquad \gamma:=1/8,
  \]
  whenever (m<a_{\mathrm L}r). To derive it, suppose the supremum were at most (1/8). The proof of `lem:bun` samples (m) rows with replacement from a fixed database of size (9m); linearity preserves the expected-risk bound, and its secrecy-of-the-sample argument preserves ((0.1,\delta))-DP. Thus the resulting empirical mechanism has expected empirical accuracy at least (7/8). This is exactly the numerical input used in the proof of ALMM `lem:reduction`; the remainder of `thm:main` and `thm:shelah` gives (m=\Omega(\log^*d)). Shrinking (c_\delta) absorbs the size-(9m) resampling and replacing (\log m) by (\log(m+1)). Source labels (\{\pm1\}) map bijectively to (\{0,1\}); source replacement adjacency and distributional error match the branch; source output is unrestricted. The source's log-star base/convention differs by at most a universal additive constant, which is absorbed by (a_{\mathrm L}) and the low-complexity split in `step_010`. Known non-output boundary: the formal `thm:ADPimpliesLD` itself states ((1/16,1/16))-PAC hardness, so the expected-risk claim is justified only through this explicit proof wrapper.
- Residual-to-target adequacy: source and consumed quantities are both expected distributional 0-1 risk on the same factor. The resampling target is the uniform distribution on the fixed database, for which population risk equals empirical risk exactly; no surrogate residual remains.
- Key positive/control term or structural source: expected empirical accuracy (\ge7/8), which creates the source's probability jump in `lem:reduction`, plus the finite threshold embedding from `thm:shelah`.
- Opposing defect terms: factor (9) in sample size, delta denominator change, label and log-star conventions, (r=0) at (d=1), and arbitrary improper outputs.
- Closure/dominance/absorption relation: fixed factors are absorbed into (a_{\mathrm L},c_\delta); small (r) is not claimed hard here and is routed to `step_007`; the source lower proof already allows arbitrary outputs.
- Accumulation behavior / scope compatibility: one fixed factor budget (m); no uniform-in-(m) or asymptotic schedule is inferred.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the cited proof supplies the risk floor independently of the product theorem; path `step_008 -> step_009 -> {step_012,step_013}`.
- Entry-state / first-update stress result: at (d=1), (r=0) and this interface is deliberately inactive; the VC route supplies the missing constant. At (m=8), (\log(m+1)>0) and the delta interface is defined.
- Baseline conclusion preserved: for (k=1) and large (r_1), this is the unrestricted ALMM lower mechanism; it is not replaced by a proper threshold theorem.
- Producer-consumer provenance: producer `step_008`; consumer `step_009`.
- Null or boundary regime tested: (d=1), (m=8), (\varepsilon<0.1) (privacy monotonicity), infinite factor cardinality, improper output, and source labels (\pm1).
- Target conclusion false or theorem-critical obstruction present if source vanishes: the formal PAC corollary alone would yield only a much smaller expected-loss floor and would not support the direct-sum constants.
- Repair route if source is unsupported: smallest repair is this source wrapper in `step_008`; absent the explicit `lem:bun`/`lem:reduction` derivation it would be a `sketch/interface defect`, not future local work.

### `step_009`

- Step ID: `step_009`
- Claim class: finite minimax hard-prior certificate.
- Theorem role: produces factor task distributions before the hidden-factor construction consumes them.
- Mechanism source: `step_008` plus finite zero-sum minimax applied to the finite threshold witness in ALMM `thm:shelah`/`thm:main`.
- Source-to-claim adequacy: for each fixed factor (i) and budget (m_{n,i}<a_{\mathrm L}r_i), restrict to the finite embedded threshold subclass, the finite point set, the finitely supported realizable distributions used by the source lower proof, and output label vectors on that finite support. Randomized ((0.1,\delta))-DP mechanisms form a convex compact finite-dimensional polytope; expected risk is bilinear in a mechanism and a distribution over tasks. The minimax theorem therefore turns the worst-case statement from `step_008` into a finite prior (\nu_i) on pairs (\theta_i=(c_i,D_i)) such that every eligible unrestricted DP learner (B) satisfies
  \[
  \mathbb E_{\theta_i\sim\nu_i,,S\sim(D_i)_{c_i}^{m_{n,i}},,B}
  R_{D_i}(B(S),c_i)>1/8.
  \]
  Any arbitrary hypothesis is postprocessed to its finite label vector, so improper output is fully included. For every factor not carrying such a hard prior, fix any (c_i^0\in C_i) and (x_i^0\in X_i), let (D_i^0) be the point mass at (x_i^0), and define (\nu_i) to be the point mass on the realizable pair ((c_i^0,D_i^0)). Such choices exist because each factor is nonconstant, hence (C_i) and (X_i) are nonempty. These baseline priors make (\nu_i) defined for every factor but carry no hardness assertion.
- Residual-to-target adequacy: the prior loss is the exact factor distributional risk. Finite support is a hard subproblem inside (C_i), not a changed theorem target.
- Key positive/control term or structural source: compactness and bilinearity of the finite DP decision game on hard factors, plus nonemptiness of each factor for the baseline point masses.
- Opposing defect terms: infinite (C_i), infinite output space, and an algorithm-dependent hard task.
- Closure/dominance/absorption relation: source restriction makes inputs/tasks finite; output restriction preserves all losses on their support; minimax exchanges mechanism and task mixing without quantitative loss. Baseline priors are used only to complete the product experiment and are discarded from the lower sum.
- Accumulation behavior / scope compatibility: one finite game per hard factor and fixed candidate budget, one point mass per remaining factor, and a well-defined independent product of all finitely many priors.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_008` proves hardness before minimax; `step_009` defines (\nu_i) for every factor before `step_012` samples it. Path `step_008 -> step_009 -> {step_012,step_013}`.
- Entry-state / first-update stress result: N/A; no iterative process. If the hard factor set is empty, `step_010` shows that this is incompatible with the contradiction regime after the VC lower bound.
- Baseline conclusion preserved: for (k=1) in the subcritical ALMM regime, (\nu_1) is a finite hard prior within the original factor, not a proper-only surrogate; outside that regime the separate VC branch supplies the lower bound.
- Producer-consumer provenance: producer `step_009` defines all (\nu_i), with hardness only for subcritical factors; consumers `step_012` and `step_013`.
- Null or boundary regime tested: infinite factor class/domain, arbitrary measurable outputs, and low factors without an ALMM hard prior; only finite hard restrictions or point masses are used.
- Target conclusion false or theorem-critical obstruction present if source vanishes: choosing a separate adversarial task after seeing each simulated learner would not yield one independent full-product experiment.
- Repair route if source is unsupported: None after finite restriction; otherwise this would be a `sketch/interface defect`.

### `step_010`

- Step ID: `step_010`
- Claim class: high-complexity membership certificate and low-factor weight control.
- Theorem role: ensures almost all mixture mass lies on factor budgets to which `step_009` applies.
- Mechanism source: direct arithmetic using `step_007`, `step_008`, (s_i\le r_i+2), and the contradiction hypothesis (n<cM).
- Source-to-claim adequacy: take (a_{\mathrm L}\le1), (R_0=\lceil32/a_{\mathrm L}\rceil), (H=\{i:r_i\ge R_0\}), and choose
  \[
  c\le\min\left\{a_{\mathrm L}/64,
  \frac{a_{\mathrm{VC}}}{128(R_0+2)}\right\}.
  \]
  If a global learner exists and (n<cM), `step_007` gives (n\ge a_{\mathrm{VC}}k), whence
  \[
  w_L:=\sum_{i\notin H}\pi_i
  \le\frac{(R_0+2)k}{M}<1/128.
  \]
  For (i\in H), (s_i\le r_i+2\le2r_i), so (4n\pi_i<8cr_i\le a_{\mathrm L}r_i/8). The ceiling adds at most one, bounded by (a_{\mathrm L}r_i/32), and the floor (8\le a_{\mathrm L}r_i/4). Therefore (m_{n,i}<a_{\mathrm L}r_i).
- Residual-to-target adequacy: the exported hard-set certificate uses the exact theorem weights (\pi_i=s_i/M) and exact budgets (m_{n,i}); no surrogate weighting is introduced.
- Key positive/control term or structural source: the separate VC lower bound controls (k/M), while (r_i\ge R_0) makes additive constants and the floor eight negligible relative to (r_i).
- Opposing defect terms: (+2) log-star shift, ceiling (+1), floor (8), and potentially many low-complexity factors.
- Closure/dominance/absorption relation: the displayed choices of (R_0,c) dominate each defect separately; low factors are discarded only after their total (\pi)-mass is bounded.
- Accumulation behavior / scope compatibility: finite deterministic partition of factors; all weights are nonnegative and total one.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_007` supplies (n\ge a_{\mathrm{VC}}k) without using the desired direct sum, and `step_008` supplies (a_{\mathrm L}); path `{step_007,step_008} -> step_010 -> {step_013,step_014}`.
- Entry-state / first-update stress result: if all (d_i=1), then (H=\varnothing), but (M=2k) and the VC lower already prevents (n<cM) for the chosen sufficiently small (c). If (k=1) and (r_1\ge R_0), the sole factor is hard.
- Baseline conclusion preserved: the split combines, rather than weakens, the two (k=1) lower sources.
- Producer-consumer provenance: producer `step_010`; consumers `step_013` and `step_014`.
- Null or boundary regime tested: all-low factors, one high factor, (n=1), ceiling/floor activation, and heterogeneous (r_i).
- Target conclusion false or theorem-critical obstruction present if source vanishes: applying ALMM to every factor would be false at (r_i=0) and when the fixed floor eight exceeds its lower scale.
- Repair route if source is unsupported: None.

### `step_011`

- Step ID: `step_011`
- Claim class: generated binomial overflow certificate.
- Theorem role: bounds the only distributional discrepancy between a finite-input factor simulation and the ideal global i.i.d. mixture.
- Mechanism source: direct Chernoff calculation for (L\sim\mathrm{Bin}(n,p)), (m=\max\{8,\lceil4np\rceil\}).
- Source-to-claim adequacy: with (\mu=np) and overflow (O=\{L>m\}), the threshold is at least (t=\max\{9,4\mu+1\}). For (\mu\le2), optimized Chernoff gives
  \[
  \Pr[O]\le\exp[-9\log(9/2)+7]=e^7(2/9)^9.
  \]
  For (\mu\ge2), the exponent (f(\mu)=(4\mu+1)\log(4+1/\mu)-3\mu-1) is increasing, so the same bound holds. Thus (\Pr[O]\le\eta_0=e^7(2/9)^9<3/2048), uniformly in (n,p); at (p=0) it is zero.
- Residual-to-target adequacy: overflow is exactly the event on which the finite factor stream cannot reproduce the ideal global sample; total-variation/coupling loss for any ([0,1])-valued local risk is at most (\eta_0).
- Key positive/control term or structural source: the factor-four mean buffer plus the absolute floor eight.
- Opposing defect terms: tiny (np), integer rounding, and (m>n) for small (n).
- Closure/dominance/absorption relation: floor eight controls (\mu\le2), and multiplicative four controls (\mu\ge2); both meet at the same explicit Chernoff exponent.
- Accumulation behavior / scope compatibility: one overflow event per factor learner. It is subtracted locally before the finite weighted sum; no union over factors is taken.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the block-index sequence alone produces (O_i), independently of factor examples and A; path `step_011 -> {step_012,step_013,step_014}`.
- Entry-state / first-update stress result: at (p=0), no factor row is requested; at (n=1), (m\ge8) and overflow is impossible.
- Baseline conclusion preserved: for (k=1,p=1), (m\ge4n), so overflow is impossible and the factor lower comparison has no coupling loss.
- Producer-consumer provenance: producer `step_011`; consumers `step_012`--`step_014`.
- Null or boundary regime tested: (p=0), (np\le2), (np=2), large (np), (n=1), and integer ceiling transitions.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without a uniform loss below the (1/8-31/256) slack, the average-risk contradiction would not close.
- Repair route if source is unsupported: None; the full exponent is specified.

### `step_012`

- Step ID: `step_012`
- Claim class: hidden-factor simulation, one-use replacement coupling, and exact factor privacy.
- Theorem role: turns the arbitrary global learner into an eligible learner for each hard factor prior.
- Mechanism source: direct randomized embedding, supported as a coupling pattern by Bun et al., arXiv:1504.07553, proof of `thm:lb-higher-general`, but not consuming that proper-learning theorem.
- Source-to-claim adequacy: for hard (i), define (B_i) on (U=(u_1,\ldots,u_{m_{n,i}})) by independently sampling (\theta_j=(c_j,D_j)\sim\nu_j) for (j\ne i), using the hard prior from `step_009` when (j) is hard and its fixed realizable point-mass prior otherwise; draw block labels (J_1,\ldots,J_n\stackrel{\mathrm{iid}}\sim\pi), draw the non-(i) rows from their selected (D_j)'s, and fill successive (i)-slots with successive rows of (U). If more than (m_{n,i}) (i)-slots occur, output a fixed hypothesis independent of (U); otherwise run A on the assembled (n)-row dataset and output its restriction to (X_i). Each input row is used in at most one global row. Conditional on all public/random auxiliary choices, replacing one (U)-row changes at most one global row or changes nothing; the overflow branch is constant. Hence (B_i) is exactly ((\varepsilon,\delta))-DP and therefore ((0.1,\delta))-DP. `assump:candidate-delta-budget` supplies the ALMM delta condition at its exact input size. Full Cartesian equality makes all assembled labels jointly realizable, while restriction of A's arbitrary output remains an allowed improper factor hypothesis.
- Residual-to-target adequacy: on nonoverflow, the finite simulation equals the ideal construction using an infinite i.i.d. (D_i)-stream. The produced factor output and consumed factor target are both on (X_i), in risk (R_{D_i}); the only residual is the overflow event already bounded by `step_011`.
- Key positive/control term or structural source: one-use sequential consumption of (U) and one global invocation of A.
- Opposing defect terms: replacement of an input row, random placement, unknown (c_i,D_i), cross-factor targets, overflow, and arbitrary improper global output.
- Closure/dominance/absorption relation: one factor-row replacement maps to at most one global-row replacement; overflow is isolated as an input-independent constant branch; full product equality supplies a single realizing target tuple.
- Accumulation behavior / scope compatibility: no privacy composition across the (m_{n,i}) rows or across factors occurs inside (B_i); one invocation of A carries the exact budget.
- Obligation locality classification: `step-local`.
- Noncircular closure status: priors are produced by `step_009` and overflow by `step_011` before `B_i` is defined; path `{step_009,step_011} -> step_012 -> step_013`.
- Entry-state / first-update stress result: if no (i)-slot occurs, no input row is used and A is run on other factors; if overflow occurs immediately after the last available row, the mechanism takes the constant branch before consuming an unsupported row. The privacy source is active in every branch.
- Baseline conclusion preserved: for (k=1), (m_{n,1}\ge4n), so the simulation uses at most (n) of its inputs and is exactly a one-call reduction to A.
- Producer-consumer provenance: producer `step_012`; consumer `step_013`.
- Null or boundary regime tested: zero requested rows, overflow, replacement of a used versus unused row, replacement labels, (k=1), and improper A.
- Target conclusion false or theorem-critical obstruction present if source vanishes: reusing one factor row in several global positions would invoke group privacy and destroy the exact factor delta interface.
- Repair route if source is unsupported: None.

### `step_013`

- Step ID: `step_013`
- Claim class: weighted average-error extraction and direct-sum lower certificate.
- Theorem role: converts all hard factor priors into a lower bound on the ideal global learner's expected risk.
- Mechanism source: `step_009` all-factor priors (hard on (H), and hard or fixed elsewhere), `step_011` overflow, `step_012` coupling, their independent product, and the exact risk identity.
- Source-to-claim adequacy: since `step_010` makes (m_{n,i}<a_{\mathrm L}r_i) for each (i\in H), minimax gives (\mathbb E R_{D_i}(B_i,c_i)>1/8). Couple (B_i) with the ideal experiment that uses an infinite factor-(i) stream and the same A/randomness. Outputs agree off (O_i), and risk lies in ([0,1]), so
  \[
  \mathbb E R_{D_i}(A(S)|_{X_i},c_i)>1/8-\eta_0.
  \]
  Sample all (\theta_i\sim\nu_i) independently, including every point-mass choice used to complete the family, and let (D=\sum_i\pi_iD_i), (c=(c_i)_i). In the common ideal experiment, each global row is i.i.d. from (D_c), and Tonelli's finite identity gives
  \[
  \mathbb E R_D(A(S),c)
  =\sum_i\pi_i\mathbb E R_{D_i}(A(S)|_{X_i},c_i)
  >(1-w_L)(1/8-\eta_0).
  \]
- Residual-to-target adequacy: each truncated-to-ideal residual is at most (\eta_0) in the exact local risk; the same target (c_i,D_i) is used on both sides. The finite weighted sum transfers these exact local risks to the exact global theorem metric.
- Key positive/control term or structural source: the factor expected-risk floor (1/8) and total hard mass (1-w_L).
- Opposing defect terms: overflow loss (\eta_0), discarded low-factor mass (w_L), dependence of A's joint output across blocks, and arbitrary factor cardinality.
- Closure/dominance/absorption relation: joint dependence is harmless because expectation and the exact weighted risk identity are linear; only marginal lower bounds are summed. Defects remain explicit as ((1-w_L)(1/8-\eta_0)).
- Accumulation behavior / scope compatibility: finite signed-known aggregation: all local risks and weights are nonnegative; overflow is a one-time local subtraction, not a union probability.
- Obligation locality classification: `step-local`.
- Noncircular closure status: hard priors, mass, overflow, and simulations are all produced in `step_009`--`step_012`; none assumes global failure. Path `{step_009,step_010,step_011,step_012} -> step_013 -> step_014`.
- Entry-state / first-update stress result: if (H) has one factor, the identity remains exact; if low factors have arbitrary risk zero, the retained hard mass alone supplies the bound.
- Baseline conclusion preserved: (k=1) yields the single-factor expected-risk lower bound with zero overflow.
- Producer-consumer provenance: producer `step_013`; consumer `step_014`.
- Null or boundary regime tested: correlated joint output, one hard factor, zero-risk low factors, and infinite factor class with finite hard priors.
- Target conclusion false or theorem-critical obstruction present if source vanishes: an algorithm-dependent hard target without minimax could not be sampled independently before constructing the common global experiment.
- Repair route if source is unsupported: None.

### `step_014`

- Step ID: `step_014`
- Claim class: candidate-wise lower contradiction and deterministic witness extraction.
- Theorem role: proves (n\ge c_{\mathrm{low}}M) for every admissible candidate.
- Mechanism source: `step_007`, `step_010`, `step_013`, and the PAC-to-expectation inequality.
- Source-to-claim adequacy: a global ((1/16,1/16))-PAC learner has, for every deterministic target/distribution,
  \[
  \mathbb E R_D(A(S),c)\le(15/16)(1/16)+(1/16)\cdot1=31/256.
  \]
  This remains true after averaging the independent finite priors. Under (n<cM), `step_010` gives (w_L<1/128), while `step_011` gives (\eta_0<3/2048). Therefore `step_013` yields
  \[
  \mathbb E R_D(A(S),c)>
  \frac{127}{128}\left(\frac18-\frac3{2048}\right)
  =\frac{32131}{262144}
  >\frac{31744}{262144}=\frac{31}{256},
  \]
  a contradiction. Set (c_{\mathrm{low}}=c). Negating the assumed uniform PAC guarantee produces a deterministic full-product target and allowed mixture distribution with failure probability (>1/16), exactly as stated.
- Residual-to-target adequacy: both sides use the exact global risk; all lower-proof residuals (w_L,\eta_0) appear numerically and are dominated before the theorem conclusion is exported.
- Key positive/control term or structural source: the strict (1/8) factor floor versus the (31/256) PAC expectation ceiling.
- Opposing defect terms: low-factor mass and overflow, each with its own independent source and threshold.
- Closure/dominance/absorption relation: the displayed rational inequality explicitly absorbs both defects; no “sufficiently small” term is dropped.
- Accumulation behavior / scope compatibility: one fixed candidate (n); the contradiction is not iterated or transferred to another candidate.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all controls are prior outputs; path `{step_007,step_010,step_013} -> step_014 -> step_015`.
- Entry-state / first-update stress result: for small (n) and all-low factors, `step_007` already contradicts (n<cM); for high factors, the (m_{n,i}\ge8) source interface and overflow calculation are active.
- Baseline conclusion preserved: for (k=1), the conclusion is the universal-constant combination of VC nonconstancy and ALMM log-star hardness.
- Producer-consumer provenance: producer `step_014`; consumer `step_015`.
- Null or boundary regime tested: (n=1), (k=1), all-low factors, one high factor, and equality at the candidate delta threshold.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the exact constant gap, expectation averaging would not imply a contradiction to the stated PAC constants.
- Repair route if source is unsupported: None.

### `step_015`

- Step ID: `step_015`
- Claim class: final two-sided theorem assembly and candidate-wise specialization.
- Theorem role: states exactly the formalized goal and no stronger delta claim.
- Mechanism source: upper outputs `step_003`, `step_005`, `step_006`; lower output `step_014`; definition of (\mathrm{SC}_{\varepsilon,\delta}(C)).
- Source-to-claim adequacy: the upper statements hold for every (0<\delta<1). The lower statement is invoked only for a particular (n) satisfying both conjuncts of `assump:candidate-delta-budget`; the proof consumes the factor-budget conjunct, while the (1/[n\log(n+1)]) conjunct is retained as the branch's source-regime restriction. The sandwich at (n_*=\mathrm{SC}_{\varepsilon,\delta}(C)) is stated only if that same candidate satisfies the condition.
- Residual-to-target adequacy: exact theorem clauses, risk metric, privacy mode, and candidate quantifiers match `setting.md`; no expectation-only conclusion or uniform schedule replaces them.
- Key positive/control term or structural source: independent upper and lower certificates with universal constants.
- Opposing defect terms: ceilings, delta dependence, and the possibility that the candidate condition fails at (n_*).
- Closure/dominance/absorption relation: `step_006` handles ceilings/rate; `step_014` handles lower constants; if the condition fails at (n_*), only the unconditional upper clause is concluded.
- Accumulation behavior / scope compatibility: fixed-sample and candidate-wise. No all-time, asymptotic, or cross-candidate accumulation is asserted.
- Obligation locality classification: `step-local`.
- Noncircular closure status: every theorem-facing output is produced by an earlier step; path `{step_003,step_005,step_006,step_014} -> step_015`.
- Entry-state / first-update stress result: at (k=1), the assembled theorem specializes to the source-supported VC-one upper/lower scale; at a candidate failing the delta schedule, the lower mechanism is inactive and no lower claim is made.
- Baseline conclusion preserved: exact (k=1) reduction and exact candidate-wise delta restriction are preserved.
- Producer-consumer provenance: producer `step_015`; consumer is the final theorem only.
- Null or boundary regime tested: (k=1), (n=1), (\delta\uparrow1) for the upper clause, equality in both lower delta conjuncts, infinite factor cardinality, and improper output.
- Target conclusion false or theorem-critical obstruction present if source vanishes: asserting the lower bound when the delta condition fails would exceed the source interface.
- Repair route if source is unsupported: None.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| (\operatorname{VC}(C)=k\), (\operatorname{LD}(C)=\sum_i d_i\), and finite-cardinality log identity | `step_001`, direct branch-convention derivation | Disjoint full product, factor VC/LD, finite (k) | Cross-factor coupling is excluded; cardinality may be infinite and is not controlled or used | Exact same class object and exact target quantities; N/A surrogate residual | Shattering projection/concatenation and factorwise optimal online learner give both inequalities | Full Cartesian equality and factor nonconstancy | `step_006`, `step_007`, `step_010`, `step_015` | None |
| Factor DP/PAC wrapper at quota (q_i) | `step_002`; Yan arXiv:2505.06581v2, `alg:improperlearner`, `cor: threshold dimension and littlestone dimension`, `thm:improper sample complexity` | `assump:vc-one-factors`, positive factor parameters, (TD+1\le2^{d_i+1}+1), universal (K) | Implicit constant/log-star shift controlled by (K,s_i); (d_i=1) controlled by (TD+1); padding utility uncontrolled and explicitly excluded | Produced and consumed factor use the same (C_i,D_i,c_i,R_{D_i}); no target transform | Source threshold (\le q_i) after exact parameter substitution; DP remains valid on arbitrary padded data | Yan theorem constant and positive (s_i) | `step_003`, `step_005`, `step_006` | None |
| Exact global ((\varepsilon,\delta))-DP | `step_003` | Factor DP from `step_002`, disjoint routing, independent randomness, multiset symmetrization | At most two affected factor inputs; padding/nonrealizability do not affect DP | Output tuple maps exactly by postprocessing to (A_n^{\oplus}) | (2(\varepsilon/2,\delta/2)=(\varepsilon,\delta)); one-factor cases use monotonicity | At-most-two affected-block certificate | `step_015` | None |
| Weighted shortage bound (\mathbb E\sum_i\rho_i1\{N_i<q_i\}\le128 Q/n+e^{-16}) | `step_004` | Binomial marginals, (\sum_i\rho_i=1), (q_i\ge1) | Light masses charged by (128Q/n); heavy tails by Chernoff; dependence among counts uncontrolled but irrelevant | Produced random variable is exactly padded-block mass in global risk | Deterministic light-mass sum plus weighted heavy-tail expectation | Fixed split (A=128) and (n\ge2^{17}Q) | `step_005` | None |
| Upper PAC interface (R_D\le1/16) with probability (15/16) | `step_005` | Yan conditional utility, weighted shortage, fixed (\alpha_{\mathrm{fac}},\beta_{\mathrm{fac}}) | Padding and factor failures each risk at most one; all are included in (W) | Same global risk target; (R_D\le1/64+W) is exact | With (A=128,C_{\mathrm{up}}=2^{17}), (128/2^{17}+e^{-16}+1/4096<3/1024), then Markov at (3/64) | Accuracy margin (1/16-1/64=3/64) | `step_015` | None |
| Public quota sum (Q\le C_{\mathrm{quota}}(M/\varepsilon)\log^2(eM/(\varepsilon\delta))) | `step_006` | Exact quotas, (s_i\le M), (\sum s_i=M), (k\le M/2), primitive privacy range | Fixed log constants and ceilings controlled; no cardinality term exists | Produced (Q) is the exact sample-threshold quantity consumed publicly | Pointwise log domination; ceiling (k) dominated explicitly by the public RHS | Lower bound on public log from (M\ge2,\varepsilon\le1/10,\delta<1) | `step_015` | None |
| (n\ge a_{\mathrm{VC}}k) for every claimed global learner | `step_007` | Shattered product points from `step_001`; global PAC guarantee | Sample collisions leave more unseen labels and do not hurt the lower bound; privacy unused | Exact global risk and unrestricted output | If (n<k/2), expected risk (\ge1/4>31/256) | Independent fair labels on unseen shattered points | `step_010`, `step_014` | None |
| Factor expected-risk floor (>1/8) below (a_{\mathrm L}\log^*d) | `step_008`; ALMM `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD` | Source resampling/privacy proof, expected empirical accuracy (\ge7/8), finite threshold embedding | Factor 9, delta/log convention, label convention controlled by universal constants; small (r) deliberately not covered | Uniform fixed-database distribution makes population and empirical risks identical; exact factor risk is consumed | Contrapositive of the explicit source-proof wrapper | ALMM probability jump and threshold embedding | `step_009` | None |
| All-factor finite priors (\nu_i), hard on subcritical factors and point masses elsewhere | `step_009` | Expected-risk floor, finite ALMM threshold witness, and nonempty factors | Infinite class/output collapsed to finite support label vectors with no loss; algorithm dependence removed by minimax; non-hard factors receive no hardness claim | Every task is a realizable pair inside (C_i); exact (R_{D_i}) | Finite minimax gives the strict (1/8) floor where applicable; fixed realizable pairs complete the product elsewhere | Strict source risk floor on hard factors; definitional completion off them | `step_012`, `step_013` | None |
| Hard-set certificate (w_L<1/128), (m_{n,i}<a_{\mathrm L}r_i) on (H) | `step_010` | `step_007`, source constant (a_{\mathrm L}), (s_i\le r_i+2), (n<cM) | Low (r_i), ceiling one, and floor eight have separate controls | Exact weights (\pi_i) and exact factor budgets (m_{n,i}) | Explicit choices (R_0=\lceil32/a_{\mathrm L}\rceil), (c\le a_{\mathrm L}/64), (c\le a_{\mathrm{VC}}/[128(R_0+2)]) | VC lower margin and high-(r_i) threshold | `step_013`, `step_014` | None |
| Overflow probability (\Pr[O_i]\le\eta_0<3/2048) | `step_011` | Exact binomial mean (n\pi_i), factor-four buffer, floor eight | Tiny-mean and large-mean regimes controlled separately; no union over factors | Overflow is exactly the ideal/truncated disagreement event, so ([0,1])-risk residual is at most (\eta_0) | Optimized Chernoff exponent, with monotone (f(\mu)) for (\mu\ge2) | Explicit numerical slack (3/2048-\eta_0>0) | `step_012`, `step_013`, `step_014` | None |
| Eligible hidden-factor learner (B_i) and ideal coupling | `step_012` | All-factor priors from `step_009`, overflow from `step_011`, one global call to A, full product equality | Overflow isolated; other targets use hard or fixed realizable priors; each input row is used at most once | On nonoverflow, produced global dataset equals ideal i.i.d. dataset for the same (c_i,D_i); exact local restriction is consumed | One input replacement (\mapsto\) at most one global replacement; risk transfer loses at most (1_{O_i}) | One-use sequential embedding and full Cartesian target | `step_013` | None |
| Global expected-risk lower (>(1-w_L)(1/8-\eta_0)) | `step_013` | Hard priors, eligible (B_i), coupling, exact risk identity | Low-factor mass and overflow explicit; joint output dependence uncontrolled but linearity makes it irrelevant | Exact same ideal global target/distribution and exact distributional risk | Sum marginal lower bounds with weights (\pi_i); no independence of A's block outputs required | Hard-factor mass (1-w_L) and local floor (1/8) | `step_014` | None |
| Candidate-wise (n\ge c_{\mathrm{low}}M) and deterministic failure witness | `step_014` | Expected lower, PAC expectation upper, numerical thresholds | All defects already explicit; no hidden event or factor-cardinality term | Same global risk and same PAC event; deterministic witness follows by negating uniform utility | (127/128(1/8-3/2048)>31/256) | Strict rational constant gap | `step_015` | None |
| Exact two-sided theorem and conditional sample-complexity sandwich | `step_015` | Upper privacy/utility/rate and candidate lower | Candidate delta condition may fail at (n_*); in that case lower/sandwich is not exported | Exact theorem object, mode, metric, and candidate | Invoke each clause only on its proved scope; no cross-candidate transfer | Primitive condition at the actual candidate | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Product VC/LD/cardinality identities | `step_001`, direct from `assump:canonical-product` and `assump:vc-one-factors` | `step_006`, `step_007`, `step_010`, `step_015` | Interprets (M), supplies VC lower, preserves distinctions among VC/LD/cardinality | `step_001 -> consumers` | derived | None |
| Symmetrized Yan factor interface at exact (q_i) | `step_002`; Yan arXiv:2505.06581v2 `alg:improperlearner`, `cor: threshold dimension and littlestone dimension`, `thm:improper sample complexity`; current objects and hypotheses mapped in the mechanism witness | `step_003`, `step_005`, `step_006` | Factor privacy and conditional utility for the global upper bound | `step_002 -> consumers -> step_015` | derived | None |
| At-most-two routed adjacency certificate | `step_003` | `step_015` | Exact global privacy | `step_002 -> step_003 -> step_015` | derived | None |
| Weighted shortage mass bound | `step_004` | `step_005` | Controls padding contribution without balance/union bound | `step_002 -> step_004 -> step_005 -> step_015` | derived | None |
| Weighted factor bad-mass (W) and high-probability risk bound | `step_005` | `step_015` | Global upper PAC guarantee | `{step_002,step_004} -> step_005 -> step_015` | derived | None |
| Simplified quota sum | `step_006` | `step_015` | Public explicit upper rate | `{step_001,step_002} -> step_006 -> step_015` | derived | None |
| Global VC lower certificate | `step_007` | `step_010`, `step_014` | Pays low-complexity factor mass and additive (k) | `step_001 -> step_007 -> consumers` | derived | None |
| ALMM expected-risk wrapper | `step_008`; exact source-proof path `lem:bun -> lem:reduction -> thm:main + thm:shelah -> thm:ADPimpliesLD`, with same risk target and source-convention constants absorbed | `step_009` | Supplies unrestricted factor hardness | `step_008 -> step_009 -> step_012 -> step_013 -> step_014` | derived | None |
| All-factor finite priors (\nu_i) | `step_009`, finite minimax on hard restrictions and fixed realizable point masses elsewhere | `step_012`, `step_013` | Allows a fully defined independent product experiment while retaining hardness on (H) | `step_008 -> step_009 -> consumers` | derived | None |
| Hard-factor set, low-mass bound, and subcritical budgets | `step_010` | `step_013`, `step_014` | Ensures almost all (\pi)-mass carries factor hardness | `{step_007,step_008} -> step_010 -> consumers` | derived | None |
| Overflow events and uniform (\eta_0) bound | `step_011` | `step_012`, `step_013`, `step_014` | Controls finite-stream simulation loss | `step_011 -> consumers` | derived | None |
| Hidden-factor (B_i), one-use privacy, and same-target ideal coupling | `step_012` | `step_013` | Makes global A eligible for each factor prior with exact DP budget | `{step_009,step_011} -> step_012 -> step_013` | derived | None |
| Weighted global expected-risk lower | `step_013` | `step_014` | Contradicts uniform global PAC utility below (cM) | `{step_009,step_010,step_011,step_012} -> step_013 -> step_014` | derived | None |
| Candidate lower theorem | `step_014` | `step_015` | Lower clause and deterministic failure witness | `{step_007,step_010,step_013} -> step_014 -> step_015` | derived | None |
| Two-sided theorem and (n_*) specialization | `step_015` | Final theorem | Exact formalized goal | `{step_003,step_005,step_006,step_014} -> step_015` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Prove (\operatorname{VC}(C)=k), (\operatorname{LD}(C)=\sum_i d_i), and, when all factors are finite, (\log\lvert C\rvert=\sum_i\log\lvert C_i\rvert); also record (d_i\ge1), (s_i\ge2), (k\le M/2), and (s_i\le r_i+2). | None | Primitive: `assump:canonical-product`, `assump:vc-one-factors` | Obtain both directions of LD additivity without assuming a chosen online algorithm is optimal globally. | Direct shattered-set projection/product argument; concatenated mistake trees for the lower LD inequality; product of factor optimal mistake-bound learners for the upper inequality. | Exact structural identity package. | Structural parameters are exact; no hidden constant or probability mode. | PENDING |
| `step_002` | Instantiate, for every factor, a permutation-symmetrized Yan improper mechanism that is ((\varepsilon/2,\delta/2))-DP on every size-(q_i) dataset and has (R_{D_i}\le1/64) with probability (1-1/4096) on every unpadded realizable i.i.d. input. | `step_001` | Primitive: `assump:vc-one-factors`, `assump:global-privacy-range`; cited-source hypotheses mapped explicitly | Verify the printed (\log^*d_i) formula at (d_i=1), exact parameter substitution, replacement adjacency, and multiset/order convention. | Yan arXiv:2505.06581v2, `alg:improperlearner`, `cor: threshold dimension and littlestone dimension`, `thm:improper sample complexity`; (TD+1) wrapper and random-permutation symmetrization. | Exact factor mechanism/quota certificate; no padded utility claim. | Upper objective: exposed (s_i,q_i,\varepsilon,\delta); universal (K); high-probability factor risk; fixed-sample, distributional-risk mode. | PENDING |
| `step_003` | For every replacement-adjacent (S,S'), prove that at most two routed factor multisets are one-replacement adjacent and all others agree; conclude (A_n^{\oplus}) is exactly ((\varepsilon,\delta))-DP, including cross-block replacements and padded/nonrealizable inputs. | `step_002` | Primitive: `assump:canonical-product`, `assump:global-privacy-range`; derived factor DP from `step_002` | A selected deletion can shift the order of all later selected records unless the input is treated as a multiset and symmetrized. | Explicit source/destination multiset coupling; Yan `thm:composition`; postprocessing. | Global privacy certificate. | Upper objective: pointwise privacy, fixed (n), no (k)-dependent composition. | PENDING |
| `step_004` | With (Q=\sum_iq_i) and (A=128), prove (\mathbb E\sum_i\rho_i1\{N_i<q_i\}\le128Q/n+e^{-16}), uniformly over arbitrary block masses, with zero-mass blocks contributing zero. | `step_002` | Primitive: `assump:canonical-product`; derived quotas from `step_002` | Control arbitrary many rare blocks without balance or a union bound. | Light/heavy mass split and multiplicative binomial Chernoff bound. | Weighted shortage-mass certificate. | Upper objective: explicit (Q/n), expectation used only as an intermediate fixed-sample control; no confidence union. | PENDING |
| `step_005` | Define the generated weighted bad mass (W), prove (R_D(A_n^{\oplus},c)\le1/64+W), set (C_{\mathrm{up}}=2^{17}) and verify (\mathbb EW<3/1024), and conclude the exact ((1/16,1/16))-PAC utility for (n\ge\lceil2^{17}Q\rceil). | `step_002`, `step_004` | Primitive: `assump:canonical-product`, `assump:vc-one-factors`; derived factor and occupancy controls | Conditional exchangeability of selected block records and high-probability aggregation without independence across blocks. | Conditional Yan utility; weighted expectation; explicit constant calculation; Markov at the exact (3/64) risk margin. | Upper PAC certificate. | Upper objective: (n\ge2^{17}Q), high probability (15/16), exact distributional risk, universal constants. | PENDING |
| `step_006` | Prove (Q\le C_{\mathrm{quota}}(M/\varepsilon)\log^2(eM/(\varepsilon\delta))), explicitly controlling every ceiling, fixed parameter constant, and log domination. | `step_001`, `step_002` | Primitive: `assump:global-privacy-range`; derived structural/quota identities | Prevent a hidden (k), (d_i), or cardinality term and handle (\delta\uparrow1). | Direct summation using (s_i\le M), (\sum s_i=M), (k\le M/2). | Public quota-simplification bridge. | Upper objective: all exposed variables retained; hidden constants universal; deterministic fixed-sample rate. | PENDING |
| `step_007` | Prove that any learner satisfying the target PAC guarantee must have (n\ge a_{\mathrm{VC}}k), for a universal (a_{\mathrm{VC}}>0), even without privacy and with arbitrary improper output. | `step_001` | Primitive: `assump:canonical-product`, `assump:vc-one-factors`; derived shattered set from `step_001` | Make the additive one-per-factor lower cost independent of ALMM's vanishing small-(d) log-star term. | Uniform random target labels on one witness point per factor; unseen-label expected-risk lower; PAC expectation upper (31/256). | Global VC lower certificate. | Lower objective: structural (k), deterministic minimax/expectation argument, fixed (n), exact risk. | PENDING |
| `step_008` | Derive universal (a_{\mathrm L},c_\delta>0) such that, for (m\ge8), (\delta\le c_\delta/[m^2\log(m+1)]), and (m<a_{\mathrm L}\log_2^*d), every unrestricted ((0.1,\delta))-DP factor learner has worst-case expected risk (>1/8). | `step_001` | Primitive: `assump:vc-one-factors`, `assump:global-privacy-range`; cited-source conditions | The formal ALMM corollary is PAC-form, so the stronger expected-risk interface must be derived from the source proof, with resampling/delta/log conventions checked now. | ALMM arXiv:1806.00949 `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD`; Bun et al. Lemma 5.9 resampling proof. | Source-faithful unrestricted expected-risk lower wrapper. | Lower objective: exposed (d,m,\delta), fixed (\varepsilon=0.1), expectation in exact risk, universal constants; candidate-wise only. | PENDING |
| `step_009` | For every factor/budget satisfying `step_008`'s strict subcritical inequality, produce a finite hard prior (\nu_i) on realizable ((c_i,D_i)) such that every eligible improper factor learner has prior-average expected risk (>1/8); define (\nu_i) for every remaining factor as a point mass on a fixed realizable pair. | `step_008` | Derived ALMM wrapper from `step_008`; primitive factor nonconstancy/nonemptiness | Remove algorithm dependence of each hard task while retaining unrestricted outputs and exact DP constraints, and define the later product experiment on low factors. | Finite restriction to ALMM's embedded threshold game; finite-dimensional DP polytope; von Neumann/linear-programming minimax; fixed realizable baseline pairs. | Legal all-factor prior family with hardness exactly where claimed. | Lower objective: no rate loss; exact factor budget and expected risk on hard factors; finite probability mode. | PENDING |
| `step_010` | Fix (R_0=\lceil32/a_{\mathrm L}\rceil) and a universal candidate constant (c); under existence of a global learner and (n<cM), prove low-factor mass (w_L<1/128) and (m_{n,i}<a_{\mathrm L}r_i) for every (i) with (r_i\ge R_0). | `step_007`, `step_008` | Primitive definitions in `assump:canonical-product`; derived lower constants from `step_007`, `step_008` | Simultaneously dominate the (+2) log-star shift, ceiling one, floor eight, and arbitrarily many low factors. | Explicit arithmetic with (s_i\le r_i+2), (n\ge a_{\mathrm{VC}}k), and chosen (c\le\min\{a_{\mathrm L}/64,a_{\mathrm{VC}}/[128(R_0+2)]\}). | High-factor membership/subcriticality certificate. | Lower objective: explicit (n/M) threshold; deterministic candidate-wise bridge; universal constants. | PENDING |
| `step_011` | For every (p\in[0,1]), prove (\Pr[\mathrm{Bin}(n,p)>\max\{8,\lceil4np\rceil\}]\le\eta_0=e^7(2/9)^9<3/2048). | None | Primitive candidate definitions; no generated assumption | Obtain enough uniform numerical slack at the transition (np=2), including integer rounding. | Optimized binomial Chernoff bound in the regimes (np\le2) and (np\ge2); monotonic exponent calculation. | Uniform overflow certificate. | Lower objective: explicit numerical-error probability, fixed (n,p), no union conversion. | PENDING |
| `step_012` | For every high factor, construct the hidden-factor learner (B_i); prove one-use replacement adjacency, exact ((\varepsilon,\delta))-DP, eligibility for the ALMM prior, joint realizability from full Cartesian targets, and equality with the ideal i.i.d. global experiment outside overflow. | `step_009`, `step_010`, `step_011` | Primitive: `assump:canonical-product`, `assump:global-privacy-range`, `assump:candidate-delta-budget`; derived priors/hard set/overflow | Preserve exact replacement privacy when a factor input row is placed into a random global slot, without group privacy, and handle overflow without reading an extra row. | Sequential one-use embedding; constant overflow branch; privacy postprocessing/monotonicity; same-randomness ideal coupling. | Eligible (B_i), one-use privacy certificate, same-target coupling. | Lower objective: exact (m_{n,i},\varepsilon,\delta), fixed candidate, expected-risk coupling residual (\eta_0). | PENDING |
| `step_013` | Use factor minimax and coupling to prove (\mathbb E R_D(A(S),c)>(1-w_L)(1/8-\eta_0)) in the ideal independent-prior block mixture (D=\sum_i\pi_iD_i). | `step_009`, `step_010`, `step_011`, `step_012` | Derived priors, hard-mass certificate, overflow, and simulations; primitive full product | Sum factor lower bounds despite arbitrary dependence among A's block outputs and without selecting a factor after observing A. | Common ideal experiment; exact risk identity; linearity/Tonelli over finite factors; bounded-loss coupling. | Weighted global expected-risk lower certificate. | Lower objective: exact (\pi_i), expectation mode, explicit defects (w_L,\eta_0), fixed candidate. | PENDING |
| `step_014` | Compare the lower certificate with the universal PAC expectation ceiling (31/256), verify the exact rational inequality, conclude (n\ge c_{\mathrm{low}}M), and extract the deterministic target/distribution PAC-failure witness. | `step_007`, `step_010`, `step_013` | Primitive: full `assump:candidate-delta-budget`; derived certificates | Close constants strictly and preserve the candidate quantifier rather than asserting a uniform delta schedule. | PAC-to-expectation inequality; explicit calculation (127/128(1/8-3/2048)>31/256); logical negation of uniform PAC utility. | Candidate-wise lower theorem. | Lower objective: (n\ge c_{\mathrm{low}}M), PAC impossibility, fixed candidate, exact risk/privacy modes, universal constant. | PENDING |
| `step_015` | Assemble `step_003`, `step_005`, `step_006`, and `step_014` into the exact two-sided theorem; infer the sandwich at (n_*=\mathrm{SC}_{\varepsilon,\delta}(C)) only if the candidate condition holds there; verify (k=1), zero-mass, padded, small-(n), infinite-cardinality, improper-output, and cross-block replacement boundaries. | `step_003`, `step_005`, `step_006`, `step_014` | Primitive: all four setting assumptions, with `assump:candidate-delta-budget` used only for the lower candidate | Prevent scope leakage between arbitrary-(\delta) upper and candidate-wise lower clauses. | Direct theorem assembly and definition of sample complexity. | Exact formalized goal. | Both named objectives; no lost exposed variable, changed probability/horizon/norm mode, or hidden factor-cardinality dependence. | PENDING |

## Dependency Notes

The graph is acyclic because every dependency points to a lower-numbered step. The upper branch is

\[
\texttt{step\_001}\to\texttt{step\_002}\to
\{\texttt{step\_003},\texttt{step\_004}\to\texttt{step\_005},\texttt{step\_006}\}
\to\texttt{step\_015}.
\]

The lower branch first creates two independent mechanism sources,

\[
\texttt{step\_001}\to\texttt{step\_007},
\qquad
\texttt{step\_001}\to\texttt{step\_008}\to\texttt{step\_009},
\]

then combines them through `step_010`. The independent overflow calculation `step_011` and the already-produced priors/hard-set certificate feed `step_012`; `step_013` consumes only outputs of `step_009`--`step_012`; `step_014` closes the candidate contradiction; and `step_015` assembles the clauses. No factor prior, occupancy event, hard-set membership, overflow certificate, privacy coupling, or global lower event is consumed before its producer.

The theorem can be assembled as follows. `step_003` gives pointwise global privacy for all padded inputs. `step_005` gives the exact high-probability PAC utility for (n\ge C_{\mathrm{up}}Q), and `step_006` supplies its public structural rate. Independently, `step_014` says that any admissible lower candidate carrying the same PAC guarantee must have (n\ge c_{\mathrm{low}}M). The last step performs only logical assembly and the explicitly conditional (n_*) specialization; it introduces no new lemma.

## Blockers

None. The two source-convention risks found during preflight are assigned to explicit steps rather than hidden: Yan's (d=1)/(TD+1) quota mapping is in `step_002`, and the expected-risk ALMM interface is derived from exact labeled source-proof components in `step_008` before minimax or direct-sum work.

## Self-Audit

- Step count: 15 stable steps (`step_001` through `step_015`).
- Blockers: None.
- Exact-goal check: both theorem clauses, the candidate delta quantifier, the (n_*) specialization, the fixed PAC constants, and the public quota rate match `setting.md`.
- Source check: Yan is identified as arXiv:2505.06581v2 with exact source labels; ALMM is identified as arXiv:1806.00949 / STOC 2019 with exact labels. No theorem number was invented for Yan's unnumbered introductory theorem.
- Assumption-provenance check: all structural identities, good events, hard priors, memberships, overflow events, and couplings are derived outputs with earlier producers. No generated fact is promoted to a theorem-facing assumption.
- Mechanism check: every theorem-critical source, positive term, opposing defect, dominance relation, boundary regime, producer-consumer path, and locality classification is recorded above.
- Export check: every theorem-facing intermediate has raw controls, defect split, exact-target transfer, threshold source, and consumers in `## Exported Interface Feasibility`.
- Scope check: all sums are finite weighted algebraic sums; no all-time, asymptotic, recursive, or uniform-in-candidate upgrade is used. The lower delta condition is checked only at the actual candidate.
- Rate check: ceilings, fixed logarithmic constants, hidden-constant permissions, confidence conversion, overflow loss, and the final rational contradiction are assigned to explicit steps.
- Boundary check: zero-mass blocks, (k=1), (d_i=1), small (n), padded/nonrealizable inputs, cross-block replacement, infinite factor cardinality, and arbitrary improper outputs are all covered.
- Dependency check: every dependency is earlier-numbered; the graph has no cycle and no future step is used as a mechanism source.
