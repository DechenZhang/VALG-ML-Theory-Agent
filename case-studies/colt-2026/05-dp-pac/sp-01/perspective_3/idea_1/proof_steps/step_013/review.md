# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_013/proof.md` (SHA-256 `fc00d20dcf2286735c7c32c9e9a1b9695ac36e33cd1f139ea17c8f31caee4ef5`)
- Binding setting: `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`
- Binding accepted sketch: `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`
- Binding accepted sketch review: `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Direct Dependency Audit

The five direct dependency proof/review pairs were hash-matched before use and each carries producer status `COMPLETE`, review status `ACCEPTED`, `Blocking Issues = None`, and `Smallest Retry Target = None`:

| Dependency | Proof SHA-256 | Review SHA-256 | Interface consumed here |
| --- | --- | --- | --- |
| `step_004` | `49e65cdfc0067df7c7dd63e3c76ef15197d29c2307cc42898c3a44d23c8911ba` | `4a3440d51d3e9b490e043c3299e127d0c4de0f9c738f87dae210996b60e1f999` | One finite \(\mu_{N,M}\) chosen before the universal source-private kernel quantifier, with the exact fixed N,M and source cap. |
| `step_008` | `3dddedfdd14f3415d0c01b41d4f401cc0039249d8e4aa3fa856808588971fc41` | `5c49ef256d2a14d6f0abb365bd160f319cf7566113733f68dc76663d74f44305` | Unconditional \(\mu_{N,M}^{\otimes k}\) instance law, fixed-vector conditional-i.i.d. ideal sample law, and exact selected-risk/product-risk identity. |
| `step_009` | `4918b28c3936130fd06d5d68f2cc99f67032dbc5c569d239c9a1d068de28ca2c` | `13e26d0cbc021c8cd3859bb17bda4d8048a1ac07c27cc3f35ffa81305144874b` | Exact U\sim Bin(n,1/k) and strict p_{ov}=Pr(U>M)<2^{-9}; p_{ov}=0 for k=2,3. |
| `step_011` | `aa9d54e1cc56c3463dbcfeb5b971da58c65a7badd1a6af1e80feb9507d93e884` | `3d9f588c7982c56138e503540bd5f3d1cfb804d5d3a2e83e9a7fbfe6e2a33911` | Unconditional actual-to-ideal direction L_id >= L_act - Pr(U>M), with exact marginals and no conditioned-i.i.d. upgrade. |
| `step_012` | `7df7fac764358a8cdc88e1f24a7d886fb1f4d9c3b17345886d627695cc9da688` | `78eebcdab7c1e6bd36fd56dd61815907d92834b3b46ddb67ece50866a00fd67a` | Total simulator B_{\mu_{N,M},A} on the same exact M-input domain, full improper output space, and (0.1,d_*/(M^2 log M))-DP source-cap membership. |

No dependency conclusion is used outside its stated interface. In particular, `step_004`'s `\exists\mu_{N,M}\ \forall B` applies to a B whose program hardwires the already-fixed public prior: the kernel polytope is the full set of source-private kernels and is independent of the prior. `step_011` is consumed in its stated unconditional form, while `step_008` is consumed only for the same unconditional ideal marginal and exact product-risk identity.

## Per-Lemma Audit

### unit_001: Hard-prior loss of the certified simulator

- Statement fidelity: PASS. The proposition at `proof.md:311-327` is the first exact subclaim of the sketch row. It instantiates the accepted finite prior at the same admissible `N,M` and public \(\mu_{N,M}\), and concludes the prior- and exact-size-sample-averaged actual one-block population risk is strictly greater than \(\eta=2^{-8}\). It does not claim product risk or use the later coupling.
- Proof validity: PASS. At `proof.md:329-345`, `step_012` supplies totality on every arbitrary labeled size-`M` input, the full output space \(\{0,1\}^{[N]}\), and the exact source-cap event inequalities. Those are precisely the hypotheses of the universal kernel statement from `step_004`. The substitution into the fixed-`N,M` prior guarantee at `proof.md:347-352` is valid even though B's code uses \(\mu_{N,M}\): the prior was fixed first, and the universal quantifier ranges over every resulting kernel, including prior-aware kernels. No overflow event is conditioned on and no risk residual is introduced.
- Cited-result and assumption audit: PASS. The current-notation restatement at `proof.md:166-193` gives the source domain, replacement adjacency, exact sample size, output space, source privacy cap, instantiated B, and conclusion. `step_012` is used only for source-cap membership and typing; central DP and the candidate regime are therefore discharged through an accepted derived conclusion, not silently re-assumed. PAC is not used.
- Rigor checklist: PASS. The same `N`, `M`, \(d_* /(M^2\log M)\), threshold family, population-risk metric, and randomized-kernel convention occur on both sides. B's internal preprocessing and A coins are part of its randomized kernel and are included in the expectation. Strict `>\eta` is preserved exactly; there is no infimum, approximation, learner-dependent prior, or hidden change of horizon.
- Local adversarial test: PASS. A prior-aware B, a nonmonotone/improper output, endpoint or point-mass prior support, an overflow branch, and arbitrary internal simulator randomness all remain members of the universal kernel class if the source-cap inequalities hold. The conclusion is unchanged for `M=8` and for the no-overflow `k=2,3` cases.
- Contribution to target step: PASS. This supplies the positive term \(\mathcal L_{\mathrm{act}}>2^{-8}\) used by the transfer ledger.
- Verdict: PASS
- Repair direction: None.

### unit_002: Prior-averaged product-risk transfer

- Statement fidelity: PASS. The proposition at `proof.md:354-363` targets exactly the sketch output (4): the unconditional prior-averaged ideal product population risk, with the same conditional-on-\(\boldsymbol\Xi\) i.i.d. sample law and strict lower bound `>2^{-9}`. It is not a selected-risk-only, conditioned-event, or mixed-unconditional-i.i.d. claim.
- Proof validity: PASS. The proof-local quantities at `proof.md:365-384` are exact copies of the accepted actual and ideal marginals. Equation (13) (`proof.md:386-393`) gives \(\mathcal L_{\rm act}>2^{-8}\). Equation (14) (`proof.md:395-402`) uses the accepted actual-to-ideal direction \(\mathcal L_{\rm id}\ge\mathcal L_{\rm act}-p_{\rm ov}\), so (15) is the valid strict consequence. The strict tail at (7) yields \(2^{-8}-p_{\rm ov}>2^{-8}-2^{-9}=2^{-9}\) in (16), hence (17). Overflow appears exactly once, in (14); no later step adds another copy.
- Cited-result and assumption audit: PASS. `step_008` is restated at `proof.md:195-223` with the same \(\mu_{N,M}^{\otimes k}\) vector, conditional product-sample law, selector independence, and exact selected/product identity. `step_009` is restated at `proof.md:225-244` with the same selector, tags, event, and strict tail. `step_011` is restated at `proof.md:246-274` with the correct one-sided inequality and explicit statement that no conditioned-i.i.d. law is used. `step_012` supplies B only through unit 001. Each object, sample size, and risk metric is identical across the applications.
- Rigor checklist: PASS. Equation (18) is an unconditional ideal-experiment equality; the conditional i.i.d. law is invoked only after fixing \(\boldsymbol\Xi\), exactly as stated at `proof.md:448-451`. The exchangeability identity is applied to the same ideal selected-risk marginal produced by `step_011`, not to an overflow-conditioned experiment. Expectations retain prior, sample, selector, and learner randomness; no limit, supremum, conditioning-renormalization, or probability-mode upgrade occurs.
- Local adversarial test: PASS. The inequalities remain valid at `U=0`, `U=M`, `n<k`, `M=8`, endpoint thresholds, point-mass or unequal block laws, and deliberately tag-asymmetric/nonmonotone A. For `k=2,3`, `p_{ov}=0`, so the baseline strengthens to \(\mathcal L_{\rm id}\ge\mathcal L_{\rm act}>2^{-8}\). The bound is valid even when the early-abort output has arbitrary risk in `[0,1]`.
- Contribution to target step: PASS. Equations (17)-(18) identify the transferred ideal selected risk with the exact prior-averaged product population risk and establish the target strict bound.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The two independent obligations are explicitly mapped and proved. The first contains the only quantifier-sensitive step (instantiating `\exists\mu\ \forall B`), and the second contains the only numerical and marginal-transfer step. No unlisted claim is hidden in the ledger: source-cap membership, exact actual/ideal direction, the strict tail comparison, and selected-risk/product-risk identification are all named accepted results or displayed local derivations. The proof never assumes an overflow good event, never treats the prior mixture as unconditionally i.i.d. from one deterministic product distribution, and never uses a subsection name or bare unit ID as mathematical authority.

## Target Claim Audit

PASS. Under the accepted contradiction-regime interfaces, for the same fixed `N,M`, one prior \(\mu_{N,M}\) is selected before the certified simulator B. Applying the universal finite-prior guarantee gives \(\mathcal L_{\rm act}>2^{-8}\). The accepted unconditional coupling gives \(\mathcal L_{\rm id}\ge\mathcal L_{\rm act}-\Pr(U>M)\); the accepted strict tail gives \(\Pr(U>M)<2^{-9}\); and the accepted exchangeability identity maps this same unconditional ideal marginal to the exact prior-averaged product population risk. Therefore the proof establishes precisely

\[
\mathbb E_{\boldsymbol\Xi\sim\mu_{N,M}^{\otimes k},\;S^{\rm id}\mid\boldsymbol\Xi\sim(P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n,\;H^{\rm id}\sim A(S^{\rm id})}
R_{P_{\boldsymbol Q}}(H^{\rm id},c_{\boldsymbol T})>2^{-9},
\]

with fixed-size, unconditional-expectation, population-0-1-risk semantics and no extra residual. Quantifier order, constants, and source privacy cap are unchanged.

## Explicit Rate Audit

This is rate-bearing R1 interface work, not `None`.

- Exposed variables: exact `k,N,n`, deterministic `M=max{8,ceil(4n/k)}`, the finite prior \(\mu_{N,M}\), arbitrary randomized A/B, hard gap \(2^{-8}\), and \(p_{\rm ov}=\Pr(U>M)\).
- Hidden constants: no new hidden constant; inherited \(b_*,d_*,N_*\) retain their accepted dependence and are independent of `k,N,n,M,epsilon,delta`, learner code, prior support, data, and randomness.
- Fixed quantities: `k,N,n,M`, the public prior (which may depend on `N,M` but is fixed before B), and A/B are fixed before the corresponding exact-size experiments.
- Probability mode: all exported inequalities are unconditional expectations over the displayed prior/sample/learner randomness; the sole residual is the exact probability over selector and tags. No conditional-on-overflow or high-probability conclusion is substituted.
- Horizon mode: fixed exact `M` for the one-block input and fixed exact `n` for the product learner; no expected or stopping-time horizon is used.
- Norm mode: population 0-1 risk throughout.
- Absorption and conversion: the only simplification is explicitly displayed in (13)-(16), with strict inequalities preserved. The overflow indicator is converted once by \(\mathbb E\mathbf1\{U>M\}=\Pr(U>M)\).
- Baseline reduction: for `k=2,3`, overflow is exactly zero and the transfer is strictly stronger; `U=0`, `n<k`, `M=8`, endpoint/point-mass blocks, and asymmetric A remain in the same unconditional argument. No baseline conclusion is weakened.

## Notation Surface Audit

PASS. `M`, \(\mu_{N,M}\), B, \(\boldsymbol\Xi\), \(P_{\boldsymbol Q}\), \(c_{\boldsymbol T}\), \(S^{\rm id}\), and \(H^{\rm id}\) are inherited/public-facing objects. B, `J`, `D_J`, `U`, and the actual input are appendix-local interfaces already supplied by accepted dependencies. \(\mathcal L_{\rm act}\), \(\mathcal L_{\rm id}\), and \(p_{\rm ov}\) are explicitly proof-local aliases and are eliminated from the exported conclusion. No helper hides a new constant, event assumption, residual, or parameter dependence.

## Target-Step Assembly Audit

PASS. Accepted Proposition~\ref{prop:step-004-finite-hard-prior} plus accepted Proposition~\ref{prop:step-012-source-membership} imply Proposition~\ref{prop:step-013-simulator-hardness}. Accepted Proposition~\ref{prop:step-011-risk-transfer} then gives the one-sided actual-to-ideal inequality. Accepted Proposition~\ref{prop:step-009-overflow} supplies the strict tail, and accepted Proposition~\ref{prop:step-008-selected-risk-identity} identifies the same unconditional ideal selected-risk marginal with exact product population risk. The named local propositions and dependencies jointly imply the exact target claim, with overflow charged once and no conditioned-i.i.d. or extra residual.

## Review Rationale

The submitted step is complete under the unchanged setting, accepted sketch, and hash-matched dependencies. The central quantifier check passes because the finite prior is chosen from a learner-independent compact kernel class at the exact same `N,M` and source cap; prior-aware simulator code is still one member of that universal class. The risk bridge uses the accepted direction \(L_{\rm id}\ge L_{\rm act}-\mathbf1_{\{U>M\}}\), preserves strictness from \(\mathcal L_{\rm act}>2^{-8}\) and \(\Pr(U>M)<2^{-9}\), and charges overflow exactly once. The final exchangeability step uses the same unconditional ideal marginal and only a fixed-vector conditional-i.i.d. law. No local, sketch, or dependency repair is required; `ACCEPTED` with `Smallest Retry Target = None` is the smallest sound outcome.
