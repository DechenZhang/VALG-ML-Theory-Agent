# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_015`
- Unit attempt: 3
- Review attempt: 3
- Reviewed proof artifact:
  `perspective_2/idea_4/proof_steps/step_015/proof.md`
- Reviewed proof SHA-256:
  `c06105f1721b8835a667cda698b81615b38c20825cbbee39bd9e676cb5ada9d0`
- Binding setting artifact: `perspective_2/idea_4/setting.md`
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch artifact: `perspective_2/idea_4/proof_sketch.md`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review artifact:
  `perspective_2/idea_4/proof_sketch_review.md`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency Step 002 proof/review SHA-256:
  `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f`
  / `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`
  (unit attempt 2, review attempt 2, accepted).
- Accepted dependency Step 003 proof/review SHA-256:
  `b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280`
  / `c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa`
  (unit attempt 3, review attempt 3, accepted).
- Accepted dependency Step 004 proof/review SHA-256:
  `aded5334e6b420fa91d8de54cf36290a5aa726ab4d955f84586afa67311192e5`
  / `483174aef76458d0433547a4eb68628cb79d92d3ceddd0010c6e4835a94b15ec`
  (unit attempt 2, review attempt 2, accepted).
- Frozen primary source:
  `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`
- Frozen primary-source SHA-256:
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`
- Review scope: fresh review of the live binding artifacts and frozen source.
  No prior same-step review, proof-history artifact, global diagnostic, assembly,
  or final review was used as mathematical evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact old-arm singleton branch

- Statement fidelity: The proposition targets exactly the arm-specific
  `d=0` branch, including zero samples, zero risk, the raw pullback, and
  privacy. It does not strengthen the universal empty-input kernel interface.
- Proof validity: Accepted Step 002 gives that `d=0` makes `bar C` a
  singleton and gives exact risk transport. Accepted Step 003 first promotes
  the supplied pointwise law and gives `A_0=K_0` universally, then identifies
  that law as `delta_{bar c_0}` only because it is the setting-defined
  old-Lyu arm carrying the arm-specific Step 001 authority. A constant law on
  the one empty input is `(0,0)`-DP and has zero decoded risk.
- Cited-result and assumption audit: Every dependency label used is present in
  the current accepted Step 002 or Step 003 pair. In particular, no direct
  Step 001 dependency is added and no arbitrary Borel law on `H_C` is called
  Dirac.
- Rigor checklist: The proof distinguishes the singleton concept class from
  the generally nonsingleton improper output space `H_C`, treats `T_0`, and
  requires no partition, list, mechanism, realizability event, or limiting
  condition.
- Local adversarial test: For a singleton concept whose quotient output space
  admits other improper hypotheses, an arbitrary non-Dirac empty-input law
  would still satisfy only `A_0=K_0`; the proposition's stronger conclusion
  remains unavailable unless the old-arm premise is supplied. The proof
  respects this counterexample.
- Contribution to target step: It closes the exact no-data baseline and the
  clarified null-law boundary.
- Verdict: PASS
- Repair direction: None.

### unit_002: Independent old-arm scalar dictionary

- Statement fidelity: The lemma defines the complete positive-dimensional
  old-arm scalar tuple before data, with four confidence shares, two privacy
  shares, all ceilings, source stage scales, list cap, and both mechanism
  noise tolerances.
- Proof validity: Under `d>=1`, `t>=2`, and the declared parameter ranges,
  every logarithm, reciprocal, integer power, and ceiling is legal. Lyu's
  leaf and essential-hypothesis bounds give
  `|L|<=p_{o,r}^d 2^{d^2}<=L_o(t)`, while the definition of `B_o(t)` is
  exactly the Sparse Sample threshold requirement.
- Cited-result and assumption audit: The source list bound and Sparse Sample
  privacy condition are restated in current notation before use. The scalar
  definitions depend only on primitive parameters and the universal
  AboveThreshold constant, not on a sample, generated event, or later
  success output.
- Rigor checklist: Positivity, finiteness, integrality, the `r=0,...,d`
  stage horizon, and the `delta/2` and `beta/4` allocations are explicit.
  The apparently coarse factor `d^2/(alpha d)` in `Q_o(t)` is the intended
  old-arm `d`-trace normalization and equals `td a_o(t)/alpha` after
  cancellation.
- Local adversarial test: The smallest live values `d=1`, `t=2`, and
  parameters approaching their allowed boundaries keep `Q_o>e`,
  `m_o>=1`, `L_o>=1`, and a finite positive failure-symbol weight.
- Contribution to target step: It supplies every old-arm auxiliary with
  visible provenance and prepares noncircular teacher feasibility.
- Verdict: PASS
- Repair direction: None.

### unit_003: Ceiling-aware old teacher envelope

- Statement fidelity: The lemma proves the exact logarithmic and
  nonlogarithmic envelopes needed to exhibit a feasible teacher count; it
  does not assume feasibility or use the selected least count.
- Proof validity: The ceiling gives `t_C<=2 C R_{T,o}` because
  `R_{T,o}>1`. The setting envelope controls each displayed parameter log,
  `a_o(t_C)`, `Q_o(t_C)`, and the ceiling in `m_o(t_C)`. Expanding
  `log L_o` yields the stated `2d^2 log 2+d log t_C+d log m_o+d log d`.
  The bounds for `B_o`, `tau_SS,o`, and `tau_AT,o` retain the full
  `log(1/delta)` factor and are dominated by
  `d^2 ell Lambda^2/epsilon`.
- Cited-result and assumption audit: No new paper theorem is used. All source
  quantities were defined in the preceding local lemma, and the only hidden
  constants depend on the fixed universal `c_AT` and `C_o`.
- Rigor checklist: The proof records the ceiling remainder, the distinction
  between `ell` and `log ell`, and all `d,alpha,beta,epsilon,delta`
  dependence. There is no prose-only absorption.
- Local adversarial test: Very small `delta`, `beta`, or `epsilon` increases
  `R_{T,o}` and the right-hand envelope rather than invalidating a logarithm;
  `d=1` still gives the required domination. No circular `k`-inside-its-own-
  bound argument occurs.
- Contribution to target step: It supplies the explicit feasible witness
  used to define the least teacher count.
- Verdict: PASS
- Repair direction: None.

### unit_004: Feasible least old teacher and exact margin

- Statement fidelity: The proposition proves existence of the least
  feasible integer `k_o`, its explicit `d^2/epsilon` envelope, the exact
  mechanism margin, and the initial irreducibility-scale inequalities.
- Proof validity: With `C_teach,o=(16A_o)^2`, the elementary bound on
  `log C` yields `A_o(1+log C)<=C/4`. The witness's half-teacher score
  leaves another quarter of `C R_{T,o}`, which exceeds the required slack
  `2`. Well-ordering then gives the least feasible integer and its upper
  bound. Finally `n_o>=2` and `d>=1` imply
  `p_{o,0}=n_od>=max{n_o,d+1}`.
- Cited-result and assumption audit: The proposition uses only the two named
  preceding local results. Feasibility is proved before the actual tuple is
  defined, so no generated condition is smuggled into the definition.
- Rigor checklist: All ceilings remain in the actual tuple, the teacher
  inequality is non-strict where needed, and the universal constants are
  independent of every displayed problem parameter and generated object.
- Local adversarial test: At `d=1`, the entry scale is at least `2`; at the
  least feasible count the exact inequality, rather than an asymptotic
  surrogate, still holds. The witness remains valid if the minimum happens
  at `k_o=2`.
- Contribution to target step: It fixes the actual old-arm procedure and
  produces the positive score margin consumed by both private mechanisms.
- Verdict: PASS
- Repair direction: None.

### unit_005: All-path totalization of the old quotient procedure

- Statement fidelity: The proposition defines the old quotient procedure on
  every labeled quotient input and every internal path, while preserving
  exact source-valid restrictions, decompositions, lists, and successful
  outputs.
- Proof validity: Every block/stage restriction is block-local; each nonempty
  class receives a fixed optimal decomposition and a finite no-repetition
  essential list; empty or invalid local objects are sanitized to an empty
  list. The maximum-occurrence query is total even for an empty union. The
  finite Sparse Sample support has a positive failure-symbol weight, and all
  invalid, exhausted, failure, or no-success paths return the fixed
  `bar c_0`.
- Cited-result and assumption audit: Lyu's decomposition existence and list
  cap are used only for nonempty restrictions. Countable-discrete quotient
  inputs permit fixed pointwise decomposition choices without a measurable
  selector. No source utility or privacy conclusion is assumed here.
- Rigor checklist: The construction covers arbitrary and nonrealizable
  labels, empty lists, an empty union, over-cap or non-`H_C` source output,
  a failure symbol, no Above report, and residual transcript states. Every
  terminal output lies in the full `H_C`.
- Local adversarial test: If every stage list is empty, every score is zero
  and the algorithm reaches the fixed fallback. If a source object is valid,
  none of the sanitation rules changes it. If the fallback value also occurs
  in a list, status rather than value equality still distinguishes fallback.
- Contribution to target step: It produces a genuine all-input pointwise
  old-arm law before any kernel, privacy, or utility claim.
- Verdict: PASS
- Repair direction: None.

### unit_006: Old quotient kernel, raw pullback, and exact risk

- Statement fidelity: The proposition exports exactly the common measurable
  interface required by the sketch row: the old quotient kernel, its raw
  pullback through `T_N`, the full `H_C` codomain, and exact decoded risk.
- Proof validity: The totalized old procedure supplies a Borel probability
  law on `H_C` at each countable-discrete quotient input. Accepted Step 003
  promotes this arbitrary pointwise family to a kernel. Accepted
  measurability of `T_N` then gives the raw kernel, and accepted Step 002
  risk transport applies to every proper or improper output.
- Cited-result and assumption audit: The proof uses the current accepted
  Step 002 and Step 003 identities, with matching hashes and attempts. It
  invokes universal pointwise-law promotion and does not infer a generic
  Dirac law.
- Rigor checklist: Both kernel axioms are supplied by the accepted promotion
  and composition results; no global decomposition selector, finite support
  uniformity, realizability, or utility event is needed.
- Local adversarial test: Arbitrarily varying finite supports across
  quotient inputs, duplicate records, nonrealizable labels, and improper SOA
  outputs remain valid because the input sigma-field is the full power set
  and the output is standard Borel.
- Contribution to target step: It supplies the exact output, raw-input, and
  metric interfaces used by privacy and PAC reconstruction.
- Verdict: PASS
- Repair direction: None.

### unit_007: Coarse old error-trace count

- Statement fidelity: The lemma deliberately proves the old exponent `d`,
  not the VC-sensitive exponent `v`, for every fixed indexed labeled master
  sample.
- Proof validity: XOR with the fixed label vector is a bijection between
  prediction traces and error traces. Accepted quotient preservation gives
  `VC(bar C)=v<=d`, repeated points cannot enlarge the trace family, and
  `n_o>=d`; Sauer--Shelah therefore yields
  `|E_{bar C}(bar s)|<=sum_{j=0}^d binom(n_o,j)<=(en_o/d)^d`.
- Cited-result and assumption audit: The standard Sauer--Shelah statement is
  restated with its current objects and hypotheses. The dimension and
  sample-size premises come from accepted Step 002 and the local teacher
  proposition.
- Rigor checklist: Infinite `C`, repeated quotient points, arbitrary labels,
  and the coarser use of `d` are all explicit. No class cardinality or
  selected trace representative is introduced.
- Local adversarial test: If many concepts induce the same indexed trace,
  the count only decreases; if `v<d`, padding the Sauer sum to `d` is a
  valid conservative old-arm loss and is exactly the target baseline.
- Contribution to target step: It produces the finite multiplicity used by
  the independent old trace union.
- Verdict: PASS
- Repair direction: None.

### unit_008: Both fixed-trace without-replacement tails

- Statement fidelity: The lemma proves the source relative tail only above
  `gamma_o/3` and separately proves the required one-sided near-zero tail,
  including the equality boundary and `mu=0`.
- Proof validity: Lyu Proposition 2 with `xi_d=1/(5d)` gives the exponent
  `m_o mu/(75d^2)` and hence the displayed `alpha/(3600d^2)` bound.
  For the low branch, the inline pairwise-smoothing proof of (C6) is complete:
  averaging two coordinates preserves their sum and increases the only
  variable `ab e_{m-2}` term; repeated max-min averaging decreases the
  variance by half the squared range, forcing convergence to the constant
  vector; continuity then proves the elementary-symmetric-mean inequality
  for every degree, including `m=0,1,N`. Applying it to
  `w_j=exp(lambda x_j)` gives the without-replacement mgf bound and the KL
  tail. The derivative in `mu` and the explicit logarithmic inequality give
  `D(gamma_o/2 || gamma_o/3)>=gamma_o/30`.
- Cited-result and assumption audit: The frozen source has exactly the
  factor `2`, denominator `3`, and strict relative-deviation event used in
  the high branch. The low branch imports no named concentration theorem;
  (C6) is proved in full before use.
- Rigor checklist: Conditional block independence is never asserted; only
  one block's uniform-without-replacement marginal is used. All polynomial
  limits, endpoint conventions, strict/non-strict thresholds, and the
  impossible `mu=0` failure event are checked.
- Local adversarial test: A trace of all zeros makes the upper-tail event
  empty. At `mu=gamma_o/3`, the KL calculation remains valid. At `m=N`,
  (C6) reduces to the product versus arithmetic-mean inequality and the
  smoothing proof still applies.
- Contribution to target step: It supplies both exact concentration branches
  without the invalid near-zero use of a multiplicative relative bound.
- Verdict: PASS
- Repair direction: None.

### unit_009: Generated old trace event and confidence charge

- Statement fidelity: The proposition defines the exact simultaneous old
  event, proves its conditional finite-union bound, solves the
  `n_o=k_om_o` fixed point with ceilings, and charges exactly `beta/4`.
- Proof validity: Conditional on the master sample, a union over the finite
  trace family and `k_o` block marginals gives (9.2), with the low-branch
  exponent stronger than the displayed common exponent. The ceiling-aware
  inequality `en_o/d<=2C_o Q_o log Q_o` yields
  `log(en_o/d)<=C_5 log Q_o`. Since `a_o>=d` and contains the confidence
  logarithm, the choice `C_o=2^20` makes the negative exponent dominate the
  trace, block, and confidence terms exactly as in (9.9).
- Cited-result and assumption audit: Only the two preceding local lemmas and
  the fixed teacher tuple are used. The tower step integrates a uniform
  conditional bound and requires no independence among blocks.
- Rigor checklist: The `gamma_o/3` boundary belongs to exactly one branch,
  every logarithm and ceiling is retained, and the probability is over the
  actual data-independent random partition.
- Local adversarial test: At `d=1`, the numerical inequality
  `C_o/3600>C_5+2` still holds by a wide margin. Large `k_o` enlarges the
  trace/confidence terms only logarithmically and is already present in
  `Q_o` and `a_o`.
- Contribution to target step: It produces and funds the old source-good
  event without consuming any VC-arm event or fixed point.
- Verdict: PASS
- Repair direction: None.

### unit_010: Exact source endpoint, half-scale map, and inclusion

- Statement fidelity: The lemma explicitly defines the source's omitted
  `d+1` endpoint, records the exact current/source shift, and proves the
  next-stage-to-all-current-stage inclusion needed for Lyu Lemma 4.3.
- Proof validity: Substitution gives
  `H_o,i^r=H_o,i,src^{r+1}` and
  `p_o,r=p_o,r+1,src/2`; the live current scales also obey
  `p_o,r+1=2p_o,r`. Bernoulli's inequality gives `rho^d>=1/2`, and direct
  algebra gives `((1+xi_d)/(1-xi_d))rho<=1`. The low-mean event supplies
  the absolute `gamma_o/2` bound, while the high-mean event supplies the
  relative transfer through producer block `i_*`.
- Cited-result and assumption audit: No literal identity with the source's
  printed lists is asserted. The source result is used only through its
  parameter-uniform exact `(2p,p)` interface, as authorized by the accepted
  sketch.
- Rigor checklist: The proof covers every `0<=r<d`, all producer and
  consumer blocks, both concentration branches, and the direction of each
  inequality for `0<rho<1`.
- Local adversarial test: At `d=1`, `rho^d=1/2` and the sole transition is
  valid. At master mean zero, the absolute branch supplies the inclusion
  without division by the mean.
- Contribution to target step: It closes the source-convention bridge and
  exports the exact class inclusion and scale doubling for DDim descent.
- Verdict: PASS
- Repair direction: None.

### unit_011: Exact essential lists and irreducible leaf witnesses

- Statement fidelity: The lemma gives every nonempty old restriction its
  exact finite essential-SOA list, the source list cap, the maximum-leaf
  identity, and irreducibility at both scales later consumed.
- Proof validity: Each restriction is a subclass of `bar C` with
  Littlestone dimension at most `d`; Lyu's existence claim, leaf bound, and
  essential-hypothesis corollary give (11.1)-(11.2). Since
  `p_o,r 2^{d-t}>=p_o,0>=max{n_o,d+1}`, every witness is both `n_o`- and
  `(d+1)`-irreducible. Monotonicity from `q`- to `q'`-irreducibility is
  valid: extend the requested point sequence to length `q`; the final
  full-dimension restriction is a subclass of the `q'` restriction, forcing
  the latter to retain the same dimension.
- Cited-result and assumption audit: The frozen source definitions use the
  original class's SOA labels for the full point sequence, matching the
  extension argument. Empty classes are explicitly excluded from source
  assertions that require nonemptiness and retain the totalized empty list.
- Rigor checklist: `0<=t<=d`, all stage scales, infinite parent classes,
  and finite essential lists are covered. The SOA output is a function in
  `H_C` and need not lie in `bar C`.
- Local adversarial test: At DDim zero, the source corollary makes the
  restriction finite and its essential list equal to the entire class. At
  maximal leaf dimension `t=d`, the irreducibility scale is still at least
  `p_o,0`.
- Contribution to target step: It produces the legal source lists and the
  exact irreducible leaf witnesses used by termination and empirical utility.
- Verdict: PASS
- Repair direction: None.

### unit_012: Finite DDim descent and common-score stage

- Statement fidelity: The proposition proves, rather than assumes, the
  one-unit integer potential drop when no item occurs in all lists and the
  existence of a score-`k_o` stage by stage `d`.
- Proof validity: Realizability places `bar c` in every restriction, so all
  DDim objects are nonempty. For a maximizer at stage `r+1`, the exact class
  inclusion and `2p/p` relation give
  `M_{r+1}<=DDim_{p_r,d}(H_i^r)<=M_r` for every `i`. If equality held, a
  fixed maximum leaf from an optimal next-stage decomposition, together with
  Lyu Lemma 4.3 applied to every arbitrarily chosen current optimal
  decomposition, would make the same SOA function essential in every block,
  contradicting `q_r<k_o`. Integer-valued DDim gives a unit drop. At DDim
  zero, Corollary 4.1 Item 4 places the common target in every list. A budget
  of at most `d` drops then forces (12.3).
- Cited-result and assumption audit: The frozen Lemma 4.3 states exactly the
  required DDim inequality and exact SOA equality for optimal `(2p,d)` and
  `(p,d)` decompositions. The zero-DDim support conclusion is exactly the
  frozen corollary's Item 4.
- Rigor checklist: Maxima exist over finitely many blocks, DDim lies in
  `{0,...,d}`, and the proof separates the `M_0=0` entry from positive
  entries. No noisy mechanism outcome enters this deterministic descent.
- Local adversarial test: If `M_0=0`, score `k_o` occurs immediately. If
  every earlier stage lacks a common item, exactly `d` drops force
  `M_d=0`, where target support supplies the final common item.
- Contribution to target step: It supplies the finite structural mechanism
  and the score-`k_o` witness consumed by AboveThreshold.
- Verdict: PASS
- Repair direction: None.

### unit_013: AboveThreshold detects a sufficient stage

- Statement fidelity: The lemma proves the old mechanism's own finite noise
  event, legal stopping stage, true selected score, and earlier-Below score
  bound under the unchanged teacher margin.
- Proof validity: A Laplace variable of scale `1/eta_o` has two-sided tail
  `exp(-eta_o u)`, so a union over at most `d+1` tests gives the allocated
  failure probability. On the noise event, a Below report implies the
  displayed upper bound on the true score. The teacher margin gives
  `tau_AT,o<k_o/2`; hence the deterministic score-`k_o` stage must report
  Above no later than its occurrence, and an Above report yields the lower
  bound in (13.2).
- Cited-result and assumption audit: The privacy theorem used later is the
  first-Above, `K=1` specialization of Lyu Algorithm 2 and Lemma 3.2. This
  unit's utility proof uses only the source's fixed-threshold Laplace
  convention and derives its own finite union.
- Rigor checklist: Equality conventions match the source algorithm
  (`Above` at noisy score at least the threshold and `Below` otherwise),
  stopping is finite, and no independence is needed for the union bound.
- Local adversarial test: A score-`k_o` item at stage zero is detected; a
  score-`k_o` item only at stage `d` is still reached because every earlier
  Below has true score below `k_o`. The most adverse allowed noise cannot
  erase the score margin.
- Contribution to target step: It produces a selected stage whose true score
  dominates both the failure-symbol baseline and Sparse Sample utility noise.
- Verdict: PASS
- Repair direction: None.

### unit_014: Actual Sparse Sample output

- Statement fidelity: The proposition proves directly from the exact
  Sparse Sample weights that the selected old mechanism returns an actual
  list item except on its allocated confidence event.
- Proof validity: The effective union has at most `k_o L_o` functions. One
  item has score at least `B_o+tau_SS,o+2`; comparing its exponential weight
  with the failure-symbol weight gives
  `Pr(perp)<=exp[-epsilon_SS,o(q-B_o)]`, which is at most
  `beta_SS,o/(k_oL_o+1)`. Every other nonfailure support point is an actual
  union member.
- Cited-result and assumption audit: The proof uses the exact frozen
  Algorithm 1 weight `exp(epsilon score)` and does not invoke the source's
  commented-out utility lemma or its ambiguous probability amplification.
- Rigor checklist: The denominator is finite and positive, the unused `+2`
  is genuine slack, and the conditional statement is valid for every
  selected list tuple.
- Local adversarial test: Even if all other actual items have negligible
  weight and the failure symbol has the largest remaining weight, the one
  high-score item alone yields the stated upper bound. Empty selected lists
  cannot occur on the preceding selected-score event.
- Contribution to target step: It excludes fallback on the core event and
  produces a literal old list item for SOA and marking arguments.
- Verdict: PASS
- Repair direction: None.

### unit_015: List locality and query sensitivity on all inputs

- Statement fidelity: The lemma is event-free and covers every quotient
  neighboring pair, proving both one-block list replacement at every stage
  and sensitivity one of the maximum-occurrence query.
- Proof validity: Under a fixed public partition, one changed record affects
  only its block. Restrictions, fixed decomposition choices, list ordering,
  sanitation, and failure flags are deterministic block-local functions, so
  every other list is identical. Replacing one list changes every item's
  occurrence count by at most one; taking maxima preserves this Lipschitz
  bound, including the all-empty case. Conditioning on a common transcript
  stage leaves exactly one-list adjacency for the second mechanism.
- Cited-result and assumption audit: The only mathematical input is the
  locally proved total procedure. No realizability, source-good event,
  common stopping stage across neighboring executions, or private output is
  assumed.
- Rigor checklist: The proof extends counts to the whole `H_C`, covers an
  arbitrary replacement by or from an empty list, and uses the fixed
  transcript value required by adaptive composition rather than equating two
  neighboring stopping stages.
- Local adversarial test: A replacement may delete the unique maximizer and
  create a different maximizer, but the two max scores still differ by at
  most one. Sanitization to empty in only the affected block does not enlarge
  sensitivity.
- Contribution to target step: It supplies the exact all-input adjacency
  premises for both source privacy mechanisms.
- Verdict: PASS
- Repair direction: None.

### unit_016: All-input quotient and raw replacement privacy

- Statement fidelity: The proposition proves privacy for the complete
  totalized released law on arbitrary inputs, then transfers it to all raw
  replace-one inputs; it does not condition privacy on utility events.
- Proof validity: The first-Above process is the `K=1` specialization of
  Lyu's AboveThreshold privacy lemma. With the chosen `eta_o` and
  `delta_AT,o`, its cost is at most `(epsilon/4,delta/2)`. The source list
  cap, `B_o` threshold, and one-list adjacency discharge Lyu's Sparse Sample
  lemma, giving another `(epsilon/4,delta/2)`. Adaptive sequential
  composition gives `(epsilon/2,delta)`, hence the claimed weaker
  `(epsilon,delta)` guarantee. Data-independent partition mixing and terminal
  postprocessing preserve it. Accepted `T_N` neighbor transport then gives
  the raw inequality eventwise.
- Cited-result and assumption audit: Frozen Lemma 3.1 includes replacement
  of one list and exactly the `10 log(L/delta)/epsilon` threshold. Frozen
  Lemma 3.2 supplies the sensitivity-one first-positive transcript bound;
  the constant `c_AT` records its universal `O` constant. Adaptive
  composition is restated before use.
- Rigor checklist: Privacy covers nonrealizable labels, empty/invalid lists,
  differing stopping behavior, no success, `perp`, exhaustion, and fallback.
  The mark is not released or used in the privacy proof.
- Local adversarial test: A raw replacement inside the same quotient cell
  may map to equality or to one quotient-label replacement; a replacement in
  another cell still changes only one quotient record. Both cases fall under
  the proved quotient guarantee.
- Contribution to target step: It establishes the exact all-input released
  privacy interface required by the old comparison arm.
- Verdict: PASS
- Repair direction: None.

### unit_017: Exact SOA identity, fixed family, and empirical certificate

- Statement fidelity: The proposition proves the actual output is exactly
  an SOA of an old essential leaf, belongs to the fixed improper SOA family,
  has the needed irreducibility, and has master error at most `alpha/8`.
- Proof validity: Actual list membership supplies a maximum-dimensional leaf
  `G` with exact output identity and irreducibility. Lyu Lemma 4.2 gives the
  fixed-family Littlestone bound. Every `g in G` has producer-block error at
  most `gamma_o`; the two branches of `E_good,o` then give master error
  strictly below `2gamma_o`. If `SOA_G` had master error above
  `2gamma_o`, no `g in G` could agree with its predictions on all indexed
  master points, so the SOA-labeled restriction would be empty. The source
  definition of `n_o`-irreducibility says exactly that this restriction
  retains `LD(G)`, a contradiction.
- Cited-result and assumption audit: The proof uses the exact frozen
  irreducibility definition and Lemma 4.2 statement. It deliberately rejects
  the malformed `SOA_G(h)` display and unsupported probability-one sentence
  in the source theorem, using only the valid contradiction visible in its
  proof.
- Rigor checklist: Repeated sample points are allowed in the irreducibility
  point sequence, the leaf is nonempty, the empty class has strictly smaller
  dimension, and no propriety claim is made.
- Local adversarial test: At empirical mean zero the low branch applies; at
  a DDim-zero leaf the same exact SOA identity holds. An output in
  `widehat C_{d+1}\bar C` remains legal because every later interface is on
  the full `H_C`.
- Contribution to target step: It supplies the exact empirical certificate
  and fixed candidate-family identity needed before marked reconstruction.
- Verdict: PASS
- Repair direction: None.

### unit_018: Old occurrence-mark kernel and exact projection

- Statement fidelity: The proposition independently instantiates the
  accepted finite-mark construction on the old transcript and old all-stage
  lists, producing a marked kernel with the exact released marginal.
- Proof validity: On actual paths, exact Sparse Sample support makes the set
  of producer blocks containing the output nonempty. Finite dynamic list
  membership and actual status make every occurrence indicator, count, and
  uniform weight measurable. On nonactual paths all mass is assigned to
  mark zero. Integrating the weights against the old transcript/output law
  gives a pointwise probability measure; countable input promotion makes it
  a kernel. Pointwise normalization proves the finite projection sum.
- Cited-result and assumption audit: Current accepted Step 003 supplies the
  event/kernel coding and current accepted Step 004 supplies the abstract
  finite occurrence-splitting interface. The proof rechecks all old-arm
  premises instead of reusing the VC-arm marked law.
- Rigor checklist: Repeated occurrences in one block do not create duplicate
  block marks; occurrences across blocks remain distinct; actual and
  fallback paths with the same terminal value remain separated by status.
  The marked pair is analysis-only and is not claimed private.
- Local adversarial test: One occurrence gives a deterministic positive mark,
  all occurrences give the uniform distribution on all blocks, and a
  fallback value appearing in every list still receives mark zero. Every
  case projects to the same released output mass.
- Contribution to target step: It supplies the measurable producer mark and
  zero-residual projection used to make adaptive reconstruction finite.
- Verdict: PASS
- Repair direction: None.

### unit_019: Producer-local reconstruction and pathwise inclusion

- Statement fidelity: The lemma proves that every positive mark exposes a
  block-local finite candidate union, bounds complement empirical loss, and
  gives the exact pathwise reduction of a bad adaptive output to fixed
  candidates.
- Proof validity: All lists for producer `i` depend only on its `m_o`
  records, and their union has size at most `(d+1)L_o`. The mark definition
  puts the actual output in that union. The full-sample mistake count from
  unit 017 bounds the complement mistake count, and division by
  `(k_o-1)m_o` gives `k_o alpha/[8(k_o-1)]<=alpha/4` for `k_o>=2`.
  The realized output itself then witnesses one right-hand event in (19.3),
  so the inclusion is pathwise before conditioning.
- Cited-result and assumption audit: The lemma uses only the named SOA and
  marked-projection results plus the block-local construction. It does not
  assert independence of the adaptively selected output.
- Rigor checklist: Candidate duplicates only reduce cardinality, mark zero is
  absent on the core, and the population-error predicate refers to the same
  quotient function and metric as the output event.
- Local adversarial test: At `k_o=2`, the complement factor is exactly two
  and gives `alpha/4`. An output appearing in several blocks is handled by
  whichever realized positive mark is drawn, without conditioning-induced
  candidate changes.
- Contribution to target step: It converts adaptive selection into a finite
  producer-local union to which iid complement tails can be applied.
- Verdict: PASS
- Repair direction: None.

### unit_020: Fixed-candidate complement lower tail

- Statement fidelity: The lemma states the exact conditional iid interface
  and one-sided probability bound for every fixed producer-local candidate
  of population error greater than `alpha`.
- Proof validity: Conditional on the independent partition and producer
  block, the block-local candidate is fixed and the complement records remain
  iid, so their errors are independent Bernoulli variables of mean `p`.
  Since `p>alpha`, passing the `alpha/4` certificate implies a `p/4`
  lower-tail event. The inline exponential-Markov proof of (C7) is correct:
  with `lambda=-log(1-theta)`, factorization of the Bernoulli mgf and
  `log(1-p theta)<=-p theta` give the exponent
  `-pM[theta+(1-theta)log(1-theta)]`; differentiating the displayed scalar
  remainder proves this bracket is at least `theta^2/2`. Taking
  `theta=3/4` yields `9pM/32>=9alpha M/32`.
- Cited-result and assumption audit: No external Chernoff theorem is used as
  authority. Independence is discharged from realizable iid sampling only
  after conditioning on the data-independent partition and producer block.
- Rigor checklist: The derivation treats noninteger thresholds correctly,
  checks `M=0` and `p=0` in the general statement, and notes the live case
  has `M>=1` and `p>0`. All inequality directions under negative exponents
  are correct.
- Local adversarial test: At `p` just above `alpha`, the final bound remains
  valid by monotonicity of the exponent. At `p=1`, the Bernoulli mgf and
  scalar inequality remain legal because `theta<1`.
- Contribution to target step: It supplies the exact population
  reconstruction exponent without selected-output independence or an
  uncountable union.
- Verdict: PASS
- Repair direction: None.

### unit_021: Independent old-arm PAC ledger

- Statement fidelity: The proposition proves the unconditional raw
  `(alpha,beta)` realizable PAC guarantee with four explicit old-arm
  confidence shares and no VC-arm success event.
- Proof validity: The fixed-point bound controls `log p_o,d` and therefore
  the marked candidate multiplicity. The large fixed `C_o` makes
  `9alpha(k_o-1)m_o/32` dominate
  `log[k_o(d+1)L_o/beta_gen,o]`, yielding (21.6). Summing the pathwise
  inclusion over positive marks and only then conditioning on each producer
  block permits a finite application of unit 020. The trace, AboveThreshold,
  Sparse Sample, and reconstruction failures sum exactly to `beta`.
  Projection removes the mark, accepted iid pushforward identifies the
  quotient experiment, and exact accepted risk transport gives the raw
  statement uniformly over `D,c`.
- Cited-result and assumption audit: Every probabilistic input is a named
  local conclusion or a current accepted Step 002/004 interface. The proof
  takes no supremum over `H_C`, asserts no conditional block independence
  given the master sample, and uses no source PAC corollary as a substitute.
- Rigor checklist: The event decomposition covers all noncore paths, the
  conditional Sparse Sample bound is integrated over selected lists, and
  mark events form a finite partition on the core. The probability mode is
  unconditional over data, partition, mechanisms, and the analysis mark.
- Local adversarial test: A candidate family depending arbitrarily on the
  producer block is allowed because the complement is conditioned only
  after the finite pathwise union is established. Infinite `C` is harmless
  because each producer union is finite.
- Contribution to target step: It establishes the complete distribution-free
  population utility interface of the old comparison arm.
- Verdict: PASS
- Repair direction: None.

### unit_022: Ceiling-aware explicit old-arm rate

- Statement fidelity: The proposition proves the requested explicit
  `d^5` old-arm bound with a universal constant, a declared logarithmic
  power, and no hidden positive power of `d`.
- Proof validity: The candidate functions are nondecreasing in `t`, so the
  least feasible `k_o` is controlled by the explicit witness. The prior
  envelope gives
  `k_o<=C d^2 log(64/(delta beta)) Lambda^2/epsilon`,
  `a_o<=C d Lambda^2`, `log Q_o<=C Lambda^2`, and, with the ceiling
  retained, `m_o<=C d^3 Lambda^4/alpha`. Multiplication gives exactly
  `d^5 Lambda^6 log(64/(delta beta))/(epsilon alpha)`. Since
  `delta beta<1/4`, the displayed logarithm is at most four times
  `log(1/(delta beta))`, and the first summand is bounded by the setting's
  `R_old`.
- Cited-result and assumption audit: No source tilde notation is used as a
  proof. Every auxiliary is eliminated through named local inequalities and
  all hidden constants depend only on fixed universal choices.
- Rigor checklist: Exposed variables, the ceiling, fixed-sample horizon,
  probability parameters, and hidden-constant exclusions are explicit. The
  additional nonnegative `(d+log(1/beta))/alpha` term in `R_old` is not
  dropped from the public definition.
- Local adversarial test: At `d=1`, the polynomial factor is one and all
  remaining dependence is visible. At very small `delta`, the rate grows
  through the exposed logarithm and `Lambda`; no fixed positive `delta` is
  silently treated as an asymptotic schedule.
- Contribution to target step: It exports (T) with the explicit valid choice
  `q_old=6` and the intended old `d^5` baseline.
- Verdict: PASS
- Repair direction: None.

### unit_023: Boundaries and fixed versus scheduled delta

- Statement fidelity: The proposition gathers every target-relevant
  boundary without weakening the earlier kernel, privacy, PAC, projection,
  or rate conclusions.
- Proof validity: The no-data result supplies deterministic mark zero, zero
  risk, and `(0,0)` privacy. Direct substitution verifies the `d=1`
  scales and first transition. The construction and trace/list bounds never
  use `|C|`, so finite and infinite classes and `v=d` share the same old
  arm. Totalization and all-input privacy cover fallback paths, while the
  core permits improper `H_C` outputs. Multiplying the finite-parameter rate
  by `delta` proves the optional sufficient schedule (23.1).
- Cited-result and assumption audit: The proposition cites exactly the named
  zero, privacy, PAC, and rate results. It does not infer the old-arm schedule
  from the separate VC-arm schedule in the setting.
- Rigor checklist: All ceilings and four confidence shares remain visible;
  fixed-`delta` theorem validity is distinguished from sequence-level
  `N_old delta ->0`; no finite-cardinality, propriety, or efficiency premise
  appears.
- Local adversarial test: Infinite `C` leaves the finite trace and source
  list arguments intact. At `v=d`, the arm remains exactly at the `d^5`
  scale. Fallback outputs may be improper only in the allowed `H_C` codomain
  and remain private.
- Contribution to target step: It closes the baseline-reduction, cardinality,
  improper-output, fallback, ceiling, and delta-schedule audits.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the 23-unit local lemma
map. The potentially hidden obligations are all localized and proved:

- scalar feasibility and every ceiling are in units 002-004;
- pointwise totality, kernel promotion, raw pullback, and exact risk are in
  units 005-006;
- finite traces, the full inline pairwise-smoothing proof of (C6), the two
  fixed-trace tails, and fixed-point confidence closure are in units 007-009;
- the source endpoint, exact half-scale map, essential lists, irreducibility,
  DDim descent, and common support are in units 010-012;
- mechanism utility, failure-symbol exclusion, one-list locality, and
  all-input privacy are in units 013-016;
- exact SOA identity, marked-kernel projection, producer-local
  reconstruction, the full exponential-Markov Bernoulli proof of (C7), and
  the unconditional four-share ledger are in units 017-021; and
- auxiliary elimination, explicit `d^5` dependence, and every baseline or
  boundary specialization are in units 022-023.

The source-result statements, current-object mappings, hypotheses, and
non-output boundaries are restated before use. The frozen source's malformed
theorem display and unsupported probability-one amplification are expressly
excluded. The assembly uses theorem-style labels, not local unit IDs or
subsection prose, as mathematical authority.

## Target Claim Audit

The proof establishes the exact accepted `step_015` claim under the unchanged
four primitive assumptions and exactly the accepted dependencies
`step_002`, `step_003`, and `step_004`:

- for `d=0`, the setting-defined old arm uses zero samples and the exact
  deterministic singleton release;
- for `d>=1`, an independently calibrated old quotient procedure is total and
  measurable, with a raw Markov-kernel pullback and exact decoded risk;
- the released quotient and raw laws are private on every replace-one labeled
  input, including nonrealizable inputs and all fallback paths;
- under arbitrary realizable iid `D,c`, the released law has population error
  at most `alpha` with probability at least `1-beta`; and
- `N_old<=K_old Lambda^6 R_old` with universal `K_old` and no hidden positive
  power of `d`.

Quantifiers, output codomain, replacement adjacency, probability mode,
fixed-sample horizon, zero-one-risk norm, confidence ledger, and parameter
dependence all match the sketch row and `setting.md`. The result is explicitly
conditional on Assumption~\ref{assump:countable-evaluation-quotient}. It makes
no claim for uncountable evaluation quotients, does not characterize private
sample complexity, and does not solve the unrestricted DP-PAC open problem.

## Explicit Rate Audit

- Exposed variables: `d,alpha,beta,epsilon,delta`; `v` appears only in the
  setting envelope and the accepted fact `v<=d`, while `|C|` is absent.
- Hidden constants: `K_old` may depend only on the universal source constant
  `c_AT` and the fixed universal scalar choices. It may not depend on the
  space, class, distribution, target, parameters, sample, partition,
  restriction, decomposition, list, event, transcript, mark, output, or
  stopping stage.
- Fixed quantities: no asymptotic condition is needed for finite-parameter
  validity. Every allowed fixed `delta` is covered.
- Probability mode: all-input eventwise Markov-kernel DP and unconditional
  high-probability realizable PAC utility over iid data and all internal
  randomness, followed by exact removal of the analysis-only mark.
- Horizon mode: fixed `N_old=0` at `d=0` and fixed
  `N_old=k_om_o` at `d>=1`.
- Norm mode: quotient population binary zero-one error, transferred exactly
  to decoded raw error.
- Auxiliary choices and technical conditions: units 002-004 define and
  verify every share, threshold, ceiling, list cap, and teacher margin before
  execution.
- Term absorption: teacher feasibility is displayed in (3.3)-(4.8), trace
  closure in (9.5)-(9.9), marked multiplicity in (21.2)-(21.6), and public
  rate elimination in (22.2)-(22.4). No term is dropped by prose.
- Probability conversion: the four utility shares sum exactly to `beta`, and
  the two privacy components compose to `(epsilon/2,delta)`, which is
  conservatively within `(epsilon,delta)`.
- Baseline reduction: the no-data branch is exact; `v=d` leaves the old
  `d^5` arm unchanged; finite and infinite classes use the same arm; fixed
  `delta` validity is preserved; and `N_old delta->0` is stated only under
  the separate sufficient old-arm schedule.

## Notation Surface Audit

The notation surface is contract-valid and economical. The setting-defined
objects retain their meanings. The released old kernel, raw pullback, marked
lift, sample size, DP/PAC statements, projection, and rate are the only
downstream-facing outputs. The scalar dictionary and generated restrictions,
lists, events, selected stage, SOA leaf, producer unions, and mark are
appendix-local. Smoothing variables for (C6), Bernoulli tilting variables for
(C7), and universal comparison constants are proof-local. Every helper is
defined before use, all constants have visible provenance, and no proof-local
dictionary is exported as a theorem assumption.

The null-law notation is especially disciplined: arbitrary pointwise laws
receive kernel promotion and universally satisfy only `A_0=K_0`; the stronger
`K_0=A_0=delta_{bar c_0}` identity is invoked solely for the setting-defined
old-Lyu arm through the arm-specific Step 001 authority already exposed by
accepted Step 003.

## Target-Step Assembly Audit

The named results assemble in dependency order without a missing bridge.
Proposition~\ref{prop:step-015-zero} handles the null branch. Lemmas and
Propositions~\ref{lem:step-015-dictionary}--\ref{prop:step-015-kernel}
construct the positive old tuple, total pointwise law, quotient kernel, raw
pullback, and risk interface. Lemmas and
Propositions~\ref{lem:step-015-traces}--\ref{prop:step-015-sparse} prove the
independent old trace event, current/source bridge, lists, finite DDim
termination, selected stage, and actual output. Lemma~\ref{lem:step-015-locality}
and Proposition~\ref{prop:step-015-dp} prove event-free all-input privacy.
Propositions and Lemmas~\ref{prop:step-015-soa}--\ref{prop:step-015-pac}
prove exact SOA identity, marked projection, finite producer reconstruction,
and unconditional raw PAC utility. Finally,
Propositions~\ref{prop:step-015-rate} and
\ref{prop:step-015-boundaries} give the explicit rate and every boundary
specialization.

These results jointly imply the exact old-arm kernel/privacy/PAC/rate tuple
exported to `step_016`. No VC-arm event, selected stage, privacy result, PAC
result, or scalar rate is consumed, and no diagnostic artifact is used as
proof evidence.

## Review Rationale

Acceptance with no producer retry is the smallest sound decision. All binding
hashes and dependency identities match the supplied live artifacts. A fresh
line-by-line audit verifies all 23 theorem-style units, both inline
concentration derivations, source/DDim convention translation, scalar fixed
point, mechanism utility and all-input privacy, exact SOA certificate, marked
finite reconstruction, four-share confidence conversion, explicit `d^5`
rate, and every requested boundary. The clarified null-law distinction and
the finite-or-countable quotient scope are preserved exactly. No local proof,
dependency, or sketch-interface defect remains.
