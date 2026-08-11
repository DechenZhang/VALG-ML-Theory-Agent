# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_003/proof.md` (SHA-256 `81c92218e737c3592f4071b4706eee2b1b8b9288cb9115295d5f840b24271f31`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Expectation-to-PAC conversion at the ALMM constants

- Statement fidelity: The lemma proves exactly the local probability-mode bridge needed by the accepted `step_003` row. Its generic range (N\ge2), (M\ge1) is harmlessly broader than the target regime, and its conclusion retains the wrapper's strict failure event (R_Q>1/16) and non-strict probability bound (\le1/16).
- Proof validity: For each fixed (t,Q), the random variable (Z_{t,Q}=R_Q(g,\tau_t)) lies in ([0,1]). Markov's inequality gives
  \[
  \Pr(Z_{t,Q}>1/16)\le \Pr(Z_{t,Q}\ge1/16)
  \le16\mathbb E Z_{t,Q}\le16\cdot2^{-8}=1/16.
  \]
  Every inequality has the required direction, including when (\mathbb E Z_{t,Q}=2^{-8}).
- Cited-result and assumption audit: Markov's inequality is restated and justified pointwise before use. Nonnegativity, integrability, and boundedness follow from population 0-1 risk; no privacy condition, setting technical assumption, generated event, or dependency conclusion is used in this unit.
- Rigor checklist: The proof fixes an arbitrary (t,Q), retains the exact iid size (M), and takes probability and expectation only over the sample and learner randomness. Since the pair was arbitrary, the resulting statement has the universal quantifiers required by (W-PAC); it makes no simultaneous-event claim. Randomized, nonmonotone, and improper outputs remain covered.
- Local adversarial test: An atom at exactly (1/16) is handled by enlarging the strict event to the weak event. Equality in the expectation hypothesis yields exactly the allowed probability boundary, while smaller expectations and degenerate zero-risk laws remain valid. No strict inequality is manufactured by Markov's inequality.
- Contribution to target step: Supplies the exact missing (W-PAC) antecedent for Proposition~\ref{prop:step-002-wrapper} under the negation of the target expected-loss conclusion.
- Verdict: PASS
- Repair direction: None.

### unit_002: Expected-loss hardness below the one-block threshold bound

- Statement fidelity: The proposition matches the accepted sketch row, including (N\ge N_*), integer (M\ge8), strict (M<b_*\log_2^*N), exact source privacy parameters, arbitrary randomized improper output, and the conclusion that one fixed learner-dependent pair (t,Q) has expected risk strictly greater than (2^{-8}).
- Proof validity: Negating the existential strict conclusion gives the exact universal non-strict premise (\forall(t,Q),\ \mathbb E R_Q\le2^{-8}). Lemma~\ref{lem:step-003-markov-bridge} turns this into (W-PAC). The accepted wrapper then yields (M\ge b_*\log_2^*N), contradicting the strict subcritical hypothesis. Classical negation therefore gives the required fixed witness and preserves the strict (>2^{-8}) conclusion.
- Cited-result and assumption audit: The proof restates the accepted Proposition~\ref{prop:step-002-wrapper}, identifies the matching accepted dependency hash, and instantiates the same (N,M,B). Its hypotheses are discharged exactly: (N\ge N_*), (M\ge8), (W-PAC) from unit_001, and replacement privacy at the permitted endpoints (\varepsilon=0.1) and (\delta=d_*/(M^2\log M)). The denominator is positive at (M=8). No setting technical assumption is imported.
- Rigor checklist: Quantifiers are ordered as (N,M), then an arbitrary private (B), then an existential (t,Q) that may depend on (B). The expectation contains only the exact (M)-sample iid law and (B)'s internal randomness. Equality at either privacy cap is allowed by the dependency's non-strict parameter conditions, while equality (M=b_*\log_2^*N) is correctly excluded from this step.
- Local adversarial test: The argument remains valid at (N=N_*), (M=8), both endpoint thresholds, point-mass (Q), stronger-than-cap privacy viewed as satisfying the displayed cap, and arbitrary improper randomized kernels. None of these cases alters the logical negation or the wrapper interface.
- Contribution to target step: Combines the local probability bridge with the accepted source wrapper to prove the exact expected-loss worst-instance export consumed by `step_004`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. Boundedness of population 0-1 risk, the strict-to-weak event inclusion, Markov's inequality, the exact negation of the existential strict claim, positivity of (M^2\log M) for (M\ge8), and dependency applicability are all stated and checked in the two named units. References use their theorem-style labels. The proof explicitly leaves learner-independent separation, a hard prior, an infimum/supremum exchange, minimax, and every product or simulator construction to `step_004` and later steps.

## Target Claim Audit

The proof establishes exactly

\[
\forall N\in\mathbb Z_{\ge N_*}\ \forall M\in\mathbb Z_{\ge8},\
M<b_*\log_2^*N,\quad
\forall B\text{ satisfying the displayed source-cap DP condition},\quad
\exists t\in[N+1]\ \exists Q\in\Delta([N]):\
\mathbb E_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
R_Q(g,\tau_t)>2^{-8}.
\]

The witness may depend on (B), as required. The proof neither strengthens this to one pair or prior uniform over learners nor weakens the strict expected-risk conclusion. It preserves exact fixed sample size, replacement adjacency, unrestricted improper output, population-risk mode, and the endpoint threshold convention.

## Explicit Rate Audit

This is a rate-bearing source-interface step. It exposes (N,M), (b_*,d_*,N_*), (\log_2^*N), the exact privacy pair, the fixed PAC pair ((1/16,1/16)), and (\eta=2^{-8}). No new hidden constant is introduced; the inherited constants retain the dependency's universal, candidate-independent provenance. The fixed quantities, admissibility conditions, deterministic outer implication, sample/learner probability mode, fixed-(M) horizon mode, and population 0-1 norm mode are all declared. The sole probability conversion is displayed with exact inequalities, and no term is absorbed or dropped. This step does not identify (M) with (m_{n,k}), simplify a public rate, or consume an auxiliary tolerance. The unrestricted improper ALMM baseline and the (M=8) and privacy-endpoint cases are preserved.

## Notation Surface Audit

The exported proposition and (\eta) are correctly classified as `public-facing`; (L_N) and the one-block bound variables are `appendix-local`; and (Z_{t,Q}) is `proof-local`. Each object is defined from setting notation or the accepted dependency. The one-off variable (Z_{t,Q}) clarifies the Markov calculation and is eliminated before export. No proof-local dictionary, generated object, or unnecessary notation is exported downstream.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-003-markov-bridge} converts the exact universal non-strict expectation hypothesis into the exact (W-PAC) premise. Accepted Proposition~\ref{prop:step-002-wrapper} then supplies the lower bound that contradicts the strict subcritical condition, and Proposition~\ref{prop:step-003-expected-hardness} records the resulting witness. These named results jointly imply the exact target without relying on subsection titles, bare unit IDs, diagnostic artifacts, or any claim assigned to `step_004`.

## Review Rationale

Both local units are correct under the unchanged accepted sketch and the current accepted `step_002` interface. The proof handles all strict and non-strict boundaries exactly, preserves the quantifier order and privacy endpoints, and invokes the source wrapper only after every antecedent is discharged at the same (N,M,B). Its output is deliberately limited to learner-dependent worst-instance expected-loss hardness, so no minimax or hard-prior result is smuggled across the `step_004` boundary. No local, sketch-level, or dependency-level repair is needed; `ACCEPTED` with `Smallest Retry Target = None` is the smallest aligned outcome.
