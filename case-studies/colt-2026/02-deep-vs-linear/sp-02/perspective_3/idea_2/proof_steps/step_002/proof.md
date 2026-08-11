# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every valid \(D,h,\pi\),
  \(\sum_i p_i\mathbb E_D[hg_i]\ge\rho\), and therefore for every
  \(D,h\), \(\max_i\mathbb E_D[hg_i]\ge\rho\), independent of the policy
  and its output probabilities.
- Depends on: `step_001`.
- Assumptions used: Primitive `assump:source-parameter-regime`,
  `assump:universal-expected-accuracy`; derived mixture identity from
  `step_001`.
- Technical challenge: Preserve the universal adversarial-policy quantifier
  and remove only learner randomness, with no tolerance loss.
- Intended proof tool or cited result: Exact binary loss-correlation identity
  plus maximum-at-least-average.
- Output target: `obligation:catalog-correlation`.
- Rate objective: Pointwise margin target: derive exact
  \(\rho=1-2\varepsilon\), including \(\rho=1\), with no hidden term or
  probability conversion.
- Row-local review status: `PENDING`; sketch-level acceptance is supplied by
  the accepted `proof_sketch_review.md` for sketch attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions used directly in this step:

- `assump:source-parameter-regime`: \(m\in\mathbb N_0\), every finite
  \(\tau>0\), \(0\le\varepsilon<1/4\), and
  \(\rho:=1-2\varepsilon\in(1/2,1]\), including \(m=0\) and
  \(\varepsilon=0\).
- `assump:universal-expected-accuracy`: for every actual distribution \(D\),
  every \(h\in H\), and every \(\pi\in\Pi(D,h)\),
  \[
  \mathbb E_{u\sim\nu}
  \mathcal L_{D,h}(\widehat h_{u;D,h,\pi})\le\varepsilon,
  \]
  where the expectation is only over the learner tape.
- Basic-setting binary loss identity: for every binary \(g\),
  \[
  \mathcal L_{D,h}(g)
  =\frac{1-\mathbb E_{x\sim D}[h(x)g(x)]}{2}.
  \]
  This is a definition in `setting.md`, not an additional assumption.

Accepted dependency artifacts:

- `proof_steps/step_001/proof.md`, SHA-256
  `0be07c67f342f492702eeaf2c0fba2792db0c91cc5839b0ecb10fd9207e5466d`.
- `proof_steps/step_001/review.md`, SHA-256
  `7f9d3899bc9c7db169d383ceeb408d43e096d2b7621f692e5ca55a00c6075c16`,
  with controlled status `ACCEPTED` for sketch attempt 1, step `step_001`,
  unit attempt 1, and the proof hash above.

Derived invariants and interfaces supplied by the accepted dependency:

- For every actual \(D\), \(h\in H\), and arbitrary
  \(\pi\in\Pi(D,h)\), the setting-defined output vector satisfies
  \(p(D,h,\pi)\in\Delta_L\).
- For the same arbitrary triple, the exact loss mixture is
  \[
  \mathbb E_{u\sim\nu}
  \mathcal L_{D,h}(\widehat h_{u;D,h,\pi})
  =\sum_{i=1}^L p_i(D,h,\pi)\mathcal L_{D,h}(g_i).
  \]
- For every actual \(D\) and \(h\in H\),
  \(\Pi(D,h)\ne\varnothing\). The accepted dependency proves this with an
  exact-center policy, but that policy is exported only as a nonemptiness
  witness.

Local conditional hypotheses:

- In `unit_001`, \(D\) is an arbitrary actual distribution on \(X\),
  \(h\in H\), and \(\pi\in\Pi(D,h)\) is an arbitrary valid policy. These are
  the quantified objects of the target claim, not added theorem-facing
  assumptions.
- No generated event, favorable reply, policy-independent output law,
  stability condition, recurrence, or boundedness condition is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:source-parameter-regime} and \ref{assump:universal-expected-accuracy}, the basic binary loss identity, and the accepted simplex and exact-loss-mixture conclusions of Lemma~\ref{lem:step-001-terminal-pushforward} and Proposition~\ref{prop:step-001-exact-mixtures}, if \(D\) is a distribution, \(h\in H\), and \(\pi\in\Pi(D,h)\) is arbitrary, then \(\sum_i p_i(D,h,\pi)\mathbb E_D[hg_i]=1-2\mathbb E_{u\sim\nu}\mathcal L_{D,h}(\widehat h_{u;D,h,\pi})\ge\rho\). | Proves the exact policywise correlation bound for every valid continuous adaptive policy, with learner-tape-only expectation and zero residual. |
| `unit_002` | proposition | Under Assumption~\ref{assump:source-parameter-regime}, the accepted policy-class nonemptiness conclusion of Proposition~\ref{prop:step-001-center-policy}, the accepted simplex conclusion of Lemma~\ref{lem:step-001-terminal-pushforward}, and Lemma~\ref{lem:step-002-policywise-correlation}, if \(D\) is a distribution and \(h\in H\), then for every \(\pi\in\Pi(D,h)\), \(\max_i\mathbb E_D[hg_i]\ge\sum_i p_i(D,h,\pi)\mathbb E_D[hg_i]\ge\rho\), and hence \(\max_i\mathbb E_D[hg_i]\ge\rho\) is independent of \(\pi\) and \(p(D,h,\pi)\). | Removes the policy-dependent output probabilities by a finite simplex inequality and exports the policy-free catalog correlation. |

Atomic step = no. The accuracy-to-correlation equality and the removal of the
policy-dependent simplex weights are separate audit obligations, so they are
proved as two named local units.

## Cited Result Applications

No external paper result or unproved standard theorem is used. The finite
maximum-at-least-average inequality is proved directly in `unit_002`.

Accepted dependency result applications:

- **Lemma~\ref{lem:step-001-terminal-pushforward} (Finite
  terminal-selector pushforward).** Source: the accepted `step_001` proof and
  review listed above. Restated in current notation: under its declared
  primitive execution, full-policy, finite-catalog, and measurability
  conditions, every actual \(D\), \(h\in H\), and arbitrary
  \(\pi\in\Pi(D,h)\) induce the setting-defined vector
  \(p(D,h,\pi)\in\Delta_L\). Thus \(p_i\ge0\) and
  \(\sum_{i=1}^L p_i=1\). The instantiated objects are exactly the current
  \(D,h,\pi,G,\nu\). Its hypotheses are discharged in the accepted dependency
  from the current setting, and its accepted review verifies full continuous
  adaptive replies, learner-tape-only randomness, \(T=0\), \(m=0\), and
  \(L=1\). This step uses only its simplex conclusion.
- **Proposition~\ref{prop:step-001-exact-mixtures} (Exact terminal loss and
  correlation mixtures).** Source: the same accepted dependency pair.
  Restated in current notation: for every actual \(D\), \(h\in H\), and
  arbitrary \(\pi\in\Pi(D,h)\),
  \[
  \mathbb E_{u\sim\nu}
  \mathcal L_{D,h}(\widehat h_{u;D,h,\pi})
  =\sum_{i=1}^L p_i(D,h,\pi)\mathcal L_{D,h}(g_i),
  \]
  and its loss-correlation bridge has equality at every link. Its execution,
  policy, measurability, and finite-catalog hypotheses were discharged in the
  accepted dependency. `unit_001` applies the displayed loss identity to the
  same arbitrary policy; no policy or object translation is made.
- **Proposition~\ref{prop:step-001-center-policy} (Validity of the exact-center
  reply policy).** Source: the same accepted dependency pair. Restated in
  current notation: for each actual \(D\) and \(h\in H\), an exact-center rule
  is a measurable nonanticipating member of \(\Pi(D,h)\), including at
  \(T=0\); hence \(\Pi(D,h)\ne\varnothing\). Its primitive assumptions and
  measurability condition were discharged in the accepted dependency.
  `unit_002` uses only the nonemptiness conclusion. The center rule is not
  substituted for the arbitrary policy in `unit_001`.

Local result applications:

- **Lemma~\ref{lem:step-002-policywise-correlation} (Exact policywise catalog
  correlation).** Restated: under
  Assumptions~\ref{assump:source-parameter-regime} and
  \ref{assump:universal-expected-accuracy}, the basic binary identity, and the
  accepted dependency interfaces above, every actual \(D\), \(h\in H\), and
  arbitrary \(\pi\in\Pi(D,h)\) satisfy
  \[
  \sum_i p_i(D,h,\pi)\mathbb E_D[hg_i]
  =1-2\mathbb E_{u\sim\nu}
  \mathcal L_{D,h}(\widehat h_{u;D,h,\pi})\ge\rho.
  \]
  Its assumptions are discharged in `unit_001` from the named setting clauses
  and accepted dependency conclusions. Proposition~\ref{prop:step-002-policy-free-correlation}
  uses this result before invoking nonemptiness.
- **Proposition~\ref{prop:step-002-policy-free-correlation} (Policy-free best
  catalog correlation).** Restated: under the named accepted dependency
  conclusions and Lemma~\ref{lem:step-002-policywise-correlation}, every
  actual \(D\) and \(h\in H\) satisfy
  \[
  \max_i\mathbb E_D[hg_i]
  \ge\sum_i p_i(D,h,\pi)\mathbb E_D[hg_i]\ge\rho
  \quad\text{for every }\pi\in\Pi(D,h),
  \]
  and therefore \(\max_i\mathbb E_D[hg_i]\ge\rho\) independently of policy
  and output probabilities. Its inputs are discharged in `unit_002`; it
  exports the exact `obligation:catalog-correlation` conclusion used in the
  target-step assembly.

## Local Derivation

For this proof only, define
\[
c_i(D,h):=\mathbb E_{x\sim D}[h(x)g_i(x)],\qquad i\in[L].
\]
Each \(c_i(D,h)\in[-1,1]\) because
\(h(x)g_i(x)\in\{-1,+1\}\).

### unit_001: lemma

**Lemma (Exact policywise catalog correlation).**
\(\label{lem:step-002-policywise-correlation}\)

Statement: Under Assumptions~\ref{assump:source-parameter-regime} and
\ref{assump:universal-expected-accuracy}, the basic binary loss identity, and
the accepted simplex and exact-loss-mixture conclusions of
Lemma~\ref{lem:step-001-terminal-pushforward} and
Proposition~\ref{prop:step-001-exact-mixtures}, if \(D\) is a distribution on
\(X\), \(h\in H\), and \(\pi\in\Pi(D,h)\) is arbitrary, then
\[
\sum_{i=1}^L p_i(D,h,\pi)c_i(D,h)
=1-2\mathbb E_{u\sim\nu}
  \mathcal L_{D,h}(\widehat h_{u;D,h,\pi})
\ge\rho.
\tag{1}
\]
The equality has zero residual and the expectation in it is only over the
learner tape.

Proof / justification:

Fix an arbitrary actual \(D\), \(h\in H\), and an arbitrary
\(\pi\in\Pi(D,h)\). No restriction is placed on the valid policy: it may use
the full real tolerance intervals and may adapt to every revealed randomized
query and preceding real reply.

For each \(i\in[L]\), the binary loss definition gives the pointwise identity
\[
\mathbf 1\{g_i(x)\ne h(x)\}
=\frac{1-h(x)g_i(x)}2.
\]
Integrating with respect to \(D\) yields the exact equality
\[
c_i(D,h)=1-2\mathcal L_{D,h}(g_i).
\tag{2}
\]
By the accepted simplex conclusion, \(p_i(D,h,\pi)\ge0\) and
\(\sum_i p_i(D,h,\pi)=1\). Multiplying (2) by the corresponding \(p_i\),
summing the finite collection, and then applying the accepted exact loss
mixture gives
\[
\begin{aligned}
\sum_{i=1}^L p_i(D,h,\pi)c_i(D,h)
&=\sum_{i=1}^L p_i(D,h,\pi)
  \bigl(1-2\mathcal L_{D,h}(g_i)\bigr)\\
&=1-2\sum_{i=1}^L p_i(D,h,\pi)
  \mathcal L_{D,h}(g_i)\\
&=1-2\mathbb E_{u\sim\nu}
  \mathcal L_{D,h}(\widehat h_{u;D,h,\pi}).
\end{aligned}
\tag{3}
\]
Every link in (3) is an equality involving only a finite sum. In particular,
there is no response approximation, conditioning on a transcript, oracle
randomness average, or interchange of expectations.

Assumption~\ref{assump:universal-expected-accuracy} applies to this same
arbitrary \(\pi\), not to a selected favorable policy. Therefore
\[
1-2\mathbb E_{u\sim\nu}
  \mathcal L_{D,h}(\widehat h_{u;D,h,\pi})
\ge 1-2\varepsilon
=\rho,
\tag{4}
\]
where multiplication by \(-2\) reverses the accuracy inequality. Combining
(3) and (4) proves (1). Since \(D,h,\pi\) were arbitrary, (1) holds for every
valid continuous adaptive policy.

If \(\varepsilon=0\), then \(\rho=1\). Because each \(c_i\le1\) and \(p\) is
a simplex vector, the left side of (1) is also at most \(1\); hence it equals
\(1\) exactly. Thus the exact-learning boundary loses no margin. The
calculation contains neither \(m\) nor a query round, so the accepted
zero-query interface makes it unchanged when \(m=0\) or \(T=0\).
\(\square\)

### unit_002: proposition

**Proposition (Policy-free best catalog correlation).**
\(\label{prop:step-002-policy-free-correlation}\)

Statement: Under Assumption~\ref{assump:source-parameter-regime}, the accepted
policy-class nonemptiness conclusion of
Proposition~\ref{prop:step-001-center-policy}, the accepted simplex conclusion
of Lemma~\ref{lem:step-001-terminal-pushforward}, and
Lemma~\ref{lem:step-002-policywise-correlation}, if \(D\) is a distribution on
\(X\) and \(h\in H\), then every \(\pi\in\Pi(D,h)\) satisfies
\[
\max_{i\in[L]}c_i(D,h)
\ge\sum_{i=1}^L p_i(D,h,\pi)c_i(D,h)
\ge\rho.
\tag{5}
\]
Consequently
\[
\max_{i\in[L]}\mathbb E_{x\sim D}[h(x)g_i(x)]\ge\rho
\tag{6}
\]
for every actual \(D\) and \(h\in H\), independently of the valid policy and
its output probabilities.

Proof / justification:

Fix \(D\), \(h\in H\), and first let \(\pi\in\Pi(D,h)\) be arbitrary. Since
\(L\ge1\), the finite maximum exists. For every \(i\in[L]\),
\[
c_i(D,h)\le\max_{j\in[L]}c_j(D,h).
\]
The accepted simplex conclusion gives \(p_i(D,h,\pi)\ge0\) and
\(\sum_i p_i(D,h,\pi)=1\). Multiplying the coordinate inequalities by the
nonnegative masses and summing gives the fully explicit max-over-average
calculation
\[
\sum_{i=1}^L p_i(D,h,\pi)c_i(D,h)
\le
\sum_{i=1}^L p_i(D,h,\pi)
\max_{j\in[L]}c_j(D,h)
=\max_{j\in[L]}c_j(D,h).
\tag{7}
\]
Lemma~\ref{lem:step-002-policywise-correlation} supplies the other inequality
in (5), again for this same arbitrary policy. Thus (5) is established before
any use of the nonemptiness witness.

The accepted conclusion of Proposition~\ref{prop:step-001-center-policy}
ensures \(\Pi(D,h)\ne\varnothing\), so the already proved every-policy
inequality (5) has at least one instance. Its left side depends only on
\(D,h\) and the fixed catalog \(G\): it contains neither a policy nor an
output-probability vector. This proves (6). The
exact-center policy underlying the accepted nonemptiness result is not used
to establish accuracy for a special reply rule or to replace the arbitrary
policy in (1) or (5); it only guarantees that the universal policy domain is
nonempty.

At \(L=1\), the accepted dependency gives \(p_1=1\), so (5) reduces exactly
to \(c_1(D,h)\ge\rho\). At \(\varepsilon=0\), (6) gives a maximum at least
\(1\), and \(c_i\le1\) gives equality to \(1\). At \(m=0\) or \(T=0\), the
accepted dependency still supplies both \(p\in\Delta_L\) and policy
nonemptiness, and the proof uses no query update. If \(X=\varnothing\), there
is no distribution on \(X\), so the distribution-indexed conclusion is
vacuous rather than based on a nonexistent policy. \(\square\)

## Target-Step Assembly

Fix an arbitrary actual distribution \(D\), target \(h\in H\), and valid
policy \(\pi\in\Pi(D,h)\). Lemma~\ref{lem:step-002-policywise-correlation}
uses the accepted exact loss mixture for that same policy, the setting's exact
binary loss-correlation identity, and the primitive tape-only expected-error
bound to prove
\[
\sum_{i=1}^L p_i(D,h,\pi)
\mathbb E_{x\sim D}[h(x)g_i(x)]\ge\rho.
\]
Because the policy was arbitrary, this is the binding every-policy conclusion
under the full continuous adaptive reply semantics.

Proposition~\ref{prop:step-002-policy-free-correlation} proves directly that a
finite maximum dominates each such simplex average. It invokes the accepted
policy-class nonemptiness conclusion only after the every-policy statement is
available, and thereby exports
\[
\max_{i\in[L]}\mathbb E_{x\sim D}[h(x)g_i(x)]\ge\rho
\]
for every \(D,h\). The maximum contains neither a policy nor output
probabilities, so no coherence of \(p(D,h,\pi)\) across policies is needed.

The two named results jointly prove exactly
`obligation:catalog-correlation`. Their derivation preserves
\(\rho=1-2\varepsilon\) with equality before the primitive accuracy
inequality, introduces no \(\tau\)-dependent residual, converts no probability
mode, and covers \(\varepsilon=0\), \(m=0\), \(T=0\), and \(L=1\).

## Explicit Rate Audit

- Exposed variables: \(\varepsilon\), \(\rho=1-2\varepsilon\), and the finite
  catalog dimension \(L\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(X,H,D,h,\pi\), replies, transcripts,
  learner coins, \(m,\tau,\varepsilon,L,B\), or \(k\).
- Fixed quantities: the learner specification, tape law \(\nu\), and fixed
  catalog \(G\); \(D,h,\pi\) are fixed only during the pointwise derivation.
- Probability mode: deterministic population-correlation inequalities for
  every quantified \(D,h,\pi\). The premise expectation is only over
  \(u\sim\nu\) and is eliminated exactly; there is no high-probability,
  oracle-randomness, or policy-averaging conversion.
- Horizon mode: fixed horizon \(T\le m\), including \(T=0\) and \(m=0\); no
  all-time, asymptotic, or stopping-time upgrade is made.
- Norm mode: signed scalar population correlation
  \(\mathbb E_D[hg_i]\), not an empirical, average-over-policies, or
  probabilistic representation metric.
- Admissibility conditions and auxiliary tolerances:
  \(m\in\mathbb N_0\), every finite \(\tau>0\),
  \(0\le\varepsilon<1/4\), \(L\ge1\), actual \(D\), \(h\in H\), and
  arbitrary \(\pi\in\Pi(D,h)\). No auxiliary tolerance is introduced; the
  oracle tolerance \(\tau\) creates no residual term.
- Term absorption or simplification inequalities: None. The exact bridge is
  \[
  \sum_i p_i\mathbb E_D[hg_i]
  =1-2\mathbb E_{u\sim\nu}\mathcal L_{D,h}(\widehat h)
  \ge1-2\varepsilon=\rho,
  \]
  followed only by
  \(\max_i c_i\ge\sum_i p_i c_i\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the exact
  margin level \(\rho\) to `step_003`; there is no rate specialization,
  dropped term, confidence parameter, or public simplification.
- Baseline-reduction check: At \(\varepsilon=0\), \(\rho=1\) and both the
  simplex average and maximum equal \(1\). At \(L=1\), the unique correlation
  is at least \(\rho\). At \(m=0\) or \(T=0\), the same conclusion follows
  from the accepted zero-query terminal law with no positive-depth surrogate.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** The setting-defined vector
  \(p(D,h,\pi)\), the exact policywise inequality
  \(\sum_i p_i\mathbb E_D[hg_i]\ge\rho\), and the policy-free inequality
  \(\max_i\mathbb E_D[hg_i]\ge\rho\) form the minimal downstream interface.
  Only the two inequalities are newly proved here; \(p\) and
  \(p\in\Delta_L\) are accepted dependency outputs.
- **Proof-local objects.** The abbreviation
  \(c_i(D,h)=\mathbb E_D[hg_i]\) and the expression
  \(\max_i c_i(D,h)\) are proof-local. They are direct expressions in the
  original setting notation and are not exported as new theorem notation.
  No appendix-local helper is introduced.
- **Constant provenance.** The only margin is
  \(\rho=1-2\varepsilon\), directly defined in `setting.md` and supplied by
  Assumption~\ref{assump:source-parameter-regime}. No new constant, radius,
  threshold, rate, or bounded helper quantity is introduced. The transfer
  residual is proved to be exactly zero.
- **Assumption provenance.** Universal tape-only accuracy and the parameter
  range are primitive. Simplex membership, the exact loss mixture, and
  policy-class nonemptiness are derived outputs supplied by the accepted
  `step_001` pair. The policywise and policy-free correlation inequalities
  are proved by the two local units. No generated-object property is treated
  as primitive or assumed conditionally for the final step conclusion.
- **Policy quantifiers.** Lemma~\ref{lem:step-002-policywise-correlation} is
  proved for an arbitrary member of the full continuous adaptive policy class.
  Proposition~\ref{prop:step-002-policy-free-correlation} uses nonemptiness
  only to prevent vacuity after that universal result. It neither selects a
  favorable response nor assumes policy-independent output probabilities.
- **Stochastic and tolerance scope.** The only algorithmic expectation is
  over the learner tape. The \(D\)-expectations are the population loss and
  correlation functionals already defined in the setting. Oracle tolerance,
  continuous replies, and adaptivity affect \(p(D,h,\pi)\) but produce no
  additive term and require no probability conversion.
- **Boundary scope.** Exact learning \(\varepsilon=0\), zero-query protocols
  \(m=0\) or \(T=0\), and the unique-coordinate case \(L=1\) retain the exact
  stated lower bound. Empty \(X\) has no actual distribution, so no
  distribution-indexed statement is asserted from a nonexistent object.
- **Diagnostic boundary.** The hashes in the accepted
  `global_proof_review.md` match the current `setting.md`, `proof_sketch.md`,
  `proof_sketch_review.md`, and `global_proof.md`, and the review status is
  `ACCEPTED`. The step-relevant diagnostic planning idea was to apply the
  exact loss-correlation identity for the same arbitrary policy and then use
  simplex max-over-average while separating policy nonemptiness. The
  diagnostic was not used as proof evidence, a cited result, an assumption
  source, or authority to change the target claim, dependencies, quantifiers,
  rate, or conclusion.
