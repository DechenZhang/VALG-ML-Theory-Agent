# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_015`
- Unit attempt: 1
- Binding setting SHA-256: `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`
- Binding accepted sketch SHA-256: `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`
- Binding accepted sketch-review SHA-256: `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`

### Direct Dependency Identity Table

| Step ID | Accepted proof SHA-256 | Accepted review SHA-256 | Producer status | Review status |
| ------- | --------------------- | ---------------------- | --------------- | ------------- |
| `step_005` | `4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a` | `f12de095c3827725cd4d7c8e7ab89fa2b450c0e7a878bd56d766ea5e6aab750b` | `COMPLETE` | `ACCEPTED` |
| `step_014` | `e6e77fc6686a74877692baf9a453e8c14855f52adcee0130753b54295e86c9a4` | `bd7d030a5bc30dd97d56b92569712e783b5dadf8ac7971b93b3234aecb75061d` | `COMPLETE` | `ACCEPTED` |

Both proof/review pairs were hash-matched before use. Each review certifies
the displayed producer attempt and reports no blocker or retry target.

## Target Step Claim

- Intended claim: Discharge the contradiction assumption and conclude
  \(n\ge ak\log_2^*N\) for every candidate in the approved regime.
- Depends on: `step_005`, `step_014`.
- Assumptions used: All three primitive assumptions through accepted
  dependencies.
- Technical challenge: Quantifier closure without weakening scope.
- Intended proof tool or cited result: Direct contradiction.
- Output target: Main nonasymptotic theorem.
- Rate objective: R1, with the final exact rate and allowed constant
  dependence.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

The exact quantified claim is the following. Inherit the universal constants
\(b_*,d_*>0\) and \(N_*\ge2\) used by accepted
Proposition~\ref{prop:step-005-certificate}, and fix once and for all

\[
a=\frac{b_*}{16},\qquad
c_\delta=d_*,\qquad
\varepsilon_0=0.1,\qquad
\alpha_0=\beta_0=2^{-13},
\tag{T1}
\]

and the fixed integer \(N_0\) from that proposition. For every choice, in
this order, of

\[
k\in\mathbb Z_{\ge2},\qquad
N\in\mathbb Z_{\ge N_0},\qquad
n\in\mathbb Z_{\ge1},
\tag{T2}
\]

every \((\varepsilon,\delta)\) satisfying

\[
0<\varepsilon\le\varepsilon_0,
\qquad
0<\delta\le
\min\left\{
  \frac{1}{n\log(n+1)},
  \frac{c_\delta}{m_{n,k}^2\log(m_{n,k}+1)}
\right\},
\tag{T3}
\]

and every randomized, computationally unrestricted, possibly improper map

\[
A:(X_{k,N}\times\{0,1\})^n\longrightarrow
  \mathcal H_{k,N}=\{0,1\}^{X_{k,N}},
\tag{T4}
\]

if \(A\) satisfies Assumption~\ref{assump:central-dp} at this same
\((n,\varepsilon,\delta)\) and
Assumption~\ref{assump:distribution-free-realizable-pac} at this same
\(n\), then

\[
n\ge a k\log_2^*N.
\tag{T5}
\]

The PAC premise and the dependency contradiction use population 0-1 risk.
No claim is made for a tuple, privacy pair, or learner outside the candidate
regime (T2)--(T4) and the three primitive assumptions.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:candidate-regime}, exactly as expanded in
    (T2)--(T3), with
    \[
    M=m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\}.
    \]
  - Assumption~\ref{assump:central-dp}, for central one-record replacement
    adjacency on size-\(n\) labeled datasets and the exact candidate
    \((\varepsilon,\delta)\).
  - Assumption~\ref{assump:distribution-free-realizable-pac}, universally
    over every fixed distribution \(P\) and every fixed
    \(c_{\boldsymbol t}\in C_{k,N}\), with probability over the exact iid
    size-\(n\) sample and the internal randomness of \(A\).
- Accepted dependency artifacts:
  - The hash-matched `step_005` proof/review pair. Accepted
    Proposition~\ref{prop:step-005-certificate} fixes the constants in
    (T1) and \(N_0\), and under the strict local negation
    \(n<ak\log_2^*N\) exports the exact hard-regime and source-privacy
    certificate.
  - The hash-matched `step_014` proof/review pair. Accepted
    Proposition~\ref{prop:step-014-fixed-contradiction} exports the
    fixed-instance population-risk contradiction for the same fixed
    candidate once the accepted upstream premises are instantiated.
- Derived invariants supplied by accepted dependencies:
  - From Proposition~\ref{prop:step-005-certificate}, under the local
    negation,
    \[
    N\ge N_*,\qquad
    8\le M<b_*\log_2^*N,
    \tag{D1}
    \]
    \[
    0<\varepsilon\le0.1,
    \qquad
    0<\delta<\frac{d_*}{M^2\log M},
    \tag{D2}
    \]
    while both inequalities in the primitive candidate-\(\delta\)
    conjunction (T3) remain available.
  - From Proposition~\ref{prop:step-014-fixed-contradiction}, a fixed
    product instance for which one identical expected population risk is
    both strictly greater than \(2^{-9}\) and at most \(2^{-12}\).
- Local conditional hypotheses:
  - The exact strict negation
    \[
    n<ak\log_2^*N.
    \tag{D3}
    \]
    It is used only inside Lemma~\ref{lem:step-015-negated-target} and is
    discharged before the public conclusion.

No hard prior, random hard instance, simulator event, adjacency invariant,
or averaged PAC premise is added as a primitive condition. Those objects and
properties are already encapsulated in the accepted `step_014` interface.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:candidate-regime}, \ref{assump:central-dp}, and \ref{assump:distribution-free-realizable-pac} and the two accepted dependency propositions, if a fixed candidate satisfies \(n<ak\log_2^*N\), then the same fixed-instance expected population risk is both \(>2^{-9}\) and \(\le2^{-12}\), which is impossible. | Discharges the strict negation using exactly the dependency interfaces. |
| `unit_002` | proposition | Under the same three assumptions and once-for-all constants, every candidate in the approved regime satisfies \(n\ge ak\log_2^*N\). | Restores the original candidate quantifier order and exports R1. |

Atomic step = no. Instantiating the accepted contradiction at the exact
candidate and then closing the universal implication are exposed as separate
auditable units.

## Cited Result Applications

### Accepted dependency: hard-regime and candidate-parameter certificate

- Source or name: Accepted
  Proposition~\ref{prop:step-005-certificate}, certified by the hash-matched
  `step_005` review.
- Restated statement in current notation: The fixed choices (T1) and the
  dependency's fixed \(N_0\) are universal. Under
  Assumption~\ref{assump:candidate-regime} and (D3), the exact integer
  \(M=\max\{8,\lceil4n/k\rceil\}\) satisfies (D1), the exact candidate
  privacy parameters satisfy (D2), and both original upper bounds on
  \(\delta\) in (T3) remain true.
- Instantiated objects: The present fixed \(k,N,n,\varepsilon,\delta\) and
  the exact setting-defined \(M\).
- Required assumptions: Assumption~\ref{assump:candidate-regime} and the
  local strict negation (D3).
- Assumption discharge: The former is a primitive hypothesis of the fixed
  candidate; the latter is explicitly assumed only in
  Lemma~\ref{lem:step-015-negated-target}.
- Conclusion used: Exact membership in the hard sample-size and source
  privacy regime, with strict inequalities and with no deletion of either
  candidate-\(\delta\) conjunct.
- Boundary interface used: The accepted proposition expressly includes
  \(N=N_0\), \(M=8\), \(n=1\), \(n<k\), and \(k=2\); no boundary is
  excluded or recalibrated here.

### Accepted dependency: fixed-instance PAC contradiction

- Source or name: Accepted
  Proposition~\ref{prop:step-014-fixed-contradiction}, certified by the
  hash-matched `step_014` review.
- Restated statement in current notation: For the same fixed
  \(k,N,M,n,\varepsilon,\delta,A\), once its accepted upstream premises
  hold, there is a deterministic vector
  \(\boldsymbol z^*=((t_i^*,Q_i^*))_{i=1}^k\) such that
  \[
  \mathbb E_{S,\rho_A}
  R_{P_{\boldsymbol Q^*}}
  \bigl(A_{\rho_A}(S),c_{\boldsymbol t^*}\bigr)>2^{-9}
  \tag{D4}
  \]
  and
  \[
  \mathbb E_{S,\rho_A}
  R_{P_{\boldsymbol Q^*}}
  \bigl(A_{\rho_A}(S),c_{\boldsymbol t^*}\bigr)\le2^{-12},
  \tag{D5}
  \]
  where in both displays
  \(S\sim(P_{\boldsymbol Q^*}^{c_{\boldsymbol t^*}})^n\), and
  \(\rho_A\) denotes only the internal coins of the already-fixed learner.
- Instantiated objects: Exactly the fixed candidate in (T2)--(T4), the same
  exact budget \(M\) as in (D1), and the same population-risk convention.
- Required assumptions: The accepted hard-regime/source-privacy premises,
  the candidate's exact central-DP guarantee, and its universal
  fixed-instance realizable PAC guarantee.
- Assumption discharge: Proposition~\ref{prop:step-005-certificate}
  supplies the first group under (D3); Assumptions~\ref{assump:central-dp}
  and \ref{assump:distribution-free-realizable-pac} supply the remaining
  primitive learner premises. All intermediate generated interfaces are
  already discharged inside the accepted dependency and are not reproved.
- Conclusion used: The impossible same-number comparison (D4)--(D5), with
  all analysis-side prior randomness removed before the PAC comparison.
- Scope and boundary interface used: Arbitrary randomized improper output,
  exact fixed size \(n\), population 0-1 risk, endpoint or point-mass fixed
  instances, \(k=2\), \(n=1\), \(n<k\), and \(M=8\) remain covered.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use |
| ------ | ------------------- | -------------------- | --------- |
| Lemma~\ref{lem:step-015-negated-target} | No fixed candidate satisfying all three primitive assumptions can also satisfy \(n<ak\log_2^*N\). | The exact `step_005` certificate and exact `step_014` fixed-instance contradiction. | Discharges the negation in the theorem closure. |
| Proposition~\ref{prop:step-015-exact-closure} | Every candidate in the approved regime satisfies \(n\ge ak\log_2^*N\). | Lemma~\ref{lem:step-015-negated-target} and the real-order negation of the target. | Exact R1 export to `step_016` and final assembly. |

No external theorem, standard theorem, or diagnostic statement is used
directly in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Impossibility of the negated candidate bound).**
\(\label{lem:step-015-negated-target}\)
Under Assumptions~\ref{assump:candidate-regime},
\ref{assump:central-dp}, and
\ref{assump:distribution-free-realizable-pac}, accepted
Proposition~\ref{prop:step-005-certificate}, and accepted
Proposition~\ref{prop:step-014-fixed-contradiction}, fix any candidate in
the order (T2)--(T4). If

\[
n<ak\log_2^*N,
\tag{1}
\]

then the accepted dependency conclusions yield a contradiction. Hence no
such fixed candidate can satisfy (1).

**Proof / justification.**
The constants in (T1), including \(a=b_*/16\), and \(N_0\) were fixed by
accepted Proposition~\ref{prop:step-005-certificate} before the present
candidate was chosen. Apply that proposition to the fixed candidate and the
strict hypothesis (1). It yields, at the exact integer budget

\[
M=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\},
\]

the strict hard-regime and source-privacy conclusions

\[
N\ge N_*,\qquad 8\le M<b_*\log_2^*N,
\qquad 0<\varepsilon\le0.1,
\qquad 0<\delta<\frac{d_*}{M^2\log M}.
\tag{2}
\]

The same accepted proposition retains, rather than replaces, the primitive
conjunction

\[
0<\delta\le\frac{1}{n\log(n+1)},
\qquad
0<\delta\le\frac{c_\delta}{M^2\log(M+1)}.
\tag{3}
\]

The fixed learner still satisfies its exact
Assumption~\ref{assump:central-dp} and
Assumption~\ref{assump:distribution-free-realizable-pac} premises; neither
is altered by the scalar specialization (2). Therefore the complete
accepted premise package for
Proposition~\ref{prop:step-014-fixed-contradiction} holds at this identical
candidate. Applying that proposition, without reopening any of its internal
dependencies, gives one fixed product instance
\((P_{\boldsymbol Q^*},c_{\boldsymbol t^*})\) for which

\[
\mathbb E_{\substack{
 S\sim(P_{\boldsymbol Q^*}^{c_{\boldsymbol t^*}})^n\\
 \rho_A}}
R_{P_{\boldsymbol Q^*}}
\bigl(A_{\rho_A}(S),c_{\boldsymbol t^*}\bigr)>2^{-9}
\tag{4}
\]

and, for literally the same fixed distribution, target, size-\(n\) iid
sample law, randomized learner, internal-coin law, and population risk,

\[
\mathbb E_{\substack{
 S\sim(P_{\boldsymbol Q^*}^{c_{\boldsymbol t^*}})^n\\
 \rho_A}}
R_{P_{\boldsymbol Q^*}}
\bigl(A_{\rho_A}(S),c_{\boldsymbol t^*}\bigr)\le2^{-12}.
\tag{5}
\]

But

\[
2^{-9}=8\cdot2^{-12}>2^{-12},
\tag{6}
\]

so no real number can satisfy both (4) and (5). This contradicts (1).

There is no exceptional boundary branch. Accepted
Proposition~\ref{prop:step-005-certificate} derives (2)--(3) with the same
strict inequalities when \(N=N_0\), \(M=8\), \(n=1\), \(n<k\), or
\(k=2\), and accepted
Proposition~\ref{prop:step-014-fixed-contradiction} applies to that same
candidate and exact fixed-instance experiment. No floor, ceiling, endpoint,
privacy parameter, or sample size is changed in this invocation. \(\square\)

### unit_002: proposition

**Proposition (Exact nonasymptotic candidate closure).**
\(\label{prop:step-015-exact-closure}\)
Fix the universal constants in (T1) and the accepted fixed \(N_0\) before
candidate quantification. Under Assumptions~\ref{assump:candidate-regime},
\ref{assump:central-dp}, and
\ref{assump:distribution-free-realizable-pac}, every candidate quantified
in the order (T2)--(T4) satisfies

\[
n\ge a k\log_2^*N.
\tag{7}
\]

This is a deterministic pointwise implication for the exact candidate. It
makes no assertion outside the approved candidate regime.

**Proof / justification.**
Fix an arbitrary candidate covered by the proposition. If (7) failed, then
the total order on the real numbers would give its exact strict negation

\[
n<ak\log_2^*N.
\tag{8}
\]

No integer rounding is inserted into this logical negation. But
Lemma~\ref{lem:step-015-negated-target} proves that (8) is impossible for a
candidate satisfying the three primitive assumptions. Therefore (7) holds.
Because the constants were fixed before the arbitrary candidate and the
candidate was otherwise arbitrary within (T2)--(T4), the conclusion has the
quantifier order stated in the formalized goal. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-005-certificate} supplies, from the
exact strict negation and Assumption~\ref{assump:candidate-regime}, the same
integer \(M\), strict hard-regime inequality, strict source privacy cap, and
full candidate-\(\delta\) conjunction required by the accepted proof chain.
Assumptions~\ref{assump:central-dp} and
\ref{assump:distribution-free-realizable-pac} supply the remaining primitive
learner premises at the same fixed candidate.

Accepted Proposition~\ref{prop:step-014-fixed-contradiction} then supplies
the identical fixed-instance population-risk bounds \(>2^{-9}\) and
\(\le2^{-12}\). Lemma~\ref{lem:step-015-negated-target} composes these two
accepted interfaces and proves that \(n<ak\log_2^*N\) is impossible.
Proposition~\ref{prop:step-015-exact-closure} discharges that local
contradiction hypothesis and concludes

\[
n\ge ak\log_2^*N
\qquad\text{with}\qquad a=\frac{b_*}{16}
\]

for every and only every candidate in the approved regime. This is exactly
the accepted `step_015` target and exports R1 without changing candidate
quantifiers, privacy scope, learner scope, sample size, or risk mode.

## Explicit Rate Audit

- Exposed variables: \(k,N,n,\varepsilon,\delta\),
  \(L_N=\log_2^*N\), and the exact
  \(M=m_{n,k}=\max\{8,\lceil4n/k\rceil\}\). The learner \(A\) is universally
  quantified but is not a hidden rate parameter.
- Hidden constants may depend on: Only the accepted universal source
  constants \(b_*,d_*,N_*\) and the once-chosen fixed privacy, accuracy,
  and confidence constants. More exactly, this step inherits
  \(a=b_*/16\), \(c_\delta=d_*\), \(\varepsilon_0=0.1\),
  \(\alpha_0=\beta_0=2^{-13}\), and the accepted fixed \(N_0\).
- Hidden constants may not depend on: \(k,N,n,\varepsilon,\delta\), \(M\),
  \(A\), any target or distribution, the extracted fixed instance, a
  sample, or learner randomness.
- Fixed quantities: All constants in (T1), \(N_0\), and the source constants
  are fixed before the quantifiers in (T2)--(T4).
- Probability mode: The conclusion is a deterministic pointwise implication.
  The accepted contradiction compares expectations over only the exact iid
  sample and internal randomness of \(A\) after its hard instance is fixed.
  There is no prior randomness in the final comparison.
- Horizon mode: Fixed sample size \(n\) and exact fixed simulated budget
  \(M\); neither is expected, random, a stopping time, or asymptotic.
- Norm mode: Population 0-1 risk under the identical fixed distribution and
  target on both sides of the accepted contradiction. No empirical-risk or
  excess-risk surrogate is used.
- Admissibility conditions and auxiliary tolerances: Exactly the conjunction
  of Assumptions~\ref{assump:candidate-regime},
  \ref{assump:central-dp}, and
  \ref{assump:distribution-free-realizable-pac}. The local strict negation
  is discharged. There is no auxiliary tolerance and no claim outside this
  regime.
- Term absorption or simplification inequalities: No new rate term is
  absorbed. Accepted Proposition~\ref{prop:step-005-certificate} supplies
  the exact strict ceiling, floor-eight, and logarithm-denominator
  comparisons. The only final numerical comparison is the displayed strict
  inequality \(2^{-9}=8\cdot2^{-12}>2^{-12}\).
- Probability conversion: None in this step. The fixed-instance expectation
  comparison is consumed exactly from accepted `step_014`.
- Contribution to any Rate Specialization Bridge: This is the exact R1
  nonasymptotic bridge. It exports \(n\ge ak\log_2^*N\) at the same
  \((k,N,n,\varepsilon,\delta)\) for the downstream tower specialization.
- Baseline-reduction check: The exact unrestricted improper randomized
  learner scope, fixed-size central replacement DP, full two-term
  candidate-\(\delta\) conjunction, and population-risk PAC mode are
  preserved. The cases \(n=1\), \(n<k\), \(M=8\), \(k=2\), and \(N=N_0\)
  use the same dependency interfaces and the same constant \(a=b_*/16\);
  no conservative boundary loss or excluded initial case is introduced.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: The constants
  \(a,c_\delta,\varepsilon_0,\alpha_0,\beta_0,N_0\) and
  Proposition~\ref{prop:step-015-exact-closure}. They form the minimal
  theorem interface and are inherited exactly from accepted `step_005`.
- `Appendix-local`: \(L_N=\log_2^*N\), the exact setting-defined budget
  \(M=m_{n,k}\), and
  Lemma~\ref{lem:step-015-negated-target}. The two abbreviations are used
  only to display the dependency interface without altering the public rate.
- `Proof-local`: The fixed vector \(\boldsymbol z^*\) and its product law and
  target in (4)--(5). They are generated by accepted
  Proposition~\ref{prop:step-014-fixed-contradiction} and disappear after
  the numerical contradiction.
- Accepted dependency objects: \(b_*,d_*,N_*\), the fixed \(N_0\), the
  exact hard-regime/source-privacy certificate, and the fixed hard product
  instance are inherited outputs, not new assumptions or freely chosen
  objects.
- Constant provenance: \(a=b_*/16\), \(c_\delta=d_*\),
  \(\varepsilon_0=0.1\), \(\alpha_0=\beta_0=2^{-13}\), and \(N_0\) were
  fixed and proved admissible by accepted
  Proposition~\ref{prop:step-005-certificate}. This step introduces no new
  constant, threshold, margin, or rate.
- Primitive assumption provenance: Assumption~\ref{assump:candidate-regime}
  supplies only pre-run scalar conditions; Assumption~\ref{assump:central-dp}
  is the exact property of the fixed candidate map; and
  Assumption~\ref{assump:distribution-free-realizable-pac} is universal over
  every fixed realizable distribution and target. None is strengthened.
- Derived-condition provenance: The hard regime (D1), source cap (D2), and
  fixed-instance contradiction (D4)--(D5) are supplied by accepted
  dependencies. No generated-object condition is promoted to a primitive
  assumption.
- Local conditional provenance: The strict inequality (D3) is exactly the
  negation of the desired weak inequality and is discharged by
  Lemma~\ref{lem:step-015-negated-target}.
- Quantifier and scope discipline: Constants are fixed first; then
  \(k,N,n\), then \((\varepsilon,\delta)\), then an arbitrary unrestricted
  randomized improper \(A\); finally the two learner assumptions imply the
  lower bound. No statement is asserted when any candidate-regime clause or
  either learner assumption is absent.
- Boundary discipline: Strict inequalities, the exact ceiling and max in
  \(M\), and the \(n=1\), \(n<k\), \(M=8\), \(k=2\), and \(N=N_0\) cases
  are consumed from accepted Proposition~\ref{prop:step-005-certificate};
  the matching fixed-instance contradiction is consumed from accepted
  Proposition~\ref{prop:step-014-fixed-contradiction}. They are not
  reproved, rounded, or excluded.
- Diagnostic boundary: The optional `global_proof.md` was not read or used.
  No diagnostic statement is proof evidence, a cited result, an assumption
  source, or authority to change the target claim.
