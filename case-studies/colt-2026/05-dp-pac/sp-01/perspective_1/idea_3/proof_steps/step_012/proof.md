# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_012
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each active factor and arbitrary global learner \(A_n\), construct a total measurable hidden-factor kernel on \(m_{n,i}\) rows that is \((\varepsilon,\delta)\)-DP on all neighboring factor inputs because every input row is inserted into at most one global row; prove exact identity with the common ideal mixture experiment off overflow and risk discrepancy at most \(\eta_0\).
- Depends on: step_001, step_009, step_010, step_011.
- Assumptions used: Primitive: assump:canonical-product, assump:countably-coded-evaluation, assump:global-privacy-range, assump:candidate-delta-budget; derived: fixed priors, eligibility, overflow.
- Technical challenge: Make the simulator total and measurable before reading unavailable rows; preserve replacement adjacency for nonrealizable labels; avoid properness and quotient-output assumptions; fix all other tasks before the learner call.
- Intended proof tool or cited result: Direct sequential one-use embedding, measurable finite-evaluation postprocessing, input-independent overflow branch, and identity coupling.
- Output target: Eligible unrestricted factor learners and same-target coupling.
- Rate objective: Candidate lower objective with exact \(n,m_{n,i},\varepsilon,\delta,\eta_0\), pointwise privacy and expected exact-risk coupling, at one fixed candidate.
- Binding row review status: PENDING in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: \(X=\bigsqcup_{j=1}^kX_j\), and every tuple \((c_1,\ldots,c_k)\in\prod_jC_j\) has a unique realization in \(C\). This is used only to form the target in the utility coupling, never in the privacy proof.
  - Assumption~\ref{assump:countably-coded-evaluation}: quotient cells are measurable. This enters through accepted Lemmas~\ref{lem:step-001-output-measurability}, \ref{lem:step-001-risk-pullback}, and \ref{lem:step-010-finite-coding}.
  - Assumption~\ref{assump:global-privacy-range}: \(0<\varepsilon\le0.1\) and \(0<\delta<1\). The inequality \(\varepsilon\le0.1\) is used only after exact \((\varepsilon,\delta)\)-privacy is proved.
  - Assumption~\ref{assump:candidate-delta-budget}: the numerical candidate condition is used only through accepted Proposition~\ref{prop:step-009-almm-eligibility} and Proposition~\ref{prop:step-010-hard-prior}; no new delta restriction is imposed here.
- Derived invariants supplied by accepted dependencies:
  - The accepted step_001 proof/review pair, SHA-256 c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a / baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82, supplies Lemmas~\ref{lem:step-001-output-measurability} and \ref{lem:step-001-risk-pullback}: measurable finite evaluations, measurable decoding, and exact quotient/raw factor risk. Full-product target freedom is the primitive Assumption~\ref{assump:canonical-product}.
  - The accepted step_009 proof/review pair, SHA-256 9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7 / 009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2, supplies Proposition~\ref{prop:step-009-almm-eligibility} and Lemma~\ref{lem:step-009-low-mass}, and hence, on the same fixed-candidate contradiction branch, the nonempty active set \(H\), the exact weights
    \[
    \pi_j:=\omega_j=\frac{s_j}{M},
    \qquad \sum_{j=1}^k\pi_j=1,
    \]
    and exact budgets \(m_{n,j}=\max\{8,\lceil4n\pi_j\rceil\}\), together with every active factor's numerical eligibility.
  - The accepted step_010 proof/review pair, SHA-256 314d3c3632243976831268a3629e2379258d68ddb3e02a879f961c4bfeaa302a / ef6aa34bc4943a059f70fb3140ac71cf2c7fcdbc0a3711af7db392a9508bce98, supplies Lemma~\ref{lem:step-010-finite-coding} and Proposition~\ref{prop:step-010-hard-prior}. Thus, for every \(j\in H\), there is a finite learner-independent prior \(\nu_j\) over realizable finite-support tasks, a finite witness \(F_j=\{x_{j,1},\ldots,x_{j,t_j}\}\), the finite output set \(\mathcal V_j=\{0,1\}^{[t_j]}\), and a measurable improper extension \(e_j:\mathcal V_j\to\{0,1\}^{X_j}\). Every task in \(\operatorname{supp}\nu_j\) is supported on \(F_j\), and \(e_j(v)\) has evaluation vector \(v\) there. The distributions \(\nu_j\) are fixed before every learner.
  - The accepted step_011 proof/review pair, SHA-256 5259c6a34a8812b105c312b387f1e595591066a8a1d976cf2857333f21fc3315 / f43d02a700e96928b0afb0720408411aaf5de398817d430a15fb6a620630cd4c, supplies Lemmas~\ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, \ref{lem:step-011-numerical-slack}, and \ref{lem:step-011-zero-overflow}. In particular, for \(L_j\sim\operatorname{Bin}(n,\pi_j)\),
    \[
    \mathcal O_j:=\{L_j>m_{n,j}\},
    \qquad
    \Pr(\mathcal O_j)\le\eta_0:=e^7(2/9)^9<\frac3{2048},
    \tag{1}
    \]
    with exact zero overflow at \(\pi_j=0\), at \(\pi_j=1\), and in particular at \(k=1\).
- Local conditional hypotheses:
  - Work at the same candidate \(n\), alleged global PAC learner, and temporary contradiction branch \(n<c_{\rm low}M\) under which the accepted dependencies produced \(H\), the priors, and the budgets. The PAC property itself is not used in this step.
  - After all accepted priors and the proof-local low-factor reference tasks are fixed, let \(A_n:Z^n\rightsquigarrow(\Omega,\mathscr F)\) be an arbitrary total global learner in the setting's finite-evaluation-cylinder model that is replacement-\((\varepsilon,\delta)\)-DP on all labeled datasets. This is the quantified learner being reduced, not a new theorem assumption.

No realizability, support, properness, quotient-output, or factorwise-output condition is imposed on a privacy input to the constructed learner. No generated event is assumed: the routing count and overflow event are constructed below, and their probability control is supplied by accepted Lemmas~\ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, and \ref{lem:step-011-zero-overflow}.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:canonical-product}, accepted Proposition~\ref{prop:step-009-almm-eligibility}, and accepted Proposition~\ref{prop:step-010-hard-prior}, fix every active prior and deterministic low-factor task before quantifying over \(A_n\). The resulting finite product-task experiment has a measurable full-product target, a block-mixture distribution, an iid ideal global sample, and binomial route counts. | Defines the one common ideal experiment with the required prior-before-learner and task-before-call order. |
| unit_002 | proposition | Under Assumption~\ref{assump:countably-coded-evaluation}, accepted Lemma~\ref{lem:step-010-finite-coding}, accepted Proposition~\ref{prop:step-010-hard-prior}, and Lemma~\ref{lem:step-012-ideal-experiment}, for each \(i\in H\) and arbitrary global kernel \(A_n\), the sequential overflow-truncated construction is a total measurable factor kernel on every labeled \(m_{n,i}\)-row input, with finite-evaluation output and decoder \(e_i\). | Builds the requested unrestricted hidden-factor learner and proves totality and measurability before privacy is invoked. |
| unit_003 | proposition | Under Assumption~\ref{assump:global-privacy-range} and Proposition~\ref{prop:step-012-hidden-kernel}, if \(A_n\) is all-input replacement-\((\varepsilon,\delta)\)-DP, then the hidden-factor kernel is all-input replacement-\((\varepsilon,\delta)\)-DP, hence replacement-\((0.1,\delta)\)-DP. | Proves the one-use adjacency certificate and the all-event mixture inequality with no privacy composition. |
| unit_004 | proposition | Under Assumption~\ref{assump:canonical-product}, accepted Lemmas~\ref{lem:step-001-risk-pullback}, \ref{lem:step-010-finite-coding}, \ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, and \ref{lem:step-011-zero-overflow}, accepted Proposition~\ref{prop:step-010-hard-prior}, and Propositions~\ref{prop:step-012-hidden-kernel} and~\ref{prop:step-012-hidden-privacy}, each factor experiment admits a marginal coupling to the one common ideal experiment in which target, distribution, dataset, learner-output coordinate, finite restriction, and factor risk are identical off \(\mathcal O_i\), while the pointwise risk difference is at most \(\mathbf1_{\mathcal O_i}\) and the expected discrepancy is at most \(\eta_0\). | Supplies the exact same-target residual bridge required by the target row. |
| unit_005 | proposition | Under Propositions~\ref{prop:step-012-hidden-kernel}, \ref{prop:step-012-hidden-privacy}, and \ref{prop:step-012-identity-coupling}, the no-slot, unused-row, used-row, overflow, nonrealizable-input, single-active-factor, hypothetical zero-weight, and \(k=1\) cases have the claimed exact behavior; at \(k=1\) the standard one-factor reduction has zero coupling loss. | Makes every required boundary and baseline trace explicit. |

Atomic step = no. The common experiment, kernel construction, privacy argument, same-space coupling, and boundary specialization are logically separate obligations.

## Cited Result Applications

No external paper result is used in this step. All nonlocal inputs are accepted dependency results, restated here in current notation.

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Conclusion used |
| ------ | ------------------------------------------- | ---------------------------------- | --------------- |
| Accepted Lemmas~\ref{lem:step-001-output-measurability} and~\ref{lem:step-001-risk-pullback}, and Assumption~\ref{assump:canonical-product} | Finite evaluation of an arbitrary global output is measurable; decoded hypotheses and finite-support factor risks are measurable; every factor target tuple gives one global target; quotient/raw risks agree exactly. | Discharged in the accepted step_001 proof/review pair under Assumptions~\ref{assump:canonical-product}, \ref{assump:vc-one-factors}, and \ref{assump:countably-coded-evaluation}. | Measurable output restriction, legal full target, and exact factor-risk interpretation. |
| Accepted Proposition~\ref{prop:step-009-almm-eligibility} and Lemma~\ref{lem:step-009-low-mass} | At the same candidate, \(H\ne\varnothing\), \(\pi_j=s_j/M\), \(\sum_j\pi_j=1\), and \(m_{n,j}=\max\{8,\lceil4n\pi_j\rceil\}\); every \(i\in H\) is eligible for the accepted factor lower interface. | The accepted step_009 pair discharges the fixed PAC premise, candidate condition, and temporary hypothesis \(n<c_{\rm low}M\). | Active indices, routing law, exact input lengths, and fixed-candidate scope. |
| Accepted Lemma~\ref{lem:step-010-finite-coding} and Proposition~\ref{prop:step-010-hard-prior} | For \(i\in H\), \(\nu_i\) is a finite prior fixed independently of learners. Its tasks are realizable and supported on finite \(F_i\); measurable \(e_i(v)\) agrees with \(v\in\mathcal V_i\) on \(F_i\), so finite evaluation preserves every supported task's risk exactly. | Discharged in the accepted step_010 pair from quotient-cell measurability, finite hard tasks, and exact eligibility. | Prior-before-learner tasks, finite postprocessing, total improper decoder, and zero task-risk residual. |
| Accepted Lemmas~\ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, \ref{lem:step-011-numerical-slack}, and \ref{lem:step-011-zero-overflow} | For \(L_i\sim\operatorname{Bin}(n,\pi_i)\) and exact \(m_{n,i}\), (1) holds marginally for each factor, with zero probability at \(k=1\). | The accepted lemmas discharge the two mean regimes, the exact numerical comparison, and the finite-support endpoints. This is a marginal statement, not a joint overflow event. | The sole ideal/truncated expected-risk residual. |
| Lemma~\ref{lem:step-012-ideal-experiment} | Fixed active priors and low-factor tasks produce one common full-product ideal experiment with iid mixture sample and correct route counts. | Proved in unit_001 from accepted dependencies and finite product sampling. | Common target, mixture, sample, and prior-before-call order. |
| Proposition~\ref{prop:step-012-hidden-kernel} | For each active factor, the direct sequential construction defines a total measurable finite-output kernel on arbitrary factor databases. | Proved in unit_002; every auxiliary law is finite and input-independent, and finite evaluation of \(A_n\)'s output is measurable. | The learner whose privacy and coupling are proved next. |
| Proposition~\ref{prop:step-012-hidden-privacy} | The hidden kernel is \((\varepsilon,\delta)\)-DP on all factor neighbors and therefore \((0.1,\delta)\)-DP. | Proved in unit_003 by the one-use map and the all-event DP inequality for \(A_n\). | Eligibility as an unrestricted factor learner. |
| Proposition~\ref{prop:step-012-identity-coupling} | Each hidden experiment is a marginal of a coupling with the common ideal experiment, with pointwise equality off overflow and discrepancy bounded by its indicator. | Proved in unit_004 using the exact supported-task decoder and accepted overflow bound. | Exact same-target transfer and expected residual \(\eta_0\). |

## Local Derivation

All accepted priors \(\nu_j\), \(j\in H\), are fixed before the arbitrary global learner \(A_n\) is quantified. The constructed hidden kernel may depend on the already fixed \(A_n\), as every learner reduction must, but none of the priors does.

### unit_001: lemma

**Lemma (Prior-fixed common ideal mixture experiment).** \(\label{lem:step-012-ideal-experiment}\)

Statement:
Under Assumption~\ref{assump:canonical-product}, accepted Proposition~\ref{prop:step-009-almm-eligibility}, and accepted Proposition~\ref{prop:step-010-hard-prior}, one may fix before every global learner a probability law \(\lambda_j\) on realizable factor tasks for every \(j\in[k]\) such that \(\lambda_j=\nu_j\) for \(j\in H\) and \(\lambda_j\) is a deterministic point mass for \(j\notin H\). If all tasks are sampled independently from these laws before data or learner output, then they determine a measurable full-product target \(c^\star\in C\), a probability measure \(D^\star\) with \(D^\star(X_j)=\pi_j\), and an ideal sample \(S^\star\sim(D^\star_{c^\star})^n\). The corresponding route count satisfies \(L_j\sim\operatorname{Bin}(n,\pi_j)\). All task choices precede the single call to any fixed global kernel \(A_n\).

Proof / justification:
For each \(j\notin H\), choose once and for all \(c_j^\circ\in C_j\) and \(x_j^\circ\in X_j\), and put
\[
T_j^\circ:=(c_j^\circ,\delta_{x_j^\circ}),
\qquad
\lambda_j:=\delta_{T_j^\circ}.
\tag{2}
\]
Such fixed choices exist because the factor classes are nonconstant and therefore nonempty on nonempty blocks. Only finitely many choices are made; no measurable selector is constructed. For \(j\in H\), put \(\lambda_j:=\nu_j\). Accepted Proposition~\ref{prop:step-010-hard-prior} says each \(\nu_j\) has finite support on realizable finite-support tasks and is fixed before every learner. Thus every \(\lambda_j\) has finite support and is fixed before the later quantifier over \(A_n\).

Draw independently
\[
T_j=(c_j,D_j)\sim\lambda_j,
\qquad j\in[k].
\tag{3}
\]
Assumption~\ref{assump:canonical-product} supplies a unique target \(c^\star\in C\) with \(c^\star|_{X_j}=c_j\) for every \(j\). Define
\[
D^\star(B):=\sum_{j=1}^k\pi_jD_j(B\cap X_j),
\qquad B\in\Sigma.
\tag{4}
\]
Every \(D_j\) is a probability measure on the trace space \(X_j\), the blocks are measurable and disjoint, and the nonnegative weights sum to one. Hence (4) is a probability measure and \(D^\star(X_j)=\pi_j\).

Next draw iid route indices
\[
I_1,\ldots,I_n\in[k],
\qquad \Pr(I_r=j)=\pi_j,
\tag{5}
\]
and define occurrence counts
\[
\ell_{j,r}:=\bigl|\{s\le r:I_s=j\}\bigr|,
\qquad L_j:=\ell_{j,n}.
\tag{6}
\]
Conditional on the task vector and route, draw independently over all \(j\) and \(a\le n\vee m_{n,j}\)
\[
U_{j,a}=(X_{j,a},c_j(X_{j,a})),
\qquad X_{j,a}\sim D_j.
\tag{7}
\]
Set
\[
S_r^\star:=U_{I_r,\ell_{I_r,r}},
\qquad S^\star:=(S_1^\star,\ldots,S_n^\star).
\tag{8}
\]
Distinct global slots use distinct coordinates of the independent row arrays. Therefore, for measurable labeled-record events \(B_1,\ldots,B_n\), conditional on the task vector,
\[
\begin{aligned}
\Pr(S_1^\star\in B_1,\ldots,S_n^\star\in B_n\mid(T_j)_j)
&=\sum_{j_1,\ldots,j_n}
  \prod_{r=1}^n\pi_{j_r}(D_{j_r})_{c_{j_r}}(B_r)\\
&=\prod_{r=1}^n\sum_{j=1}^k\pi_j(D_j)_{c_j}(B_r)\\
&=\prod_{r=1}^nD^\star_{c^\star}(B_r).
\end{aligned}
\tag{9}
\]
Thus \(S^\star\sim(D^\star_{c^\star})^n\) conditional on the task vector, and hence under the full experiment. Equation (5) gives \(L_j\sim\operatorname{Bin}(n,\pi_j)\).

The task indices, support-point indices, and route indices range over finite sets. The target map on this finite task support is measurable, and all displayed sampling laws are finite mixtures of Dirac laws. Consequently the experiment is measurable without placing a sigma-field on an infinite task family. After (3), (5), and (7) have been sampled and (8) assembled, make the single kernel call
\[
\Omega^\star\sim A_n(S^\star,\cdot).
\tag{10}
\]
This order fixes every task and data row before the learner call. It gives the one common ideal experiment to which all active-factor marginals will be coupled.

### unit_002: proposition

**Proposition (Total measurable one-use hidden-factor kernel).** \(\label{prop:step-012-hidden-kernel}\)

Statement:
Under Assumption~\ref{assump:countably-coded-evaluation}, accepted Lemma~\ref{lem:step-010-finite-coding}, accepted Proposition~\ref{prop:step-010-hard-prior}, and Lemma~\ref{lem:step-012-ideal-experiment}, fix the selected task laws \(\lambda_1,\ldots,\lambda_k\), then fix an arbitrary total global Markov kernel \(A_n:Z^n\rightsquigarrow(\Omega,\mathscr F)\) in the setting's finite-evaluation-cylinder model, and finally fix \(i\in H\). There is a total Markov kernel
\[
K_i^{A_n}:
(X_i\times\{0,1\})^{m_{n,i}}
\rightsquigarrow(\mathcal V_i,2^{\mathcal V_i})
\tag{11}
\]
with decoder \(e_i\), defined on every labeled factor database, such that its overflow branch is input-independent and taken before any input row is read, while off overflow its \(a\)-th input row is inserted only into the \(a\)-th requested \(i\)-slot. All other task realizations and rows are sampled independently of the factor input and fixed before the one call to \(A_n\).

Proof / justification:
Write
\[
m_i:=m_{n,i},
\qquad
F_i=\{x_{i,1},\ldots,x_{i,t_i}\},
\qquad
\mathcal V_i=\{0,1\}^{[t_i]}.
\tag{12}
\]
Define the finite-evaluation restriction
\[
\rho_i:\Omega\to\mathcal V_i,
\qquad
\rho_i(\omega):=
(h_\omega(x_{i,1}),\ldots,h_\omega(x_{i,t_i})).
\tag{13}
\]
For every \(E\subseteq\mathcal V_i\), \(\rho_i^{-1}(E)\in\mathscr F\): singleton fibers are finite-evaluation cylinders, and \(E\) is a finite union of singleton vectors. Thus (13) is measurable even when \(A_n\) is improper and its output space is otherwise arbitrary. Fix an arbitrary fallback \(v_i^\circ\in\mathcal V_i\), for example the all-zero vector.

On input
\[
s=(z_1,\ldots,z_{m_i})
\in(X_i\times\{0,1\})^{m_i},
\tag{14}
\]
the algorithm samples, without inspecting \(s\), the following auxiliary variables in order:

1. for every \(j\ne i\), a task \(T_j=(c_j,D_j)\sim\lambda_j\), independently;
2. the entire route \(I_1,\ldots,I_n\) from (5), and hence \(L_i\) and \(\mathcal O_i=\{L_i>m_i\}\);
3. only on \(\mathcal O_i^c\), all labeled rows needed at slots with \(I_r\ne i\), independently from their already sampled tasks.

If \(\mathcal O_i\) occurs, it immediately returns \(v_i^\circ\). It does not inspect any coordinate of \(s\), request an unavailable \(i\)-row, assemble a global database, or call \(A_n\).

Suppose \(\mathcal O_i^c\). For a slot \(r\) with \(I_r=i\), its occurrence number \(\ell_{i,r}\) lies in \([L_i]\subseteq[m_i]\). Define the assembled global database \(\Phi_{i,\xi}(s)\in Z^n\), where \(\xi\) denotes the realized input-independent auxiliary variables, by
\[
\bigl(\Phi_{i,\xi}(s)\bigr)_r:=
\begin{cases}
z_{\ell_{i,r}},&I_r=i,\\
W_r,&I_r\ne i,
\end{cases}
\tag{15}
\]
where \(W_r\sim(D_{I_r})_{c_{I_r}}\) is the already sampled other-factor row. The first requested \(i\)-slot uses \(z_1\), the second uses \(z_2\), and so on. Thus every requested input row is used exactly once and every row \(z_a\) with \(a>L_i\) is unused. The algorithm calls \(A_n\) once on (15) and returns \(\rho_i(\omega)\).

Let \(\mathsf Q_i\) be the finite probability law of \(\xi\). Finiteness follows because every \(\lambda_j\) has finite support, every task distribution has finite support, the route space is \([k]^n\), and only finitely many rows are drawn. For \(E\subseteq\mathcal V_i\), define the conditional transition without evaluating \(\Phi_{i,\xi}\) on overflow:
\[
K_{i,\xi}(s,E):=
\begin{cases}
\mathbf1_E(v_i^\circ),&\mathcal O_i(\xi),\\
A_n\bigl(\Phi_{i,\xi}(s),\rho_i^{-1}(E)\bigr),
&\mathcal O_i(\xi)^c.
\end{cases}
\qquad
K_i^{A_n}(s,E):=\int K_{i,\xi}(s,E)\,\mathsf Q_i(d\xi).
\tag{16}
\]
This is a finite sum. For fixed nonoverflow \(\xi\), every coordinate of \(\Phi_{i,\xi}\) is either an input-coordinate projection or a constant labeled record. The inclusion of the trace space \(X_i\times\{0,1\}\) into \(Z\) is measurable because \(X_i\in\Sigma\). Hence \(\Phi_{i,\xi}\) is measurable. Since \(A_n\) is a Markov kernel and \(\rho_i^{-1}(E)\in\mathscr F\), the second branch in (16) is measurable in \(s\); the overflow branch is constant in \(s\). Therefore \(s\mapsto K_i^{A_n}(s,E)\) is measurable for every output event.

For each \(s\), (16) is a probability law because the overflow branch is a point mass and the nonoverflow branch is a pushforward of a probability kernel. It is defined on every labeled input, including inconsistent and nonrealizable inputs. Accepted Lemma~\ref{lem:step-010-finite-coding} makes decoder \(e_i(v)\) measurable for every \(v\), and its finite output makes every finite-evaluation cylinder measurable. Thus (11) is a total unrestricted measurable factor learner. No target or realizability claim was used in this construction.

### unit_003: proposition

**Proposition (All-input privacy from one-use insertion).** \(\label{prop:step-012-hidden-privacy}\)

Statement:
Under Assumption~\ref{assump:global-privacy-range} and Proposition~\ref{prop:step-012-hidden-kernel}, if the arbitrary global kernel \(A_n\) is replacement-\((\varepsilon,\delta)\)-DP on all neighboring datasets in \(Z^n\), then, for every \(i\in H\), \(K_i^{A_n}\) is replacement-\((\varepsilon,\delta)\)-DP on all neighboring inputs in \((X_i\times\{0,1\})^{m_{n,i}}\). Consequently it is replacement-\((0.1,\delta)\)-DP. This conclusion uses neither global nor factor realizability and incurs no privacy composition.

Proof / justification:
Fix adjacent factor databases \(s,s'\) that differ only in input row \(a\in[m_i]\), and fix one auxiliary realization \(\xi\) in (16).

If \(\mathcal O_i(\xi)\) occurs, both inputs produce the same point mass at \(v_i^\circ\). This branch is input-independent.

Suppose \(\mathcal O_i(\xi)^c\). If \(a>L_i\), row \(a\) is not requested by (15), and
\[
\Phi_{i,\xi}(s)=\Phi_{i,\xi}(s').
\tag{17}
\]
If \(a\le L_i\), there is a unique slot
\[
r_i(a):=\min\{r:\ell_{i,r}=a\}.
\tag{18}
\]
Equation (15) inserts input row \(a\) at \(r_i(a)\) and nowhere else. All other global coordinates agree, so the two assembled databases are equal or replacement-adjacent in exactly that one coordinate. This remains true if either factor labeling is inconsistent with every concept: assembly and adjacency inspect labeled records, not realizability.

For fixed \(\xi\), let \(K_{i,\xi}\) denote the conditional output kernel inside (16). For every \(E\subseteq\mathcal V_i\), equality in the overflow and unused-row cases, and global DP applied to measurable \(\rho_i^{-1}(E)\) in the used-row case, give
\[
K_{i,\xi}(s,E)
\le e^\varepsilon K_{i,\xi}(s',E)+\delta.
\tag{19}
\]
The law \(\mathsf Q_i\) is independent of the factor input. Integrating (19) gives
\[
\begin{aligned}
K_i^{A_n}(s,E)
&\le\int\left(e^\varepsilon K_{i,\xi}(s',E)+\delta\right)
\mathsf Q_i(d\xi)\\
&=e^\varepsilon K_i^{A_n}(s',E)+\delta.
\end{aligned}
\tag{20}
\]
The same argument with \(s,s'\) exchanged gives the reverse neighbor direction. The additive term is \(\delta\), not a multiple of \(\delta\), because (20) is a mixture of one-call DP kernels rather than a composition. Since \(\varepsilon\le0.1\), \(e^\varepsilon\le e^{0.1}\), and (20) also proves replacement-\((0.1,\delta)\)-DP. Thus \(K_i^{A_n}\) lies in the unrestricted factor-learner quantifier of accepted Proposition~\ref{prop:step-010-hard-prior}.

### unit_004: proposition

**Proposition (Exact marginal identity coupling and sole overflow residual).** \(\label{prop:step-012-identity-coupling}\)

Statement:
Under Assumption~\ref{assump:canonical-product}, accepted Lemma~\ref{lem:step-001-risk-pullback}, accepted Lemma~\ref{lem:step-010-finite-coding}, accepted Proposition~\ref{prop:step-010-hard-prior}, accepted Lemmas~\ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, and \ref{lem:step-011-zero-overflow}, and Propositions~\ref{prop:step-012-hidden-kernel} and~\ref{prop:step-012-hidden-privacy}, fix \(i\in H\). When \(T_i=(c_i,D_i)\sim\nu_i\) and the input to \(K_i^{A_n}\) is iid from \((D_i)_{c_i}^{m_i}\), its experiment has a coupling to the common ideal experiment of Lemma~\ref{lem:step-012-ideal-experiment} such that, on \(\mathcal O_i^c\), the full task vector and global target, mixture distribution, global dataset, learner-output coordinate, finite restriction, and factor risk are pointwise identical. If \(R_i^{\rm tr}\) and \(R_i^{\rm id}\) denote the truncated and ideal factor risks,
\[
\left|R_i^{\rm tr}-R_i^{\rm id}\right|
\le\mathbf1_{\mathcal O_i}
\quad\text{pointwise},
\tag{21}
\]
and
\[
\left|\mathbb E R_i^{\rm tr}-\mathbb E R_i^{\rm id}\right|
\le\Pr(\mathcal O_i)\le\eta_0.
\tag{22}
\]
The same conclusion holds conditional on any fixed task in \(\operatorname{supp}\nu_i\). It is a marginal coupling for factor \(i\), not an independence or joint-factor-learner claim.

Proof / justification:
Use the variables of Lemma~\ref{lem:step-012-ideal-experiment}. All tasks \(T_j=(c_j,D_j)\) are drawn first, followed by the route and independent row arrays \(U_{j,a}\). Define the factor input
\[
S_i^{\rm in}:=(U_{i,1},\ldots,U_{i,m_i}).
\tag{23}
\]
Conditional on \(T_i\), this has law \((D_i)_{c_i}^{m_i}\). It is independent of \(T_{-i}\), the route, and all other-factor row arrays, which have exactly the auxiliary law required by \(K_i^{A_n}\). Thus (23), together with those variables, has the correct marginal law of an iid factor input followed by independent internal randomization of the hidden kernel. Correlation with the ideal sample on the enlarged probability space does not alter this marginal product law.

Use \(T_{-i}\) and the common route as the first two auxiliary stages of \(K_i^{A_n}\), and at every non-\(i\) slot use
\[
W_r:=U_{I_r,\ell_{I_r,r}}.
\tag{24}
\]
These are independent task-labeled rows with the conditional laws specified in Proposition~\ref{prop:step-012-hidden-kernel}. On \(\mathcal O_i^c\), if \(I_r=i\), equations (15) and (23) give
\[
\bigl(\Phi_{i,\xi}(S_i^{\rm in})\bigr)_r
=U_{i,\ell_{i,r}}=S_r^\star,
\tag{25}
\]
and if \(I_r\ne i\), equations (15), (24), and (8) give the same equality. Hence
\[
\Phi_{i,\xi}(S_i^{\rm in})=S^\star
\qquad\text{on }\mathcal O_i^c.
\tag{26}
\]
The task vector, full-product target \(c^\star\), and mixture \(D^\star\) are literally the same variables. Assumption~\ref{assump:canonical-product} is used here to show that the task-generated data in (26) are realizable by \(c^\star\). This realizability statement was not used in Proposition~\ref{prop:step-012-hidden-privacy}.

Always sample the ideal learner-output coordinate \(\Omega^\star\) as in (10). On \(\mathcal O_i^c\), use this one coordinate as the learner output of the hidden-kernel call as well; this is valid because (26) makes both conditional laws \(A_n(S^\star,\cdot)\). On \(\mathcal O_i\), the hidden kernel instead outputs its fixed vector without a learner call. Formally, set
\[
V_i^{\rm id}:=\rho_i(\Omega^\star),
\qquad
V_i^{\rm tr}:=
\begin{cases}
\rho_i(\Omega^\star),&\mathcal O_i^c,\\
v_i^\circ,&\mathcal O_i.
\end{cases}
\tag{27}
\]
Equation (27) has exactly the \(K_i^{A_n}\) marginal by (16). It also gives pointwise equality of the learner-output coordinate used by the calls and of the restricted vector off overflow. This canonical shared output coordinate is the precise meaning of using the same learner randomness; no seed representation of arbitrary measurable \(A_n\) is assumed.

Define
\[
R_i^{\rm id}:=R_{D_i}(h_{\Omega^\star}|_{X_i},c_i),
\qquad
R_i^{\rm tr}:=R_{D_i}(e_i(V_i^{\rm tr}),c_i).
\tag{28}
\]
Every task in \(\operatorname{supp}\nu_i\) is supported on \(F_i\), and accepted Lemma~\ref{lem:step-010-finite-coding} gives
\[
e_i(\rho_i(\omega))(x_{i,a})=h_\omega(x_{i,a})
\qquad(a\in[t_i]).
\tag{29}
\]
Therefore, on \(\mathcal O_i^c\), (27)-(29) imply
\[
R_i^{\rm tr}=R_i^{\rm id}.
\tag{30}
\]
Both risks are measurable finite sums and lie in \([0,1]\). Their absolute difference is zero off overflow and at most one on overflow, proving (21). Taking expectation gives the first inequality in (22), and accepted (1) gives the second. The route is independent of the tasks, so the same proof and \(\eta_0\) bound hold after conditioning on any fixed \(T_i\in\operatorname{supp}\nu_i\).

The task vector, route, row arrays, and ideal learner output may be reused to display such a coupling for every active \(i\). What is asserted and consumed is only each factor's marginal law and marginal expectation. No independence among hidden outputs, simultaneous privacy statement for their joint release, or joint overflow bound is asserted.

### unit_005: proposition

**Proposition (Boundary traces and exact one-factor specialization).** \(\label{prop:step-012-boundaries}\)

Statement:
Under Propositions~\ref{prop:step-012-hidden-kernel}, \ref{prop:step-012-hidden-privacy}, and \ref{prop:step-012-identity-coupling}, all of the following hold.

1. If no \(i\)-slot is requested, the factor input is never read and the ideal/truncated identity is exact.
2. Replacing an unused input row changes no global row; replacing a used input row changes at most its unique requested global row.
3. On overflow, output is input-independent and selected before an unavailable row is requested.
4. The privacy conclusion covers every nonrealizable factor input.
5. If \(H=\{i\}\), the construction remains valid with an empty product of other active priors and fixed tasks on all low factors.
6. Although the setting has \(\pi_i>0\), the same formulas at a hypothetical \(\pi_i=0\) read no input, have zero overflow, and have zero coupling discrepancy.
7. If \(k=1\) on the active lower branch, the construction is the standard one-factor reduction: \(L_1=n\le m_{n,1}\), the first \(n\) factor rows are inserted once, and coupling loss is exactly zero.

Proof / justification:
If \(L_i=0\), (15) contains no factor-input coordinate. Thus every factor input induces the same assembled database for fixed auxiliary randomness, and (26) still gives equality with the ideal database. This proves item 1.

Items 2 and 3 are the two exhaustive branches of the adjacency trace (17)-(18) and the first branch of (16). In particular, overflow depends only on the route sampled before input is accessed. Item 4 follows because the proof of (17)-(20) never names a factor target and invokes global privacy on all labeled global neighbors.

If \(H=\{i\}\), there are no random active tasks in \(H\setminus\{i\}\). Sampling from their product law is the unique empty-product operation, while (2) supplies a fixed task for each \(j\notin H\). All formulas remain unchanged, proving item 5.

Accepted Lemma~\ref{lem:step-001-logstar} gives \(s_i\ge2\) and \(M>0\), so the actual setting has \(\pi_i=s_i/M>0\). Thus \(\pi_i=0\) is not an admissible active-factor case. If the construction is algebraically extended to that endpoint, the route law makes \(L_i=0\) surely, accepted Lemma~\ref{lem:step-011-zero-overflow} gives \(\Pr(\mathcal O_i)=0\), and item 1 gives exact equality and input independence. This records rather than assumes the irrelevant endpoint.

Finally suppose \(k=1\). Then \(\pi_1=1\), the route is deterministic, and
\[
L_1=n,
\qquad
m_{n,1}=\max\{8,\lceil4n\rceil\}
=\max\{8,4n\}\ge n.
\tag{31}
\]
Hence \(\mathcal O_1=\varnothing\). There are no other tasks or other-factor rows. Equation (15) inserts \(z_a\) at global slot \(a\) for \(a=1,\ldots,n\) and ignores all remaining input rows. Equations (26)-(30) then hold everywhere, not merely off an event, so
\[
\left|\mathbb E R_1^{\rm tr}-\mathbb E R_1^{\rm id}\right|=0.
\tag{32}
\]
This is the ordinary unrestricted one-factor embedding with one global learner call and no conservative coupling loss.

## Target-Step Assembly

The quantifier order is fixed first. Accepted Proposition~\ref{prop:step-010-hard-prior} produces every \(\nu_j\), \(j\in H\), independently of every learner. Lemma~\ref{lem:step-012-ideal-experiment} completes these with deterministic low-factor tasks and defines one common product-task, mixture, and ideal-sample experiment. Only after these laws are fixed is the arbitrary global \((\varepsilon,\delta)\)-DP learner \(A_n\) fixed.

For each \(i\in H\), Proposition~\ref{prop:step-012-hidden-kernel} constructs total measurable \(K_i^{A_n}\) on exactly \(m_{n,i}\) factor rows. It samples every other task, the entire route, and every other-factor row independently of input and before the learner call; it detects overflow from the route and returns on that input-independent branch before reading an unavailable row. Its finite-evaluation restriction and accepted decoder handle arbitrary improper global output without a quotient-output or properness condition.

Proposition~\ref{prop:step-012-hidden-privacy} proves the exact pointwise privacy claim. For fixed auxiliary randomness, a factor replacement changes zero assembled rows when unused, one assembled row when used, and zero rows on overflow. Applying global privacy once and mixing gives \((\varepsilon,\delta)\), not a composed parameter. This covers nonrealizable labels and uses no product target. Assumption~\ref{assump:global-privacy-range} then gives the \((0.1,\delta)\) eligibility required downstream.

Proposition~\ref{prop:step-012-identity-coupling} puts the hidden experiment and Lemma~\ref{lem:step-012-ideal-experiment}'s common ideal experiment on one probability space. Full-product realizability is used only there. On \(\mathcal O_i^c\), equations (26)-(30) give exact equality of task vector and target, mixture, global dataset, shared learner-output coordinate, finite restriction, and supported-task factor risk. The only possible risk difference obeys
\[
|R_i^{\rm tr}-R_i^{\rm id}|
\le\mathbf1_{\mathcal O_i},
\qquad
|\mathbb ER_i^{\rm tr}-\mathbb ER_i^{\rm id}|
\le\eta_0.
\tag{33}
\]
This is a marginal statement for each factor in the same common ideal experiment; it neither asserts output independence nor takes a factor union bound. Proposition~\ref{prop:step-012-boundaries} verifies every requested boundary and proves that at \(k=1\) overflow and coupling loss are exactly zero. These results establish the exact binding row without changing its claim, scope, or residual.

## Explicit Rate Audit

- Exposed variables: the one fixed candidate \(n\), \(k\), active factor \(i\in H\), exact weights \(\pi_j\), exact input budget \(m_{n,i}\), global privacy parameters \(\varepsilon,\delta\), route count \(L_i\), event \(\mathcal O_i\), and exact residual \(\eta_0=e^7(2/9)^9\).
- Hidden constants may depend on: none. All numerical quantities in the conclusion are setting-defined or inherited exactly from accepted Lemmas~\ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, \ref{lem:step-011-numerical-slack}, and \ref{lem:step-011-zero-overflow}.
- Hidden constants may not depend on: \(X,\Sigma,C,k,i,d_i,C_i,Q_i,|Q_i|,D,n,\pi_i,m_{n,i},\varepsilon,\delta\), any task-support cardinality, or the learner.
- Fixed quantities: the accepted finite task priors and witnesses at this candidate, the factor risk threshold used by their downstream consumer, replacement adjacency, and the setting's logarithm convention.
- Probability mode: privacy is pointwise for every neighboring factor database and every output event. Coupling equality is pointwise conditional on \(\mathcal O_i^c\); (22) is expectation over finite task priors, iid rows, route, and learner output. The overflow input is one marginal probability, not a simultaneous event.
- Horizon mode: one fixed global sample size \(n\) and associated exact factor size \(m_{n,i}\). No asymptotic, all-time, stopping-time, or uniform-in-candidate statement is made.
- Norm mode: exact distributional binary \(0\)-\(1\) factor risk. Finite restriction preserves this exact risk on every task in \(\operatorname{supp}\nu_i\).
- Admissibility conditions and auxiliary tolerances: the same accepted lower-chain candidate, its local contradiction branch, the four binding assumptions through their stated direct or dependency uses, and an arbitrary all-input global \((\varepsilon,\delta)\)-DP kernel. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: \(e^\varepsilon\le e^{0.1}\) proves privacy monotonicity; (21) proves the pointwise risk residual; (22) uses only \(\Pr(\mathcal O_i)\le\eta_0\). No other term is dropped or absorbed.
- Probability conversion: finite mixing preserves the same additive \(\delta\) in (20); bounded-loss coupling gives (21)-(22). There is no union bound, independence conversion, PAC-event conversion, or privacy composition.
- Contribution to any Rate Specialization Bridge: exports an eligible factor learner and exact ideal-risk transfer with sole residual \(\eta_0\) to step_013.
- Baseline-reduction check: at \(k=1\), \(\pi_1=1\), \(L_1=n\le m_{n,1}\), and (32) gives exact zero residual. The first \(n\) factor rows are inserted once, which is the standard unrestricted one-factor reduction, not a weakened surrogate.

## Blockers

None

## Notation And Assumption Notes

| Object | Provenance | Surface role and assumption status |
| ------ | ---------- | ---------------------------------- |
| \(\pi_j=\omega_j=s_j/M\), \(m_{n,j}\), \(H\) | Setting quantities and accepted Proposition~\ref{prop:step-009-almm-eligibility} | public-facing; fixed-candidate deterministic objects, not assumptions introduced here. |
| \(F_j,\mathcal V_j,e_j,\nu_j\), \(j\in H\) | Accepted Lemma~\ref{lem:step-010-finite-coding} and Proposition~\ref{prop:step-010-hard-prior} | \(\nu_j\) is public-facing; finite witness, vector space, and decoder are appendix-local. All are accepted derived objects fixed before the global learner. |
| \(T_j^\circ,\lambda_j\) | Fixed finite choices in (2), with \(\lambda_j=\nu_j\) on \(H\) | appendix-local; proved to exist before \(A_n\), not theorem-facing assumptions. |
| \(T_j=(c_j,D_j),c^\star,D^\star\) | Generated from the finite product of \(\lambda_j\)'s by (3)-(4) and Assumption~\ref{assump:canonical-product} | appendix-local generated utility-coupling objects; full-product realizability is proved in Lemma~\ref{lem:step-012-ideal-experiment}. |
| \(I_r,\ell_{j,r},L_j\) | Input-independent categorical routing in (5)-(6) | appendix-local generated random objects; \(L_j\)'s binomial law is proved directly and matched to the hypotheses of accepted Lemmas~\ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, and \ref{lem:step-011-zero-overflow}. |
| \(\mathcal O_j=\{L_j>m_{n,j}\},\eta_0=e^7(2/9)^9\) | Accepted step_011 output instantiated by the route | public-facing residual interface; generated event with accepted marginal bound, not an assumed good event. |
| \(U_{j,a},S^\star,\Omega^\star\) | Generated row arrays, ideal database, and canonical learner-output coordinate in (7)-(10) | appendix-local; laws and sampling order are proved in Lemma~\ref{lem:step-012-ideal-experiment}. |
| \(\rho_i,v_i^\circ\) | Finite evaluation of the arbitrary global decoder and a fixed vector in accepted finite \(\mathcal V_i\) | proof-local; measurability is proved in Proposition~\ref{prop:step-012-hidden-kernel}. The fallback is not a target or risk assumption. |
| \(\xi,\mathsf Q_i,\Phi_{i,\xi}\) | Input-independent auxiliary seed, finite law, and direct assembly map in (15)-(16) | proof-local; totality, measurability, and one-use behavior are proved locally. |
| \(K_i^{A_n}\) | Kernel defined by (16) | public-facing; main generated output, proved total/measurable and all-input private before downstream use. |
| \(r_i(a)\) | Unique requested-slot index in (18) | proof-local; exists only when \(a\le L_i\) and proves at-most-one-row adjacency. |
| \(S_i^{\rm in},V_i^{\rm id},V_i^{\rm tr},R_i^{\rm id},R_i^{\rm tr}\) | Coupling variables in (23), (27), and (28) | appendix-local; correct marginals, exact off-overflow equality, measurability, and boundedness are proved in Proposition~\ref{prop:step-012-identity-coupling}. |

- Constant provenance: \(n,m_{n,i},\varepsilon,\delta\) are setting-defined; \(0.1\) is the endpoint in Assumption~\ref{assump:global-privacy-range}; and \(\eta_0\) is inherited from accepted Lemmas~\ref{lem:step-011-small-mean} and \ref{lem:step-011-large-mean}. No new numerical constant, margin, rate, radius, or boundedness premise is introduced. The bound \(R\in[0,1]\) follows directly from binary risk.
- Assumption provenance: task support and prior-before-learner order are conclusions of accepted Lemma~\ref{lem:step-010-finite-coding} and Proposition~\ref{prop:step-010-hard-prior}; overflow control is supplied by accepted Lemmas~\ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, and \ref{lem:step-011-zero-overflow}; kernel totality, measurability, one-use adjacency, all-input privacy, product-task realizability, common-experiment identity, and pointwise residual are proved in this step. No generated object is promoted to a primitive condition.
- Quantifier order: task laws \(\lambda_j\) are fixed first; then arbitrary global algorithm \(A_n\) is fixed; then \(K_i^{A_n}\) is constructed for each active \(i\). During each run, other task realizations and route are sampled before factor input is read, and every realized task is fixed before the global learner call.
- Privacy/utility separation: Propositions~\ref{prop:step-012-hidden-kernel} and~\ref{prop:step-012-hidden-privacy} are valid on arbitrary labeled inputs and use no target. Assumption~\ref{assump:canonical-product} enters only Proposition~\ref{prop:step-012-identity-coupling}, where input is iid from a realizable prior task.
- Marginal/joint distinction: the common ideal experiment is shared notation for all active factors, but (21)-(22) are factor-marginal coupling claims. No independence of global output restrictions, simultaneous execution of hidden kernels, joint privacy release, or joint overflow control is claimed.
- Diagnostic boundary: the optional global_proof.md / global_proof_review.md pair was read only after verifying SHA-256 a52f1ff37024c621941fb30aa5b2f95633e56d45947fa928f6e14e121e87e5e5 / 17fca51224903071cd28879f9e382b2e3d9ecf3d5ce7b2abf897e0668eba0c48 and review status ACCEPTED. Its one-use and off-overflow planning description was independently derived above. Neither global artifact is evidence, a cited result, an assumption source, or authority to change the binding claim.
