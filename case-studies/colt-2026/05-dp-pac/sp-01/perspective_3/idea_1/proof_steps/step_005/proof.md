# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Choose \(a=b_*/16\), \(\varepsilon_0=0.1\), \(c_\delta\le d_*\), \(\alpha_0=\beta_0=2^{-13}\), and fixed \(N_0\) so the negation \(n<akL_N\) implies \(M<b_*L_N\) and the candidate privacy parameters meet the source cap.
- Depends on: `step_002`.
- Assumptions used: `assump:candidate-regime`.
- Technical challenge: Ceiling, floor eight, logarithm denominator, and source asymptotic threshold.
- Intended proof tool or cited result: Direct scalar inequalities.
- Output target: Hard-regime and candidate-parameter certificate.
- Rate objective: R1, with all exposed variables, admissibility conditions, and hidden-constant dependence preserved.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance gate is the separate accepted sketch review).

Write

\[
L_N:=\log_2^*N,
\qquad
M:=m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\}.
\]

The exact certificate proved below is as follows. Let \(b_*,d_*>0\) and
\(N_*\in\mathbb Z_{\ge2}\) be the universal constants from the accepted
Proposition~\ref{prop:step-002-wrapper}. There are fixed universal choices

\[
a=\frac{b_*}{16},\qquad
\varepsilon_0=0.1,\qquad
c_\delta=d_*,\qquad
\alpha_0=\beta_0=2^{-13},
\tag{C1}
\]

and \(N_0\in\mathbb Z_{\ge2}\) such that every tuple satisfying
Assumption~\ref{assump:candidate-regime} and the local contradiction
hypothesis

\[
n<akL_N
\tag{C2}
\]

obeys

\[
N\ge N_*,\qquad
8\le M<b_*L_N,
\tag{C3}
\]

and

\[
0<\varepsilon\le0.1,
\qquad
0<\delta<\frac{d_*}{M^2\log M}.
\tag{C4}
\]

At the same time, the full candidate-regime conjunction remains available:

\[
0<\delta\le \frac{1}{n\log(n+1)}
\quad\text{and}\quad
0<\delta\le
\frac{c_\delta}{M^2\log(M+1)}.
\tag{C5}
\]

Thus (C3)--(C4) place the exact integer budget \(M\) and the candidate
privacy parameters inside the accepted one-block source interface, while
(C5) records rather than discards either primitive \(\delta\)-condition.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:candidate-regime}: relative to the fixed constants in (C1) and the fixed \(N_0\) constructed below,
    \[
    k\ge2,\quad N\ge N_0,\quad n\in\mathbb Z_{\ge1},\quad
    0<\varepsilon\le\varepsilon_0,
    \]
    and
    \[
    0<\delta\le
    \min\left\{
      \frac{1}{n\log(n+1)},
      \frac{c_\delta}{M^2\log(M+1)}
    \right\}.
    \]
  - The basic-setting definitions of the natural logarithm, \(\log_2^*\), \(\operatorname{Tow}_2\), and the exact integer \(M=m_{n,k}\).
- Accepted dependency step proof/review artifacts:
  - `proof_steps/step_002/proof.md`, sketch attempt 1 and unit attempt 1, SHA-256 `3f084215e4b101e0435cc52d188cb31cc6c15b1cb47f6f13bd6674b1573f416c`.
  - `proof_steps/step_002/review.md`, SHA-256 `d1fc085f14109e83fbda0990f308215ac4ed593c952c939d44adb1e65dac7c5c`, whose `Step-Review Status` is `ACCEPTED` and whose reviewed-proof hash is the preceding proof hash.
  - The exact accepted interface used here is Proposition~\ref{prop:step-002-wrapper}: universal \(b_*,d_*>0\) and \(N_*\in\mathbb Z_{\ge2}\) exist, and its one-block source regime is
    \[
    N\ge N_*,\quad M\in\mathbb Z_{\ge8},\quad
    0\le\varepsilon\le0.1,\quad
    0\le\delta\le\frac{d_*}{M^2\log M}.
    \]
- Derived controls supplied by accepted dependencies:
  - The universal constants \(b_*,d_*,N_*\), the hard-regime threshold \(b_*\log_2^*N\), and the source privacy cap just displayed.
- Local conditional hypotheses:
  - The contradiction hypothesis (C2). It is used only to derive the source hard regime and is not promoted to a theorem-facing assumption.
- Other setting assumptions: Neither `assump:central-dp` nor `assump:distribution-free-realizable-pac` is consumed in this scalar step.

No hard instance, hard prior, learner, sample, event, recurrence, or generated-object invariant is assumed here.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the accepted universal constants \(b_*,d_*,N_*\), the choices in (C1) and an explicit fixed \(N_0\) are universal, valid theorem constants, and every \(N\ge N_0\) satisfies \(N\ge N_*\) and \(b_*L_N\ge16\). | Supplies the fixed source threshold and discharges the boundary \(N=N_0\). |
| `unit_002` | lemma | Under Assumption~\ref{assump:candidate-regime} and Lemma~\ref{lem:step-005-calibration}, if \(n<akL_N\), then the exact \(M=\max\{8,\lceil4n/k\rceil\}\) is an integer satisfying \(8\le M<b_*L_N\). | Controls both the floor-eight branch and the ceiling branch with strict inequalities. |
| `unit_003` | lemma | Under Assumption~\ref{assump:candidate-regime} and the fixed choices in Lemma~\ref{lem:step-005-calibration}, both candidate \(\delta\)-conjuncts remain true, while \(\varepsilon\le0.1\) and \(\delta<d_*/(M^2\log M)\). | Converts the exact candidate parameters to the source cap without deleting the \(1/(n\log(n+1))\) condition. |
| `unit_004` | proposition | Under Assumption~\ref{assump:candidate-regime}, Proposition~\ref{prop:step-002-wrapper}, and (C2), the chosen universal constants give the complete certificate (C3)--(C5), including \(N=N_0\), \(M=8\), and \((n,k)=(1,2)\). | Exports the exact hard-regime and source-parameter certificate required by downstream steps. |

Atomic step = no. Constant calibration, strict integer-budget control, and the logarithmic privacy-cap comparison are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: current-notation unrestricted ALMM threshold wrapper

- Source or name: Accepted Proposition~\ref{prop:step-002-wrapper} from `step_002`.
- Restated statement in current notation: There are universal \(b_*,d_*>0\) and \(N_*\in\mathbb Z_{\ge2}\) such that, for every \(N\ge N_*\), integer \(M\ge8\), \(0\le\varepsilon\le0.1\), and \(0\le\delta\le d_*/(M^2\log M)\), every unrestricted one-block learner satisfying the wrapper's replacement-DP and fixed-size PAC antecedents obeys \(M\ge b_*\log_2^*N\).
- Instantiated objects: The present \(N\), the exact budget \(M=m_{n,k}\), and the candidate \((\varepsilon,\delta)\).
- Required assumptions for the source-regime interface: \(N\ge N_*\), integer \(M\ge8\), \(\varepsilon\le0.1\), and \(\delta\le d_*/(M^2\log M)\).
- Assumption discharge in this step: Lemma~\ref{lem:step-005-calibration} gives \(N\ge N_*\); Lemma~\ref{lem:step-005-budget} gives the exact integer range and strict hard-regime inequality; Lemma~\ref{lem:step-005-privacy-cap} gives both source privacy bounds.
- Conclusion used: This step uses the accepted universal constants and exact admissibility interface. It does not invoke the learner/PAC implication, because constructing and certifying the later one-block learner belong to downstream steps.
- Non-output boundary: The dependency supplies no candidate calibration, choice of \(N_0\), hard prior, simulator, or privacy proof for a generated learner; none is inferred here.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Use |
| ------ | -------------------- | -------------------- | --- |
| Lemma~\ref{lem:step-005-calibration} | The constants are fixed and universal, and \(N\ge N_0\) implies \(N\ge N_*\) and \(b_*L_N\ge16\). | Accepted dependency constants and the basic tower/log-star definitions. | Supplies the numerical slack used in both branches of \(M\). |
| Lemma~\ref{lem:step-005-budget} | Under the contradiction hypothesis, the exact integer \(M\) satisfies \(8\le M<b_*L_N\). | Assumption~\ref{assump:candidate-regime}, (C2), and Lemma~\ref{lem:step-005-calibration}. | Supplies source sample-size membership and the strict hard regime. |
| Lemma~\ref{lem:step-005-privacy-cap} | The original two \(\delta\)-bounds hold separately and imply the strict source cap, while \(\varepsilon\le0.1\). | Assumption~\ref{assump:candidate-regime}, \(c_\delta\le d_*\), and \(M\ge8\). | Supplies source privacy membership while preserving the candidate convention. |
| Proposition~\ref{prop:step-005-certificate} | Equations (C3)--(C5) hold simultaneously under the contradiction hypothesis. | The preceding three lemmas and the accepted dependency interface. | Exact target-step export. |

## Local Derivation

### unit_001: lemma

**Lemma (Universal calibration and fixed log-star threshold).**
\(\label{lem:step-005-calibration}\)
Under the universal constants \(b_*,d_*>0\) and
\(N_*\in\mathbb Z_{\ge2}\) supplied by accepted
Proposition~\ref{prop:step-002-wrapper}, define

\[
q_*:=\left\lceil\frac{16}{b_*}\right\rceil,
\qquad
N_0:=\max\left\{N_*,\operatorname{Tow}_2(q_*)\right\},
\tag{1}
\]

and choose the constants in (C1). Then

\[
a,c_\delta,\varepsilon_0>0,qquad
\alpha_0,\beta_0\in(0,1/2),qquad
N_0\in\mathbb Z_{\ge2},
\]

all choices are universal and independent of \(k,N,n,\varepsilon,\delta\),
and every \(N\ge N_0\) satisfies

\[
N\ge N_*,
\qquad
b_*\log_2^*N\ge16.
\tag{2}
\]

In particular, (2) holds at the boundary \(N=N_0\).

**Proof / justification.**
Because \(b_*>0\), \(q_*\) is an integer at least one and

\[
q_*\ge\frac{16}{b_*}.
\tag{3}
\]

The tower convention gives

\[
\log_2^*\operatorname{Tow}_2(q)=q
\qquad(q\in\mathbb Z_{\ge1}).
\tag{4}
\]

Indeed, the claim is immediate for \(q=1\), since
\(\operatorname{Tow}_2(1)=2\). If it holds at \(q\), then the first
base-two logarithm of
\(\operatorname{Tow}_2(q+1)=2^{\operatorname{Tow}_2(q)}\) is
\(\operatorname{Tow}_2(q)\), so exactly one further iteration is needed.

More directly for the comparison needed here, if
\(N\ge\operatorname{Tow}_2(q_*)\), then for every
\(0\le j<q_*\), monotonicity of the iterated base-two logarithm on the
positive range traversed here gives

\[
\log_2^{(j)}N
\ge
\log_2^{(j)}\operatorname{Tow}_2(q_*)
>1.
\]

Hence \(L_N=\log_2^*N\ge q_*\). Combining this with (3) yields

\[
b_*L_N\ge b_*q_*\ge16.
\tag{5}
\]

Definition (1) also gives \(N\ge N_*\), including when \(N=N_0\).
The remaining assertions follow from the accepted positivity of
\(b_*,d_*\), the exact choices
\(a=b_*/16\), \(c_\delta=d_*\), \(\varepsilon_0=0.1\), and
\(2^{-13}\in(0,1/2)\). Since the dependency constants are universal,
so are \(q_*\), \(N_0\), and every constant in (C1). \(\square\)

### unit_002: lemma

**Lemma (Strict domination of the exact simulated budget).**
\(\label{lem:step-005-budget}\)
Under Assumption~\ref{assump:candidate-regime} and
Lemma~\ref{lem:step-005-calibration}, if

\[
n<akL_N
\qquad\text{with}\qquad a=\frac{b_*}{16},
\]

then the exact setting-defined budget

\[
M=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\}
\]

is an integer satisfying

\[
8\le M<b_*L_N.
\tag{6}
\]

This remains strict when the maximum is attained by the floor-eight
branch, when \(4n/k\) is an integer, and at \(N=N_0\).

**Proof / justification.**
The contradiction hypothesis and \(k>0\) give the strict inequality

\[
\frac{4n}{k}
<4aL_N
=\frac14 b_*L_N.
\tag{7}
\]

For every real \(x\), including integral \(x\),
\(\lceil x\rceil<x+1\). By (5), \(1\le b_*L_N/16\). Therefore

\[
\begin{aligned}
\left\lceil\frac{4n}{k}\right\rceil
&<\frac{4n}{k}+1\\
&<\frac14b_*L_N+1\\
&\le\frac{5}{16}b_*L_N\\
&<b_*L_N.
\end{aligned}
\tag{8}
\]

The fixed lower branch is also strictly below the source threshold:

\[
8<16\le b_*L_N.
\tag{9}
\]

Both entries of the maximum are strictly below \(b_*L_N\), so their
maximum is strictly below it. Since both entries are integers and the first
is 8, \(M\in\mathbb Z_{\ge8}\), proving (6).

At the requested smallest tuple \((n,k)=(1,2)\),

\[
\left\lceil\frac{4n}{k}\right\rceil=\lceil2\rceil=2,
\qquad M=8.
\]

Whenever the local contradiction hypothesis holds, (9) proves the strict
hard-regime inequality for this tuple as well. At \(N=N_0\), (5) still
holds, so no asymptotic or strictly-larger-domain exception is being used.
\(\square\)

### unit_003: lemma

**Lemma (Candidate-conjunction preservation and strict source privacy cap).**
\(\label{lem:step-005-privacy-cap}\)
Under Assumption~\ref{assump:candidate-regime}, with
\(\varepsilon_0=0.1\), \(0<c_\delta\le d_*\), and the exact
\(M=m_{n,k}\ge8\), one has simultaneously

\[
0<\varepsilon\le0.1,
\tag{10}
\]

\[
0<\delta\le\frac{1}{n\log(n+1)},
\tag{11}
\]

\[
0<\delta\le\frac{c_\delta}{M^2\log(M+1)}
<\frac{d_*}{M^2\log M}.
\tag{12}
\]

Thus both original \(\delta\)-conjuncts are retained, while the second
strictly implies the source cap.

**Proof / justification.**
Equation (10) is the candidate \(\varepsilon\)-condition with the fixed
choice \(\varepsilon_0=0.1\). Since an upper bound by a minimum is an upper
bound by each entry, the candidate \(\delta\)-condition gives (11) and the
first inequality in (12) separately. Their denominators are well-defined
and positive: \(n\ge1\) gives \(\log(n+1)\ge\log2>0\), while \(M\ge8\)
gives

\[
\log(M+1)>\log M\ge\log8>0.
\tag{13}
\]

The first inequality in (13) is strict because the natural logarithm is
strictly increasing and \(M+1>M\). Taking positive reciprocals reverses
that strict comparison. Using \(0<c_\delta\le d_*\),

\[
\frac{c_\delta}{M^2\log(M+1)}
<\frac{c_\delta}{M^2\log M}
\le\frac{d_*}{M^2\log M},
\tag{14}
\]

which proves the strict part of (12). Notice that (11) was not used to
derive (14) and has not been replaced by it.

At the exact floor boundary \(M=8\), (12) reads

\[
0<\delta\le\frac{c_\delta}{64\log9}
<\frac{d_*}{64\log8}.
\tag{15}
\]

At \((n,k)=(1,2)\), where Lemma~\ref{lem:step-005-budget} computes
\(M=8\), the full primitive conjunction is explicitly

\[
0<\delta\le\frac1{\log2}
\quad\text{and}\quad
0<\delta\le\frac{c_\delta}{64\log9},
\]

and (15) supplies the source cap. \(\square\)

### unit_004: proposition

**Proposition (Hard-regime and candidate-parameter certificate).**
\(\label{prop:step-005-certificate}\)
Under Assumption~\ref{assump:candidate-regime}, accepted
Proposition~\ref{prop:step-002-wrapper}, and the local contradiction
hypothesis \(n<ak\log_2^*N\), the universal choices (C1) and (1) imply
the complete certificate (C3)--(C5). In particular, the exact
\(M=m_{n,k}\) satisfies every scalar source hypothesis and also lies in the
strict hard regime

\[
M<b_*\log_2^*N.
\]

The conclusion includes \(N=N_0\), \(M=8\), and, when the contradiction
hypothesis is active, \((n,k)=(1,2)\).

**Proof / justification.**
Lemma~\ref{lem:step-005-calibration} fixes the universal theorem constants
once and for all and gives \(N\ge N_*\) and \(b_*L_N\ge16\), including at
\(N=N_0\). Lemma~\ref{lem:step-005-budget} applies the local contradiction
hypothesis to the exact ceiling-and-maximum definition of \(M\), proving
\(M\in\mathbb Z_{\ge8}\) and the strict inequality \(M<b_*L_N\).
Lemma~\ref{lem:step-005-privacy-cap} gives \(0<\varepsilon\le0.1\), keeps
both inequalities in (C5), and proves the stronger strict source-cap
membership \(0<\delta<d_*/(M^2\log M)\). These are exactly (C3)--(C5).
The explicit boundary computations (9) and (15), together with the
\((n,k)=(1,2)\) calculation after (9), prove the stated boundary clauses.
\(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-002-wrapper} supplies the universal
constants \(b_*,d_*,N_*\) and fixes the exact source interfaces that must be
reached. Lemma~\ref{lem:step-005-calibration} converts those constants into
the once-for-all theorem constants \(a,c_\delta,\varepsilon_0,\alpha_0,
\beta_0,N_0\) and ensures \(b_*L_N\ge16\) for every allowed \(N\), including
\(N=N_0\).

Under the exact negation \(n<akL_N\), Lemma~\ref{lem:step-005-budget} uses
the strict ceiling inequality and separately controls the floor-eight branch
to prove \(8\le M<b_*L_N\). Lemma~\ref{lem:step-005-privacy-cap} uses the
strict natural-log comparison \(\log(M+1)>\log M>0\) to prove source-cap
membership, while preserving both candidate \(\delta\)-conjuncts. The
smallest requested boundary \((n,k)=(1,2)\) gives \(M=8\) exactly and is
covered by the same inequalities.

Proposition~\ref{prop:step-005-certificate} composes these named results and
proves exactly the accepted `step_005` row. No expected sample size,
asymptotic replacement, dropped \(\delta\)-condition, generated learner
property, or stronger/weaker target is used.

## Explicit Rate Audit

- Exposed variables: \(k,N,n,\varepsilon,\delta\), \(L_N=\log_2^*N\), and the exact \(M=m_{n,k}=\max\{8,\lceil4n/k\rceil\}\).
- Hidden constants may depend on: Only the accepted universal one-block constants \(b_*,d_*,N_*\).
- Hidden constants may not depend on: \(k,N,n,\varepsilon,\delta\), any learner, target, distribution, hard instance, hard prior, sample, or simulator randomness.
- Fixed quantities: \(a=b_*/16\), \(c_\delta=d_*\), \(\varepsilon_0=0.1\), \(\alpha_0=\beta_0=2^{-13}\), \(q_*=\lceil16/b_*\rceil\), and \(N_0=\max\{N_*,\operatorname{Tow}_2(q_*)\}\), all fixed before candidate quantification.
- Probability mode: Deterministic scalar implication. No random event, expectation, confidence conversion, or conditioning occurs in this step.
- Horizon mode: Fixed-size and pointwise in the candidate integer \(n\) and exact simulated integer \(M\); no expected size, stopping time, or asymptotic-in-\(n\) substitution.
- Norm mode: No norm or risk is evaluated in this scalar step; the downstream population 0-1 risk mode of the accepted source wrapper is unchanged.
- Admissibility conditions and auxiliary tolerances: Exactly Assumption~\ref{assump:candidate-regime} plus the local contradiction hypothesis (C2). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: Equations (7)--(9) control the ceiling and floor eight with strict inequalities; equations (13)--(14) control the logarithm-denominator mismatch; no term is absorbed by prose.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The step converts the negation of the public R1 rate into the exact one-block hard regime and source privacy cap at the same \(N,M,\varepsilon,\delta\). It also fixes all public theorem constants.
- Baseline-reduction check: The exact budget \(M=m_{n,k}\), the \(M=8\) boundary, and both candidate \(\delta\)-conjuncts are preserved. The source cap is a proved consequence of the second conjunct, not a replacement for the primitive candidate convention. The unrestricted one-block baseline from `step_002` is neither weakened nor otherwise modified.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: \(a,c_\delta,\varepsilon_0,\alpha_0,\beta_0,N_0\). They are the minimal fixed constants needed by the final theorem and are defined entirely from accepted universal dependency constants.
- `Appendix-local`: \(L_N=\log_2^*N\), the exact setting-derived budget \(M=m_{n,k}\), and Proposition~\ref{prop:step-005-certificate}. They expose the compact interface consumed by downstream proof steps but need not enlarge the public theorem's notation.
- `Proof-local`: \(q_*=\lceil16/b_*\rceil\). It is a finite integer used only to witness a universal \(N_0\) and is eliminated from the exported certificate.
- Accepted dependency objects: \(b_*,d_*,N_*\) and Proposition~\ref{prop:step-002-wrapper} are inherited from the accepted dependency, not introduced freely. The present step uses only their certified universal-constant and source-admissibility interface.
- Constant provenance: \(a\) is directly defined from \(b_*\); \(c_\delta\) is chosen equal to \(d_*\); \(\varepsilon_0=0.1\) matches the accepted source interface; \(\alpha_0=\beta_0=2^{-13}\) are explicit fixed theorem constants; \(q_*\) and \(N_0\) are directly defined in (1) from \(b_*\), \(N_*\), and the setting's tower convention. No free bounded constant or candidate-dependent threshold is used.
- Primitive assumption provenance: Assumption~\ref{assump:candidate-regime} supplies only pre-run scalar conditions on \(k,N,n,\varepsilon,\delta\). Both of its \(\delta\)-conditions are recorded separately in (11)--(12).
- Local conditional provenance: \(n<akL_N\) is explicitly local to the contradiction certificate. The source hard regime, exact source-cap membership, and all boundary conclusions are derived in named local units rather than assumed.
- Generated-condition provenance: There is no generated learner, sample, event, stability condition, boundedness claim, recurrence, or invariant in this step.
- Boundary provenance: \(N=N_0\) is handled by (1)--(5), \(M=8\) by (9) and (15), \((n,k)=(1,2)\) by the exact computation following (9), and the strict logarithm comparison by (13)--(14).
- Diagnostic boundary: The optional `global_proof.md` was not read or used. No diagnostic statement is proof evidence, a cited result, an assumption source, or authority to change the target claim.
