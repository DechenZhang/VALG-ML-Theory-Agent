# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_2/proof_steps/step_002/proof.md`
- Reviewed proof SHA-256: `bc595377b6068047df51c449eb82a9f9a37e34ed215c22751eb30df9ec4b76a5`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact policywise catalog correlation

- Statement fidelity: The lemma proves exactly the first clause of the accepted
  `step_002` row for an arbitrary actual distribution (D), target (h\in H),
  and valid policy \(\pi\in\Pi(D,h)\). It retains the setting-defined
  (p(D,h,\pi)), the same catalog correlations, the exact margin
  \(\rho=1-2\varepsilon\), and learner-tape-only expectation; it neither
  specializes the policy nor strengthens the target.
- Proof validity: For each binary catalog function, the displayed indicator
  identity integrates to
  \(c_i(D,h)=1-2\mathcal L_{D,h}(g_i)\). Nonnegativity and unit mass of the
  accepted simplex vector then give, by a finite sum and the accepted exact-loss
  mixture,
  \[
  \sum_i p_i c_i
  =1-2\mathbb E_{u\sim\nu}
    \mathcal L_{D,h}(\widehat h_{u;D,h,\pi}).
  \]
  Applying the primitive upper bound on expected loss to this same arbitrary
  policy is valid, and multiplication by (-2) reverses the inequality, yielding
  the claimed lower bound \(1-2\varepsilon=\rho\). Every algebraic link is
  exact.
- Cited-result and assumption audit: The proof uses only
  Assumptions~\ref{assump:source-parameter-regime} and
  \ref{assump:universal-expected-accuracy}, the basic-setting binary-loss
  identity, and the current accepted `step_001` outputs. The dependency proof
  has SHA-256
  `0be07c67f342f492702eeaf2c0fba2792db0c91cc5839b0ecb10fd9207e5466d`,
  and its accepted review has SHA-256
  `7f9d3899bc9c7db169d383ceeb408d43e096d2b7621f692e5ca55a00c6075c16`;
  the latter certifies the former for sketch attempt 1 and unit attempt 1. The
  proof restates the simplex and exact-mixture conclusions in current notation
  and applies them to the same (D,h,\pi,G,\nu\), so no object or convention
  translation is missing.
- Rigor checklist: All losses and correlations are bounded, and only a finite
  sum over (L\) is moved; no conditioning, Fubini interchange, or oracle-randomness
  average is used. Quantifiers remain universal over every valid policy, and no
  claim of policy-independent output probabilities is made. The equality and
  lower bound remain valid for (T=0\), (m=0\), (L=1\), and
  \(\varepsilon=0\).
- Local adversarial test: Allowing (p_i\) to vary arbitrarily with
  (D,h,\pi\), including through continuous adaptive replies and randomized
  queries, does not change the calculation because the loss mixture and
  accuracy premise concern that identical triple. At \(\varepsilon=0\), the
  simplex average is both at least and at most one, so the stated exact-margin
  boundary is sound. No tolerance-dependent defect is hidden.
- Contribution to target step: It establishes the exact every-policy
  correlation inequality needed before the output weights can be removed.
- Verdict: PASS
- Repair direction: None.

### unit_002: Policy-free best catalog correlation

- Statement fidelity: The proposition proves exactly the second clause of the
  accepted sketch row: every valid policy first satisfies the displayed
  max-over-average chain, and the resulting maximum correlation is a statement
  only about (D,h\), and the fixed catalog. It does not assert a common
  maximizing index across distributions or any policy-independent law.
- Proof validity: Because (L\ge1\), the finite maximum exists. Each coordinate
  obeys (c_i\le\max_j c_j\); multiplying by the accepted nonnegative simplex
  weights and summing yields
  \(\sum_i p_i c_i\le\max_j c_j\). The preceding lemma supplies
  \(\sum_i p_i c_i\ge\rho\) for the same arbitrary policy. The accepted
  nonemptiness conclusion for \(\Pi(D,h)\) is invoked only afterward, so the
  universal statement has an instance and implies the policy-free lower bound.
- Cited-result and assumption audit: The proposition explicitly names and
  restates the accepted `step_001` policy-nonemptiness and simplex outputs and
  Lemma~\ref{lem:step-002-policywise-correlation}. The finite
  maximum-at-least-average inequality is derived in full rather than cited.
  (L\ge1\), simplex membership, and policy nonemptiness all have accepted
  dependency provenance; positivity and the value of \(\rho\) come from
  Assumption~\ref{assump:source-parameter-regime} through the stated prior
  lemma.
- Rigor checklist: The proof uses nonnegative weights and unit mass in the
  correct inequality direction. The maximum is finite and attained because the
  index set is nonempty and finite. Nonemptiness is not used to select a
  favorable reply policy or to weaken the arbitrary-policy result. The claimed
  independence is exact because neither \(\pi\) nor (p\) occurs in the final
  maximum.
- Local adversarial test: Arbitrarily different output laws for two valid
  policies cannot break the conclusion: each convex average is bounded above by
  the same catalog maximum. At (L=1\), the average and maximum coincide. At
  \(\varepsilon=0\), boundedness (c_i\le1\) turns the lower bound into equality
  one. Zero-query and immediate-termination executions require no new update,
  and empty (X\) has no actual distribution, so no nonexistent policy is used.
- Contribution to target step: It removes the policy-dependent simplex weights
  and exports the exact policy-free `obligation:catalog-correlation` interface
  consumed by `step_003`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the local lemma map. The two
genuine obligations, accuracy-to-correlation conversion for the same arbitrary
policy and removal of its simplex weights, are separated into the two named
units. Boundedness of
\(c_i(D,h)=\mathbb E_D[hg_i]\in[-1,1]\) follows immediately from the binary
range and is used only for a boundary check. Existence of the finite maximum,
the max-over-average inequality, and policy-class nonemptiness are proved or
supplied by the accepted dependency. The statements about continuous replies,
zero-query executions, and empty (X\) are scope checks, not hidden bridges.

## Target Claim Audit

The proof establishes the exact accepted `step_002` claim. For every actual
(D\), every (h\in H\), and every \(\pi\in\Pi(D,h)\), it proves
\[
\sum_{i=1}^L p_i(D,h,\pi)\mathbb E_D[hg_i]\ge\rho.
\]
It then uses the accepted nonemptiness of \(\Pi(D,h)\) and a finite simplex
inequality to prove, for every actual (D,h\),
\[
\max_{i\in[L]}\mathbb E_D[hg_i]\ge\rho.
\]
The result preserves the universal adversarial-policy quantifier, removes only
learner randomness, retains \(\rho=1-2\varepsilon\) exactly, and makes no claim
about policy-independent probabilities, a common index across distributions,
or later minimax and pointwise conclusions.

## Explicit Rate Audit

This step is rate-bearing through the explicit margin \(\rho=1-2\varepsilon\).
The exposed quantities are \(\varepsilon,\rho,L\); there are no hidden
constants. The learner, tape law, and fixed catalog are held fixed only as
specified in the setting, while the inequalities are uniform over quantified
(D,h,\pi\). The conclusion is deterministic population correlation; the only
premise expectation is over the learner tape and is eliminated by an equality.
The horizon is fixed with (T\le m\), including (T=0\) and (m=0\), and the
metric is the signed scalar population correlation. The proof records the full
admissible parameter regime, introduces no auxiliary tolerance, performs no
term absorption or probability conversion, and preserves the exact
\(\varepsilon=0\), (L=1\), and zero-query baselines. The oracle tolerance
\(\tau\) creates no omitted residual because no reply is approximated.

## Notation Surface Audit

The inherited (p(D,h,\pi)\) and the two correlation inequalities are the
minimal public-facing interface needed downstream. The sole new abbreviation
\(c_i(D,h)=\mathbb E_D[hg_i]\) is explicitly classified as proof-local and is
defined directly from setting notation; it does not obscure a constant,
boundedness claim, or generated condition. No appendix-local helper, new event,
radius, threshold, tolerance, or unproved bounded quantity is introduced.

## Target-Step Assembly Audit

The assembly cites Lemma~\ref{lem:step-002-policywise-correlation} for the exact
every-policy lower bound and
Proposition~\ref{prop:step-002-policy-free-correlation} for the finite
max-over-average argument and policy-free export. Those named results, together
with the accepted `step_001` interfaces explicitly restated before use, jointly
imply every clause of the exact target claim. The assembly uses theorem-style
labels rather than subsection names or bare local-unit IDs and introduces no
additional lemma, citation, or assumption.

## Review Rationale

Both local units are self-contained under the permitted primitive assumptions
and the current accepted `step_001` dependency. Their algebra, inequality
directions, quantifiers, probability mode, parameter dependence, and boundary
cases are correct, and the named assembly yields the binding target with zero
residual and no hidden subclaim. Therefore `ACCEPTED` with
`Smallest Retry Target = None` is the smallest controlled disposition.
