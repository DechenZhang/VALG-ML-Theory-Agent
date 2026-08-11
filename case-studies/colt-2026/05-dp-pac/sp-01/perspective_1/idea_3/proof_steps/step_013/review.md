# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_013/proof.md`, SHA-256 `fefa0cee0010dfe7b61260f76921fc136af637ef7b1b0f583da10fce3d4ed7c4`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, status `ACCEPTED`
- Accepted `step_001` proof/review: SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` / `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, status `ACCEPTED`
- Accepted `step_009` proof/review: SHA-256 `9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7` / `009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2`, status `ACCEPTED`
- Accepted `step_010` proof/review: SHA-256 `314d3c3632243976831268a3629e2379258d68ddb3e02a879f961c4bfeaa302a` / `ef6aa34bc4943a059f70fb3140ac71cf2c7fcdbc0a3711af7db392a9508bce98`, status `ACCEPTED`
- Accepted `step_011` proof/review: SHA-256 `5259c6a34a8812b105c312b387f1e595591066a8a1d976cf2857333f21fc3315` / `f43d02a700e96928b0afb0720408411aaf5de398817d430a15fb6a620630cd4c`, status `ACCEPTED`
- Accepted `step_012` proof/review: SHA-256 `ac0610a3d0c21f6be85650e00c8d934ef8e6eddd849f27f4116db1e7113fdd74` / `5b1d8997d4a29c6798aac4997806f15d9f8ce62029ef0baccc76f50f9b30b2ba`, status `ACCEPTED`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-013-common-marginal-floors} states the exact active-factor marginal floor required by the accepted row. It fixes every hard prior before the arbitrary global learner, places every ideal factor risk on the one common law \(\mathbb P_\star\), and claims only the factorwise marginal conclusion \(\mathbb E_\star R_i^\star>1/8-\eta_0\), without an output-independence or joint-hidden-learner assertion.
- Proof validity: For each fixed \(i\in H\), accepted Propositions~\ref{prop:step-012-hidden-kernel} and \ref{prop:step-012-hidden-privacy} give an eligible total unrestricted replacement-\((0.1,\delta)\)-DP learner on exactly \(m_{n,i}\) rows. Accepted Proposition~\ref{prop:step-010-hard-prior} therefore gives \(\mathbb E R_i^{\rm tr}>1/8\). Accepted Proposition~\ref{prop:step-012-identity-coupling} gives \(|\mathbb E R_i^{\rm tr}-\mathbb E_\star R_i^\star|\le\eta_0\), so
  \[
  \mathbb E_\star R_i^\star
  \ge \mathbb E R_i^{\rm tr}-\eta_0
  >\frac18-\eta_0.
  \]
  Both inequality directions are correct and the strict inequality survives subtraction of the non-strict residual bound.
- Cited-result and assumption audit: The hard-prior, hidden-kernel, hidden-privacy, common-ideal-experiment, and identity-coupling labels all exist in the hash-matched accepted dependencies and are restated with their current objects and hypotheses. Assumption~\ref{assump:canonical-product} supplies only full-target assembly. Active eligibility, prior support, totality, privacy, measurability, and coupling are accepted derived conclusions rather than new primitive assumptions. No external result is used.
- Rigor checklist: The quantifier order is class and candidate, then the finite family of learner-uniform priors, then the arbitrary global learner, then task/data/output randomness. The active set is finite and nonempty, so simultaneous finite choice of priors is legitimate. All risks are measurable \([0,1]\)-valued finite-support risks, hence integrable. The coupling residual already includes every truncation discrepancy; finite restriction, target assembly, and decoding add zero residual.
- Local adversarial test: Although the hidden kernel used for factor \(i\) samples all other tasks internally and need not be run jointly with the other hidden kernels, its coupled ideal risk is the \(i\)-th marginal of the already fixed common experiment. Repeating this marginal argument for different \(i\)'s therefore does not combine different product-prior laws or select a task after observing a learner.
- Contribution to target step: Supplies the correct hard-prior floor for every active marginal of one common prior-before-learner experiment.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-013-exact-risk-sum} states both the pointwise identity \(R^\star=\sum_i\pi_iR_i^\star\) and its expectation version, exactly matching the sketch's disjoint-risk tensorization interface.
- Proof validity: Assumption~\ref{assump:canonical-product} and accepted Lemma~\ref{lem:step-012-ideal-experiment} give \(c^\star|_{X_i}=c_i\) and \(D^\star(B)=\sum_i\pi_iD_i(B\cap X_i)\). The global mistake set is the disjoint union of its blockwise mistake sets, so finite additivity gives the displayed weighted risk equality for each realized task vector and global output. Every summand is measurable and bounded, and \(k<\infty\); finite expectation linearity then gives \(\mathbb E_\star R^\star=\sum_i\pi_i\mathbb E_\star R_i^\star\).
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-001-risk-pullback} supplies the exact no-residual risk convention, while the proof also displays the direct raw-space disjoint-union derivation for the arbitrary measurable decoded output. Accepted Lemma~\ref{lem:step-012-ideal-experiment} supplies the exact common target and mixture. No stronger product-distribution or output-factorization condition is imported.
- Rigor checklist: The identity is pointwise, not merely distributional. There is no infinite sum, conditional-to-unconditional upgrade, Fubini/Tonelli issue, or interchange of dependent random quantities. Finite linearity needs integrability only, which follows from \(0\le R_i^\star\le1\).
- Local adversarial test: Arbitrary correlation among the restrictions of the single global output changes none of the pointwise measure identity. Zero-risk low factors, identical factor-output values, and maximal cross-factor dependence all remain covered.
- Contribution to target step: Converts the common global risk into the exact weighted sum of the common-experiment marginal risks without independence.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-013-tensorization} states the exact target lower certificate, with only \(w_L\) and one \(\eta_0\) residual per unit active weight. It does not replace the target by a joint nonoverflow event or an unweighted factor count.
- Proof validity: Lemma~\ref{lem:step-013-exact-risk-sum} and risk nonnegativity give
  \[
  \mathbb E_\star R^\star
  \ge\sum_{i\in H}\pi_i\mathbb E_\star R_i^\star.
  \]
  Applying the strict hard-prior floors and the marginal coupling before summation yields
  \[
  \sum_{i\in H}\pi_i\mathbb E_\star R_i^\star
  >\sum_{i\in H}\pi_i\left(\frac18-\eta_0\right).
  \]
  Accepted Lemma~\ref{lem:step-009-low-mass} gives \(\sum_{i\in H}\pi_i=1-w_L\), proving the target. Strictness is valid because \(H\ne\varnothing\) and every \(\pi_i=s_i/M>0\).
- Cited-result and assumption audit: The low-mass theorem, both current lemmas, and their exact conclusions are cited by stable theorem-style labels. The active weights and normalization are accepted `step_009` outputs; nonnegativity is intrinsic to binary risk. No independence, simultaneous coupling, balance, or support assumption is introduced.
- Rigor checklist: The complete residual is
  \[
  \sum_{i\in H}\pi_i\Pr(\mathcal O_i)
  \le\eta_0\sum_{i\in H}\pi_i
  =(1-w_L)\eta_0.
  \]
  This is weighted marginal accounting, not \(\Pr(\bigcup_i\mathcal O_i)\) and not \(|H|\eta_0\). Low-factor terms are dropped only through pointwise nonnegative risk. Finite sums preserve all constants and modes.
- Local adversarial test: One active factor gives a one-term strict sum; all factors active gives \(w_L=0\); low-factor risks may be zero or correlated arbitrarily with active risks. None changes the lower bound. A hypothetical empty active set would destroy strictness, but accepted Lemma~\ref{lem:step-009-low-mass} excludes it under the current contradiction branch.
- Contribution to target step: Proves \(\mathbb E_\star R^\star>(1-w_L)(1/8-\eta_0)\) with the exact defect accounting required downstream.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-013-one-factor-baseline} separately states the inherited \(k=1\) active-branch conclusion \(\mathbb E_\star R^\star>1/8\), rather than retaining the generic conservative \(\eta_0\) loss.
- Proof validity: Under \(k=1\), accepted Lemma~\ref{lem:step-009-low-mass} gives \(H=\{1\}\), \(\pi_1=1\), and \(w_L=0\). Accepted Lemma~\ref{lem:step-011-zero-overflow} gives \(L_1=n\le m_{n,1}\), so \(\mathcal O_1\) is empty. Accepted Proposition~\ref{prop:step-012-boundaries} makes the truncated/ideal coupling pointwise exact, accepted Proposition~\ref{prop:step-010-hard-prior} gives \(\mathbb E R_1^{\rm tr}>1/8\), and Lemma~\ref{lem:step-013-exact-risk-sum} with \(\pi_1=1\) transfers this exact strict floor to global risk.
- Cited-result and assumption audit: Every consumed boundary, prior, and risk identity has an existing stable theorem label. The proposition correctly stays on the active contradiction branch on which `step_009` proves \(H\ne\varnothing\); it does not assume that a low-complexity one-factor branch is active.
- Rigor checklist: The proof uses equality of the coupled risks, not a zero expectation bound inferred from the generic \(\eta_0\) certificate. The strict \(>1/8\) hard-prior inequality is therefore unchanged. All variables are bounded and measurable, so taking expectations in the pointwise identity is valid.
- Local adversarial test: If the sole factor were outside \(H\), then \(H=\varnothing\), contradicting the accepted current-branch output; that inactive branch is closed upstream and no hard prior is applied there. For every \(n\ge1\), \(m_{n,1}=\max\{8,4n\}\ge n\), so there is no small-sample exception.
- Contribution to target step: Preserves the exact unrestricted one-factor lower baseline with zero overflow and no conservative loss.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the four-unit map. The common-law marginal transfer, exact pointwise risk decomposition, weighted strict summation, and exact one-factor specialization are isolated as named units. Finite simultaneous choice of the priors is justified by finite \(H\); measurability and boundedness of the common risks are inherited from accepted `step_012` and also follow from their finite task supports; finite expectation linearity is applied explicitly; and positivity/nonemptiness needed for strict summation is supplied by accepted `step_009`. The assembly uses named theorem-style results. Its general overflow bound is fully contained in Proposition~\ref{prop:step-012-identity-coupling}, while the exact boundary use cites Lemma~\ref{lem:step-011-zero-overflow}; no mathematical conclusion relies on a bare step ID, optional global diagnostic, unreviewed lemma, joint overflow event, or output-independence claim.

## Target Claim Audit

The proof establishes the exact accepted `step_013` claim at the same fixed candidate, arbitrary global learner, and local contradiction branch as its dependencies. All active priors are fixed independently of the learner and sampled, together with fixed low-factor tasks, before data and learner randomness in one common product-task experiment. For every active factor, the correct hidden learner is eligible for that factor's own hard prior, and its ideal risk is the corresponding marginal of that same common experiment. Exact disjoint risk and finite expectation linearity then yield
\[
\mathbb E R_{D^\star}(h_{A_n(S^\star)},c^\star)
>(1-w_L)\left(\frac18-\eta_0\right).
\]
The proof preserves the prior-before-learner quantifiers, expected exact-risk mode, fixed-candidate horizon, unrestricted improper global learner, arbitrary joint output dependence, all constants, and the \(k=1\) exact \(>1/8\) baseline.

## Explicit Rate Audit

- Exposed variables: the fixed candidate \(n\), finite \(k\), \(H\), \((\pi_i)_i\), \((m_{n,i})_i\), \(w_L\), and \(\eta_0=e^7(2/9)^9\), with output measured by expected exact global binary risk.
- Hidden constants and fixed quantities: no hidden constant is introduced. The hard threshold \(1/8\), weights, low mass, budgets, and overflow constant are inherited exact quantities. The candidate-specific priors and deterministic low tasks are fixed before the global learner.
- Probability, horizon, and norm modes: expectation over product tasks, iid data, route, and learner output; one fixed candidate and its exact budgets; exact distributional binary \(0\)-\(1\) risk. There is no high-probability conversion, joint-overflow conditioning, asymptotic statement, or uniform-in-candidate upgrade.
- Absorption audit: equations (17)-(20) explicitly drop low factors only by nonnegative risk, charge \(\sum_{i\in H}\pi_i\eta_0=(1-w_L)\eta_0\), and use \(\sum_{i\in H}\pi_i=1-w_L\). No term is hidden, union bounded, or absorbed in prose.
- Baseline reduction: at \(k=1\), exact zero overflow and pointwise identity recover \(\mathbb E R^\star>1/8\), not the weaker generic \(\mathbb E R^\star>1/8-\eta_0\).

## Notation Surface Audit

The inherited public objects \(\pi_i,H,w_L,\mathcal O_i,\eta_0\) are used consistently, and equation (25) is the sole new downstream public interface. The product law \(\Lambda\), common law \(\mathbb P_\star\), task/sample/output variables, and ideal risks are appropriately appendix-local translations of accepted Lemma~\ref{lem:step-012-ideal-experiment}; \(R_i^{\rm tr}\) is proof-local. The hidden learner and decoder are accepted dependency objects, not new assumptions. Every helper is defined before use, all constants have explicit provenance, and no proof-local dictionary is exported to the final theorem.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-010-hard-prior} fixes all hard priors before the arbitrary learner. Accepted Lemma~\ref{lem:step-012-ideal-experiment} places those priors and low-factor tasks in one common experiment. Accepted Propositions~\ref{prop:step-012-hidden-kernel}, \ref{prop:step-012-hidden-privacy}, and \ref{prop:step-012-identity-coupling}, assembled in Lemma~\ref{lem:step-013-common-marginal-floors}, give the correct strict floor for each active marginal with sole residual \(\eta_0\). Lemma~\ref{lem:step-013-exact-risk-sum} supplies the pointwise finite weighted risk equality. Proposition~\ref{prop:step-013-tensorization} combines these with accepted Lemma~\ref{lem:step-009-low-mass} to prove the exact target, and Proposition~\ref{prop:step-013-one-factor-baseline} supplies the zero-overflow specialization. The named chain is complete and uses no independence, joint coupling, union probability, unweighted error count, or additional bridge.

## Review Rationale

`ACCEPTED` is warranted because all four local units are self-contained relative to the formal setting and current accepted dependencies, valid under their displayed conditions, and jointly imply the exact sketch-row target. The high-risk quantifier and coupling checks pass: every hard prior is learner-independent, every active floor is applied to its corresponding eligible hidden learner, and every transferred risk is a marginal of one prior-before-learner common experiment. The coupling has no residual beyond \(\eta_0\); residuals are charged as \(\sum_{i\in H}\pi_i\eta_0\), not by a union bound or unweighted count; exact disjoint risk and finite expectation linearity require no output independence; low-factor terms are removed only by nonnegative risk; and active weights sum exactly to \(1-w_L\). Strictness, measurability, integrability, constants, dependency labels, boundary cases, and paper-ready references all pass. At \(k=1\), exact zero overflow recovers the unreduced strict \(>1/8\) floor. No proof, dependency, or sketch repair is needed, so `None` is the smallest retry target.
