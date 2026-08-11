# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_7`
- Sketch attempt: 1
- Step ID: `step_012`
- Unit attempt: 2
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Binding sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Reviewed proof artifact: `perspective_1/idea_7/proof_steps/step_012/proof.md`
- Reviewed proof SHA-256: `e0d860a0172c8926ee8fb049fa4b0241f3345ef1e848f936819fa792b6b7d78e`
- Triggering step-review SHA-256: `a652c01067ff0368fdc319a52d8acd1c4261a0059697aa92973cce3bd029e86e`
- Accepted dependency step_003 proof SHA-256: `2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551`
- Accepted dependency step_003 review SHA-256: `046c8b2ef34d4e749556b11d1ce056457f3d84feffe4e63a9b9d528c3a2a2527`
- Accepted dependency step_011 proof SHA-256: `261a9f185e507aa82a022051791ca90bf29faf473440d54920e1632433219ed0`
- Accepted dependency step_011 review SHA-256: `9dbaa42776c3f3c91b8172d6564261627673fd75bd854542e810084efb8ad1af`
- Hash preflight: all binding, triggering, proof, and dependency hashes matched the files read for this review.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: balanced-chart residual transfer

- Statement fidelity: PASS. The lemma targets the exact original relative-Frobenius residual on a generated exact-span, positively oriented, balanced `E_basin` state, with the stated `d_Q` radius and no additive error floor. The primitive base-scale source for `kappa_0 >= 1` and the accepted static/chart interfaces are identified.
- Proof validity: PASS. The tensor representation 
  `G_U tensor G_V tensor G_W` applied to the Kronecker direction errors and the product-log error is exact. The induced row/column bounds imply the needed spectral bounds on each `C_M`, and the displayed estimates (3)--(5) give the numerator bound without an `ell_1` sum over components.
- Full three-mode Gram/Schur audit: PASS. The repaired proof distinguishes `K_VW=(V^T V) circ (W^T W)` from `K_UVW=(U^T U) circ K_VW`. The `q_real` row-sum bound gives the Gershgorin sandwich for `K_VW`; the Schur product theorem with the PSD unit-diagonal Gram `U^T U` then gives the same sandwich for the actual full tensor Gram. Thus equation (7) is the correct denominator identity and supplies `||T||_F >= sqrt(1-q_*^2)||lambda||_2`.
- Cited-result and assumption audit: PASS. The Khatri--Rao identity, Schur order, Kronecker norm, and diagonal embedding are restated in current notation. No two-mode floor is incorrectly substituted for the full tensor norm, and no generated event is promoted to a primitive assumption.
- Rigor checklist: PASS. The exponential scale estimate, operator-norm constants, denominator comparison, and `5x < 8 kappa_0^2 x` specialization are valid at `x <= 1/1024`, including `x=0`.
- Local adversarial test: PASS. Nonorthogonal columns in all three modes are covered by the full Gram construction; coherent signs in the pair Gram do not defeat the absolute row-sum/Gershgorin bound. The exact target state gives zero residual.
- Contribution to target step: PASS. Supplies the original stopping metric required by the cap and restart units.
- Verdict: PASS
- Repair direction: None.

### unit_002: covered-path stopping before the cap

- Statement fidelity: PASS. The proposition names the accepted chronological-contraction proposition and the residual-transfer lemma, states the generated basin entry, and targets the setting's exact cap and original residual test.
- Proof validity: PASS. The accepted recurrence gives `x_t <= ell^t x_0`; `x_0 < 1` and unit_001 give (9). With `ell=17/512` and `C_stop log(512/17) >= 1`, the ceiling in (10) yields `ell^m_cap <= (8 kappa_0^2/epsilon)^(-1)`, so a tested residual is at most `epsilon` by the cap.
- Cited-result and assumption audit: PASS. `assump:base-scale` and `assump:accuracy-confidence` are cited in stable form, and the recurrence and residual bridge are named theorem-style results. The exact-entry statement is conditional and does not import the separate landing baseline.
- Rigor checklist: PASS. The cap boundary, `epsilon in (0,1)`, `kappa_0 >= 1`, first-hit interpretation, and the `x_0=0` case are all handled.
- Local adversarial test: PASS. The maximal accepted entry radius remains inside the cyclic chart under the accepted contraction; no off-event or singular state is assigned a convergence claim.
- Contribution to target step: PASS. Establishes `E_stop` on every covered run before `m_cap`.
- Verdict: PASS
- Repair direction: None.

### unit_003: observable cap and Moore--Penrose branch separation

- Statement fidelity: PASS. The proposition explicitly defines the algorithmically admissible raw domain by requiring every Gaussian initialization vector to be nonzero, quantifies the all-tape claim on that domain, and separates gate failures, singular solves, and the capped cyclic branch.
- Proof validity: PASS. Every initial normalization is defined on the stated domain. The finite proposal/certification/filter/cluster operations are followed by Moore--Penrose calls that exist for every finite design, including singular designs. The fixed counter gives at most `m_cap` completed cyclic sweeps and an observable hit or timeout.
- Raw-zero/all-tape audit: PASS. Raw-zero vectors are correctly excluded because the setting's `N(xi)` is undefined there, and the conditional Gaussian law assigns the domain probability one over all `3 k J` vectors. The proposition does not silently claim totality for an undefined raw-zero tape.
- Cited-result and assumption audit: PASS. The positive denominator needed for residual testing is derived on `E_sm` by the local full-Gram result; no ordinary inverse, basin recurrence, or canonical refresh is used on a singular/off-event branch. A zero proof-only refresh norm merely leaves the literal run on the finite capped branch.
- Rigor checklist: PASS. Empty pools, wrong cluster counts, zero scores, zero landing norms, zero contractions, singular cyclic designs, and nonhitting tapes all have finite observable handling.
- Local adversarial test: PASS. Rank-deficient frozen or cyclic designs still receive a legal pseudoinverse and cannot cause unbounded work; a raw-zero initialization is outside the explicitly stated procedure domain.
- Contribution to target step: PASS. Supplies the all-tape-on-domain event `E_run_cap` and the probability-one domain used by restart amplification.
- Verdict: PASS
- Repair direction: None.

### unit_004: dense per-run runtime

- Statement fidelity: PASS. The proposition is scoped to one completed run, names the finite-tape completion result, and includes successful and unsuccessful branches in the dense exact-arithmetic model.
- Proof validity: PASS. The bound accounts for dense unfoldings, all proposal contractions and certification evaluations, score/filter/cluster work, the three frozen landing products/Grams/factorizations, rebalance, residual reconstruction, and at most `m_cap` cyclic sweeps. `B_k = n^3 k + n^2 k^2 + k^3` covers the dense solve dimensions because `k <= n`.
- Cited-result and assumption audit: PASS. Moore--Penrose existence is used only for finite operation count, not as a condition-number bound. Reusing or rematerializing the tensor unfoldings can only lower or preserve the displayed upper bound.
- Rigor checklist: PASS. Constant factors for three modes and graph/tie handling are absorbed into `c_cost`; no hidden condition number or precision parameter enters the arithmetic-operation count.
- Local adversarial test: PASS. Singular designs do not change the finite matrix dimensions or introduce an inverse-condition-number factor.
- Contribution to target step: PASS. Supplies the per-run work factor consumed by the total restart calculation.
- Verdict: PASS
- Repair direction: None.

### unit_005: conditional restart amplification

- Statement fidelity: PASS. The proposition names the primitive randomness/confidence assumptions, accepted coverage and cyclic dependencies, local cap/tape results, exact clamped `J`, conditional probability mode, and rank/residual output.
- Proof validity: PASS. On a fixed `E_sm` tensor, coverage has probability at least `p_0=26/27`, and the accepted deterministic chain turns coverage into a capped successful run. Fresh proposal tapes make completed-run outcomes independent conditional on the tensor, giving `27^{-J}`. The condition `C_rep >= 1/log 27` and the clamp prove `27^{-J} <= delta_init` uniformly, including `delta_init` near one.
- Cited-result and assumption audit: PASS. Coverage, basin, stopping, and finite-tape producers are all named; no cross-target independence or unproved landing event is imported.
- Rigor checklist: PASS. The conditional restart product is kept separate from the outer smoothing event, and minimum-residual selection preserves the original residual threshold and the `k`-term bound.
- Local adversarial test: PASS. Early failed runs are completed finite trials, while any covered run succeeds before the cap; sharing the tensor does not invalidate independence after conditioning on `F_sm`.
- Contribution to target step: PASS. Supplies `E_restart` and the conditional `1-delta_init` success guarantee.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The local map covers the full tensor Gram denominator, scale/error transfer, cap arithmetic, initialization-domain totality, singular Moore--Penrose behavior, dense operation count, conditional failure product, and output selection. Equation (7) is now a proved current-notation full-Gram statement rather than a hidden two-mode substitution. The assembly uses named theorem-style local/dependency results, and the generated `E_stop`, `E_run_cap`, and `E_restart` interfaces are producer-ordered. No post-landing comparator, off-event basin claim, or unlisted independence assumption is used.

## Target Claim Audit

PASS. Under the accepted step_003 and step_011 interfaces and the primitive setting conditions, the artifact establishes exactly the sketch-row claim: a covered run reaches the original relative Frobenius threshold before the declared cap; every admissible nonzero-initialization tape has finite observable work with legal Moore--Penrose singular branches; dense per-run and all-restart work are bounded; and `J` independent restarts achieve conditional failure probability at most `delta_init`. The returned active rank is at most `k`, and no quotient surrogate is substituted for the original residual.

## Explicit Rate Audit

- Exposed variables: `n`, `r`, `k=U(r)`, `L_prop=O(log r)`, `kappa_0`, `log(1/epsilon)`, `1+log(1/delta_init)`, and the declared `rho^{-1}` regime (the displayed runtime is independent of it).
- Hidden constants may depend only on fixed universal numerical and dense-operation constants, including `C_stop`, `C_rep`, and `C_rank`; they do not depend on generated comparators, basin/reserve quantities, condition numbers, epsilon, confidence events, or target labels.
- Fixed quantities: one realized tensor while conditioning on `F_sm`, the active rank-r representation, inactive zero columns, and the cyclic U/V/W order.
- Probability mode: an outer `1-delta_sm` smoothing event, conditional one-run coverage at least `26/27`, and conditional restart success at least `1-delta_init`; no confidence parameter is hidden in `k`.
- Horizon mode: the quotient recurrence is uniform only on generated `E_basin`, while every admissible tape has the finite declared cap.
- Norm mode: `d_Q` is used internally and the original relative Frobenius norm is used for stopping/output; runtime counts dense arithmetic on the unfoldings.
- Admissibility and absorption: the chart radius, entry radius, full-Gram floor, `C_stop log(512/17) >= 1`, and nonzero raw domain are explicit. Equations (3)--(8), (11), and (16) display the residual, cap, and restart absorptions.
- Total-work specialization: PASS. Equations (19)--(21) explicitly derive `W_total <= J W_run`, substitute the ceiling bounds for `k`, `L_prop`, `m_cap`, and `J`, and expose the prescribed rank/log powers. The uniform restart factor is correctly `O(1+log(1/delta_init))`, not bare `O(log(1/delta_init))`.
- Baseline reduction: PASS within scope. Conditional on an exact quotient entry `e^0=0`, the accepted cyclic map and unit_001 give an exactly zero first tested residual. The proof explicitly leaves the fact that the frozen landing produces that entry to step_013, so no finite tolerance envelope replaces the exact baseline claim.

## Notation Surface Audit

PASS. `Delta`, `mathscr G`, `mathcal A`, the pair/full Gram matrices, `x_t`, `B_s`, `W_run`, `bar k`, `R_epsilon`, and the raw-tape domains are explicitly defined and classified as proof-local or appendix-local. Public exports are limited to the three events, the original residual guarantee, the cap, and the runtime bound. No helper constant or generated invariant is used without a visible source.

## Target-Step Assembly Audit

PASS. Accepted coverage (`step_003`) and chronological contraction (`step_011`) feed the named residual-transfer and cap propositions. The finite-tape proposition independently closes all admissible failure branches, the dense-cost proposition feeds the explicit `J W_run` sum, and the restart proposition applies conditional independence only after completion is established. The outer smoothing probability is combined by the tower calculation, and the exact baseline landing identity remains assigned to step_013.

## Review Rationale

ACCEPTED is the smallest sound outcome. The repaired attempt resolves every blocker from the triggering review without changing the accepted sketch row: the denominator is now the actual three-mode tensor Gram with a valid Schur/Gershgorin bridge; theorem-facing assumptions and dependency producers are named; raw-zero initialization is handled by an explicit probability-one admissible domain; all restart work is specialized from `W_total <= J W_run`; singular/off-event branches retain only legal finite pseudoinverse/cap behavior; and the baseline statement is restricted to the exact-entry consequence owned by this step. No local proof flaw or sketch/interface change remains.
