# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Assemble \(M_\kappa\), `(SC)`, `(LD)`, `(AS)`, and `(PN)` into the exact conditional theorem; use DP monotonicity for \(\bar\delta(N_\kappa)\geq\delta_\kappa\) and contradict every eventual \(\Omega(L_\kappa)\) Item 3 lower bound.
- Dependencies: `step_001`, `step_002`, `step_003`, `step_004`, and `step_005`.
- Assumptions used: Primitive `assump:polynomial-global-stability` and the sequence premises; all listed derived outputs.
- Technical challenge: Preserve unrestricted and distribution-free scope, the exact privacy direction, the universal sequence quantifier, and the conditional progress label.
- Intended proof tool or cited result: Direct theorem assembly, DP monotonicity, and the definition of \(o(\cdot)\) versus \(\Omega(\cdot)\).
- Output target: Conditional universal nonexistence of a sequence satisfying Items 1--3.
- Rate objective: R1--R3: final sample and privacy rates, probability and privacy modes, allowed constant dependence, the standard source allowance, and the bounded-\(q_\kappa\) baseline.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\(\ref{assump:polynomial-global-stability}\): one universal integer \(a\geq1\) supplies the global-stability producer profile. This remains the sole novel theorem-facing hypothesis.
  - The basic setup in `setting.md`: \(\alpha_0=\beta_0=1/8\), a fixed \(\varepsilon_0\in(0,1)\), population zero-one risk, arbitrary output in \(\mathcal H_X=\{0,1\}^X\), and symmetric ordered-sample replacement adjacency.
  - An arbitrary sequence \(\{C_\kappa\}_{\kappa\in\mathbb N}\) of nonempty finite binary classes satisfying
    \[
    |C_\kappa|\longrightarrow\infty
    \]
    and the exact primitive condition
    \[
    \forall p\in\mathbb N\ \exists\kappa_0(p)
    \quad \forall\kappa\geq\kappa_0(p):
    \qquad L_\kappa>d_\kappa^p,
    \tag{SP}
    \]
    where \(L_\kappa=\log|C_\kappa|\). The setting counting fact
    \(\ell_\kappa\leq\log_2|C_\kappa|\) is part of the basic setup.
  - The setting-defined expressions
    \[
    b=2a+2,\qquad
    u(L)=\log\log(e^e+L),\qquad
    T_a(q,L)=q^b+u(L),
    \]
    \[
    \delta_a(q,L)=e^{-T_a(q,L)},\qquad
    N_a(q,L,\varepsilon)
    =\left\lceil K_a\varepsilon^{-2}q^b
      (1+T_a(q,L))\right\rceil.
    \]
    These are definitions, not additional assumptions.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\) supplies the arbitrary-output distribution-free realizable private learner and the raw two-term Bun--Livni--Moran bound.
  - Accepted Lemma~\(\ref{lem:step-002-sc-domination}\) supplies `(SC)` and one common \(K_a\) with the permitted dependence. Accepted Proposition~\(\ref{prop:step-002-exact-padding}\) supplies the exactly \(N_a\)-record learner with unchanged PAC and DP guarantees.
  - Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) supplies the exact parameter \(\delta_a(q,L)\) and `(LD)`.
  - Accepted Proposition~\(\ref{prop:step-004-q-subpower}\), Lemma~\(\ref{lem:step-004-schedule-subpower}\), and Proposition~\(\ref{prop:step-004-sample-subpower}\) supply `(AS)`, including \(N_\kappa/L_\kappa\to0\).
  - Accepted Proposition~\(\ref{prop:step-005-privacy-negligibility}\) supplies `(PN)`. Accepted Proposition~\(\ref{prop:step-005-source-allowance}\) supplies the eventual standard source-allowance comparison.
  - All of these are accepted derived conclusions. None is promoted to a primitive condition, and the final Item 3 contradiction is not assumed by any producer.
- Local conditional hypotheses:
  - For privacy relaxation, a comparison schedule \(\bar\delta\) may satisfy
    \[
    \bar\delta(N_\kappa)\geq\delta_\kappa
    \]
    at one index or on an eventual tail. This is a comparison condition, not a new condition for the exact-\(\delta_\kappa\) learner.
  - For the contradiction argument only, suppose an Item 3 lower bound has witnesses \(c_*>0\) and \(\kappa_*\) such that every eligible learner uses at least \(c_*L_\kappa\) records for every \(\kappa\geq\kappa_*\). These are local contradiction hypotheses, not theorem assumptions.
  - For the standard source allowance, \(c>0\) is an arbitrary fixed comparison constant.
- Accepted dependency artifacts:
  - `perspective_1/idea_5/proof_steps/step_001/proof.md`, SHA-256 `7004c0871be76af5f501ac7c0774f1b7aaf859c7c79fa0382f96e10e705ba782`; paired `review.md`, SHA-256 `23ea8071d8ef32deaa5ca90f353081c3f756ac726e27a3fc4a8c7fe25628476c`, with `Step-Review Status = ACCEPTED`.
  - `perspective_1/idea_5/proof_steps/step_002/proof.md`, SHA-256 `e8d3f9f1387486e5530a08ac208bf2351296402b3aa057618b6a9aedbffccda6`; paired `review.md`, SHA-256 `c63fe051b9cefb5d95e6fea15205e1c1f6a5b1f7feea2e44122699c3476d542f`, with `Step-Review Status = ACCEPTED`.
  - `perspective_1/idea_5/proof_steps/step_003/proof.md`, SHA-256 `961ca80cea1a6f1fd8851a7d10d1e3b1e83c682484d4469850fb5e4c1c26c63d`; paired `review.md`, SHA-256 `12003a92f06a646c2c62fcbae378258d07bab2d3ebec103dc4fe0ff1d5d222a6`, with `Step-Review Status = ACCEPTED`.
  - `perspective_1/idea_5/proof_steps/step_004/proof.md`, SHA-256 `ddf6b5106fb93a642f0c6cebcef1834d8fec4e911411448c5f42431d0b49bc45`; paired `review.md`, SHA-256 `041c5ea10c61035a597a0c12d5fd0a4f1c380c2e1c708cd4e8607c3bf2a58028`, with `Step-Review Status = ACCEPTED`.
  - `perspective_1/idea_5/proof_steps/step_005/proof.md`, SHA-256 `931fca6051a5b77c4329fffe83f573b0b6d7549c5f48cac4258b2f46795ab8b7`; paired `review.md`, SHA-256 `922b2920707ed69a741d964407bb6494b9f7a7486afded9b3fdb21cd493ce8a4`, with `Step-Review Status = ACCEPTED`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\(\ref{assump:polynomial-global-stability}\), the primitive sequence conditions, accepted Lemma~\(\ref{lem:step-002-sc-domination}\), accepted Proposition~\(\ref{prop:step-002-exact-padding}\), and accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), one common \(K_a\) and an indexwise family \(M_\kappa\) exist for every \(\kappa\), with exact arity \(N_\kappa\), arbitrary-output distribution-free realizable \((\alpha_0,\beta_0)\)-PAC utility, \((\varepsilon_0,\delta_\kappa)\)-DP, the displayed sample bound, and exact `(LD)`. | Maps the accepted per-class learner to the given sequence while preserving every pointwise scope and exact parameter, including finite prefixes. |
| `unit_002` | proposition | Under Proposition~\(\ref{prop:step-006-sequence-learners}\) and the accepted `(AS)` and `(PN)` dependency results, the exact quantities attached to this same learner family satisfy \(q_\kappa,T_a,N_\kappa=L_\kappa^{o(1)}\), \(N_\kappa/L_\kappa\to0\), and \(\delta_\kappa N_\kappa^\rho\to0\) for every fixed \(\rho>0\), including bounded-\(q_\kappa\) tails. | Proves that the accepted asymptotic certificates apply to the exact constructed learners and explicitly derives the ratio limit. |
| `unit_003` | lemma | Under Proposition~\(\ref{prop:step-006-sequence-learners}\), if \(\bar\delta(N_\kappa)\geq\delta_\kappa\), then \(M_\kappa\) is \((\varepsilon_0,\bar\delta(N_\kappa))\)-DP in both ordered adjacency directions. Together with accepted Proposition~\(\ref{prop:step-005-source-allowance}\), this gives eventual privacy at \(c/[N_\kappa^2\log(eN_\kappa)]\) for every fixed \(c>0\). | Establishes the exact privacy-monotonicity direction and the standard source-scale eligibility certificate. |
| `unit_004` | proposition | Under Propositions~\(\ref{prop:step-006-sequence-learners}\) and \(\ref{prop:step-006-rate-certificates}\) and Lemma~\(\ref{lem:step-006-privacy-relaxation}\), no arbitrary positive constant \(c_*\) and arbitrary tail \(\kappa_*\) can impose an eventual \(c_*L_\kappa\) sample lower bound on all eligible unrestricted learners at the exact or an eventually larger allowed privacy schedule. | Gives the formal \(o(L_\kappa)\) versus \(\Omega(L_\kappa)\) contradiction on the identical learner, class, risk, adjacency, and sample interface. |

Atomic step = no. Sequence-wise witness selection, exact rate attachment, two-sided privacy relaxation, and the arbitrary-tail lower-bound contradiction are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: arbitrary-output private learner from `step_001`

Accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\) states that, under Assumption~\(\ref{assump:polynomial-global-stability}\), for every nonempty finite \(C\subseteq\{0,1\}^X\), \(q=q(C)\), \(L=\log|C|\), and fixed \(\varepsilon_0\in(0,1)\), there are an integer \(n_C\) and one kernel
\[
A_C:Z_X^{n_C}\rightsquigarrow\mathcal H_X
\]
which are fixed independently of the realizable distribution, such that \(A_C\) is arbitrary-output distribution-free realizable \((\alpha_0,\beta_0)\)-PAC and \((\varepsilon_0,\delta_a(q,L))\)-DP. Its sample size obeys the exact accepted two-term bound
\[
n_C\leq C_{\mathrm{BLM}}
\left[
\frac{m_C}{q^{-a}\varepsilon_0}
\log\!\left(\frac1{q^{-a}\beta_0\delta_a(q,L)}\right)
+
\frac1{\alpha_0\varepsilon_0}
\log\!\left(\frac1{q^{-a}\beta_0}\right)
\right].
\]
The proposition preserves all of \(\mathcal H_X\) as the output space and imposes no computational restriction. The present step does not re-invoke the external Bun--Livni--Moran theorem; it consumes only this accepted dependency interface and the accepted specialization below.

### Accepted dependency: `(SC)`, common \(K_a\), and exact padding from `step_002`

Accepted Lemma~\(\ref{lem:step-002-sc-domination}\) fixes
\[
K_a=\max\{2,C_{\mathrm{BLM}}D_a\},
\qquad
D_a=1+a+\log(1/\beta_0)
+\alpha_0^{-1}\bigl(a+\log(1/\beta_0)\bigr),
\]
so \(K_a\) depends only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), and proves
\[
\begin{aligned}
n_C
&\leq\frac{C_{\mathrm{BLM}}}{\varepsilon_0}
\left[
q^{2a}\left(a\log q+\log\frac1{\beta_0}+T_a(q,L)\right)
+\frac1{\alpha_0}
\left(a\log q+\log\frac1{\beta_0}\right)
\right]\\
&\leq K_a\varepsilon_0^{-2}q^b(1+T_a(q,L))
\leq N_a(q,L,\varepsilon_0).
\end{aligned}
\tag{SC}
\]
Accepted Proposition~\(\ref{prop:step-002-exact-padding}\) then supplies one kernel
\[
M_C:Z_X^{N_a(q,L,\varepsilon_0)}
\rightsquigarrow\mathcal H_X
\]
with exact input arity \(N_a(q,L,\varepsilon_0)\), unchanged arbitrary-output distribution-free realizable \((\alpha_0,\beta_0)\)-PAC utility, and unchanged \((\varepsilon_0,\delta_a(q,L))\)-DP. It remains valid at \(q=1\), for every \(L\geq0\), and for every \(\varepsilon_0\in(0,1)\).

### Accepted dependency: exact privacy schedule from `step_003`

Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) states that, for all \(q\geq1,L\geq0\),
\[
\delta_a(q,L)
=\exp\!\left[-q^{2a+2}-\log\log(e^e+L)\right]
=\frac{e^{-q^b}}{\log(e^e+L)}
\in(0,e^{-2}],
\]
and
\[
\log\frac1{\delta_a(q,L)}
=T_a(q,L)
=q^{2a+2}+\log\log(e^e+L).
\tag{LD}
\]
The same proposition attaches this identical parameter to accepted Proposition~\(\ref{prop:step-002-exact-padding}\). No privacy relaxation or asymptotic substitution is part of this identity.

### Accepted dependency: `(AS)` from `step_004`

Accepted Proposition~\(\ref{prop:step-004-q-subpower}\) states
\[
\forall t>0\ \exists\kappa_q(t)
\quad \forall\kappa\geq\kappa_q(t):
\qquad q_\kappa\leq L_\kappa^t.
\]
Accepted Lemma~\(\ref{lem:step-004-schedule-subpower}\) gives
\[
T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)}.
\]
Accepted Proposition~\(\ref{prop:step-004-sample-subpower}\), for the exact ceiling sample size used here, gives
\[
\forall r>0\ \exists\kappa_N(r)
\quad \forall\kappa\geq\kappa_N(r):
\qquad N_\kappa\leq L_\kappa^r,
\]
and consequently
\[
N_\kappa=L_\kappa^{o(1)},
\qquad
\frac{N_\kappa}{L_\kappa}\longrightarrow0.
\tag{AS}
\]
These results use the exact primitive `(SP)` quantifiers and explicitly include \(d_\kappa=0\), \(\ell_\kappa=0\), bounded \(q_\kappa\), and arbitrary finite prefixes.

### Accepted dependency: `(PN)` and the source allowance from `step_005`

Accepted Proposition~\(\ref{prop:step-005-privacy-negligibility}\) states, for the exact \(\delta_\kappa\) and \(N_\kappa\) above,
\[
\forall\rho>0\text{ fixed}:
\qquad
\delta_\kappa N_\kappa^\rho\longrightarrow0.
\tag{PN}
\]
Its proof is uniform over every possible behavior of \(q_\kappa\geq1\), including constant, bounded nonconvergent, oscillatory, and unbounded sequences. Accepted Proposition~\(\ref{prop:step-005-source-allowance}\) further states that for every fixed \(c>0\) there exists \(\kappa_c\) such that
\[
\forall\kappa\geq\kappa_c:
\qquad
\delta_\kappa
\leq\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\tag{SA}
\]
The dependency derives this from `(PN)` at \(\rho=3\) and the checked elementary inequality \(\log(eN)\leq N\) for \(N\geq1\).

### Assumption discharge and conclusion use

The five current dependency proofs match the proof hashes recorded by their accepted reviews. Assumption~\(\ref{assump:polynomial-global-stability}\) is discharged inside the accepted learner-producing chain; the primitive sequence premises are discharged inside accepted `step_004` and `step_005`. This step uses only the displayed accepted theorem-style conclusions. It introduces no external citation and imports no conclusion as a primitive assumption.

### Local results used in the assembly

- Proposition~\(\ref{prop:step-006-sequence-learners}\) selects the accepted per-class learners along the arbitrary sequence and records the exact pointwise learner, sample, privacy, and utility interface.
- Proposition~\(\ref{prop:step-006-rate-certificates}\) attaches `(AS)` and `(PN)` to those same exact \(N_\kappa,\delta_\kappa\) and explicitly proves \(N_\kappa/L_\kappa\to0\).
- Lemma~\(\ref{lem:step-006-privacy-relaxation}\) proves both DP inequalities at every larger allowed additive parameter and specializes to the standard source allowance.
- Proposition~\(\ref{prop:step-006-omega-contradiction}\) contradicts an arbitrary positive eventual linear lower-bound constant on an arbitrary tail.

## Local Derivation

### unit_001: proposition

**Proposition (Sequence-wise exact private learner family).** \(\label{prop:step-006-sequence-learners}\)
Under Assumption~\(\ref{assump:polynomial-global-stability}\), fix \(\alpha_0=\beta_0=1/8\), \(\varepsilon_0\in(0,1)\), and any sequence \(\{C_\kappa\}_{\kappa\in\mathbb N}\) of nonempty finite binary classes such that \(|C_\kappa|\to\infty\) and, for every \(p\in\mathbb N\), eventually \(L_\kappa>d_\kappa^p\). Under accepted Lemma~\(\ref{lem:step-002-sc-domination}\), accepted Proposition~\(\ref{prop:step-002-exact-padding}\), and accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), there is one constant \(K_a\), depending only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), and for every \(\kappa\) there is a kernel
\[
M_\kappa:
Z_{X_\kappa}^{N_\kappa}
\rightsquigarrow\mathcal H_{X_\kappa},
\qquad
N_\kappa=N_a(q_\kappa,L_\kappa,\varepsilon_0),
\tag{111}
\]
such that:

1. \(M_\kappa\) has exact input arity \(N_\kappa\), arbitrary output in \(\mathcal H_{X_\kappa}\), and no representation or computational restriction.
2. For every \(Q\) realizable by \(C_\kappa\),
   \[
   \Pr_{S\sim Q^{N_\kappa},M_\kappa}
   [R_Q(M_\kappa(S))>\alpha_0]
   \leq\beta_0.
   \tag{112}
   \]
3. \(M_\kappa\) is \((\varepsilon_0,\delta_\kappa)\)-DP in both ordered replacement-adjacency directions, where
   \[
   \delta_\kappa
   =\exp\!\left[-q_\kappa^{2a+2}
     -\log\log(e^e+L_\kappa)\right].
   \tag{113}
   \]
4. The exact privacy logarithm and public sample bound are
   \[
   \log\frac1{\delta_\kappa}
   =q_\kappa^{2a+2}+\log\log(e^e+L_\kappa),
   \tag{114}
   \]
   \[
   \begin{aligned}
   N_\kappa
   &=
   \left\lceil
   K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
   \left(1+q_\kappa^{2a+2}
   +\log\log(e^e+L_\kappa)\right)
   \right\rceil\\
   &\leq
   1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
   \left(1+q_\kappa^{2a+2}
   +\log\log(e^e+L_\kappa)\right).
   \end{aligned}
   \tag{115}
   \]

These conclusions hold for every index, including every finite prefix and the boundary \(q_\kappa=1\).

**Proof / justification.** Assumption~\(\ref{assump:polynomial-global-stability}\) fixes the same universal exponent \(a\) before the sequence and its indices are considered. Accepted Lemma~\(\ref{lem:step-002-sc-domination}\) then fixes one
\[
K_a=\max\{2,C_{\mathrm{BLM}}D_a\}
\]
whose dependence is only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\). In particular, \(K_a\) is independent of \(\kappa,X_\kappa,C_\kappa,L_\kappa,q_\kappa\), every realizable distribution, and \(\varepsilon_0\).

For each \(\kappa\), apply accepted Proposition~\(\ref{prop:step-002-exact-padding}\) to the single class \(C=C_\kappa\), its domain \(X=X_\kappa\), \(q=q_\kappa\), \(L=L_\kappa\), and the common fixed \(\varepsilon_0\). It supplies one exactly
\[
N_a(q_\kappa,L_\kappa,\varepsilon_0)
\]
record kernel \(M_{C_\kappa}\) with the stated arbitrary-output, distribution-free realizable PAC, and replacement-DP interface. Fix one such accepted dependency witness at each natural-number index and set
\[
M_\kappa:=M_{C_\kappa}.
\tag{116}
\]
This is the requested mapping from the per-class learners to the given sequence. It is an indexwise selection of the dependency witnesses, not a coupling of their internal randomness, and no \(M_\kappa\) depends on the realizable distribution \(Q\). The formalized conclusion requires one learner at each index, exactly as in (116).

Equation (112) is the dependency's distribution-free utility conclusion with the exact arity in (111). The dependency also proves both DP inequalities at \(\delta_a(q_\kappa,L_\kappa)\). Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) identifies this same parameter with (113) and gives (114) without changing the learner or relaxing privacy.

Finally, substitute \(b=2a+2\) and
\[
T_a(q_\kappa,L_\kappa)
=q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)
\]
into the exact definition of \(N_a\) to obtain the equality in (115). The elementary ceiling inequality \(\lceil x\rceil\leq x+1\) gives its second line. Because every class is nonempty and finite, \(L_\kappa\geq0\) and \(q_\kappa\geq1\) at every index. The accepted dependencies are valid on this full domain, including \(q_\kappa=1\) and \(L_\kappa=0\), so no asymptotic tail is needed for the pointwise construction. \(\square\)

### unit_002: proposition

**Proposition (Exact rate certificates for the constructed learner family).** \(\label{prop:step-006-rate-certificates}\)
Under Proposition~\(\ref{prop:step-006-sequence-learners}\), accepted Proposition~\(\ref{prop:step-004-q-subpower}\), accepted Lemma~\(\ref{lem:step-004-schedule-subpower}\), accepted Proposition~\(\ref{prop:step-004-sample-subpower}\), and accepted Proposition~\(\ref{prop:step-005-privacy-negligibility}\), the exact quantities in (111)--(115) satisfy
\[
q_\kappa=L_\kappa^{o(1)},
\qquad
T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)},
\tag{117}
\]
\[
N_\kappa=L_\kappa^{o(1)},
\qquad
\frac{N_\kappa}{L_\kappa}\longrightarrow0,
\tag{118}
\]
and, for every fixed real \(\rho>0\),
\[
\delta_\kappa N_\kappa^\rho\longrightarrow0.
\tag{119}
\]
The conclusions hold without assuming \(q_\kappa\to\infty\); in particular they remain true when \(q_\kappa\) is bounded, constant, or oscillatory. Arbitrary finite prefixes do not affect any of the limits.

**Proof / justification.** Proposition~\(\ref{prop:step-006-sequence-learners}\) uses exactly the setting quantities \(q_\kappa,L_\kappa,T_a(q_\kappa,L_\kappa),N_a(q_\kappa,L_\kappa,\varepsilon_0)\), and \(\delta_a(q_\kappa,L_\kappa)\) that appear in the accepted dependency statements. Thus there is no proxy sample size, privacy parameter, or class sequence to transfer.

Accepted Proposition~\(\ref{prop:step-004-q-subpower}\) and Lemma~\(\ref{lem:step-004-schedule-subpower}\) give (117). Accepted Proposition~\(\ref{prop:step-004-sample-subpower}\) gives, for every \(r>0\), an index \(\kappa_N(r)\) such that
\[
N_\kappa\leq L_\kappa^r
\qquad(\kappa\geq\kappa_N(r)).
\tag{120}
\]
This is the every-exponent statement \(N_\kappa=L_\kappa^{o(1)}\). To prove the ratio in (118) explicitly, take \(r=1/2\) in (120). Since \(|C_\kappa|\to\infty\), one has \(L_\kappa\to\infty\), so on a common tail
\[
0\leq\frac{N_\kappa}{L_\kappa}
\leq L_\kappa^{-1/2}
\longrightarrow0.
\tag{121}
\]
This proves \(N_\kappa=o(L_\kappa)\) directly.

Accepted Proposition~\(\ref{prop:step-005-privacy-negligibility}\) applies to the exact pair (113), (115) and yields (119) for every fixed \(\rho>0\). It is uniform in \(x_\kappa=q_\kappa^b\geq1\), so no convergence of \(q_\kappa\) is required.

For the bounded-complexity boundary, if \(q_\kappa\leq\bar q\) on a tail, accepted Proposition~\(\ref{prop:step-004-sample-subpower}\) gives the direct bound
\[
N_\kappa
\leq1+K_a\varepsilon_0^{-2}\bar q^b
\bigl(1+\bar q^b+u(L_\kappa)\bigr),
\]
whose ratio to \(L_\kappa\) tends to zero. Accepted Proposition~\(\ref{prop:step-005-privacy-negligibility}\) controls the \(q_\kappa\)-dependent factor uniformly while \(u(L_\kappa)\to\infty\), so (119) also remains valid. This includes \(q_\kappa\equiv1\). All assertions in (117)--(119) are eventual statements; deleting or changing finitely many initial indices does not change them, while Proposition~\(\ref{prop:step-006-sequence-learners}\) still supplies a legal learner on every such initial index. \(\square\)

### unit_003: lemma

**Lemma (Two-sided privacy relaxation and source-scale eligibility).** \(\label{lem:step-006-privacy-relaxation}\)
Under Proposition~\(\ref{prop:step-006-sequence-learners}\), fix an index \(\kappa\). If an allowed additive privacy parameter satisfies
\[
\bar\delta(N_\kappa)\geq\delta_\kappa,
\tag{122}
\]
then the same kernel \(M_\kappa\) is
\((\varepsilon_0,\bar\delta(N_\kappa))\)-DP under the setting's symmetric ordered-sample replacement adjacency. The conclusion includes equality in (122), and no privacy conclusion in the reverse direction is asserted when \(\bar\delta(N_\kappa)<\delta_\kappa\).

Moreover, under accepted Proposition~\(\ref{prop:step-005-source-allowance}\), for every fixed \(c>0\) there exists \(\kappa_c\) such that, for all \(\kappa\geq\kappa_c\), the same \(M_\kappa\) is
\[
\left(\varepsilon_0,
\frac{c}{N_\kappa^2\log(eN_\kappa)}
\right)\text{-DP}.
\tag{123}
\]

**Proof / justification.** Let \(S,S'\in Z_{X_\kappa}^{N_\kappa}\) be replacement-adjacent and let \(E\subseteq\mathcal H_{X_\kappa}\) be measurable. Proposition~\(\ref{prop:step-006-sequence-learners}\) gives
\[
\Pr[M_\kappa(S)\in E]
\leq e^{\varepsilon_0}\Pr[M_\kappa(S')\in E]
+\delta_\kappa.
\]
Using (122) in the valid direction gives
\[
\Pr[M_\kappa(S)\in E]
\leq e^{\varepsilon_0}\Pr[M_\kappa(S')\in E]
+\bar\delta(N_\kappa).
\tag{124}
\]
The dependency DP guarantee also gives the reverse ordered inequality
\[
\Pr[M_\kappa(S')\in E]
\leq e^{\varepsilon_0}\Pr[M_\kappa(S)\in E]
+\delta_\kappa
\leq e^{\varepsilon_0}\Pr[M_\kappa(S)\in E]
+\bar\delta(N_\kappa).
\tag{125}
\]
Equations (124)--(125) prove symmetric replacement DP at the larger allowance. The learner, output space, sample count, risk metric, and adjacency relation do not change; only the allowed additive privacy slack increases.

Accepted Proposition~\(\ref{prop:step-005-source-allowance}\) states that, for every fixed \(c>0\), eventually
\[
\delta_\kappa
\leq\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]
Apply (124)--(125) with this quantity as \(\bar\delta(N_\kappa)\) to obtain (123). At the exact schedule \(\bar\delta(N_\kappa)=\delta_\kappa\), no tail comparison is needed: Proposition~\(\ref{prop:step-006-sequence-learners}\) gives privacy at every index. If a comparison schedule dominates \(\delta_\kappa\) only after some index, the conclusion holds on precisely that tail; any earlier failure of the comparison is irrelevant to an eventual lower bound. \(\square\)

### unit_004: proposition

**Proposition (Sublogarithmic learners contradict every eventual linear lower bound).** \(\label{prop:step-006-omega-contradiction}\)
Under Propositions~\(\ref{prop:step-006-sequence-learners}\) and \(\ref{prop:step-006-rate-certificates}\) and Lemma~\(\ref{lem:step-006-privacy-relaxation}\), consider either:

1. the exact privacy schedule \(\delta_\kappa\); or
2. an allowed schedule \(\bar\delta\) for which there exists \(\kappa_{\mathrm{priv}}\) such that
   \[
   \bar\delta(N_\kappa)\geq\delta_\kappa
   \qquad(\kappa\geq\kappa_{\mathrm{priv}}).
   \tag{126}
   \]

Then there do not exist a constant \(c_*>0\) and an index \(\kappa_*\) such that, for every \(\kappa\geq\kappa_*\), every arbitrary-output, computationally unrestricted, distribution-free realizable \((\alpha_0,\beta_0)\)-PAC learner for \(C_\kappa\) that is \((\varepsilon_0,\delta_\kappa)\)-DP in case 1 or \((\varepsilon_0,\bar\delta(N_\kappa))\)-DP in case 2 must use at least
\[
c_*L_\kappa
\tag{127}
\]
records. Equivalently, the sequence has no eventual \(\Omega(L_\kappa)\) Item 3 lower bound on this identical unrestricted learner interface.

**Proof / justification.** Fix an arbitrary positive candidate lower-bound constant \(c_*>0\) and an arbitrary candidate tail index \(\kappa_*\). In case 1, set \(\kappa_{\mathrm{priv}}=0\); in case 2, use the tail from (126). Proposition~\(\ref{prop:step-006-rate-certificates}\) gives
\[
\frac{N_\kappa}{L_\kappa}\longrightarrow0.
\]
Therefore there exists \(\kappa_{\mathrm{rate}}(c_*)\) such that
\[
N_\kappa<c_*L_\kappa
\qquad
(\kappa\geq\kappa_{\mathrm{rate}}(c_*)).
\tag{128}
\]
The ratio is legal on this tail because \(L_\kappa\to\infty\), so in particular \(L_\kappa>0\) eventually.

Choose any
\[
\kappa\geq
\max\{\kappa_*,\kappa_{\mathrm{priv}},
\kappa_{\mathrm{rate}}(c_*)\}.
\tag{129}
\]
Proposition~\(\ref{prop:step-006-sequence-learners}\) supplies an arbitrary-output, computationally unrestricted, distribution-free realizable \((\alpha_0,\beta_0)\)-PAC learner \(M_\kappa\) using exactly \(N_\kappa\) records. It is private at the exact schedule in case 1. In case 2, Lemma~\(\ref{lem:step-006-privacy-relaxation}\) and (126) make the same kernel eligible at \(\bar\delta(N_\kappa)\). Thus the hypothetical lower bound (127) applies to \(M_\kappa\) and gives
\[
N_\kappa\geq c_*L_\kappa,
\]
which contradicts (128).

Because \(c_*>0\) and \(\kappa_*\) were arbitrary, no positive eventual \(\Omega\)-constant on any proposed tail can survive. For the standard displayed source allowance, take
\[
\bar\delta(N_\kappa)
=\frac{c}{N_\kappa^2\log(eN_\kappa)}
\]
and use the eventual comparison supplied by Lemma~\(\ref{lem:step-006-privacy-relaxation}\). The proof is unchanged on bounded-\(q_\kappa\) sequences because Proposition~\(\ref{prop:step-006-rate-certificates}\) retains (118)--(119) there. Finite prefixes are irrelevant because both the privacy comparison and the lower bound are eventual, while the exact learner exists at every index. \(\square\)

## Target-Step Assembly

Fix an arbitrary \(\varepsilon_0\in(0,1)\) and an arbitrary sequence of nonempty finite classes satisfying \(|C_\kappa|\to\infty\) and exact `(SP)`. Under Assumption~\(\ref{assump:polynomial-global-stability}\), accepted Proposition~\(\ref{prop:step-001-binary-private-learner}\) supplies the unrestricted private-learning interface, and accepted Lemma~\(\ref{lem:step-002-sc-domination}\) proves `(SC)` with one \(K_a\) depending only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\). Accepted Proposition~\(\ref{prop:step-002-exact-padding}\) gives the exact sample arity. Proposition~\(\ref{prop:step-006-sequence-learners}\) applies those per-class outputs at every index and defines one family \(M_\kappa\) with
\[
M_\kappa:
Z_{X_\kappa}^{N_\kappa}
\rightsquigarrow\mathcal H_{X_\kappa},
\]
arbitrary output, no computational restriction, distribution-free realizable \((1/8,1/8)\)-PAC utility, and \((\varepsilon_0,\delta_\kappa)\)-DP, where
\[
\begin{aligned}
N_\kappa
&=N_a(q_\kappa,L_\kappa,\varepsilon_0)\\
&\leq
1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}
+\log\log(e^e+L_\kappa)\right),
\end{aligned}
\]
\[
\delta_\kappa
=\exp\!\left[-q_\kappa^{2a+2}
-\log\log(e^e+L_\kappa)\right].
\]
Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), as recorded in Proposition~\(\ref{prop:step-006-sequence-learners}\), gives the exact `(LD)` identity
\[
\log(1/\delta_\kappa)
=q_\kappa^{2a+2}+\log\log(e^e+L_\kappa).
\]

Proposition~\(\ref{prop:step-006-rate-certificates}\) consumes the accepted `(AS)` and `(PN)` results on these exact quantities and proves
\[
N_\kappa=L_\kappa^{o(1)}=o(L_\kappa),
\qquad
\forall\rho>0\text{ fixed}:
\quad\delta_\kappa N_\kappa^\rho\to0.
\]
Its displayed inequality (121) explicitly proves \(N_\kappa/L_\kappa\to0\). The same proposition records that bounded, constant, or oscillatory \(q_\kappa\) is included and that arbitrary finite prefixes do not affect the limits.

Lemma~\(\ref{lem:step-006-privacy-relaxation}\) proves privacy monotonicity only in the valid direction:
\[
\bar\delta(N_\kappa)\geq\delta_\kappa
\quad\Longrightarrow\quad
(\varepsilon_0,\delta_\kappa)\text{-DP}
\Longrightarrow
(\varepsilon_0,\bar\delta(N_\kappa))\text{-DP},
\]
with both ordered adjacency inequalities checked. In particular, for every fixed \(c>0\), the same learner is eventually private at
\[
\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]

Finally, Proposition~\(\ref{prop:step-006-omega-contradiction}\) fixes an arbitrary positive \(\Omega\)-constant and an arbitrary proposed lower-bound tail, moves to a common tail on which the privacy comparison and \(N_\kappa<c_*L_\kappa\) both hold, and contradicts the lower bound with this exact eligible learner. Since the original class sequence was arbitrary, no sequence satisfying the primitive size and `(SP)` premises can also satisfy Item 3 at the exact schedule, at any eventually larger allowed schedule, or at the standard displayed source allowance.

This is exactly the formalized theorem, with progress type `conditional`. The proof does not establish Assumption~\(\ref{assump:polynomial-global-stability}\), does not claim an unconditional resolution of the open problem, and does not add properness, representation, computational, distributional, or bounded-\(q_\kappa\) restrictions.

## Explicit Rate Audit

- Exposed variables: \(a,b,\alpha_0,\beta_0,\varepsilon_0,C_{\mathrm{BLM}},K_a\); \(C_\kappa,X_\kappa,L_\kappa,d_\kappa,\ell_\kappa,s_\kappa,q_\kappa\); \(u(L_\kappa),T_a(q_\kappa,L_\kappa),\delta_\kappa,N_\kappa\); every fixed \(\rho>0\); a comparison schedule \(\bar\delta\); the standard allowance constant \(c>0\); and the hypothetical lower-bound witnesses \(c_*>0,\kappa_*\).
- Hidden constants may depend on: \(K_a\) depends only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\). Eventual thresholds may depend on the fixed class sequence, fixed \(\varepsilon_0\), the requested exponent or \(\rho\), the limit tolerance, the comparison constant \(c\), and the hypothetical lower-bound constant \(c_*\).
- Hidden constants may not depend on: \(K_a\) does not depend on \(\kappa,X_\kappa,C_\kappa,|C_\kappa|,L_\kappa,q_\kappa\), any realizable distribution, \(\varepsilon_0\), or an output representation. No asymptotic multiplicative constant is permitted to depend on the varying index or class quantities.
- Fixed quantities: The universal \(a\), hence \(b\) and \(K_a\), the fixed values \(\alpha_0=\beta_0=1/8\), the fixed \(\varepsilon_0\), and the arbitrary class sequence are fixed while \(\kappa\to\infty\). For `(PN)`, \(\rho\) is fixed before the limit. For the standard comparison and contradiction, \(c\) and \(c_*\) are fixed before their tail indices are selected.
- Probability mode: PAC utility holds with failure probability at most \(\beta_0\), jointly over the iid sample and all learner randomness, uniformly for every realizable \(Q\). DP is the pointwise pair of kernel inequalities for every adjacent ordered sample pair and every measurable output event. `(AS)`, `(PN)`, privacy comparison, and the lower-bound contradiction are deterministic sequence statements; there is no union bound or privacy composition over \(\kappa\).
- Horizon mode: Exact fixed arity \(N_\kappa\) for every class, followed by eventual sequence comparisons. The pointwise learner exists on every finite prefix. No stopping time, recurrence, or all-time stochastic process is present.
- Norm mode: Population zero-one risk \(R_Q\) for utility; scalar sample ratio \(N_\kappa/L_\kappa\); scalar privacy product \(\delta_\kappa N_\kappa^\rho\); and the exact symmetric replacement-DP metric.
- Admissibility conditions and auxiliary tolerances: Nonempty finite classes, \(|C_\kappa|\to\infty\), exact `(SP)`, \(\ell_\kappa\leq\log_2|C_\kappa|\), \(a\geq1\), and \(\varepsilon_0\in(0,1)\). The comparison condition is only \(\bar\delta(N_\kappa)\geq\delta_\kappa\) on the relevant indices. Limit tolerances and the constants \(c,c_*\) are proof parameters, not theorem assumptions.
- Term absorption or simplification inequalities: Accepted `(SC)` contains every source-term domination. Equation (115) uses only \(\lceil x\rceil\leq x+1\). Equation (121) derives \(N_\kappa/L_\kappa\to0\) from the accepted every-exponent estimate at \(r=1/2\). Equations (124)--(125) prove both privacy directions under \(\delta_\kappa\leq\bar\delta(N_\kappa)\). Equations (128)--(129) compare the exact learner arity with an arbitrary positive eventual linear lower-bound constant.
- Probability conversion: None. Padding and recoding were already proved as exact zero-residual operations in accepted dependencies. Privacy relaxation changes only the allowed additive DP parameter and uses no probability event conversion.
- Contribution to any Rate Specialization Bridge: This step is the final public bridge assembling accepted `(SC)`, `(LD)`, `(AS)`, and `(PN)` into the exact conditional theorem, the standard source allowance, and the Item 3 contradiction.
- Baseline-reduction check: The learner retains exact arbitrary-output binary risk, fixed \((1/8,1/8,\varepsilon_0)\), exact sample arity, and both DP directions. At bounded \(q_\kappa\), including \(q_\kappa\equiv1\), the accepted \(u(L_\kappa)\) mechanism still gives \(N_\kappa=o(L_\kappa)\) and `(PN)`. Equality \(\bar\delta=\delta_\kappa\) and every larger allowance use the same learner; no reverse privacy implication is claimed. Finite prefixes remain pointwise valid and do not alter eventual statements.

## Blockers

None.

## Notation And Assumption Notes

- \(a,b,\alpha_0,\beta_0,\varepsilon_0,K_a,L_\kappa,d_\kappa,\ell_\kappa,s_\kappa,q_\kappa,u,T_a,\delta_\kappa,N_\kappa\) are `public-facing` setting-defined or accepted-dependency quantities. Their meanings are unchanged.
- \(M_\kappa\) is `public-facing`. It is the indexwise specialization \(M_{C_\kappa}\) of accepted Proposition~\(\ref{prop:step-002-exact-padding}\), with no distribution-dependent choice and no cross-index randomness requirement.
- The comparison schedule \(\bar\delta\) and the standard expression \(c/[N_\kappa^2\log(eN_\kappa)]\) are `public-facing` only in the theorem's privacy-comparison clause. They do not replace the exact constructed \(\delta_\kappa\).
- The tail witnesses \(\kappa_{\mathrm{priv}},\kappa_{\mathrm{rate}}(c_*),\kappa_c,\kappa_*\) and constants \(c,c_*\) used in comparisons are `proof-local`. Their provenance is, respectively, the stated eventual privacy comparison, the accepted ratio limit, accepted Proposition~\(\ref{prop:step-005-source-allowance}\), and the local contradiction hypothesis.
- No new hidden constant, threshold, rate, event, generated state, boundedness condition, recurrence, stability trajectory, or invariant is introduced. \(K_a\) is inherited from accepted Lemma~\(\ref{lem:step-002-sc-domination}\); every other threshold is produced by an accepted limit or a displayed local comparison.
- Assumption provenance is complete: Assumption~\(\ref{assump:polynomial-global-stability}\), the fixed parameter ranges, finiteness, size divergence, and `(SP)` are primitive. The learner, `(SC)`, `(LD)`, `(AS)`, `(PN)`, and source-allowance certificate are accepted derived conclusions. The larger-\(\delta\) condition and the hypothetical \(\Omega\)-lower-bound witnesses are local conditional hypotheses used only in their comparison and contradiction units. The final nonexistence conclusion is derived and is never assumed.
- The accepted global diagnostic was read only with its paired `global_proof_review.md`, whose `Global-Proof Review Status = ACCEPTED`. Its G6 discussion suggested separating sequence-wise instantiation, two-sided privacy monotonicity, source-allowance eligibility, and the arbitrary-tail \(o(L)\)-versus-\(\Omega(L)\) contradiction. Those ideas were used only to plan the local units. `global_proof.md` was not used as proof evidence, a cited result, an assumption source, or authority to change the target claim, dependencies, scope, progress label, or conclusion.
