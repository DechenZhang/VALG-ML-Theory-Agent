# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_007`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_007/proof.md`, SHA-256 `2acaf6fc9f7237c8f965c90b929b390dce607df84c86e775af02bca41bf7390b`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Next-unused grand pools give the exact iid mixture

- Statement fidelity: The lemma proves exactly the first part of the accepted `step_007` interface: conditional on every latent vector, the ideal ordered sample has law `bar Q_e^m`, and this law is unchanged by the hidden designation. It derives this claim from the accepted iid latent-vector output and does not assume exchangeability, `(EX)`, or PAC utility.
- Proof validity: The countable product construction supplies mutually independent arm-pool cells with the required finite laws. For a fixed arm-index vector, the pairs `(i_r,C_(i_r)(r))` are injective, so the selected cells are independent even under repeated arm selections. Averaging `product_r P_(i_r)(A_r)` over the iid uniform index vector factorizes coordinate by coordinate into `product_r bar Q_e(A_r)`. This proves the full ordered product law, not only identical marginals.
- Cited-result and assumption audit: The frozen accepted `step_006` proof/review hashes match the binding values and legally supply `E~Pi^k`, independence from uniform `J`, and iid uniform arm indices. The standard countable independent-product result is restated in current notation, and its hypotheses are discharged because every `Q_(e_j)` is finite and `[k] x N` is countable. No conclusion of `(HP)` is used.
- Rigor checklist: The conditional construction depends only on the realized latent vector, so it is conditionally independent of `J`; arbitrary versions on zero-mass fibers do not affect any asserted law. Repeated sampled values do not collapse distinct pool coordinates. The displayed rectangle calculation handles arbitrary measurable coordinate events and proves independence of all `m` ordered records.
- Local adversarial test: If one reused a fixed pool cell after selecting the same arm twice, the product law would fail. The occurrence counter prevents exactly that failure. Conditioning on `J=a` also cannot bias the ideal input because the final product expression contains no `a`.
- Contribution to target step: This unit constructs the grand-pool ideal input with the exact iid product-mixture law consumed by the realizability and coupling units.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact realizability of the arm mixture

- Statement fidelity: The proposition establishes the exact realizability target in the accepted sketch row for every latent vector `e_j=(t_j,U_j)`, including empirical multisets with repeated coordinates.
- Proof validity: Every support record of `Q_(e_j)` is `(q,tau_(t_j)(q))`; transport makes it `(phi_j(q),tau_(t_j)(q))`; and Assumption~\ref{assump:minor-table} gives the pointwise equality `c_t(phi_j(q))=tau_(t_j)(q)`. Each transported arm law is therefore realized with probability one, and their uniform mixture is realized by the same concept.
- Cited-result and assumption audit: The only mathematical authority is the primitive minor table plus Lemma~\ref{lem:step-007-pool-iid}'s definition of the mixture. No properness theorem, majority-label argument, or generated realizability condition is assumed.
- Rigor checklist: The concept index uses exactly the latent threshold tuple `(t_1,...,t_k)`. Pairwise disjoint arm images prevent conflicting arm restrictions, while duplicate entries inside an empirical multiset only alter probability mass and not labels. The conclusion is exact rather than almost sure under an auxiliary event.
- Local adversarial test: Even if `U_j` repeats one coordinate all `9n` times or different arm laws have very different supports, the pointwise minor identity still holds on every mixture atom.
- Contribution to target step: This unit makes `bar Q_e` a realizable distribution to which downstream PAC utility may later be applied, without itself invoking that utility.
- Verdict: PASS
- Repair direction: None.

### unit_003: Recordwise coupling with one-use pool indices

- Statement fidelity: The lemma supplies the exact law-preserving coupling required by the sketch: the external sample is iid from `Q_(E_J)`, nonhidden simulations retain the accepted kernel law, and `S^con=bar S` record for record on the full event `{R<=n}`. It separately covers `R=0`, `R=n`, and `R>n`.
- Proof validity: The first `n` hidden-pool cells have exactly law `Q_(E_J)^n` and are independent of every nonhidden pool. Nonhidden positions use distinct cells `W_(j,C_j(r))`, hence have the same joint fresh-draw law as `B_Pi`. At the `a`-th hidden occurrence, `C_J(h_a)=a`, so both the ideal input and the constructed input use the same first-pool record `W_(J,a)`. Nonhidden positions are equal by construction. These identities prove equality at all `m` positions whenever `R<=n`.
- Cited-result and assumption audit: Proposition~\ref{prop:step-006-kernel} is restated before use and supplies precisely the prefix-record rule, fresh nonhidden records, and overflow behavior. Lemma~\ref{lem:step-006-iid-latents} supplies the outer completion in which the external sample has law `Q_(E_J)^n`. No privacy conclusion, exchangeability identity, PAC guarantee, or utility bound is consumed.
- Rigor checklist: The coupling uses the first `R` hidden-pool cells themselves, not a suffix after reserving the external prefix. Thus it preserves both the external-sample law and the same-sample identity. The occurrence-index map is injective across positions, sampled-value coincidences do not constitute record reuse, `R=n` remains in the equality branch, and on `R>n` the ideal sample may use cells beyond `n` while `B_Pi` correctly makes no learner call.
- Local adversarial test: The potential failure mode is advancing the hidden-pool counter by `n` before building the ideal sample, which would give independent but unequal hidden records. The submitted construction does not do this: hidden occurrence `a` uses cell `a` in both inputs. Scattered hidden positions and repeated nonhidden-arm selections are also handled by the exact occurrence counters.
- Contribution to target step: This unit identifies overflow as the sole coupling defect and supplies exact same-input control on its complement.
- Verdict: PASS
- Repair direction: None.

### unit_004: Diagonal output coupling and bounded-loss transfer

- Statement fidelity: The proposition transfers the exact input coupling through an arbitrary randomized, possibly improper learner, proves equality of full and restricted outputs off overflow, and charges at most one copy of the single overflow event for every common `[0,1]`-valued measurable loss.
- Proof validity: On the common input `S^con=bar S`, sampling once from `A(.|bar S)` and using that same hypothesis for both coordinates is a valid diagonal coupling with the required marginals. Applying the common restriction `rho_J` preserves equality. On overflow, the constructed output is the accepted constant `g_0` and the ideal call remains defined; hence the pointwise loss difference is zero off overflow and at most one on overflow. Expectation gives the absolute bound and both one-sided forms.
- Cited-result and assumption audit: The unit uses only the accepted kernel interface and the recordwise coupling. Diagonal self-coupling is an elementary kernel construction, and bounded zero-one risk is setting-defined. No PAC high-probability guarantee, Markov step, exchangeability claim, `(EX)`, or `(UT)` is invoked.
- Rigor checklist: The learner output space may be arbitrary; drawing one output and duplicating it does not require properness or a threshold representation. The loss may depend on shared latent context, including `E_J`, because the same context and functional are used on both outputs. The specific risk `L_(Q_(E_J))` lies in `[0,1]`, so its transfer is valid. Deterministic learners are included as a degenerate diagonal coupling.
- Local adversarial test: No equality is claimed on overflow, and no per-position union bound is taken. Consequently the residual is exactly bounded by `Pr(R>n)`, rather than by `m Pr(R>n)` or a recordwise approximation sum.
- Contribution to target step: This unit exports the output-level coupling certificate and the bounded-loss bridge required by downstream utility analysis.
- Verdict: PASS
- Repair direction: None.

### unit_005: Uniform Bernstein overflow estimate

- Statement fidelity: The lemma proves the exact `(OF)` expression from the setting definition of `n`, including every ceiling implication, the uniform exponent `27/2`, the strict comparison with `1/1024`, and the small- and large-mean regimes.
- Proof validity: Conditional on any `J`, the indicators `1{I_r=J}` are iid Bernoulli `1/k`, and their conditional law does not depend on `J`; hence `R~Bin(m,1/k)` unconditionally, with mean `mu=m/k` and variance `v=mu(1-1/k)<=mu`. From `2mu+12<=n<2mu+13`, overflow implies `R-mu>mu+12` and therefore `R-mu>=mu+12`. Bernstein with `t=mu+12` yields the first exponential bound. Replacing `v` by the larger `mu` weakens the exponent in the correct direction.
- Cited-result and assumption audit: Bernstein's upper-tail inequality is explicitly restated for independent Bernoulli summands with its variance and bounded-increment term. Iid arm indices discharge independence and success probability; `t>0` follows from `mu>0`. No unstated Chernoff variant or asymptotic tail estimate is used.
- Rigor checklist: The algebra gives `F(mu)=3(mu+12)^2/[8(mu+3)]` and `F'(mu)=(3/8)(mu+12)(mu-6)/(mu+3)^2`. Thus `F` decreases on `(0,6)`, increases on `(6,infinity)`, and attains its global minimum `F(6)=27/2`; the endpoint checks are `F(mu)->18` as `mu` decreases to zero and `F(mu)->infinity` as `mu` grows. Finally `27/2>10>10 log 2`, so `e^(-27/2)<2^(-10)=1/1024`.
- Local adversarial test: No assumption `mu>=6` is present: arbitrarily small `m/k` is covered by the finite limit `18`, and arbitrarily large `m/k` is covered by divergence of `F`. When `k=1`, the variance is zero and overflow is actually impossible; Bernstein remains a valid conservative bound. Equality `R=n` is correctly excluded from overflow.
- Contribution to target step: This unit proves the requested exposed, parameter-uniform overflow probability with all constant provenance visible.
- Verdict: PASS
- Repair direction: None.

### unit_006: One-arm and occupancy boundary certificate

- Statement fidelity: The proposition consolidates the exact `k=1` baseline and every requested occupancy/output boundary without weakening the coupling or replacing it by a conditional surrogate.
- Proof validity: For `k=1`, `J=I_r=1`, `R=m`, and `n=2m+12>m`, so overflow has probability zero. Both learner inputs use `(T_1(W_(1,1)),...,T_1(W_(1,m)))`, the mixture is the sole transported experiment, and the diagonal coupling gives sure output equality. The earlier units directly establish the `R=0`, `R=n`, `R>n`, small-mean, minimizing-mean, large-mean, and deterministic-output statements.
- Cited-result and assumption audit: The proposition uses only the setting definition of `n`, the primitive minor table, the accepted `step_006` interface, and named preceding local results. It adds no baseline theorem, event assumption, or probability-mode upgrade.
- Rigor checklist: Integer rounding is exact at `k=1`; there are no nonhidden simulations; the external sample has `n` cells but only its first `m` are consumed once; and `R=n` and `R>n` remain on the correct sides of the overflow boundary.
- Local adversarial test: The one-arm case cannot incur the universal overflow residual, and it recovers the same realized threshold experiment rather than a mixture approximation. A deterministic learner changes none of the input or loss-transfer reasoning.
- Contribution to target step: This unit proves the required baseline invariance and boundary specialization for the exported coupling interface.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the six-unit map. The countable product-space existence, conditional pool independence, injectivity of occurrence indices, and exact ordered-product calculation are contained in unit 001. Exact pointwise minor realizability is unit 002. External-sample law preservation, fresh nonhidden-draw law, the first-`R` identity, no reuse, and all occupancy branches are unit 003. Arbitrary randomized-output coupling and the single-event bounded-loss transfer are unit 004. Binomial identification, ceiling directions, the standard Bernstein instantiation, variance relaxation, global calculus minimum, and numerical comparison are unit 005. The `k=1` and remaining boundary specialization is unit 006. The proof neither assumes exchangeability nor invokes the PAC guarantee; those remain downstream obligations.

## Target Claim Audit

The proof establishes the exact accepted `step_007` claim under only Assumption~\ref{assump:minor-table} and the current accepted `step_006` outputs. Conditional on every latent vector, the ideal ordered sample has law `bar Q_e^m`; the mixture is realized by the corresponding minor concept; the coupled external and simulated records preserve the exact `B_Pi` law; constructed and ideal inputs and outputs agree on `{R<=n}`; and the sole defect event satisfies `(OF)`. The claims hold for every integer `m,k>=1`, every admitted `N`, arbitrary randomized learner outputs, and all occupancy branches. No privacy conclusion beyond the dependency, exchangeability identity, PAC utility, hard-prior value, or final contradiction is assumed.

## Explicit Rate Audit

The step is rate-bearing for the R2 overflow defect. It exposes `m,k,n,mu=m/k,R,p_ov` and the exact relation `n=ceil(2m/k)+12`; introduces no hidden constant; and proves the universal constants `12`, `27/2`, and `1/1024` explicitly. The probability mode is an exact conditional iid product law and an unconditional finite-sample upper-tail bound; the horizon is fixed at `m` learner positions and `n` external records; and the metric is exact ordered-record/output equality plus a common `[0,1]` loss, in particular zero-one population risk. Every simplification is displayed: the two ceiling inequalities, the overflow-event inclusion, `v<=mu`, the Bernstein denominator comparison, the derivative sign, and the final exponential comparison. No confidence parameter, auxiliary tolerance, asymptotic absorption, union bound, or hidden dependence is present. At `k=1`, the true overflow probability is zero and the original one-chain input/output interface is recovered exactly, satisfying the baseline-reduction obligation.

## Notation Surface Audit

The notation surface is controlled and fully classified. `E,J,(I_r),R,B_Pi`, `bar Q_e`, `bar S`, the overflow event, `p_ov`, and `mu` are the minimal downstream-facing objects. Pool cells and occurrence counters are appendix-local construction devices; the transported arm law `P_j`, variance `v`, and exponent `F` are proof-local. Constructed/ideal inputs and outputs are appendix-local coupling objects. Every helper is defined from the setting, the accepted dependency, or a named local result; no alias hides independence, boundedness, finiteness, a constant, or an event-provenance obligation. The infinite pools do not enlarge the theorem scope because only finitely many coordinates are inspected.

## Target-Step Assembly Audit

The assembly cites the exact theorem-style results needed for each transition. Lemma~\ref{lem:step-007-pool-iid} supplies the conditional product-mixture law; Proposition~\ref{prop:step-007-realizable} supplies exact realizability; Lemma~\ref{lem:step-007-record-coupling} supplies the law-preserving first-`R`, next-unused record identity and sole overflow event; Proposition~\ref{prop:step-007-output-transfer} supplies diagonal output equality and the bounded-loss residual; Lemma~\ref{lem:step-007-overflow} supplies `(OF)`; and Proposition~\ref{prop:step-007-boundaries} supplies `k=1` and boundary closure. These conclusions jointly imply the target without a missing bridge, bare unit-ID authority, reuse of a hidden record, per-position error accumulation, exchangeability assumption, or PAC-utility assumption.

## Review Rationale

`ACCEPTED` is the smallest sound status. The frozen proof and accepted dependency hashes match their binding values, and all six independent units prove their stated contributions under the unchanged accepted sketch interface. The highest-risk points survive direct stress: selected pool coordinates are injective; the external hidden prefix is coupled to the same first `R` ideal cells; arbitrary randomized outputs admit a diagonal same-input coupling; bounded loss charges only the single overflow event; all ceiling and Bernstein directions are correct; the exponent has a genuine global minimum `27/2` at `mu=6`; and `k=1` has zero overflow and exact one-chain recovery. No step, dependency, or sketch repair is required.
