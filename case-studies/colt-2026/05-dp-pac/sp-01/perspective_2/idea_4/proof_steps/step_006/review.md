# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_006/proof.md`
- Reviewed proof SHA-256: `5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted `step_005` proof/review SHA-256: `f1ba8be90c3ec4c84ac79bed9bb8ad537d9912e5737e6362e50647c3634557c5` / `40bbda8f8bb5f05d545f348a4d1a047454e86a8a6833db9f28a756d0a12ef67b`
- Checked primary source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-partition} proves exactly the marginal law required by the accepted sketch: conditional on any fixed indexed master sample, each labeled block is a uniform size-\(m\) subset. It explicitly disclaims joint independence and records the complementary-block identity at \(k=2\).
- Proof validity: The total number of labeled equal-size partitions is \(n_0!/(m!)^k\), while fixing one labeled block to a specified \(m\)-set leaves \((n_0-m)!/(m!)^{k-1}\) partitions. Their ratio is \(\binom{n_0}{m}^{-1}\). Independence of the partition draw from record values justifies conditioning on the arbitrary fixed sample.
- Cited-result and assumption audit: Only the setting-defined positive-branch procedure and primitive parameter regime are used. The exact ceiled integer \(m\), identity \(n_0=km\), and \(k\ge2\) are pre-sampling definitions, not generated assumptions.
- Rigor checklist: Labels, repeated quotient points, and repeated labeled records are immaterial because the partition acts on indices. The proof covers \(m=1\), \(k=2\), and arbitrary fixed sample contents, and it never replaces the marginal law by a product law.
- Local adversarial test: When \(k=2\), \(B_2=[n_0]\setminus B_1\), so the blocks are maximally dependent while each marginal remains uniform; every later use is one block at a time and therefore remains valid.
- Contribution to target step: It supplies the exact without-replacement input law used by both fixed-trace tails.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-high-tail} proves the high-master-error clause with the exact source tolerance \(a_d=1/(5d)\), the closed good interval, and per-block failure at most \(2\exp[-m\alpha/(3600d^2)]\).
- Proof validity: Lyu v1 Proposition 2 applies with \(N=n_0\), subset size \(t=m\), population bits \(z_r\), mean \(p=\mu(z)\), and relative tolerance \(\zeta=1/(5d)\). It gives exponent \(a_d^2m\mu/3=m\mu/(75d^2)\). Since \(\mu>\gamma/3=\alpha/48\), this exponent is strictly larger than \(m\alpha/(3600d^2)\), with the displayed inequality in the correct direction.
- Cited-result and assumption audit: The frozen v1 source prints the factor \(2\), denominator \(3\), and strict relative-deviation event used here. Its premise contains an unused printed `k` while the random subset and exponent use `t`; existence of the stated size-\(t\) subset and the local check \(t=m\le n_0=N\) supply the operative size condition. No low-mean conclusion is attributed to the citation.
- Rigor checklist: \(0<1/(5d)<1\) for every \(d\ge1\), and \(m\le n_0\) follows from \(n_0=km\). Strict failure leaves equality at either relative endpoint in the good event. The argument is uniform in the trace and block after they are fixed.
- Local adversarial test: The smallest dimension \(d=1\), a trace mean arbitrarily close above \(\alpha/48\), mean one, and complementary blocks at \(k=2\) all satisfy the claimed bound without an independence step.
- Contribution to target step: It supplies every high-branch term in the finite union defining \(E_{\mathrm{good}}^c\).
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-mgf} gives precisely the one-block exponential-moment domination needed for the low-mean tail, without asserting independence among sampled coordinates or blocks.
- Proof validity: The uniform block marginal turns the moment into \(\binom{N}{m}^{-1}e_m(a_1,\ldots,a_N)\), where \(a_r=e^{\lambda z_r}\ge0\). Pairwise averaging preserves the coordinate sum and cannot decrease \(e_m\), since only the product term changes and its coefficient \(e_{m-2}\) is nonnegative. Repeatedly averaging a current maximum and minimum decreases the sum of squares by half the squared range, forcing that range to zero. Continuity then gives the constant-vector maximum \(e_m\le\binom{N}{m}(N^{-1}\sum_r a_r)^m\), which is exactly (6).
- Cited-result and assumption audit: No external negative-association or sampling theorem is hidden here; the elementary-symmetric argument is self-contained and uses only Proposition~\ref{prop:step-006-partition}. All helper objects and conventions, including \(e_0\) and out-of-range degrees, are defined locally.
- Rigor checklist: The smoothing proof remains valid for \(m=1\), for repeated values, for \(\lambda=0\), and for the all-zero or all-one population. It uses nonnegativity exactly where required and performs no illegal expectation factorization.
- Local adversarial test: At \(m=1\) equality holds; for a constant trace equality also holds; and for a nonconstant trace the comparison remains valid even though selections without replacement are dependent.
- Contribution to target step: It provides a valid iid-Bernoulli-form mgf upper bound for the local exponential-Markov/KL optimization.
- Verdict: PASS
- Repair direction: None.

### unit_004: lemma

- Statement fidelity: Lemma~\ref{lem:step-006-low-tail} covers exactly \(0\le\mu\le\gamma/3\), assigns equality at \(\gamma/3\) to this branch, treats \(\mu=0\) separately, and proves the one-sided failure event \(\widehat\mu_i>\gamma/2\) has the required rate.
- Proof validity: For \(0<p\le\gamma/3<q=\gamma/2\), exponential Markov plus Lemma~\ref{lem:step-006-mgf}, optimized at \(\lambda_*=\log(q(1-p)/(p(1-q)))>0\), gives \(e^{-mD(q\Vert p)}\). The derivative \((p-q)/(p(1-p))<0\) makes the worst case \(p_0=\gamma/3\). The displayed logarithmic inequalities imply
  \[
  D(\gamma/2\Vert\gamma/3)
  \ge (\gamma/3)\left(\tfrac32\log(3/2)-\tfrac12\right)
  \ge\gamma/30.
  \]
  Thus the exponent is at least \(m\alpha/480\), which is at least \(m\alpha/(3600d^2)\) for \(d\ge1\).
- Cited-result and assumption audit: The result consumes only the locally proved mgf bound and primitive \(0<\alpha<1/4\), which ensures \(0<q<1\). The binary-KL optimizer, monotonicity, and constant lower bound are derived explicitly rather than cited.
- Rigor checklist: At \(p=0\), every trace coordinate and every block mean are zero, so failure is impossible. The strict upper-tail event matches the closed source interval \([0,\gamma/2]\). The proof includes \(p=\gamma/3\), does not divide by zero there, and keeps the actual ceiled \(m\).
- Local adversarial test: The null trace, arbitrarily small positive means, the endpoint \(\mu=\gamma/3\), and a threshold lying between attainable lattice values all preserve the Markov and KL bounds.
- Contribution to target step: It supplies every low-branch term without misusing Lyu's relative theorem near zero.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-006-good-event} defines the exact Lyu two-clause event after the accepted symbol map from source accuracy to \(\gamma=\alpha/16\): for every exact error trace and each block, relative control applies above \(\gamma/3\), and the closed interval \([0,\gamma/2]\) applies at or below \(\gamma/3\).
- Proof validity: Each deterministic master mean falls in exactly one branch. The complement is covered by the finite union of the branch-qualified high and low failures. Their per-pair bounds are respectively \(2e^{-m\alpha/(3600d^2)}\) and \(e^{-m\alpha/(3600d^2)}\); loosening to the requested source-facing envelope of four per trace-block pair is valid. Accepted `step_005` then gives \(|\mathcal E_{\bar C}(\bar S)|\le\Pi_{\bar C}(n_0)\le(en_0/v)^v\).
- Cited-result and assumption audit: The accepted dependency identities and hashes match the current proof/review pair. The frozen Lyu source defines one simultaneous event over every source hypothesis and block with these exact thresholds and tolerance. Xor/trace identity from accepted `step_005` makes current traces the exact error vectors; hypotheses sharing a trace impose identical event predicates.
- Rigor checklist: The union is finite, conditional on an arbitrary fixed master sample, and uses only block marginals. There is no stage index and hence no extra \(d+1\) union. Nonnegativity makes the low-branch lower endpoint automatic. The probability mode remains conditional over the one uniform labeled partition.
- Local adversarial test: Infinite \(\bar C\) with finitely many traces, repeated inputs, conflicting labels on repeated inputs, \(v=1\), \(v=d\), \(k=2\), and equality \(\mu=\gamma/3\) all retain the same event and envelope.
- Contribution to target step: It exports the exact generated \(E_{\mathrm{good}}\) interface and proves (T) with \(c_{\mathrm{tr}}=1/3600\).
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. The partition marginal, cited high-relative tail, elementary-symmetric mgf comparison, low-mean KL optimization, and simultaneous finite union are separated into five named theorem-style units. The endpoint convention, source `k`/`t` typo interpretation, trace-to-hypothesis object match, absence of a stage union, and constant conversions are proved or checked inside the relevant units. The assembly cites named results rather than unit IDs or subsection titles as mathematical authority.

## Target Claim Audit

The proof establishes the exact accepted `step_006` claim on the setting's positive branch. For every fixed indexed quotient master sample and its exact finite error-trace family, it defines Lyu's simultaneous source event and proves
\[
\Pr_{\mathcal P}[E_{\mathrm{good}}(\bar S,\mathcal P)^c\mid\bar S]
\le 4k\Pi_{\bar C}(n_0)
\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\]
The statement is conditional only on the fixed master sample in the declared probability sense; event membership is derived, not assumed. The \(d=0\) no-data branch legally bypasses the positive-dimensional formula. No quantifier, hypothesis class, empirical-error object, threshold, or probability mode drifts from the setting or sketch row.

## Explicit Rate Audit

The step preserves every exposed quantity \(m,\alpha,d,k,n_0,v\) and the exact trace multiplicity \(\Pi_{\bar C}(n_0)\). The universal constant is explicit, \(c_{\mathrm{tr}}=1/3600\), so there is no hidden dependence. Conditional on \(\bar S\), the sample, traces, labels, repeats, and parameters are fixed; randomness is only the one data-independent uniform labeled partition. The horizon is one finite partition simultaneously over its \(k\) blocks, and the same event is reused through all stages without another union. The norm is empirical zero-one error, relative in the high branch and one-sided in the low branch. Both term comparisons are displayed, every exponent uses the actual ceiled \(m\), and no fixed-point or confidence-budget claim assigned to `step_007` is imported. At \(v=d\) the accepted trace envelope returns to the source \(d\)-exponent, while \(v=1\), \(k=2\), and \(d=0\) retain their stated boundary routes.

## Notation Surface Audit

The only exported generated object is \(E_{\mathrm{good}}\). The tolerances \(\gamma,a_d\) and constant \(c_{\mathrm{tr}}\) are appendix-local; block index sets, trace means, elementary symmetric sums, KL divergence, and optimization scalars are proof-local and defined before use. All setting and dependency notation retains its original meaning. No trace representative, long public helper dictionary, unproved bounded object, generated invariant, or unnecessary public-facing alias is introduced.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-006-partition} supplies the exact one-block sampling law. Lemma~\ref{lem:step-006-high-tail} supplies the high branch from the checked source, Lemma~\ref{lem:step-006-mgf} and Lemma~\ref{lem:step-006-low-tail} supply the low branch, and Proposition~\ref{prop:step-006-good-event} combines those bounds with the accepted `step_005` trace count. These named results jointly imply the exact event and conditional bound with no extra independence, stage, class-cardinality, or ceiling-loss argument. Downstream fixed-point and unconditional confidence conversion remain correctly outside this step.

## Review Rationale

`ACCEPTED` is the smallest sound status. A fresh five-unit audit verifies the uniform marginal partition law without joint independence, the exact frozen Lyu v1 statement and event, the elementary-symmetric mgf proof, the low-mean KL constants including \(\mu=0\) and \(\mu=\gamma/3\), the exact trace-to-source object map, the finite \(4k\) union, \(c_{\mathrm{tr}}=1/3600\), the actual ceiled \(m\), all requested \(v\), \(k\), repeat, and label boundary cases, and the precise conditional rate mode. The current accepted dependency supplies exactly the finite trace interface consumed here, and no local, dependency, or sketch repair remains.
