# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The public calibration and source-interface exposition is dense, especially
   in the VC and old-Lyu appendix sections. The named statements expose the
   needed assumptions, bounds, and compositions, so this is a readability
   concern rather than a self-containment break.
2. The old quotient kernel is denoted `K_o`, while the universal old-arm rate
   constant is `K_O`. The current bundle keeps these
   meanings distinct and synchronizes the public rate constant, but the case
   difference is easy to miss in a later editorial pass.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: the final deterministic minimum of the complete
  VC, old-Lyu, and finite arms, including the selected-learner small-delta
  schedule. The live theorem and final appendix composition use the same
  output space, decoder, raw-input DP predicate, PAC quantifiers, and certified
  integer sample thresholds. The old arm's current public constant is
  `K_O=4C_11`, and the VC constant is explicitly bridged to
  `K_V=max{1,4K_fp}`, so the minimum has a valid universal `K_*` rather than
  an unbound existential alias.
- Standalone theorem attack: arbitrary nonrealizable labels, duplicate records,
  and raw replacements inside one quotient cell were tested against the
  quotient pullback. The record map sends every raw neighbor to equality or a
  quotient replace-one pair; totalized invalid and empty paths return the
  fixed default; and the exact iid pushforward and risk identity apply to
  every (including improper) output in `H_C`. Thus no realizable-only privacy
  or quotient-to-raw scope upgrade is being used.
- Weakest step-level claim: the old-arm DDim descent followed by the marked
  producer-block holdout is the most vulnerable dependency chain. The source
  endpoint `s=d+1`, half-scale map `p_(r+1)=2p_r`, equality case of the
  decomposition lemma, and integer potential drop give a common score-`k`
  stage within `d+1` stages. The mark is assigned pathwise before any
  conditioning, and the producer-local union is formed before conditioning on
  the independent complement; no adaptive output or realized mark is treated
  as independent.
- Candidate counterexamples or stress cases: `d=0`, `d=1`, `v=1`,
  `v=d`, `k=2`, repeated quotient points, conflicting arbitrary labels,
  empty restrictions, zero-DDim leaves, immediate or final-stage success,
  false AboveThreshold reports, Sparse Sample failure, fallback values that
  also occur in a list, infinite (C), and improper SOA outputs. The live
  totalization and boundary propositions either bypass the positive branch or
  explicitly cover these cases; realizability keeps the restrictions nonempty
  only where descent and SOA arguments require it.
- Explicit-rate stress cases: the old fixed point retains its ceiling and
  coarse `d`-trace exponent, with `m_o=O(d^3 Lambda^4/alpha)` and
  `k_o=O(d^2 log(1/(delta beta)) Lambda^2/epsilon)`, yielding the displayed
  `d^5` arm. The VC arm retains its second additive term and `q=4`; the
  common comparison uses `q_*=6`. The selected-arm implication
  `N_* delta -> 0` is derived only under the displayed schedule, while fixed
  positive `delta` validity is kept separate.
- Appendix self-contained attack surface: the current 10,710-line bundle has
  theorem/lemma/proposition statements for the local interfaces and named
  terminal compositions for all sixteen steps, with no workflow artifact
  paths, public claim/hypothesis/invariant environments, or unresolved
  internal references. Removing the internal step files still leaves the
  quotient measurability bridge, both concentration branches, source maps,
  mechanism/privacy calculations, marked projection, holdout union, and rate
  eliminations in the appendix. The current public bundle is identified by
  assembly SHA-256 `913d97296a1fdfe5ea0a1f36984485b0f44da08e092205a9c1668e3c4bd78721`.
- Scope or mode upgrade attacks: utility is unconditional iid high
  probability uniformly over arbitrary (D,c), whereas privacy is event-free
  all-input raw replace-one DP, including arbitrary labels. The finite arm is
  pure DP, the old and VC arms are valid for every fixed `0<delta<1`, and
  only the explicitly stated asymptotic schedule is used for an `N delta`
  conclusion. No claim is made for uncountable evaluation quotients or for a
  universal polynomial in `v, log d`, or `v, log^* d`.
- Remaining risk: no verified break or unresolved high-risk counterexample
  remains. Residual risk is limited to notation density and the easily missed
  lower-case/upper-case `K_o`/`K_O` typography noted
  above; neither changes a theorem interface or requires proof repair.

Verdict alignment: `PASS` has `Blocking Issues = None`,
`Suggested Repair Depth = None`, and `Smallest Candidate Repair Target =
None`.
