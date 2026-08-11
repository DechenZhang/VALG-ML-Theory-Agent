# Proof Sketch

## Formalized Setting

The branch is in exact-goal mode. Let `A` be an arbitrary, possibly improper and computationally unbounded, distribution-free realizable PAC kernel satisfying `assump:minor-table`, `assump:unrestricted-private-pac`, and `assump:fixed-parameter-scale`. Put
\[
n=\left\lceil\frac{2m}{k}\right\rceil+12,
\qquad
\mathcal E_{n,N}=[N]\times[N]^{9n},
\]
with an experiment `e=(t,U)` interpreted through the uniform labeled empirical distribution `Q_e` from `setting.md`. All adjacency below is replacement adjacency on ordered samples. Every output restriction is measurable by the coordinate-measurability convention in `setting.md`.

For brevity, throughout this sketch write
\[
R_n(B,e):=\mathcal R_n(B,e)
\]
for the finite-experiment expected zero-one risk defined in `setting.md`.

The hard prior in `(HP)` is not an assumption. It must be produced from the finite empirical threshold obstruction before the hidden-arm construction is allowed to use it.

## Formalized Goal

Prove that universal constants `c,c_delta>0` and `N_0>=2` exist such that every learner in the formalized setting satisfies
\[
m\ge c k\log^*N.
\]
The proof must retain arbitrary outputs, exact `(epsilon_0,delta_m)` privacy in the hidden-arm reduction, fixed high-probability PAC parameters `alpha_0=1/128` and `beta_0=1/32`, and the exposed approximate-DP scale `delta_m <= c_delta/(m^2 log(em))` for every `0<epsilon_0<=1`.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

The selected framework is **Active Alon empirical-threshold proof, finite minimax, and iid hidden-arm reduction** from `technical_survey.md`. It has four blocks.

1. **Source-to-finite-game block.** Given an `n`-sample threshold kernel `B`, postprocess its arbitrary output to the finite cube `{0,1}^{[N]}`. If `B` had expected risk below `1/20` on every `e in E_{n,N}`, turn it into an empirical learner on a `9n`-record database by sampling `n` rows with replacement. The corrected Bun et al. secrecy-of-the-sample calculation preserves `(epsilon,delta)` for every `epsilon<=1`. Re-run the active Alon proof at expected empirical loss `1/20`, not by invoking its displayed theorem as a black box.
2. **Algorithm-wise hardness to hard prior.** The active Ramsey and binary-search proof gives `max_e R_n(B,e)>=1/20` for every DP kernel below a universal `a_th log^*N` sample threshold. Since the restricted DP kernels form a compact convex finite-dimensional polytope and each risk is affine, finite minimax yields one prior `Pi_{n,N,epsilon,delta}` satisfying `(HP)`. This is the first legal producer of `Pi`.
3. **Hidden-arm direct sum.** Use the derived prior to define `B_Pi`. Fixing all internal randomness maps adjacent real inputs to equal or one-record-adjacent inputs of `A`, including the overflow branch. A grand iid-pool coupling gives the ideal realizable arm mixture, while a binomial Bernstein bound controls overflow.
4. **Exchangeability and rate specialization.** Iid latent experiments make the ideal learner output conditionally independent of the hidden-arm designation. Averaging over the uniform hidden arm identifies hidden-arm risk with mixture risk, giving `(UT)<1/20`, contradicting `(HP)`. Finally choose explicit `c,c_delta,N_0`, verify the `n`-versus-`m` delta conversion, and check the `k=1` baseline.

### Audited source map

The theorem-critical source is Alon et al., *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949, audited at `<TEMP_ROOT>/d3-src/ADP.tex`.

- Active `thm:main` (`ADP.tex:225`) states the arbitrary-output threshold lower bound at `(alpha,beta)=(1/16,1/16)`, `epsilon=0.1`, and `delta=O(1/(m^2 log m))`.
- Active `lem:bun` (`ADP.tex:379`) cites Bun et al. Lemma 5.9 for the `m`-to-`9m` PAC-to-empirical conversion.
- Active `def:homog` (`ADP.tex:573`) defines the homogeneous probability list.
- The active large-homogeneous-set lemma has both labels `lem:finiteramsey` and `lem:ramsey` (`ADP.tex:590`), with active proof at lines 639--653 using active Erdos-Rado `thm:ramsey` (`ADP.tex:632`).
- Active `lem:lbhomog` (`ADP.tex:602`) is reduced to active `lem:AtoP` (`ADP.tex:669`), active `lem:reduction` (`ADP.tex:716`), and active `lem:binary` (`ADP.tex:688`, proof at lines 775--823). Active `lem:prod` (`ADP.tex:358`) supplies the finite product-DP accounting.
- `header.tex` defines `\ignore{...}` to erase its argument. Therefore the ignored duplicate draft beginning at `ADP.tex:876`, including duplicate versions of `lem:AtoP`, `lem:binary`, `thm:ramsey`, and `lem:finiteramsey`, is inactive and will not be cited or used.

The exact `9n` sampling interface is checked against Bun, Nissim, Stemmer, and Vadhan, arXiv:1504.07553, corrected 2024 source: its secrecy-of-the-sample lemma maps an `(epsilon,delta)` mechanism on `n` rows, after with-replacement subsampling from `9n` rows, to
\[
\widetilde\epsilon=\frac{2}{3}\epsilon,
\qquad
\widetilde\delta=\frac49e^{2\epsilon/3}\delta.
\]
For `epsilon<=1`, `tilde epsilon<=epsilon` and `(4/9)e^{2/3}<1`, so the empirical wrapper is `(epsilon,delta)`-DP. The wrapper's expected empirical loss is exactly `R_n(B,(t,U))` because its internal sample law is `Q_{(t,U)}^n`.

Source conventions are compatible after the bijection `x=N+1-q` and the label identification `+1 <-> 1`, `-1 <-> 0`: the branch target `tau_t(q)=1{q<=t}` becomes the active source's upper-oriented threshold `1{x>=N+1-t}`. This bijection preserves zero-one loss, uniform empirical distributions, ordered-sample replacement adjacency, and arbitrary-output restriction. The source's even balanced template is replaced, when `9n` is odd, by the fixed nearly balanced threshold template with side sizes `floor(9n/2)` and `ceil(9n/2)`; for `9n>=9` its expected-loss endpoint constants retain a positive universal gap, so parity changes constants only.

## Rate Objectives

### Objective R1: finite expected-risk threshold hard prior `(HP)`

- Objective type: structural-parameter explicit, fixed-sample, and privacy-explicit.
- Exposed variables: `n,N,epsilon,delta`; the empirical-wrapper size `M=9n`; fixed loss threshold `eta_th=1/20`.
- Hidden constants may depend on: universal numerical choices in the homogeneity mesh, Chernoff bound, Erdos-Rado bound, and finite binary-search counting argument.
- Hidden constants may not depend on: `n,N,epsilon,delta`, the threshold kernel, its output representation, or the selected experiment.
- Fixed quantities: zero-one loss, replacement adjacency, and `eta_th=1/20`.
- Probability mode: expectation jointly over the experiment prior, iid sample, and kernel randomness; the empirical proof uses deterministic inequalities plus finite-probability Chernoff events.
- Horizon mode: fixed sample; the binary-search amplification has a finite declared product size `D` and finite search depth `T`.
- Norm mode: expected zero-one risk `R_n(B,e)`.
- Required bridge or simplification obligations: prove the `n`-from-`9n` empirical wrapper, expected-loss endpoint gap at every `epsilon<=1`, `D delta` control, Ramsey-to-iterated-log conversion, arbitrary-output finite restriction, and finite minimax equality. No asymptotic `O(.)` in the public bridge may hide dependence on `epsilon` or `delta`; endpoint `epsilon=1` is used to make constants uniform.
- Baseline invariance obligations: at `k=1`, `(HP)` remains exactly the Alon unrestricted one-chain `Omega(log^*N)` obstruction up to the fixed `9` empirical-wrapper factor and universal additive/constant losses.

### Objective R2: direct-sum main theorem

- Objective type: structural-parameter explicit, fixed-sample, high-probability PAC antecedent.
- Exposed variables: `m,k,N,epsilon_0,delta_m`, with `alpha_0=1/128`, `beta_0=1/32`, and auxiliary `n=ceil(2m/k)+12`.
- Hidden constants may depend on: `a_th,a_delta,N_th` produced by R1 and the displayed universal numerical constants only.
- Hidden constants may not depend on: `C,X,m,k,N,epsilon_0,delta_m`, the learner, the minor embeddings, or the hard prior selected for these parameters.
- Fixed quantities: `alpha_0,beta_0`, zero-one loss, and replacement adjacency.
- Probability mode: the antecedent is high-probability PAC; the contradiction uses expected risk after the exact inequality `E[L]<=alpha_0+beta_0`; overflow is an independent failure event of probability at most `e^{-27/2}`.
- Horizon mode: fixed sample.
- Norm mode: zero-one population risk on the realizable mixture and one-arm empirical distributions.
- Required bridge or simplification obligations: prove `n<=15m`, `n^2 log(en)<=C_Delta m^2 log(em)`, set `c_delta<=a_delta/C_Delta`, prove `m<c k log^*N => n<a_th log^*N`, and retain the strict numerical gap `5/128+e^{-27/2}<1/20`.
- Baseline invariance obligations: for `k=1`, recover an unrestricted one-chain `Omega(log^*N)` lower bound; the hidden-arm algorithm must reduce to an ordinary threshold restriction with no overflow and no weaker conditional conclusion.

### Objective R3: approved hidden-arm auxiliary statement

- Objective type: confidence-explicit fixed-sample conditional statement.
- Exposed variables: `alpha_0` and the uniform hidden arm `J`.
- Hidden constants may depend on: only the fixed Markov multiplier `8`.
- Hidden constants may not depend on: `k,N,m` or the latent experiments.
- Fixed quantities: the ideal PAC-good event and `alpha_0=1/128`.
- Probability mode: conditional on the ideal PAC-good event and the iid latent experiment vector; probability is over the uniform hidden arm (and any remaining conditionally independent learner randomness).
- Horizon mode: fixed sample.
- Norm mode: one-arm zero-one risk.
- Required bridge or simplification obligations: first establish conditional independence of the ideal output law from `J`, then apply Markov to the nonnegative arm risks to get threshold `8alpha_0=1/16` with conditional probability at least `7/8`.
- Baseline invariance obligations: at `k=1` the sole arm has mixture risk at most `alpha_0` on the PAC-good event, so the auxiliary statement is automatically true rather than weakened.

## Assumption Provenance Objectives

- **Finite output kernel.** Derived in `step_001` by measurable postprocessing of an arbitrary hypothesis to its bit vector on `[N]`; it is not a properness assumption. Consumed by `step_005`.
- **Private `9n`-record empirical wrapper.** Derived in `step_001` from the primitive `(epsilon,delta)` privacy of a candidate threshold kernel and the cited secrecy-of-the-sample inequality. Consumed by `step_002`--`step_004`.
- **Positive endpoint and adjacent-list gap.** Derived in `step_002` from expected empirical loss below `1/20`, one-record DP, and the homogeneous-list approximation; it is not an accuracy or margin assumption. Consumed by `step_003`.
- **Finite family of pairwise-indistinguishable output laws.** Derived in `step_003` from one-record neighboring databases and arbitrary-output restriction. Consumed by `step_004`.
- **Algorithm-wise threshold obstruction.** Derived in `step_004` from the Ramsey lower bound and binary-search upper bound. Consumed by `step_005`.
- **Hard prior `Pi`.** Derived only in `step_005` by finite minimax after algorithm-wise hardness. Consumed by `step_006`--`step_009`; no earlier step may assume it.
- **Iid latent experiment vector and constructed hidden-arm kernel.** Generated in `step_006` from the derived prior and independent internal coins. Consumed by `step_007` and `step_008`.
- **Exact privacy certificate for `B_Pi`.** Derived in `step_006` transcript by transcript from `assump:unrestricted-private-pac`; consumed in the `(HP)` contradiction in `step_009`.
- **Ideal iid-mixture coupling and overflow event.** Derived in `step_007` from independent arm pools and arm indices; consumed by `step_008` and `step_009`.
- **Exchangeability identity `(EX)`, utility bound `(UT)`, and auxiliary `7/8` statement.** Derived in `step_008` from iid latent experiments, conditional independence from `J`, the PAC antecedent, and `step_007`; consumed by `step_009`.
- **Delta and sample-size admissibility.** Derived in `step_009` from `assump:fixed-parameter-scale` and deterministic inequalities; it is not added as a new theorem-facing condition.

## Mechanism-Source And Boundary Stress

### `step_001`: finite empirical wrapper

- Step ID: `step_001`
- Claim class: probability-mode conversion, source-convention wrapper, and arbitrary-output finite restriction.
- Theorem role: Converts a putatively easy finite one-arm game into exactly the empirical learner to which the active Alon proof applies.
- Mechanism source: Alon active `lem:bun` (arXiv:1806.00949, `ADP.tex:379`) together with Bun et al. arXiv:1504.07553, corrected secrecy-of-the-sample lemma and its PAC-to-empirical corollary. The output restriction is direct measurable postprocessing under the branch convention.
- Source-to-claim adequacy: On an input tuple `U in [N]^{9n}`, sample `n` indices independently and uniformly with replacement and run `B`. The sample law is exactly `Q_(t,U)^n`, hence the expected empirical error on `U` is exactly `R_n(B,(t,U))`. Bun's formula gives `(2epsilon/3,(4/9)e^{2epsilon/3}delta)` privacy, dominated by `(epsilon,delta)` for every `epsilon<=1`. Mapping `q` to `N+1-q` and `{0,1}` to `{-1,+1}` matches the active source threshold convention. Restricting an arbitrary hypothesis to `[N]` produces a bit vector and does not impose properness.
- Residual-to-target adequacy: Produced object: a kernel on the finite cube and its `9n`-record empirical wrapper. Consumed target: the active Alon empirical-proof interface in expected empirical zero-one loss. The equality `E[L_U]=R_n(B,(t,U))` has no sampling residual; privacy improves rather than incurs a residual. The only convention transfer is a loss- and adjacency-preserving bijection.
- Key positive/control term or structural source: The sample ratio `n/(9n)=1/9` makes `(4/9)e^{2/3}<1` while retaining exact iid-with-replacement sampling.
- Opposing defect terms: Multiple selections of the changed database row and arbitrary output representation. The secrecy lemma already sums all multiplicities; finite restriction removes representation without changing risk.
- Closure/dominance/absorption relation: `2epsilon/3<=epsilon` and `(4/9)e^{2epsilon/3}delta<=delta` for `epsilon<=1`; expected empirical loss equals the finite-experiment risk exactly.
- Accumulation behavior / scope compatibility: The only repeated scope is `n` with-replacement draws. All multiplicities are integrated in Bun's closed-form finite privacy bound; there is no unbudgeted composition term.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The wrapper is produced directly from a candidate kernel before the Alon proof consumes it; it assumes neither empirical hardness nor `(HP)`.
- Entry-state / first-update stress result: At the endpoint `epsilon=1`, the privacy factors are `2/3` and `(4/9)e^{2/3}<1`; at `delta=0` the wrapper remains pure DP. No iterative state is present.
- Baseline conclusion preserved: This is the same fixed-factor PAC-to-empirical bridge used in the one-chain source. It does not replace the `k=1` lower bound with a conditional claim.
- Producer-consumer provenance: Candidate `B` -> restricted kernel and empirical wrapper (`step_001`) -> endpoint/Ramsey proof (`step_002`--`step_004`) -> algorithm-wise hardness -> minimax (`step_005`).
- Null or boundary regime tested: `epsilon=1`, `delta=0`, repeated rows in `U`, repeated sampled indices, odd `9n`, and arbitrary non-threshold outputs.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without the secrecy calculation, with-replacement sampling could incur group-privacy loss and the finite experiment game would not feed the source proof.
- Repair route if source is unsupported: The cited corrected lemma supplies the exact interface; otherwise this would be an `idea/theorem-contract defect`, because changing the experiment law would change `(HP)`.

### `step_002`: expected-loss endpoint gap and homogeneous set

- Step ID: `step_002`
- Claim class: positive lower gap, arbitrary-output homogeneous structure, and parity-compatible source adaptation.
- Theorem role: Supplies the nonvacuous `Theta(1/M)` prediction-margin source used by the one-record neighboring-family construction, where `M=9n`.
- Mechanism source: Direct current-notation rederivation of Alon active `def:homog`, active `lem:reduction`, active `lem:finiteramsey`/`lem:ramsey`, and active Erdos-Rado `thm:ramsey` (`ADP.tex:573--653` and `716--748`).
- Source-to-claim adequacy: For even `M`, expected empirical loss at most `1/20` on a balanced threshold sample gives a positive-side correctness marginal at least `9/10` and a negative-side positive-prediction marginal at most `1/10`. One replacement and DP give off-sample marginals at least `e^{-epsilon}(9/10-delta)` and at most `e^{epsilon}/10+delta`. At `epsilon=1` their gap is
  \[
  g_*=\frac{9}{10e}-\frac e{10}>0.
  \]
  For odd `M>=9`, use side sizes `floor(M/2),ceil(M/2)`; each side error is at most `9/80`, leaving the still-positive uniform gap
  \[
  g_{\rm odd}=\frac{71}{80e}-\frac{9e}{80}>0
  \]
  because `71>9e^2`. Let `g_gap=min(g_*,g_odd)`. Choose the homogeneity mesh `gamma=g_gap/(100M)` and require `(1+e^{-1})delta<=g_gap/8`. The resulting homogeneous probability list has total rise at least `3g_gap/4`, so some adjacent rise is at least `3g_gap/(4M)`. The Ramsey coloring has at most `(1+ceil(1/gamma))^{M+1}=exp(O(M log(eM)))` colors, exactly the active proof's scale.
- Residual-to-target adequacy: Produced control: an adjacent homogeneous-list rise on the same source-domain prediction marginals consumed by `step_003`. The only residuals are two mesh errors and the two DP additive errors, bounded by `2gamma+(1+e^{-1})delta<g_gap/4`. No population-to-empirical or surrogate-target residual remains.
- Key positive/control term or structural source: The strict endpoint inequality `e^{-1}(9/10)>e(1/10)`, or its nearly balanced `71/80,9/80` version.
- Opposing defect terms: Approximate-DP additive error, homogeneity quantization error, odd-parity imbalance, and telescoping over at most `M` intervals.
- Closure/dominance/absorption relation: Fix universal `a_delta` small enough that the empirical privacy parameter satisfies the displayed delta inequality; choose `gamma` as above; divide the remaining constant gap by at most `M` list increments.
- Accumulation behavior / scope compatibility: Ramsey extraction is finite. Quantization error does not accumulate with domain size; it appears only at the two endpoint comparisons. Telescoping across `M` increments divides the fixed positive gap and introduces no adversarial additive accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Expected loss comes from `step_001`; DP is primitive for the candidate kernel and inherited by the wrapper; Ramsey homogeneity is proved for every kernel. No gap or hard prior is assumed.
- Entry-state / first-update stress result: On the boundary `epsilon=1`, the first one-record comparison already leaves `g_gap>0` before the adjacent rise is consumed. At `delta=0` the gap is larger. Odd `M=9` is covered by the `9/80` bound.
- Baseline conclusion preserved: The active one-chain mechanism is retained; only universal constants and the fixed nearly-balanced template change.
- Producer-consumer provenance: Expected empirical wrapper (`step_001`) -> endpoint marginals -> one-record DP transfer -> homogeneous list and adjacent rise (`step_002`) -> `step_003`.
- Null or boundary regime tested: `epsilon=1`, `delta=0`, `M` odd, arbitrary randomized outputs, and the minimal wrapper size `M=9`.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. If `epsilon` were allowed beyond the root of `(1-rho)e^{-epsilon}=rho e^{epsilon}`, the source gap could vanish and the current theorem would not follow.
- Repair route if source is unsupported: The direct inequalities support the current range. Failure of positivity at an allowed endpoint would be an `idea/theorem-contract defect`, not future step work.

### `step_003`: exact one-record neighboring family

- Step ID: `step_003`
- Claim class: exact neighboring-family construction and structural left/right separation.
- Theorem role: Converts the adjacent homogeneous-list gap into the finite family consumed by binary search.
- Mechanism source: Alon active `lem:AtoP` and `lem:reduction` (`ADP.tex:669--770`), with the moving-record direction and midpoint indices written consistently in current notation.
- Source-to-claim adequacy: Moving one distinguished record inside a large homogeneous interval produces databases `S_x` such that every pair differs in exactly one record. If the adjacent rise is between interior ranks, use the two-sided interval between the neighboring fixed records; if it is `p_1-p_0` or `p_M-p_{M-1}`, use the corresponding one-sided prefix or suffix interval. In every case the other `M-1` records lie outside the varying interval and the fixed rank-label template remains threshold-realizable. For the adjacent rise `p_i-p_{i-1}`, set `r=(p_i+p_{i-1})/2`. Homogeneity gives left marginals at most `r-a_0/M` and right marginals at least `r+a_0/M` with, for example, the universal choice `a_0=g_gap/100`. Restricting arbitrary outputs to the interval therefore gives pairwise `(epsilon,delta)`-indistinguishable laws `P_x` with the exact margin consumed by `step_004`.
- Residual-to-target adequacy: Produced laws and consumed binary-search coordinates are the same restricted output bit vectors. The midpoint residual is at most one homogeneity mesh error on each side; the adjacent rise from `step_002` dominates it at scale `a_0/M`.
- Key positive/control term or structural source: The adjacent rise `3g_gap/(4M)` from `step_002` and the fact that all `S_x` share `M-1` fixed records.
- Opposing defect terms: Two homogeneity mesh errors, endpoint intervals, and arbitrary output patterns.
- Closure/dominance/absorption relation: Half the adjacent rise minus `gamma=g_gap/(100M)` is larger than `a_0/M`; endpoint ranks use one-sided intervals with the same rank calculation.
- Accumulation behavior / scope compatibility: No repeated scope. Each law is generated by one database and every pair is related by one replacement.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The family uses only the already-produced homogeneous rise and primitive wrapper DP; it assumes neither the binary contradiction nor `(HP)`.
- Entry-state / first-update stress result: At the first moved position, points to its left have rank `i-1` and points to its right rank `i`; this remains true for `i=1` and `i=M` under the one-sided construction.
- Baseline conclusion preserved: This is the active arbitrary-output one-chain neighboring-family mechanism, with no properization.
- Producer-consumer provenance: Adjacent rise (`step_002`) -> moving-record laws (`step_003`) -> binary/Ramsey contradiction (`step_004`).
- Null or boundary regime tested: Endpoint rises `p_1-p_0` and `p_M-p_{M-1}`, `delta=0`, `epsilon=1`, and arbitrary bit-vector outputs.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. If two family databases differed in more than one record, the exact pairwise privacy interface would fail.
- Repair route if source is unsupported: The current-notation construction resolves the active source's indexing typos under the same setting; failure would be a `sketch/interface defect` only if another one-record interval layout repaired it.

### `step_004`: binary search, Ramsey closure, and threshold constants

- Step ID: `step_004`
- Claim class: finite product accumulation, binary-search counting, and iterated-log lower bound.
- Theorem role: Converts the `step_003` family into an algorithm-wise impossibility below `a_th log^*N` and exports all `(HP)` threshold constants.
- Mechanism source: Alon active `lem:binary`, `lem:lbhomog`, `lem:prod`, active `lem:finiteramsey`/`lem:ramsey`, and active Erdos-Rado `thm:ramsey` (`ADP.tex:590--823`), with constants rederived from `a_0`.
- Source-to-claim adequacy: For `eta=a_0/M`, choose finite
  \[
  T=\left\lceil b_T M^2\log^2(eM)\right\rceil,
  \qquad
  D=\left\lceil 2\eta^{-2}\log(6T)\right\rceil,
  \]
  with a universal `b_T` large enough that `T log 2>D+log 2` for every `M>=9`. Then `D<=b_D M^2 log(eM)` for a universal `b_D`. Chernoff plus a union bound makes the correct binary-search leaf event have probability at least `2/3`; active `lem:prod` gives `(D epsilon,D delta)` indistinguishability. At `epsilon<=1` and `D delta<=1/6`, every one of `2^T` disjoint leaf events has probability at least `(1/2)e^{-D}` under any reference law, contradicting total mass because `2^{T-1}e^{-D}>1`. Thus a homogeneous set has size at most `2^{O(M^2 log^2(eM))}`. The active Ramsey lower bound `log^{(M)}N/2^{O(M log(eM))}` then implies `M>=b_0 log^*N` for universal `b_0>0` and all `N>=N_emp`. Set `a_th=b_0/9` (decrease it further to at most `1/9` if needed) because `M=9n`. If the empirical proof needs `delta<=d_0/(M^2log(eM))`, choose
  \[
  a_\delta\le \frac{d_0}{81(1+\log9)},
  \]
  as well as the smaller constants required by the endpoint-gap and `Ddelta` inequalities, since `M^2log(eM)<=81(1+log9)n^2log(en)`. Enlarge `N_th` beyond `N_emp` so the Ramsey template has at least `M+1` distinct domain points in every admitted regime.
- Residual-to-target adequacy: The produced margin and consumed binary-search coordinate are predictions on the same restricted output bit vector from `step_003`. Chernoff error is at most `1/3`; privacy leakage is exactly `D delta<=1/6`; the likelihood factor is at worst `e^D`. Each residual is below the constant scale required for the counting contradiction.
- Key positive/control term or structural source: The `eta=a_0/M` left/right marginal separation from `step_003`, combined with `T` growing by an extra `log(eM)` over `D`.
- Opposing defect terms: Chernoff failure across `T` adaptive probes, product privacy leakage `D delta`, likelihood loss `e^{D epsilon}`, homogeneity mesh error, and the Ramsey color denominator.
- Closure/dominance/absorption relation: `D eta^2>=2log(6T)` controls all probe failures; `D delta<=1/6` leaves event mass at least `1/2`; `epsilon<=1` yields `e^{-D epsilon}>=e^{-D}`; `T log2>D+log2` makes the disjoint-event lower masses sum above one. The Ramsey and binary cardinality inequalities yield `log^*N<=M+log^*(2^{O(M^2log^2(eM))})+O(1)`, from which universal `b_0,N_emp` are selected; `M=9n` gives `a_th=b_0/9`, and the displayed `81(1+log9)` comparison gives the `n`-scale `a_delta`.
- Accumulation behavior / scope compatibility: The only accumulation is over the declared finite product size `D` and search depth `T`. The adversarial-sign additive DP errors accumulate linearly as `D delta` by active `lem:prod` and are capped at `1/6`; the `T` Chernoff defects are union-bounded through the explicit `log(6T)` choice. There is no all-time or asymptotic recurrence.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The family is produced by `step_003` before binary search; the binary bound does not assume threshold hardness or `(HP)`. Ramsey is algorithm-independent.
- Entry-state / first-update stress result: The first product draw and first binary probe already use a positive `eta`; at `epsilon=1` the reference-event lower bound is `(1/2)e^{-D}` and remains active. At `delta=0`, the leakage term vanishes. No stationary or unactivated state is possible.
- Baseline conclusion preserved: Combining the two active source halves yields the same unrestricted `Omega(log^*N)` one-chain conclusion, with only universal constant changes.
- Producer-consumer provenance: Neighboring output family (`step_003`) -> finite binary/Ramsey contradiction and constants (`step_004`) -> minimax (`step_005`).
- Null or boundary regime tested: `epsilon=1`, `delta=0`, smallest `M>=9`, arbitrary output bit patterns, and fixed `M` with arbitrarily large `N`.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without `T log2>D epsilon`, binary counting gives no contradiction; without `D delta<2/3`, approximate-DP leakage can erase every leaf mass.
- Repair route if source is unsupported: The explicit finite choices establish both relations. A failure would be a `sketch/interface defect` only if different finite `D,T` choices repaired it under the same source; otherwise it would be an `idea/theorem-contract defect`.

### `step_005`: finite minimax hard prior

- Step ID: `step_005`
- Claim class: algorithm-independent lower threshold and generated structural certificate.
- Theorem role: Produces the sole hard prior allowed to be consumed by the hidden-arm reduction.
- Mechanism source: Finite von Neumann minimax applied directly after `step_004`; compactness is finite-dimensional and requires no external asymptotic theorem.
- Source-to-claim adequacy: After restricting outputs, a kernel has coordinates `K(y|s)` for finite `s in ([N]x{0,1})^n` and `y in {0,1}^N`. Nonnegativity, row sums, and the finitely many eventwise DP inequalities define a nonempty compact convex polytope `K_DP`. Each `r_e(K)=R_n(K,e)` is continuous affine. Since `step_004` gives `min_{K in K_DP} max_e r_e(K)>=1/20`, finite minimax has the orientation
  \[
  \min_{K\in K_{\rm DP}}\max_{e\in\mathcal E_{n,N}}r_e(K)
  =\max_{\Pi\in\Delta(\mathcal E_{n,N})}
    \min_{K\in K_{\rm DP}}\mathbb E_{e\sim\Pi}r_e(K).
  \]
  Compactness of both finite polytopes makes the outer maximum attained. Any arbitrary-output kernel induces one such restricted kernel, and every finite restricted kernel is an allowed arbitrary hypothesis kernel, so the infimum in `(HP)` is the displayed minimum.
- Residual-to-target adequacy: The produced prior is on exactly `E_{n,N}`, and the consumed loss is exactly `R_n`; there is no relaxation, discretization, or surrogate game. The threshold value remains exactly `1/20` under minimax.
- Key positive/control term or structural source: The algorithm-wise lower value from `step_004` plus compact convex finiteness.
- Opposing defect terms: Quantifier reversal, nonattainment, and arbitrary output spaces. Finiteness/compactness and the restriction equivalence remove all three.
- Closure/dominance/absorption relation: The finite zero-sum game equality transfers `min max>=1/20` to an attained `max min>=1/20` without loss.
- Accumulation behavior / scope compatibility: No repeated scope; one finite game.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The prior is produced only after proving hardness for every kernel. Neither `step_001` nor `step_004` assumes a prior or average-case hardness.
- Entry-state / first-update stress result: At `delta=0` or `epsilon=1` the corresponding DP polytope remains compact and nonempty. The zero kernel is impossible because rows must sum to one; the game value is supplied independently by `step_004`.
- Baseline conclusion preserved: For `k=1`, the prior is the finite minimax form of the same unrestricted one-chain obstruction.
- Producer-consumer provenance: Algorithm-wise hardness (`step_004`) -> attained `Pi` (`step_005`) -> hidden-arm construction (`step_006`) -> final `(HP)` contradiction (`step_009`).
- Null or boundary regime tested: Pure DP, endpoint `epsilon=1`, deterministic kernels as extreme points, and arbitrary randomized kernels in their convex hull.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. A learner-dependent experiment cannot be sampled before the hidden arm is chosen and would make the reduction circular.
- Repair route if source is unsupported: Finite compact minimax supplies the interface. Without it the issue would be a `sketch/interface defect` only if another same-game quantifier bridge existed.

### `step_006`: exact one-record privacy of the hidden-arm kernel

- Step ID: `step_006`
- Claim class: exact privacy preservation and arbitrary-output compatibility.
- Theorem role: Makes `B_Pi` an admissible competitor in `(HP)` with the inherited parameters, not degraded group-privacy parameters.
- Mechanism source: Direct transcriptwise derivation from `assump:unrestricted-private-pac`, data-independent internal coins, disjoint arm embeddings from `assump:minor-table`, and postprocessing.
- Source-to-claim adequacy: Fix all internal randomness of `B_Pi` upstream of the call to `A`: `J`, the latent other-arm experiments, arm indices, and simulated records. Leave `A` as its original randomized kernel. The overflow predicate depends only on arm indices. On overflow both adjacent inputs return the same `g_0`. Off overflow, external record `z_l` is inserted in at most one position; if `l>R` the two constructed inputs to `A` are equal, and if `l<=R` they differ in exactly that one position. Thus for each fixed upstream transcript, `A` followed by restriction obeys the two `(epsilon_0,delta_m)` inequalities. Averaging those inequalities over the common input-independent transcript preserves the same pair exactly.
- Residual-to-target adequacy: Produced control and consumed target are both replacement-adjacency `(epsilon_0,delta_m)` DP. There is no composition, group size, amplification, or delta residual.
- Key positive/control term or structural source: Injective use of the distinct real records `z_1,...,z_R`, once each.
- Opposing defect terms: Repeated arm occurrences, overflow, other-arm randomness, arbitrary learner outputs, and a changed external record not used by the simulation.
- Closure/dominance/absorption relation: One changed external record causes zero or one changed learner-input record; overflow produces a common constant; all other randomness is input-independent; restriction is postprocessing.
- Accumulation behavior / scope compatibility: Across `m` constructed positions, the changed record's usage count is deterministically at most one. Hence the privacy charge is one DP step, not an accumulated sum.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The privacy certificate uses only primitive learner privacy and the explicit construction. It does not use utility, exchangeability, or `(HP)`'s conclusion.
- Entry-state / first-update stress result: If `R=0`, both outputs depend on no real record; if `R>n`, both return `g_0`; if the changed index exceeds `R`, inputs to `A` are equal; otherwise exactly one replacement activates primitive DP.
- Baseline conclusion preserved: At `k=1`, `R=m<n`, so the construction uses the first `m` external records once each and retains exact privacy.
- Producer-consumer provenance: Prior (`step_005`) + primitive learner (`assump:unrestricted-private-pac`) -> `B_Pi` and privacy certificate (`step_006`) -> `(HP)` admissibility in `step_009`.
- Null or boundary regime tested: `R=0`, `R=n`, `R>n`, changed unused record, `delta_m=0`, `epsilon_0=1`, and arbitrary improper output.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Any reuse of a real record would require group-privacy accounting and destroy the exact target interface.
- Repair route if source is unsupported: The transcript map proves exact locality. A construction that reused records would be an `idea/theorem-contract defect` because changing privacy parameters violates the goal.

### `step_007`: grand-pool coupling and overflow

- Step ID: `step_007`
- Claim class: exact finite coupling, realizability transfer, and uniform overflow control.
- Theorem role: Produces the ideal iid learner input and proves that it differs from the constructed hidden-arm input only on one explicitly bounded event.
- Mechanism source: Direct iid-pool coupling; `assump:minor-table` for realizability; iid latent experiments and `B_Pi` from `step_006`; Bernstein's binomial inequality.
- Source-to-claim adequacy: Conditional on `e_1,...,e_k`, generate an infinite iid pool from each `Q_{e_j}` and iid uniform arm indices. Taking the next unused pool record from the selected arm makes the ideal sample `bar S` iid from
  \[
  \bar Q_{\boldsymbol e}=\frac1k\sum_{j=1}^k(\phi_j)_\#Q_{e_j},
  \]
  which is realized by `c_(t_1,...,t_k)` under `assump:minor-table`. Couple the first `R` records of the hidden pool to the real input records. Then the constructed and ideal learner inputs agree record for record whenever `R<=n`. For `R~Bin(m,1/k)` and `mu=m/k>0`, the implication `R>n => R-mu>mu+12` and Bernstein give
  \[
  p_{\rm ov}\le
  \exp\!\left(-\frac{(\mu+12)^2}{2(\mu+(\mu+12)/3)}\right)
  \le e^{-27/2},
  \]
  because differentiation shows that the displayed exponent decreases on `0<=mu<=6`, increases on `mu>=6`, and equals its global minimum `27/2` at `mu=6`.
- Residual-to-target adequacy: The constructed and ideal learner inputs, and hence their postprocessed hidden-arm outputs, are identical off overflow. For zero-one loss their expected-risk difference is therefore at most `p_ov`; no per-record approximation remains.
- Key positive/control term or structural source: The `+12` reserve above twice the hidden-arm mean and the next-unused-record pool coupling.
- Opposing defect terms: Random hidden-arm occupancy, repeated occurrences of an arm, and exhaustion of the `n` real hidden-pool records.
- Closure/dominance/absorption relation: On `R<=n`, sequential pool identities close the coupling exactly. On `R>n`, bounded loss charges at most one, and Bernstein absorbs the entire defect into `e^{-27/2}`.
- Accumulation behavior / scope compatibility: The coupling spans exactly `m` positions. Pool consumption is a finite preservation relation: the first `R` hidden-pool records equal the used real records and every simulated position uses the same next record in both samples. The sole defect is the one overflow event and does not accumulate per position.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The latent vector and kernel are produced in `step_006`; the pools and arm indices are then generated directly. This step uses neither exchangeability nor PAC utility.
- Entry-state / first-update stress result: If `R=0`, both samples use only simulated records. At the first hidden-arm occurrence, both use the first hidden-pool record. If `k=1`, `R=m<n` deterministically, so overflow is impossible.
- Baseline conclusion preserved: At `k=1`, the ideal and constructed learner inputs agree surely and the mixture is the single threshold experiment.
- Producer-consumer provenance: Iid latent vector and `B_Pi` (`step_006`) -> grand pools, ideal sample, and `(OF)` (`step_007`) -> exchangeability and utility (`step_008`) -> contradiction (`step_009`).
- Null or boundary regime tested: `k=1`, `R=0`, `R=n`, `R>n`, minimal `mu=6`, and deterministic learner output.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without an exact off-overflow coupling, PAC utility for the ideal iid mixture would not control the constructed threshold kernel.
- Repair route if source is unsupported: The explicit next-unused-record coupling supplies the interface. A construction requiring reuse of hidden records would be an `idea/theorem-contract defect` because it would also compromise `step_006` privacy.

### `step_008`: iid exchangeability and utility

- Step ID: `step_008`
- Claim class: conditional exchangeability, probability-mode conversion, and quantitative utility threshold.
- Theorem role: Transfers PAC utility on the ideal realizable mixture to prior-average hidden-arm risk strictly below the hard-prior value.
- Mechanism source: Iid latent experiments from `step_006`; ideal iid mixture and `(OF)` from `step_007`; `assump:unrestricted-private-pac`, `assump:minor-table`, and `assump:fixed-parameter-scale`; conditional expectation, bounded loss, and Markov's inequality.
- Source-to-claim adequacy: Under the outer average `e~Pi` in the finite game, inserting `e` at coordinate `J` and drawing all other coordinates from `Pi` makes the ordered latent vector `e_1,...,e_k` iid from `Pi` and independent of uniform `J`. Conditional on that ordered vector, the ideal sample and `A`'s coins are generated without `J`, so the ideal output `h` is conditionally independent of `J`. Pointwise for every realized vector and hypothesis, averaging the arm loss over `J` therefore gives
  \[
  \mathbb E_J L_{Q_{e_J}}(h\circ\phi_J)
  =L_{\bar Q_{\boldsymbol e}}(h).
  \tag{EX}
  \]
  The mixture is realizable by `step_007`, so the fixed PAC guarantee and bounded loss give
  \[
  \mathbb E L_{\bar Q_{\boldsymbol e}}(h)
  \le \alpha_0+\beta_0=\frac5{128}.
  \]
  Adding the coupling defect gives
  \[
  \mathbb E_{e\sim\Pi}R_n(B_\Pi,e)
  \le \frac5{128}+e^{-27/2}<\frac1{20}.
  \tag{UT}
  \]
  On the ideal PAC-good event, `(EX)` and Markov give conditional probability at least `7/8` over the uniform hidden designation that its arm risk is at most `8alpha_0=1/16`.
- Residual-to-target adequacy: The arm losses in `(EX)` are exactly the experiment risks consumed by `(HP)` after restriction. PAC failure contributes at most `beta_0`, and `step_007` contributes only `p_ov`; no distribution-shift or surrogate-loss term occurs.
- Key positive/control term or structural source: Iid common latent experiments make the hidden designation ancillary to the ideal learner input and output, while `alpha_0+beta_0+p_ov` leaves a strict gap below `1/20`.
- Opposing defect terms: PAC failure, overflow, highly nonuniform individual arm risks, and potential dependence between the hidden designation and latent experiments.
- Closure/dominance/absorption relation: Bounded loss converts the high-probability PAC statement to `alpha_0+beta_0`; `(OF)` adds at most `e^{-27/2}`; `5/128+e^{-27/2}<1/20`. Iid generation excludes hidden-designation dependence rather than estimating it, and Markov absorbs arm-to-arm nonuniformity at factor `8`.
- Accumulation behavior / scope compatibility: There is one finite average over `k` arms, one PAC failure event, and one overflow event. Neither error is multiplied by `k` or `m`.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `(EX)` is derived from the already-generated iid experiment vector and ideal learner, then used to derive `(UT)`; neither identity is assumed in defining `B_Pi` or its prior.
- Entry-state / first-update stress result: At `k=1`, `J=1`, `(EX)` is the identity between the sole-arm and mixture risks and overflow is zero. On a PAC-failure outcome, bounded loss charges exactly the allowed unit worst case.
- Baseline conclusion preserved: At `k=1`, `(UT)` reduces to the ordinary one-chain PAC-to-expected-risk upper bound, with no conditional weakening.
- Producer-consumer provenance: Iid latent vector (`step_006`) + ideal coupling and `(OF)` (`step_007`) + fixed PAC parameters -> `(EX)`, `(UT)`, and the auxiliary `7/8` certificate (`step_008`) -> contradiction (`step_009`).
- Null or boundary regime tested: `k=1`, PAC failure, zero overflow, deterministic learner output, and highly nonuniform individual arm risks.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. A random permutation without iid common experiments can correlate `J` with the latent vector and invalidate `(EX)`; without `(EX)`, mixture utility need not control the hidden arm.
- Repair route if source is unsupported: The iid common-prior construction supplies the required symmetry. Requiring a new distributional symmetry assumption would be an `idea/theorem-contract defect`.

### `step_009`: rate specialization and baseline recovery

- Step ID: `step_009`
- Claim class: explicit-rate bridge, theorem closure, and baseline specialization.
- Theorem role: Verifies `(HP)` admissibility and converts its `n`-sample obstruction into the public `m>=c k log^*N` conclusion.
- Mechanism source: Deterministic arithmetic from `setting.md`, R1 constants from `step_005`, and the contradiction between `step_005` and `step_008`.
- Source-to-claim adequacy: For `m>=1`, `n<=2m+13<=15m`, hence
  \[
  n^2\log(en)\le225m^2\log(15em)
  \le C_\Delta m^2\log(em),
  \quad C_\Delta=225(1+\log15).
  \]
  Set `c_delta=a_delta/C_Delta` and `c=a_th/4`. Choose `N_0>=N_th` so that `log^*N_0>26/a_th`. If `m<c k log^*N`, then
  \[
  n\le 2m/k+13<(a_{\rm th}/2)\log^*N+13
  <a_{\rm th}\log^*N.
  \]
  Thus `(HP)` applies to the exactly private `B_Pi`, while `(UT)` violates it.
- Residual-to-target adequacy: The same inherited `delta_m` is compared with the threshold condition; it is never renamed or replaced. The additive `13` is dominated explicitly by the `N_0` choice, and no term is dropped asymptotically.
- Key positive/control term or structural source: The strict utility gap below `1/20` and the positive hard-prior threshold at `1/20`.
- Opposing defect terms: Ceiling/additive `12`, `n`-versus-`m` delta scaling, and fixed small `N`.
- Closure/dominance/absorption relation: The displayed inequalities dominate every defect under the explicit choices `c,c_delta,N_0`.
- Accumulation behavior / scope compatibility: No repeated scope; fixed-sample deterministic specialization.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `a_th,a_delta,N_th` are produced by `step_005`; `(UT)` is produced by `step_008`; the final step only compares their already-established interfaces.
- Entry-state / first-update stress result: At `k=1`, `n=2m+12`, `R=m`, and overflow never occurs. The same constants give `m>=c log^*N`, not a stopped or conditional surrogate.
- Baseline conclusion preserved: Exactly the unrestricted one-chain `Omega(log^*N)` scale, with universal fixed-factor and additive losses already exposed.
- Producer-consumer provenance: R1 constants (`step_005`) + privacy (`step_006`) + utility (`step_008`) + primitive parameter scale -> main theorem (`step_009`).
- Null or boundary regime tested: `k=1`, `m=1`, `epsilon_0=1`, `delta_m=0`, and `N=N_0`.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes. Without either deterministic conversion, `(HP)` may be inapplicable even though the hidden-arm kernel is private and useful.
- Repair route if source is unsupported: All conversions are explicit. Any need to weaken the delta scale or the `k=1` conclusion would be an `idea/theorem-contract defect`.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Finite restricted threshold kernel and private `9n`-record empirical wrapper with expected empirical loss `R_n(B,(t,U))` | `step_001`; Alon active `lem:bun`; Bun secrecy lemma | Candidate `(epsilon,delta)`-DP kernel, finite `[N]`, coordinate measurability, uniform `9n`-multiset experiment | Repeated selection of a changed row is controlled by Bun's exact formula; arbitrary output representation is removed by postprocessing; no uncontrolled defect | Produced empirical error and consumed Alon empirical loss are identical: `E[L_U]=R_n`; order reversal preserves the same risk and adjacency | `2epsilon/3<=epsilon`; `(4/9)e^{2epsilon/3}delta<=delta` for `epsilon<=1` | Fixed sampling ratio `1/9` | `step_002`, `step_003`, `step_004` | None |
| Homogeneous-list total rise at least `3g_gap/4` and one adjacent rise at least `3g_gap/(4M)` | `step_002` | Expected empirical loss `<=1/20` from `step_001`; one-record DP; active homogeneous-set source; `M=9n>=9` | Approximate-DP error, two mesh errors, odd parity; all controlled by `a_delta` and `gamma=g_gap/(100M)`; no fixed empirical defect remains | Produced and consumed quantities are marginals of the same restricted hypothesis at source-domain coordinates; no surrogate metric | `(1+e^{-1})delta+2gamma<g_gap/4`; telescope the remaining gap across at most `M` entries | `g_gap=min(9/(10e)-e/10,71/(80e)-9e/80)>0` | `step_003` | None |
| Pairwise one-record-indistinguishable output family with left/right margin `eta=a_0/M` | `step_003` | Adjacent list rise from `step_002`; homogeneous interval; primitive wrapper DP | Homogeneity deviation is allocated inside `a_0`; moving coordinate is one replacement; arbitrary outputs are restricted to the interval | The family coordinates are exactly the bits queried by binary search; margin is on the same target laws and coordinates | Choose universal `a_0>0` below the post-mesh adjacent rise; every `S_x,S_x'` differs in one record | Positive `g_gap` from `step_002` | `step_004` | None |
| Algorithm-wise finite-game lower value `max_e R_n(B,e)>=1/20` whenever `n<a_th log^*N` | `step_004` | Neighboring family from `step_003`; active `lem:prod`, `lem:binary`, Ramsey chain | Chernoff error controlled by `D eta^2`; privacy defect by `Ddelta`; likelihood by `e^{Depsilon}`; color denominator explicit; no uncontrolled defect | Contradiction applies to the empirical wrapper whose loss equals finite-game risk by `step_001` | `Deta^2>=2log(6T)`, `Ddelta<=1/6`, `epsilon<=1`, `Tlog2>D+log2`; combine Ramsey lower and binary upper sizes | Expected-loss threshold `1/20`; endpoint gap `g_gap`; finite disjoint-event mass budget one | `step_005` | None |
| `(HP)` prior `Pi_{n,N,epsilon,delta}` with value at least `1/20` against every arbitrary-output DP kernel | `step_005` | Algorithm-wise lower value from `step_004`; finite input/experiment/output sets; DP inequalities | Quantifier orientation and attainment controlled by compact convex finite polytopes; no approximation or discretization defect | Produced prior is on exactly `E_{n,N}` and consumed risk is exactly `R_n` | `min_K max_e r_e=max_Pi min_K E_Pi r_e`; arbitrary-output restriction is onto the finite kernel class relevant to risk | Lower game value `1/20` from `step_004` | `step_006`, `step_007`, `step_008`, `step_009` | None |
| Hidden-arm kernel `B_Pi` with exact inherited `(epsilon_0,delta_m)` privacy and arbitrary output on `[N]` | `step_006` | `Pi` from `step_005`; `assump:minor-table`; primitive learner privacy; input-independent simulation | Overflow is common constant; a changed unused record has zero effect; a used record changes exactly one learner-input position; no composition defect | Produced privacy notion is exactly the `(HP)` competitor interface; restriction is postprocessing on the same hidden arm | Transcriptwise equality/one-replacement dichotomy, then average DP inequalities | One-use injection of real records | `step_007`, `step_008`, `step_009` | None |
| Ideal iid realizable mixture and overflow certificate `(OF)` | `step_007` | Iid arm indices, iid pools from the latent experiments, disjoint minor embeddings | Sole coupling defect is `1{R>n}`; its sign is nonnegative and loss cost at most one; no per-position residual off overflow | Constructed and ideal learner inputs are equal on `R<=n`; both target the same hidden-arm restriction | Bernstein exponent is at least `27/2`; hence `p_ov<=e^{-27/2}<1/1024` | Additive reserve `12` and mean-doubling in `n` | `step_008`, `step_009` | None |
| Exchangeability identity `(EX)`, prior-average utility `(UT)`, and conditional hidden-arm `7/8` certificate | `step_008` | Iid common experiment vector, ideal sample from `step_007`, PAC antecedent, uniform independent `J` | PAC failure contributes at most `beta_0`; overflow at most `p_ov`; nonuniform arm risks handled by exact averaging/Markov; no hidden-dependence defect | `E_J L_arm=L_barQ` on the same arm distributions; constructed risk differs by at most overflow probability | `alpha_0+beta_0+p_ov<=5/128+e^{-27/2}<1/20`; `Pr_J[L_arm>8alpha_0]<=1/8` on PAC-good event | Iid exchangeability and fixed numerical slack to `1/20` | `step_009` | None |
| Public constants `c=a_th/4`, `c_delta=a_delta/C_Delta`, and admissible `N_0` | `step_009` | R1 constants from `step_005`; deterministic definition of `n`; primitive delta scale | Ceiling/additive `13` and log conversion are explicitly controlled; no hidden dependence | Same `delta_m` and same `n` are passed to `(HP)`; no parameter relabeling | `n<=15m`; `n^2log(en)<=C_Delta m^2log(em)`; `log^*N_0>26/a_th` | `a_th,a_delta,N_th` and strict `(HP)`/`(UT)` gap | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Restricted finite-output kernel | `step_001` by measurable postprocessing | `step_005` | Makes the DP game compact without properness | Candidate kernel -> `step_001` -> `step_005` | derived | None |
| `9n`-record empirical wrapper and exact expected-loss equality | `step_001`, Bun secrecy lemma | `step_002`--`step_004` | Places every finite experiment inside the active Alon empirical proof | Candidate finite-game kernel -> `step_001` -> source adaptation | derived | None |
| Endpoint gap `g_gap` and adjacent homogeneous-list rise | `step_002` | `step_003` | Nonvacuous source for the neighboring-family margin | Empirical wrapper -> expected loss/DP -> `step_002` -> `step_003` | derived | None |
| Pairwise neighboring output-law family with margin `a_0/M` | `step_003` | `step_004` | Feeds finite binary-search counting | `step_002` -> one-record databases -> `step_003` -> `step_004` | derived | None |
| Algorithm-wise finite-experiment hardness | `step_004` | `step_005` | Supplies the lower value before minimax | `step_001`--`step_003` -> binary/Ramsey -> `step_004` | derived | None |
| Hard prior `Pi_{n,N,epsilon,delta}` | `step_005` by attained finite minimax | `step_006`--`step_009` | Defines all simulated latent experiments and supplies the lower side of the final contradiction | `step_004` -> minimax -> `step_005` -> hidden-arm branch | derived | None |
| Iid latent experiment vector and exact-private `B_Pi` | `step_006` | `step_007`--`step_009` | Produces an admissible `(HP)` competitor | `step_005` + primitive learner/minor -> `step_006` | derived | None |
| Ideal iid mixture, coupling-success event, and `(OF)` | `step_007` | `step_008`, `step_009` | Transfers PAC utility to the constructed kernel with a bounded defect | `step_006` -> iid pools/Bernstein -> `step_007` | derived | None |
| `(EX)`, `(UT)`, and auxiliary `7/8` statement | `step_008` | `step_009`, final theorem/auxiliary conclusion | Upper side of contradiction and approved auxiliary claim | `step_006` + `step_007` + PAC -> `step_008` | derived | None |
| Final admissibility inequalities and constants | `step_009` | Final theorem | Converts one-arm hardness to `Omega(k log^*N)` and preserves `k=1` | `step_005` + `step_006` + `step_008` + primitive scale -> `step_009` | derived | None |

For the source-generated empirical wrapper, exact conventions and feasibility are: source input database `U` and branch multiset `U` are the same ordered tuple up to order reversal; source hypothesis bits and branch restricted hypothesis bits are the same after label identification; the theorem metric is zero-one empirical risk; and the equality `E[L_U]=R_n(B,e)` leaves zero residual. For the hidden-arm generated objects, the produced ideal target `bar Q_e` and consumed class target are identical on every support point by `assump:minor-table`, not merely close.

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | For every candidate `(epsilon,delta)`-DP `n`-sample threshold kernel, restrict arbitrary outputs to `{0,1}^N` and build a `(epsilon,delta)`-DP empirical wrapper on every `9n`-tuple `U` whose expected empirical loss is exactly `R_n(B,(t,U))`, uniformly for `epsilon<=1`. | None | Primitive finite-experiment definitions in `setting.md`; candidate kernel privacy; no hard prior | Exact with-replacement privacy despite repeated selection; source/branch threshold orientation; arbitrary output | Alon active `lem:bun`; Bun et al. corrected secrecy-of-the-sample lemma; direct postprocessing and risk identity | Finite kernel plus private expected-loss empirical wrapper | R1: preserve `M=9n`, `epsilon,delta`, expectation mode, and exact risk | PENDING |
| `step_002` | Rework Alon's homogeneous-set and endpoint argument for expected empirical loss `<=1/20`, all `epsilon<=1`, and both parities of `M=9n`, yielding a universal positive gap `g_gap` and an adjacent homogeneous-list rise `Omega(g_gap/M)`; retain the active Ramsey lower bound with adjusted universal color constants. | `step_001` | Derived empirical wrapper; source DP interface; no new theorem assumption | Prove rather than assume the `epsilon=1` positive gap; control delta, mesh, parity, and arbitrary outputs | Alon active `def:homog`, active `lem:reduction`, active `lem:finiteramsey`/`lem:ramsey`, active Erdos-Rado `thm:ramsey`; direct inequalities | Positive adjacent-list margin and large homogeneous set | R1: expected loss `1/20`; endpoint-uniform constants; `delta=O(1/(n^2log(en)))` | PENDING |
| `step_003` | From the adjacent rise, construct on one large homogeneous interval a family of arbitrary-output restriction laws indexed by a moving record, pairwise `(epsilon,delta)`-indistinguishable by exactly one replacement and separated by margin `eta=a_0/M`. | `step_002` | Derived adjacent rise and homogeneous set | Repair source indexing in current notation without changing mechanism; keep every database pair one-record adjacent | Alon active `lem:AtoP` and active `lem:reduction`; direct one-record privacy and restriction | Pairwise neighboring family with coordinate margin | R1: explicit `eta=a_0/M`, no privacy loss | PENDING |
| `step_004` | Choose finite `D,T`, prove the binary-search disjoint-event contradiction at `epsilon=1` with `Ddelta<=1/6`, combine the homogeneous-set upper and Ramsey lower bounds, and obtain universal `a_th,a_delta,N_th` such that every DP kernel below `a_th log^*N` has some finite experiment risk at least `1/20`. | `step_001`, `step_002`, `step_003` | Derived wrapper/family; cited finite Ramsey theorem and product privacy | Full delta accounting; finite product/search accumulation; extract a uniform iterated-log constant | Alon active `lem:binary`, `lem:prod`, `lem:lbhomog`, Ramsey chain; Chernoff and finite counting | Algorithm-wise finite-game lower value and universal threshold constants | R1: expose `D=O(n^2log(en))`, `T=O(n^2log^2(en))`, endpoint `epsilon=1`, and all constants' universality | PENDING |
| `step_005` | Prove compactness/convexity of the finite restricted DP-kernel set, write the correct minimax orientation, and produce an attained learner-independent prior satisfying `(HP)` at exactly `1/20`; prove equivalence with arbitrary-output kernels. | `step_004` | Derived algorithm-wise hardness; finite game definitions | Quantifier swap and attainment without circularly postulating the prior | Finite von Neumann minimax; finite-dimensional compact DP polytope | `(HP)` and `Pi_{n,N,epsilon,delta}` | R1: no loss in threshold, mode, support, or privacy dependence | PENDING |
| `step_006` | Define `B_Pi` from the produced prior and prove transcriptwise that it is exactly `(epsilon_0,delta_m)`-DP; prove restriction of `A`'s arbitrary output is legal and no properness enters. | `step_005` | `assump:minor-table`; `assump:unrestricted-private-pac`; `assump:fixed-parameter-scale`; derived `Pi` | Record-for-record locality across all overflow/unused-record branches | Direct coupling of internal transcripts, primitive DP, and postprocessing | Exact-private hidden-arm threshold kernel | R2: retain inherited privacy parameters exactly | PENDING |
| `step_007` | Build the iid grand-pool ideal sample, prove it is iid from a realizable mixture, prove equality with the constructed sample off overflow, and derive `(OF)` with exponent at least `27/2`. | `step_006` | `assump:minor-table`; derived iid latent vector and `B_Pi` | Same-sample coupling with a random hidden arm and exact uniform tail constant | Infinite iid pool coupling used only as a probability construction; Bernstein's binomial inequality | Ideal realizable mixture, coupling certificate, `(OF)` | R2: explicit fixed overflow probability independent of all exposed variables | PENDING |
| `step_008` | Prove conditional independence of the ideal output from `J`, establish `(EX)`, convert PAC to expected mixture risk, add overflow to prove `(UT)<1/20`, and prove the conditional hidden-arm `7/8` auxiliary statement. | `step_006`, `step_007` | `assump:unrestricted-private-pac`; `assump:minor-table`; `assump:fixed-parameter-scale`; fixed `alpha_0,beta_0`; generated iid experiments | Exchangeability must use iid common experiments, not permutation alone; preserve probability modes | Conditional expectation, exact mixture identity, bounded-loss conversion, Markov | `(EX)`, `(UT)`, and auxiliary statement | R2 and R3: `5/128+e^{-27/2}<1/20`; threshold `8alpha_0=1/16`, probability `7/8` | PENDING |
| `step_009` | Set `C_Delta=225(1+log15)`, `c_delta=a_delta/C_Delta`, `c=a_th/4`, choose `N_0>=N_th` with `log^*N_0>26/a_th`, verify all admissibility inequalities, contradict `(HP)` with `(UT)`, and check exact `k=1` recovery. | `step_005`, `step_006`, `step_007`, `step_008` | `assump:minor-table`; `assump:unrestricted-private-pac`; `assump:fixed-parameter-scale`; all derived interfaces | No hidden asymptotic absorption, no delta relabeling, and no weakened baseline | Deterministic arithmetic and contradiction | Main theorem with universal constants and baseline certificate | R2: full explicit specialization in `m,k,N,epsilon_0,delta_m` | PENDING |

## Dependency Notes

The graph is acyclic and every edge points to an earlier step. `step_001`--`step_004` prove a learner-by-learner finite obstruction using only a candidate one-arm kernel and audited sources. `step_005` is deliberately after that obstruction and is the unique producer of the hard prior, preventing circular average-case hardness. `step_006` consumes the prior to build the direct-sum competitor and independently certifies privacy. `step_007` produces the coupling objects before `step_008` consumes them for exchangeability and utility. `step_009` consumes the already-produced lower and upper interfaces and performs only deterministic rate specialization.

Assembly is expected to follow the same order:
\[
\text{finite wrapper}
\to\text{Alon endpoint/Ramsey/binary adaptation}
\to\text{finite minimax `(HP)`}
\to\text{exact-private hidden arm}
\to\text{iid coupling and exchangeability}
\to\text{constant specialization}.
\]
There is no dependency from `(HP)` back into its proof, no generated condition is consumed before production, and no derived invariant is promoted to a theorem-facing assumption.

## Blockers

None. The three source-sensitive interfaces that could have blocked `(HP)` are resolved at obstruction level: the cited corrected `9n` with-replacement wrapper has the required privacy at `epsilon=1`; the active Alon proof has a strictly positive expected-loss endpoint gap and a finite `D,T` delta budget after universal rescaling; and the arbitrary-output finite game has the correct compact minimax orientation and attainment. Each remains an explicit proof step subject to local proof and review rather than an assumed theorem extension.
