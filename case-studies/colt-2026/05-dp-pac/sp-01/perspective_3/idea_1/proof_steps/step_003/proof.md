# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: If \(M<b_*L_N\), every
  \((0.1,d_*/(M^2\log M))\)-DP one-block learner has some
  \((t,Q)\) with expected population risk greater than
  \(\eta=2^{-8}\), where \(L_N=\log_2^*N\).
- Depends on: `step_002`.
- Assumptions used: The source-wrapper parameter conditions and accepted
  conclusion from `step_002`; no generated assumption.
- Technical challenge: Convert the high-probability impossibility into an
  expected-loss lower bound without overstating the loss gap or reversing a
  strict inequality.
- Intended proof tool or cited result: Contrapositive of the accepted
  one-block wrapper and the nonnegative bounded-loss form of Markov's
  inequality.
- Output target: Expected-loss game lower value.
- Rate objective: R1, with exact fixed \(M,N\), exact privacy cap, and
  population-risk expectation mode.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

Precisely, let \(b_*,d_*>0\) and \(N_*\ge2\) be the universal constants
supplied by Proposition~\ref{prop:step-002-wrapper}, and put

\[
L_N:=\log_2^*N,
\qquad
\eta:=2^{-8}=\frac1{256}.
\]

For every pair of integers \(N\ge N_*\) and \(M\ge8\) satisfying

\[
M<b_*L_N,
\tag{H}
\]

and every randomized, unrestricted map

\[
B:([N]\times\{0,1\})^M\longrightarrow\{0,1\}^{[N]}
\]

that is

\[
\left(0.1,\frac{d_*}{M^2\log M}\right)
\text{-differentially private}
\tag{DP}
\]

under one-row replacement, there exist \(t\in[N+1]\) and a probability law
\(Q\) on \([N]\) such that

\[
\mathbb E_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
  R_Q(g,\tau_t)
>\eta.
\tag{EL}
\]

The output \(g\) in (EL) is arbitrary: it need not be proper, monotone,
efficiently represented, or deterministic.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Setting technical assumptions: None. This step does not consume
  `assump:candidate-regime`, `assump:central-dp`, or
  `assump:distribution-free-realizable-pac`.
- Primitive conditions:
  - The basic one-block objects inherited from `setting.md`: the ordered
    domain \([N]\), thresholds \(\tau_t\), labeled laws
    \(Q^{\tau_t}\), full improper output space \(\{0,1\}^{[N]}\),
    population 0-1 risk, exact iid sample size, and one-row replacement
    adjacency.
  - The checkable scalar conditions \(N\ge N_*\), integer \(M\ge8\), and
    \(M<b_*\log_2^*N\). These are local wrapper conditions, not new
    theorem-facing assumptions.
- Accepted dependency step proof/review artifacts:
  - `proof_steps/step_002/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `3f084215e4b101e0435cc52d188cb31cc6c15b1cb47f6f13bd6674b1573f416c`.
  - `proof_steps/step_002/review.md`, whose `Step-Review Status` is
    `ACCEPTED` and whose reviewed hash is the same hash.
  - The exact accepted interface used here is
    Proposition~\ref{prop:step-002-wrapper}: under its displayed parameter
    conditions, replacement privacy and (W-PAC) imply
    \(M\ge b_*\log_2^*N\).
- Derived conclusions supplied by the accepted dependency: The existence of
  universal \(b_*,d_*,N_*\) and the wrapper implication just stated. No hard
  instance, prior, or expected-loss conclusion is imported.
- Local conditional hypotheses:
  - For Proposition~\ref{prop:step-003-expected-hardness}, the arbitrary map
    \(B\) satisfies (DP).
  - In its contradiction proof only, failure of (EL) means that every fixed
    \((t,Q)\) has expected risk at most \(\eta\). This is a temporary logical
    hypothesis, not a theorem assumption or generated invariant.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the primitive one-block definitions, for any fixed randomized unrestricted \(B\), if every \((t,Q)\) has expected risk at most \(\eta=2^{-8}\), then \(B\) satisfies (W-PAC): for every \((t,Q)\), \(\Pr(R_Q(g,\tau_t)>1/16)\le1/16\). | Converts a uniform expected-risk upper bound into exactly the non-strict PAC premise consumed by the accepted wrapper. |
| `unit_002` | proposition | Under Proposition~\ref{prop:step-002-wrapper} and Lemma~\ref{lem:step-003-markov-bridge}, every learner satisfying (DP) at fixed integers \(N\ge N_*\), \(M\ge8\), and \(M<b_*\log_2^*N\) has a fixed \((t,Q)\) satisfying (EL). | Applies the dependency by contrapositive and proves the exact expected-loss target. |

Atomic step = no. The expectation-to-PAC probability conversion and the
contrapositive application of the dependency wrapper are separate audit
obligations.

## Cited Result Applications

### Accepted dependency: one-block ALMM wrapper

- Source or name: Accepted
  Proposition~\ref{prop:step-002-wrapper} in `proof_steps/step_002/proof.md`,
  certified by the matching accepted review.
- Restated statement in current notation: There are universal
  \(b_*,d_*>0\) and \(N_*\ge2\) such that, for every \(N\ge N_*\), integer
  \(M\ge8\), \(0\le\varepsilon\le0.1\), and
  \(0\le\delta\le d_*/(M^2\log M)\), any randomized unrestricted
  one-block map \(B\) that is \((\varepsilon,\delta)\)-DP under one-row
  replacement and satisfies
  \[
  \Pr_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
    \left[R_Q(g,\tau_t)>\frac1{16}\right]
  \le\frac1{16}
  \tag{W-PAC}
  \]
  for every \(t\in[N+1]\) and every law \(Q\) on \([N]\), must satisfy
  \(M\ge b_*\log_2^*N\).
- Instantiated objects: The same fixed \(N,M,B,t,Q\) used in this step, with
  \(\varepsilon=0.1\) and
  \(\delta=d_*/(M^2\log M)\).
- Required assumptions and discharge:
  - \(N\ge N_*\) and integer \(M\ge8\) are target-step scalar conditions.
  - The exact privacy premise is (DP); equality at both wrapper caps is
    permitted by the wrapper's non-strict parameter inequalities.
  - Lemma~\ref{lem:step-003-markov-bridge} supplies (W-PAC) under the temporary
    negation of (EL).
- Conclusion used: \(M\ge b_*\log_2^*N\), which contradicts the strict
  inequality (H).

### Standard result: Markov's inequality

- Restated statement: If \(Z\) is a nonnegative integrable random variable
  and \(a>0\), then
  \[
  \Pr(Z\ge a)\le\frac{\mathbb E Z}{a}.
  \]
- Justification and assumption discharge: Pointwise,
  \(\mathbf 1\{Z\ge a\}\le Z/a\); taking expectations proves the result.
  In Lemma~\ref{lem:step-003-markov-bridge},
  \(Z=R_Q(g,\tau_t)\) lies in \([0,1]\), because it is a probability of
  0-1 disagreement. Thus it is nonnegative and integrable, and the chosen
  threshold \(a=1/16\) is positive.
- Conclusion used: The exact chain
  \[
  \Pr(Z>1/16)
  \le \Pr(Z\ge1/16)
  \le 16\mathbb E Z.
  \]

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Lemma~\ref{lem:step-003-markov-bridge} | Uniform expected risk at most \(2^{-8}\) implies (W-PAC), with its exact \(>1/16\) failure event and \(\le1/16\) probability bound. | Primitive bounded 0-1 risk and the temporary uniform expectation hypothesis. | Supplies the only missing antecedent of Proposition~\ref{prop:step-002-wrapper}. |
| Proposition~\ref{prop:step-003-expected-hardness} | In the strict subcritical regime, every learner at the exact source privacy cap has a fixed \((t,Q)\) with expected risk strictly greater than \(2^{-8}\). | The accepted wrapper, Lemma~\ref{lem:step-003-markov-bridge}, and the target-step scalar/privacy conditions. | Exact target-step export to `step_004`. |

## Local Derivation

### unit_001: lemma

**Lemma (Expectation-to-PAC conversion at the ALMM constants).**
\(\label{lem:step-003-markov-bridge}\)
Under the primitive one-block definitions, fix integers \(N\ge2\) and
\(M\ge1\), and let

\[
B:([N]\times\{0,1\})^M\to\{0,1\}^{[N]}
\]

be any randomized unrestricted map. If, for every \(t\in[N+1]\) and every
probability law \(Q\) on \([N]\),

\[
\mathbb E_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
  R_Q(g,\tau_t)
\le 2^{-8},
\tag{1}
\]

then, for every such \(t,Q\),

\[
\Pr_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
  \left[R_Q(g,\tau_t)>\frac1{16}\right]
\le\frac1{16}.
\tag{2}
\]

Thus \(B\) satisfies (W-PAC).

**Proof / justification.**
Fix an arbitrary \(t\in[N+1]\) and arbitrary law \(Q\) on \([N]\), while
keeping the same fixed sample size \(M\). Under the joint randomness of
\(S\sim(Q^{\tau_t})^M\) and \(g\sim B(S)\), define the proof-local random
variable

\[
Z_{t,Q}:=R_Q(g,\tau_t).
\]

For every realized output \(g\), population 0-1 risk is a probability, so

\[
0\le Z_{t,Q}\le1.
\tag{3}
\]

Apply Markov's inequality at the positive threshold \(1/16\). The strict
failure event in (W-PAC) is contained in the weak-threshold event, hence

\[
\begin{aligned}
\Pr\!\left(Z_{t,Q}>\frac1{16}\right)
&\le \Pr\!\left(Z_{t,Q}\ge\frac1{16}\right)\\
&\le 16\,\mathbb E Z_{t,Q}\\
&\le 16\cdot2^{-8}\\
&=2^{-4}
=\frac1{16}.
\end{aligned}
\tag{4}
\]

The final inequality remains valid when the expectation in (1) equals
\(2^{-8}\); no strict inequality has been inserted. Since \((t,Q)\) was
arbitrary, (4) holds simultaneously as a universally quantified statement
for every fixed \((t,Q)\), which is exactly (W-PAC). Randomization and
improperness of \(g\) do not affect (3). \(\square\)

### unit_002: proposition

**Proposition (Expected-loss hardness below the one-block threshold bound).**
\(\label{prop:step-003-expected-hardness}\)
Let \(b_*,d_*>0\) and \(N_*\ge2\) be the constants supplied by the accepted
Proposition~\ref{prop:step-002-wrapper}. Under that proposition and
Lemma~\ref{lem:step-003-markov-bridge}, for every pair of integers
\(N\ge N_*\), \(M\ge8\) satisfying

\[
M<b_*\log_2^*N,
\]

every randomized unrestricted map

\[
B:([N]\times\{0,1\})^M\to\{0,1\}^{[N]}
\]

that is
\(\left(0.1,d_*/(M^2\log M)\right)\)-DP under one-row replacement admits
some \(t\in[N+1]\) and some probability law \(Q\) on \([N]\) for which

\[
\mathbb E_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
  R_Q(g,\tau_t)
>2^{-8}.
\tag{5}
\]

**Proof / justification.**
Fix \(N,M\) and an arbitrary randomized unrestricted \(B\) satisfying all
the displayed hypotheses. Suppose (5) were false. The exact logical
negation of the existential strict inequality is

\[
\text{for every }t\in[N+1]\text{ and every law }Q\text{ on }[N],
\qquad
\mathbb E_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
  R_Q(g,\tau_t)
\le2^{-8}.
\tag{6}
\]

Lemma~\ref{lem:step-003-markov-bridge} applies to the same map \(B\), the
same exact sample size \(M\), and every fixed \((t,Q)\). It converts (6) into
(W-PAC), including the allowed equality
\(\Pr(R_Q(g,\tau_t)>1/16)=1/16\).

All remaining hypotheses of Proposition~\ref{prop:step-002-wrapper} now hold:
\(N\ge N_*\), integer \(M\ge8\), the map is arbitrary and improper, and its
privacy parameters equal the permitted endpoints

\[
\varepsilon=0.1,
\qquad
\delta=\frac{d_*}{M^2\log M}.
\]

The denominator is positive even at \(M=8\), since \(\log8>0\). The accepted
wrapper therefore yields

\[
M\ge b_*\log_2^*N,
\]

contradicting the strict hypothesis \(M<b_*\log_2^*N\). Hence (6) is false,
so a fixed pair \((t,Q)\) satisfying (5) exists. The pair may depend on the
fixed learner \(B\), as this step claims only worst-instance hardness; no
learner-independent prior or minimax conclusion is asserted. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-003-markov-bridge} proves the exact probability-mode
bridge required by the accepted dependency. In particular, its displayed
chain preserves all three relevant boundary directions:

\[
\mathbb E R_Q\le2^{-8}
\quad\Longrightarrow\quad
\Pr(R_Q>1/16)
\le\Pr(R_Q\ge1/16)
\le1/16.
\]

Thus the negation of the desired strict expected-risk conclusion supplies
the non-strict (W-PAC) premise for every fixed \(t,Q\). The exact privacy cap,
fixed \(M\), unrestricted output space, and source parameter boundaries then
allow Proposition~\ref{prop:step-002-wrapper} to be applied without any
parameter monotonicity, sampling, properness, or adjacency conversion.
Proposition~\ref{prop:step-003-expected-hardness} derives the contradiction
with \(M<b_*\log_2^*N\) and therefore proves the exact target: every such
learner has some fixed \((t,Q)\) with expected population risk strictly
greater than \(\eta=2^{-8}\).

No hard prior, minimax swap, simultaneous hard pair, or product construction
is used. Those remain the separate obligations of `step_004` and later steps.

## Explicit Rate Audit

- Exposed variables: \(N,M\); the inherited constants \(b_*,d_*,N_*\); the
  fixed privacy pair \((0.1,d_*/(M^2\log M))\); the source PAC threshold and
  failure level \((1/16,1/16)\); \(L_N=\log_2^*N\); and
  \(\eta=2^{-8}\).
- Hidden constants may depend on: No new hidden constant is introduced.
  \(b_*,d_*,N_*\) are exactly the universal constants inherited from the
  accepted dependency.
- Hidden constants may not depend on: \(k,n,N,M\), privacy parameters, the
  learner, \(t,Q\), any later hard prior, or simulator randomness.
- Fixed quantities: For each application, \(N,M\) and the candidate learner
  \(B\) are fixed before \((t,Q)\) is selected. The values \(0.1\), \(1/16\),
  and \(2^{-8}\) are fixed once and for all.
- Probability mode: The target is expected population risk over exactly
  \(M\) iid labeled examples and the learner's internal randomness. The
  intermediate (W-PAC) statement is a high-probability bound over the same
  randomness. The outer lower-bound implication is deterministic.
- Horizon mode: Fixed sample size \(M\), pointwise in \(M\). There is no
  stopping time, expected sample size, or asymptotic-in-\(M\) substitution.
- Norm mode: Exact population 0-1 risk \(R_Q(g,\tau_t)\), not empirical or
  excess risk.
- Admissibility conditions and auxiliary tolerances: Integers
  \(N\ge N_*\), \(M\ge8\), strict \(M<b_*\log_2^*N\), and the exact displayed
  replacement-DP parameters. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: None. The numerical
  identity is explicit: \(16\cdot2^{-8}=2^{-4}=1/16\).
- Probability conversion: Equation (4) proves
  \(\Pr(R_Q>1/16)\le\Pr(R_Q\ge1/16)\le16\mathbb ER_Q\le1/16\).
- Contribution to any Rate Specialization Bridge: This step supplies the R1
  expected-loss interface consumed by `step_004`. It does not identify
  \(M\) with \(m_{n,k}\) or perform the final public-rate specialization.
- Baseline-reduction check: The accepted unrestricted randomized improper
  one-block wrapper is preserved exactly. Equality at the privacy caps,
  equality in the temporary expectation bound, \(M=8\), and \(N=N_*\) are
  allowed whenever the strict subcritical inequality also holds. The equality
  case \(M=b_*\log_2^*N\) is not claimed.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: The minimal exported interface is
  Proposition~\ref{prop:step-003-expected-hardness} and the fixed payoff level
  \(\eta=2^{-8}\), which is consumed by `step_004`. The constants
  \(b_*,d_*,N_*\) and their provenance are inherited unchanged from the
  accepted dependency.
- `Appendix-local`: \(L_N=\log_2^*N\) is only a shorthand for the setting's
  exact iterated logarithm. The bound variables \(B,N,M,t,Q\), labeled law
  \(Q^{\tau_t}\), and risk \(R_Q\) are direct one-block specializations of
  setting objects and the accepted wrapper.
- `Proof-local`: \(Z_{t,Q}=R_Q(g,\tau_t)\) is introduced only inside
  Lemma~\ref{lem:step-003-markov-bridge} to apply Markov's inequality and is
  eliminated before export.
- Constant provenance: \(b_*,d_*,N_*\), the privacy value \(0.1\), and the
  PAC pair \((1/16,1/16)\) are inherited from
  Proposition~\ref{prop:step-002-wrapper}. The new displayed payoff level is
  directly defined by those PAC constants as
  \(\eta=(1/16)(1/16)=2^{-8}\). The bound \(0\le Z_{t,Q}\le1\) follows from
  the definition of population 0-1 risk, not from a new assumption.
- Assumption provenance: The scalar domain and budget restrictions are local
  primitive conditions. Privacy of \(B\) is an explicit local conditional
  hypothesis. The uniform expected-risk upper bound (6) is used only as the
  contradiction hypothesis and is discharged. The existence of the hard
  pair is proved, not assumed. No event, prior, generated object, stability
  property, boundedness condition, recurrence, or invariant is imported.
- Quantifier discipline: \(N,M\) and \(B\) are fixed first; the result then
  produces \(t,Q\). The expectation is only over the iid sample and internal
  learner randomness. This step does not exchange an infimum and supremum and
  does not produce a pair uniform over learners.
- Diagnostic boundary: Neither `global_proof.md` nor
  `global_proof_review.md` was read or used.

## Self-Audit

### unit_001

- Statement audit: PASS. It quantifies over every fixed \(t,Q\), the exact
  iid size \(M\), and arbitrary randomized improper outputs.
- Direction audit: PASS. The strict event is first enlarged to the weak event;
  Markov and the expectation hypothesis then use only non-strict inequalities.
  Equality \(\mathbb E R_Q=2^{-8}\) gives exactly the allowed W-PAC boundary
  \(1/16\).
- Assumption audit: PASS. Nonnegativity and integrability follow from
  \(0\le R_Q\le1\); no privacy or generated condition is used.

### unit_002

- Statement audit: PASS. The proposition preserves arbitrary randomized
  improper outputs, fixed integer \(M\), all \(t,Q\) in the contradiction
  hypothesis, and a fixed witness pair in the conclusion.
- Dependency audit: PASS. The accepted wrapper's actual reviewed hash matches
  its review, and every wrapper antecedent is discharged at the same \(N,M,B\)
  with equality allowed at the privacy caps.
- Logic audit: PASS. Negating \(\exists(t,Q):\mathbb E R_Q>\eta\) gives
  \(\forall(t,Q):\mathbb E R_Q\le\eta\), and the resulting wrapper lower bound
  contradicts the target's strict subcritical inequality.
- Scope audit: PASS. The proposition proves only learner-dependent
  worst-instance expected-loss hardness and does not claim the prior or
  minimax result assigned to `step_004`.

- Overall target fidelity: PASS.
- Step Proof Status: `COMPLETE`.
- Blockers: None.
