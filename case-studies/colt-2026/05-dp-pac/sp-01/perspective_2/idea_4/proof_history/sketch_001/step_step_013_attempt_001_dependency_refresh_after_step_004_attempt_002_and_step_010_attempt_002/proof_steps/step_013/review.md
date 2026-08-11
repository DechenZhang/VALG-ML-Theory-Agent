# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_013/proof.md`
- Reviewed proof SHA-256: `df6c70d3af7b5bca81d371e092695c822b01bc9a10cd0a5972b3cd03245c4054`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  `step_004` `dde324f382fb084af67f773a97140eb205597d15f7ab9d83e13605bf62b80cc8` / `254e4b8ef32bae1676cfb9512e4987bfdf81b629c38b193d4787dcf192b82fa0`;
  `step_007` `f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1` / `6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1`;
  `step_008` `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` / `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`;
  `step_010` `117f4a769b754335bafb792f0390fbae81beaf8967d93fb9aa89f3dafd0b1925` / `ac0b37a40b9d38d6c49c5ffc5e5e91dec51b2f264eed56c9e03da84c6b6897e3`;
  `step_012` `d8606bac937e01dc07248f136ffdd13a6cbf7b27ceb0475f58261a651e7b25fa` / `8f09c96a0c478b443e137ace265dbbf34b6dc24912132091ea3effbc40253a79`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma exports exactly the block-local all-stage family required by the accepted row: the literal Step 008 functions, all (d+1) stages, measurable finite-list membership, cap ((d+1)L), and measurable bad-candidate sections. It does not replace functions by traces or condition on a selected stage.
- Proof validity: Each restriction and pre-fixed decomposition/list lookup is a function only of (s_i). On countable-discrete (Z_Q^m), the ordered list map is measurable; since (H_C) is standard Borel, its finite-list graph is measurable. The risk map is the monotone limit of countable coordinate sums, and complement loss is a finite measurable sum, so (19) is a measurable finite disjunction. Empty lists and repeated entries are handled correctly.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-008-list-envelope} supplies the actual lists, per-stage cap, all-stage union, and exact (L); accepted Lemma~\ref{lem:step-004-occurrence} supplies the compatible dynamic finite-list membership interface. Countability and the output sigma-field are the binding quotient interface already used by those accepted producers, not a new selector or generated measurability assumption.
- Rigor checklist: Quantifiers cover every (i), local block state, and partition. Finiteness, graph measurability, risk measurability for infinite (H_C), duplicate candidates, and the empty union are explicit. No uncountable union, supremum, or class-cardinality premise occurs.
- Local adversarial test: Countably infinite (Q_C), uncountable-as-a-set (H_C), an infinite concept class, empty lists at every stage, the same function at every stage, and a candidate of risk exactly (alpha) all preserve the claim; the strict bad set correctly retains only risk (>alpha).
- Contribution to target step: It makes every later candidate fixed after conditioning only on producer data and supplies the measurable finite sections needed for integration.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition proves the exact mandatory order: actual support and Holdout are established on complete paths, and only then is the population-failure event included in the finite producer union. It makes no conditional-independence assertion.
- Proof validity: On `E_core intersect {J=i}`, accepted actual status and the mark support rule give the literal membership `bar H in G_i(bar S_i)`. The accepted full-master bound for that same function, nonnegativity of loss, `n_0=km`, and `k>=2` give `hat_err_{-i}(bar H) <= k alpha/[8(k-1)] <= alpha/4`. If population failure also holds, `h=bar H` itself witnesses (22).
- Cited-result and assumption audit: Step 010 supplies actual rather than fallback status and positive-mark support; Step 012 supplies the deterministic (alpha/8) certificate for the identical output and indexed master sample; Step 004 supplies the pathwise mark. No realizability, independence, or probability conversion is smuggled into this deterministic unit.
- Rigor checklist: The numerator deletion and denominator conversion have the correct directions. The selected function, target labels, full-sample loss, complement loss, and population risk all use the same quotient object. Mark (0) is excluded only through accepted actual status.
- Local adversarial test: `k=2` gives equality in the factor-two conversion; immediate and last-stage selection, empirical error zero, output value equal to `bar c_0`, duplicate occurrences, and fallback value equality do not change the status-sensitive implication.
- Contribution to target step: It supplies the finite full-path inclusion that allows the later proof to avoid post-mark or post-selection independence.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma proves the required fixed-candidate one-sided iid lower tail directly, for the same quotient target and error metric, with no cited concentration theorem.
- Proof validity: For (p>\alpha), ({Y/M\le\alpha/4}\subseteq\{Y\le Mp/4}). Exponential Markov at (lambda=\log4) yields (\exp\{Mp(\lambda/4-3/4)\}). The displayed elementary bound (log4<3/2) gives exponent at most (-3Mp/8\le-9Mp/32), and (p>\alpha), (M=(k-1)m) give (26). Every inequality direction is correct.
- Cited-result and assumption audit: Assumption~\ref{assump:realizable-iid} makes the fixed candidate's complement errors iid Bernoulli((p)). The candidate is explicitly a local conditional hypothesis and is not the adaptively selected output.
- Rigor checklist: (M\ge1), strict (p>\alpha), the Markov threshold, mgf, elementary logarithm bound, and final constant are all explicit. No asymptotic notation or hidden constant is used.
- Local adversarial test: (p\downarrow\alpha), (p=1), (M=1), (k=2), and (alpha\uparrow1/4) preserve the event containment and exponent. The equality case (p=\alpha) is not needed because PAC failure is strict.
- Contribution to target step: It supplies the uniform fixed-function bound used for every finite producer section.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition performs exactly the accepted finite-section/Fubini conversion after the pathwise inclusion and concludes the full (k(d+1)L) marked core-failure bound.
- Proof validity: For fixed deterministic `pi`, iid master coordinates make `bar S_i^pi` independent of its `M=(k-1)m` complement. Conditioning on `bar S_i^pi=s_i` freezes at most `(d+1)L` literal candidates, so Unit 3 applies candidate by candidate and the finite union gives (30). Uniformity and Unit 1 measurability justify integration over producer data and the finite partition law. Summing disjoint positive marks after the pathwise inclusion gives (32).
- Cited-result and assumption audit: Independence is invoked only for a fixed partition and after conditioning on producer data. It is never asserted conditional on the complete sample, `J=i`, a selected stage, `bar H`, or a mechanism event. On zero-probability producer states, the explicitly chosen product conditional law is legitimate because the producer space is countable discrete and leaves the pointwise bound valid.
- Rigor checklist: The proof checks empty and duplicate candidates, finite union size, section measurability, tower order, unit learner/mark mass for sample-only events, disjoint positive marks, and exclusion of mark (0) on (E_{\rm core}). There is no illegal Fubini or conditioning interchange.
- Local adversarial test: A producer state of probability zero, a deterministic distribution, repeated indexed observations, every candidate repeated across stages, one candidate in all producer blocks, and (k=2) all satisfy the same uniform section bound.
- Contribution to target step: It converts adaptive marked selection into a finite fixed-candidate probability calculation without any post-selection independence claim.
- Verdict: PASS
- Repair direction: None.

### unit_005: lemma

- Statement fidelity: The lemma pays exactly the producer, stage, list, and `beta_gen` multiplicities using only the accepted Step 007 calibration and the exact Step 008 list formula.
- Proof validity: From (k\ge2), (a\ge v), and (alpha<1/4), (34) gives (Q>d), so all logarithmic comparisons are legal. The accepted fixed point yields (35), and substituting into (log L=d\log n_0+d\log d+2d^2\log2) gives (36). Equations (37)-(39) bound the exact logarithm of (k(d+1)L/\beta_{\rm gen}) by ((C_{\rm fp}+7)d^2a\log Q). The accepted calibration implies (40), while the lower ceiling bound and (k-1\ge1) give (41), whose exponentiation is exactly (33).
- Cited-result and assumption audit: Step 007 supplies (C_{\rm fp}=2+\log(1+C_{\rm blk})), the fixed-point inequality, lower ceiling inequality, positive-branch ranges, and the once-fixed universal calibration (C_{\rm blk}/3600\ge C_{\rm fp}+2). Step 008 supplies (L=(2^dn_0d)^d2^{d^2}). No new parameter-dependent constant is selected.
- Rigor checklist: The exact `beta_gen=beta/4` factor, `d+1` stages, all `k` marks, list exponent, ceiling direction, and confidence logarithm remain visible. Equations (34)-(41) really imply the target exponent with substantial universal slack.
- Local adversarial test: `d=v=1`, `v=d`, formal `k=2`, ceiling-dominated `m`, and small positive `alpha,beta` preserve all inequalities. No hidden positive power or uncharged list term remains.
- Contribution to target step: It closes the exact finite-reconstruction confidence share required by the accepted row.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: The proposition proves the exact unconditional quotient PAC event, projects the analysis mark out, and limits its claim to quotient utility. It also states the required null and boundary routes.
- Proof validity: The uniform Step 010 conditional mechanism bound integrates over `E_good` to (43). Step 012 has no additional failure on `E_core`. The event decomposition (44) is exhaustive and gives the four exact shares `beta_tr+beta_AT+beta_SS+beta_gen=beta`. Measurability of `B_alpha` follows from the proved risk map, and the pointwise Step 004 projection integrates to (45), giving the released law.
- Cited-result and assumption audit: Step 007 supplies the unconditional trace charge and null bypass; Step 010 supplies the conditional mechanism charge and fallback exclusion; Step 012 supplies the deterministic empirical certificate; Units 4-5 supply the core population charge; Step 004 supplies exact projection. Every accepted restatement matches its current proof/review pair and its assumptions are discharged before use.
- Rigor checklist: Probability modes remain distinct: conditional mechanism tails, conditional fixed-candidate tails, unconditional marked failure, and released unmarked failure. No confidence share is duplicated or omitted. The proof claims neither privacy of the mark nor raw decoded risk.
- Local adversarial test: (d=0), (d=1), (v=1), (v=d), (k=2), empty lists, fallback, actual output equal to the default value, first/last-stage selection, repeated candidates and records, finite/countably infinite quotients, and infinite or uncountable-as-a-set (H_C) all follow an explicit valid branch.
- Contribution to target step: It exports the unconditional released quotient PAC interface consumed by the later VC-arm specialization.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the six-unit map. Block-local graph and risk measurability, full-path inclusion, Holdout, the direct Bernoulli tail, zero-section conditional integration, positive-mark summation, exact multiplicity domination, confidence assembly, and projection are each stated and proved in a named theorem-style unit. Standard finite union, tower, and finite-kernel integration steps are instantiated with measurable sections rather than invoked as authority for an unstated bridge. There is no external paper theorem, post-mark independence, post-selection independence, uncountable union, trace-to-function substitution, or hidden fallback-success claim.

## Target Claim Audit

The proof establishes exactly the accepted `step_013` claim for every allowed (D,c): on (d\ge1), the released quotient output satisfies

\[
\Pr[\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha]\le\beta,
\]

with fixed-sample horizon (n_0=km), strict PAC-failure threshold, and unconditional probability over sampling, partition, mechanism randomness, and the projected analysis mark. The (d=0) learner has zero error with (N=0). The proof neither weakens nor strengthens the row: raw decoded-risk transfer, privacy, properness, the old/finite arms, and public sample-complexity elimination remain outside this step.

## Explicit Rate Audit

The step preserves the exact intermediate dependence through `d,v,k,m,n_0,L,a,Q,alpha,beta`, with `epsilon,delta` retained through the already fixed `k,m,L` dictionary and no new hidden dependence. The only hidden numerical choice is the once-fixed universal `C_blk`, independent of every exposed parameter, class, distribution, sample, list, event, output, and mark. Probability mode is conditional fixed-candidate tail followed by unconditional quotient PAC; horizon is one fixed sample and `d+1` finite stages; norm is the same binary zero-one loss throughout. Holdout (25), tail (26)-(27), multiplicity (34)-(39), exponent domination (40)-(41), and the four-share conversion (43)-(45) display every simplification. Equation (33) is the exact contribution to the later Rate Specialization Bridge; public elimination of `k,m,L,a,Q` is correctly deferred. The `d=0`, `v=d`, `d=1`, and `k=2` baseline checks introduce no conservative loss.

## Notation Surface Audit

The released quotient PAC statement is the sole public-facing export. The block family (mathcal G_i), marked reconstruction bound, and accepted marked law are appropriately appendix-local; (E_{\rm core},F_\alpha,A_i^\pi,r,M,b,C_{\rm fp},Y,lambda) and conditional sections are proof-local. Every helper has setting, accepted-dependency, or named-local provenance. The notation does not hide finiteness, measurability, conditioning, constants, or parameter dependence, and no proof-local dictionary is exported into the theorem interface.

## Target-Step Assembly Audit

Accepted Steps 004, 008, 010, and 012 first provide the exact mark, block-local literal lists, actual output status, and same-function empirical certificate. Lemma~\ref{lem:step-013-block-family} fixes the measurable finite candidate family; Proposition~\ref{prop:step-013-pathwise} proves inclusion and Holdout before conditioning; Lemma~\ref{lem:step-013-lower-tail} proves the fixed-candidate exponent; Proposition~\ref{prop:step-013-finite-integration} performs the legal finite integration; Lemma~\ref{lem:step-013-beta-gen} pays the exact (k(d+1)L) multiplicity using accepted Step 007; and Proposition~\ref{prop:step-013-pac} combines the four confidence shares and exact Step 004 projection. These named results jointly imply the target with no missing bridge.

## Review Rationale

`ACCEPTED` is the smallest sound status and `None` is the smallest retry target. All binding and dependency hashes match, every dependency review is current and accepted, and independent line-by-line audits of all six local units validate the high-risk ordering, same-function interface, measurability, lower-tail constants, zero-probability sections, exact list multiplicity, equations (34)-(41), confidence ledger, projection, and boundary cases. No local proof, dependency, or sketch/interface defect remains.
