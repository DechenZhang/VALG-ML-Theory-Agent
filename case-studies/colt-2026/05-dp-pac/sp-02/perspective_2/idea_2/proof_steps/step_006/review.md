# Proof Step Review

## Step Review Identity

- Sketch attempt: `1`
- Step ID: `step_006`
- Unit attempt: `1`
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_006/proof.md`, SHA-256 `f4d72880911b9379963068d28103e397067061f6dbdc53ad2448db8f76f99f6b`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Iid completion of the hidden-arm latent experiments

- Statement fidelity: The lemma supplies exactly the accepted sketch interface: a latent vector with law `Pi^k` independent of uniform `J`, both for the kernel's unused-coordinate completion and for the outer prior-average experiment in which the real latent experiment occupies coordinate `J`. It also includes the required `k=1` specialization.
- Proof validity: In the internal construction, drawing `J` independently of a full `Pi^k` vector and then ignoring `E_J` leaves the stated kernel law unchanged. In the outer completion, the displayed joint mass `(1/k) Pi(e_a) product_(j!=a) Pi(e_j)` equals `(1/k) product_j Pi(e_j)`, proving both the product law and `J`-independence. Conditional on `(J,E)`, the real sample has law `Q_(E_J)^n`, as required downstream.
- Cited-result and assumption audit: The only nonprimitive input is the current accepted `step_005` prior, whose proof and review hashes match the binding values and whose exact exported claim is a learner-independent probability law on `E_(n,N)`. The hard-value inequality is not used. No utility, exchangeability conclusion, or later coupling fact is assumed.
- Rigor checklist: The calculation remains valid when prior masses vanish. The hidden coordinate is genuinely unused by the kernel, the nonhidden coordinates retain their original conditional independence, and the empty product at `k=1` is handled explicitly. Quantifier order between the outer experiment, `J`, the latent vector, and the real sample is correct.
- Local adversarial test: Correlating the real latent experiment with `J` would generally destroy independence, but here `E_*` is drawn independently before being placed at the random coordinate, and every other coordinate is an independent `Pi` draw. At `k=1`, `J` is constant and the singleton vector has exactly law `Pi`.
- Contribution to target step: This unit legally produces the common iid latent vector consumed by the hidden-arm kernel and later exchangeability analysis without changing the kernel's internal law.
- Verdict: PASS
- Repair direction: None.

### unit_002: Measurable arbitrary-output hidden-arm kernel

- Statement fidelity: The proposition defines `B_Pi` on every ordered labeled `n`-sample, with codomain the full cube `{0,1}^[N]`, and proves that its output is only a coordinate restriction of `A`'s arbitrary hypothesis. It introduces no threshold shape, properness, output representation, realizability, or computational condition.
- Proof validity: The transport maps are well-defined from the minor injections. For every cube vector, the restriction preimage is a finite intersection of measurable coordinate events, and every cube event is a finite union of such singletons. The arm designation, latent experiments, arm indices, and fresh nonhidden records form a common input-independent upstream transcript. Conditional on that transcript, either the output is the fixed overflow vector or it is the measurable pushforward of `A(F_omega(s))`; averaging these laws yields a well-defined finite-output kernel. The unused full-vector draw `E_J` does not alter the stated procedure's law.
- Cited-result and assumption audit: Assumption~\ref{assump:minor-table} supplies the embeddings, Assumption~\ref{assump:unrestricted-private-pac} supplies the kernel and measurable coordinate evaluations, and Assumption~\ref{assump:fixed-parameter-scale} supplies the inherited privacy range. The accepted dependency supplies only the fixed prior. No properization theorem, representation theorem, or unproved generated event is used.
- Rigor checklist: Fresh records are drawn independently conditional on the latent experiments, all upstream randomness is independent of the real input, and the construction is defined even for nonrealizable or inconsistently labeled inputs. The finite transcript includes all randomness before the call to `A` but not `A`'s own coins, which is the correct conditioning for the privacy proof.
- Local adversarial test: An output of `A` may be improper, oscillatory on the embedded arm, randomized, or represented in an arbitrary measurable hypothesis space. The restriction still records its complete `[N]` prediction vector, and every output event has a measurable preimage. Repeated arm occurrences do not duplicate a real record because position `h_a` uses only `z_a`.
- Contribution to target step: This unit constructs the exact full-cube competitor required by `(HP)` and exposes the common transcript on which record locality and privacy can be checked.
- Verdict: PASS
- Repair direction: None.

### unit_003: One-use transcript locality under ordered replacement

- Statement fidelity: The lemma proves the exact fixed-transcript equal-or-one-replacement map required by the sketch, including the common overflow branch, `R=0`, `R=n`, intermediate prefixes, and changes in unused external coordinates.
- Proof validity: The overflow predicate depends only on fixed arm indices. For `R>n`, both outputs are the same constant. For `R<=n`, every nonhidden position is identical across adjacent inputs, while hidden position `h_a` uses external record `z_a` exactly once. Thus a change at coordinate `ell>R` is unused, and a change at `ell<=R` affects only position `h_ell`. Injectivity of `phi_J`, together with label preservation, makes a genuine changed labeled record remain distinct after transport, although equality would also suffice for privacy.
- Cited-result and assumption audit: The lemma uses only the already-defined kernel map and the primitive ordered replacement-adjacency convention. It does not invoke group privacy, composition, the overflow probability, PAC utility, or a distributional assumption on the real input.
- Rigor checklist: The proof separately handles `s=s'` under the "at most one record" convention before selecting a unique changed coordinate. All learner inputs have the same ordered size `m`. At `R=0` no real coordinate is used; at `R=n` every real coordinate is used once; for `0<R<n` exactly the prefix `z_1,...,z_R` is used.
- Local adversarial test: Even if hidden occurrences are scattered among all `m` positions or simulated records coincide in value with hidden records, only one ordered position can change. The branches `R=n` and `R>n` meet on opposite sides of the explicit overflow test and are both covered without an omitted boundary case.
- Contribution to target step: This unit supplies the one-record locality certificate needed to invoke the primitive privacy inequalities exactly once per transcript.
- Verdict: PASS
- Repair direction: None.

### unit_004: Exact inherited privacy after restriction and transcript mixing

- Statement fidelity: The proposition establishes both eventwise `(epsilon_0,delta_m)` inequalities for every replacement-adjacent real input pair and every event in the full output cube. It preserves the inherited pair exactly and explicitly covers `epsilon_0=1` and `delta_m=0`.
- Proof validity: For a fixed transcript, the restricted event `rho_J^{-1}(G)` is measurable and is the same event for the two compared learner inputs. Unit 003 makes those inputs equal or replacement-adjacent, so both primitive DP directions apply. The overflow branch gives equality. The transcript law `nu` is common to all real inputs; integrating either pointwise inequality gives `int delta_m dnu=delta_m`, hence only one additive defect, and integrating the reverse inequality gives the second DP direction.
- Cited-result and assumption audit: The only privacy authority is the two-sided eventwise guarantee in Assumption~\ref{assump:unrestricted-private-pac}; its input-adjacency and output-event hypotheses are discharged by units 002--003. The accepted prior is used only through the input-independent transcript law. No amplification, secrecy, composition, group-privacy, or utility result is invoked.
- Rigor checklist: The event may vary with the fixed transcript through `J`, which is legal because primitive DP is applied separately for each transcript and the same event is used in both directions within that transcript. The common-law averaging does not count transcripts or positions, and the overflow event contributes no privacy residual. Equal learner inputs satisfy the same inequalities since `epsilon_0>=0` and `delta_m>=0`.
- Local adversarial test: At `delta_m=0`, every displayed step remains a pure-DP inequality and the integral contributes zero. At `epsilon_0=1`, no strict inequality or limiting argument is used. A changed unused record yields equality, while a changed used record invokes exactly one primitive comparison; neither case can create an `m delta_m`, `R delta_m`, or `k delta_m` term.
- Contribution to target step: This unit proves that `B_Pi` is an admissible arbitrary-output competitor for `(HP)` at the unchanged privacy parameters.
- Verdict: PASS
- Repair direction: None.

### unit_005: Exact one-arm baseline specialization

- Statement fidelity: The proposition verifies the theorem-facing `k=1` baseline required by the accepted sketch rather than merely showing that arm or overflow defects vanish.
- Proof validity: For `k=1`, `J=I_r=1`, so `R=m` and `n=ceil(2m)+12=2m+12>m`. Hence overflow is impossible, there are no nonhidden draws, and the learner input is exactly `(T_1(z_1),...,T_1(z_m))`; the remaining `n-m` records are unused. Unit 004 therefore preserves the same privacy pair, and unit 001 gives the singleton latent law `Pi` independent of constant `J`.
- Cited-result and assumption audit: The specialization uses only the setting definition of `n`, the three primitive assumptions, the accepted prior, and the already-proved kernel/privacy units. It introduces no new baseline theorem, conditional event, or altered one-chain mechanism.
- Rigor checklist: Integer rounding is exact because `2m` is an integer. Replacements among the first `m` records change one learner-input position and replacements among the remaining records change none. The conclusion retains arbitrary outputs and fixed-sample eventwise privacy.
- Local adversarial test: There is no hidden overflow probability at `k=1`, and no simulated arm can introduce an extra record or privacy comparison. The result is not weakened to a stopped, proper, or remainder-bearing surrogate.
- Contribution to target step: This unit certifies the exact one-chain reduction needed for the downstream baseline-invariance check.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the five-unit map. Exact `Pi^k` completion and `J`-independence are in unit 001. Full-cube restriction measurability, kernel well-definedness on all labeled inputs, input-independent transcript generation, and equality with the stated nonhidden-only implementation are in unit 002. Every occupancy and unused-coordinate branch of the deterministic input map is in unit 003. Both eventwise DP directions, measurable event pullback, common-law averaging, the single `delta_m` term, and the endpoint cases are in unit 004. The `k=1` latent, occupancy, no-overflow, unused-record, and privacy specialization is in unit 005. Finite unions/intersections, conditioning on finite upstream randomness, and `int delta_m dnu=delta_m` are elementary steps already displayed inside the corresponding units rather than hidden bridges.

## Target Claim Audit

The submitted proof establishes the exact accepted `step_006` sketch-row claim whenever the accepted `step_005` prior is available. It defines a full-cube-output kernel on all ordered labeled `n`-samples, proves the iid common-prior latent completion, and proves both replacement-adjacency privacy directions at exactly `(epsilon_0,delta_m)` for every output event. The quantifiers, arbitrary-output scope, input domain, dependency use, and fixed-sample privacy mode match the setting. The proof does not assume utility, realizability of the real input, exchangeability, an overflow tail bound, or the hard-prior lower-value conclusion.

## Explicit Rate Audit

This is the privacy-transfer component of R2. The exposed quantities are `m,k,n,N,epsilon_0,delta_m`, with the exact relation `n=ceil(2m/k)+12`; no hidden constant or auxiliary tolerance is introduced. The mode is deterministic eventwise DP after averaging a common input-independent transcript law, the horizon is the fixed `m`-position construction, and no norm or risk conversion occurs. The displayed identity `int delta_m dnu=delta_m` proves that no privacy term is absorbed or multiplied. The specialization `k=1` gives `n=2m+12`, zero overflow, and the original one-chain privacy interface, so the applicable baseline-reduction obligation is preserved exactly.

## Notation Surface Audit

The helper notation has visible provenance and appropriate scope. `Pi`, `J`, the iid latent vector, the arm indices/occupancy, and `B_Pi` are the downstream-facing objects already required by the sketch. `T_j`, `rho_j`, `H`, and `F_omega` are appendix-local descriptions of the construction. `E_*`, `W_r`, `omega`, `nu`, and `K_omega` are proof-local coupling or conditioning devices. The full cube is kept distinct from the threshold class, and no one-off alias hides a boundedness, measurability, or privacy obligation. The exported interface is minimal: the iid latent completion, the kernel, its exact privacy certificate, and the one-arm baseline.

## Target-Step Assembly Audit

The assembly uses the accepted Proposition~\ref{prop:step-005-hard-prior} only to fix a learner-independent prior, then cites every current nontrivial bridge by its theorem-style name. Lemma~\ref{lem:step-006-iid-latents} supplies the exact latent law; Proposition~\ref{prop:step-006-kernel} supplies the measurable full-cube kernel and common transcript; Lemma~\ref{lem:step-006-locality} supplies the exhaustive equal-or-one-replacement map; Proposition~\ref{prop:step-006-exact-dp} supplies both exact DP directions after averaging; and Proposition~\ref{prop:step-006-one-arm} supplies the baseline specialization. These conclusions jointly imply the exact target without a missing lemma, bare unit-ID authority, privacy degradation, properness restriction, or circular use of `(HP)`.

## Review Rationale

`ACCEPTED` is the smallest sound status. The submitted proof matches the accepted sketch and current dependency artifacts, and every high-risk local obligation passes: the latent experiments have exact product law independent of the hidden designation; the hidden-arm procedure is a measurable full-cube kernel for arbitrary outputs; every fixed transcript maps one external replacement to zero or one learner-input replacement across all occupancy branches; both privacy directions survive common-law averaging with exactly one `delta_m`; `epsilon_0=1` and `delta_m=0` require no exception; and `k=1` recovers the no-overflow one-chain mechanism. No proof-step, dependency, or sketch repair is required, so the smallest retry target is `None`.
