# Proof Step Review

## Step Review Identity

- Registered reviewer: `/root/p2_step013_reviewer_idea4_v4`
- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 3
- Review attempt: 4
- Reviewed proof artifact:
  `perspective_2/idea_4/proof_steps/step_013/proof.md`
- Reviewed proof SHA-256:
  `05b705c11f57591bdc061f3b6f0b556bf2e5f2eafccca2bbf3651c1878187b19`
- Binding setting artifact: `perspective_2/idea_4/setting.md`
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch artifact: `perspective_2/idea_4/proof_sketch.md`
- Accepted proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review artifact:
  `perspective_2/idea_4/proof_sketch_review.md`
- Accepted proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Current accepted direct dependency proof/review SHA-256 pairs:
  - `step_004`: `aded5334e6b420fa91d8de54cf36290a5aa726ab4d955f84586afa67311192e5` /
    `483174aef76458d0433547a4eb68628cb79d92d3ceddd0010c6e4835a94b15ec`
  - `step_007`: `f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1` /
    `6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1`
  - `step_008`: `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` /
    `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`
  - `step_010`: `f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98` /
    `46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74`
  - `step_012`: `0a5d28b5f44489f7571fe3de7b5770ba5eadc43f52e20ad116feeea84d2d8e2f` /
    `d81afb9811900bf85507a8a87d4132dba0c333bd47da0da095c08701a20fb7ca`
- Current accepted transitive dependency proof/review SHA-256 pairs checked for
  closure:
  - `step_001`: `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530` /
    `83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c`
  - `step_002`: `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f` /
    `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`
  - `step_003`: `b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280` /
    `c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa`
  - `step_005`: `f1ba8be90c3ec4c84ac79bed9bb8ad537d9912e5737e6362e50647c3634557c5` /
    `40bbda8f8bb5f05d545f348a4d1a047454e86a8a6833db9f28a756d0a12ef67b`
  - `step_006`: `5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b` /
    `3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76`
  - `step_009`: `b5c2dd0c3c737d906881e324a6aaacb4d958be8f288106b067a58b980cebbe52` /
    `71be50c1a5f40c03d5d64dd767a3ba948f2aed385cbdc3375b33ffdd4a5fc5c0`
- Dependency attempt closure: `step_001` (2/2), `step_002` (2/2),
  `step_003` (3/3), `step_004` (2/2), `step_005` (2/2), `step_006`
  (1/1), `step_007` (1/1), `step_008` (2/2), `step_009` (1/1),
  `step_010` (2/2), and `step_012` (2/2), where each pair is producer
  attempt/review attempt.
- Evidence boundary: this review used only the binding setting, accepted
  sketch pair, current target proof, and current accepted dependency closure.
  It did not use the stale live Step 013 review, proof history, trackers,
  worker logs, global diagnostics, assembly artifacts, specialized or final
  reviews, or results as proof evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Measurable block-local all-stage candidate family

- Statement fidelity: Lemma~\ref{lem:step-013-block-family} states the exact
  finite reconstruction interface required by the accepted row. It uses the
  literal Step 008 lists, unions all (d+1) stages, retains producer-block
  locality, proves the ((d+1)L) cap, and includes the measurable bad-section
  conclusion needed for integration.
- Proof validity: By the accepted Step 008 definition,
  (H_i^r=\{h:e_i(h)\leq\rho^{r+1}\gamma\}) and hence
  \(\mathcal L_i^r\) depend only on the indexed producer block and the fixed
  public dictionary. Taking all stages removes selected-stage and mechanism
  dependence. The local input space (Z_Q^m) is countable discrete, so its
  fixed finite-list coordinate is measurable. The accepted finite-list
  interface gives Borel dynamic membership. The cap follows by summing the
  accepted one-stage caps. Finally, on finite or countable (Q_C), the risk
  is a monotone limit of finite coordinate sums and the complement error is a
  finite measurable sum, so the finite encoded disjunction in (19) is
  measurable.
- Cited-result and assumption audit: Assumption~\ref{assump:countable-evaluation-quotient}
  supplies only the countable measurable state and output coordinates.
  Accepted Step 004 supplies the finite-list membership interface, and
  accepted Proposition~\ref{prop:step-008-list-envelope} supplies the literal
  list identities, cap, and exact (L). No selector, generated event,
  population conclusion, or list independence is assumed.
- Rigor checklist: The proof handles empty lists, repeated entries within and
  across stages, finite and countably infinite quotients, infinite (H_C),
  and arbitrary fixed ((\bar D,\bar c)). It never replaces an actual
  function by an empirical trace and never forms an uncountable supremum.
- Local adversarial test: If every stage list is empty, the graph section and
  bad event are empty. If one function appears in every stage, the encoding
  may repeat it but the mathematical union and probability event do not grow.
  A countably infinite output space still gives a measurable coordinate-risk
  series.
- Contribution to target step: It produces the fixed-after-producer-data
  finite family and measurable sections required by the pathwise inclusion
  and subsequent tower integral.
- Verdict: PASS
- Repair direction: None.

### unit_002: Full-path marked inclusion and Holdout

- Statement fidelity: Proposition~\ref{prop:step-013-pathwise} proves both
  mandatory pathwise assertions before any conditioning: positive mark
  (J=i) places the same literal selected output in
  \(\mathcal G_i(\bar S_i)\), and the full-master certificate implies the
  complement Holdout bound. Its inclusion (22) is exactly the bridge fixed by
  the sketch.
- Proof validity: On (E_{\rm core}), accepted Step 010 gives actual rather
  than fallback status and the accepted mark support gives
  \(\bar H\in\mathcal G_i(\bar S_i)\) whenever (J=i). Accepted Step 012
  applies to that same function and gives at most (n_0\alpha/8) total
  errors. Nonnegativity permits deletion of the producer terms, and
  (n_0=km), (n_0-m=(k-1)m), and (k/(k-1)\leq2) yield exactly
  \[
    \widehat{\operatorname{err}}_{-i}(\bar H)
    \leq \frac{k\alpha}{8(k-1)}\leq\frac\alpha4.
  \]
  Adding (r(\bar H)>\alpha) makes that literal function a witness to the
  finite union, proving (22).
- Cited-result and assumption audit: The actual-output and mark facts are the
  exact conclusions of accepted Steps 004 and 010, and the empirical bound is
  the exact conclusion of accepted Lemma~\ref{lem:step-012-empirical}. No
  independence, properness, or population guarantee is imported.
- Rigor checklist: The proof keeps full-sample and complement normalizations
  distinct, uses indexed multiplicity rather than distinct sample values,
  covers equality at (alpha/8) and (alpha/4), and uses (k\geq2) only
  where the denominator requires it.
- Local adversarial test: At (k=2), the factor is exactly two. A selected
  improper function, an output equal in value to the fallback default, a
  repeated record, and first- or last-stage selection all preserve the same
  pathwise calculation. Conditioning on (J=i) would destroy the intended
  independence argument, and no such conditioning occurs.
- Contribution to target step: It establishes the mark-first support and
  Holdout inclusion that legally precede all fixed-candidate concentration.
- Verdict: PASS
- Repair direction: None.

### unit_003: Direct one-sided iid Bernoulli lower tail

- Statement fidelity: Lemma~\ref{lem:step-013-lower-tail} treats a fixed
  (h\in H_C), the same quotient target, (p=r(h)>\alpha), and exactly
  (M=(k-1)m) fresh iid complement records. Its conclusion has the required
  exponent (9/32).
- Proof validity: The error count is \(\operatorname{Bin}(M,p)\), and
  \(\{Y/M\leq\alpha/4\}\subseteq\{Y\leq Mp/4\}\). For
  \(\lambda=\log4\), exponential Markov gives
  \[
    \Pr[Y\leq Mp/4]
    \leq \exp\{Mp(\lambda/4-3/4)\}.
  \]
  The displayed elementary series proves (log4<3/2), so this is at most
  (e^{-3Mp/8}\leq e^{-9Mp/32}\), and (p>\alpha) gives the final bound.
- Cited-result and assumption audit: Assumption~\ref{assump:realizable-iid}
  supplies iid Bernoulli error indicators for a fixed quotient function.
  The proof derives the tail directly; it cites no uninstantiated Chernoff
  theorem and assumes no selected-output independence.
- Rigor checklist: Exponential Markov remains valid when (Mp/4) is not an
  integer. All exponent comparisons have the correct sign, (M\geq1), and
  strict (p>\alpha) is used only to weaken the exponent to the public
  threshold.
- Local adversarial test: The calculation remains valid as (p\downarrow
  \alpha), at (k=2), and for arbitrary improper (h\in H_C). The proof
  does not need (h\in\bar C).
- Contribution to target step: It supplies the exact fixed-candidate
  complement probability used after producer conditioning.
- Verdict: PASS
- Repair direction: None.

### unit_004: Finite producer integration after pathwise inclusion

- Statement fidelity: Proposition~\ref{prop:step-013-finite-integration}
  implements the accepted ordering: first use the full-path inclusion, then
  fix the data-independent partition, then condition on producer data, apply
  a finite fixed-candidate union, and integrate. It targets exactly the
  marked core-failure charge.
- Proof validity: For a deterministic indexed partition, disjoint coordinate
  groups of the iid master sample are independent, so after fixing
  \(\bar S_i=s_i\), the complement consists of (M=(k-1)m) iid examples.
  Unit 001 makes \(\mathcal G_i(s_i)\) a fixed family of at most
  ((d+1)L) functions. Unit 003 applies separately to every bad member and
  the finite union gives (30), uniformly in (s_i) and the partition. The
  countable producer state permits the iid product conditional kernel even
  on null states, and Unit 001 supplies the measurability needed for the
  tower. Finally, actual status excludes mark zero, the positive mark events
  are disjoint, and (22) gives the sum in (32).
- Cited-result and assumption audit: The only stochastic source is
  Assumption~\ref{assump:realizable-iid}; list locality, pathwise inclusion,
  and the tail are named local results. The learner and mark kernels are
  integrated only after the sample event is bounded and contribute unit
  mass. No claim of block independence conditional on the full master sample
  appears.
- Rigor checklist: Conditioning is on a data-independent partition and one
  producer block, never on (J), the selected stage, the output, or a
  mechanism-success event. The proof uses a finite set of literal functions,
  not a random supremum. Empty and duplicate list entries can only reduce the
  union.
- Local adversarial test: If the mark depends maximally on complement data,
  (22) still bounds its event by (A_i), which no longer contains the mark.
  If a producer atom has zero probability, the explicitly chosen product
  kernel still gives the same pointwise tail. At (k=2), the complement is
  one full block and remains nonempty.
- Contribution to target step: It proves
  \[
    \widetilde{\mathbb P}(E_{\rm core}\cap F_\alpha)
    \leq k(d+1)L e^{-9\alpha(k-1)m/32}
  \]
  without any post-mark independence assertion.
- Verdict: PASS
- Repair direction: None.

### unit_005: Exact finite-multiplicity domination

- Statement fidelity: Lemma~\ref{lem:step-013-beta-gen} uses precisely the
  accepted Step 007 fixed point, lower ceiling inequality and universal
  calibration, together with the exact Step 008 list formula. It proves the
  row's complete producer, stage, list, and confidence domination.
- Proof validity: The positive ranges imply (Q>e+8ed^2>d), so all uses of
  (log Q>1), (log d\leq\log Q), and
  (log2\leq\log Q) are legal. The fixed point gives
  \(\log n_0\leq(C_{\rm fp}+1)\log Q\), hence
  \(\log L\leq(C_{\rm fp}+4)d^2\log Q\). Adding
  (b=\log(4k/\beta)) and (log(d+1)) yields the displayed exact bound
  \[
    \log\frac{k(d+1)L}{\beta_{\rm gen}}
    \leq(C_{\rm fp}+7)d^2a\log Q.
  \]
  The accepted calibration
  (C_{\rm blk}/3600\geq C_{\rm fp}+2), the lower bound on (m), and
  (k-1\geq1) make the lower-tail exponent dominate this logarithm.
- Cited-result and assumption audit: Every constant and scalar identity is
  restated from the current accepted Steps 007 and 008. The proof chooses no
  new parameter-dependent constant and does not import a public rate or an
  unproved asymptotic absorption.
- Rigor checklist: The algebra retains the ceiling in the needed lower
  direction, retains the exact ((d+1)L) and (k) multiplicities, and uses
  the exact allocation beta_gen = beta/4. All inequalities remain valid for
  (d=v=1), (v=d), and formal (k=2).
- Local adversarial test: Substituting (d=1) leaves every logarithm
  positive. A ceiling-dominated (m) only strengthens the exponent. Making
  (L) attain its full cap or every producer mark possible is exactly the
  multiplicity paid in (37)-(41).
- Contribution to target step: It converts the finite integration term into
  the fourth confidence share with no hidden term.
- Verdict: PASS
- Repair direction: None.

### unit_006: Unconditional released quotient PAC ledger

- Statement fidelity: Proposition~\ref{prop:step-013-pac} states the exact
  unconditional quotient population guarantee, separates the positive and
  zero-dimensional branches, and includes exact projection, confidence,
  fallback, duplication, improper-output, and scope boundaries without
  adding raw-risk, privacy, properness, or public-rate claims.
- Proof validity: Integrating the accepted pointwise mechanism bound over
  successful (E_{\rm good}) sections gives the two mechanism shares.
  Step 012 adds no further failure on (E_{\rm core}). The partition
  \[
    F_\alpha\subseteq E_{\rm good}^c
      \cup(E_{\rm good}\cap E_{\rm mech}^c)
      \cup(E_{\rm core}\cap F_\alpha)
  \]
  and Units 004-005 therefore give four shares totaling beta. The bad
  output set is measurable, and accepted Step 004 projection identifies its
  marked and released probabilities exactly.
- Cited-result and assumption audit: The trace charge, mechanism charge,
  empirical certificate, marked projection, and null-branch law are the exact
  current accepted dependency conclusions. Assumption~\ref{assump:realizable-iid}
  is used only for utility. No privacy fact or raw decoder-risk identity is
  consumed.
- Rigor checklist: The proof treats (d=0) by the setting-defined VC-Lyu
  arm's accepted no-data singleton law and bypasses (k,m,J,\mathcal G_i),
  and every (k-1) denominator. It does not infer a generic Dirac law from
  an empty input: the universal transitive interface remains only (A_0=K_0),
  while the stronger Dirac conclusion is invoked solely for the
  setting-defined arm. On (d\geq1), fallback is paid outside the core,
  mark zero is excluded inside it, and an actual output equal in value to
  \(\bar c_0\) remains actual.
- Local adversarial test: The argument passes (k=2), (d=1), (v=1),
  (v=d), empty endpoint lists, first- and last-stage selection, duplicate
  candidates, repeated indexed records, finite and countably infinite
  quotients, and uncountable-as-a-set (H_C). It uses finite candidate
  sections throughout and never assumes proper output.
- Contribution to target step: It projects the marked bound to the released
  law and proves the unconditional quotient PAC event with exactly the
  allocated confidence.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the six-unit map. The
block-local finite graph and population-risk measurability are in
Lemma~\ref{lem:step-013-block-family}; the marked support and Holdout
calculation are in Proposition~\ref{prop:step-013-pathwise}; the Bernoulli
tail is fully derived in Lemma~\ref{lem:step-013-lower-tail}; the product
conditioning, finite union, null-state kernel convention, tower, and mark sum
are in Proposition~\ref{prop:step-013-finite-integration}; every scalar
domination is in Lemma~\ref{lem:step-013-beta-gen}; and probability projection
and branch boundaries are in Proposition~\ref{prop:step-013-pac}.

The prose and assembly introduce no additional selector, list-locality,
conditional-independence, trace-representative, properness, risk-transfer,
privacy, or rate-specialization claim. The finite-list Borel relation, finite
kernel integration, and product conditional law on a countable producer
space are explicitly discharged where used rather than hidden as generated
assumptions.

## Target Claim Audit

The proof establishes the exact accepted `step_013` row. For every allowed
(D) and (c\in C), it constructs measurable finite producer sections,
proves Holdout for the same selected quotient function, applies the direct
one-sided iid lower tail only after fixing producer data, pays exactly
(k(d+1)L) candidates, and obtains

\[
 \Pr[\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha]\leq\beta.
\]

Quantifiers, strict and weak inequalities, the fixed-sample probability mode,
zero-one quotient risk, confidence allocation, and finite/countable quotient
scope all match the setting and sketch. Assumption provenance is sound:
countable quotient measurability and realizable iid sampling are primitive;
kernels, lists, good events, actual status, empirical error, mark support,
projection, and scalar calibration are current accepted derived outputs.

The direct dependency identities match the submitted proof, and their current
accepted transitive closure is exactly the one recorded in the identity
section. In particular, Step 004 reaches the current Step 003 pair; Step 007
reaches Steps 001, 005 and 006 with Step 005 reaching Step 002; Step 008
reaches Steps 006-007; Step 010 reaches Steps 001, 004 and 009 with Step 009
reaching Step 008; and Step 012 reaches Steps 006, 008 and 010. No stale
producer or review artifact enters the derivation.

The conclusion remains explicitly conditional on
Assumption~\ref{assump:countable-evaluation-quotient}. It neither extends to
uncountable evaluation quotients nor claims raw decoded risk, privacy,
properness, a finite/old-arm result, a public sample-complexity rate, or a
solution of the unrestricted DP-PAC open problem.

## Explicit Rate Audit

- Exposed quantities: (d,v,k,m,n_0,L,a,Q,\alpha,\beta),
  (M=(k-1)m), the four confidence shares, and the inherited universal
  constants (C_{\rm blk},C_{\rm fp}). Dependence on
  (\varepsilon,\delta) remains visible through the exact accepted public
  teacher/list dictionary; this step does not eliminate those auxiliaries.
- Hidden constants: The lower tail has none. The only inherited constant is
  the once-fixed universal (C_{\rm blk}), with
  (C_{\rm fp}=2+\log(1+C_{\rm blk})). Neither may depend on any exposed
  parameter, class, distribution, sample, partition, list, event, transcript,
  output, or mark.
- Fixed quantities and modes: The final claim is fixed-sample unconditional
  high probability over iid sampling, the one finite partition, mechanism
  randomness, and the analysis mark, followed by exact projection to the
  released marginal. The horizon is (d+1) finite stages and one marked
  reconstruction. The metric is quotient population binary zero-one risk;
  full-master and complement empirical zero-one errors are intermediate
  versions of that same loss.
- Admissibility and probability conversion: The positive branch uses
  (d\geq1), (1\leq v\leq d), (k\geq2), (m\geq1), and the setting's
  strict parameter ranges. The full-path inclusion precedes producer
  conditioning; finite section integration precedes the mark sum; the four
  shares are then added; and projection is exact.
- Term domination: Holdout is displayed with the exact factor
  (k/(k-1)\leq2); the lower-tail exponent is derived in (26)-(27); list and
  confidence multiplicities are bounded in (34)-(39); and the accepted block
  exponent dominates them in (40)-(41). No term is absorbed by prose.
- Baseline reduction: (d=0) gives the setting-arm no-data zero-risk law;
  (k=2) retains a nonempty complement and exact factor two; (d=1) retains
  both stages; (v=1) and (v=d) retain the accepted fixed point. This step
  introduces no conservative loss to an inherited baseline.

## Notation Surface Audit

The notation surface is economical and correctly scoped. The released
quotient PAC conclusion is the sole public-facing export. The all-stage
family, marked reconstruction bound, and marked projection are appendix-local
interfaces. The marked experiment, core and failure events, risk alias,
candidate-section events, bad-output set, complement size, deterministic
partition/producer sections, Bernoulli count, and scalar aliases are
proof-local. The one-use set (B_\alpha) merely names the measurable output
event for exact projection and exports nothing.

Every helper is defined from setting notation, a current accepted dependency,
or a named local result. No helper dictionary hides finiteness, measurability,
constant dependence, probability conditioning, function identity, or the
improper-output boundary.

## Target-Step Assembly Audit

The assembly is dependency-complete and uses theorem-style names and labels.
Lemma~\ref{lem:step-013-block-family} produces the measurable producer-local
family. Proposition~\ref{prop:step-013-pathwise} gives the mark-first Holdout
inclusion. Lemma~\ref{lem:step-013-lower-tail} supplies the fixed-candidate
tail. Proposition~\ref{prop:step-013-finite-integration} performs the legal
finite integration. Lemma~\ref{lem:step-013-beta-gen} pays its exact
multiplicity. Proposition~\ref{prop:step-013-pac} combines the three accepted
earlier confidence charges with the reconstruction charge and applies the
accepted exact projection.

These named results jointly imply the exact target without an unreviewed
lemma, changed dependency, new assumption, post-mark independence claim,
uncountable union, raw-risk transfer, privacy claim, or public-rate
specialization.

## Review Rationale

Acceptance with no retry is the smallest sound decision. Independent
line-by-line review verifies all six local units, the exact direct and
transitive dependency identities, measurable finite reconstruction, the
mark-first conditioning order, the Bernoulli constants, the complete
multiplicity algebra, the four-share ledger, exact released projection, and
every requested branch and no-overclaim boundary. The submitted proof proves
the unchanged accepted sketch interface under the binding setting, and no
local, dependency, or sketch-interface defect remains.
