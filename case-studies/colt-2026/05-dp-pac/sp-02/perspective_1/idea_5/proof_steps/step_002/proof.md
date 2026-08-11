# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove `(SC)` by substituting \(m\leq q^a,\eta=q^{-a},\delta=e^{-T_a}\), choose \(K_a\) independent of class/cardinality/\(\varepsilon_0\), and pad the source learner to exactly \(N_a\) records without changing PAC or DP.
- Dependencies: `step_001`.
- Assumptions used: Primitive `assump:polynomial-global-stability` through `step_001`; derived `(BLM)`.
- Technical challenge: Dominate every source logarithm and the \(1/\alpha_0\) term explicitly; handle \(q=1\), \(\varepsilon_0\uparrow1\), ceiling, and unused records.
- Intended proof tool or cited result: Direct inequalities \(a\log q\leq aq^b\), \(q^{2a}\leq q^b\), \(T_a\geq q^b\), and \(\varepsilon^{-1}\leq\varepsilon^{-2}\).
- Output target: `(SC)` and exactly \(N_a\)-sample learner.
- Rate objective: R1: prove the displayed \((q,L,\varepsilon_0)\) dependence and allowed hidden-constant set.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\(\ref{assump:polynomial-global-stability}\), used here only through the accepted output of `step_001`.
  - The basic setup in `setting.md`: \(C\subseteq\{0,1\}^X\) is nonempty and finite,
    \[
    q=q(C)\geq1,\qquad L=\log|C|\geq0,
    \qquad \alpha_0=\beta_0=\frac18,
    \qquad \varepsilon_0\in(0,1).
    \]
    Privacy is symmetric ordered-sample replacement DP, utility is population zero-one risk, and learner outputs lie in \(\mathcal H_X=\{0,1\}^X\) with no properness or computational restriction.
  - The setting-defined expressions
    \[
    b=2a+2,\qquad
    u(L)=\log\log(e^e+L),\qquad
    T_a(q,L)=q^b+u(L),
    \]
    \[
    \delta_a(q,L)=e^{-T_a(q,L)},\qquad
    N_a(q,L,\varepsilon)
    =\left\lceil K_a\varepsilon^{-2}q^b(1+T_a(q,L))\right\rceil.
    \]
    These are definitions, not additional assumptions.
- Derived invariants supplied by accepted dependencies:
  - The accepted dependency Proposition~\(\ref{prop:step-001-binary-private-learner}\) supplies, for each fixed \(C\) and \(\varepsilon_0\), one integer \(n_C\) and one kernel
    \(A_C:Z_X^{n_C}\rightsquigarrow\mathcal H_X\), independent of the realizable distribution, which is arbitrary-output distribution-free realizable \((\alpha_0,\beta_0)\)-PAC and \((\varepsilon_0,\delta_a(q,L))\)-DP, together with the exact raw bound restated below. These are derived objects and conclusions, not primitive conditions.
- Local conditional hypotheses: None.
- Accepted dependency artifacts:
  - `perspective_1/idea_5/proof_steps/step_001/proof.md`, current SHA-256 `7004c0871be76af5f501ac7c0774f1b7aaf859c7c79fa0382f96e10e705ba782`.
  - `perspective_1/idea_5/proof_steps/step_001/review.md`, with `Step-Review Status = ACCEPTED`; its recorded proof SHA-256 matches the current dependency proof.

For the local derivation, abbreviate
\[
T=T_a(q,L),\qquad \delta_C=\delta_a(q,L),
\qquad B_0=\log\frac1{\beta_0}=\log 8,
\]
and define
\[
D_a
=1+a+B_0+\alpha_0^{-1}(a+B_0)
=1+9a+9\log 8.
\tag{16}
\]
Choose once and for all
\[
K_a=\max\{2,C_{\mathrm{BLM}}D_a\}.
\tag{17}
\]
This is a permissible choice in `(PS)`: it depends only on \(a\), the fixed values \(\alpha_0,\beta_0\), and the universal dependency constant \(C_{\mathrm{BLM}}\).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\(\ref{assump:polynomial-global-stability}\), the basic scalar conditions in `setting.md`, and accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\), substituting \(m_C\leq q^a\), \(\eta=q^{-a}\), and \(\delta=e^{-T_a(q,L)}\) into the raw BLM bound gives the first displayed inequality in `(SC)`; with \(D_a\) and \(K_a\) from (16)--(17), every term is explicitly dominated and \(n_C\leq N_a(q,L,\varepsilon_0)\), including at \(q=1\) and uniformly for \(0<\varepsilon_0<1\). | Proves the quantitative specialization, universal constant choice, boundary cases, and integer sample ceiling. |
| `unit_002` | proposition | Under Assumption~\(\ref{assump:polynomial-global-stability}\), accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\), and Lemma~\(\ref{lem:step-002-sc-domination}\), composing \(A_C\) with the projection onto the first \(n_C\) coordinates defines a kernel on exactly \(N_a\) records with unchanged arbitrary-output, distribution-free PAC, and symmetric replacement-DP guarantees. | Proves exact-size padding, including adjacency in used and unused coordinates. |

Atomic step = no. Quantitative domination and preservation under fixed-length padding are logically independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: decoded private learner and raw BLM bound

**Dependency result.** Proposition~\(\ref{prop:step-001-binary-private-learner}\), accepted by the current `step_001` review, states the following in the present notation. Under Assumption~\(\ref{assump:polynomial-global-stability}\), fix a nonempty finite \(C\subseteq\{0,1\}^X\), put \(q=q(C)\) and \(L=\log|C|\), and fix \(\varepsilon_0\in(0,1)\). Then there are an integer \(n_C\) and a kernel
\[
A_C:Z_X^{n_C}\rightsquigarrow\mathcal H_X,
\]
both independent of every realizable distribution \(Q\), such that \(A_C\) is arbitrary-output distribution-free realizable \((\alpha_0,\beta_0)\)-PAC and \((\varepsilon_0,\delta_C)\)-DP, and
\[
n_C\leq C_{\mathrm{BLM}}
\left[
\frac{m_C}{q^{-a}\varepsilon_0}
\log\!\left(\frac1{q^{-a}\beta_0\delta_C}\right)
+
\frac1{\alpha_0\varepsilon_0}
\log\!\left(\frac1{q^{-a}\beta_0}\right)
\right].
\tag{18}
\]
Here \(1\leq m_C\leq q^a\), \(C_{\mathrm{BLM}}\) is universal, and at \(q=1\) the accepted dependency proves \(m_C=1\) and \(q^{-a}=1\).

**Assumption discharge and conclusion used.** Assumption~\(\ref{assump:polynomial-global-stability}\), label recoding, cited-source admissibility, distribution-free quantifier order, and replacement-adjacency compatibility were all discharged inside the accepted dependency. This step uses only the kernel \(A_C\), its integer arity \(n_C\), its PAC and DP conclusions, and (18). It does not invoke Bun--Livni--Moran Theorem 17 directly or add a new external citation.

### Local results used in the assembly

- Lemma~\(\ref{lem:step-002-sc-domination}\) expands both logarithms in (18), dominates every resulting term, fixes the public constant \(K_a\), and proves \(n_C\leq N_a(q,L,\varepsilon_0)\).
- Proposition~\(\ref{prop:step-002-exact-padding}\) composes the accepted dependency learner with an adjacency-preserving prefix projection and proves that the resulting exactly \(N_a\)-input kernel has identical utility and privacy parameters.

## Local Derivation

### unit_001: lemma

**Lemma (Explicit BLM specialization and sample domination).** \(\label{lem:step-002-sc-domination}\)
Under Assumption~\(\ref{assump:polynomial-global-stability}\), the basic scalar conditions in `setting.md`, and accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\), fix a nonempty finite \(C\), set \(q=q(C)\), \(L=\log|C|\), and fix \(\varepsilon_0\in(0,1)\). Let \(A_C\) and its integer sample size \(n_C\) be the accepted dependency outputs. With \(D_a\) and \(K_a\) defined in (16)--(17),
\[
\begin{aligned}
n_C
&\leq \frac{C_{\mathrm{BLM}}}{\varepsilon_0}
\left[
q^{2a}\!\left(a\log q+\log\frac1{\beta_0}+T_a(q,L)\right)
+\frac1{\alpha_0}\!\left(a\log q+\log\frac1{\beta_0}\right)
\right]\\
&\leq K_a\varepsilon_0^{-2}q^b(1+T_a(q,L))
\leq N_a(q,L,\varepsilon_0).
\end{aligned}
\tag{SC-step-002}
\]
The choice of \(K_a\) is independent of \(X,C,Q,q,L,|C|\), the sequence index, and \(\varepsilon_0\). The inequalities remain valid at \(q=1\) and uniformly as \(\varepsilon_0\) approaches \(1\) from below.

**Proof / justification.** Start from (18). Since \(m_C\leq q^a\) and \(\eta=q^{-a}\),
\[
\frac{m_C}{\eta}=m_Cq^a\leq q^{2a}.
\tag{19}
\]
Because \(\delta_C=e^{-T}\) and \(B_0=\log(1/\beta_0)\), both source logarithms expand exactly as
\[
\log\!\left(\frac1{q^{-a}\beta_0\delta_C}\right)
=\log\!\left(\frac{q^ae^T}{\beta_0}\right)
=a\log q+B_0+T,
\tag{20}
\]
\[
\log\!\left(\frac1{q^{-a}\beta_0}\right)
=\log\!\left(\frac{q^a}{\beta_0}\right)
=a\log q+B_0.
\tag{21}
\]
Substituting (19)--(21) into (18) gives the first inequality in `(SC-step-002)` with no logarithm or confidence term omitted.

It remains to dominate its bracket. From \(q\geq1\), \(b=2a+2\), and \(T=q^b+u(L)\),
\[
q^{2a}\leq q^b\leq T,
\qquad
a\log q\leq aq^b\leq aT,
\qquad
q^b\geq1.
\tag{22}
\]
The five summands in the bracket are therefore controlled separately:
\[
q^{2a}T\leq q^bT\leq q^b(1+T),
\tag{23}
\]
\[
aq^{2a}\log q
\leq aq^{2a}T
\leq aq^bT
\leq aq^b(1+T),
\tag{24}
\]
\[
B_0q^{2a}
\leq B_0q^b
\leq B_0q^b(1+T),
\tag{25}
\]
\[
\alpha_0^{-1}a\log q
\leq \alpha_0^{-1}aq^b
\leq \alpha_0^{-1}aq^b(1+T),
\tag{26}
\]
and
\[
\alpha_0^{-1}B_0
\leq \alpha_0^{-1}B_0q^b
\leq \alpha_0^{-1}B_0q^b(1+T).
\tag{27}
\]
Thus, by the explicit definition (16),
\[
q^{2a}(T+a\log q+B_0)
+\alpha_0^{-1}(a\log q+B_0)
\leq D_aq^b(1+T).
\tag{28}
\]
Using (17) and \(0<\varepsilon_0<1\), hence \(\varepsilon_0^{-1}\leq\varepsilon_0^{-2}\), gives
\[
\frac{C_{\mathrm{BLM}}}{\varepsilon_0}D_aq^b(1+T)
\leq K_a\varepsilon_0^{-2}q^b(1+T).
\tag{29}
\]
The integer \(n_C\) supplied by the dependency is therefore at most the real quantity on the right of (29), which is at most its ceiling \(N_a(q,L,\varepsilon_0)\). This proves `(SC-step-002)`.

At \(q=1\), the accepted dependency gives \(m_C=1\) and \(\eta=1\), while \(\log q=0\), \(q^{2a}=q^b=1\), and \(T\geq1\). Hence (19)--(29) remain literal valid inequalities; no division by \(\log q\), no assumption \(q>1\), and no asymptotic argument is used. The inequality \(\varepsilon_0^{-1}\leq\varepsilon_0^{-2}\) holds on the full interval \((0,1)\) and tends to equality as \(\varepsilon_0\uparrow1\), so neither \(K_a\) nor any other constant depends on the distance from \(\varepsilon_0\) to \(1\). \(\square\)

### unit_002: proposition

**Proposition (Exact-size prefix padding preserves PAC and replacement privacy).** \(\label{prop:step-002-exact-padding}\)
Under Assumption~\(\ref{assump:polynomial-global-stability}\), accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\), and Lemma~\(\ref{lem:step-002-sc-domination}\), fix a nonempty finite \(C\), \(L=\log|C|\), and \(\varepsilon_0\in(0,1)\). Put
\[
N=N_a(q(C),L,\varepsilon_0).
\]
Then there is a kernel
\[
M_C:Z_X^N\rightsquigarrow\mathcal H_X
\]
whose input arity is exactly \(N\), which is arbitrary-output distribution-free realizable \((\alpha_0,\beta_0)\)-PAC for \(C\), is \((\varepsilon_0,\delta_a(q(C),L))\)-DP under ordered-sample replacement adjacency, and has no properness or computational restriction.

**Proof / justification.** Lemma~\(\ref{lem:step-002-sc-domination}\) gives \(n_C\leq N\). Let
\[
\pi_{n_C}^N:Z_X^N\to Z_X^{n_C},
\qquad
\pi_{n_C}^N(z_1,\ldots,z_N)=(z_1,\ldots,z_{n_C}),
\tag{30}
\]
be the measurable coordinate projection, and define
\[
M_C=A_C\circ\pi_{n_C}^N.
\tag{31}
\]
Thus \(M_C\) accepts exactly \(N\) records and ignores precisely the final \(N-n_C\) records. If \(N=n_C\), the projection is the identity and \(M_C=A_C\).

Fix any distribution \(Q\) realizable by \(C\). For \(S\sim Q^N\), the prefix \(\pi_{n_C}^N(S)\) has law \(Q^{n_C}\). Consequently the entire output law of \(M_C(S)\), including the internal randomness of \(A_C\), is the same as the output law of \(A_C\) on its original iid input. The accepted dependency's utility conclusion therefore gives
\[
\Pr_{S\sim Q^N,M_C}
\bigl[R_Q(M_C(S))>\alpha_0\bigr]
=
\Pr_{S_0\sim Q^{n_C},A_C}
\bigl[R_Q(A_C(S_0))>\alpha_0\bigr]
\leq\beta_0.
\tag{32}
\]
The same kernel \(M_C\) is used for every realizable \(Q\), because \(A_C\), \(n_C\), \(N\), and the public prefix projection are all fixed before \(Q\) is chosen. Hence (32) is distribution-free realizable PAC, not a family of distribution-dependent learners.

For privacy, let \(S,S'\in Z_X^N\) be replacement-adjacent. Coordinate projection cannot increase the number of differing records, so
\[
\#\{i\leq n_C:S_i\neq S_i'\}\leq
\#\{i\leq N:S_i\neq S_i'\}\leq1.
\tag{33}
\]
Thus \(\pi_{n_C}^N(S)\) and \(\pi_{n_C}^N(S')\) are replacement-adjacent inputs for \(A_C\). For every measurable output event \(E\subseteq\mathcal H_X\), the accepted dependency's DP inequality gives
\[
\begin{aligned}
\Pr[M_C(S)\in E]
&=\Pr[A_C(\pi_{n_C}^N(S))\in E]\\
&\leq e^{\varepsilon_0}
\Pr[A_C(\pi_{n_C}^N(S'))\in E]
+\delta_a(q,L)\\
&=e^{\varepsilon_0}\Pr[M_C(S')\in E]
+\delta_a(q,L).
\end{aligned}
\tag{34}
\]
Interchanging \(S,S'\) gives the reverse inequality. If the unique changed record lies in the unused suffix, then the two prefixes are equal and the two output laws in (34) are identical; if it lies in the used prefix, (33) gives exactly the dependency's replacement-adjacency comparison. Hence arbitrary values, changes, or labels in unused records have no effect on the kernel, and padding incurs zero privacy residual.

Finally, (31) does not alter the output space or impose a representation or computational constraint. Since \(A_C\) is arbitrary-output and may be improper, so is \(M_C\). The PAC parameters \((\alpha_0,\beta_0)\) and DP parameters \((\varepsilon_0,\delta_a(q,L))\) are unchanged. \(\square\)

## Target-Step Assembly

Accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\) supplies one integer-arity learner \(A_C\), uniform over all realizable distributions, with the full two-term raw bound (18), arbitrary output, distribution-free realizable \((\alpha_0,\beta_0)\)-PAC utility, and \((\varepsilon_0,\delta_a(q,L))\)-replacement DP.

Lemma~\(\ref{lem:step-002-sc-domination}\) substitutes
\[
m_C\leq q^a,\qquad
\eta=q^{-a},\qquad
\delta=e^{-T_a(q,L)},
\]
expands both source logarithms exactly, separately controls the \(q^{2a}T_a\), \(q^{2a}a\log q\), \(q^{2a}\log(1/\beta_0)\), \(\alpha_0^{-1}a\log q\), and \(\alpha_0^{-1}\log(1/\beta_0)\) terms, and chooses
\[
K_a=\max\{2,C_{\mathrm{BLM}}[1+a+\log(1/\beta_0)
+\alpha_0^{-1}(a+\log(1/\beta_0))]\}.
\]
It thereby proves the exact `(SC)` chain and \(n_C\leq N_a(q,L,\varepsilon_0)\), with \(K_a\) independent of the class, its cardinality, and \(\varepsilon_0\). Its boundary audit covers \(q=1\), \(\varepsilon_0\uparrow1\), and the outer ceiling.

Proposition~\(\ref{prop:step-002-exact-padding}\) then defines the requested exactly \(N_a\)-record kernel by prefix projection. The iid prefix identity proves zero utility residual, while adjacency preservation under projection proves both DP inequalities; a replacement in an unused coordinate produces identical output laws. Together these named results establish exactly the `step_002` intended claim and output target, without using `(AS)`, `(PN)`, or any downstream conclusion.

## Explicit Rate Audit

- Exposed variables: \(a,q,L,b,u(L),T_a(q,L),m_C,\eta=q^{-a},\alpha_0,\beta_0,\varepsilon_0,\delta_a(q,L),n_C,N_a(q,L,\varepsilon_0),C_{\mathrm{BLM}},D_a\), and \(K_a\).
- Hidden constants may depend on: There is no unnamed asymptotic constant in this step. The inherited \(C_{\mathrm{BLM}}\) is universal; the chosen \(K_a\) depends only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\).
- Hidden constants may not depend on: \(X,C,Q,q,L,|C|,m_C,\eta,\varepsilon_0,\delta_a\), a sequence index, unused-record values, or an output representation.
- Fixed quantities: For one application, \(C\), its accepted dependency learner \(A_C\), the universal profile exponent \(a\), the setting's zero-one loss and replacement-adjacency conventions, and the public values \(\alpha_0=\beta_0=1/8\). The proof is uniform over every \(\varepsilon_0\in(0,1)\).
- Probability mode: PAC high probability jointly over iid data and all learner randomness, with failure at most \(\beta_0\), uniformly over realizable \(Q\). DP is the pointwise pair of kernel inequalities for every replacement-adjacent pair and measurable output event. Padding changes neither mode and uses no union bound or conditioning.
- Horizon mode: Fixed per-class sample size with exact input arity \(N_a\); there is no iterative horizon, stopping rule, or sequence-asymptotic claim.
- Norm mode: Population zero-one risk \(R_Q\). Padding preserves the complete output law on iid data, hence preserves this risk event exactly.
- Admissibility conditions and auxiliary tolerances: \(a\geq1\), \(q\geq1\), \(L\geq0\), \(0<\varepsilon_0<1\), \(m_C\leq q^a\), and the accepted dependency's valid \(\delta_a(q,L)\in(0,1)\). There is no auxiliary tolerance. At \(q=1\), \(m_C=1\) and \(\eta=1\).
- Term absorption or simplification inequalities: Equations (19)--(29) expose the exact logarithm expansions and separately dominate every source term. In particular, no term is dropped by prose, and \(\varepsilon_0^{-1}\leq\varepsilon_0^{-2}\) is the only privacy-factor simplification.
- Probability conversion: The prefix of \(Q^N\) is exactly \(Q^{n_C}\), giving equality of PAC output laws in (32). There is no confidence conversion. Prefix projection maps replacement-adjacent length-\(N\) inputs to replacement-adjacent length-\(n_C\) inputs, giving (34) with the same \(\delta_a\).
- Contribution to any Rate Specialization Bridge: This step proves `(SC)`, fixes the allowed constant dependence, and exports the exactly \(N_a\)-record learner consumed by `step_004` and `step_006`.
- Baseline-reduction check: If \(n_C=N_a\), the padded learner equals the accepted dependency learner. If \(n_C<N_a\), it is exactly that same kernel on the used prefix, so PAC, DP, arbitrary-output scope, and computational scope suffer zero loss. The boundary \(q=1\) is retained, and no condition bounded away from \(\varepsilon_0=1\) is introduced.

## Blockers

None.

## Notation And Assumption Notes

- \(T=T_a(q,L)\) and \(\delta_C=\delta_a(q,L)\) are `proof-local` abbreviations for setting-defined expressions. They introduce no new parameter or assumption.
- \(B_0=\log(1/\beta_0)\) and \(D_a\) from (16) are `appendix-local` bookkeeping constants defined directly from \(a,\alpha_0,\beta_0\). They are used only to display term-by-term domination and need not appear in the public theorem statement.
- \(K_a\) from (17) is `public-facing`. Its provenance is the universal dependency constant \(C_{\mathrm{BLM}}\) and the explicitly derived \(D_a\); it has no hidden class, cardinality, distribution, or \(\varepsilon_0\) dependence.
- \(A_C,n_C,C_{\mathrm{BLM}}\) are `public-facing` accepted dependency outputs. This step does not modify their meaning or rederive the cited theorem behind them.
- \(\pi_{n_C}^N\) is a `proof-local` measurable coordinate projection. The exactly \(N_a\)-input learner \(M_C\) and the inequality `(SC-step-002)` are `public-facing` outputs consumed downstream.
- Constant provenance is complete: \(C_{\mathrm{BLM}}\) is inherited from the accepted dependency; \(B_0,D_a,K_a\) are explicit expressions from accepted or setting quantities; the ceiling contributes no hidden additive constant.
- Assumption provenance is complete: the sole nonstandard primitive condition is Assumption~\(\ref{assump:polynomial-global-stability}\). The raw learner and sample bound are accepted derived conclusions of `step_001`; `(SC)`, the ceiling comparison, and the exact-size learner are proved here. No generated event, boundedness condition, recurrence, stability trajectory, or invariant is assumed.
- The cardinality dependence remains exposed only through the setting expression \(T_a(q,L)=q^b+u(L)\). It is never moved into \(D_a\), \(K_a\), or another hidden constant.
- `global_proof.md` was not consulted for this step; the derivation uses only `setting.md`, the accepted sketch and sketch review, and the current accepted `step_001` dependency pair.
