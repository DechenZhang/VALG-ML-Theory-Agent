# Theory Tracker

## Attempted Ideas

| Perspective | Idea attempt | Setting | Goal | Setting Signature | Goal Signature | Status | Best Score | Reasons |
|-------------|--------------|---------|------|-------------------|----------------|--------|------------|---------|
| perspective_2 | idea_1 | N/A | N/A | N/A | N/A | Fail | 0 | NO_VIABLE_IDEA: arbitrary-query contraction lacked source-backed uniform support; public/private-randomness and global-coding counterchecks defeated remaining candidates |
| perspective_1 | idea_1 | D(k,lambda,sigma) independent samples; precommitted coding localization plus shifted-dyadic dither digit telescope; arbitrary measurable one-bit queries; all k>1 regimes | Uniform PAC absolute mean error epsilon at confidence 1-delta with n <= C_k r_k across all lambda,sigma,epsilon,delta and k regimes | unrestricted moment class; fixed precommitted arbitrary measurable queries; decoder-only path selection; three-regime digit weights | full three-regime order-optimal non-adaptive mean-estimation theorem with exact r_k dependence | Accept | 10 |  |
| perspective_3 | idea_1 | D(k,lambda,sigma) independent samples; precommitted coding localization plus padded-dyadic Rademacher ring multiplexing; arbitrary measurable one-bit queries; all k>1 regimes | Constructive affirmative classification with uniform PAC absolute mean error epsilon and n <= C_k r_k in every k regime | unrestricted moment class; fixed padded-ring masks; decoder-only path selection; regime-normalized scale allocation | full parameter-complete affirmative three-regime classification with exact r_k dependence | Accept | 9 |  |
| perspective_2 | idea_2 | Known beta=3/2 generalized-Gaussian location-scale subfamily embedded in D(k,lambda,sigma); unknown location and scale; arbitrary randomized non-identical measurable precommitted one-bit encoders; small-error fixed-confidence regime | Conditional local-PAC leading-constant interaction separation between fully non-adaptive protocols and a one-transition comparator | generalized-Gaussian shape; scale in a fixed sigma-calibrated interval; arbitrary binary Markov encoders; epsilon/tau tends to zero at fixed eligible delta | conditional asymptotic arbitrary-query constant separation, explicitly not an r_k order separation | Fail | 0 | FORMALIZATION_FAIL: Appendix-compatible tail inverse gives T_beta=1.68363445 and an empty confidence-gap set; the Table-2 origin inverse is contradicted by a legal centered-threshold encoder |
| perspective_2 | idea_3 | N/A | N/A | N/A | N/A | Fail | 0 | NO_VIABLE_IDEA: no full arbitrary-query contraction survived; Cai-Wei requires multi-bit/incompatible Gaussian assumptions, while sparse and orthogonal-score reductions lose material separation through scalar packing and Bessel bounds |
| perspective_2 | idea_4 | N/A | N/A | N/A | N/A | Fail | 0 | NO_VIABLE_IDEA: Kipnis-Duchi restricts encoder topology, topology-free parametric sources mismatch the exact one-bit model, and remaining scalar hard families collapse under global coding or moment-information balance |
| perspective_2 | idea_5 | N/A | N/A | N/A | N/A | Fail | 0 | USER_STOP: Perspective 2 branch stopped during idea generation before any idea_5 artifact was finalized |

Allowed `Status` values:

- `In_progress`
- `Accept`
- `Fail`

When the controller appends a new approved idea row, it should write `Perspective`, `Idea attempt`, `Setting`, `Goal`, `Setting Signature`, and `Goal Signature`, initialize `Status = In_progress`, leave `Reasons` empty, and initialize `Best Score` as empty or `0` until the first proof review is recorded.

When `/subagent-idea-generator` returns `NO_VIABLE_IDEA`, append one failed row for the consumed `idea_N` slot even though no `idea.md` was finalized. Use `Setting = N/A`, `Goal = N/A`, `Setting Signature = N/A`, `Goal Signature = N/A`, `Status = Fail`, `Best Score` empty or `0`, and `Reasons = NO_VIABLE_IDEA: <compact gate-failure reasons>`.

When an approved `idea.md` fails the cross-perspective duplicate gate, append one failed row for the consumed `idea_N` slot. Fill `Setting`, `Goal`, `Setting Signature`, and `Goal Signature` from the generated `idea.md` using the same normalized summaries used for viable idea rows, set `Status = Fail`, set `Best Score` empty or `0`, and set `Reasons = DUPLICATE_IDEA: matches <perspective_M/idea_N>; <compact duplicate reason>`.

If a filled tracker row needs to record a failure reason, keep the controlled status label as `Fail` and record the reason in `Reasons` rather than inventing a new status value.

When `Status = Fail`, `Reasons` should store a one-line summary of the abandonment reason.

`Setting Signature` should store a normalized summary of the concrete setting, including model, data, algorithm, regime, and theorem-critical refinements.

`Goal Signature` should store a normalized summary of the theorem target, including theorem type, target metric, and claim shape.

The signature fields are controller-written fast filters for duplicate and branch-memory lookup; the corresponding branch-local `idea.md` artifacts remain the source of truth. Rows with `NO_VIABLE_IDEA` reasons and `N/A` signatures are budget and failure-memory rows only; do not treat their signatures as duplicate-detection keys. Rows with `DUPLICATE_IDEA` reasons keep real signatures and should be used as duplicate-avoidance memory while still counting as failed consumed slots.
