# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Under one fixed candidate, its PAC guarantee, `assump:candidate-delta-budget`, and the local contradiction hypothesis \(n<c_{\rm low}M\), choose universal \(R_0,c_{\rm low}\), define \(H=\{i:r_i>R_0\}\), and prove
  \[
  w_L:=\sum_{i\notin H}\pi_i<\frac1{128},
  \qquad
  m_{n,i}<a_{\rm L}r_i,
  \]
  together with the exact ALMM delta hypothesis for every \(i\in H\).
- Depends on: `step_001`, `step_007`, `step_008`.
- Assumptions used: Primitive: `assump:candidate-delta-budget`; derived: the structural comparison \(s_i\le r_i+2\), the global additive VC certificate, and the universal ALMM constants and factor floor.
- Technical challenge: Simultaneously dominate the additive log-star shift, ceiling one, floor eight, and the all-low regime without strengthening the candidate condition.
- Intended proof tool or cited result: Direct universal-constant calibration and strict arithmetic using the accepted additive VC and ALMM factor interfaces.
- Output target: Hard-factor set, low-mass bound, and exact subcritical/delta eligibility certificate.
- Rate objective: Exact dependence on the fixed candidate \(n\), \(M,k,(r_i,s_i,\pi_i,m_{n,i})_i\), and \(\delta\), with every threshold and strict absorption explicit and no uniform-in-candidate upgrade.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: the class has finitely many factors and is the full Cartesian product. This assumption enters through the accepted additive VC dependency.
  - Assumption~\ref{assump:vc-one-factors}: every factor is nonconstant, has VC dimension one, and has finite \(d_i=\operatorname{LD}(C_i)\). This assumption enters through the accepted structural, VC, and ALMM dependencies.
  - Assumption~\ref{assump:candidate-delta-budget}: at the one fixed candidate \(n\in\mathbb N\),
    \[
    0<\delta\le
    \min\left\{
      \frac1{n\log(n+1)},
      \min_{1\le j\le k}
      \frac{c_\delta}{m_{n,j}^2\log(m_{n,j}+1)}
    \right\}.
    \tag{1}
    \]
    Here and below \(\log\) is the setting's natural logarithm.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-001-logstar} gives, with
    \[
    r_i:=\log_2^*d_i,
    \qquad
    s_i:=1+\log_2^*(d_i+1),
    \qquad
    M:=M_\oplus(C)=\sum_{j=1}^ks_j,
    \]
    the exact comparisons \(s_i\ge2\) and \(s_i\le r_i+2\) for every factor. The accepted dependency proof is `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`, and its accepted review has SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`.
  - Accepted Proposition~\ref{prop:step-007-additive-vc} gives the universal constant
    \[
    a_{\rm VC}:=\frac12
    \tag{2}
    \]
    and proves that the global PAC premise at the fixed candidate implies \(n\ge a_{\rm VC}k\). The accepted dependency proof has SHA-256 `7d50f8863b85cbe3e619e20837cf10751abe025ff6621b77c3bd369550eb2113`, and its accepted review has SHA-256 `716ad09f4b11505604512aade558813fac938524462328a400846e72ac1c0609`.
  - Accepted Proposition~\ref{prop:step-008-factor-floor} fixes a universal \(a_0>0\) from its checked expected-empirical ALMM obstruction and the universal constants
    \[
    a_{\rm L}:=\min\left\{1,\frac{a_0}{20}\right\}\in(0,1],
    \qquad
    c_\delta=\frac{\ln2}{200000}>0,
    \tag{3}
    \]
    and supplies the unrestricted expected-risk ALMM factor floor at every exact integer budget \(m\ge8\) satisfying \(0<\delta\le c_\delta/(m^2\log(m+1))\). The accepted dependency proof has SHA-256 `fd12b00bd08d505a0e99e1e0fd81894e2da77f97ccf6337127d886f79e51b049`, and its accepted review has SHA-256 `5f38e44448fb85efb27196868145966b7acb9ad6188bcf0c0a1cef250c44817c`.
- Local conditional hypotheses:
  - One fixed candidate \(n\in\mathbb N\) and one fixed unrestricted measurable learner \(A_n\) satisfying the setting's global \((1/16,1/16)\) PAC guarantee at that candidate. The learner may be randomized, improper, and computationally unbounded. Its privacy property is not used in the deterministic calibration below.
  - The temporary contradiction hypothesis \(n<c_{\rm low}M\), for the universal constant \(c_{\rm low}\) fixed before the class, learner, and candidate in (5) below.

No generated event, factor learner, hard prior, simulator, balance condition, or support condition is assumed. The three dependency proof/review pairs match the binding hashes and have review status `ACCEPTED`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, accepted Lemma~\ref{lem:step-001-logstar}, and accepted Proposition~\ref{prop:step-007-additive-vc}, if a fixed candidate learner has the global PAC guarantee and \(n<c_{\rm low}M\), then the universal threshold \(R_0\) and set \(H=\{i:r_i>R_0\}\) satisfy \(w_L=\sum_{i\notin H}\pi_i<1/128\), and consequently \(H\ne\varnothing\). | Pays for every low factor, including \(r_i=R_0\), by the additive VC floor and handles the all-low branch. |
| `unit_002` | lemma | Under accepted Lemma~\ref{lem:step-001-logstar}, if \(n<c_{\rm low}M\) and \(i\in H\), then \(4n\pi_i<a_{\rm L}r_i/8\), \(\lceil4n\pi_i\rceil<a_{\rm L}r_i\), \(8<a_{\rm L}r_i\), and hence the exact setting budget satisfies \(m_{n,i}<a_{\rm L}r_i\). | Explicitly dominates the additive \(+2\), ceiling-one defect, floor eight, and every equality boundary. |
| `unit_003` | proposition | Under Assumption~\ref{assump:candidate-delta-budget}, accepted Proposition~\ref{prop:step-008-factor-floor}, and Lemma~\ref{lem:step-009-active-budget}, every \(i\in H\) satisfies \(m_{n,i}\ge8\), \(m_{n,i}<a_{\rm L}r_i\), and \(0<\delta\le c_\delta/[m_{n,i}^2\log(m_{n,i}+1)]\) at that same fixed candidate. | Supplies the exact numerical ALMM eligibility factor by factor, with equality at the delta cap allowed and no factor union bound. |

Atomic step = no. The low-factor mass estimate, the strict active-budget arithmetic, and the candidate-delta discharge are independent downstream interfaces.

## Cited Result Applications

No external paper result is invoked in this step. The ALMM source analysis is encapsulated in the accepted `step_008` dependency; this artifact uses only its reviewed current-notation interface.

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Conclusion used |
| ------ | ------------------------------------------- | ---------------------------------- | --------------- |
| Accepted Lemma~\ref{lem:step-001-logstar} | For every factor, \(r_i=\log_2^*d_i\), \(s_i=1+\log_2^*(d_i+1)\), \(s_i\ge2\), and \(s_i\le r_i+2\). | Assumption~\ref{assump:vc-one-factors}; discharged in the accepted `step_001` proof/review pair. | Makes \(M>0\), bounds each low factor's weight, and bounds the active factor's numerator \(s_i\). |
| Accepted Proposition~\ref{prop:step-007-additive-vc} | Every unrestricted learner satisfying the exact global \((1/16,1/16)\) PAC guarantee on \(n\in\mathbb N\) samples obeys \(n\ge a_{\rm VC}k\), with \(a_{\rm VC}=1/2\). | Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, plus the fixed candidate PAC premise; all are present here. No privacy premise is needed. | Converts the number of low factors into at most \(n/a_{\rm VC}\). |
| Accepted Proposition~\ref{prop:step-008-factor-floor} | For a universal checked-source constant \(a_0>0\), \(a_{\rm L}=\min\{1,a_0/20\}\in(0,1]\), and \(c_\delta=\ln2/200000\), a total unrestricted replacement-\((0.1,\delta)\)-DP factor learner on an exact integer budget \(m\ge8\), with measurable finite evaluations and \(0<\delta\le c_\delta/[m^2\log(m+1)]\), cannot have expected risk at most \(1/8\) on every realizable factor task when \(m<a_{\rm L}\log_2^*d_i\). Its strict witness lies in a fixed finite task universe. | The accepted `step_008` proof/review discharges the ALMM source, arbitrary improper outputs, all-input replacement privacy, finite witness, and natural-log delta translation. This step checks only the exact numerical hypotheses at \(m=m_{n,i}\); later steps construct the factor learner. | Fixes \(a_{\rm L},c_\delta\) before calibration and identifies the exact subcritical and delta inequalities that active factors must satisfy. |
| Lemma~\ref{lem:step-009-low-mass} | Under the fixed-candidate PAC and contradiction hypotheses, the constants in (4)-(5) give \(w_L<1/128\) and \(H\ne\varnothing\). | Accepted structural and additive VC results; proved in `unit_001`. | The low-complexity residual and all-low exclusion. |
| Lemma~\ref{lem:step-009-active-budget} | Under the same universal constants, \(n<c_{\rm low}M\) and \(i\in H\) imply \(m_{n,i}<a_{\rm L}r_i\), while \(m_{n,i}\ge8\) by definition. | Accepted log-star comparison and direct arithmetic; proved in `unit_002`. | The strict ALMM subcritical-budget hypothesis. |
| Proposition~\ref{prop:step-009-almm-eligibility} | At the fixed candidate satisfying Assumption~\ref{assump:candidate-delta-budget}, every active factor has the exact budget, strict subcriticality, and factorwise delta cap required by the accepted ALMM floor. | Assumption~\ref{assump:candidate-delta-budget} and Lemma~\ref{lem:step-009-active-budget}; proved in `unit_003`. | The complete hard-factor eligibility certificate exported downstream. |

## Local Derivation

### unit_001: lemma

**Lemma (Low-factor mass calibration).** \(\label{lem:step-009-low-mass}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, accepted Lemma~\ref{lem:step-001-logstar}, and accepted Proposition~\ref{prop:step-007-additive-vc}, fix a candidate \(n\in\mathbb N\) and a learner satisfying the global \((1/16,1/16)\) PAC guarantee. Let \(a_{\rm VC}=1/2\) and let \(0<a_{\rm L}\le1\) be the accepted ALMM constant. Define, before the class, learner, and candidate are chosen,
\[
R_0:=\left\lceil\frac{32}{a_{\rm L}}\right\rceil,
\tag{4}
\]
and
\[
c_{\rm low}:=\min\left\{
  \frac{a_{\rm VC}}{128(R_0+2)},
  \frac{a_{\rm L}}{64}
\right\}
=\min\left\{
  \frac1{256(R_0+2)},
  \frac{a_{\rm L}}{64}
\right\}>0.
\tag{5}
\]
Using the exact setting quantities
\[
\pi_i:=\omega_i=\frac{s_i}{M},
\qquad
H:=\{i\in\{1,\ldots,k\}:r_i>R_0\},
\qquad
w_L:=\sum_{i\notin H}\pi_i,
\tag{6}
\]
if \(n<c_{\rm low}M\), then
\[
w_L<\frac1{128}.
\tag{7}
\]
In particular, \(H\ne\varnothing\).

Proof / justification:
The accepted structural comparison gives \(s_i\le r_i+2\). For every \(i\notin H\), the strict definition of \(H\) gives \(r_i\le R_0\), including the boundary value \(r_i=R_0\). Therefore
\[
s_i\le r_i+2\le R_0+2.
\tag{8}
\]
The PAC premise and accepted Proposition~\ref{prop:step-007-additive-vc} give
\[
n\ge a_{\rm VC}k,
\qquad\text{hence}\qquad
k\le\frac{n}{a_{\rm VC}}.
\tag{9}
\]
Since every \(s_i\ge2\) in the accepted structural interface, \(M>0\). Summing (8), using (9), and only then using the strict contradiction hypothesis gives
\[
\begin{aligned}
w_L
&=\frac1M\sum_{i\notin H}s_i
\le\frac{(R_0+2)k}{M}\\
&\le\frac{R_0+2}{a_{\rm VC}}\frac nM
<\frac{R_0+2}{a_{\rm VC}}c_{\rm low}
\le\frac1{128}.
\end{aligned}
\tag{10}
\]
The penultimate inequality is strict because \(n<c_{\rm low}M\); thus (7) remains strict even if the first branch of the minimum in (5) is attained exactly.

Because \(\sum_{i=1}^k\pi_i=M/M=1\), an empty active set would give \(w_L=1\), contradicting (7). Hence \(H\ne\varnothing\). If every factor is active, the empty low-factor sum is instead \(w_L=0\), which satisfies (7). Factors with \(d_i=1\) have \(r_i=0\) and are included in the low set, as are all factors at the exact threshold \(r_i=R_0\); both are already paid for by (8)-(10). This also handles the all-low regime rather than assuming it away.

### unit_002: lemma

**Lemma (Strict active-factor budget calibration).** \(\label{lem:step-009-active-budget}\)

Statement:
Under accepted Lemma~\ref{lem:step-001-logstar}, let \(R_0,c_{\rm low},H\) be defined by (4)-(6), fix the same candidate \(n\), and assume \(n<c_{\rm low}M\). Then every \(i\in H\) satisfies
\[
4n\pi_i<\frac{a_{\rm L}r_i}{8},
\qquad
\left\lceil4n\pi_i\right\rceil<a_{\rm L}r_i,
\qquad
8<a_{\rm L}r_i,
\tag{11}
\]
and consequently the exact setting budget
\[
m_{n,i}:=\max\left\{8,\left\lceil4n\pi_i\right\rceil\right\}
\tag{12}
\]
obeys
\[
8\le m_{n,i}<a_{\rm L}r_i.
\tag{13}
\]

Proof / justification:
Fix \(i\in H\). Since \(r_i>R_0\), definition (4) gives
\[
a_{\rm L}r_i
>a_{\rm L}R_0
\ge32.
\tag{14}
\]
In particular,
\[
1<\frac{a_{\rm L}r_i}{32},
\qquad
8<\frac{a_{\rm L}r_i}{4}<a_{\rm L}r_i.
\tag{15}
\]
These strict inequalities include, and strengthen, the non-strict ceiling-one and floor-eight controls required by the sketch.

Because \(0<a_{\rm L}\le1\), (4) also gives \(R_0\ge32\). Thus \(r_i>R_0\ge32>2\), so
\[
r_i+2<2r_i.
\tag{16}
\]
Now use \(\pi_i=s_i/M\), the strict hypothesis \(n/M<c_{\rm low}\), the accepted comparison \(s_i\le r_i+2\), and the second branch of (5):
\[
\begin{aligned}
4n\pi_i
&=4\frac nM s_i
<4c_{\rm low}s_i\\
&\le4c_{\rm low}(r_i+2)
\le\frac{a_{\rm L}}{16}(r_i+2)
<\frac{a_{\rm L}r_i}{8}.
\end{aligned}
\tag{17}
\]
This displays the complete absorption of the additive \(+2\); none is hidden in asymptotic notation.

For every real \(x\), including an integer \(x\),
\[
\lceil x\rceil<x+1;
\tag{18}
\]
when \(x\) is an integer this simply reads \(x<x+1\). Applying (18), (17), and the first inequality in (15) yields
\[
\begin{aligned}
\left\lceil4n\pi_i\right\rceil
&<4n\pi_i+1\\
&<\frac{a_{\rm L}r_i}{8}
  +\frac{a_{\rm L}r_i}{32}
=\frac5{32}a_{\rm L}r_i
<a_{\rm L}r_i.
\end{aligned}
\tag{19}
\]
Equation (15) separately gives \(8<a_{\rm L}r_i\). Both entries in the maximum (12) are therefore strictly below \(a_{\rm L}r_i\), regardless of which entry is larger or whether they are equal. Taking their maximum proves the strict upper bound in (13); the lower bound \(m_{n,i}\ge8\) is exact from (12). Thus the floor, ceiling, and possible ceiling or maximum equality cases leave no loss of strictness.

### unit_003: proposition

**Proposition (Candidate-wise ALMM eligibility of every active factor).** \(\label{prop:step-009-almm-eligibility}\)

Statement:
Under Assumption~\ref{assump:candidate-delta-budget}, accepted Proposition~\ref{prop:step-008-factor-floor}, and Lemma~\ref{lem:step-009-active-budget}, fix the same one candidate \(n\) and define \(H\) by (6). Then, for every \(i\in H\),
\[
m_{n,i}\in\mathbb N,
\qquad
m_{n,i}\ge8,
\qquad
m_{n,i}<a_{\rm L}r_i,
\tag{20}
\]
and
\[
0<\delta\le
\frac{c_\delta}
{m_{n,i}^2\log(m_{n,i}+1)}.
\tag{21}
\]
Moreover, the other candidate-budget conjunct remains
\[
0<\delta\le\frac1{n\log(n+1)}.
\tag{22}
\]
Thus (20)-(21) are exactly the budget, strict subcriticality, and natural-log delta hypotheses needed to invoke the accepted ALMM factor-floor contrapositive at \(m=m_{n,i}\), once a downstream step supplies a total unrestricted replacement-\((0.1,\delta)\)-DP factor learner with measurable finite evaluations.

Proof / justification:
The budget definition (12) makes \(m_{n,i}\) an integer and gives \(m_{n,i}\ge8\). Lemma~\ref{lem:step-009-active-budget} gives the strict inequality \(m_{n,i}<a_{\rm L}r_i\) for each \(i\in H\), proving (20).

Assumption~\ref{assump:candidate-delta-budget} is the single fixed-candidate numerical statement (1). Since its right side is no larger than either displayed entry of the outer minimum, it directly gives (22). It is also no larger than
\[
\min_{1\le j\le k}
\frac{c_\delta}{m_{n,j}^2\log(m_{n,j}+1)},
\]
which in turn is no larger than the particular \(i\)-th entry. Therefore (21) holds for every \(i\in H\). The denominators are positive because \(m_{n,i}\ge8\), and strict positivity of \(\delta\) is part of (1).

Equality in (21) is permitted by the accepted ALMM interface, whose hypothesis is non-strict in \(\delta\); only the subcritical budget inequality in (20) is strict. This is a deterministic implication of one finite minimum. It does not union bound failure probabilities, construct simultaneous random events, or replace (1) by a stronger schedule. The first conjunct (22), although not consumed by the factor-floor proposition in this step, is retained unchanged for downstream candidate-wise uses. No factor learner is assumed or generated here; this proposition supplies precisely its numerical admissibility interface.

## Target-Step Assembly

The accepted `step_008` dependency fixes \(a_{\rm L},c_\delta\) universally, and the accepted `step_007` dependency fixes \(a_{\rm VC}=1/2\), all before the current class, learner, and candidate are considered. Definitions (4)-(5) therefore make \(R_0\) and \(c_{\rm low}\) universal constants with no class, candidate, privacy-parameter, or factor dependence.

At the one fixed candidate, accepted Proposition~\ref{prop:step-007-additive-vc} turns the assumed PAC guarantee into \(n\ge a_{\rm VC}k\). Lemma~\ref{lem:step-009-low-mass} combines that certificate with \(s_i\le r_i+2\) and the strict local hypothesis \(n<c_{\rm low}M\) to prove
\[
H=\{i:r_i>R_0\},
\qquad
w_L=\sum_{i\notin H}\pi_i<\frac1{128},
\qquad
H\ne\varnothing.
\tag{23}
\]
Lemma~\ref{lem:step-009-active-budget} then proves, for every active factor and at its exact setting-defined budget,
\[
m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}
<a_{\rm L}r_i.
\tag{24}
\]
Its derivation explicitly pays the additive \(+2\), ceiling one, and floor eight with strict slack.

Finally, Proposition~\ref{prop:step-009-almm-eligibility} applies Assumption~\ref{assump:candidate-delta-budget} at this same \(n\), not at a changed or asymptotic candidate, and proves
\[
0<\delta\le
\frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
\qquad(i\in H).
\tag{25}
\]
Equations (23)-(25) are exactly the hard-factor, low-mass, subcritical-budget, and delta-eligibility certificate in the binding sketch row. The argument is a finite deterministic calibration: it uses no factorwise probability event, no hidden factor union bound, and no uniform-in-\(n\) upgrade.

## Explicit Rate Audit

- Exposed variables: the one fixed candidate \(n\), factor count \(k\), \((d_i,r_i,s_i,\pi_i,m_{n,i})_{i=1}^k\), \(M=M_\oplus(C)\), and \(\delta\).
- Hidden constants may depend on: only the universal accepted constants \(a_{\rm VC}=1/2\), \(a_{\rm L}\), and the fixed numerical/logarithm conventions in the accepted ALMM interface. The constants \(R_0\) and \(c_{\rm low}\) are explicitly defined in (4)-(5).
- Hidden constants may not depend on: \(X,\Sigma,C,k,i,d_i,C_i,Q_i,|C_i|,|Q_i|,D,n,\varepsilon,\delta\), the learner, target, or distribution.
- Fixed quantities: the PAC accuracy and failure levels \(1/16\), weight threshold \(1/128\), budget floor \(8\), routing multiplier \(4\), and the natural/base-two logarithm conventions.
- Probability mode: the input PAC guarantee is high probability over the iid sample and learner randomness, but it is consumed only through the accepted deterministic consequence \(n\ge a_{\rm VC}k\). Every conclusion of this step is deterministic. No probability conversion or union bound is performed here.
- Horizon mode: exactly one fixed candidate \(n\). Assumption~\ref{assump:candidate-delta-budget} is checked at that candidate's exact budgets \((m_{n,i})_i\); no simultaneous, all-time, asymptotic, or uniform-in-candidate statement is made.
- Norm mode: the dependency PAC premise uses exact distributional binary \(0\)-\(1\) risk. This calibration itself is numerical and introduces no new norm or surrogate risk.
- Admissibility conditions and auxiliary tolerances: Assumptions~\ref{assump:canonical-product}, \ref{assump:vc-one-factors}, and \ref{assump:candidate-delta-budget}; the fixed-candidate PAC premise; and the local contradiction hypothesis \(n<c_{\rm low}M\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: (10) pays low mass; (14)-(17) pay the threshold and additive \(+2\); (18)-(19) pay the ceiling one; (15) pays the floor eight; and (20)-(21) preserve strict subcriticality and the non-strict delta cap. No term is dropped by prose.
- Probability conversion: none in this step. The exact PAC-to-additive-VC conversion belongs to accepted Proposition~\ref{prop:step-007-additive-vc} and is consumed only through its reviewed output.
- Contribution to any Rate Specialization Bridge: exports universal \(R_0,c_{\rm low}\), low residual \(w_L<1/128\), and exact per-factor ALMM numerical eligibility at \(m_{n,i}\) for downstream prior, simulation, tensorization, and PAC-contradiction steps.
- Baseline-reduction check: when \(k=1\), \(\pi_1=1\). If \(r_1\le R_0\), then \(H=\varnothing\) and \(w_L=1\), which Lemma~\ref{lem:step-009-low-mass} shows is incompatible with the PAC and contradiction premises; the additive VC floor has already closed that branch. Otherwise \(H=\{1\}\), and (20)-(21) give the exact unrestricted one-factor ALMM numerical interface. No finite-support, proper-output, expectation-only final theorem, or weaker one-factor surrogate is introduced.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(r_i=\log_2^*d_i\), \(s_i=1+\log_2^*(d_i+1)\), and \(M=M_\oplus(C)\) are exact setting/sketch quantities. The alias \(\pi_i:=\omega_i=s_i/M\) translates the accepted sketch notation back to the setting's \(\omega_i\); it is not a new weight. The exact budget \(m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}\) is setting-defined.
- `Public-facing`: \(R_0\) and \(c_{\rm low}\) in (4)-(5), the active set \(H\), low mass \(w_L\), and conclusions (23)-(25) form the minimal downstream interface. Their constants are fixed entirely from accepted universal constants, not from a class, learner, candidate, or generated object.
- `Proof-local`: inequalities (14)-(19), including the ceiling-one and floor-eight margins, are deterministic bookkeeping used to prove (24); they introduce no helper parameter or exported assumption.
- Constant provenance: \(a_{\rm VC}=1/2\) is inherited from accepted Proposition~\ref{prop:step-007-additive-vc}; \(a_{\rm L}=\min\{1,a_0/20\}\) and \(c_\delta=\ln2/200000\) are inherited from accepted Proposition~\ref{prop:step-008-factor-floor}, where \(a_0\) is the universal constant produced by the checked expected-empirical ALMM obstruction; \(R_0\) and \(c_{\rm low}\) are explicit functions of those constants. The margins \(32,64,128\) are justified line by line in (10), (14)-(19), rather than treated as free constants.
- Assumption provenance: the log-star comparison, additive VC floor, and ALMM interface are accepted dependency conclusions. The PAC guarantee and \(n<c_{\rm low}M\) are local conditional hypotheses at one candidate; the latter is not exported as an assumption of the final theorem but is the contradiction branch to be discharged downstream. The set \(H\), low mass \(w_L\), and factor eligibility conditions are generated deterministic objects proved in this step. No realized event or learner property is promoted to a primitive condition.
- Candidate scope: every occurrence of \(n,\pi_i,m_{n,i}\), and the delta cap refers to the same fixed candidate. Universal constants do not create a uniform-in-candidate event or delta schedule. The first conjunct \(\delta\le1/[n\log(n+1)]\) is retained even though this step's factor-floor check consumes the second conjunct.
- Factor accumulation: the low mass is one finite weighted sum, and the factor delta conclusion is a deterministic consequence of a finite minimum. Neither operation is a probabilistic union bound, and no independence among factors is asserted.
- Boundary cases: \(r_i=0\), \(r_i=R_0\), all factors low, all factors active, one active factor, \(k=1\), \(n=1\), integer \(4n\pi_i\), equality between the two entries of the maximum, and equality in the ALMM delta cap are all covered explicitly above.
- Diagnostic boundary: no `global_proof.md`, `global_proof_review.md`, `proof_history`, same-step prior proof, or same-step review was read or used.
