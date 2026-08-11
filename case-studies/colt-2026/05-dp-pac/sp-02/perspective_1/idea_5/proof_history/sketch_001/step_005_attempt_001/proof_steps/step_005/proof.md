# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove (PN) for every fixed \(\rho>0\) by a uniform factorization over \(x_\kappa=q_\kappa^b\geq1\), then derive the standard comparison
  \(\delta_\kappa\leq c/[N_\kappa^2\log(eN_\kappa)]\) eventually, explicitly including bounded \(q_\kappa\).
- Dependencies: step_003, step_004.
- Assumptions used: Primitive \(L_\kappa\to\infty\); derived exact privacy schedule and \(N_a\) formula.
- Technical challenge: Control the ceiling and all polynomial factors uniformly without using \(q_\kappa\to\infty\); maintain the every-\(\rho\) quantifier.
- Intended proof tool or cited result: Exponential-versus-polynomial bound, \(1+x+u\leq(1+x)(1+u)\), and \(\log(eN)\leq N\).
- Output target: (PN) and the source-privacy allowance certificate.
- Rate objective: R3: explicit \(\rho,a,\varepsilon_0\) dependence and the bounded-\(q_\kappa\) boundary.
- Row-local review status in the accepted sketch: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\(\ref{assump:polynomial-global-stability}\) supplies one fixed universal integer \(a\geq1\). This step uses it only through \(b=2a+2\); no producer, atom, learner, or stochastic conclusion is used in the privacy limit.
  - The sequence in the formalized goal consists of nonempty finite classes and satisfies
    \(\lvert C_\kappa\rvert\to\infty\). Consequently \(L_\kappa=\log\lvert C_\kappa\rvert\to\infty\). The basic setup gives \(q_\kappa\geq1\) and \(L_\kappa\geq0\).
  - The fixed privacy parameter satisfies \(\varepsilon_0\in(0,1)\). The setting definitions are
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
    Throughout this step,
    \[
    \delta_\kappa:=\delta_a(q_\kappa,L_\kappa),
    \qquad
    N_\kappa:=N_a(q_\kappa,L_\kappa,\varepsilon_0).
    \]
    These are setting-defined expressions, not additional assumptions.
  - The exact superpolynomial premise (SP) is part of the ambient conditional goal, but no \(d_\kappa\)- or \(q_\kappa\)-growth consequence is needed in this step. In particular, no condition \(q_\kappa\to\infty\) is introduced.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\(\ref{lem:step-003-log-correction}\) and Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) supply \(u(L)\geq1\), \(u(L)\to\infty\) as \(L\to\infty\), and the exact identity
    \[
    \delta_a(q,L)=\frac{e^{-q^b}}{\log(e^e+L)}
    =e^{-q^b-u(L)}.
    \]
  - Accepted Proposition~\(\ref{prop:step-004-sample-subpower}\) supplies the exact integer arity
    \[
    N_\kappa=N_a(q_\kappa,L_\kappa,\varepsilon_0)
    =\left\lceil K_a\varepsilon_0^{-2}
      q_\kappa^b(1+T_a(q_\kappa,L_\kappa))\right\rceil
    \]
    and the accepted provenance \(K_a\geq2\), with \(K_a\) depending only on
    \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), not on \(\kappa\), \(q_\kappa\), \(L_\kappa\), \(C_\kappa\), or \(\varepsilon_0\). This step uses the exact formula, not the already-derived \(N_\kappa=o(L_\kappa)\) conclusion.
  - Current accepted dependency hashes are
    \[
    \begin{array}{ll}
    \text{step\_003/proof.md:}&
    \texttt{961ca80cea1a6f1fd8851a7d10d1e3b1e83c682484d4469850fb5e4c1c26c63d},\\
    \text{step\_003/review.md:}&
    \texttt{12003a92f06a646c2c62fcbae378258d07bab2d3ebec103dc4fe0ff1d5d222a6},\\
    \text{step\_004/proof.md:}&
    \texttt{ddf6b5106fb93a642f0c6cebcef1834d8fec4e911411448c5f42431d0b49bc45},\\
    \text{step\_004/review.md:}&
    \texttt{041c5ea10c61035a597a0c12d5fd0a4f1c380c2e1c708cd4e8607c3bf2a58028}.
    \end{array}
    \]
- Local conditional hypotheses:
  - Fix an arbitrary real \(\rho>0\) before taking \(\kappa\to\infty\). The proof establishes the limit separately for each such \(\rho\); it does not claim uniformity over a growing family of \(\rho\)'s.
  - For the boundary audit only, one may additionally suppose \(q_\kappa\leq\bar q<\infty\) on a tail. This is a local conditional specialization, not a theorem-facing assumption, and the main argument is uniform without it.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\(\ref{assump:polynomial-global-stability}\) and accepted Proposition~\(\ref{prop:step-004-sample-subpower}\), for every \(\kappa\), with \(x_\kappa=q_\kappa^b\), \(u_\kappa=u(L_\kappa)\), and \(A_\kappa=K_a\varepsilon_0^{-2}x_\kappa(1+x_\kappa+u_\kappa)\), one has \(A_\kappa\geq6\), \(N_\kappa=\lceil A_\kappa\rceil\geq1\), and \(N_\kappa\leq2A_\kappa\). | Controls the integer ceiling uniformly and fixes the exact scale used in every later inequality. |
| unit_002 | lemma | Under the exact schedule from accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) and Lemma~\(\ref{lem:step-005-ceiling}\), for every fixed \(\rho>0\), \(\delta_\kappa N_\kappa^\rho\) is bounded by \(C_{\rho,\varepsilon_0,K_a}F_\rho(x_\kappa)H_\rho(u_\kappa)\), where \(F_\rho(x)=e^{-x}x^\rho(1+x)^\rho\) and \(H_\rho(u)=e^{-u}(1+u)^\rho\). | Provides the exact two-factor decomposition with no surrogate \(N\) or \(\delta\). |
| unit_003 | lemma | For every fixed \(\rho>0\), \(F_\rho\) has a finite supremum on \([1,\infty)\), with an explicit bound depending only on \(\rho\). | Handles arbitrary fixed, varying, oscillating, bounded, or unbounded \(x_\kappa\) uniformly. |
| unit_004 | proposition | Under \(\lvert C_\kappa\rvert\to\infty\), accepted Lemma~\(\ref{lem:step-003-log-correction}\), Lemma~\(\ref{lem:step-005-factorization}\), and Lemma~\(\ref{lem:step-005-x-supremum}\), for every fixed \(\rho>0\), \(\delta_\kappa N_\kappa^\rho\to0\); the conclusion remains valid on bounded-\(q_\kappa\) tails, including \(q_\kappa\equiv1\). | Proves (PN) with the exact every-\(\rho\) and eventual-tail quantifiers. |
| unit_005 | proposition | Under Proposition~\(\ref{prop:step-005-privacy-negligibility}\), for every fixed \(c>0\), eventually \(\delta_\kappa\leq c/[N_\kappa^2\log(eN_\kappa)]\). | Derives the standard source-allowance comparison by choosing \(\rho=3\), with \(N_\kappa\geq1\) and \(\log(eN_\kappa)\leq N_\kappa\). |

Atomic step = no. The ceiling, factorization, uniform \(x\)-control, \(u\)-decay, and the \(\rho=3\) specialization are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: exact privacy schedule from step_003

Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), with its accepted review, states in current notation that for every \(q\geq1\) and \(L\geq0\),
\[
u(L)\geq1,\qquad
T_a(q,L)=q^b+u(L),\qquad
\delta_a(q,L)=e^{-q^b-u(L)},
\]
and
\[
\log\frac1{\delta_a(q,L)}
=q^{2a+2}+\log\log(e^e+L).
\]
Accepted Lemma~\(\ref{lem:step-003-log-correction}\) additionally proves \(u(L)\to\infty\) as \(L\to\infty\). Its assumptions are the setting domains \(a\geq1\), \(q\geq1\), and \(L\geq0\), all of which hold for the class sequence here. We use these results only as exact scalar identities and a limit source.

### Accepted dependency: exact ceiling formula from step_004

Accepted Proposition~\(\ref{prop:step-004-sample-subpower}\), with its accepted review, states that
\[
N_\kappa
=\left\lceil K_a\varepsilon_0^{-2}q_\kappa^b
  (1+T_a(q_\kappa,L_\kappa))\right\rceil,
\]
where \(K_a\geq2\) is fixed independently of the sequence and class variables, and \(\varepsilon_0\in(0,1)\) is fixed. The proposition also verifies the accepted sample interface, but its separate \(N_\kappa=o(L_\kappa)\) conclusion is not used to prove (PN); the present step derives privacy negligibility directly from the displayed exact \(N_\kappa\).

### Local results used later

- Lemma~\(\ref{lem:step-005-ceiling}\) gives \(A_\kappa\geq6\), \(N_\kappa\geq1\), and \(N_\kappa\leq2A_\kappa\).
- Lemma~\(\ref{lem:step-005-factorization}\) gives the exact \(F_\rho H_\rho\) upper bound.
- Lemma~\(\ref{lem:step-005-x-supremum}\) gives a finite \(B_\rho\) satisfying \(\sup_{x\geq1}F_\rho(x)\leq B_\rho\).
- Proposition~\(\ref{prop:step-005-privacy-negligibility}\) proves the every-fixed-\(\rho\) limit.
- Proposition~\(\ref{prop:step-005-source-allowance}\) proves the standard comparison for every fixed \(c>0\).

No external paper result or unverified probabilistic theorem is invoked in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Uniform control of the exact integer ceiling).** \(\label{lem:step-005-ceiling}\)

Under Assumption~\(\ref{assump:polynomial-global-stability}\) and accepted Proposition~\(\ref{prop:step-004-sample-subpower}\), for every \(\kappa\), define
\[
x_\kappa:=q_\kappa^b,\qquad
u_\kappa:=u(L_\kappa),\qquad
A_\kappa:=K_a\varepsilon_0^{-2}x_\kappa(1+x_\kappa+u_\kappa).
\]
Then
\[
A_\kappa\geq6,\qquad
N_\kappa=\lceil A_\kappa\rceil\geq1,\qquad
N_\kappa\leq2A_\kappa.
\tag{94}
\]

**Proof / justification.** Since \(a\geq1\), \(b=2a+2>0\). The basic setup gives \(q_\kappa\geq1\), hence \(x_\kappa=q_\kappa^b\geq1\). Accepted Lemma~\(\ref{lem:step-003-log-correction}\) gives \(u_\kappa\geq1\), so \(1+x_\kappa+u_\kappa\geq3\). The accepted step_004 constant satisfies \(K_a\geq2\), and \(\varepsilon_0\in(0,1)\) gives \(\varepsilon_0^{-2}\geq1\). Therefore
\[
A_\kappa
=K_a\varepsilon_0^{-2}x_\kappa(1+x_\kappa+u_\kappa)
\geq2\cdot1\cdot1\cdot3=6.
\]
The accepted exact sample formula gives \(N_\kappa=\lceil A_\kappa\rceil\). Thus \(N_\kappa\geq1\), and
\[
N_\kappa\leq A_\kappa+1
\leq A_\kappa+\frac16A_\kappa
\leq2A_\kappa,
\]
where \(A_\kappa\geq6\) was just proved. All inequalities are pointwise in \(\kappa\) and require no limit or behavior assumption on \(q_\kappa\). \(\square\)

### unit_002: lemma

**Lemma (Exact two-factor privacy factorization).** \(\label{lem:step-005-factorization}\)

Under accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), Lemma~\(\ref{lem:step-005-ceiling}\), and a fixed real \(\rho>0\), for every \(\kappa\),
\[
\delta_\kappa N_\kappa^\rho
\leq C_{\rho,\varepsilon_0,K_a}
F_\rho(x_\kappa)H_\rho(u_\kappa),
\tag{95}
\]
where
\[
C_{\rho,\varepsilon_0,K_a}:=(2K_a\varepsilon_0^{-2})^\rho,
\qquad
F_\rho(x):=e^{-x}x^\rho(1+x)^\rho,
\qquad
H_\rho(u):=e^{-u}(1+u)^\rho.
\]

**Proof / justification.** Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) gives
\(\delta_\kappa=e^{-x_\kappa-u_\kappa}\). From Lemma~\(\ref{lem:step-005-ceiling}\),
\[
N_\kappa^\rho
\leq\left[2K_a\varepsilon_0^{-2}
 x_\kappa(1+x_\kappa+u_\kappa)\right]^\rho.
\]
For nonnegative \(x,u\),
\[
1+x+u\leq(1+x)(1+u)
\tag{96}
\]
because the right side equals \(1+x+u+xu\). Combining these two displays with \(\rho>0\), which preserves order under the map \(t\mapsto t^\rho\), yields
\[
\begin{aligned}
\delta_\kappa N_\kappa^\rho
&\leq (2K_a\varepsilon_0^{-2})^\rho
e^{-x_\kappa-u_\kappa}
\left[x_\kappa(1+x_\kappa+u_\kappa)\right]^\rho\\
&\leq (2K_a\varepsilon_0^{-2})^\rho
\left[e^{-x_\kappa}x_\kappa^\rho(1+x_\kappa)^\rho\right]
\left[e^{-u_\kappa}(1+u_\kappa)^\rho\right].
\end{aligned}
\tag{97}
\]
This is (95). It uses the exact \(N_\kappa\) and \(\delta_\kappa\), not asymptotic substitutes, and makes no assertion about convergence of \(x_\kappa\). \(\square\)

### unit_003: lemma

**Lemma (Uniform exponential-polynomial bound in the structural factor).** \(\label{lem:step-005-x-supremum}\)

For every fixed real \(\rho>0\), the function
\[
F_\rho(x)=e^{-x}x^\rho(1+x)^\rho
\]
satisfies
\[
\sup_{x\geq1}F_\rho(x)\leq
B_\rho:=2^\rho e^{-x_\rho}x_\rho^{2\rho}<\infty,
\qquad x_\rho:=\max\{1,2\rho\}.
\tag{98}
\]
Consequently (95) is uniformly controlled in \(x_\kappa=q_\kappa^b\geq1\), whether \(x_\kappa\) is fixed, bounded, oscillatory, or unbounded.

**Proof / justification.** For \(x\geq1\), \(1+x\leq2x\), so
\[
F_\rho(x)\leq2^\rho e^{-x}x^{2\rho}.
\tag{99}
\]
Let \(g_\rho(x)=e^{-x}x^{2\rho}\). On \((0,\infty)\),
\[
g_\rho'(x)=e^{-x}x^{2\rho-1}(2\rho-x).
\tag{100}
\]
If \(2\rho\leq1\), \(g_\rho\) is nonincreasing on \([1,\infty)\), so its maximum there is \(g_\rho(1)\). If \(2\rho>1\), it increases on \([1,2\rho]\) and decreases on \([2\rho,\infty)\), so its maximum there is \(g_\rho(2\rho)\). In both cases the maximum is \(g_\rho(x_\rho)\), and (99) gives (98). This finite \(B_\rho\) depends only on the fixed \(\rho\), not on \(\kappa,q_\kappa,L_\kappa\), or the class sequence. \(\square\)

### unit_004: proposition

**Proposition (Every-fixed-\(\rho\) privacy negligibility, including bounded complexity).** \(\label{prop:step-005-privacy-negligibility}\)

Under Assumption~\(\ref{assump:polynomial-global-stability}\), the primitive condition \(\lvert C_\kappa\rvert\to\infty\), accepted Lemma~\(\ref{lem:step-003-log-correction}\), accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), and Lemmas~\(\ref{lem:step-005-factorization}\)--\(\ref{lem:step-005-x-supremum}\), for every fixed real \(\rho>0\),
\[
\forall \tau>0\ \exists\kappa_0(\rho,\tau)\ \forall\kappa\geq\kappa_0(\rho,\tau):
\qquad
\delta_\kappa N_\kappa^\rho\leq\tau.
\tag{101}
\]
Hence
\[
\forall\rho>0\text{ fixed}:\qquad
\delta_\kappa N_\kappa^\rho\longrightarrow0.
\tag{PN}
\]
This conclusion does not require \(q_\kappa\to\infty\). In particular, if \(q_\kappa\leq\bar q<\infty\) on a tail, including \(q_\kappa\equiv1\), the same conclusion holds.

**Proof / justification.** Since \(\lvert C_\kappa\rvert\to\infty\) and the natural logarithm is increasing and unbounded,
\[
L_\kappa=\log\lvert C_\kappa\rvert\longrightarrow\infty.
\tag{102}
\]
Accepted Lemma~\(\ref{lem:step-003-log-correction}\) therefore gives
\[
u_\kappa=u(L_\kappa)\longrightarrow\infty.
\tag{103}
\]
For \(u\geq1\), the integral comparison
\[
\log u=\int_1^u\frac{dt}{t}
\leq\int_1^u\frac{dt}{\sqrt t}
=2(\sqrt u-1)\leq2\sqrt u
\]
and \(1+u\leq2u\) imply
\[
\log(1+u)\leq\log2+\log u\leq3\sqrt u.
\tag{104}
\]
Thus, whenever \(u\geq36\rho^2\),
\[
\rho\log(1+u)\leq3\rho\sqrt u\leq\frac{u}{2},
\qquad
H_\rho(u)=e^{-u}(1+u)^\rho
\leq e^{-u/2}.
\tag{105}
\]
Let
\[
D_\rho:=C_{\rho,\varepsilon_0,K_a}B_\rho.
\]
By (95) and (98),
\[
\delta_\kappa N_\kappa^\rho
\leq D_\rho\,H_\rho(u_\kappa)
\leq D_\rho e^{-u_\kappa/2}
\tag{106}
\]
whenever \(u_\kappa\geq36\rho^2\). Given \(\tau>0\), define the finite proof-local threshold
\[
U_{\rho,\tau}:=\max\left\{1,\ 36\rho^2,\ 2\log\frac{D_\rho}{\tau}\right\}.
\tag{107}
\]
Because \(u_\kappa\to\infty\), there exists
\(\kappa_0(\rho,\tau)\) such that every
\(\kappa\geq\kappa_0(\rho,\tau)\) has
\(u_\kappa\geq U_{\rho,\tau}\). The last term in the maximum gives
\[
D_\rho e^{-u_\kappa/2}\leq\tau,
\]
so (101) follows. The ratio \(D_\rho/\tau\) is always positive, and (107) always gives \(U_{\rho,\tau}\geq2\log(D_\rho/\tau)\). If \(D_\rho/\tau<1\), that third entry is negative and the desired inequality is already automatic from \(D_\rho e^{-u/2}\leq D_\rho<\tau\) for \(u\geq0\).

For the bounded-complexity boundary, suppose \(q_\kappa\leq\bar q\) on a tail. Then
\(1\leq x_\kappa\leq\bar q^b\), so the uniform bound (98) remains valid (indeed \(F_\rho\) is bounded on this smaller interval), while (103)--(107) still force the independent \(H_\rho(u_\kappa)\) factor to zero. At \(q_\kappa\equiv1\), \(x_\kappa\equiv1\) and the same argument applies exactly. If \(x_\kappa\) oscillates or grows without a limit, (98) controls it pointwise on every index, so no subsequence or convergence assumption is hidden. \(\square\)

### unit_005: proposition

**Proposition (Standard source-allowance comparison).** \(\label{prop:step-005-source-allowance}\)

Under Proposition~\(\ref{prop:step-005-privacy-negligibility}\), for every fixed real \(c>0\), there exists \(\kappa_c\) such that
\[
\forall\kappa\geq\kappa_c:\qquad
\delta_\kappa\leq
\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\tag{108}
\]
The same statement holds on bounded-\(q_\kappa\) tails because Proposition~\(\ref{prop:step-005-privacy-negligibility}\) was proved uniformly in \(x_\kappa\geq1\).

**Proof / justification.** Apply (PN) with the fixed choice \(\rho=3\). For the prescribed \(c>0\), (101) supplies \(\kappa_c=\kappa_0(3,c)\) such that
\[
\delta_\kappa N_\kappa^3\leq c
\quad\text{for every }\kappa\geq\kappa_c.
\tag{109}
\]
Lemma~\(\ref{lem:step-005-ceiling}\) gives the exact integer bound \(N_\kappa\geq1\). For every real \(N\geq1\),
\[
\log(eN)=1+\log N\leq N,
\tag{110}
\]
because \(f(N)=N-1-\log N\) has \(f(1)=0\) and
\(f'(N)=1-N^{-1}\geq0\) on \([1,\infty)\). Therefore, on the tail in (109),
\[
\delta_\kappa
\leq\frac{c}{N_\kappa^3}
\leq\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]
The choice \(\rho=3\) is made only after the every-fixed-\(\rho\) result is established; the extra factor \(N_\kappa\) dominates the logarithm through (110). No behavior of \(q_\kappa\) is used. \(\square\)

## Target-Step Assembly

Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) supplies the exact identity
\(\delta_\kappa=e^{-x_\kappa-u_\kappa}\), while accepted Proposition~\(\ref{prop:step-004-sample-subpower}\) supplies the exact integer \(N_\kappa=\lceil A_\kappa\rceil\) and the class-independent provenance of \(K_a\). Lemma~\(\ref{lem:step-005-ceiling}\) converts that exact ceiling into \(N_\kappa\leq2A_\kappa\) and \(N_\kappa\geq1\) with no asymptotic replacement.

Lemma~\(\ref{lem:step-005-factorization}\) then uses
\(1+x+u\leq(1+x)(1+u)\) to express the exact product \(\delta_\kappa N_\kappa^\rho\) as a constant times \(F_\rho(x_\kappa)H_\rho(u_\kappa)\). Lemma~\(\ref{lem:step-005-x-supremum}\) proves a finite supremum for \(F_\rho\) on the whole domain \(x\geq1\), so this part of the bound is valid for fixed, varying, bounded, oscillatory, or unbounded \(q_\kappa\). Proposition~\(\ref{prop:step-005-privacy-negligibility}\) proves that the independent \(H_\rho(u_\kappa)\) factor vanishes with the exact eventual quantifier for every fixed \(\rho>0\), because \(\lvert C_\kappa\rvert\to\infty\) implies \(u_\kappa\to\infty\). This proves (PN), including the bounded-\(q_\kappa\) boundary.

Finally, Proposition~\(\ref{prop:step-005-source-allowance}\) specializes the already-proved every-\(\rho\) statement at \(\rho=3\). Equations (109)--(110) give the exact eventual comparison
\[
\forall c>0\text{ fixed}\ \exists\kappa_c\ \forall\kappa\geq\kappa_c:
\qquad
\delta_\kappa\leq
\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]
Thus the step exports precisely (PN) and the standard source-privacy allowance certificate, with exact \(\delta_\kappa\) and \(N_\kappa\), and introduces no assumption \(q_\kappa\to\infty\).

## Explicit Rate Audit

- Exposed variables: \(a,b,q_\kappa,L_\kappa,x_\kappa=q_\kappa^b,u_\kappa=u(L_\kappa),T_a,\delta_\kappa,N_\kappa,\varepsilon_0\), every fixed \(\rho>0\), the tolerance \(\tau>0\), and the source-allowance constant \(c>0\). The proof-local quantities \(A_\kappa,F_\rho,H_\rho,B_\rho,C_{\rho,\varepsilon_0,K_a},D_\rho,U_{\rho,\tau}\) are displayed rather than hidden.
- Hidden constants may depend on: For (PN), \(C_{\rho,\varepsilon_0,K_a}=(2K_a\varepsilon_0^{-2})^\rho\), \(B_\rho\), and \(D_\rho\) may depend on the fixed \(\rho\), fixed \(\varepsilon_0\), and \(K_a\); through \(K_a\), this is dependence only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\). The threshold index may depend on the fixed sequence and on \((\rho,\tau)\), as required by the eventual quantifier. The source comparison threshold may additionally depend on the fixed \(c\).
- Hidden constants may not depend on: \(\kappa\), \(X_\kappa\), \(C_\kappa\), \(\lvert C_\kappa\rvert\), \(L_\kappa\), \(q_\kappa\), the behavior or limit of \(q_\kappa\), or any output representation. No bounded-\(q_\kappa\) witness \(\bar q\) is hidden in the uniform constants.
- Fixed quantities: The universal \(a\), hence \(b\) and \(K_a\), and the fixed \(\varepsilon_0\) are held fixed as \(\kappa\to\infty\). For (PN), \(\rho\) is fixed before the limit; \(\tau\) is then arbitrary. For (108), \(\rho=3\) is fixed and \(c>0\) is fixed before choosing \(\kappa_c\).
- Probability mode: Deterministic scalar inequalities and sequence limits. No PAC probability, expectation, conditioning, union bound, or privacy composition across \(\kappa\) is used. The DP/PAC mode of the inherited learner is unchanged and is not reproved here.
- Horizon mode: Sequence-asymptotic, with the exact order
  \[
  \forall\rho>0\ \text{fixed}\ \forall\tau>0\ \exists\kappa_0(\rho,\tau)\
  \forall\kappa\geq\kappa_0:\ \delta_\kappa N_\kappa^\rho\leq\tau.
  \]
  The source comparison has the order
  \[
  \forall c>0\ \exists\kappa_c\ \forall\kappa\geq\kappa_c:
  \delta_\kappa\leq c/[N_\kappa^2\log(eN_\kappa)].
  \]
  No uniform-in-\(\rho\) limit is claimed.
- Norm mode: Scalar privacy product \(\delta_\kappa N_\kappa^\rho\) and scalar privacy-allowance comparison; the learner's population zero-one risk is not altered.
- Admissibility conditions and auxiliary tolerances: \(a\geq1\), \(q_\kappa\geq1\), \(L_\kappa\geq0\), \(\lvert C_\kappa\rvert\to\infty\), \(\varepsilon_0\in(0,1)\), and accepted \(K_a\geq2\). The auxiliary \(\tau>0\) is only the definition of the limit, and \(c>0\) is only the source-allowance comparison parameter.
- Term absorption or simplification inequalities: The ceiling is controlled by (94); the factor split is (96)--(97); \(F_\rho\) is bounded by the derivative calculation (98)--(100); \(H_\rho\) is bounded by (104)--(105); the exact tail threshold is (107); and the standard comparison uses (109)--(110). No polynomial or ceiling term is dropped by prose.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step supplies the exact privacy-negligibility bridge (PN) and the \(\rho=3\) comparison at \(c/[N_\kappa^2\log(eN_\kappa)]\), both for the exact public \(N_\kappa\) and \(\delta_\kappa\).
- Baseline-reduction check: On a bounded-\(q_\kappa\) tail, including \(q_\kappa\equiv1\), \(x_\kappa\) stays in a finite interval while \(u_\kappa\to\infty\), so the same (PN) and source-allowance conclusions hold. This preserves the target boundary rather than replacing it by \(q_\kappa\to\infty\). If the explicit \(u(L)\) factor were removed, a bounded-\(q_\kappa\) sequence would leave \(F_\rho(x_\kappa)\) and the privacy product potentially nonvanishing; the correction is therefore essential to the baseline.

## Blockers

None.

## Notation And Assumption Notes

- \(x_\kappa=q_\kappa^b\) and \(u_\kappa=u(L_\kappa)\) are proof-local aliases for setting-defined expressions. They are used only to expose the factorization; the exported interface remains in the original \((q_\kappa,L_\kappa,N_\kappa,\delta_\kappa)\) notation.
- \(A_\kappa\) is proof-local and is exactly the real quantity inside the accepted ceiling. \(N_\kappa=\lceil A_\kappa\rceil\) is public-facing and retains the setting's exact integer sample size.
- \(F_\rho\) and \(H_\rho\) are appendix-local scalar factors. \(C_{\rho,\varepsilon_0,K_a}\) and \(D_\rho\) are proof-local constants with the displayed provenance; neither hides sequence or cardinality dependence.
- \(x_\rho=\max\{1,2\rho\}\), \(B_\rho\), and \(U_{\rho,\tau}\) are proof-local quantities. \(x_\rho\) and \(B_\rho\) are defined directly by the derivative bound; \(U_{\rho,\tau}\) is derived from \(D_\rho e^{-u/2}\leq\tau\). No free bounded quantity is chosen.
- \(g_\rho(x)=e^{-x}x^{2\rho}\) and \(f(N)=N-1-\log N\) are proof-local one-line calculus auxiliaries used only to certify the finite supremum and \(\log(eN)\leq N\), respectively.
- \(\tau>0\) is a proof-local limit tolerance. The indices \(\kappa_0(\rho,\tau)\) and \(\kappa_c\) are proof-local eventual-tail witnesses produced by \(u_\kappa\to\infty\) and Proposition~\(\ref{prop:step-005-privacy-negligibility}\); they are not exported as theorem constants.
- The optional \(\bar q\) is a proof-local witness only for the bounded-complexity boundary audit. It is not used in the uniform proof and is not exported downstream.
- Assumption provenance is complete: the sequence size divergence and scalar ranges are primitive; the exact \(\delta\) and \(u\)-limit are supplied by accepted step_003; the exact \(N\) and \(K_a\) provenance are supplied by accepted step_004; the ceiling, factorization, finite supremum, \(u\)-decay, and allowance comparison are proved in named local units here. No generated event, learner state, stability invariant, or boundedness condition is assumed.
- Scope and accumulation: The only limit is the pointwise sequence limit \(\kappa\to\infty\) for each fixed \(\rho\). There is no privacy composition over \(\kappa\); the \(x\)-factor is controlled by the finite uniform budget \(B_\rho\), and the independently divergent \(u_\kappa\) factor supplies the vanishing term.
- The accepted global diagnostic was consulted only for planning the split into the \(F_\rho(x_\kappa)\) and \(H_\rho(u_\kappa)\) factors and the \(\rho=3\) comparison. Its paired global_proof_review.md is ACCEPTED (global proof status PARTIAL_BLOCKED), but global_proof.md is not used as proof evidence, a cited result, an assumption source, or authority to change the target claim or dependencies.
