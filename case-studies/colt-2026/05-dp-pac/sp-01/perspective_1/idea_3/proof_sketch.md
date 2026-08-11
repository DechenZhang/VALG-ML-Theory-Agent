# Proof Sketch

## Formalized Setting

Work in the exact setting of `perspective_1/idea_3/setting.md` (binding SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`). Thus \(C\) is the full disjoint Cartesian product of finitely many nonconstant VC-one, finite-Littlestone factors, every evaluation quotient \(Q_i\) is finite or countable discrete with measurable quotient map \(\kappa_i\), datasets have fixed size and replacement adjacency, and the lower learner is unrestricted, possibly improper, and required to expose measurable finite-evaluation cylinders. The only primitive conditions are:

- `assump:canonical-product`;
- `assump:vc-one-factors`;
- `assump:countably-coded-evaluation`;
- `assump:global-privacy-range`; and
- for the candidate-wise lower clause only, `assump:candidate-delta-budget`.

All version-space, core, kernel, event, occupancy, hard-prior, simulator, and coupling facts below are derived outputs, not assumptions. Write
\[
r_i:=\log_2^* d_i,
\qquad s_i=1+\log_2^*(d_i+1),
\qquad M:=M_{\oplus}(C)=\sum_i s_i,
\qquad \pi_i:=\omega_i=\frac{s_i}{M}.
\]
The elementary comparison \(s_i\le r_i+2\) will be proved rather than assumed.

## Formalized Goal

Prove the exact conditional two-sided theorem in `setting.md`. For universal \(C_{\rm up},C_{\rm quota}\ge1\), the specified quotient-first routed rule must be a measurable \((\varepsilon,\delta)\)-DP Markov kernel on all labeled inputs and must satisfy the \((1/16,1/16)\) realizable PAC guarantee for every target and arbitrary distribution whenever \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\), together with
\[
Q_{\oplus}\le C_{\rm quota}\frac{M}{\varepsilon}
\log^2\!\frac{eM}{\varepsilon\delta}.
\]
For every fixed candidate \(n\) satisfying `assump:candidate-delta-budget`, every unrestricted measurable \((\varepsilon,\delta)\)-DP PAC learner must satisfy \(n\ge c_{\rm low}M\) for a universal \(c_{\rm low}>0\). The conditional sample-complexity sandwich is asserted only if the candidate condition holds at the actual \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\). At \(k=1\), the upper and lower statements must remain the measurable quotient-first Yan and unrestricted VC/ALMM baselines, respectively.

## Sketch Identity

- Sketch attempt: 1 (initial sketch; `SEARCH_MODE=OPEN`).

## Proof Roadmap

The selected framework is **Countable quotient-first Yan learning with an ALMM expected-risk direct sum**, documented in `perspective_1/idea_3/technical_survey.md`. Its source provenance is Yan, arXiv:2505.06581v2; Alon--Livni--Malliaris--Moran (ALMM), arXiv:1806.00949v3; and only for the exact choosing/resampling interfaces, Bun--Nissim--Stemmer--Vadhan (BNSV), arXiv:1504.07553. None is used as blanket authority.

The proof has five blocks. First, quotient pullback is shown to preserve the factor class, dimensions, product freedom, and exact risk. Since each fixed-length quotient sample space is countable discrete, the fully totalized Yan construction becomes a genuine kernel on the standard-Borel output space; separate current-notation wrappers prove all-input replacement privacy, the improper-core marginal, and fixed-confidence utility at exactly \(q_i\). Second, measurable routing and a support-two adjacency certificate give global privacy, while a weighted shortage/bad-mass calculation gives global utility without balance and without union bounding over factors. Third, direct ceiling and logarithm inequalities give the public quota rate. Fourth, an independent global VC certificate and the ALMM source-proof expected-risk interface produce eligible high-complexity factors and learner-independent finite hard priors. Fifth, a one-use hidden-factor learner, a uniform binomial overflow bound, and one common product-prior experiment tensorize the factor floors in exact global risk and yield the candidate-wise PAC contradiction.

## Rate Objectives

### Upper kernel and PAC objective

- Objective type: fixed-sample, structural-parameter explicit, confidence-explicit, and privacy-parameter explicit.
- Exposed variables: \(k,(d_i,s_i,q_i,Q_i)_i,M,Q_{\oplus},n,\varepsilon,\delta\).
- Hidden constants may depend on: only the fixed numerical values \(\alpha_0,\beta_0,\alpha_{\rm fac},\beta_{\rm fac}\), the fixed privacy split, the logarithm conventions, and universal source constants including \(K_Y\).
- Hidden constants may not depend on: \(X,\Sigma,C,k,d_i,|C_i|,|Q_i|,D,\rho_i,n,\varepsilon,\delta\).
- Fixed quantities: the displayed PAC constants, factor privacy split, natural/base-two logarithm conventions, and universal source calibrations.
- Probability mode: privacy is pointwise for every adjacent dataset and measurable output event; utility is high probability over the iid sample and learner randomness.
- Horizon mode: one fixed sample size \(n\); no all-time, asymptotic, or horizon-uniform upgrade.
- Norm mode: exact distributional binary risk \(R_D\).
- Required bridge or simplification obligations: prove the factor threshold is at most \(q_i\); prove \(\mathbb E W_{\rm bad}<3/1024\) when \(n\ge C_{\rm up}Q_{\oplus}\); and prove the displayed \(Q_{\oplus}\) inequality including ceiling absorption.
- Baseline invariance obligations: at \(k=1\), routing is a prefix of the same measurable quotient-first Yan factor kernel, no shortage occurs at the theorem threshold, and the quota order is unchanged.

### Candidate-wise lower objective

- Objective type: fixed-candidate structural lower bound with candidate-wise privacy-parameter admissibility.
- Exposed variables: \(k,(d_i,r_i,s_i,m_{n,i})_i,M,n,\varepsilon,\delta\), the weights \(\pi_i\), and universal ALMM constants \(a_{\rm L},c_\delta\).
- Hidden constants may depend on: only fixed PAC constants, logarithm conventions, and universal source constants.
- Hidden constants may not depend on: any class, factor, quotient, learner, distribution, candidate, or privacy parameter.
- Fixed quantities: the candidate \(n\) throughout the argument and the PAC threshold/confidence values.
- Probability mode: a worst-case impossibility statement; intermediate hard priors are finite averages and are converted to one deterministic target/distribution witness.
- Horizon mode: candidate-wise at one fixed \(n\); no uniform-in-candidate or asymptotic statement.
- Norm mode: exact factor and global distributional binary risk.
- Required bridge or simplification obligations: discharge the ALMM delta condition separately at every exact \(m_{n,i}\); bound low-factor mass and overflow at the exact theorem scale; and show
  \[
  \frac{127}{128}\left(\frac18-\frac3{2048}\right)
  =\frac{32131}{262144}>\frac{31}{256}.
  \]
- Baseline invariance obligations: at \(k=1\), the high-complexity branch is the unrestricted one-factor ALMM reduction, the bounded-complexity additive term is supplied by the ordinary VC certificate, and overflow is exactly zero because \(m_{n,1}\ge4n\).

### Conditional characterization objective

- Objective type: fixed-candidate specialization bridge.
- Exposed variables: all variables above and \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\).
- Hidden constants may depend on / may not depend on: exactly as above.
- Fixed quantities: \(n_*\) after it is defined.
- Probability mode: combines the upper PAC theorem and lower impossibility theorem without changing either mode.
- Horizon mode: a single substitution at \(n_*\), conditional on checking `assump:candidate-delta-budget` there.
- Norm mode: exact distributional binary risk.
- Required bridge or simplification obligations: no lower statement is made if the candidate condition fails at \(n_*\); the first delta conjunct remains in the theorem even if the factor proof uses only the factor-budget conjunct.
- Baseline invariance obligations: both one-factor clauses remain the original interfaces, not finite-support-only, proper, set-theoretic, expectation-only, or stopped surrogates.

## Assumption Provenance Objectives

- **Quotient/product certificate.** `step_001` derives the class bijections, dimension identities, standard-Borel output convention, exact risk pullback, and product identities from `assump:canonical-product`, `assump:vc-one-factors`, and `assump:countably-coded-evaluation`.
- **Factor kernel certificate.** `step_002` derives totality, measurability, all-input factor privacy, and unpadded utility at quota \(q_i\). No version-space, core, selector, or kernel fact is theorem-facing before this step.
- **Global kernel certificate.** `step_003` derives measurable routing and the at-most-two-affected-factor composition interface from `step_002`; it is not an assumption about routed datasets.
- **Upper good-event controls.** `step_004` produces \(W_{\rm short}\)'s expectation bound. `step_005` produces the measurable events \(\mathsf B_i\), \(W_{\rm bad}\), and the exact global risk/high-probability bound.
- **Lower factor source and priors.** `step_008` derives the ALMM expected-risk wrapper. `step_009` proves which factors are eligible at the fixed candidate. `step_010` then produces finite hard priors; none is selected after seeing a simulated learner.
- **Coupling controls.** `step_011` produces the overflow certificate. `step_012` produces the total one-use hidden-factor learner and exact ideal/truncated coupling. `step_013` produces the common product-prior risk lower bound.
- **Final witnesses.** `step_014` converts the averaged strict gap into one deterministic PAC-failure witness. `step_015` only assembles outputs already produced on their exact scopes.

## Mechanism-Source And Boundary Stress

### `step_001`: quotient and product structure

- Step ID: `step_001`.
- Claim class: exact structural equalities, dimension preservation, output/risk measurability, and product lower sources.
- Theorem role: supplies the common object convention used by both clauses.
- Mechanism source: primitive-source derivation from `assump:canonical-product`, `assump:vc-one-factors`, and `assump:countably-coded-evaluation`.
- Source-to-claim adequacy: The exact branch convention is binary evaluation on a disjoint whole-domain partition. Pullback \(\bar c_i\mapsto\bar c_i\circ\kappa_i\) is bijective by the definition of \(\equiv_i\), and it preserves every finite label vector and every labeled mistake tree. Therefore \(\operatorname{VC}(\bar C_i)=1\) and \(\operatorname{LD}(\bar C_i)=d_i\). Full Cartesian freedom gives \(\operatorname{VC}(C)=k\), concatenated factor trees give \(\operatorname{LD}(C)\ge\sum_i d_i\), and the factorwise Standard Optimal Algorithm/product prediction argument gives the reverse inequality. Finite products multiply cardinalities. No ordering, cardinality, or measurable-selector source is used.
- Residual-to-target adequacy: The produced object is the quotient tuple \(\bar h\), the consumed target is the decoded raw-space hypothesis \(h_{\bar h}\), and the metric is \(R_D\). The displayed countable-cell decomposition in `setting.md` gives exact equality, with zero residual. The risk is a monotone limit of finite sums of evaluation-cylinder indicators and is therefore \(\mathscr H^\oplus\)-measurable.
- Key positive/control term or structural source: full independent factor label freedom and the evaluation-pattern bijection.
- Opposing defect terms: possible quotient collisions, repeated tree labels, infinite factor cardinality, and arbitrary block masses.
- Closure/dominance/absorption relation: quotient collisions identify only points with identical labels for all concepts, so they remove no realizable label pattern; all dimension and risk relations are equalities.
- Accumulation behavior / scope compatibility: finite exact sums over \(k\); no stochastic or repeated-scope defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: primitive assumptions produce the quotient/product certificate before `step_002`, `step_006`, `step_007`, and every lower consumer.
- Entry-state / first-update stress result: N/A because this is a static finite-product derivation, not a generated trajectory.
- Baseline conclusion preserved: at \(k=1\), every quotient and dimension identity reduces to the one-factor identity.
- Producer-consumer provenance: primitive assumptions -> `step_001` -> `step_002`, `step_006`, `step_007`, `step_008`, `step_009`, and `step_015`.
- Null or boundary regime tested: \(k=1\), \(d_i=1\), finite or countably infinite \(Q_i\), repeated equivalent raw points, zero block mass, and infinite \(C_i\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without full-product surjectivity, the additive identities and lower tensorization can fail; the primitive assumption excludes that regime.
- Repair route if source is unsupported: N/A; the source is the binding primitive contract.

### `step_002`: measurable totalized Yan factor interface

- Step ID: `step_002`.
- Claim class: generated measurable kernel, all-input replacement privacy, fixed-confidence PAC utility, and positive endpoint/rate specialization.
- Theorem role: sole factor producer for the routed upper theorem and the one-factor upper baseline.
- Mechanism source: Yan, arXiv:2505.06581v2, using `thm:learn vc`, the audited threshold-dimension comparison, `thm:private median`, `def: k-bounded`, `lem:choosing mechanism`, the transform/tree material, `alg:improperlearner`, and the order/final-comparison lemmas; BNSV, arXiv:1504.07553, `alg:choosing`, `lem:CMprivacy`, and `lem:CMutility` for the exact replacement histogram proof. The branch supplies direct countable-discrete totalization, improper-core closure, and confidence calibration. Yan's printed privacy theorem, unlabeled block-good claim, and raw final confidence corollary are explicitly not consumed as these wrapper conclusions.
- Source-to-claim adequacy: Current objects are \((Q_i,\bar C_i,\bar f_i^\circ)\), with fixed-size sequence replacement and output \(\mathcal H_i\). `step_001` discharges \(\operatorname{VC}(\bar C_i)=1\), \(\operatorname{LD}(\bar C_i)=d_i<\infty\), arbitrary quotient distributions, and exact risk pullback. Yan's reference transform preserves Littlestone dimension and has threshold dimension at most \(2^{d_i+1}\); the algorithm uses the positive endpoint \(TD+1\), so \(d_i=1\) is covered and its iterated logarithms are dominated by \(s_i\). At a fixed layer, one summary per block makes the choosing score a finite-positive-support histogram satisfying \(q'(p)-q(p)=\mathbf1\{p=v\}-\mathbf1\{p=u\}\); repeating BNSV `lem:CMprivacy` handles replacement, empty support, and sentinel transitions. For utility, the class \(\mathcal K_i\) of nonempty-core indicators plus zero has VC dimension at most one: comparable pairs cannot realize \((1,0)\), and incomparable pairs cannot realize \((1,1)\). Yan `thm:learn vc` then gives a fixed marginal bad-core bound. Hoeffding controls the number of bad comparison blocks, while the two private-median sides and choosing slack leave one good opposite-side witness. This is the source-faithful fixed-confidence route that avoids the raw \((t+2)\beta_{\rm raw}\) substitution.
- Residual-to-target adequacy: Yan works with the reference-transformed quotient class. XOR by \(\bar f_i^\circ\) and pullback by \(\kappa_i\) preserve the pointwise error indicator exactly, so the produced quotient hypothesis and consumed raw factor target have identical \(0\)-\(1\) risk. There is no approximation residual. Padding is not transferred into utility: the utility conclusion is consumed only on \(J_i\ge q_i\).
- Key positive/control term or structural source: finite VC-one tree depth, two-sided private-median mass, a positive-support bounded-growth choosing score, and at least one good comparison block after the bad-count bound.
- Opposing defect terms: inconsistent or empty version spaces/cores, empty choosing support, replacement changing a leaving and entering summary, private-median/choosing failures, bad comparison blocks, the \(TD+1\) endpoint, and quota ceilings.
- Closure/dominance/absorption relation: totalize all branches with the pre-data root/reference/enumeration; calibrate internal privacy so the two private components compose to \((\varepsilon_{\rm fac},\delta_{\rm fac})\); choose fixed marginal bad probability and block count so median failure + choosing failure + Hoeffding failure is at most \(\beta_{\rm fac}\); choose universal \(K_Y\) so the complete source/internal sample requirement is at most \(q_i\).
- Accumulation behavior / scope compatibility: one finite factor invocation. Privacy composes only the finitely many internal calls already charged to \((\varepsilon_{\rm fac},\delta_{\rm fac})\); utility counts a finite set of independent blocks. There is no all-time or cross-factor accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` and the cited internal tools precede the totalization; countable discreteness proves measurability independently of factor utility. The resulting kernel is then consumed by `step_003` and `step_005`.
- Entry-state / first-update stress result: On an inconsistent input, empty version space/core, root layer, or empty positive score support, the mechanism reaches a predeclared sentinel/fallback law before output; because the whole input space is countable discrete, that branch is measurable. The same branch is included in the replacement likelihood-ratio proof. On a realizable unpadded input, the version space is nonempty and the source comparison mechanism is active before utility is consumed.
- Baseline conclusion preserved: for \(k=1\), this is exactly the measurable quotient-first Yan factor learner at the displayed quota, with only fixed privacy allocation and universal constant calibration.
- Producer-consumer provenance: `step_001` + audited source components + direct wrappers -> `step_002` -> `step_003`, `step_005`, and `step_015`.
- Null or boundary regime tested: \(Q_i\) finite or countably infinite, \(d_i=1\), inconsistent labels, empty version space/core/support, duplicate quotient records, constant transformed cells, \(\delta\uparrow1\), and padded inputs used for privacy only.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without countable discreteness, the version-space/root selector may be nonmeasurable; without two-sided median mass or the core marginal, fixed-confidence utility need not follow. Both sources are explicitly present.
- Repair route if source is unsupported: a missing internal wrapper would be a `sketch/interface defect`; no such missing source is presently identified.

### `step_003`: routed global privacy and kernel legality

- Step ID: `step_003`.
- Claim class: measurable routing/output and exact replacement-DP composition.
- Theorem role: exports the upper theorem's global kernel and privacy clause.
- Mechanism source: direct current-notation derivation from measurable quotient routing, permutation symmetrization, `step_002`, and standard basic composition/postprocessing for Markov kernels.
- Source-to-claim adequacy: The branch convention is fixed-size replacement. Replacing one global row changes no factor prefix, one same-factor multiset by one replacement, or two cross-factor multisets by one replacement each; shifts in ordered prefixes are removed by permutation symmetrization and a coupling of the common multiset elements. The factor source is exactly fixed-size one-entry replacement on arbitrary labeled inputs. Finite products of the standard-Borel \(\mathcal H_i\) are standard Borel, so standard kernel composition applies to every measurable tuple event.
- Residual-to-target adequacy: The produced tuple kernel is consumed as the decoded raw hypothesis. Decoding is deterministic measurable postprocessing and `step_001` gives exact risk equality; privacy has zero transfer residual.
- Key positive/control term or structural source: the affected-factor set has cardinality at most two.
- Opposing defect terms: same-block versus cross-block replacement, prefix shifts, padding transitions, selected versus unselected replaced rows, and tuple events depending jointly on outputs.
- Closure/dominance/absorption relation: at most two factor privacy costs sum to \((\varepsilon/2+\varepsilon/2,\delta/2+\delta/2)=(\varepsilon,\delta)\); all unchanged factor outputs cancel/couple identically.
- Accumulation behavior / scope compatibility: finite support-two composition independent of \(k\); no repeated or horizon accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` produces each factor kernel before routing composition; routing is derived directly from primitive measurable maps and does not assume global privacy.
- Entry-state / first-update stress result: For the first cross-block replacement, the leaving factor receives one record-to-record or record-to-padding replacement and the entering factor receives the reverse; both factor mechanisms are already private on these arbitrary inputs before the tuple event is queried.
- Baseline conclusion preserved: at \(k=1\), only one factor can change, so the mechanism is actually \((\varepsilon/2,\delta/2)\)-DP and hence satisfies the advertised \((\varepsilon,\delta)\) baseline.
- Producer-consumer provenance: `step_002` -> `step_003` -> `step_015`.
- Null or boundary regime tested: same factor, two different factors, prefix full/short, replaced row outside the prefix, all labels nonrealizable, and \(k=1\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: if a row could affect three factor inputs or one factor by group distance greater than one, the advertised composition would fail; the deterministic routing certificate excludes both.
- Repair route if source is unsupported: N/A; all interfaces are present.

### `step_004`: weighted occupancy without balance

- Step ID: `step_004`.
- Claim class: generated weighted shortage-mass expectation bound.
- Theorem role: charges padding in exact global risk without requiring every factor quota to be met.
- Mechanism source: direct binomial light/heavy split and Chernoff lower-tail bound under iid mixture sampling.
- Source-to-claim adequacy: For each factor \(J_i\sim\operatorname{Bin}(n,\rho_i)\), with no independence across counts required. Split factors by \(n\rho_i<128q_i\). The light factors have total mass at most \(128Q_{\oplus}/n\). For a heavy factor, \(q_i\le n\rho_i/128\) and \(n\rho_i\ge128q_i\ge128\), so the standard lower-tail exponent is stronger than \(e^{-16}\). Weighting and summing gives at most \(e^{-16}\sum_i\rho_i\le e^{-16}\). No source-rate constant beyond the integer fact \(q_i\ge1\) is needed.
- Residual-to-target adequacy: \(W_{\rm short}=\sum_i\rho_i\mathbf1\{J_i<q_i\}\) is exactly the risk weight of factors on which padding may invalidate utility; no surrogate norm is used.
- Key positive/control term or structural source: small-mass factors have a finite total mass budget, while large-mass factors have exponentially small shortage probability.
- Opposing defect terms: arbitrarily many factors, zero or tiny masses, severe imbalance, and dependence among multinomial counts.
- Closure/dominance/absorption relation: \(\mathbb E W_{\rm short}\le128Q_{\oplus}/n+e^{-16}\); no factorwise confidence union is taken.
- Accumulation behavior / scope compatibility: a finite nonnegative weighted sum. Each shortage indicator is charged once by its own risk weight.
- Obligation locality classification: `step-local`.
- Noncircular closure status: primitive iid counts -> `step_004`; the result is produced before `step_005` consumes it.
- Entry-state / first-update stress result: N/A because this is a one-shot fixed-sample count, not a recursive process.
- Baseline conclusion preserved: at \(k=1\) and \(n\ge q_1\), \(J_1=n\), so \(W_{\rm short}=0\) exactly; the generic expectation bound is not used to weaken that conclusion.
- Producer-consumer provenance: iid sample + quotas -> `step_004` -> `step_005`.
- Null or boundary regime tested: \(\rho_i=0\), arbitrarily small positive mass, one dominant block, many light blocks, and \(k=1\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: a union bound would introduce \(k\), and demanding all quotas would fail for tiny masses; the weighted split is the required source.
- Repair route if source is unsupported: N/A; the direct bound is target-compatible.

### `step_005`: weighted bad mass and global PAC closure

- Step ID: `step_005`.
- Claim class: generated measurable bad-factor mass and high-probability global utility.
- Theorem role: proves the exact upper PAC event for arbitrary \(D\).
- Mechanism source: `step_002` factor utility, `step_004` weighted occupancy, conditional iid routing, exact risk decomposition, and Markov's inequality.
- Source-to-claim adequacy: Conditional on the block positions and \(J_i\ge q_i\), the first \(q_i\) quotient records are iid from \((\bar D_i)_{\bar c_i}\); thus `step_002` gives conditional failure probability at most \(\beta_{\rm fac}\). Measurability follows from the countable quotient kernel and the measurable risk map in `step_001`. Consequently
  \[
  \mathbb E W_{\rm bad}
  \le \mathbb E W_{\rm short}+\beta_{\rm fac}\sum_i\rho_i
  \le \frac{128Q_{\oplus}}n+e^{-16}+\frac1{4096}.
  \]
- Residual-to-target adequacy: On \(\mathsf B_i^c\), exact factor risk is at most \(1/64\); on \(\mathsf B_i\), it is at most one. Hence, in the exact global metric,
  \(R_D\le1/64+W_{\rm bad}\). Every padding and factor-utility defect is included exactly once.
- Key positive/control term or structural source: risk is a convex weighted sum and the target threshold leaves slack \(1/16-1/64=3/64\).
- Opposing defect terms: shortages, factor learner failures, arbitrary output dependence across factors, and unbalanced \(\rho_i\).
- Closure/dominance/absorption relation: choose universal \(C_{\rm up}\) so \(n\ge C_{\rm up}Q_{\oplus}\) implies \(\mathbb E W_{\rm bad}<3/1024\); Markov at \(3/64\) gives failure probability below \(1/16\).
- Accumulation behavior / scope compatibility: finite nonnegative weighted sum with no union bound; each local defect is charged once and Markov is applied once globally.
- Obligation locality classification: `step-local`.
- Noncircular closure status: factor utility and occupancy are independently produced by `step_002` and `step_004`; `step_005` then exports the PAC event to `step_015`.
- Entry-state / first-update stress result: In the all-good state \(W_{\rm bad}=0\), the conclusion is already stronger than needed. A zero-mass block is defined to have \(\mathsf B_i=\varnothing\), so no undefined conditional distribution is consumed.
- Baseline conclusion preserved: at \(k=1\) and \(n\ge C_{\rm up}q_1\), there is no shortage and the conclusion is the factor utility guarantee (with conservative constants), not merely a weighted surrogate.
- Producer-consumer provenance: `step_002` + `step_004` -> `step_005` -> `step_015`.
- Null or boundary regime tested: \(\rho_i=0\), all mass on one factor, infinitely supported \(D_i\), correlated factor outputs, and equality at the global risk threshold.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without factor utility or the weighted shortage source, \(W_{\rm bad}\) can have uncontrolled mass; both producers precede this step.
- Repair route if source is unsupported: N/A.

### `step_006`: ceiling and logarithm quota bridge

- Step ID: `step_006`.
- Claim class: explicit-rate specialization and ceiling absorption.
- Theorem role: converts the technical factor quotas into the public \(M_{\oplus}\) upper rate.
- Mechanism source: direct arithmetic from the exact definitions and `step_001`'s \(d_i\ge1\), hence \(s_i\ge2\) and \(k\le M/2\).
- Source-to-claim adequacy: Monotonicity gives
  \[
  Q_{\oplus}
  \le \frac{K_Y}{\varepsilon}\sum_i s_i
       \log^2\!\frac{es_i}{\varepsilon\delta}+k
  \le \frac{K_YM}{\varepsilon}
       \log^2\!\frac{eM}{\varepsilon\delta}+k.
  \]
  Under \(M\ge2\), \(\varepsilon\le1/10\), and \(\delta<1\), the displayed main term dominates \(M\) by a universal factor, so \(k\le M/2\) is absorbed into it. This uses natural logarithms exactly as in `setting.md`; no \(|C_i|\) or \(|Q_i|\) term enters.
- Residual-to-target adequacy: The produced quantity is exactly \(Q_{\oplus}=\sum_iq_i\), the quantity consumed by the upper sample threshold. The only residual is the explicit ceiling sum \(k\), which is dominated at the same rate scale.
- Key positive/control term or structural source: \(\sum_i s_i=M\), monotone logarithms, and \(M\ge2k\).
- Opposing defect terms: one ceiling per factor and heterogeneous \(s_i\).
- Closure/dominance/absorption relation: the two displayed inequalities plus \(k\le M/2\le c(M/\varepsilon)\log^2(eM/(\varepsilon\delta))\) define a universal \(C_{\rm quota}\).
- Accumulation behavior / scope compatibility: finite deterministic nonnegative sum; ceiling errors add to exactly \(k\) and are absorbed once.
- Obligation locality classification: `step-local`.
- Noncircular closure status: exact quotas and `step_001` produce every raw term before the public bridge is consumed in `step_015`.
- Entry-state / first-update stress result: N/A; deterministic fixed-parameter specialization.
- Baseline conclusion preserved: for \(k=1\), the bridge is the same one-factor quota bound and does not insert a cardinality term.
- Producer-consumer provenance: definitions + `step_001` -> `step_006` -> `step_015`.
- Null or boundary regime tested: \(k=1\), all \(d_i=1\), \(\delta\uparrow1\), and highly heterogeneous \(s_i\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: if \(s_i\) were not bounded by \(M\) or the ceiling sum were not dominated, hidden \(k\)-dependence would remain; both controls are exact.
- Repair route if source is unsupported: N/A.

### `step_007`: global additive VC lower certificate

- Step ID: `step_007`.
- Claim class: unrestricted lower bound and positive factor-count source.
- Theorem role: pays the additive constant in every \(s_i\) and forces the low-complexity factor mass to be small in the later candidate contradiction.
- Mechanism source: direct random-target/unseen-label argument on one shattered point from each factor, using `step_001`.
- Source-to-claim adequacy: Nonconstancy and VC one provide a point in each block on which both labels occur; full-product freedom realizes all \(2^k\) label vectors. Under the uniform distribution on these points and a uniform random target labeling, every unseen point has an independent fair label even for randomized, improper, nonprivate outputs. If \(n<k/2\), the expected unseen mass, hence expected risk, is at least \(\frac12(1-1/k)^n>1/4\) after handling the small-\(k\) boundary directly. A \((1/16,1/16)\) PAC guarantee implies expected risk at most \(31/256\), a contradiction. Thus a universal \(a_{\rm VC}>0\) satisfies \(n\ge a_{\rm VC}k\).
- Residual-to-target adequacy: The hard distribution and target belong to the exact global class and risk metric. Improper outputs are evaluated only on the same witness points, so there is no representation residual.
- Key positive/control term or structural source: one independent unseen fair target bit per factor.
- Opposing defect terms: sample collisions, arbitrary output coupling, learner randomness, and small \(k\).
- Closure/dominance/absorption relation: collisions only increase unseen mass; finite averaging fixes one deterministic target after the expectation lower bound.
- Accumulation behavior / scope compatibility: one finite expectation over \(k\) witness points; no privacy or repeated-scope accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` produces the shattered witness before `step_007`; the certificate is consumed by `step_009` and `step_014`.
- Entry-state / first-update stress result: N/A; one-shot iid sample.
- Baseline conclusion preserved: at \(k=1\), this supplies the constant one-factor lower baseline (or is vacuous only where the integer condition already implies it).
- Producer-consumer provenance: `step_001` -> `step_007` -> `step_009`, `step_014`.
- Null or boundary regime tested: \(k=1,2\), repeated observations, arbitrary improper hypotheses, and privacy absent.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without full-product independent labels, additive factor hardness need not hold; `assump:canonical-product` supplies it.
- Repair route if source is unsupported: N/A.

### `step_008`: ALMM unrestricted expected-risk factor interface

- Step ID: `step_008`.
- Claim class: structural iterated-log lower source for every unrestricted factor learner.
- Theorem role: supplies a strict expected-risk floor on high-\(r_i\) factors at their exact candidate budgets.
- Mechanism source: ALMM, arXiv:1806.00949v3, source path `lem:bun` -> `lem:reduction` -> `thm:main` together with `thm:shelah` and the qualitative `thm:ADPimpliesLD`; BNSV Lemma 5.9 supplies the exact with-replacement resampling privacy calculation. The printed ALMM PAC corollary is a known non-output for the expected-risk wrapper.
- Source-to-claim adequacy: The wrapper conclusion is: for universal \(a_{\rm L},c_\delta>0\), any integer \(m\ge8\) and any unrestricted replacement-\((0.1,\delta)\)-DP learner whose expected distributional risk is at most \(1/8\) for every realizable factor task must satisfy \(m\ge a_{\rm L}\log_2^*d_i\), provided \(\delta\le c_\delta/(m^2\log(m+1))\). To map current objects, restrict outputs to labels on the finite Shelah witness; finite-evaluation cylinders make this a measurable postprocessing and preserve arbitrary improper outputs. For a fixed realizable database of the least even size \(N\ge9m\), sample \(m\) rows with replacement and run the learner. BNSV Lemma 5.9 gives
  \[
  \widetilde\varepsilon=6(0.1)m/N\le1/15,
  \qquad
  \widetilde\delta=e^{6(0.1)m/N}(4m/N)\delta<\delta.
  \]
  Since \(N\le10m\), shrinking the universal \(c_\delta\) discharges the ALMM empirical delta scale. Population risk under the uniform row-counting distribution equals empirical loss pointwise, so the premise gives \(\mathbb E L\le1/8\), exactly the expected-accuracy probability jump used inside `lem:reduction`. Shelah's fixed finite threshold pattern and the \(N/m\) and log-star shifts are absorbed only into \(a_{\rm L},c_\delta\).
- Residual-to-target adequacy: The produced finite threshold task is a realizable task inside the same factor \(C_i\). On its uniform database, empirical and population \(0\)-\(1\) risks are equal exactly, with no support or norm residual.
- Key positive/control term or structural source: Shelah's finite threshold pattern forced by Littlestone dimension and the ALMM privacy-induced probability jump.
- Opposing defect terms: with-replacement privacy inflation, even-size rounding, additive log-star shifts, arbitrary improper output, and \(d_i=1\).
- Closure/dominance/absorption relation: \(N\in[9m,10m]\) controls both privacy inflation and dimension shifts; the candidate delta scale controls the only privacy defect. Factors with \(r_i=0\) are deliberately handled by `step_007`, not by overstating ALMM.
- Accumulation behavior / scope compatibility: one fixed factor budget and one finite resampling wrapper; no uniform-in-\(m\) or cross-candidate claim.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the cited finite witness and direct resampling wrapper are independent of the product learner; they produce the factor interface before `step_009` and `step_010` consume it.
- Entry-state / first-update stress result: On arbitrary nonrealizable neighboring factor databases, the wrapper still runs and the BNSV privacy calculation applies; utility is consumed only on the realizable row-counting tasks. At \(m=8\), \(N\in[72,73]\) and all inequalities remain active.
- Baseline conclusion preserved: at \(k=1\), this is the ALMM unrestricted one-factor lower interface, not a proper or expectation-only final theorem; `step_014` later converts it back to the exact PAC failure event.
- Producer-consumer provenance: audited source path + direct wrapper -> `step_008` -> `step_009`, `step_010`.
- Null or boundary regime tested: \(d_i=1\), \(m=8\), smaller \(\varepsilon\) (privacy monotonicity to \(0.1\)), nonrealizable neighbors, repeated database rows, and infinite ambient factor/output spaces.
- Target conclusion false or theorem-critical obstruction present if source vanishes: absent the candidate delta bound, the ALMM probability-jump lower source is unavailable; the lower theorem is explicitly conditional on exactly that source.
- Repair route if source is unsupported: N/A under `assump:candidate-delta-budget`; outside it the lower clause is intentionally inactive.

### `step_009`: candidate calibration and hard-factor mass

- Step ID: `step_009`.
- Claim class: generated eligibility set, low-mass bound, and subcritical factor-budget certificate.
- Theorem role: bridges the global contradiction hypothesis \(n<c_{\rm low}M\) to the exact ALMM interfaces without assuming all factors are large.
- Mechanism source: `step_007`, `step_008`, the exact relations \(s_i\le r_i+2\), \(\pi_i=s_i/M\), and \(m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}\).
- Source-to-claim adequacy: Let \(R_0:=\lceil32/a_{\rm L}\rceil\), \(H:=\{i:r_i>R_0\}\), and \(w_L:=\sum_{i\notin H}\pi_i\). If a global learner has the PAC guarantee, `step_007` gives \(n\ge a_{\rm VC}k\). Under the local contradiction hypothesis \(n<cM\),
  \[
  w_L\le\frac{(R_0+2)k}{M}<\frac{c(R_0+2)}{a_{\rm VC}}.
  \]
  Choose universal \(c\) so this is below \(1/128\). Shrink \(c\) further so, for \(i\in H\), \(4n\pi_i< a_{\rm L}r_i/8\), while \(1\le a_{\rm L}r_i/32\) and \(8\le a_{\rm L}r_i/4\). Then \(m_{n,i}<a_{\rm L}r_i\) strictly. `assump:candidate-delta-budget` supplies \(\delta\le c_\delta/(m_{n,i}^2\log(m_{n,i}+1))\) at each exact budget.
- Residual-to-target adequacy: The produced weights and budgets are exactly the theorem's \(\pi_i\) and \(m_{n,i}\); low-factor mass \(w_L\) is the only discarded structural residual and is explicitly below the global-risk margin.
- Key positive/control term or structural source: the independent global VC certificate pays the total number of low factors, while large \(r_i\) dominates the floor and ceiling defects.
- Opposing defect terms: the additive two in \(s_i\le r_i+2\), quota floor eight, ceiling one, and possibly all factors lying below \(R_0\).
- Closure/dominance/absorption relation: the displayed choices of \(R_0\) and \(c\) dominate every defect. If \(H\) were empty, \(w_L=1\) would contradict \(w_L<1/128\), so an active source exists whenever the contradiction hypothesis is nonvacuous.
- Accumulation behavior / scope compatibility: one finite partition of factors at one fixed candidate; discarded mass is charged once.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_007` and `step_008` fix universal constants before \(H,w_L\) are defined; `step_009` is produced before priors and simulators consume eligibility.
- Entry-state / first-update stress result: N/A; deterministic candidate calibration.
- Baseline conclusion preserved: at \(k=1\), either the integer/VC floor already proves the claimed constant lower bound or the sole factor lies in \(H\) and is ALMM-eligible.
- Producer-consumer provenance: `step_001`, `step_007`, `step_008` -> `step_009` -> `step_010`, `step_011`, `step_012`, `step_013`, `step_014`.
- Null or boundary regime tested: all factors low, one active factor, \(r_i=R_0\), floor-eight domination, ceiling equality, \(n=1\), and equality in the candidate delta cap.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without `step_007`, low-factor mass may be one; without high-factor ALMM eligibility, no direct sum is available. Both are explicitly combined.
- Repair route if source is unsupported: N/A.

### `step_010`: learner-independent finite hard priors

- Step ID: `step_010`.
- Claim class: generated finite task priors against all unrestricted factor learners.
- Theorem role: prevents selecting a hard factor task after the simulated learner or global learner is known.
- Mechanism source: `step_001`'s countable quotient/output extension, `step_008`'s fixed finite Shelah task universe, `step_009`'s eligibility, finite-output restriction, compactness, and von Neumann finite minimax.
- Source-to-claim adequacy: For each \(i\in H\), map the finite Shelah witness to its distinct quotient types and fix all realizable row-counting tasks used by the ALMM wrapper at \(m_{n,i}\). Restrict every full learner to all binary output vectors on those types; include all finite labeled input databases, including nonrealizable ones, and every replacement-DP event inequality. These kernels form a nonempty compact convex polytope. Conversely, use the measurable quotient map to retract arbitrary factor rows to a fixed witness type (preserving witness types), and extend each output vector to an element of \(\{0,1\}^{Q_i}\), fixed off the witness, before pulling it back to \(X_i\). Quotient-cell measurability makes both maps legal; one replacement maps to equality or one replacement, so every finite kernel extends to a legal full measurable improper kernel. Thus the strict pointwise ALMM floor holds on the compact polytope. The continuous maximum loss attains a value strictly above \(1/8\), and finite minimax yields a prior \(\nu_i\) fixed before every learner with average expected risk strictly above \(1/8\).
- Residual-to-target adequacy: Every task in \(\nu_i\) is a realizable pair \((c_i,D_i)\) in the exact factor and is supported on the fixed witness. Output restriction preserves exact factor risk on that support; extension/retraction introduces zero task residual.
- Key positive/control term or structural source: strict compact minimum above \(1/8\) on a finite exact DP-kernel game.
- Opposing defect terms: infinite ambient class/output, nonrealizable privacy inputs, learner-dependent hard tasks, and non-strict minimax loss.
- Closure/dominance/absorption relation: finite restriction/extension is exact; compactness turns pointwise strictness into a uniform strict margin before minimax.
- Accumulation behavior / scope compatibility: one finite game per active factor and a finite product of priors later; no adaptive selection.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the task universe comes from `step_008` and eligibility from `step_009`, both before the prior is selected; `step_012` consumes the already fixed priors.
- Entry-state / first-update stress result: The finite kernel polytope includes arbitrary nonrealizable rows and all event inequalities before any utility task is played; no privacy source activates only after realizability.
- Baseline conclusion preserved: at \(k=1\), the same finite prior is a minimax form of the one-factor unrestricted ALMM lower source, later converted to a deterministic PAC witness.
- Producer-consumer provenance: `step_008` + `step_009` -> `step_010` -> `step_012`, `step_013`.
- Null or boundary regime tested: infinite \(X_i,C_i\), arbitrary improper output vectors, conflicting labels, repeated rows, and a single active factor.
- Target conclusion false or theorem-critical obstruction present if source vanishes: learner-dependent hard tasks cannot be tensorized; compact finite minimax supplies the needed prior-before-learner order.
- Repair route if source is unsupported: N/A.

### `step_011`: uniform overflow certificate

- Step ID: `step_011`.
- Claim class: generated same-target coupling residual.
- Theorem role: bounds the only disagreement between a finite-input hidden-factor learner and the ideal global mixture experiment.
- Mechanism source: direct optimized Chernoff bound for \(L_i\sim\operatorname{Bin}(n,\pi_i)\) and the exact factor-four budget.
- Source-to-claim adequacy: With \(\mu=n\pi_i\) and \(m_{n,i}=\max\{8,\lceil4\mu\rceil\}\), overflow \(\mathcal O_i:=\{L_i>m_{n,i}\}\) has integer threshold at least \(\max\{9,4\mu+1\}\). Exponential Markov with optimized parameter gives \(\Pr[L_i\ge t]\le\exp(t-\mu-t\log(t/\mu))\). For \(0<\mu\le2\), the worst endpoint is \(\mu=2,t=9\); for \(\mu\ge2\), the derivative of \(4\mu+1-\mu-(4\mu+1)\log((4\mu+1)/\mu)\) has the required monotonic sign. Hence
  \[
  \Pr(\mathcal O_i)\le\eta_0:=e^7(2/9)^9<3/2048.
  \]
  If \(\pi_i=0\), overflow is impossible.
- Residual-to-target adequacy: The produced event is exactly where the truncated simulator cannot reproduce the ideal factor rows. Since risk lies in \([0,1]\), the exact local expected-risk difference is at most \(\Pr(\mathcal O_i)\); there are no other transfer terms.
- Key positive/control term or structural source: the factor-four mean buffer and the absolute floor eight.
- Opposing defect terms: small means, ceiling/floor rounding, \(n=1\), and large means.
- Closure/dominance/absorption relation: the two mean regimes meet at the explicit universal \(\eta_0<3/2048\).
- Accumulation behavior / scope compatibility: one overflow event per factor marginal; it is never union bounded and is later weighted once.
- Obligation locality classification: `step-local`.
- Noncircular closure status: primitive slot sampling and exact budgets produce the event before `step_012` uses its branch and `step_013` charges its residual.
- Entry-state / first-update stress result: If no factor slot is requested, no input row is read. If overflow is detected, the simulator takes an input-independent branch before attempting to read an unavailable row.
- Baseline conclusion preserved: at \(k=1\), \(L_1=n\le m_{n,1}\), so overflow is exactly zero rather than merely bounded by \(\eta_0\).
- Producer-consumer provenance: definitions + `step_009` -> `step_011` -> `step_012`, `step_013`.
- Null or boundary regime tested: \(\pi_i=0\), \(n=1\), \(\mu=2\), large \(\mu\), and \(k=1\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: a nondecaying overflow probability above the risk slack would invalidate tensorization; the explicit bound lies below the required scale.
- Repair route if source is unsupported: N/A.

### `step_012`: unrestricted one-use hidden-factor learner

- Step ID: `step_012`.
- Claim class: exact factor-DP reduction and ideal/truncated experiment bridge.
- Theorem role: transfers the global learner into every eligible factor without properness, quotient-output, or factorwise restrictions.
- Mechanism source: direct sequential one-use embedding from `assump:canonical-product`, fixed priors from `step_010`, eligibility from `step_009`, and overflow control from `step_011`.
- Source-to-claim adequacy: For a factor database of size \(m_{n,i}\), first draw all auxiliary product-prior tasks and \(n\) iid block indices. If \(L_i>m_{n,i}\), output a fixed vector without inspecting the input. Otherwise insert the factor input rows sequentially into the \(i\)-slots, each row at most once, sample every other block row from its fixed task, call the arbitrary global learner once, and restrict its decoded output to the finite factor witness. The assembled-sample map is measurable because quotient routing and every auxiliary hard distribution are finite/countably coded, and output restriction is a measurable finite-evaluation-cylinder postprocessing. Conditional on auxiliary randomness, replacing one factor row changes zero or one global row, even for nonrealizable labels; hence the simulator is a measurable \((\varepsilon,\delta)\)-DP kernel and therefore \((0.1,\delta)\)-DP. The full Cartesian product realizes every utility input generated from the priors.
- Residual-to-target adequacy: When the factor input is iid from its sampled task and no overflow occurs, the assembled global dataset, product target, learner randomness, restricted output, and factor risk equal the ideal mixture experiment exactly. On overflow the two \([0,1]\)-risks may differ by at most one, so `step_011`'s \(\eta_0\) is the entire residual.
- Key positive/control term or structural source: every factor input row is used in at most one global row.
- Opposing defect terms: row reuse, unrequested/unused rows, overflow, nonrealizable neighbors, other-factor target randomness, and arbitrary global output coupling.
- Closure/dominance/absorption relation: one-use insertion gives replacement distance at most one and no privacy composition; the input-independent overflow branch makes the algorithm total; off overflow the coupling is identity.
- Accumulation behavior / scope compatibility: one global learner call and one bounded overflow residual. No privacy cost or residual is accumulated across slots.
- Obligation locality classification: `step-local`.
- Noncircular closure status: priors, eligibility, and overflow are produced before the simulator; its privacy proof never assumes global PAC utility or its own factor-risk conclusion.
- Entry-state / first-update stress result: Trace the first requested \(i\)-slot: it consumes input row one exactly once. A replacement of row \(a\) changes the assembled sample only if slot \(a\) exists, then changes exactly that row. With no requested slot or on overflow, the input is ignored and output law is identical.
- Baseline conclusion preserved: at \(k=1\), there is no overflow and the simulator inserts the first \(n\) of \(m_{n,1}\) rows once, giving the standard one-factor reduction with no coupling loss.
- Producer-consumer provenance: `step_009`, `step_010`, `step_011` -> `step_012` -> `step_013`.
- Null or boundary regime tested: no requested row, unused changed row, used changed row, overflow, nonrealizable input, one active factor, and unrestricted improper global output.
- Target conclusion false or theorem-critical obstruction present if source vanishes: row reuse could turn one factor replacement into group adjacency and destroy the unrestricted lower transfer; the sequential construction excludes it exactly.
- Repair route if source is unsupported: N/A.

### `step_013`: product-prior tensorization in exact risk

- Step ID: `step_013`.
- Claim class: weighted direct-sum expected-risk lower bound.
- Theorem role: puts all factor floors in one experiment and one exact global target/distribution pair distribution.
- Mechanism source: independent priors from `step_010`, one-use simulator/coupling from `step_012`, low-mass certificate from `step_009`, overflow certificate from `step_011`, and the exact risk identity from `step_001`.
- Source-to-claim adequacy: Draw all active factor tasks independently from their priors before the global target, distribution, sample, or learner randomness; fix arbitrary realizable tasks on low factors. For each active \(i\), the simulator is an eligible \((0.1,\delta)\)-DP learner, so minimax gives truncated expected factor risk \(>1/8\); coupling gives ideal factor risk \(>1/8-\eta_0\). These are marginals of the same product-prior ideal global experiment. Joint dependence of the global output is irrelevant because finite linearity and exact disjoint risk yield
  \[
  \mathbb E R_D(h_A,c)
  =\sum_i\pi_i\mathbb E R_{D_i}(h_A|_{X_i},c_i)
  >(1-w_L)(1/8-\eta_0).
  \]
- Residual-to-target adequacy: The produced and consumed objects are the same product target, mixture distribution, global sample, learner output, and exact global risk. Each factor has only the overflow residual \(\eta_0\), weighted once; low factors contribute a nonnegative term and discarded mass \(w_L\).
- Key positive/control term or structural source: full-product target freedom and exact linear risk decomposition.
- Opposing defect terms: correlated outputs, different hard priors, low-factor mass, and separate overflow events.
- Closure/dominance/absorption relation: priors are sampled jointly first; factor inequalities are marginal statements in that common experiment; finite weighted linearity sums them without independence or a union bound.
- Accumulation behavior / scope compatibility: finite nonnegative weighted sum; each bounded residual is charged once, with total active residual at most \((1-w_L)\eta_0\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: every prior, coupling, and mass bound is produced earlier. `step_013` does not choose tasks after observing the learner output and is consumed only by `step_014`.
- Entry-state / first-update stress result: With one active factor, the product prior is that factor prior and all identities still hold; with zero active factors, `step_009` already gives a contradiction, so no inactive mechanism is consumed.
- Baseline conclusion preserved: at \(k=1\), \(w_L=0\) on the active branch and overflow is zero, yielding the exact one-factor \(>1/8\) expected-risk floor.
- Producer-consumer provenance: `step_001`, `step_009`--`step_012` -> `step_013` -> `step_014`.
- Null or boundary regime tested: one active factor, fixed low factors, arbitrary output correlation, zero-risk low factors, and \(k=1\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: learner-dependent priors or factor inequalities from different experiments could not be summed; `step_010` and the common product-prior construction exclude both defects.
- Repair route if source is unsupported: N/A.

### `step_014`: candidate-wise PAC contradiction

- Step ID: `step_014`.
- Claim class: exact lower theorem closure, expectation-to-event conversion, and deterministic witness extraction.
- Theorem role: proves \(n\ge c_{\rm low}M\) for the fixed admissible candidate against every unrestricted learner.
- Mechanism source: `step_007`, `step_009`, `step_013`, bounded loss, and exact rational arithmetic.
- Source-to-claim adequacy: If an unrestricted global learner satisfies the PAC guarantee for every target/distribution, then for each task
  \[
  \mathbb E R_D\le\frac1{16}+\frac{15}{16}\frac1{16}=\frac{31}{256},
  \]
  and the same bound holds after averaging the product prior. Under \(n<c_{\rm low}M\), `step_013` and the explicit constants give
  \[
  \mathbb E R_D>rac{127}{128}\left(\frac18-\frac3{2048}\right)
  =\frac{32131}{262144}>rac{31}{256},
  \]
  a contradiction. Hence some deterministic prior atom has \(\Pr[R_D>1/16]>1/16\).
- Residual-to-target adequacy: Both upper and lower expectations concern the exact same global risk and candidate. The low-mass and overflow residuals are explicitly dominated before the event witness is exported.
- Key positive/control term or structural source: strict numerical slack between \(32131/262144\) and \(31/256\).
- Opposing defect terms: bounded-loss conversion, averaging over priors, equality at the PAC threshold, and candidate-specific delta conditions.
- Closure/dominance/absorption relation: the displayed exact inequalities dominate all defects; finite averaging extracts a deterministic target/distribution with strict failure probability.
- Accumulation behavior / scope compatibility: one fixed candidate and one finite expectation comparison; no cross-candidate accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: lower risk is independently produced before it is compared with the PAC consequence; the contradiction hypothesis \(n<c_{\rm low}M\) is discharged and not exported.
- Entry-state / first-update stress result: N/A; one-shot logical closure.
- Baseline conclusion preserved: the \(k=1\) expected-risk floor is converted to the exact one-factor PAC failure event, so the final theorem is not expectation-only.
- Producer-consumer provenance: `step_007`, `step_009`, `step_013` -> `step_014` -> `step_015`.
- Null or boundary regime tested: \(n=1\), equality in the delta cap, equality in the risk good event, and one active factor.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without strict numerical slack, minimax averaging might not yield the required strict failure event; the exact constants supply it.
- Repair route if source is unsupported: N/A.

### `step_015`: exact assembly, conditional specialization, and baselines

- Step ID: `step_015`.
- Claim class: final two-sided theorem closure and baseline invariance.
- Theorem role: assembles the exact upper clause, candidate-wise lower clause, conditional characterization, and both \(k=1\) conclusions.
- Mechanism source: accepted outputs of `step_003`, `step_005`, `step_006`, and `step_014`, plus the definition of \(\operatorname{SC}_{\varepsilon,\delta}(C)\).
- Source-to-claim adequacy: `step_003` has the exact global output/event convention and arbitrary-input replacement privacy; `step_005` has the exact arbitrary-distribution high-probability risk event; `step_006` has the exact public quota dependence; and `step_014` has the exact unrestricted candidate-wise impossibility. Their parameter, norm, and probability modes match `setting.md`. The lower result is substituted at \(n_*\) only after checking both conjuncts of `assump:candidate-delta-budget` there.
- Residual-to-target adequacy: Every consumed interface is already in the final theorem object and risk. No transformed, finite-support, expectation-only, or quotient-output residual survives assembly.
- Key positive/control term or structural source: exact scope separation followed by a legal one-candidate specialization.
- Opposing defect terms: accidentally using the lower bound for all \(\delta\), dropping the first delta conjunct, identifying VC/LD/log-star/cardinality quantities, or weakening either baseline.
- Closure/dominance/absorption relation: upper arbitrary-\(\delta\) and lower candidate-wise statements remain separate; only their common valid instance at admissible \(n_*\) is sandwiched.
- Accumulation behavior / scope compatibility: finite logical composition; no asymptotic or uniform-candidate upgrade.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all theorem-facing outputs have earlier producers; assembly proves no new kernel, event, prior, or invariant.
- Entry-state / first-update stress result: At \(k=1\), the upper mechanism begins with the sole quotient factor and the lower simulator uses each requested row once with zero overflow; both sources are active before either baseline is asserted.
- Baseline conclusion preserved: upper = measurable quotient-first Yan with the same quota order; lower = unrestricted one-factor VC/ALMM with exact PAC failure. Neither is replaced by a finite-support-only, proper, set-theoretic, or weaker result.
- Producer-consumer provenance: `step_003`, `step_005`, `step_006`, `step_014` -> `step_015` -> final theorem.
- Null or boundary regime tested: candidate condition fails at \(n_*\) (only upper remains), \(k=1\), \(d_1=1\), and arbitrary \(0<\delta<1\) in the upper clause.
- Target conclusion false or theorem-critical obstruction present if source vanishes: a missing upper kernel or lower candidate certificate would invalidate the corresponding clause rather than be hidden in assembly; every source is assigned earlier.
- Repair route if source is unsupported: N/A.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Quotient/product certificate: \(C_i\leftrightarrow\bar C_i\), exact factor dimensions, \(\operatorname{VC}(C)=k\), \(\operatorname{LD}(C)=\sum_i d_i\), finite-cardinality identity, standard-Borel output, and exact risk pullback | `step_001` | `assump:canonical-product`, `assump:vc-one-factors`, `assump:countably-coded-evaluation`; direct evaluation-pattern derivation | Quotient collisions are controlled because all concepts agree on each cell; infinite cardinality is irrelevant except where the finite identity is explicitly conditional; no uncontrolled defect | Produced quotient tuple and consumed decoded raw hypothesis are compared in exact \(R_D\); the cellwise countable sum is equality, so every residual is zero | Pullback is a class bijection and preserves every finite label vector/tree; full-product factor independence gives additive identities | Primitive full-product freedom and measurable countable cells | `step_002`, `step_006`--`step_009`, `step_013`, `step_015` | None |
| Measurable totalized factor kernel \(\bar A_i^{\rm Yan}\), replacement-\((\varepsilon/2,\delta/2)\)-DP on every quotient input, and unpadded \((1/64,1/4096)\) factor utility at \(q_i\) | `step_002` | `step_001`; countable-discrete quotient input; fixed enumeration/reference/root; Yan internal labels and \(TD+1\) comparison; BNSV choosing proof; direct core-closure and Hoeffding wrappers | Partial source branches are controlled by totalization; replacement's leaving/entering summaries by the histogram proof; private failures/bad blocks by fixed-confidence calibration; padding is an uncontrolled utility defect and is explicitly excluded from this interface | Reference XOR and quotient pullback give pointwise equality to the consumed factor risk; no residual on unpadded data | Internal privacy calls compose to the factor budget; bad-block count < median/choosing slack leaves a good comparison; universal \(K_Y\) makes the full threshold \(\le q_i\) | Positive \(TD+1\) endpoint, two-sided median mass, choosing gap, and fixed confidence slack | `step_003`, `step_005`, `step_015` | None |
| Measurable global tuple/decoded kernel and all-input replacement-\((\varepsilon,\delta)\)-DP | `step_003` | Measurable quotient routing/prefix/padding; `step_002` factor kernels; permutation coupling; standard composition | Prefix shifts and padding transitions are controlled by multiset symmetrization; at most two factors change; no uncontrolled factor-count defect | Tuple output decodes to the exact theorem hypothesis; postprocessing has zero privacy/risk residual | Two affected costs sum to \((\varepsilon,\delta)\); unchanged factors couple identically | Affected-factor support size two | `step_015` | None |
| Weighted shortage certificate \(\mathbb E W_{\rm short}\le128Q_{\oplus}/n+e^{-16}\) | `step_004` | Exact binomial counts and quotas; no factor independence needed | Light-factor mass is controlled by \(128Q/n\); heavy-factor shortage by Chernoff; zero-mass factors contribute zero; no uncontrolled balance defect | \(W_{\rm short}\) is exactly the risk mass of padded factors | Light/heavy split and weighted summation, never an all-factor union bound | Total mass one and heavy-factor mean/quota separation | `step_005` | None |
| Measurable \(W_{\rm bad}\), exact \(R_D\le1/64+W_{\rm bad}\), and global PAC success | `step_005` | `step_002` conditional utility, `step_004`, exact risk identity | Shortages and factor failures are controlled separately; arbitrary factor-output correlation is harmless; no uncontrolled factor count/support term | Same global target, distribution, decoded hypothesis, and risk; every local defect is weighted once | \(\mathbb EW_{\rm bad}\le128Q/n+e^{-16}+1/4096<3/1024\), then Markov at \(3/64\) | PAC risk slack \(3/64\) and universal \(C_{\rm up}\) | `step_015` | None |
| Public quota rate \(Q_{\oplus}\le C_{\rm quota}(M/\varepsilon)\log^2(eM/(\varepsilon\delta))\) | `step_006` | Exact quota, \(s_i\le M\), \(M\ge2k\), privacy range | Heterogeneous logarithms controlled by monotonicity; ceiling residual exactly \(k\); no cardinality term | Produced and consumed object are the same \(Q_{\oplus}\); ceiling residual is at the required public scale and dominated | Sum pointwise factor bounds and absorb \(k\le M/2\) into the positive main term | \(M\ge2\), \(\varepsilon\le1/10\), \(\delta<1\) | `step_015` | None |
| Additive VC lower certificate \(n\ge a_{\rm VC}k\) for any claimed PAC learner | `step_007` | `step_001` full-product shattered points; random target labels | Sample collisions are favorable to the lower bound; learner randomness/improperness controlled by conditioning; no privacy premise needed | Hard task is in the exact global class and exact risk | Unseen fair labels give expected risk >\(1/4\), while PAC gives \(\le31/256\) | Strict risk gap | `step_009`, `step_014` | None |
| ALMM expected-risk factor floor: subcritical eligible learner has some finite realizable task with expected risk \(>1/8\) | `step_008` | ALMM labeled proof path; BNSV Lemma 5.9; `step_001` factor dimension; all-input finite-evaluation output convention | Resampling privacy inflation, even rounding, and log-star shifts are controlled by \(N\in[9m,10m]\) and universal constants; low \(d\) is not claimed; absent delta admissibility is explicitly outside the lower clause | Uniform-database population risk equals empirical loss exactly; finite witness is inside the same factor | Exact resampling formulas plus candidate delta cap discharge source hypotheses; expected loss \(\le1/8\) is the active ALMM proof premise | Shelah threshold pattern and privacy-induced probability jump | `step_009`, `step_010` | None |
| Hard-factor set \(H\), \(w_L<1/128\), and exact subcritical/delta eligibility at every \(m_{n,i}\) | `step_009` | `step_007`, `step_008`, exact weights/budgets, local hypothesis \(n<c_{\rm low}M\) | Additive \(+2\), ceiling one, and floor eight each have explicit high-\(r\) control; low factors remain but total mass is bounded; no uncontrolled candidate shift | Exact theorem weights and budgets, no surrogate | Universal \(R_0,c_{\rm low}\) make all displayed strict inequalities simultaneous | Global VC lower and high-\(r_i\) margin | `step_010`--`step_014` | None |
| One finite hard prior \(\nu_i\) per active factor, fixed against every unrestricted factor kernel | `step_010` | `step_008` finite witness/tasks, `step_009` eligibility, full finite DP kernel polytope | Infinite ambient inputs/outputs controlled by exact retraction/extension; nonrealizable privacy rows included; learner dependence removed by minimax | Output restriction and task support give exact factor risk; zero extension residual | Strict continuous maximum loss on a compact polytope has strict attained minimum; finite minimax exchanges learner/task | Strict ALMM \(>1/8\) floor | `step_012`, `step_013` | None |
| Overflow certificate \(\Pr(\mathcal O_i)\le\eta_0=e^7(2/9)^9<3/2048\), with zero overflow at \(k=1\) | `step_011` | Exact binomial slot law and factor-four/floor-eight budget | Small and large means controlled in separate exact Chernoff regimes; ceiling/floor included; no factor union bound | \(\mathcal O_i\) is exactly the ideal/truncated disagreement; any risk residual \(\le\mathbf1_{\mathcal O_i}\) | Optimized exponent is uniformly at most \(\log\eta_0\) | Factor-four buffer and floor eight | `step_012`, `step_013` | None |
| Total hidden-factor learner: all-input \((\varepsilon,\delta)\)-DP, hence \((0.1,\delta)\)-DP, and exact ideal coupling off overflow | `step_012` | Fixed priors, exact slot stream, full-product targets, one global learner call, `step_011` | Row reuse excluded; unused rows cause equality; overflow controlled by input-independent branch; nonrealizable labels allowed; only overflow remains | Produced truncated factor experiment equals consumed ideal factor target/sample/output/risk off overflow; entire residual \(\le\eta_0\) | One input row inserted into at most one global row, so replacement distance \(\le1\); no privacy composition | One-use insertion and exact full-product realizability | `step_013` | None |
| Common product-prior lower bound \(\mathbb ER_D>(1-w_L)(1/8-\eta_0)\) | `step_013` | `step_001`, `step_009`--`step_012`; priors fixed before learner experiment | Low-factor mass and each overflow residual explicitly controlled; arbitrary output correlation is not a defect for linearity | Same global target, mixture distribution, sample, output, and risk; residuals \(w_L,\eta_0\) are at the exact theorem scale | Marginal factor floors coexist in one prior experiment and sum by exact risk identity | Full Cartesian target freedom and nonnegative weighted linearity | `step_014` | None |
| Deterministic target/distribution with PAC failure probability \(>1/16\), hence \(n\ge c_{\rm low}M\) | `step_014` | `step_007`, `step_009`, `step_013`, bounded loss | Prior averaging and good-event risk cap controlled exactly; no cross-candidate use; all numerical defects already present | Exact final global risk/event, no expectation-only residual | \((127/128)(1/8-3/2048)>31/256\); PAC failure \(\le1/16\) would force expectation \(\le31/256\) | Strict rational gap | `step_015` | None |
| Exact two-sided theorem, conditional \(n_*\) sandwich, and both \(k=1\) baselines | `step_015` | `step_003`, `step_005`, `step_006`, `step_014`; sample-complexity definition | Upper and lower scopes remain separate; lower is inactive when candidate condition fails; no hidden cardinality/properness restriction | All consumed interfaces already use exact theorem objects/modes; zero assembly residual | Substitute lower only at an admissible candidate \(n_*\); specialize \(k=1\) before any generic residual relaxation | Exact source scopes and baseline identities | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Quotient-class bijection, factor dimension preservation, standard-Borel output convention, exact quotient/raw risk equality, and product identities | `step_001`, direct primitive-source derivation under the exact evaluation convention | `step_002`, `step_006`--`step_009`, `step_013`, `step_015` | Makes both clauses statements about the original class and exact risk | Primitive assumptions -> `step_001` -> listed consumers | derived | None |
| Totalized measurable factor kernel and exact factor DP/utility certificate | `step_002`; Yan arXiv:2505.06581v2 internal labeled components + BNSV arXiv:1504.07553 choosing labels + direct quotient/core/confidence wrappers, with source conventions and nonoutputs fixed above | `step_003`, `step_005`, `step_015` | Global kernel/privacy, arbitrary-mass PAC utility, and one-factor upper baseline | `step_001` -> `step_002` -> consumers | derived | None |
| Measurable routed global \((\varepsilon,\delta)\)-DP kernel | `step_003`, direct support-two composition of `step_002` kernels | `step_015` | Upper privacy and legal learner clauses | `step_002` -> `step_003` -> `step_015` | derived | None |
| \(W_{\rm short}\) and its expectation bound | `step_004`, direct binomial light/heavy calculation | `step_005` | Padding loss in arbitrary-mass upper utility | iid sample -> `step_004` -> `step_005` | derived | None |
| Measurable \(\mathsf B_i\), \(W_{\rm bad}\), exact risk comparison, and PAC event | `step_005`, using `step_002` and `step_004` | `step_015` | Upper PAC clause | `step_002`,`step_004` -> `step_005` -> `step_015` | derived | None |
| Public quota bound and universal \(C_{\rm quota}\) | `step_006`, direct ceiling/log bridge from `step_001` and exact quotas | `step_015` | Public explicit-rate consequence | `step_001` -> `step_006` -> `step_015` | derived | None |
| Global additive VC certificate \(n\ge a_{\rm VC}k\) | `step_007`, direct unseen-label lower bound | `step_009`, `step_014` | Pays low-factor mass and closes small-complexity lower regime | `step_001` -> `step_007` -> consumers | derived | None |
| ALMM expected-risk factor interface and fixed finite threshold task universe | `step_008`; ALMM arXiv:1806.00949v3 labels `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD` + BNSV Lemma 5.9 + direct expected-loss wrapper | `step_009`, `step_010` | High-complexity unrestricted factor hardness | `step_001` -> `step_008` -> consumers | derived | None |
| Active set \(H\), low mass \(w_L<1/128\), and exact budget/delta eligibility | `step_009`, using `step_007`, `step_008`, and the local contradiction hypothesis | `step_010`--`step_014` | Candidate-specific activation and defect budget | `step_007`,`step_008` -> `step_009` -> consumers | derived | None |
| Learner-independent finite hard priors \((\nu_i)_{i\in H}\) | `step_010`, compact finite minimax applied after `step_009` | `step_012`, `step_013` | Fixes all hard tasks before simulators/global experiment | `step_008`,`step_009` -> `step_010` -> consumers | derived | None |
| Overflow events and \(\eta_0\) certificate | `step_011`, direct binomial calculation | `step_012`, `step_013` | Sole ideal/truncated coupling residual | `step_009` -> `step_011` -> consumers | derived | None |
| Total one-use hidden-factor learners and off-overflow identity coupling | `step_012`, using fixed priors and one global learner call | `step_013` | Transfers global learner privacy/utility experiment to every active factor | `step_009`,`step_010`,`step_011` -> `step_012` -> `step_013` | derived | None |
| Common product-prior global expected-risk lower bound | `step_013`, exact weighted marginal sum | `step_014` | Same-risk numerical contradiction | `step_001`,`step_009`--`step_012` -> `step_013` -> `step_014` | derived | None |
| Deterministic target/distribution PAC-failure witness and \(n\ge c_{\rm low}M\) | `step_014`, bounded-loss conversion and finite averaging | `step_015` | Candidate-wise lower clause | `step_007`,`step_009`,`step_013` -> `step_014` -> `step_015` | derived | None |
| Exact conditional characterization and both baselines | `step_015`, assembly of already-produced outputs | Final theorem | Final result | `step_003`,`step_005`,`step_006`,`step_014` -> `step_015` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Prove: (i) pullback is a bijection \(\bar C_i\to C_i\) preserving all finite label patterns, \(\operatorname{VC}(\bar C_i)=1\), and \(\operatorname{LD}(\bar C_i)=d_i\); (ii) \(\operatorname{VC}(C)=k\), \(\operatorname{LD}(C)=\sum_i d_i\), and finite \(\log\lvert C\rvert=\sum_i\log\lvert C_i\rvert\); (iii) \(s_i\ge2\), \(s_i\le r_i+2\), \(M\ge2k\); and (iv) \(\mathcal H^\oplus\) is standard Borel, decoding is measurable, and quotient/raw factor/global risks agree exactly and measurably. | None | Primitive: `assump:canonical-product`, `assump:vc-one-factors`, `assump:countably-coded-evaluation` | Preserve Littlestone trees through quotient collisions and prove the product upper LD inequality without importing ordering/cardinality; expose exact risk measurability on countably many cells. | Direct evaluation-pattern bijection; concatenated trees and factorwise online prediction; countable-product standard-Borel facts; monotone limits of finite evaluation sums. | Quotient/product structural certificate used by all later steps. | Structural-parameter explicit: exact \(k,d_i,s_i,M\) dependence; deterministic, fixed-sample convention; exact \(0\)-\(1\) risk; no hidden constants/cardinality. | PENDING |
| `step_002` | For each factor, construct the specified fixed permutation-symmetrized fully totalized quotient-first Yan transition rule as a Markov kernel \((Q_i\times\{0,1\})^{q_i}\rightsquigarrow\mathcal H_i\); prove replacement-\((\varepsilon/2,\delta/2)\)-DP on all inputs; and prove that on every unpadded realizable iid quotient sample its risk is at most \(1/64\) except with probability at most \(1/4096\). Prove the full internal threshold is at most the exact \(q_i\), including \(d_i=1\). | `step_001` | Primitive: `assump:vc-one-factors`, `assump:countably-coded-evaluation`, `assump:global-privacy-range`; derived: `step_001` quotient dimensions/risk | Totalize every partial source branch inside the privacy proof; turn countable-discrete legality into a kernel; prove replacement privacy for a leaving/entering summary; prove improper-core VC closure; remove the raw \((t+2)\beta\) confidence fixed point while retaining the squared-log quota. | Yan arXiv:2505.06581v2 exact internal labels/locators listed above; BNSV `alg:choosing`, `lem:CMprivacy`, `lem:CMutility`; direct \(\operatorname{VC}(\mathcal K_i)\le1\); Hoeffding; explicit \(TD+1\)/log arithmetic. | Exact measurable factor kernel/privacy/utility certificate, including source convention and nonoutput boundaries. | Upper kernel/PAC objective: expose \(d_i,s_i,q_i,\varepsilon,\delta\), fixed \(\alpha_{\rm fac},\beta_{\rm fac}\), high probability, fixed factor call, exact risk; universal constants only; no padding utility. | PENDING |
| `step_003` | Prove quotient routing, first-prefix/padding, product-kernel formation, and decoding are measurable; prove one global replacement affects at most two factor multisets by one replacement each after symmetrization; conclude the tuple/decoded rule is \((\varepsilon,\delta)\)-DP for every adjacent labeled dataset and every measurable output event. | `step_001`, `step_002` | Primitive: `assump:canonical-product`, `assump:countably-coded-evaluation`, `assump:global-privacy-range`; derived: `step_002` factor kernels | Ordered prefix shifts must be coupled as one multiset replacement, including padding and cross-block moves; composition must handle joint product events. | Direct finite routing-map proof; permutation coupling; basic composition and postprocessing for standard-Borel kernels. | Exact global Markov-kernel and privacy interface. | Upper kernel/PAC objective: pointwise privacy, fixed sample, no \(k\) dependence beyond support two; exact output convention. | PENDING |
| `step_004` | For every arbitrary mass vector \((\rho_i)\), prove \(\mathbb E W_{\rm short}\le128Q_{\oplus}/n+e^{-16}\), with \(\rho_i=0\) handled exactly and no all-factor union bound. | `step_001` | Primitive: `assump:canonical-product`; exact quota definitions and integer fact \(q_i\ge1\) | Control arbitrarily many tiny-mass factors without balance and heavy-factor shortages without summing unweighted probabilities. | Light/heavy mass split and binomial Chernoff lower tail. | Weighted shortage certificate. | Upper kernel/PAC objective: explicit \(Q_{\oplus}/n\), expectation mode for generated mass, fixed sample, exact risk weights; universal numerical constants. | PENDING |
| `step_005` | Show \(\mathsf B_i,W_{\rm bad}\) are measurable, \(\mathbb EW_{\rm bad}\le128Q_{\oplus}/n+e^{-16}+1/4096\), and \(R_D\le1/64+W_{\rm bad}\). Choose universal \(C_{\rm up}\) so \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\) implies the exact \((1/16,1/16)\) global PAC guarantee for every \(c,D\). | `step_002`, `step_004` | Primitive: `assump:canonical-product`, `assump:countably-coded-evaluation`, `assump:global-privacy-range`; derived: factor kernel/utility and shortage certificate | Conditional first-prefix iid law, measurable risk events, and weighted factor failures must be combined without output independence or union bounds. | Conditional iid/exchangeability; exact risk identity; finite linearity; Markov at \(3/64\). | Global arbitrary-distribution PAC certificate and universal \(C_{\rm up}\). | Upper kernel/PAC objective: explicit \(n,Q_{\oplus}\), high-probability \(15/16\), fixed-sample exact risk; hidden constants universal and no balance/support/cardinality dependence. | PENDING |
| `step_006` | Prove the exact public bridge \(Q_{\oplus}\le C_{\rm quota}(M/\varepsilon)\log^2(eM/(\varepsilon\delta))\), including each ceiling and every natural-log monotonicity/absorption inequality, with no factor/quotient cardinality term. | `step_001` | Primitive: `assump:vc-one-factors`, `assump:global-privacy-range`; derived: `step_001` \(M\ge2k\) | Sum heterogeneous factor logarithms and absorb the \(+k\) ceiling error at the exact public scale. | Direct monotonicity and ceiling arithmetic. | Public Rate Specialization Bridge and \(C_{\rm quota}\). | Upper public-rate objective: all \(k,d_i,s_i,M,\varepsilon,\delta\) dependence explicit; deterministic fixed-sample bridge; universal constants only. | PENDING |
| `step_007` | Prove that any learner, private or not and improper or not, satisfying the global \((1/16,1/16)\) PAC guarantee with \(n\) samples must have \(n\ge a_{\rm VC}k\) for a universal \(a_{\rm VC}>0\). | `step_001` | Primitive: `assump:canonical-product`, `assump:vc-one-factors`; derived: full-product shattered witness | Keep the argument valid for randomized improper outputs and small \(k\), and return from a random-target average to the exact PAC convention. | Independent unseen fair labels on one witness point per factor; bounded-loss PAC expectation ceiling. | Global additive VC lower certificate. | Candidate lower objective: explicit \(k,n\), impossibility/expectation mode converted to exact PAC, fixed candidate/risk; no privacy dependence. | PENDING |
| `step_008` | Establish universal \(a_{\rm L},c_\delta>0\) such that an unrestricted replacement-\((0.1,\delta)\)-DP factor learner with \(m\ge8\), \(\delta\le c_\delta/(m^2\log(m+1))\), and expected risk \(\le1/8\) on every realizable task must satisfy \(m\ge a_{\rm L}\log_2^*d_i\). Fix a finite Shelah task universe supporting the contrapositive strict \(>1/8\) floor. | `step_001` | Primitive: `assump:vc-one-factors`, `assump:global-privacy-range`; derived: quotient/original dimension equality and finite-evaluation output legality | The printed PAC corollary is not prior-ready; verify exact labels, resampling adjacency/privacy, expected-loss premise, arbitrary improper outputs, finite witness, \(m=8\), and log-star/delta translations. | ALMM arXiv:1806.00949v3 `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD`; BNSV Lemma 5.9; direct uniform-database risk identity. | ALMM expected-risk factor wrapper and fixed finite task universe. | Candidate lower objective: explicit \(m,d_i,\delta\), fixed-factor expected-risk impossibility, exact \(0\)-\(1\) risk; universal constants; no uniform-candidate claim. | PENDING |
| `step_009` | Under one fixed candidate, its PAC guarantee, `assump:candidate-delta-budget`, and the local contradiction hypothesis \(n<c_{\rm low}M\), choose universal \(R_0,c_{\rm low}\), define \(H=\{i:r_i>R_0\}\), and prove \(w_L:=\sum_{i\notin H}\pi_i<1/128\), \(m_{n,i}<a_{\rm L}r_i\), and the exact ALMM delta hypothesis for every \(i\in H\). | `step_001`, `step_007`, `step_008` | Primitive: `assump:candidate-delta-budget`; derived: structural comparison, global VC certificate, ALMM constants | Simultaneously dominate additive log-star shift, ceiling one, floor eight, and all-low regime without strengthening the candidate condition. | Direct constant calibration and strict arithmetic. | Hard-factor/low-mass/eligibility certificate. | Candidate lower objective: exact \(n,M,k,r_i,s_i,m_{n,i},\delta\) dependence, fixed candidate; every threshold and strict absorption explicit. | PENDING |
| `step_010` | For every \(i\in H\), produce a finite prior \(\nu_i\) over realizable finite-support factor tasks, fixed independently of every learner, such that every unrestricted \((0.1,\delta)\)-DP factor learner on \(m_{n,i}\) rows has \(\mathbb E_{\nu_i}R_{D_i}>1/8\). | `step_001`, `step_008`, `step_009` | Derived: countable-quotient measurable extension, finite ALMM task universe, and exact eligibility; no new theorem-facing assumption | Preserve all nonrealizable-input DP inequalities and arbitrary improper outputs in a compact finite game; obtain a strict uniform margin before minimax. | Quotient-cell retraction/output extension; finite output restriction; compact convex DP polytope; finite minimax. | Learner-independent hard priors. | Candidate lower objective: exact \(m_{n,i},\delta\), expected factor risk, fixed candidate; no approximation or hidden cardinality. | PENDING |
| `step_011` | For \(L_i\sim\operatorname{Bin}(n,\pi_i)\) and \(m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}\), prove uniformly \(\Pr[L_i>m_{n,i}]\le\eta_0:=e^7(2/9)^9<3/2048\), with probability zero at \(\pi_i=0\) and at \(k=1\). | `step_009` | Derived: exact candidate weights/budgets | Obtain a uniform constant through the small/large mean transition including integer rounding, without union bounding over factors. | Exact binomial mgf/Chernoff optimization; derivative check at \(\mu=2\). | Overflow residual certificate. | Candidate lower objective: explicit \(n,\pi_i,m_{n,i}\), deterministic universal \(\eta_0\), fixed candidate/risk scale. | PENDING |
| `step_012` | For each active factor and arbitrary global learner \(A_n\), construct a total measurable hidden-factor kernel on \(m_{n,i}\) rows that is \((\varepsilon,\delta)\)-DP on all neighboring factor inputs because every input row is inserted into at most one global row; prove exact identity with the common ideal mixture experiment off overflow and risk discrepancy at most \(\eta_0\). | `step_001`, `step_009`, `step_010`, `step_011` | Primitive: `assump:canonical-product`, `assump:countably-coded-evaluation`, `assump:global-privacy-range`, `assump:candidate-delta-budget`; derived: fixed priors, eligibility, overflow | Make the simulator total/measurable before reading unavailable rows; preserve replacement adjacency for nonrealizable labels; avoid properness/quotient-output assumptions; fix all other tasks before the learner call. | Direct sequential one-use embedding, measurable finite-evaluation postprocessing, input-independent overflow branch, and identity coupling. | Eligible unrestricted factor learners and same-target coupling. | Candidate lower objective: exact \(n,m_{n,i},\varepsilon,\delta,\eta_0\), pointwise privacy and expected exact-risk coupling, fixed candidate. | PENDING |
| `step_013` | Draw all factor tasks from their fixed priors in one common experiment and prove \(\mathbb ER_D(h_{A_n},c)>(1-w_L)(1/8-\eta_0)\) by applying each factor prior to the corresponding hidden learner and summing exact marginal risks, regardless of joint output dependence. | `step_001`, `step_009`, `step_010`, `step_011`, `step_012` | Primitive: `assump:canonical-product`; derived: exact risk identity, hard mass, priors, coupling | Ensure all marginal lower bounds concern one prior-before-learner experiment and that overflow is charged once per weight, not union bounded. | Finite product priors, marginal equality, finite linearity, nonnegative low-factor risks. | Exact global expected-risk lower certificate. | Candidate lower objective: explicit \(w_L,\eta_0\), expected exact global risk, fixed candidate; no independence or support hidden. | PENDING |
| `step_014` | Use the exact rational gap to contradict the PAC expectation ceiling under \(n<c_{\rm low}M\), extract a deterministic full-product target and allowed arbitrary-support mixture \(D\) with masses \(\pi_i\) for which \(\Pr[R_D>1/16]>1/16\), and conclude \(n\ge c_{\rm low}M\). | `step_007`, `step_009`, `step_013` | Primitive: `assump:candidate-delta-budget`; derived: VC, hard-mass, and global expected-risk certificates | Convert a strict averaged expectation lower bound to the exact failure event without changing candidate, metric, or improper learner scope. | Bounded-loss inequality, exact rational arithmetic, finite averaging/witness extraction. | Candidate-wise unrestricted lower theorem. | Candidate lower objective: exact \(n,M,(m_{n,i}),\delta\) admissibility, impossibility mode converted to PAC failure, fixed candidate. | PENDING |
| `step_015` | Assemble: measurable global upper kernel/privacy/PAC theorem, public quota rate, candidate-wise unrestricted lower theorem, and the conditional \(n_*\) sandwich. Prove explicitly that \(k=1\) gives the measurable quotient-first Yan upper learner at the same quota order and the unrestricted VC/ALMM lower baseline with zero overflow. | `step_001`, `step_003`, `step_005`, `step_006`, `step_014` | Primitive assumptions only through accepted dependencies; `assump:candidate-delta-budget` used only for the lower candidate and conditional sandwich | Keep arbitrary-\(\delta\) upper and candidate-wise lower scopes distinct; do not drop the first delta conjunct or weaken baselines in specialization. | Direct theorem assembly and sample-complexity definition. | Exact formalized goal. | All three rate objectives: preserve exposed variables, universal hidden constants, high-probability/pointwise/impossibility modes, fixed-sample/candidate horizons, exact risk, and conditional-only \(n_*\) substitution. | PENDING |

## Dependency Notes

The graph is acyclic and every edge points to an earlier stable ID. The upper chain is
\[
\texttt{step\_001}\to\texttt{step\_002}\to\texttt{step\_003},
\qquad
(\texttt{step\_002},\texttt{step\_004})\to\texttt{step\_005},
\qquad
\texttt{step\_001}\to\texttt{step\_006},
\]
and its three outputs meet only at `step_015`. The lower chain first separates the additive and iterated-log sources,
\[
\texttt{step\_001}\to\texttt{step\_007},
\qquad
\texttt{step\_001}\to\texttt{step\_008},
\]
then combines them in `step_009`. The quotient extension from `step_001` and the factor source/calibration feed `step_010`, so hard priors are produced before the simulators in `step_012`; overflow is independently produced in `step_011`; and only then does `step_013` form the common product-prior risk bound. `step_014` discharges the local contradiction hypothesis and exports the exact candidate-wise theorem. No final theorem, PAC event, generated condition, or simulator property is used to prove its own producer.

The upper and lower objects meet only in final assembly. In particular, the quotient-coded output restriction is never imposed on the lower learner; finite witness restriction is deterministic postprocessing used solely inside the exact ALMM/minimax reduction. Likewise, finite-support lower hard tasks do not narrow the upper arbitrary-distribution quantifier or the final lower learner quantifier.

## Blockers

None. The high-risk obligations are explicit and have current-setting-compatible sources. In particular, the predecessor's raw-space measurable-kernel obstruction is removed at the primitive level by the finite/countable discrete evaluation quotient, while all remaining Yan, ALMM, privacy, occupancy, rate, minimax, overflow, and one-use obligations remain localized as proof steps rather than assumptions.
