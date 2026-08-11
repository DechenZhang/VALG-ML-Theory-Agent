# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_1/idea_5/proof_steps/step_006/proof.md`, SHA-256 `905333c2504633c99317786edbd5d44a6c19decab6cf0bfda79147423afc1eee`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The proposition gives exactly the accepted sequence-wise learner interface. It fixes one permitted \(K_a\), constructs one kernel \(M_\kappa\) for every index, and preserves exact arity \(N_\kappa\), arbitrary output, distribution-free realizable \((\alpha_0,\beta_0)\)-PAC utility, symmetric replacement DP, the public sample bound, and exact `(LD)`. It does not use `(AS)`, `(PN)`, or Item 3 to construct the learners.
- Proof validity: Accepted Lemma~\(\ref{lem:step-002-sc-domination}\) fixes a common \(K_a\) independently of the class, index, distribution, and \(\varepsilon_0\). Accepted Proposition~\(\ref{prop:step-002-exact-padding}\) applies separately to every \(C_\kappa\); selecting one furnished kernel at each natural-number index gives the required family without coupling randomness or allowing dependence on a realizable distribution. Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) identifies the identical privacy parameter with (113)--(114). Substitution in the exact definition of \(N_a\), followed by \(\lceil x\rceil\leq x+1\), proves (115).
- Cited-result and assumption audit: The exact dependency labels `lem:step-002-sc-domination`, `prop:step-002-exact-padding`, and `prop:step-003-exact-privacy-schedule` exist in the current accepted proofs and have the conclusions restated before use. The current `step_001`--`step_005` proof/review hashes match the identities recorded in the submitted proof, every dependency review is `ACCEPTED`, and Assumption~\(\ref{assump:polynomial-global-stability}\) remains the sole nonstandard primitive condition.
- Rigor checklist: The universal exponent \(a\) is fixed first, followed by fixed \(\varepsilon_0\), an arbitrary admissible sequence, one common \(K_a\), and then one distribution-independent learner at every index. Exact sample arity, joint sample/learner randomness in PAC utility, both ordered DP directions, finite prefixes, \(L_\kappa=0\), and \(q_\kappa=1\) are covered.
- Local adversarial test: The construction remains valid for improper and computationally unrestricted outputs, distribution-dependent accurate atoms inside the primitive profile, bounded or constant \(q_\kappa\), and arbitrary finite prefixes. The target requires no cross-index measurability, shared randomness, or uniform output representation.
- Contribution to target step: It supplies the exact learner family and pointwise `(SC)`/`(LD)` parameter interface to which the sequence certificates and privacy comparisons apply.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: The proposition attaches the accepted `(AS)` and `(PN)` conclusions to the exact \(q_\kappa,L_\kappa,T_a,N_\kappa,\delta_\kappa\) used by the constructed learners. It includes \(q_\kappa,T_a,N_\kappa=L_\kappa^{o(1)}\), the required ratio \(N_\kappa/L_\kappa\to0\), every fixed real \(\rho>0\), and bounded, constant, or oscillatory \(q_\kappa\).
- Proof validity: Accepted Proposition~\(\ref{prop:step-004-q-subpower}\), Lemma~\(\ref{lem:step-004-schedule-subpower}\), and Proposition~\(\ref{prop:step-004-sample-subpower}\) concern the same exact sequence quantities as (111)--(115). Their every-exponent sample bound at \(r=1/2\), together with \(L_\kappa\to\infty\), gives \(0\leq N_\kappa/L_\kappa\leq L_\kappa^{-1/2}\to0\). Accepted Proposition~\(\ref{prop:step-005-privacy-negligibility}\) applies to that identical \((N_\kappa,\delta_\kappa)\) pair and yields (119) for each fixed \(\rho>0\).
- Cited-result and assumption audit: The `(AS)` branch uses exact `(SP)` only through accepted `step_004`. Independently, the repaired `step_005` proof derives `(PN)` from exact `(LD)`, the pointwise `(PS)` formula for \(N_a\) and \(K_a\geq2\), \(x_\kappa=q_\kappa^b\geq1\), and primitive \(|C_\kappa|\to\infty\), hence \(u(L_\kappa)\to\infty\). Its ceiling lemma, two-factor decomposition, and uniform \(x\)-supremum use no `(SP)`, `(AS)`, or \(q_\kappa\to\infty\) conclusion. Thus this unit does not transfer `step_004`'s `(SP)` scope into `(PN)`.
- Rigor checklist: Every-exponent and every-fixed-\(\rho\) quantifiers retain their accepted order. The proof makes no uniform-in-\(\rho\) claim, uses \(L_\kappa>0\) only on a justified tail, and performs no probability union or privacy composition over \(\kappa\).
- Local adversarial test: For \(q_\kappa\equiv1\), bounded nonconvergent \(q_\kappa\), or oscillation between bounded and unbounded subsequences, `step_004` still gives \(N_\kappa=o(L_\kappa)\), while the repaired `step_005` factorization controls the structural factor uniformly and lets the independent \(u(L_\kappa)\) factor force `(PN)`. Finite-prefix changes affect neither limit.
- Contribution to target step: It supplies the exact sublogarithmic sample and negligible-privacy certificates required for source-scale eligibility and the lower-bound contradiction.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The lemma proves exactly the allowed privacy relaxation \(\delta_\kappa\leq\bar\delta(N_\kappa)\), includes equality, checks both ordered adjacency directions, and asserts no reverse implication. It also derives eventual privacy at the standard allowance for every fixed \(c>0\).
- Proof validity: Replacing \(\delta_\kappa\) by a larger additive term in each defining DP inequality proves (124)--(125) without changing the kernel, sample count, output space, risk, or adjacency relation. Repaired Proposition~\(\ref{prop:step-005-source-allowance}\) first applies `(PN)` at the fixed choice \(\rho=3\), then uses \(N_\kappa\geq1\) and \(\log(eN_\kappa)\leq N_\kappa\) to prove \(\delta_\kappa\leq c/[N_\kappa^2\log(eN_\kappa)]\) eventually, with the inequality direction in (123) correct.
- Cited-result and assumption audit: The exact privacy guarantee comes from Proposition~\(\ref{prop:step-006-sequence-learners}\); the source allowance comes from the current accepted `step_005` proof with SHA-256 `9529468202e72f43873b2cd2e66289127bab027ae12a62ae0a9d7c65870c8b63` and accepted review SHA-256 `0243dce779785be72f5a55f001a33a1173ff19eaffb80f211e7fdf261fcfeea3`. The comparison schedule is a local conditional hypothesis, not a primitive condition or a generated invariant.
- Rigor checklist: Equality, pointwise and eventual comparisons, every measurable event, every replacement-adjacent ordered pair, and both DP directions are explicit. The denominator is positive because \(N_\kappa\geq1\), and the fixed-\(c\) eventual quantifier is preserved.
- Local adversarial test: A schedule smaller than \(\delta_\kappa\) is not claimed to work; equality works at every index; a schedule that dominates only eventually yields eligibility only on that tail. The allowance argument covers arbitrarily small fixed \(c>0\) and bounded \(q_\kappa\) without using `(SP)`.
- Contribution to target step: It places the exact constructed learner in the Item 3 eligibility class at the exact, standard, or any eventually larger allowed privacy parameter.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition formalizes exactly an eventual \(\Omega(L_\kappa)\) Item 3 lower bound on the unrestricted learner interface and refutes it at either the exact schedule or any eventually larger allowed schedule. Both the candidate positive lower-bound constant and its proposed tail are arbitrary.
- Proof validity: From \(N_\kappa/L_\kappa\to0\), every fixed \(c_*>0\) has a tail on which \(N_\kappa<c_*L_\kappa\). Choosing an index beyond this rate tail, the proposed lower-bound tail, and the privacy-eligibility tail produces the same eligible \(M_\kappa\). The hypothetical lower bound then gives \(N_\kappa\geq c_*L_\kappa\), a direct contradiction.
- Cited-result and assumption audit: The unit uses only Propositions~\(\ref{prop:step-006-sequence-learners}\) and \(\ref{prop:step-006-rate-certificates}\) and Lemma~\(\ref{lem:step-006-privacy-relaxation}\). Item 3 enters solely as a local contradiction hypothesis after all learner and rate outputs have been produced, so the dependency path is noncircular.
- Rigor checklist: The order is arbitrary \(c_*>0\) and \(\kappa_*\), followed by rate and privacy tails and then one common later index. The ratio is used only once \(L_\kappa>0\) is guaranteed. The learner, class, exact arity, risk, adjacency convention, and parameter values are identical on both sides of the contradiction.
- Local adversarial test: The argument covers arbitrarily small \(c_*>0\), arbitrarily late lower-bound tails, exact privacy, equality in the comparison schedule, and bounded \(q_\kappa\). It does not promote a merely infinitely-often lower bound to an eventual one or normalize away the unknown positive constant.
- Contribution to target step: It proves the conditional universal nonexistence clause and its standard source-allowance specialization.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the four-unit map. Sequence-wise witness selection, common-\(K_a\) provenance, exact arity, ceiling control, distribution-free scope, and finite-prefix validity are in unit_001. Exact dependency-object identity, every-exponent transfer, the ratio limit, every-fixed-\(\rho\) quantifiers, bounded-\(q_\kappa\) behavior, and the separation of `(AS)` from the repaired size-divergence-only `(PN)` derivation are in unit_002. Both privacy inequalities, the valid monotonicity direction, equality, eventual-tail eligibility, and the \(\rho=3\) source allowance are in unit_003. The arbitrary positive \(\Omega\)-constant, arbitrary tail, common-tail selection, and contradiction are in unit_004. Elementary countable indexwise selection, maxima of finitely many tail indices, and \(\lceil x\rceil\leq x+1\) are displayed within those units and do not hide an additional bridge.

## Target Claim Audit

The proof establishes the exact accepted `step_006` claim and formalized conditional goal. For every fixed \(\varepsilon_0\in(0,1)\) and every class sequence satisfying size divergence and exact `(SP)`, it produces one permitted \(K_a\) and one exact-\(N_\kappa\) learner per index that is arbitrary-output, computationally unrestricted, distribution-free realizable \((1/8,1/8)\)-PAC, and \((\varepsilon_0,\delta_\kappa)\)-DP. It retains `(SC)` and `(LD)`, consumes `(AS)` under its proper `(SP)` scope, consumes the repaired `(PN)` under the weaker size-divergence-only scope, proves \(N_\kappa/L_\kappa\to0\), relaxes privacy only toward larger \(\delta\), and contradicts every positive eventual linear lower-bound constant. The universal profile remains an explicit primitive assumption and the conclusion remains labeled `conditional`; the proof claims no unconditional resolution.

## Explicit Rate Audit

The final rate interface is complete. Exposed quantities are \(a,b,\alpha_0,\beta_0,\varepsilon_0,C_{\mathrm{BLM}},K_a\), the class-sequence parameters, \(u,T_a,N_\kappa,\delta_\kappa\), every fixed \(\rho>0\), the comparison schedule \(\bar\delta\), the standard constant \(c>0\), and lower-bound witnesses \(c_*>0,\kappa_*\). The proof states that \(K_a\) depends only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), not on the class, cardinality, index, realizable distribution, output representation, or \(\varepsilon_0\). Fixed quantities, joint PAC probability mode, pointwise symmetric-DP mode, exact fixed arity, deterministic sequence-asymptotic horizon, population-risk mode, scalar sample ratio, and scalar privacy product are explicit. `(SC)`, `(LD)`, `(AS)`, and `(PN)` are consumed with exact accepted interfaces. The ceiling residual, cardinality correction, every-fixed-\(\rho\) order, \(r=1/2\) ratio deduction, \(\rho=3\) allowance comparison, privacy direction, bounded-\(q_\kappa\) baseline, and finite prefixes are all preserved; no probability conversion, cross-index composition, or prose-only term absorption occurs.

## Notation Surface Audit

All setting and accepted-dependency quantities retain their meanings. The only new public-facing object is \(M_\kappa=M_{C_\kappa}\), the minimal learner family required by the theorem. The comparison schedule \(\bar\delta\) and standard allowance appear only in the public privacy-comparison clause. Tail indices and constants used in limit and contradiction arguments are proof-local and have explicit provenance. No helper dictionary, generated event, renamed invariant, hidden bounded quantity, or imported diagnostic notation is exported.

## Target-Step Assembly Audit

Accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\) supplies the unrestricted raw learner interface; accepted Lemma~\(\ref{lem:step-002-sc-domination}\) and Proposition~\(\ref{prop:step-002-exact-padding}\) supply `(SC)`, the common \(K_a\), and exact padding; accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) supplies `(LD)`; accepted Proposition~\(\ref{prop:step-004-q-subpower}\), Lemma~\(\ref{lem:step-004-schedule-subpower}\), and Proposition~\(\ref{prop:step-004-sample-subpower}\) supply `(AS)` and \(N_\kappa/L_\kappa\to0\). Separately, the repaired accepted Proposition~\(\ref{prop:step-005-privacy-negligibility}\) and Proposition~\(\ref{prop:step-005-source-allowance}\) supply `(PN)` and the allowance directly from exact `(LD)`, pointwise `(PS)`, \(x_\kappa\geq1\), and primitive \(L_\kappa\to\infty\), without consuming any `(SP)`-scoped `step_004` conclusion. The four named local results then construct the family, attach the exact rates, prove valid privacy relaxation, and close the arbitrary-tail contradiction. These inputs jointly imply every target clause without a new assumption, missing bridge, proxy quantity, scope transfer, or circular use of Item 3.

## Review Rationale

The frozen unit-attempt-2 proof matches SHA-256 `905333c2504633c99317786edbd5d44a6c19decab6cf0bfda79147423afc1eee`. All five current dependency proof/review pairs match the hashes recorded in that proof and remain accepted. In particular, the repaired `step_005` pair establishes `(PN)` and the source allowance without importing `(SP)` or `(AS)`: `(SP)` is consumed only by `step_004` to produce `(AS)`, and `step_006` keeps those provenance paths separate. All four local units are statement-complete, mathematically valid, dependency-disciplined, and jointly target-exact. Exact privacy monotonicity, conditional labeling, quantifier order, explicit rates, assumption provenance, bounded complexity, hidden subclaims, and final assembly all pass. No proof-history artifact was used as current evidence. No local proof repair, dependency repair, or sketch-interface change is required, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest valid decision.
