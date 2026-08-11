# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_014`
- Unit attempt: 2

## Target Step Claim

- Intended claim: Use the exact rational gap to contradict the PAC expectation ceiling under \(n<c_{\rm low}M\), extract a deterministic full-product target and allowed arbitrary-support mixture \(D\) with masses \(\pi_i\) for which
  \[
  \Pr\left[R_D>\frac1{16}\right]>\frac1{16},
  \]
  and conclude \(n\ge c_{\rm low}M\).
- Depends on: `step_007`, `step_009`, `step_013`.
- Assumptions used: Primitive: `assump:candidate-delta-budget`; derived: the additive VC/PAC conversion certificate, hard-factor and low-mass calibration, and common product-prior global expected-risk certificate.
- Technical challenge: Convert a strict averaged expectation lower bound to the exact failure event without changing the candidate, metric, learner, algorithm, target class, or probability mode.
- Intended proof tool or cited result: Bounded-loss conversion, exact rational arithmetic, finite averaging, and deterministic witness extraction.
- Output target: Candidate-wise unrestricted lower theorem.
- Rate objective: Preserve the exact fixed candidate \(n\), \(M=M_{\oplus}(C)\), budgets \((m_{n,i})_i\), and candidate-wise \(\delta\)-admissibility; convert impossibility in expected exact global risk to the strict PAC failure event.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:candidate-delta-budget}: at the one fixed candidate \(n\in\mathbb N\),
    \[
    0<\delta\le
    \min\left\{
      \frac1{n\log(n+1)},
      \min_{1\le i\le k}
      \frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
    \right\}.
    \tag{1}
    \]
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_007` proof/review pair, SHA-256 `7d50f8863b85cbe3e619e20837cf10751abe025ff6621b77c3bd369550eb2113` / `716ad09f4b11505604512aade558813fac938524462328a400846e72ac1c0609`, is the audit provenance for accepted Lemma~\ref{lem:step-007-pac-conversion}: every measurable \([0,1]\)-valued risk satisfying the exact \((1/16,1/16)\) PAC event has expectation at most \(31/256\), with a strict contrapositive. Accepted Proposition~\ref{prop:step-007-additive-vc} is the additive VC certificate consumed by accepted Lemma~\ref{lem:step-009-low-mass}.
  - The accepted `step_009` proof/review pair, SHA-256 `9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7` / `009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2`, is the audit provenance for accepted Lemma~\ref{lem:step-009-low-mass} and Proposition~\ref{prop:step-009-almm-eligibility}. The lemma fixes the universal constant \(c_{\rm low}>0\) and, under the same fixed-candidate PAC premise and local hypothesis \(n<c_{\rm low}M\), supplies
    \[
    H\ne\varnothing,
    \qquad
    w_L:=\sum_{i\notin H}\pi_i<\frac1{128},
    \qquad
    \pi_i:=\omega_i=\frac{s_i}{M},
    \tag{2}
    \]
    while the proposition supplies the exact active-factor budget and factorwise delta conditions and retains the first conjunct in (1).
  - The accepted `step_013` proof/review pair, SHA-256 `fefa0cee0010dfe7b61260f76921fc136af637ef7b1b0f583da10fce3d4ed7c4` / `69086ee1a4d2f3f9cfde241c9b81a6d10e8ab23c7f313d6d846e2865f555d4b4`, is the audit provenance for accepted Lemma~\ref{lem:step-013-exact-risk-sum}, Proposition~\ref{prop:step-013-tensorization}, and Proposition~\ref{prop:step-013-one-factor-baseline}. Accepted Lemma~\ref{lem:step-012-ideal-experiment}, already restated and consumed by these results, supplies one finite product-task experiment: every active prior and deterministic low-factor point mass is fixed before the learner, every task is sampled before the data and learner randomness, every atom gives a full-product target and legal block-mixture measure, and the sample is iid from that target-labeled mixture. Accepted Lemma~\ref{lem:step-013-exact-risk-sum} makes the common exact global risk \(R^\star\) the pointwise and expected finite weighted sum of factor risks. Accepted Proposition~\ref{prop:step-013-tensorization} then supplies
    \[
    \mathbb E_\star R^\star
    >(1-w_L)\left(\frac18-\eta_0\right),
    \qquad
    \eta_0=e^7\left(\frac29\right)^9<\frac3{2048}.
    \tag{3}
    \]
    The finite product support consists of positive-mass atoms, and finite conditioning over those atoms gives the taskwise expectation identity used below. Accepted Proposition~\ref{prop:step-013-one-factor-baseline} additionally supplies \(\mathbb E_\star R^\star>1/8\) with zero overflow when \(k=1\) on the active branch.
- Local conditional hypotheses:
  - Fix one candidate \(n\in\mathbb N\) satisfying (1) and one unrestricted measurable replacement-\((\varepsilon,\delta)\)-DP learner \(A_n\) in the setting. The learner may be randomized, improper, joint across factors, and computationally unbounded.
  - For the forward candidate-wise lower implication, assume that this same \(A_n\) satisfies the universal \((1/16,1/16)\) PAC guarantee for every deterministic \(c\in C\) and every allowed probability measure \(D\).
  - The hypothesis \(n<c_{\rm low}M\) is local to the contradiction branch and is discharged in Proposition~\ref{prop:step-014-candidate-closure}.

No product-output, properness, efficiency, balance, finite-support theorem assumption, quotient-output restriction, generated event, or new privacy condition is used. All three dependency proof/review pairs match the binding hashes and have review status `ACCEPTED`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the setting's exact PAC convention, accepted Lemma~\ref{lem:step-007-pac-conversion}, accepted Lemma~\ref{lem:step-012-ideal-experiment}, and accepted Lemma~\ref{lem:step-013-exact-risk-sum}, if the same fixed learner has \(\Pr[R_D\le1/16]\ge15/16\) for every deterministic task in the finite common experiment, then every task risk has expectation at most \(31/256\), and the finite product-prior average also has expectation at most \(31/256\); moreover, expectation strictly above \(31/256\) forces failure probability strictly above \(1/16\). | Gives the exact bounded-loss ceiling, handles equality at the risk threshold, and transfers it through only a finite average. |
| `unit_002` | lemma | Under accepted Lemma~\ref{lem:step-009-low-mass} and accepted Proposition~\ref{prop:step-013-tensorization}, at the same candidate on \(n<c_{\rm low}M\), the bounds \(w_L<1/128\) and \(\eta_0<3/2048\) imply \(\mathbb E_\star R^\star>32131/262144>31/256\). | Supplies the strict numerical separation, with every integer numerator and denominator explicit. |
| `unit_003` | proposition | Under accepted Lemma~\ref{lem:step-012-ideal-experiment}, accepted Lemma~\ref{lem:step-013-exact-risk-sum}, and Lemma~\ref{lem:step-014-finite-prior-ceiling}, if the finite common experiment's averaged expected global risk is strictly above \(31/256\), then one deterministic positive-mass prior atom gives a full-product target \(c\in C\) and an allowed block-mixture \(D\) with \(D(X_i)=\pi_i\) such that \(\Pr[R_D>1/16]>1/16\). | Eliminates the prior and expectation proof devices while preserving the exact target, distribution, learner, risk, and strict event. |
| `unit_004` | proposition | Under Assumption~\ref{assump:candidate-delta-budget}, accepted Lemma~\ref{lem:step-007-pac-conversion}, accepted Lemma~\ref{lem:step-009-low-mass}, accepted Proposition~\ref{prop:step-009-almm-eligibility}, accepted Lemma~\ref{lem:step-012-ideal-experiment}, accepted Lemma~\ref{lem:step-013-exact-risk-sum}, accepted Proposition~\ref{prop:step-013-tensorization}, and the preceding named local results, every unrestricted measurable replacement-\((\varepsilon,\delta)\)-DP learner satisfying the universal PAC guarantee at the fixed candidate obeys \(n\ge c_{\rm low}M\); the local branch \(n<c_{\rm low}M\) is contradicted by the deterministic witness of Proposition~\ref{prop:step-014-deterministic-atom}. | Proves the exact candidate-wise lower theorem and discharges the temporary contradiction hypothesis. |

Atomic step = no. The taskwise PAC ceiling, exact rational comparison, finite-atom extraction, and fixed-candidate logical closure are independent audit obligations.

## Cited Result Applications

No external paper result or unchecked standard theorem is used. Every nonlocal mathematical input is a named accepted interface already carried by the hash-matched dependency chain.

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Conclusion used |
| ------ | ------------------------------------------- | ---------------------------------- | --------------- |
| Accepted Lemma~\ref{lem:step-007-pac-conversion} | If a measurable random variable \(L\in[0,1]\) satisfies \(\Pr[L\le1/16]\ge15/16\), then \(\mathbb EL\le31/256\); strictly larger expectation implies \(\Pr[L>1/16]>1/16\). | Measurability and \([0,1]\)-boundedness hold for the setting's binary risk. The universal PAC premise supplies the displayed event for each deterministic task. | The taskwise ceiling and strict event conversion in Lemma~\ref{lem:step-014-finite-prior-ceiling}. |
| Accepted Lemma~\ref{lem:step-009-low-mass} | With the universal constants in its statement fixed, the same fixed candidate PAC premise and \(n<c_{\rm low}M\) imply (2), including strict \(w_L<1/128\) and \(H\ne\varnothing\). | The accepted proof discharges its structural and additive VC inputs; the current step supplies the same candidate, PAC premise, and contradiction hypothesis. | The low-mass factor in Lemma~\ref{lem:step-014-rational-gap} and the nonvacuous active branch. |
| Accepted Proposition~\ref{prop:step-009-almm-eligibility} | At that same candidate every active budget is an integer at least eight, is strictly subcritical, and satisfies its non-strict ALMM delta cap; the first candidate-delta conjunct also remains in force. | Assumption~\ref{assump:candidate-delta-budget} is exactly (1), including equality at either cap. | Verifies that the accepted lower chain producing (3) is invoked at the admissible candidate rather than at a changed candidate or schedule. |
| Accepted Lemma~\ref{lem:step-012-ideal-experiment} | The active finite priors and deterministic low-factor point masses form one finite product-task law fixed before every global learner. All tasks are sampled before data and learner randomness; each atom determines a measurable full-product target \(c^\star\in C\), a legal probability measure \(D^\star\) with \(D^\star(X_i)=\pi_i\), an iid sample \(S^\star\sim(D^\star_{c^\star})^n\), and one learner output. | Its accepted inputs fix the same active priors, low-factor tasks, weights, candidate, and learner order used here. Finite support of every factor task law makes the product law finite, and its support contains only positive-mass atoms. | The common experiment, full-product targets, legal mixtures, iid samples, and prior-before-data/learner order used in (4)-(8). |
| Accepted Lemma~\ref{lem:step-013-exact-risk-sum} | In that common experiment, global risk equals \(\sum_{i=1}^k\pi_iR_i^\star\) pointwise and in expectation, without factor-output independence. | Assumption~\ref{assump:canonical-product} and accepted Lemma~\ref{lem:step-012-ideal-experiment} supply the disjoint full-product target and legal block mixture. | Identifies \(R^\star\) as exact global risk before finite conditioning and tensorization. |
| Accepted Proposition~\ref{prop:step-013-tensorization} | In one finite product-prior experiment, with all tasks sampled before the same global learner call, exact global risk satisfies (3), without output independence or a union bound. | Accepted Lemma~\ref{lem:step-009-low-mass}, accepted Lemma~\ref{lem:step-013-common-marginal-floors}, and accepted Lemma~\ref{lem:step-013-exact-risk-sum} supply its complete named dependency basis. The current step keeps the same \(A_n\), \(n\), risk, and experiment. | The strict expected-risk input to Lemma~\ref{lem:step-014-rational-gap}. |
| Accepted Proposition~\ref{prop:step-013-one-factor-baseline} | If \(k=1\) on the active contradiction branch, then overflow is identically zero and \(\mathbb E_\star R^\star>1/8\). | The accepted proof uses \(\pi_1=1\), \(m_{n,1}\ge4n\), and exact identity coupling. | The unreduced \(k=1\) lower baseline in Proposition~\ref{prop:step-014-candidate-closure}. |
| Lemma~\ref{lem:step-014-finite-prior-ceiling} | Universal taskwise PAC implies both the taskwise and finite-prior expectation ceiling \(31/256\), and its strict contrapositive gives the exact failure event. | Proved in `unit_001` using bounded exact binary risk and the finite accepted prior. | Upper side of the contradiction and event conversion after atom extraction. |
| Lemma~\ref{lem:step-014-rational-gap} | On the same local branch, the accepted lower floor is strictly above \(32131/262144\), which is strictly above \(31/256\). | Proved in `unit_002` from (2)-(3) by exact integer arithmetic. | Lower side of the contradiction and strict input to deterministic extraction. |
| Proposition~\ref{prop:step-014-deterministic-atom} | A finite prior average strictly above \(31/256\) has a deterministic positive-mass atom with expectation above \(31/256\), hence strict PAC failure; its target and mixture are the exact accepted full-product objects. | Proved in `unit_003`; finite support and exact target/mixture assembly come from accepted Lemma~\ref{lem:step-012-ideal-experiment}, and exact common risk comes from accepted Lemma~\ref{lem:step-013-exact-risk-sum}. | Explicit contradiction witness and removal of the task prior. |

## Local Derivation

Use the accepted common product-prior notation only locally. Accepted Lemma~\ref{lem:step-012-ideal-experiment} fixes active finite priors and deterministic low-factor point masses before every global learner, samples every task before the data and learner randomness, and forms their finite product law \(\Lambda\). Let
\[
\mathcal T:=\operatorname{supp}(\Lambda)
\tag{4}
\]
be its finite set of positive-mass task atoms. For
\(\tau=((c_i^\tau,D_i^\tau))_{i=1}^k\in\mathcal T\), accepted Lemma~\ref{lem:step-012-ideal-experiment} supplies the unique full-product target \(c^\tau\in C\) with \(c^\tau|_{X_i}=c_i^\tau\) and the probability measure
\[
D^\tau(B):=\sum_{i=1}^k
\pi_iD_i^\tau(B\cap X_i),
\qquad B\in\Sigma.
\tag{5}
\]
Every \(D_i^\tau\) is supported on the measurable block \(X_i\); the finite nonnegative mixture in (5) is therefore a legal probability measure on \((X,\Sigma)\), and
\[
D^\tau(X_i)=\pi_i=\omega_i,
\qquad
\sum_{i=1}^k\pi_i=1.
\tag{6}
\]
For the fixed learner and candidate, let
\[
L_\tau
:=R_{D^\tau}(h_{A_n(S_\tau)},c^\tau),
\qquad
S_\tau\sim(D^\tau_{c^\tau})^n,
\tag{7}
\]
where the randomness in \(L_\tau\) is exactly the iid sample and the same learner kernel \(A_n\). By the setting, \(L_\tau\) is measurable and lies in \([0,1]\). Accepted Lemma~\ref{lem:step-013-exact-risk-sum} identifies \(R^\star\), pointwise and in expectation, as the finite \(\pi_i\)-weighted sum of the corresponding factor risks. Because \(\mathcal T\) is finite, every \(\tau\in\mathcal T\) has positive \(\Lambda\)-mass, and the target, mixture, iid sample, and learner output above are exactly those of the common experiment, finite conditioning gives
\[
\mathbb E_\star R^\star
=\sum_{\tau\in\mathcal T}
\Lambda(\tau)\,\mathbb E L_\tau.
\tag{8}
\]

### unit_001: lemma

**Lemma (Exact PAC ceiling under finite task averaging).** \(\label{lem:step-014-finite-prior-ceiling}\)

Statement:
Under the setting's exact measurable binary-risk convention, accepted Lemma~\ref{lem:step-007-pac-conversion}, accepted Lemma~\ref{lem:step-012-ideal-experiment}, accepted Lemma~\ref{lem:step-013-exact-risk-sum}, and the finite conditioning identity (8), fix the same candidate \(n\) and learner \(A_n\). If for every deterministic \(\tau\in\mathcal T\),
\[
\Pr[L_\tau\le1/16]\ge\frac{15}{16},
\tag{9}
\]
then
\[
\mathbb E L_\tau\le\frac{31}{256}
\quad(\tau\in\mathcal T),
\qquad
\mathbb E_\star R^\star\le\frac{31}{256}.
\tag{10}
\]
For every fixed atom, the strict contrapositive implication
\[
\mathbb E L_\tau>\frac{31}{256}
\quad\Longrightarrow\quad
\Pr[L_\tau>1/16]>\frac1{16}
\tag{11}
\]
also holds.

Proof / justification:
Fix \(\tau\) and put
\[
p_\tau:=\Pr[L_\tau>1/16].
\tag{12}
\]
The event in (12) is exactly the complement of the good event in (9); in particular, loss equal to \(1/16\) remains on the good side. Since \(0\le L_\tau\le1\),
\[
\begin{aligned}
\mathbb E L_\tau
&=\mathbb E[L_\tau\mathbf1\{L_\tau\le1/16\}]
  +\mathbb E[L_\tau\mathbf1\{L_\tau>1/16\}]\\
&\le\frac1{16}(1-p_\tau)+p_\tau
=\frac1{16}+\frac{15}{16}p_\tau.
\end{aligned}
\tag{13}
\]
Under (9), \(p_\tau\le1/16\), and hence
\[
\mathbb E L_\tau
\le\frac1{16}+\frac{15}{16}\frac1{16}
=\frac{16}{256}+\frac{15}{256}
=\frac{31}{256}.
\tag{14}
\]
This is also the direct current-notation instantiation of accepted Lemma~\ref{lem:step-007-pac-conversion}. Taking its strict contrapositive proves (11). Notice that equality \(p_\tau=1/16\) yields only the non-strict ceiling, exactly as required.

Now average (14) using (8). Because \(\mathcal T\) is finite and \(\Lambda\) is a probability law,
\[
\mathbb E_\star R^\star
\le\sum_{\tau\in\mathcal T}
\Lambda(\tau)\frac{31}{256}
=\frac{31}{256}.
\tag{15}
\]
There is no infinite interchange, measurable-selection issue, or change from taskwise sample/learner probability to the common prior average.

### unit_002: lemma

**Lemma (Strict rational separation of the tensorized floor).** \(\label{lem:step-014-rational-gap}\)

Statement:
Under accepted Lemma~\ref{lem:step-009-low-mass} and accepted Proposition~\ref{prop:step-013-tensorization}, fix the same candidate, learner, common experiment, and local branch \(n<c_{\rm low}M\). If
\[
w_L<\frac1{128},
\qquad
\eta_0<\frac3{2048},
\tag{16}
\]
then
\[
\mathbb E_\star R^\star
>\frac{32131}{262144}
>\frac{31}{256}.
\tag{17}
\]

Proof / justification:
The two strict bounds in (16) give
\[
1-w_L>\frac{127}{128}>0
\tag{18}
\]
and
\[
\frac18-\eta_0
>\frac18-\frac3{2048}
=\frac{256-3}{2048}
=\frac{253}{2048}>0.
\tag{19}
\]
Accepted Proposition~\ref{prop:step-013-tensorization}, followed by (18)-(19), therefore yields
\[
\begin{aligned}
\mathbb E_\star R^\star
&>(1-w_L)\left(\frac18-\eta_0\right)\\
&>\frac{127}{128}\frac{253}{2048}
=\frac{127\cdot253}{128\cdot2048}
=\frac{32131}{262144}.
\end{aligned}
\tag{20}
\]
The last comparison in (17) is exact integer arithmetic:
\[
\frac{31}{256}
=\frac{31\cdot1024}{262144}
=\frac{31744}{262144},
\qquad
32131-31744=387>0.
\tag{21}
\]
Thus
\[
\frac{32131}{262144}-\frac{31}{256}
=\frac{387}{262144}>0.
\tag{22}
\]
All inequalities needed for the separation are strict; no decimal approximation or asymptotic absorption is used.

### unit_003: proposition

**Proposition (Deterministic full-product PAC-failure atom).** \(\label{prop:step-014-deterministic-atom}\)

Statement:
Under accepted Lemma~\ref{lem:step-012-ideal-experiment}, accepted Lemma~\ref{lem:step-013-exact-risk-sum}, the finite conditioning identity (8), and Lemma~\ref{lem:step-014-finite-prior-ceiling}, if
\[
\mathbb E_\star R^\star>\frac{31}{256},
\tag{23}
\]
then there is an atom \(\tau_\star\in\mathcal T\) of positive \(\Lambda\)-mass such that its deterministic full-product target \(c^{\tau_\star}\in C\) and the allowed probability measure
\[
D^{\tau_\star}(B)
=\sum_{i=1}^k\pi_i
D_i^{\tau_\star}(B\cap X_i)
\tag{24}
\]
satisfy
\[
D^{\tau_\star}(X_i)=\pi_i=\omega_i
\quad(1\le i\le k)
\tag{25}
\]
and
\[
\Pr_{S\sim(D^{\tau_\star}_{c^{\tau_\star}})^n,A_n}
\left[
R_{D^{\tau_\star}}(h_{A_n(S)},c^{\tau_\star})
>\frac1{16}
\right]
>\frac1{16}.
\tag{26}
\]

Proof / justification:
If every atom obeyed \(\mathbb E L_\tau\le31/256\), the finite identity (8) would imply \(\mathbb E_\star R^\star\le31/256\), contradicting (23). Hence some positive-mass \(\tau_\star\in\mathcal T\) has
\[
\mathbb E L_{\tau_\star}>\frac{31}{256}.
\tag{27}
\]
The strict implication (11) in Lemma~\ref{lem:step-014-finite-prior-ceiling} now gives (26), with exactly the same candidate, sample law, learner kernel, and distributional binary risk.

Accepted Lemma~\ref{lem:step-012-ideal-experiment} constructs \(c^{\tau_\star}\) by full Cartesian target assembly, so it lies in \(C\), not merely in a factorwise relaxation. The same lemma and equations (5)-(6) prove that (24) is a probability measure on \((X,\Sigma)\) with the required block masses. Accepted Lemma~\ref{lem:step-013-exact-risk-sum} confirms that the selected loss is the exact global risk of this target and mixture. It is an allowed arbitrary-support block mixture: the formula is valid on the selected factor measures' actual supports and imposes no product-distribution, public-knowledge, quotient-output, or properness condition. The hard construction happens to permit finite-support atoms; that is witness provenance, not a restriction on the theorem's distribution family or learner quantifier.

### unit_004: proposition

**Proposition (Fixed-candidate unrestricted lower closure).** \(\label{prop:step-014-candidate-closure}\)

Statement:
Under Assumption~\ref{assump:candidate-delta-budget}, accepted Lemma~\ref{lem:step-007-pac-conversion}, accepted Lemma~\ref{lem:step-009-low-mass} and Proposition~\ref{prop:step-009-almm-eligibility}, accepted Proposition~\ref{prop:step-013-tensorization}, Lemmas~\ref{lem:step-014-finite-prior-ceiling} and \ref{lem:step-014-rational-gap}, and Proposition~\ref{prop:step-014-deterministic-atom}, fix one candidate \(n\in\mathbb N\) satisfying (1). If an unrestricted measurable replacement-\((\varepsilon,\delta)\)-DP learner \(A_n\) satisfies the universal \((1/16,1/16)\) PAC guarantee at this candidate, then
\[
n\ge c_{\rm low}M_{\oplus}(C).
\tag{28}
\]
On the temporary branch \(n<c_{\rm low}M_{\oplus}(C)\), the contradiction is witnessed by the deterministic target and mixture in (24)-(26).

Proof / justification:
Write \(M=M_{\oplus}(C)\), and suppose for contradiction that the same candidate satisfies
\[
n<c_{\rm low}M.
\tag{29}
\]
The learner's universal PAC guarantee and (29) discharge the local premises of accepted Lemma~\ref{lem:step-009-low-mass}; Assumption~\ref{assump:candidate-delta-budget} discharges the exact numerical premises of accepted Proposition~\ref{prop:step-009-almm-eligibility}. These are statements at this \(n\) and its exact \((m_{n,i})_i\). In particular, the first cap \(\delta\le1/[n\log(n+1)]\) and every factor-budget cap remain in force, and equality in a delta cap is allowed.

The accepted lower chain culminating in Proposition~\ref{prop:step-013-tensorization} therefore applies to this same \(A_n\), without changing its output space or restricting it to proper or factorwise hypotheses. Lemma~\ref{lem:step-014-rational-gap} gives
\[
\mathbb E_\star R^\star
>\frac{32131}{262144}
>\frac{31}{256}.
\tag{30}
\]
On the other hand, the assumed universal PAC guarantee applies to every deterministic atom \((c^\tau,D^\tau)\) of this very experiment. Lemma~\ref{lem:step-014-finite-prior-ceiling} gives
\[
\mathbb E_\star R^\star\le\frac{31}{256},
\tag{31}
\]
contradicting (30). Equivalently, Proposition~\ref{prop:step-014-deterministic-atom} extracts from (30) a specific atom satisfying (26), directly contradicting the universal guarantee. Thus (29) is impossible. Since \(c_{\rm low}>0\) is universal and \(M>0\), its negation is exactly (28); the local contradiction hypothesis is discharged.

The argument has no small-sample exception. At \(n=1\), every denominator in (1) is positive, and the same strict comparison applies whenever (29) is entered. If there is one active factor, its positive weight suffices for the strict accepted tensorized lower bound, and the finite atom extraction is a one-factor-in-the-active-sum argument. If \(k=1\), accepted Proposition~\ref{prop:step-013-one-factor-baseline} strengthens (30) to
\[
\mathbb E_\star R^\star>\frac18>\frac{31}{256}
\tag{32}
\]
with zero overflow; Lemma~\ref{lem:step-014-finite-prior-ceiling} and Proposition~\ref{prop:step-014-deterministic-atom} then recover the exact one-factor strict PAC failure event. The inactive \(k=1\) branch is already excluded by accepted Lemma~\ref{lem:step-009-low-mass} under the PAC and contradiction premises. Hence the unrestricted one-factor VC/ALMM baseline is preserved rather than weakened to an expectation-only conclusion.

## Target-Step Assembly

At the one candidate fixed by Assumption~\ref{assump:candidate-delta-budget}, accepted Lemma~\ref{lem:step-009-low-mass} supplies the universal \(c_{\rm low}\), the strict low-mass certificate \(w_L<1/128\), and a nonempty active set under the local branch \(n<c_{\rm low}M\). Accepted Proposition~\ref{prop:step-009-almm-eligibility} supplies the exact factor eligibility conditions at that same candidate. Accepted Lemma~\ref{lem:step-012-ideal-experiment} supplies the finite common experiment, full-product targets, legal block mixtures, iid samples, and prior-before-data/learner order; accepted Lemma~\ref{lem:step-013-exact-risk-sum} supplies the exact pointwise and expected global-risk identity. Accepted Proposition~\ref{prop:step-013-tensorization} then supplies, for the same learner and candidate, the strict exact-risk floor (3).

Lemma~\ref{lem:step-014-rational-gap} combines those accepted outputs and proves with exact integer arithmetic
\[
\mathbb E_\star R^\star
>\frac{127}{128}\left(\frac18-\frac3{2048}\right)
=\frac{32131}{262144}
>\frac{31}{256}.
\tag{33}
\]
Lemma~\ref{lem:step-014-finite-prior-ceiling} proves that the alleged universal PAC guarantee imposes the opposite bound \(\mathbb E_\star R^\star\le31/256\) on exactly this finite prior average. Proposition~\ref{prop:step-014-deterministic-atom} also removes the averaging device: one positive-mass task atom gives a deterministic full-product target and the allowed mixture (24), with exact masses \(\pi_i=\omega_i\), whose failure probability is strictly greater than \(1/16\).

Proposition~\ref{prop:step-014-candidate-closure} composes these named results, derives the contradiction without switching candidate, algorithm, learner scope, risk metric, or probability space, and discharges \(n<c_{\rm low}M\). It therefore proves the exact candidate-wise unrestricted lower theorem
\[
n\ge c_{\rm low}M_{\oplus}(C)
\]
for every admissible candidate learner satisfying the universal PAC guarantee, with the explicit strict PAC-failure atom on the contradicted branch.

## Explicit Rate Audit

- Exposed variables: the one fixed candidate \(n\), finite factor count \(k\), \((d_i,s_i,\pi_i,m_{n,i})_{i=1}^k\), \(M=M_{\oplus}(C)\), \(\varepsilon\), \(\delta\), \(w_L\), and \(\eta_0\). The output is the exact candidate lower comparison \(n\ge c_{\rm low}M\) and its strict PAC-failure witness.
- Hidden constants may depend on: only the accepted universal lower-source constants and fixed numerical conventions from which Lemma~\ref{lem:step-009-low-mass} explicitly defines \(c_{\rm low}\).
- Hidden constants may not depend on: \(X,\Sigma,C,k,i,d_i,C_i,Q_i,|C_i|,|Q_i|\), any task-support cardinality, learner, target, distribution, candidate \(n\), \(\varepsilon\), or \(\delta\).
- Fixed quantities: PAC accuracy and failure values \(1/16\), factor expected-risk threshold \(1/8\), low-mass threshold \(1/128\), overflow comparison \(3/2048\), the accepted source constant \(c_\delta\), binary 0-1 loss, and the setting's logarithm conventions.
- Probability mode: the premise is high probability over the iid sample and learner kernel separately for every deterministic task. It yields a taskwise expectation ceiling, which is averaged over one finite proof prior. The lower input is expectation over that same finite task prior, iid sample, and learner kernel. Finite atom extraction then returns to one deterministic task and the strict high-probability failure event. No joint-overflow event or probability-mode upgrade is used.
- Horizon mode: exactly one fixed candidate \(n\); there is no asymptotic, all-time, stopping-time, or uniform-in-candidate statement.
- Norm mode: exact distributional binary 0-1 risk \(R_D\) throughout.
- Admissibility conditions and auxiliary tolerances: Assumption~\ref{assump:candidate-delta-budget} at the actual candidate, including both \(\delta\le1/[n\log(n+1)]\) and every \(\delta\le c_\delta/[m_{n,i}^2\log(m_{n,i}+1)]\). Equality in either non-strict delta cap is allowed. There is no new auxiliary tolerance.
- Term absorption or simplification inequalities: all are displayed in (18)-(22). In particular,
  \[
  \frac18-\frac3{2048}=\frac{253}{2048},
  \qquad
  \frac{127\cdot253}{128\cdot2048}
  =\frac{32131}{262144},
  \qquad
  \frac{32131-31744}{262144}
  =\frac{387}{262144}>0.
  \]
- Probability conversion: for \(p=\Pr[R_D>1/16]\), bounded loss gives \(\mathbb ER_D\le1/16+(15/16)p\). Thus \(p\le1/16\) implies \(\mathbb ER_D\le31/256\), and the strict contrapositive gives the exact failure event after atom extraction.
- Contribution to any Rate Specialization Bridge: exports the complete candidate-wise lower clause to `step_015`. The local hypothesis \(n<c_{\rm low}M\) is discharged and does not become a theorem-facing condition.
- Baseline-reduction check: at \(k=1\), accepted Proposition~\ref{prop:step-013-one-factor-baseline} gives zero overflow and the unreduced strict floor \(\mathbb E R_D>1/8\). The same bounded-loss and finite-atom argument converts it to \(\Pr[R_D>1/16]>1/16\). Thus the lower baseline remains the unrestricted one-factor VC/ALMM conclusion, not an expectation-only, proper, quotient-output, or finite-support-only surrogate.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(M=M_{\oplus}(C)\), \(\pi_i:=\omega_i=s_i/M\), the accepted universal \(c_{\rm low}\), the conclusion \(n\ge c_{\rm low}M\), and the extracted objects \(c\in C,D\) with \(D(X_i)=\omega_i\) form the minimal downstream interface.
- `Appendix-local`: the finite product law \(\Lambda\), its support \(\mathcal T\), an atom \(\tau\), its factor tasks \((c_i^\tau,D_i^\tau)_i\), and the assembled objects \(c^\tau,D^\tau\) in (5) are translations of accepted Lemma~\ref{lem:step-012-ideal-experiment}; the common exact risk \(R^\star\) is the object identified by accepted Lemma~\ref{lem:step-013-exact-risk-sum}. They are derived objects, not assumptions.
- `Proof-local`: \(L_\tau\), \(p_\tau\), and the selected index \(\tau_\star\) are finite-averaging bookkeeping objects defined in (7), (12), and Proposition~\ref{prop:step-014-deterministic-atom}; they are not exported as theorem parameters.
- Constant provenance: \(c_{\rm low}\) and \(w_L<1/128\) are inherited from accepted Lemma~\ref{lem:step-009-low-mass}; \(\eta_0<3/2048\) and the strict product-prior floor are inherited through accepted Proposition~\ref{prop:step-013-tensorization}; \(31/256\) is derived from the fixed PAC thresholds in (14); \(32131/262144\) and the strict margin \(387/262144\) are proved by exact arithmetic in (20)-(22). No new free constant is introduced.
- Assumption provenance: candidate admissibility is the primitive numerical condition (1). The active set, low mass, hard priors, common experiment, mixture tasks, and expected-risk floor are accepted derived outputs. Boundedness and measurability of each risk follow from the setting's binary risk and learner convention. The universal PAC guarantee and \(n<c_{\rm low}M\) are local conditional hypotheses; the latter is discharged by Proposition~\ref{prop:step-014-candidate-closure}.
- Threshold and strictness audit: the good event is \(R_D\le1/16\), so its exact complement is \(R_D>1/16\); equality at \(1/16\) is charged on the good side. Equality of failure probability to \(1/16\) permits only the non-strict ceiling. The accepted tensorized floor, both residual comparisons, the rational margin, the selected atom expectation, and the final failure probability are all strict in the directions used.
- Finite-prior audit: accepted Lemma~\ref{lem:step-012-ideal-experiment} gives \(\Lambda\) finite support from the active finite priors and deterministic low-factor point masses. Equations (8), (15), and (27) use only finite sums. No Fubini theorem, limiting argument, minimax interchange, measurable selection, or target choice after observing the learner output is used in this step.
- Candidate and algorithm identity: every \(n,m_{n,i},\delta,A_n,S,D,c\), and risk event in the proof belongs to the same fixed candidate experiment. The upper ceiling and lower floor concern the same global learner call and exact global risk. No candidate, metric, algorithm, decoder, output space, or probability mode is switched.
- Boundary cases: \(n=1\) is permitted and leaves all logarithmic denominators positive; equality in either candidate delta cap is permitted; one active factor preserves strictness because its weight is positive; the zero-active-factor branch is excluded by accepted Lemma~\ref{lem:step-009-low-mass}; and \(k=1\) uses accepted Proposition~\ref{prop:step-013-one-factor-baseline}'s zero-overflow \(>1/8\) floor before the exact PAC conversion.
- Diagnostic boundary: no `global_proof.md`, `global_proof_review.md`, prior-idea artifact, or `proof_history` artifact was read or used.
