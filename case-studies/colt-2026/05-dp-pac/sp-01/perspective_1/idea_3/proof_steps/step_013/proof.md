# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Draw all factor tasks from their fixed priors in one common experiment and prove
  \[
  \mathbb E R_D(h_{A_n},c)
  >(1-w_L)\left(\frac18-\eta_0\right)
  \]
  by applying each factor prior to the corresponding hidden learner and summing exact marginal risks, regardless of joint output dependence.
- Depends on: `step_001`, `step_009`, `step_010`, `step_011`, `step_012`.
- Assumptions used: Primitive: `assump:canonical-product`; derived: exact risk identity, hard mass, priors, and coupling.
- Technical challenge: Ensure all marginal lower bounds concern one prior-before-learner experiment and that overflow is charged once per weight, not union bounded.
- Intended proof tool or cited result: Finite product priors, marginal equality, finite linearity, and nonnegative low-factor risks.
- Output target: Exact global expected-risk lower certificate.
- Rate objective: Candidate lower objective: explicit \(w_L,\eta_0\), expected exact global risk, fixed candidate; no independence or support hidden.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: \(X=\bigsqcup_{i=1}^kX_i\), and every tuple of factor targets has one full-product realization in \(C\). This is the only primitive condition used directly in this step. The remaining primitive conditions underlying the lower chain were already discharged inside the accepted dependency proofs and are consumed here only through their reviewed conclusions.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof/review pair, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` / `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, supplies Lemma~\ref{lem:step-001-risk-pullback}: the disjoint factor/global risk decomposition is exact and measurable, with no quotient-to-raw residual.
  - The accepted `step_009` proof/review pair, SHA-256 `9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7` / `009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2`, supplies Lemma~\ref{lem:step-009-low-mass} and Proposition~\ref{prop:step-009-almm-eligibility}. At the same fixed candidate and on the same contradiction branch,
    \[
    \pi_i:=\omega_i=\frac{s_i}{M}>0,
    \qquad
    \sum_{i=1}^k\pi_i=1,
    \qquad
    H\ne\varnothing,
    \qquad
    w_L:=\sum_{i\notin H}\pi_i<\frac1{128},
    \tag{1}
    \]
    and every \(i\in H\) has the exact numerical eligibility needed by the hard-prior result.
  - The accepted `step_010` proof/review pair, SHA-256 `314d3c3632243976831268a3629e2379258d68ddb3e02a879f961c4bfeaa302a` / `ef6aa34bc4943a059f70fb3140ac71cf2c7fcdbc0a3711af7db392a9508bce98`, supplies Proposition~\ref{prop:step-010-hard-prior}. For every \(i\in H\), it produces a finite prior \(\nu_i\), fixed independently of every learner, such that every eligible unrestricted factor learner on exactly \(m_{n,i}\) rows has prior-averaged expected factor risk strictly greater than \(1/8\).
  - The accepted `step_011` proof/review pair, SHA-256 `5259c6a34a8812b105c312b387f1e595591066a8a1d976cf2857333f21fc3315` / `f43d02a700e96928b0afb0720408411aaf5de398817d430a15fb6a620630cd4c`, supplies the generated overflow events
    \[
    \mathcal O_i:=\{L_i>m_{n,i}\},
    \qquad
    \Pr(\mathcal O_i)\le
    \eta_0:=e^7\left(\frac29\right)^9<\frac3{2048},
    \tag{2}
    \]
    as factor-marginal statements, with exact zero overflow at \(k=1\).
  - The accepted `step_012` proof/review pair, SHA-256 `ac0610a3d0c21f6be85650e00c8d934ef8e6eddd849f27f4116db1e7113fdd74` / `5b1d8997d4a29c6798aac4997806f15d9f8ce62029ef0baccc76f50f9b30b2ba`, supplies Lemma~\ref{lem:step-012-ideal-experiment} and Propositions~\ref{prop:step-012-hidden-kernel}, \ref{prop:step-012-hidden-privacy}, \ref{prop:step-012-identity-coupling}, and \ref{prop:step-012-boundaries}. These results put all fixed active priors and deterministic low-factor tasks into one ideal product experiment, construct for each active factor an eligible hidden learner, and identify its truncated risk with the corresponding ideal factor risk up to the sole marginal residual in (2), with zero residual at \(k=1\).
- Local conditional hypotheses:
  - Work at the same one candidate \(n\), alleged global PAC learner, and temporary contradiction branch \(n<c_{\rm low}M\) under which the accepted dependencies produced (1), the priors, and the hidden-learner interfaces.
  - After the priors have been fixed, let \(A_n\) be the arbitrary total measurable global replacement-\((\varepsilon,\delta)\)-DP learner being tested. This is a quantified object, not a new primitive condition.

All five dependency proof/review pairs match the binding hashes and have review status `ACCEPTED`. No generated event, independence condition, output-factorization condition, balance condition, or support restriction is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:canonical-product}, accepted Proposition~\ref{prop:step-010-hard-prior}, and accepted Lemma~\ref{lem:step-012-ideal-experiment} and Propositions~\ref{prop:step-012-hidden-kernel}, \ref{prop:step-012-hidden-privacy}, and \ref{prop:step-012-identity-coupling}, if all active priors are fixed and sampled in the one common ideal experiment before data and learner randomness, then every \(i\in H\) has common-experiment ideal factor risk strictly greater than \(1/8-\eta_0\). | Applies every hard prior to its eligible hidden learner and transfers the resulting truncated floor to the correct marginal of one common ideal experiment. |
| `unit_002` | lemma | Under Assumption~\ref{assump:canonical-product}, accepted Lemma~\ref{lem:step-001-risk-pullback}, and accepted Lemma~\ref{lem:step-012-ideal-experiment}, the common experiment satisfies the pointwise exact risk identity \(R^\star=\sum_i\pi_iR_i^\star\) and hence \(\mathbb ER^\star=\sum_i\pi_i\mathbb ER_i^\star\). | Supplies the exact global-to-factor equality and finite expectation linearity without output independence. |
| `unit_003` | proposition | Under accepted Lemma~\ref{lem:step-009-low-mass} and Lemmas~\ref{lem:step-013-common-marginal-floors} and \ref{lem:step-013-exact-risk-sum}, the common product-prior experiment obeys \(\mathbb ER^\star>(1-w_L)(1/8-\eta_0)\), with low factors discarded only by nonnegative risk and every active overflow residual charged once by its weight. | Proves the exact target lower certificate and preserves strictness. |
| `unit_004` | proposition | Under accepted Lemma~\ref{lem:step-009-low-mass}, accepted Proposition~\ref{prop:step-010-hard-prior}, accepted Lemma~\ref{lem:step-011-zero-overflow}, accepted Propositions~\ref{prop:step-012-identity-coupling} and \ref{prop:step-012-boundaries}, and Lemma~\ref{lem:step-013-exact-risk-sum}, if \(k=1\) on the active contradiction branch, then overflow is identically zero and the common experiment has the exact floor \(\mathbb ER^\star>1/8\). | Proves the inherited one-factor baseline without the conservative \(\eta_0\) loss. |

Atomic step = no. The marginal hard-floor transfer, exact disjoint risk identity, weighted strict summation, and one-factor baseline are separate audit obligations.

## Cited Result Applications

No external paper result or new standard theorem is used in this step. Every nonlocal result is an accepted dependency interface, restated in the current notation below.

The two quantitative dependency interfaces used repeatedly below are the hard-prior floor
\[
\mathbb E_{(c_i,D_i)\sim\nu_i,\,S_i,\,K_i}
R_{D_i}(e_i(K_i(S_i)),c_i)>\frac18
\qquad(i\in H),
\tag{3}
\]
for every eligible hidden learner \(K_i\), and the accepted marginal coupling
\[
|R_i^{\rm tr}-R_i^\star|\le\mathbf1_{\mathcal O_i},
\qquad
|\mathbb ER_i^{\rm tr}-\mathbb E_\star R_i^\star|\le\eta_0.
\tag{4}
\]

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Conclusion used |
| ------ | ------------------------------------------- | ---------------------------------- | --------------- |
| Accepted Lemma~\ref{lem:step-001-risk-pullback} | For a measurable full-product target, a block-mixture distribution with block masses \((\pi_i)_i\), and a measurable decoded output, global binary risk is the exact finite weighted sum of the corresponding factor risks. | The measurable disjoint partition and exact risk convention were discharged in the accepted `step_001` proof/review. The present common target and mixture are supplied by accepted Lemma~\ref{lem:step-012-ideal-experiment}. | The pointwise identity proved in Lemma~\ref{lem:step-013-exact-risk-sum}. |
| Accepted Lemma~\ref{lem:step-009-low-mass} | At the same fixed candidate, (1) holds, so \(\sum_{i\in H}\pi_i=1-w_L\), every active weight is positive, and \(H\ne\varnothing\). | The fixed-candidate PAC and contradiction hypotheses were discharged in the accepted `step_009` proof/review. | The active mass, strict-sum support, and nonnegative treatment of low factors. |
| Accepted Proposition~\ref{prop:step-010-hard-prior} | For each \(i\in H\), \(\nu_i\) is fixed before every learner and every eligible hidden learner \(K_i\) satisfies the strict floor (3). | Exact active-factor eligibility and unrestricted all-input privacy were discharged by accepted `step_009` and are supplied for \(K_i\) by accepted `step_012`. | The strict truncated factor floor in Lemma~\ref{lem:step-013-common-marginal-floors}. |
| Accepted overflow certificate from `step_011` | Equation (2) holds marginally for every factor, and \(\Pr(\mathcal O_1)=0\) when \(k=1\). | The exact binomial route law and budget were checked in the accepted `step_011` proof/review. | The sole ideal/truncated residual and the exact one-factor specialization. |
| Accepted Lemma~\ref{lem:step-012-ideal-experiment} | The laws \(\nu_i\) on active factors and fixed point-mass laws on low factors form one finite product-task experiment. It generates one full target \(c^\star\), mixture \(D^\star=\sum_i\pi_iD_i\), iid sample \(S^\star\), and output \(\Omega^\star\sim A_n(S^\star,\cdot)\), with every task sampled before data and learner randomness. | Assumption~\ref{assump:canonical-product} and the fixed dependency objects were discharged in accepted `step_012`. | The single probability space on which every ideal factor risk is defined. |
| Accepted Propositions~\ref{prop:step-012-hidden-kernel} and \ref{prop:step-012-hidden-privacy} | For each \(i\in H\), the common task laws and arbitrary global \(A_n\) define a total unrestricted factor learner \(K_i^{A_n}\) on \(m_{n,i}\) rows that is replacement-\((0.1,\delta)\)-DP on all factor inputs. | Totality, measurability, one-use adjacency, and privacy monotonicity were proved in accepted `step_012`. | Eligibility of the learner to which (3) is applied. |
| Accepted Proposition~\ref{prop:step-012-identity-coupling} | For the truncated risk \(R_i^{\rm tr}\) and corresponding common ideal risk \(R_i^\star\), the pointwise and expected marginal bounds (4) hold in the same common ideal experiment. | The accepted coupling uses the same task, target, mixture, sample, output coordinate, and supported-task risk off overflow. | Transfers (3) to each common-experiment marginal without a new residual. |
| Lemma~\ref{lem:step-013-common-marginal-floors} | Every active ideal marginal in the one common experiment has expectation strictly greater than \(1/8-\eta_0\). | Proved in `unit_001` from the accepted hard prior and coupling. | Active-factor input to weighted tensorization. |
| Lemma~\ref{lem:step-013-exact-risk-sum} | Pointwise and in expectation, common global risk is the finite \(\pi_i\)-weighted sum of common ideal factor risks. | Proved in `unit_002` from the exact disjoint risk interface. | Converts marginal floors to the exact global risk. |
| Proposition~\ref{prop:step-013-tensorization} | The common global expected risk is strictly greater than \((1-w_L)(1/8-\eta_0)\). | Proved in `unit_003`; active weights are positive and low-factor risks are nonnegative. | Exact target-step output. |
| Proposition~\ref{prop:step-013-one-factor-baseline} | At \(k=1\) on the active branch, the common global expected risk is strictly greater than \(1/8\), with no overflow residual. | Proved in `unit_004` from the accepted exact zero-overflow and identity coupling. | Baseline invariance obligation. |

## Local Derivation

Fix the class and the one lower candidate. Use accepted Lemma~\ref{lem:step-009-low-mass} to fix \(H,w_L\), and then use accepted Proposition~\ref{prop:step-010-hard-prior} to fix all \((\nu_i)_{i\in H}\) simultaneously. This is finite choice because \(H\subseteq[k]\), and each chosen prior satisfies a statement universal over factor learners. Thus the collection is fixed independently of the arbitrary global learner below.

For every \(j\notin H\), use the deterministic realizable task \(T_j^\circ\) fixed in accepted Lemma~\ref{lem:step-012-ideal-experiment}. In the notation of that accepted result, set
\[
\lambda_j:=
\begin{cases}
\nu_j,&j\in H,\\
\delta_{T_j^\circ},&j\notin H,
\end{cases}
\qquad
\Lambda:=\bigotimes_{j=1}^k\lambda_j.
\]
This one finite product law is fixed before the global learner. Let \(\mathbb P_\star\) denote the single product-task ideal law from accepted Lemma~\ref{lem:step-012-ideal-experiment} after an arbitrary global learner \(A_n\) is fixed: all factor tasks are drawn from \(\Lambda\) first, then the route and iid global sample are drawn, and finally
\(\Omega^\star\sim A_n(S^\star,\cdot)\). Write \(\mathbb E_\star\) for expectation under this one law and define
\[
R_i^\star
:=R_{D_i}(h_{\Omega^\star}|_{X_i},c_i),
\qquad
R^\star
:=R_{D^\star}(h_{\Omega^\star},c^\star).
\tag{5}
\]
The active tasks have finite support and the low tasks are point masses, so these risks are measurable; accepted `step_012` already supplies this measurability for the common experiment. They lie in \([0,1]\).

### unit_001: lemma

**Lemma (Active marginal floors in one common product-prior experiment).** \(\label{lem:step-013-common-marginal-floors}\)

Statement:
Under Assumption~\ref{assump:canonical-product}, accepted Proposition~\ref{prop:step-010-hard-prior}, and accepted Lemma~\ref{lem:step-012-ideal-experiment} and Propositions~\ref{prop:step-012-hidden-kernel}, \ref{prop:step-012-hidden-privacy}, and \ref{prop:step-012-identity-coupling}, fix all active priors before the arbitrary global learner and use the common law \(\mathbb P_\star\) and risks (5). Then, for every \(i\in H\),
\[
\mathbb E_\star R_i^\star
>\frac18-\eta_0.
\tag{6}
\]
Every expectation in (6) is a marginal of the same common experiment; no factor-output independence is asserted.

Proof / justification:
Fix \(i\in H\). Accepted Propositions~\ref{prop:step-012-hidden-kernel} and \ref{prop:step-012-hidden-privacy} construct from the fixed common task laws and the arbitrary global learner a total unrestricted replacement-\((0.1,\delta)\)-DP factor learner \(K_i^{A_n}\) on exactly \(m_{n,i}\) rows. It therefore lies in the universal learner quantifier of accepted Proposition~\ref{prop:step-010-hard-prior}. Let
\[
R_i^{\rm tr}
:=R_{D_i}\bigl(e_i(K_i^{A_n}(S_i)),c_i\bigr),
\qquad
(c_i,D_i)\sim\nu_i,
\quad
S_i\sim(D_i)_{c_i}^{m_{n,i}}.
\tag{7}
\]
The hard-prior conclusion gives the strict inequality
\[
\mathbb E R_i^{\rm tr}>\frac18.
\tag{8}
\]

Accepted Proposition~\ref{prop:step-012-identity-coupling} translates (7) into the \(i\)-th marginal of the one law \(\mathbb P_\star\). Its exact same-target coupling and accepted overflow certificate give
\[
\left|\mathbb E R_i^{\rm tr}
      -\mathbb E_\star R_i^\star\right|
\le \Pr(\mathcal O_i)
\le\eta_0.
\tag{9}
\]
Consequently
\[
\mathbb E_\star R_i^\star
\ge\mathbb E R_i^{\rm tr}-\eta_0
>\frac18-\eta_0,
\tag{10}
\]
which is (6). The first inequality in (10) charges the entire ideal/truncated discrepancy once. Finite evaluation, task restriction, target assembly, and raw decoding contribute zero further residual by the accepted coupling.

The construction may be repeated as a marginal argument for every active \(i\), but the right-hand variable \(R_i^\star\) is always the factor risk defined on the already fixed common law \(\mathbb P_\star\). The hidden kernels need not be released or run jointly. Thus (6) does not combine inequalities from different ideal experiments.

### unit_002: lemma

**Lemma (Exact disjoint-risk sum in the common experiment).** \(\label{lem:step-013-exact-risk-sum}\)

Statement:
Under Assumption~\ref{assump:canonical-product}, accepted Lemma~\ref{lem:step-001-risk-pullback}, and accepted Lemma~\ref{lem:step-012-ideal-experiment}, the risks in (5) satisfy, on every outcome of the common experiment,
\[
R^\star=\sum_{i=1}^k\pi_iR_i^\star.
\tag{11}
\]
Consequently,
\[
\mathbb E_\star R^\star
=\sum_{i=1}^k\pi_i\mathbb E_\star R_i^\star.
\tag{12}
\]
Neither equality requires independence among the restrictions of the global learner output.

Proof / justification:
Fix one outcome of the finite task draw and one decoded global output \(h_{\Omega^\star}\). Accepted Lemma~\ref{lem:step-012-ideal-experiment} gives
\[
c^\star|_{X_i}=c_i,
\qquad
D^\star(B)=\sum_{i=1}^k\pi_iD_i(B\cap X_i),
\tag{13}
\]
where each \(D_i\) is supported on \(X_i\). The mistake set is the disjoint union
\[
\{x:h_{\Omega^\star}(x)\ne c^\star(x)\}
=\bigsqcup_{i=1}^k
\{x\in X_i:h_{\Omega^\star}(x)\ne c_i(x)\}.
\tag{14}
\]
Applying (13) to (14), or equivalently instantiating the exact disjoint-factor risk identity of accepted Lemma~\ref{lem:step-001-risk-pullback}, gives
\[
\begin{aligned}
R^\star
&=D^\star\{h_{\Omega^\star}\ne c^\star\}\\
&=\sum_{i=1}^k\pi_i
  D_i\{x\in X_i:h_{\Omega^\star}(x)\ne c_i(x)\}\\
&=\sum_{i=1}^k\pi_iR_i^\star.
\end{aligned}
\tag{15}
\]
This is an exact equality for the realized joint output, not an equality in distribution and not an approximation. In particular, arbitrary correlation among the values of \(h_{\Omega^\star}\) on different blocks is already present on both sides of (15).

Every summand is measurable and bounded by one, and \(k<\infty\). Taking expectation of (15) and applying finite linearity proves (12). No interchange of an infinite sum, conditioning conversion, or factor independence is involved.

### unit_003: proposition

**Proposition (Common-prior weighted tensorization).** \(\label{prop:step-013-tensorization}\)

Statement:
Under accepted Lemma~\ref{lem:step-009-low-mass} and Lemmas~\ref{lem:step-013-common-marginal-floors} and \ref{lem:step-013-exact-risk-sum}, the one common product-prior ideal experiment satisfies
\[
\mathbb E_\star
R_{D^\star}(h_{\Omega^\star},c^\star)
>(1-w_L)\left(\frac18-\eta_0\right).
\tag{16}
\]
The only losses in (16) are the low-factor mass \(w_L\) and one \(\eta_0\) marginal residual per unit of active weight.

Proof / justification:
All factor risks are nonnegative. Lemma~\ref{lem:step-013-exact-risk-sum}, followed by omission only of the low-factor terms, gives
\[
\mathbb E_\star R^\star
=\sum_{i=1}^k\pi_i\mathbb E_\star R_i^\star
\ge\sum_{i\in H}\pi_i\mathbb E_\star R_i^\star.
\tag{17}
\]
For audit transparency, apply (8)-(9) before summing. Since each active weight is positive,
\[
\begin{aligned}
\sum_{i\in H}\pi_i\mathbb E_\star R_i^\star
&\ge
  \sum_{i\in H}\pi_i
  \left(\mathbb E R_i^{\rm tr}-\eta_0\right)\\
&>
  \sum_{i\in H}\pi_i
  \left(\frac18-\eta_0\right).
\end{aligned}
\tag{18}
\]
The first line charges factor \(i\)'s marginal residual exactly as \(\pi_i\Pr(\mathcal O_i)\le\pi_i\eta_0\). Thus the total residual used in (18) is
\[
\sum_{i\in H}\pi_i\eta_0
=\eta_0\sum_{i\in H}\pi_i,
\tag{19}
\]
not \(\Pr(\bigcup_i\mathcal O_i)\) and not an unweighted multiple of \(\eta_0\). No union bound is taken.

Accepted Lemma~\ref{lem:step-009-low-mass} gives
\[
\sum_{i\in H}\pi_i
=1-\sum_{i\notin H}\pi_i
=1-w_L.
\tag{20}
\]
It also gives \(H\ne\varnothing\), while \(\pi_i=s_i/M>0\) for every factor. Hence the second line of (18) is genuinely strict: it is a finite sum containing at least one positive weight multiplying a strict factor inequality. Combining (17)-(20) proves (16).

The low-factor tasks were fixed before the learner and remain part of the same global target, distribution, sample, and output. Their risks may be correlated with all active risks and may even be zero; only their pointwise nonnegativity is used. Likewise, (18) uses separate marginal expectations of one common output and never assumes that factor outputs or overflow events are independent.

### unit_004: proposition

**Proposition (Exact one-factor active-branch floor).** \(\label{prop:step-013-one-factor-baseline}\)

Statement:
Under accepted Lemma~\ref{lem:step-009-low-mass}, accepted Proposition~\ref{prop:step-010-hard-prior}, accepted Lemma~\ref{lem:step-011-zero-overflow}, accepted Propositions~\ref{prop:step-012-identity-coupling} and \ref{prop:step-012-boundaries}, and Lemma~\ref{lem:step-013-exact-risk-sum}, suppose \(k=1\) on the active fixed-candidate contradiction branch. Then
\[
\mathcal O_1=\varnothing
\quad\text{almost surely},
\qquad
\mathbb E_\star R^\star>\frac18.
\tag{21}
\]
Thus the one-factor baseline has no overflow or coupling loss.

Proof / justification:
Accepted Lemma~\ref{lem:step-009-low-mass} gives \(H\ne\varnothing\) on the current contradiction branch. When \(k=1\), this forces
\[
H=\{1\},
\qquad
\pi_1=1,
\qquad
w_L=0.
\tag{22}
\]
Accepted Lemma~\ref{lem:step-011-zero-overflow} gives \(L_1=n\) and
\[
m_{n,1}=\max\{8,4n\}\ge n,
\]
so \(\mathcal O_1=\varnothing\) exactly. Accepted Proposition~\ref{prop:step-012-boundaries} then says that the one-use learner inserts the first \(n\) factor rows once and that the truncated and ideal risks coincide pointwise, not merely within \(\eta_0\):
\[
R_1^{\rm tr}=R_1^\star.
\tag{23}
\]
Accepted Proposition~\ref{prop:step-010-hard-prior} still gives
\(\mathbb E R_1^{\rm tr}>1/8\). Taking expectations in (23), and using Lemma~\ref{lem:step-013-exact-risk-sum} with \(\pi_1=1\), yields
\[
\mathbb E_\star R^\star
=\mathbb E_\star R_1^\star
=\mathbb E R_1^{\rm tr}
>\frac18.
\tag{24}
\]
This proves (21). If the sole factor were outside \(H\), then \(H=\varnothing\), a branch already ruled out by accepted Lemma~\ref{lem:step-009-low-mass} under the current premises; no inactive hard-prior mechanism is consumed.

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-010-hard-prior} fixes every active prior independently of every learner. Accepted Lemma~\ref{lem:step-012-ideal-experiment} places their finite product, together with deterministic low-factor tasks, into one experiment before the common target, mixture sample, or learner randomness is drawn. Thus every factor inequality below has the required prior-before-learner order.

For each active factor, accepted Propositions~\ref{prop:step-012-hidden-kernel} and \ref{prop:step-012-hidden-privacy} supply an eligible unrestricted factor learner. Lemma~\ref{lem:step-013-common-marginal-floors} applies the corresponding accepted hard prior and then accepted Proposition~\ref{prop:step-012-identity-coupling}, proving that the factor's risk marginal in that same common experiment is strictly greater than \(1/8-\eta_0\). No factor inequality is imported from a different ideal experiment.

Lemma~\ref{lem:step-013-exact-risk-sum} instantiates the exact disjoint risk mechanism of accepted Lemma~\ref{lem:step-001-risk-pullback} and proves pointwise that common global risk is the finite weighted sum of those common-experiment factor risks. Proposition~\ref{prop:step-013-tensorization} uses finite linearity, nonnegative low-factor risks, and accepted Lemma~\ref{lem:step-009-low-mass} to obtain
\[
\mathbb E R_{D^\star}(h_{A_n(S^\star)},c^\star)
>(1-w_L)\left(\frac18-\eta_0\right).
\tag{25}
\]
Equation (19) shows explicitly that each marginal residual is charged once by its weight. Neither output independence nor a joint overflow event is used.

Finally, Proposition~\ref{prop:step-013-one-factor-baseline} proves separately that at \(k=1\) on the active branch the overflow event is empty, the ideal/truncated identity is exact, and the expected global risk floor is the unreduced strict value \(>1/8\). Therefore the exact target claim, strictness, quantifier order, and inherited one-factor baseline are all proved.

## Explicit Rate Audit

- Exposed variables: the one fixed candidate \(n\), finite factor count \(k\), active set \(H\), weights \((\pi_i)_i\), exact budgets \((m_{n,i})_i\), low mass \(w_L\), and exact overflow constant \(\eta_0=e^7(2/9)^9\). The output quantity is expected exact global binary risk.
- Hidden constants may depend on: none in this step. The threshold \(1/8\), weights, \(w_L\), and \(\eta_0\) are exact inherited quantities.
- Hidden constants may not depend on: \(X,\Sigma,C,k,i,d_i,C_i,Q_i,|Q_i|\), any task-support cardinality, learner, target, distribution, \(n,\varepsilon\), or \(\delta\).
- Fixed quantities: the accepted candidate-specific hard priors and deterministic low-factor tasks, the setting's risk convention, and the already fixed global learner for the common experiment.
- Probability mode: expectation over the finite product prior, route, iid data, and learner output. Each coupling input is a factor-marginal expectation. No high-probability, joint-overflow, or output-independence statement is made.
- Horizon mode: exactly one fixed candidate \(n\) and its associated factor budgets; no asymptotic, stopping-time, all-time, or uniform-in-candidate upgrade.
- Norm mode: exact distributional binary \(0\)-\(1\) factor and global risk.
- Admissibility conditions and auxiliary tolerances: the same accepted fixed-candidate PAC/contradiction scope, accepted active-factor eligibility, and Assumption~\ref{assump:canonical-product}. There is no auxiliary tolerance and no additional theorem-facing condition.
- Term absorption or simplification inequalities: (18)-(20) display the complete residual accounting,
  \[
  \sum_{i\in H}\pi_i\Pr(\mathcal O_i)
  \le\eta_0\sum_{i\in H}\pi_i
  =(1-w_L)\eta_0.
  \]
  Low factors are discarded only through the explicit inequality \(\sum_i\pi_i\mathbb ER_i^\star\ge\sum_{i\in H}\pi_i\mathbb ER_i^\star\).
- Probability conversion: none. The accepted bounded-risk coupling already supplies each marginal expectation discrepancy. The current proof uses finite linearity only; it does not union bound, condition on simultaneous nonoverflow, or convert to a failure event.
- Contribution to any Rate Specialization Bridge: exports the exact common-prior expected-risk floor, with its only defects \(w_L\) and \(\eta_0\), to `step_014` for the fixed-candidate PAC contradiction.
- Baseline-reduction check: at \(k=1\), Proposition~\ref{prop:step-013-one-factor-baseline} uses \(\pi_1=1\), \(L_1=n\le m_{n,1}\), and exact identity coupling to prove \(\mathbb ER^\star>1/8\). The generic \(\eta_0\) loss is not retained, so the unrestricted one-factor ALMM baseline is preserved exactly.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(\pi_i:=\omega_i=s_i/M\), \(H\), and \(w_L=\sum_{i\notin H}\pi_i\) are accepted `step_009` objects. The constant \(\eta_0=e^7(2/9)^9\) and events \(\mathcal O_i\) are accepted `step_011` objects. Their definitions are repeated only to translate the accepted interfaces into the current proof.
- `Public-facing`: equation (25) is the sole new downstream interface. No common-experiment helper notation is needed in the final theorem statement.
- `Appendix-local`: \(\lambda_j\) is the accepted active prior \(\nu_j\) or accepted deterministic low-task point mass, and \(\Lambda=\bigotimes_j\lambda_j\) names their one finite product. These are accepted dependency objects translated into the current notation; \(\Lambda\) is fixed before \(A_n\) and is not exported.
- `Appendix-local`: \(\mathbb P_\star\), \(\mathbb E_\star\), the task vector \((c_i,D_i)_i\), \(c^\star,D^\star,S^\star,\Omega^\star\), and the risks \(R_i^\star,R^\star\) name the accepted common experiment and its exact risks. They are translated explicitly in (5) from accepted Lemma~\ref{lem:step-012-ideal-experiment}.
- `Appendix-local`: \(K_i^{A_n}\) and its accepted decoder \(e_i\) are the eligible hidden learner and finite-support risk decoder produced by accepted `step_012` and `step_010`. They are used only to instantiate the hard-prior interface and are not new assumptions or current-step outputs.
- `Proof-local`: \(R_i^{\rm tr}\) in (7) names the risk of the accepted hidden learner only while the hard-prior and coupling inequalities are composed. It is not exported.
- Constant provenance: \(1/8\) is the exact accepted hard-prior threshold. \(\eta_0\) is inherited from accepted `step_011`; \(w_L\) and all \(\pi_i\) are inherited from accepted `step_009`. No new numerical constant, margin, radius, threshold, or bounded quantity is introduced. Risk nonnegativity and the bound by one follow directly from binary \(0\)-\(1\) risk.
- Assumption provenance: the active set, positive weights, low mass, hard priors, overflow events, hidden learners, common experiment, and ideal/truncated couplings are accepted derived outputs. Exact risk summation is proved in Lemma~\ref{lem:step-013-exact-risk-sum}; the global lower certificate is proved in Proposition~\ref{prop:step-013-tensorization}. No generated object, event, coupling, or marginal inequality is promoted to a primitive condition.
- Quantifier order: after the class and fixed candidate determine \(H\), all \(\nu_i\) are fixed using their learner-uniform accepted conclusion. Low-factor tasks are fixed next. Only then is the arbitrary global learner used to define the hidden kernels and common call. In the experiment, all tasks are sampled before the target, data, and learner output. No task is selected after observing a learner output.
- Marginal/joint audit: every \(R_i^\star\) is defined on the single law \(\mathbb P_\star\). The hidden learners are used only to certify these marginals through accepted couplings. Equations (11)-(12) use the realized common output directly, so its factor restrictions may be arbitrarily dependent. Equation (19) is weighted marginal accounting, not a union bound.
- Boundary cases: \(H\ne\varnothing\) is supplied by accepted `step_009`; all factors active gives \(w_L=0\); one active factor leaves a one-term strict sum; fixed low-factor tasks may have zero risk; and \(k=1\) is handled by Proposition~\ref{prop:step-013-one-factor-baseline} with exact zero overflow. A zero-active-factor branch is already contradictory under the accepted step scope and is not silently consumed.
- Diagnostic boundary: the optional `global_proof.md` / `global_proof_review.md` pair was read only after verifying SHA-256 `a52f1ff37024c621941fb30aa5b2f95633e56d45947fa928f6e14e121e87e5e5` / `17fca51224903071cd28879f9e382b2e3d9ecf3d5ce7b2abf897e0668eba0c48` and review status `ACCEPTED`. Its suggestion to use one common product-prior experiment and a weighted marginal sum was planning context only. Every identity and inequality above is proved from the accepted dependency interfaces; neither global artifact is evidence, a cited result, an assumption source, or authority to change the binding claim.
