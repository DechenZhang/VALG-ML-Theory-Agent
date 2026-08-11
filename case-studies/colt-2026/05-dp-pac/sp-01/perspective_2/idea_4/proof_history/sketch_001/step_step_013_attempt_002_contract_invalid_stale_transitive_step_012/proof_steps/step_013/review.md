# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 2
- Reviewed unit attempt: 2 of 100
- Review attempt: 2
- Reviewed proof artifact:
  `perspective_2/idea_4/proof_steps/step_013/proof.md`
- Reviewed proof SHA-256:
  `1ca22e42524dd15fbff1b782d8de1ff06984fc89f1b02e89c35cb1b4287f09c9`
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_004`:
    `aded5334e6b420fa91d8de54cf36290a5aa726ab4d955f84586afa67311192e5` /
    `483174aef76458d0433547a4eb68628cb79d92d3ceddd0010c6e4835a94b15ec`;
  - `step_007`:
    `f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1` /
    `6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1`;
  - `step_008`:
    `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` /
    `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`;
  - `step_010`:
    `f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98` /
    `46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74`;
  - `step_012`:
    `d8606bac937e01dc07248f136ffdd13a6cbf7b27ceb0475f58261a651e7b25fa` /
    `8f09c96a0c478b443e137ace265dbbf34b6dc24912132091ea3effbc40253a79`.
- Artifact-identity audit: all hashes above match the live setting, accepted
  sketch and sketch review, live unit-attempt-2 proof, and the five current
  accepted dependency proof/review pairs.
- Evidence boundary: this fresh review uses only those binding artifacts.
  No proof history, old branch, tracker, worker log, assembly artifact,
  final review, or accepted-results artifact is used as proof evidence.

## Step-Review Status

`ACCEPTED`

## Smallest Retry Target

`None`

## Blocking Issues

None.

## Per-Lemma Audit

### unit_001: Measurable block-local all-stage candidate family

- Statement fidelity: The statement of
  Lemma~\ref{lem:step-013-block-family} matches the first reconstruction
  obligation in the accepted sketch row. It declares the (d\geq1) regime,
  uses the literal Step 008 lists, takes all (d+1) stages, asserts
  producer-block locality, proves a measurable finite-list graph, retains
  the exact cap ((d+1)L), and includes measurability of the bad-candidate
  section without assuming that (H_C) is finite or countable.
- Proof validity: The restriction and list at each stage are deterministic
  functions of the local labeled block, so their concatenation does not
  depend on the complement, selected stage, mechanism randomness, terminal
  output, or mark. Under
  Assumption~\ref{assump:countable-evaluation-quotient}, (Z_Q^m) is
  countable discrete; hence each pre-fixed finite-list coordinate is
  measurable. The accepted Step 004 occurrence relation supplies measurable
  dynamic membership for the concatenation. Summing the (L) cap over
  exactly (d+1) stages proves the stated size bound. Finally,
  [
    r(h)=\sum_\ell \bar D(q_\ell)
       \mathbf 1\{h(q_\ell)\ne\bar c(q_\ell)\}
  ]
  is the monotone limit of measurable finite coordinate sums, the complement
  empirical error is a finite measurable sum, and the random candidate event
  is therefore a finite measurable disjunction. These lines justify every
  part of the statement.
- Cited-result and assumption audit: The quotient assumption is used only
  for countable-discrete input and coordinate-risk measurability. Accepted
  Proposition~\ref{prop:step-008-list-envelope} supplies the actual lists,
  empty-list totalization, block locality, and stagewise cap. Accepted
  Lemma~\ref{lem:step-004-occurrence} is consumed only on its declared
  positive-dimensional VC-Lyu occurrence interface. No Step 004 conclusion
  about a null or empty-input law is used.
- Rigor checklist: Quantifiers range over every producer and every local
  block state. Finiteness is an encoding/list fact, not a finiteness claim
  about (H_C). Countable monotone convergence is used only to establish
  measurability, not to interchange an expectation or supremum. Empty lists
  yield the empty event, duplicates yield repeated disjuncts, and the first
  and last stages are both included.
- Local adversarial test: The argument remains valid for infinite or
  uncountable (H_C), a zero-cardinality family, duplicate functions within
  or across stages, repeated indexed records, and endpoint selection. It
  never forms an uncountable union or supremum. The family remains local even
  when the adaptive mechanism selects a stage using the full transcript,
  because the proof unions the precomputed lists over every stage.
- Contribution to target step: This lemma supplies the exact measurable,
  finite, producer-local family needed for the later pathwise inclusion and
  zero-section-safe tower integration.
- Verdict: `PASS`
- Repair direction: None.

### unit_002: Full-path marked inclusion and Holdout

- Statement fidelity: Proposition~\ref{prop:step-013-pathwise} states the
  required mark-first, full-realization implication. On
  (E_{\rm core}\cap\{J=i\}) it concludes literal membership of
  (\bar H) in (\mathcal G_i(\bar S_i)) and the exact Holdout bound,
  then adds (r(\bar H)>\alpha) to obtain the finite bad-candidate
  inclusion. It expressly makes no conditional-independence claim.
- Proof validity: On (E_{\rm core}), accepted Step 010 distinguishes an
  actual selected-list output from fallback and supplies positive occurrence
  marking. Thus (J=i) yields literal list membership. Accepted Step 012
  bounds the full-master number of errors of that same function by
  (n_0\alpha/8). Deleting the nonnegative producer-block terms and dividing
  by ((k-1)m) gives
  [
    \widehat{\operatorname{err}}_{-i}(\bar H)
    \leq \frac{k}{k-1}\frac\alpha8\leq\frac\alpha4,
  ]
  since (k\geq2). If population failure also occurs, (h=\bar H)
  witnesses the right-hand finite union. The inclusion is established
  before any conditioning.
- Cited-result and assumption audit: Accepted
  Proposition~\ref{prop:step-004-lift} supplies the pathwise marked lift
  only on the (d\geq1) VC-Lyu branch. Accepted
  Proposition~\ref{prop:step-010-mechanism-good} supplies actual/fallback
  status, selected-list membership, and occurrence support. Accepted
  Lemma~\ref{lem:step-012-empirical} supplies the deterministic full-sample
  certificate. No properness of (\bar H) is assumed: membership in
  (H_C), not (\bar C), is sufficient.
- Rigor checklist: The proof uses the same literal output, target labels,
  zero-one loss, and indexed records in the full and complement empirical
  errors. It does not replace the function by a trace representative.
  Nonnegativity justifies numerator deletion. At (k=2), the factor-two
  inequality is equality and the complement has size (m\geq1).
- Local adversarial test: Improper actual outputs pass unchanged. A fallback
  path cannot enter the core event and cannot acquire a positive mark. An
  actual output whose value equals the fallback function remains actual by
  status. Empty selected lists cannot occur on the accepted mechanism-good
  path; empty nonselected lists cause no problem. Duplicate candidates,
  repeated sample values, and selection at stages (0) or (d) preserve
  the literal witness. No independence is inferred after observing (J).
- Contribution to target step: This proposition supplies the mandatory
  pathwise bridge that permits later producer-block conditioning without
  post-mark selection bias.
- Verdict: `PASS`
- Repair direction: None.

### unit_003: Direct one-sided iid Bernoulli lower tail

- Statement fidelity: Lemma~\ref{lem:step-013-lower-tail} treats a fixed
  (h\in H_C) with (p=r(h)>\alpha), uses exactly
  (M=(k-1)m) fresh iid quotient examples, and proves the target exponent
  (9/32) directly, rather than importing a concentration theorem with an
  unchecked interface.
- Proof validity: Since (p>\alpha),
  ({Y/M\leq\alpha/4}\subseteq\{Y\leq Mp/4}).
  Exponential Markov with (\lambda=\log4) yields
  [
    \Pr[Y\leq Mp/4]
    \leq \exp\{Mp(\lambda/4-3/4)\}.
  ]
  The displayed elementary series proves (\log4<3/2), so the exponent is
  at most (-3Mp/8\leq-9Mp/32). Substitution of (p>\alpha) and
  (M=(k-1)m) gives the final bound. The exponential direction is correct
  at both comparisons.
- Cited-result and assumption audit: No external Chernoff result is cited.
  Assumption~\ref{assump:realizable-iid} makes the fixed-function error
  indicators iid Bernoulli((p)). The elementary inequality
  (1-x\leq e^{-x}) is applied with (x=3p/4\in[0,3/4]).
- Rigor checklist: The function is fixed before the complement is exposed;
  no uniform bound over (H_C) is claimed. The probability mode is an
  ordinary fixed-candidate iid tail. Constants and strict inequalities are
  explicit. The result holds for (M\geq1) and every
  (p\in(\alpha,1]).
- Local adversarial test: The calculation remains valid as (p\downarrow
  \alpha), at (p=1), and at the formal envelope (k=2), where (M=m).
  It does not require a proper hypothesis, finite (H_C), distinct sample
  values, or asymptotics.
- Contribution to target step: This lemma is the exact complement-tail
  estimate used for each fixed member of the finite block-local family.
- Verdict: `PASS`
- Repair direction: None.

### unit_004: Finite producer integration after the pathwise inclusion

- Statement fidelity: Proposition~\ref{prop:step-013-finite-integration}
  starts from the already proved full-path inclusion and concludes exactly
  [
    \widetilde{\mathbb P}(E_{\rm core}\cap F_\alpha)
    \leq k(d+1)L e^{-9\alpha(k-1)m/32}.
  ]
  Its statement and proof preserve the required order: pathwise inclusion,
  then partition conditioning, then producer-block conditioning, finite
  union, integration, and positive-mark summation.
- Proof validity: For a fixed data-independent indexed partition, disjoint
  producer and complement coordinate sets are independent iid vectors.
  Conditioning next on (\bar S_i=s_i) fixes at most ((d+1)L) literal
  candidates while leaving the complement iid. The lower-tail lemma applies
  candidate by candidate, and a finite union gives the uniform conditional
  bound. Measurable sections permit integration over producer states and the
  finite partition law. On the core event, mark (0) is excluded; the
  positive mark events are disjoint, and the pathwise inclusion bounds each
  summand by its corresponding (A_i). Summation over (i\in[k]) produces
  the exact factor (k).
- Cited-result and assumption audit: The only independence input is
  Assumption~\ref{assump:realizable-iid} plus data independence of the
  partition. Lemma~\ref{lem:step-013-block-family} supplies locality,
  measurability, and the cap; Proposition~\ref{prop:step-013-pathwise}
  supplies the preconditioning inclusion; and
  Lemma~\ref{lem:step-013-lower-tail} supplies the fixed-candidate tail.
  No independence is attributed to (J), (\bar H), the selected stage,
  or a mechanism event.
- Rigor checklist: Because the producer-block state space is countable
  discrete, the product regular conditional kernel can be chosen to use the
  iid complement law on zero-probability producer states as well. Thus the
  displayed conditional bound is pointwise in (s_i), not merely
  almost-sure, and the subsequent finite integration is safe. The event
  (A_i) depends only on sample and partition, so integrating learner and
  mark kernels contributes unit mass. All unions are finite.
- Local adversarial test: Zero-mass block states, empty lists, duplicate list
  entries, duplicate candidates across stages or producers, repeated
  indexed records, infinite (H_C), and improper outputs do not alter the
  bound. At (k=2), the complement is the other (m)-record block.
  Fallback paths have mark (0) and are absent from the core decomposition.
  Conditioning on the full sample, mark, or output is never used.
- Contribution to target step: This proposition converts the adaptive
  marked output into the exact finite-family core population-failure charge.
- Verdict: `PASS`
- Repair direction: None.

### unit_005: Exact finite-multiplicity domination

- Statement fidelity: Lemma~\ref{lem:step-013-beta-gen} proves the exact
  sketch-row rate objective
  (k(d+1)L e^{-9\alpha(k-1)m/32}\leq\beta_{\rm gen}=\beta/4)
  from the accepted Step 007 calibration and exact Step 008 list formula,
  without choosing a new parameter-dependent constant.
- Proof validity: On the positive branch, (1\leq v\leq d),
  (k\geq2), (a=v+b\geq1), and (Q>d) imply
  (\log Q>1), (\log d\leq\log Q), and
  (\log2\leq\log Q). The accepted fixed point gives
  (\log n_0\leq(C_{\rm fp}+1)\log Q). Substitution into the exact
  (\log L) identity yields
  (\log L\leq(C_{\rm fp}+4)d^2\log Q). Adding the producer, stage, and
  confidence factors gives
  [
    \log\frac{k(d+1)L}{\beta_{\rm gen}}
    \leq(C_{\rm fp}+7)d^2a\log Q.
  ]
  The accepted calibration
  (C_{\rm blk}/3600\geq C_{\rm fp}+2), together with the accepted lower
  bound on (m), makes the exponent (9\alpha(k-1)m/32) dominate this
  logarithm. Exponentiation has the correct direction.
- Cited-result and assumption audit: Accepted
  Lemma~\ref{lem:step-007-fixed-point} supplies the trace fixed point;
  accepted Proposition~\ref{prop:step-007-boundaries} supplies the positive
  parameter ranges and lower ceiling inequality; the accepted universal
  Step 007 block calibration supplies the constant domination; and accepted
  Proposition~\ref{prop:step-008-list-envelope} supplies the exact
  (L=(2^dn_0d)^d2^{d^2}). No stronger list estimate or hidden calibration
  is introduced.
- Rigor checklist: Every logarithmic absorption is displayed. The exact
  multiplicity is (k(d+1)L): one factor for the mark/producer, all
  (d+1) stages, and the list cap. The confidence factor is exactly
  (1/\beta_{\rm gen}=4/\beta). No dependence on
  (d,v,k,\alpha,\beta) is hidden in a new constant.
- Local adversarial test: For (d=1), the two stage lists and
  (\log d=0) satisfy the same inequalities. At (v=1) and (v=d), the
  fixed-point substitution is unchanged. At formal (k=2), (k-1=1) is
  exactly the weakest exponent used in the proof. The bounds also remain
  valid near the allowed endpoints of (\alpha) and (\beta).
- Contribution to target step: This lemma pays the complete finite-family
  core-failure term with the fourth confidence share.
- Verdict: `PASS`
- Repair direction: None.

### unit_006: Unconditional released quotient PAC ledger

- Statement fidelity: Proposition~\ref{prop:step-013-pac} establishes the
  exact unconditional released-law claim for every allowed (D) and
  (c\in C):
  [
    \Pr_{\bar S,\bar H\sim K_C(\bar S,\cdot)}
      [\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha]
    \leq\beta.
  ]
  It separately handles the accepted (d=0) arm and does not export the
  analysis mark, a properness claim, raw decoded risk, privacy, or a public
  sample-complexity theorem.
- Proof validity: Integrating the Step 010 conditional mechanism charge over
  successful Step 007 sections gives
  (\Pr(E_{\rm good}\cap E_{\rm mech}^c)
    \leq\beta_{\rm AT}+\beta_{\rm SS}).
  Step 012 is deterministic on (E_{\rm core}), so it incurs no fifth
  charge. The disjoint failure decomposition then gives exactly
  [
    \beta_{\rm tr}+\beta_{\rm AT}
      +\beta_{\rm SS}+\beta_{\rm gen}
    =\beta/4+\beta/4+\beta/4+\beta/4=\beta.
  ]
  The bad-output set is measurable by the countable-coordinate risk
  argument, and accepted Step 004 projection identifies the marked
  probability with the released (K_C)-marginal exactly.
- Cited-result and assumption audit: Step 004 is used only on the
  positive-dimensional VC-Lyu marked-law interface, specifically for exact
  projection. The (d=0) conclusion comes solely from the arm-specific
  Step 007 boundary proposition: the released singleton has zero quotient
  error with (N=0). The universal empty-input identity remains only
  (A_0=K_0); no generic Dirac behavior of an arbitrary empty-input
  pointwise law is asserted or consumed. Step 007 supplies the trace charge,
  Step 010 supplies the two mechanism shares and status separation, Step 012
  supplies the empirical certificate, and the preceding local propositions
  supply the core generalization charge.
- Rigor checklist: The probability conversion is unconditional over iid
  sampling, the random partition, learner randomness, and the analysis-only
  mark, followed by exact projection to the unmarked released law. The four
  confidence shares appear once each. The bad set is a measurable subset of
  (H_C), so improper outputs are covered. The (d=0) arm bypasses (k),
  blocks, marks, lists, and every (k-1) denominator.
- Local adversarial test: At (d=1), both stages are included; at
  (v=1) and (v=d), the accepted rate interface remains valid; and at the
  formal (k=2) envelope, Holdout and complement size are valid. Empty and
  duplicate lists, repeated indexed records, selected endpoints, fallback
  versus actual outputs, an actual output equal in value to the fallback,
  and infinite (H_C) are all handled without an extra event or charge.
  The result remains explicitly conditional on the finite-or-countable
  measurable evaluation quotient.
- Contribution to target step: This proposition projects the marked core
  bound to the released quotient output and supplies the exact unconditional
  PAC conclusion requested by the sketch row.
- Verdict: `PASS`
- Repair direction: None.

## Hidden Subclaim Scan

The local lemma map exposes all six independent obligations used in the
argument: block-local finite-family measurability; full-path marked Holdout
inclusion; the fixed-candidate Bernoulli tail; zero-section-safe finite
integration; exact multiplicity domination; and final released-law
projection and confidence assembly. Each has a matching named theorem-style
statement and immediately following proof.

The dependency statements are restated in current notation before use. The
proof does not smuggle in finiteness of (H_C), properness of the output,
independence conditional on the mark, an extra empirical event, a fifth
confidence charge, generic empty-input Dirac behavior, or a privacy or
decoded-risk conclusion. The zero-probability-section kernel choice is
handled inside Proposition~\ref{prop:step-013-finite-integration}; risk and
section measurability are handled inside
Lemma~\ref{lem:step-013-block-family}. The boundary discussion in the final
proposition consists of direct specializations of accepted dependencies and
the preceding named results, not new unsupported lemmas.

No hidden independent subclaim remains.

## Target Claim Audit

The accepted sketch row requires measurable marked producer-block
reconstruction, Holdout, a direct one-sided lower tail, finite multiplicity
domination, and an unconditional quotient population-error guarantee. The
proof establishes these in the required order and with the required exact
quantities:

[
  E_{\rm core}\cap\{J=i\}\cap F_\alpha
  \subseteq A_i,qquad
  \Pr(A_i)\leq(d+1)L e^{-9\alpha(k-1)m/32},
]
[
  \Pr(E_{\rm core}\cap F_\alpha)
  \leq k(d+1)L e^{-9\alpha(k-1)m/32}
  \leq\beta_{\rm gen},
]
and
[
  \Pr_{K_C}[\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha]
  \leq\beta.
]

All quantifiers are uniform over the allowed distribution (D), target
(c\in C), and positive-branch parameter tuple. The probability mode is
unconditional released quotient PAC utility. The proof also supplies the
arm-specific no-data (d=0) conclusion and checks (d=1), (v=1),
(v=d), and formal (k=2). It does not strengthen the claim to raw-space
risk, proper PAC learning, privacy of the marked pair, or an unrestricted
sample-complexity result.

The theorem remains explicitly conditional on
Assumption~\ref{assump:countable-evaluation-quotient}: (Q_C) is finite or
countable and the evaluation quotient map is measurable. It neither removes
that restriction nor claims to solve the unrestricted DP-PAC open problem.

## Explicit Rate Audit

- Exposed variables: (d,v,k,m,n_0,L,M,a,b,Q,\alpha,\beta), the fixed
  (C_{\rm blk}) and (C_{\rm fp}), and the four shares
  (\beta_{\rm tr},\beta_{\rm AT},\beta_{\rm SS},\beta_{\rm gen}).
- Hidden-constant dependence: The only nonnumeric constant is the once-fixed
  universal (C_{\rm blk}) accepted in Step 007. It does not depend on any
  problem parameter, distribution, sample, list, stage, mechanism path,
  output, or mark. The (9/32) tail constant is derived explicitly.
- Fixed quantities and quantifiers: Public parameters and arbitrary allowed
  (D,c) are fixed for the argument. A partition and producer block are
  fixed only locally, after the full-path inclusion, for the conditional
  tail application.
- Probability mode: A fixed-candidate iid lower tail is integrated over
  measurable finite producer sections, summed over positive marks, combined
  with the three accepted upstream charges, and projected exactly to an
  unconditional unmarked released law.
- Horizon mode: One sample of (n_0=km) indexed records, one
  data-independent partition, (d+1) source stages, one mechanism
  transcript, and one finite analysis mark. No time-uniform or asymptotic
  assertion is made.
- Norm/loss mode: Quotient binary zero-one population error, with the same
  loss and same literal function used for full-sample and complement
  empirical errors.
- Admissibility: The positive branch uses (d\geq1),
  (1\leq v\leq d), (k\geq2), (m\geq1), and
  (0<\alpha,\beta<1/4), plus the exact accepted definitions of
  (a,b,Q,L) and Step 007 calibration. The (d=0) arm bypasses all
  positive-dimensional formulas.
- Absorption inequalities: Holdout is displayed exactly; the Bernoulli tail
  is derived with exponent (9/32); equations (34)--(39) expose every list,
  stage, producer, and confidence logarithm; and equations (40)--(41) show
  the accepted block exponent dominating them. No term is dropped in prose.
- Confidence ledger: The core finite-family failure consumes exactly
  (\beta_{\rm gen}=\beta/4). The final proposition adds exactly
  (\beta_{\rm tr},\beta_{\rm AT},\beta_{\rm SS}), each equal to
  (\beta/4), with no extra empirical-certificate charge.
- Rate-specialization contribution: The step closes the exact finite
  reconstruction term needed downstream. It deliberately does not eliminate
  (k,m,L,a,Q) into a public sample-rate formula.
- Baseline reductions: The no-data (d=0) arm has zero quotient error; the
  (k=2) complement remains nonempty and realizes the maximal Holdout
  factor; (d=1) includes both endpoints; (v=1) and (v=d) preserve the
  fixed point. Empty lists, duplicates, repeated values, and infinite
  (H_C) introduce no rate loss.

The explicit-rate contract is satisfied.

## Notation Surface Audit

- Public-facing: The only exported public conclusion is the released
  quotient PAC guarantee under the finite-or-countable measurable quotient
  assumption.
- Appendix-local: The all-stage family (\mathcal G_i), the marked lift,
  and the finite-reconstruction inequality are appropriate named interfaces
  for assembly and later rate specialization.
- Proof-local: (\widetilde{\mathbb P}), (E_{\rm core}),
  (F_\alpha), (A_i^\pi), (r(h)), (M), (b), (C_{\rm fp}),
  (Y), (\lambda), and fixed partition/block sections remain confined to
  the derivation.

All helper objects are defined from setting objects, accepted dependency
interfaces, or displayed local derivations. The notation distinguishes
released law (K_C) from marked lift (\widetilde K_C), actual status from
fallback value, full empirical error from complement empirical error, and
the positive branch from the (d=0) bypass. The helpers make conditioning
and constant provenance visible rather than hiding them. No unnecessary
public dictionary, notation cascade, uncountable supremum, or undefined
threshold is introduced.

## Target-Step Assembly Audit

Accepted Step 008 and
Lemma~\ref{lem:step-013-block-family} supply the finite measurable
producer-local family. Proposition~\ref{prop:step-013-pathwise} combines
the accepted positive-mark interface with the Step 012 full-sample
certificate to establish Holdout and population-failure inclusion before
conditioning. Lemma~\ref{lem:step-013-lower-tail} and
Proposition~\ref{prop:step-013-finite-integration} then give the exact
(k(d+1)L) core charge without post-mark independence.
Lemma~\ref{lem:step-013-beta-gen} pays that charge from the accepted
calibration. Finally, Proposition~\ref{prop:step-013-pac} adds the four
confidence shares and invokes accepted exact projection to the released
law.

Every assembly reference uses a named theorem-style label. The accepted
dependencies and six passing local units jointly imply the exact sketch-row
target; no additional bridge, changed dependency, or altered output
interface is needed.

## Review Rationale

The live unit-attempt-2 proof establishes the exact accepted
`step_013` claim from the declared primitive assumptions and the five
current accepted dependencies. Each of its six local units has a
self-contained named statement, a valid derivation, checked assumption and
dependency provenance, correct boundary behavior, and an explicit
contribution to the final assembly. The highest-risk points - mark-first
pathwise inclusion, zero-section-safe conditioning, exact multiplicity and
confidence accounting, positive-branch-only use of Step 004, and exact
released-law projection - all pass.

There is therefore no proof, dependency, or sketch repair to request, so
`None` is the smallest retry target.
