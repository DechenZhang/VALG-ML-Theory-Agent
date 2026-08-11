# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: From \(\lvert C_\kappa\rvert\to\infty\), exact `(SP)`, and \(\ell_\kappa\leq\log_2\lvert C_\kappa\rvert\), prove for every \(t>0\) eventually \(q_\kappa\leq L_\kappa^t\), then prove `(AS)`: \(T_a,N_a=L_\kappa^{o(1)}\) and \(N_a=o(L_\kappa)\).
- Dependencies: `step_002`, `step_003`.
- Assumptions used: Primitive sequence premises from the formalized goal; standard finite-class counting in `setting.md`; derived explicit formulas.
- Technical challenge: Preserve quantifier order; separately control VC and iterated-log Littlestone dimension; propagate subpower rates through sums, products, fixed powers, and the ceiling; cover \(d=0\) and bounded \(q\).
- Intended proof tool or cited result: Direct exponent allocation and elementary log/log-star growth.
- Output target: `(AS)` and the sublogarithmic sample certificate.
- Rate objective: R2: sequence-asymptotic structural dependence with all fixed and hidden quantities stated.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\(\ref{assump:polynomial-global-stability}\) supplies one fixed universal integer \(a\geq1\). In this step it is used only to fix \(b=2a+2\) and, through the accepted `step_002` dependency, the constant \(K_a\). No producer, learner, event, or stochastic conclusion is used to derive the sequence asymptotics.
  - Fix \(\varepsilon_0\in(0,1)\). Let \(\{C_\kappa\}_{\kappa\in\mathbb N}\) be a sequence of nonempty finite binary classes satisfying
    \[
    |C_\kappa|\longrightarrow\infty,
    \qquad
    \forall p\in\mathbb N\ \exists\kappa_0(p)\ \forall\kappa\geq\kappa_0(p):
    \quad L_\kappa>d_\kappa^p,
    \tag{SP}
    \]
    where \(L_\kappa=\log|C_\kappa|\), and use the setting counting bound
    \[
    0\leq\ell_\kappa\leq\log_2|C_\kappa|
    =\frac{L_\kappa}{\log 2}.
    \]
    These are primitive hypotheses of the formalized goal and a basic setup fact, not generated invariants.
  - The logarithm conventions and setting definitions are
    \[
    s_\kappa=1+\log^*(1+\ell_\kappa),
    \quad q_\kappa=d_\kappa+s_\kappa,
    \quad u(L)=\log\log(e^e+L),
    \]
    \[
    T_a(q,L)=q^b+u(L),
    \qquad
    N_a(q,L,\varepsilon)
    =\left\lceil K_a\varepsilon^{-2}q^b(1+T_a(q,L))\right\rceil.
    \]
    Here \(\log\) is natural logarithm and \(\log^*\) is base-two iterated logarithm.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\(\ref{lem:step-002-sc-domination}\) fixes
    \(K_a=\max\{2,C_{\mathrm{BLM}}D_a\}\), depending only on
    \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), and accepted Proposition~\(\ref{prop:step-002-exact-padding}\) uses the exact sample arity \(N_a(q,L,\varepsilon_0)\). This step consumes only the fixedness of \(K_a\) and the exact displayed formula for \(N_a\).
  - Accepted Lemma~\(\ref{lem:step-003-log-correction}\) supplies the full domain and lower bound \(u(L)\geq1\) for \(L\geq0\). Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) supplies the exact identity \(T_a(q,L)=q^b+u(L)\), with \(b=2a+2\), for all \(q\geq1,L\geq0\).
- Local conditional hypotheses:
  - None is used for the unconditional target. For the bounded-complexity boundary audit only, the proof considers the optional tail condition \(q_\kappa\leq\bar q<\infty\). The witness \(\bar q\) is proof-local and is not used in the main assembly.
- Accepted dependency artifacts:
  - `perspective_1/idea_5/proof_steps/step_002/proof.md`, current SHA-256 `e8d3f9f1387486e5530a08ac208bf2351296402b3aa057618b6a9aedbffccda6`.
  - `perspective_1/idea_5/proof_steps/step_002/review.md`, with `Step-Review Status = ACCEPTED` and a matching recorded proof hash.
  - `perspective_1/idea_5/proof_steps/step_003/proof.md`, current SHA-256 `961ca80cea1a6f1fd8851a7d10d1e3b1e83c682484d4469850fb5e4c1c26c63d`.
  - `perspective_1/idea_5/proof_steps/step_003/review.md`, with `Step-Review Status = ACCEPTED` and a matching recorded proof hash.

Since \(|C_\kappa|\to\infty\) and natural logarithm is increasing and unbounded,
\[
L_\kappa=\log|C_\kappa|\longrightarrow\infty.
\tag{57}
\]
Thus every proof below may enlarge its index threshold so that \(L_\kappa\geq1\). This affects only a finite prefix.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the primitive size-divergence and counting conditions above, for every \(r>0\) there is \(\kappa_s(r)\) such that \(s_\kappa\leq L_\kappa^r\) for all \(\kappa\geq\kappa_s(r)\). The proof uses the base-two convention explicitly and includes \(\ell_\kappa=0\). | Separately controls the iterated-log Littlestone contribution by an every-exponent statement. |
| `unit_002` | proposition | Under exact `(SP)`, the primitive size-divergence and counting conditions, and Lemma~\(\ref{lem:step-004-iterated-log-subpower}\), for every \(t>0\) there is \(\kappa_q(t)\) such that \(q_\kappa\leq L_\kappa^t\) for every \(\kappa\geq\kappa_q(t)\). This includes \(d_\kappa=0\) and does not assume \(q_\kappa\to\infty\). | Proves the binding every-exponent claim with the exact `(SP)` quantifier order. |
| `unit_003` | lemma | Under Assumption~\(\ref{assump:polynomial-global-stability}\), accepted Lemma~\(\ref{lem:step-003-log-correction}\), accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), and Proposition~\(\ref{prop:step-004-q-subpower}\), for every \(r>0\), eventually \(u(L_\kappa)\leq L_\kappa^r\) and \(T_a(q_\kappa,L_\kappa)\leq L_\kappa^r\). | Separately controls \(u\), the fixed power \(q^b\), and their sum, proving \(T_a=L_\kappa^{o(1)}\). |
| `unit_004` | proposition | Under Assumption~\(\ref{assump:polynomial-global-stability}\), the accepted `step_002` sample formula and constant provenance, Proposition~\(\ref{prop:step-004-q-subpower}\), and Lemma~\(\ref{lem:step-004-schedule-subpower}\), for every \(r>0\), eventually \(N_a(q_\kappa,L_\kappa,\varepsilon_0)\leq L_\kappa^r\), and \(N_a(q_\kappa,L_\kappa,\varepsilon_0)/L_\kappa\to0\). | Separately controls the product, fixed prefactor, additive \(1\), and ceiling, completing `(AS)`. |

Atomic step = no. The log-star envelope, `(SP)` quantifier extraction, schedule propagation, and ceiling-bearing sample propagation are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: exact sample formula and fixed constant from `step_002`

**Dependency results.** Accepted Lemma~\(\ref{lem:step-002-sc-domination}\) fixes one
\[
K_a=\max\{2,C_{\mathrm{BLM}}D_a\},
\]
where \(D_a\) depends only on \(a,\alpha_0,\beta_0\). Hence \(K_a\) depends only on the declared fixed quantities \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\), and not on \(\kappa,X_\kappa,C_\kappa,L_\kappa,q_\kappa\), or \(\varepsilon_0\). Accepted Proposition~\(\ref{prop:step-002-exact-padding}\) exports the exact arity
\[
N_a(q,L,\varepsilon_0)
=\left\lceil K_a\varepsilon_0^{-2}q^b(1+T_a(q,L))\right\rceil.
\tag{58}
\]

**Assumption discharge and conclusion used.** The current `step_002` proof hash matches its accepted review. That dependency discharges the global-stability use, the choice of \(K_a\), and the ceiling formula. This step uses only (58) and the permitted dependence of \(K_a\); it does not use learner utility or privacy to prove a deterministic asymptotic inequality.

### Accepted dependency: exact correction and schedule from `step_003`

**Dependency results.** Accepted Lemma~\(\ref{lem:step-003-log-correction}\) states that, for every \(L\geq0\),
\[
u(L)=\log\log(e^e+L)
\]
is well-defined and satisfies \(u(L)\geq1\). Accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) states that, for the fixed \(b=2a+2\) and all \(q\geq1,L\geq0\),
\[
T_a(q,L)=q^b+u(L)
\tag{59}
\]
exactly.

**Assumption discharge and conclusion used.** The current `step_003` proof hash matches its accepted review. This step uses the original setting expression for \(u\), its domain and lower bound, and the exact sum (59). It independently proves the upper subpower estimate needed here and does not treat `(AS)` as a dependency output.

### Local results used later

- Lemma~\(\ref{lem:step-004-iterated-log-subpower}\) proves the every-exponent bound for \(s_\kappa\) from the base-two log-star convention and finite-class counting.
- Proposition~\(\ref{prop:step-004-q-subpower}\) combines that lemma with exact `(SP)` to prove the required every-exponent bound for \(q_\kappa\).
- Lemma~\(\ref{lem:step-004-schedule-subpower}\) proves every-exponent bounds for \(u(L_\kappa)\) and the exact schedule \(T_a(q_\kappa,L_\kappa)\).
- Proposition~\(\ref{prop:step-004-sample-subpower}\) applies the accepted exact formula (58), controls every factor and the ceiling, and proves both \(N_a=L_\kappa^{o(1)}\) and \(N_a=o(L_\kappa)\).

No paper result or unproved standard asymptotic theorem is used. All logarithmic and exponent-allocation estimates appear below.

## Local Derivation

### unit_001: lemma

**Lemma (Every-exponent control of the iterated-log dimension term).** \(\label{lem:step-004-iterated-log-subpower}\)
Under the primitive conditions \(L_\kappa\to\infty\) and
\(0\leq\ell_\kappa\leq L_\kappa/\log2\), with the setting's base-two definition of \(\log^*\), for every real \(r>0\) there exists \(\kappa_s(r)\) such that
\[
\forall\kappa\geq\kappa_s(r):
\qquad
s_\kappa=1+\log^*(1+\ell_\kappa)
\leq L_\kappa^r.
\tag{60}
\]
If \(\ell_\kappa=0\), then \(s_\kappa=1\), and the same eventual bound applies.

**Proof / justification.** We first derive an explicit envelope for the base-two iterated logarithm. The stopping time \(x\mapsto\log^*x\) is nondecreasing on \([1,\infty)\). Indeed, if \(1\leq x\leq y\) and \(m=\log^*y\), then either the iterates of \(x\) reach a value at most \(1\) before time \(m\), or monotonicity of \(\log_2\) through the first \(m\) active iterates gives \(\log_2^{(m)}x\leq\log_2^{(m)}y\leq1\). In either case \(\log^*x\leq m\).

For each integer \(n\geq1\),
\[
\log^*(2^n)=1+\log^*n\leq n.
\tag{61}
\]
Indeed, (61) holds at \(n=1\). If it holds at \(n-1\) and \(n\geq2\), then \(n\leq2^{n-1}\), so monotonicity gives
\(\log^*n\leq\log^*(2^{n-1})\leq n-1\), proving the induction step. For an arbitrary \(x>1\), put \(n=\lceil\log_2x\rceil\). Then \(x\leq2^n\), and hence
\[
\log^*x
\leq n
=\lceil\log_2x\rceil
\leq1+\log_2x.
\tag{62}
\]
At \(x=1\), \(\log^*1=0\), so (62) also holds.

Now take any \(\kappa\) for which \(L_\kappa\geq1\). The counting inequality and the conversion between natural and base-two logarithms give
\[
1+\ell_\kappa
\leq1+\frac{L_\kappa}{\log2}
\leq c_2L_\kappa,
\qquad
c_2:=1+\frac1{\log2}.
\tag{63}
\]
Applying (62) at \(x=1+\ell_\kappa\), then (63), yields
\[
\begin{aligned}
s_\kappa
&\leq2+\log_2(1+\ell_\kappa)\\
&\leq2+\log_2(c_2L_\kappa)
=A_0+\frac{\log L_\kappa}{\log2},
\qquad
A_0:=2+\frac{\log c_2}{\log2}.
\end{aligned}
\tag{64}
\]
This explicitly relates the base-two log-star term to the natural-log cardinality variable.

Fix an arbitrary \(r>0\). For every \(L\geq1\), direct integration gives
\[
\log L
=\int_1^L\frac{dx}{x}
\leq\int_1^L x^{r/2-1}\,dx
=\frac2r(L^{r/2}-1)
\leq\frac2rL^{r/2}.
\tag{65}
\]
Since \(L^{r/2}\geq1\), (64)--(65) imply
\[
s_\kappa
\leq A_rL_\kappa^{r/2},
\qquad
A_r:=A_0+\frac{2}{r\log2}.
\tag{66}
\]
The constant \(A_r\) depends only on \(r\) and the declared logarithm convention. By (57), eventually both \(L_\kappa\geq1\) and \(L_\kappa^{r/2}\geq A_r\). On that tail,
\[
A_rL_\kappa^{r/2}\leq L_\kappa^r,
\]
which proves (60). If \(\ell_\kappa=0\), then \(1+\ell_\kappa=1\), \(\log^*1=0\), and \(s_\kappa=1\); no positive lower bound on \(\ell_\kappa\) was used. \(\square\)

### unit_002: proposition

**Proposition (Exact `(SP)` quantifiers imply subpower total complexity).** \(\label{prop:step-004-q-subpower}\)
Under exact `(SP)`, \(L_\kappa\to\infty\), the finite-class counting bound, and Lemma~\(\ref{lem:step-004-iterated-log-subpower}\),
\[
\boxed{
\forall t>0\ \exists\kappa_q(t)\ \forall\kappa\geq\kappa_q(t):
\qquad q_\kappa\leq L_\kappa^t
}.
\tag{67}
\]
Consequently \(q_\kappa=L_\kappa^{o(1)}\). The statement includes indices with \(d_\kappa=0\), permits \(q_\kappa\) to remain bounded, and imposes no condition on any finite initial segment.

**Proof / justification.** Fix an arbitrary real \(t>0\). Choose one positive integer
\[
p=p(t)>\frac2t,
\qquad\text{so that}\qquad
\frac1p<\frac t2.
\tag{68}
\]
This choice is made before the sequence index varies. Applying `(SP)` to this single integer \(p\) gives an index \(\kappa_0(p)\) such that, for every \(\kappa\geq\kappa_0(p)\),
\[
L_\kappa>d_\kappa^p.
\tag{69}
\]
After also requiring \(L_\kappa\geq1\), monotonicity of the positive \(p\)-th root gives
\[
d_\kappa<L_\kappa^{1/p}
\leq L_\kappa^{t/2}.
\tag{70}
\]
This line remains valid when \(d_\kappa=0\): it only takes the root of (69) and never divides by \(d_\kappa\).

Lemma~\(\ref{lem:step-004-iterated-log-subpower}\), applied with exponent \(t/2\), gives another index after which
\[
s_\kappa\leq L_\kappa^{t/2}.
\tag{71}
\]
Finally, (57) lets us enlarge the threshold once more so that
\(L_\kappa^{t/2}\geq2\). For every index beyond the maximum of these finitely many thresholds, (70)--(71) give the displayed absorption
\[
q_\kappa=d_\kappa+s_\kappa
<2L_\kappa^{t/2}
\leq L_\kappa^t.
\tag{72}
\]
Thus the order of quantifiers is exactly that in (67): \(t\) is arbitrary, \(p\) and the eventual threshold may depend on \(t\), and the resulting inequality holds for every later \(\kappa\), not merely infinitely often.

For completeness, \(q_\kappa\geq1\) and eventually \(L_\kappa>1\). Hence (67) implies, for every \(t>0\),
\[
0\leq\frac{\log q_\kappa}{\log L_\kappa}\leq t
\quad\text{eventually}.
\tag{73}
\]
Since \(t\) is arbitrary, the ratio tends to zero, which is precisely
\(q_\kappa=L_\kappa^{o(1)}\). No part of the proof assumes that \(d_\kappa\), \(\ell_\kappa\), or \(q_\kappa\) diverges. \(\square\)

### unit_003: lemma

**Lemma (Every-exponent control of the cardinality correction and schedule).** \(\label{lem:step-004-schedule-subpower}\)
Under Assumption~\(\ref{assump:polynomial-global-stability}\), accepted Lemma~\(\ref{lem:step-003-log-correction}\), accepted Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), and Proposition~\(\ref{prop:step-004-q-subpower}\), for every real \(r>0\) there is an index \(\kappa_T(r)\) such that, for every \(\kappa\geq\kappa_T(r)\),
\[
u(L_\kappa)\leq L_\kappa^r,
\qquad
T_a(q_\kappa,L_\kappa)\leq L_\kappa^r.
\tag{74}
\]
Consequently \(u(L_\kappa)=L_\kappa^{o(1)}\) and
\(T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)}\), including on every bounded-\(q_\kappa\) sequence.

**Proof / justification.** We first prove the assertion for \(u\) without invoking any subpower shorthand. For \(L\geq1\), put \(z=\log(e^e+L)\). Then \(z\geq e>1\), and
\[
\log z=\int_1^z\frac{dx}{x}\leq z-1\leq z.
\]
Also \(e^e+L\leq(e^e+1)L\). Therefore
\[
u(L)=\log\log(e^e+L)
\leq\log(e^e+L)
\leq\log(e^e+1)+\log L.
\tag{75}
\]
Fix \(r>0\). Applying (65) with this \(r\) gives
\[
u(L_\kappa)
\leq B_rL_\kappa^{r/2},
\qquad
B_r:=\log(e^e+1)+\frac2r,
\tag{76}
\]
whenever \(L_\kappa\geq1\). Since \(L_\kappa\to\infty\), eventually
\(L_\kappa^{r/2}\geq B_r\), and then (76) yields
\[
u(L_\kappa)\leq L_\kappa^r.
\tag{77}
\]
This proves the first part of (74) for every exponent, with all constants displayed.

Now fix a fresh arbitrary target exponent \(r>0\). The integer
\(b=2a+2\) is fixed before \(\kappa\). Proposition~\(\ref{prop:step-004-q-subpower}\), used at exponent \(r/(2b)>0\), gives
\[
q_\kappa^b\leq L_\kappa^{r/2}
\quad\text{eventually}.
\tag{78}
\]
The already-proved every-exponent estimate (77), used at exponent \(r/2\), gives
\[
u(L_\kappa)\leq L_\kappa^{r/2}
\quad\text{eventually}.
\tag{79}
\]
After taking the maximum of these thresholds and requiring
\(L_\kappa^{r/2}\geq2\), the exact dependency identity (59) gives the explicit sum absorption
\[
T_a(q_\kappa,L_\kappa)
=q_\kappa^b+u(L_\kappa)
\leq2L_\kappa^{r/2}
\leq L_\kappa^r.
\tag{80}
\]
Thus (74) holds for every \(r>0\).

Accepted Lemma~\(\ref{lem:step-003-log-correction}\) gives \(u(L_\kappa)\geq1\), while (59) gives \(T_a(q_\kappa,L_\kappa)\geq2\). Combining these lower bounds with (74), exactly as in (73), shows
\[
\frac{\log u(L_\kappa)}{\log L_\kappa}\longrightarrow0,
\qquad
\frac{\log T_a(q_\kappa,L_\kappa)}{\log L_\kappa}\longrightarrow0.
\tag{81}
\]

No growth of \(q_\kappa\) was used. In particular, if on a tail
\(q_\kappa\leq\bar q<\infty\), then the exact formula gives
\[
T_a(q_\kappa,L_\kappa)
\leq\bar q^b+u(L_\kappa),
\tag{82}
\]
and the fixed term \(\bar q^b\) and the every-exponent bound (77) are both absorbed by every positive power of \(L_\kappa\). This includes \(q_\kappa\equiv1\). \(\square\)

### unit_004: proposition

**Proposition (The exact ceiling sample size is subpower and sublogarithmic).** \(\label{prop:step-004-sample-subpower}\)
Under Assumption~\(\ref{assump:polynomial-global-stability}\), the accepted exact formula (58) and its fixed-constant provenance, Proposition~\(\ref{prop:step-004-q-subpower}\), and Lemma~\(\ref{lem:step-004-schedule-subpower}\), let
\[
N_\kappa=N_a(q_\kappa,L_\kappa,\varepsilon_0).
\]
Then
\[
\forall r>0\ \exists\kappa_N(r)\ \forall\kappa\geq\kappa_N(r):
\qquad N_\kappa\leq L_\kappa^r.
\tag{83}
\]
Consequently
\[
N_\kappa=L_\kappa^{o(1)}
\qquad\text{and}\qquad
N_\kappa=o(L_\kappa).
\tag{84}
\]
Both conclusions remain valid if \(q_\kappa\) is bounded, including \(q_\kappa\equiv1\).

**Proof / justification.** Define the proof-local fixed prefactor
\[
H:=K_a\varepsilon_0^{-2}.
\tag{85}
\]
By the accepted `step_002` dependency, \(K_a\) depends only on
\(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\). Thus \(H\) is finite, positive, fixed while \(\kappa\to\infty\), and independent of the sequence index, class, cardinality, and complexity values.

Fix an arbitrary \(r>0\). Proposition~\(\ref{prop:step-004-q-subpower}\), applied with exponent \(r/(4b)>0\), and Lemma~\(\ref{lem:step-004-schedule-subpower}\), applied with exponent \(r/4>0\), give on a common tail
\[
q_\kappa^b\leq L_\kappa^{r/4},
\qquad
T_a(q_\kappa,L_\kappa)\leq L_\kappa^{r/4}.
\tag{86}
\]
After also requiring \(L_\kappa\geq1\), the additive \(1\), fixed power, and product in (58) satisfy
\[
\begin{aligned}
q_\kappa^b\bigl(1+T_a(q_\kappa,L_\kappa)\bigr)
&\leq L_\kappa^{r/4}\bigl(1+L_\kappa^{r/4}\bigr)\\
&\leq2L_\kappa^{r/2}.
\end{aligned}
\tag{87}
\]
Multiplication by the fixed prefactor and the elementary ceiling inequality
\(\lceil x\rceil\leq x+1\) give
\[
\begin{aligned}
N_\kappa
&=\left\lceil Hq_\kappa^b
  \bigl(1+T_a(q_\kappa,L_\kappa)\bigr)\right\rceil\\
&\leq2HL_\kappa^{r/2}+1\\
&\leq(2H+1)L_\kappa^{r/2}.
\end{aligned}
\tag{88}
\]
The last inequality uses \(L_\kappa^{r/2}\geq1\). Finally, (57) lets us enlarge the threshold so that
\(L_\kappa^{r/2}\geq2H+1\). Equation (88) then yields
\[
N_\kappa\leq L_\kappa^r,
\tag{89}
\]
proving (83). Thus every term absorption is explicit: (86) controls the fixed power and schedule, (87) controls the sum and product, the first line of (88) applies the ceiling, and (89) absorbs the fixed prefactor and ceiling residual.

Since \(N_\kappa\geq1\) and eventually \(L_\kappa>1\), (83) implies
\[
0\leq\frac{\log N_\kappa}{\log L_\kappa}\leq r
\quad\text{eventually for every }r>0,
\tag{90}
\]
so \(N_\kappa=L_\kappa^{o(1)}\). Taking the concrete exponent \(r=1/2\) in (83) gives
\[
0\leq\frac{N_\kappa}{L_\kappa}
\leq L_\kappa^{-1/2}
\longrightarrow0,
\tag{91}
\]
which proves \(N_\kappa=o(L_\kappa)\) without using subpower notation as a substitute for the final implication.

For the bounded-\(q\) boundary, suppose only for this audit that
\(q_\kappa\leq\bar q\) on a tail. Then (58) and (82) give the direct exact-ceiling bound
\[
N_\kappa
\leq1+H\bar q^b
\bigl(1+\bar q^b+u(L_\kappa)\bigr).
\tag{92}
\]
Using (77) at exponent \(1/2\) and dividing (92) by \(L_\kappa\) yields
\[
\frac{N_\kappa}{L_\kappa}
\leq
\frac{1+H\bar q^b(1+\bar q^b)}{L_\kappa}
+H\bar q^bL_\kappa^{-1/2}
\longrightarrow0.
\tag{93}
\]
Thus the cardinality correction does not spoil the sample rate when the polynomial-complexity term is constant. The special case \(q_\kappa=1\) is included. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-004-iterated-log-subpower}\) starts from the setting's base-two \(\log^*\) convention and the exact counting relation
\(\ell_\kappa\leq L_\kappa/\log2\). It proves, for every requested exponent \(r>0\), an eventual bound
\(s_\kappa\leq L_\kappa^r\), including the endpoint \(\ell_\kappa=0\), where \(s_\kappa=1\).

Proposition~\(\ref{prop:step-004-q-subpower}\) then fixes an arbitrary \(t>0\), chooses one integer \(p>2/t\), and invokes the exact `(SP)` order
\[
\forall p\ \exists\kappa_0(p)\ \forall\kappa\geq\kappa_0(p).
\]
It separately obtains \(d_\kappa<L_\kappa^{t/2}\) and
\(s_\kappa\leq L_\kappa^{t/2}\), then displays
\(2L_\kappa^{t/2}\leq L_\kappa^t\) on a tail. Hence
\[
\forall t>0\ \exists\kappa_q(t)\ \forall\kappa\geq\kappa_q(t):
\qquad q_\kappa\leq L_\kappa^t.
\]
The root argument includes \(d_\kappa=0\), and no convergence of \(q_\kappa\) is assumed.

Lemma~\(\ref{lem:step-004-schedule-subpower}\) proves directly that
\(u(L_\kappa)\) is bounded by every positive power of \(L_\kappa\). It allocates exponent \(r/(2b)\) to \(q_\kappa\), raises that exact inequality to the fixed power \(b\), allocates exponent \(r/2\) to \(u\), and displays the sum absorption (80). Therefore
\[
T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)}.
\]

Finally, Proposition~\(\ref{prop:step-004-sample-subpower}\) uses the exact accepted `step_002` formula for \(N_a\). Equations (86)--(89) separately control \(q_\kappa^b\), \(1+T_a\), their product, the fixed factor \(K_a\varepsilon_0^{-2}\), the additive ceiling residual, and the final constant absorption. It proves an every-exponent bound for the exact integer \(N_\kappa\), then uses the concrete exponent \(1/2\) in (91) to prove the ratio limit. Thus
\[
\boxed{
T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)},
\qquad
N_a(q_\kappa,L_\kappa,\varepsilon_0)
=L_\kappa^{o(1)}=o(L_\kappa)
}.
\tag{AS}
\]
Equations (82)--(93) separately verify the bounded-\(q_\kappa\) boundary. All claims are eventual, so arbitrary small finite prefixes, including indices with \(L_\kappa=0\), do not affect (67), `(AS)`, or the ratio limit. The setting and accepted dependencies keep every per-class expression well-defined on those prefixes.

## Explicit Rate Audit

- Exposed variables: \(L_\kappa,d_\kappa,\ell_\kappa,s_\kappa,q_\kappa,a,b,u(L_\kappa),T_a(q_\kappa,L_\kappa),K_a,\varepsilon_0,N_\kappa\), the arbitrary exponents \(t,r>0\), and the `(SP)` witness integer \(p(t)\).
- Hidden constants may depend on: There is no hidden multiplicative constant in the final inequalities \(q_\kappa\leq L_\kappa^t\), \(T_a\leq L_\kappa^r\), and \(N_\kappa\leq L_\kappa^r\). The proof-local constants \(A_r,B_r\) depend only on the requested exponent and declared log conventions. The fixed factor \(H=K_a\varepsilon_0^{-2}\) depends only on \(a,\alpha_0,\beta_0,C_{\mathrm{BLM}},\varepsilon_0\). Eventual index thresholds may also depend on the fixed sequence and its `(SP)` witnesses.
- Hidden constants may not depend on: \(\kappa,X_\kappa,C_\kappa,L_\kappa,d_\kappa,\ell_\kappa,s_\kappa,q_\kappa\). The optional bounded-tail witness \(\bar q\) is displayed explicitly in (82), (92), and (93), not hidden.
- Fixed quantities: The universal \(a\), hence \(b\) and \(K_a\), the fixed \(\varepsilon_0\), \(\alpha_0,\beta_0,C_{\mathrm{BLM}}\), the natural-log and base-two log-star conventions, and the class sequence are fixed while \(\kappa\to\infty\). Each target exponent is fixed before its eventual threshold is chosen.
- Probability mode: Deterministic scalar asymptotics. No PAC event, expectation, confidence parameter, conditioning, or union bound is used in this step.
- Horizon mode: Sequence-asymptotic. Every bound has the form "for every exponent, there exists one threshold, for every later index." There is no cross-\(\kappa\) privacy composition or summation.
- Norm mode: Scalar growth relative to \(L_\kappa=\log|C_\kappa|\), measured both by logarithmic exponent ratios and by the sample ratio \(N_\kappa/L_\kappa\).
- Admissibility conditions and auxiliary tolerances: Nonempty finite classes, \(|C_\kappa|\to\infty\), exact `(SP)`, \(\ell_\kappa\leq L_\kappa/\log2\), \(a\geq1\), and fixed \(\varepsilon_0\in(0,1)\). There is no auxiliary tolerance. The optional \(q_\kappa\leq\bar q\) condition is used only for the boundary specialization, not the main claim.
- Term absorption or simplification inequalities: The log-star envelope is (61)--(64); logarithmic growth is bounded in (65)--(66) and (75)--(77); the VC and iterated-log terms are combined in (70)--(72); fixed powers and the schedule sum are controlled in (78)--(80); the sample-size sum, product, fixed prefactor, ceiling, and residual are controlled in (86)--(89). The final \(o(L_\kappa)\) implication is the displayed ratio bound (91).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step proves the complete sequence bridge `(AS)` for the exact public \(T_a\) and \(N_a\) consumed by final assembly.
- Baseline-reduction check: At \(d_\kappa=0\), the `(SP)` root step remains valid without division. At \(\ell_\kappa=0\), \(s_\kappa=1\). If \(q_\kappa\) is bounded, (82), (92), and (93) directly retain both \(T_a=L_\kappa^{o(1)}\) and \(N_\kappa=o(L_\kappa)\); the baseline is not replaced by a \(q_\kappa\to\infty\) condition.

## Blockers

None.

## Notation And Assumption Notes

- \(L_\kappa,d_\kappa,\ell_\kappa,s_\kappa,q_\kappa,a,b,u,T_a,K_a,\varepsilon_0,N_\kappa\) are `public-facing` setting-defined quantities or accepted dependency quantities. Their meanings are unchanged.
- The integer \(p(t)\) in (68) is `proof-local`, chosen directly from the arbitrary requested exponent \(t\). The `(SP)` threshold \(\kappa_0(p(t))\) is a `proof-local` witness supplied by the primitive quantified premise.
- The constants \(c_2,A_0,A_r,B_r\) are `proof-local`. They are explicit functions only of the requested exponent and the declared logarithm bases; they prove coefficient absorption and are not exported.
- \(H=K_a\varepsilon_0^{-2}\) is a `proof-local` abbreviation for fixed public quantities. Its provenance is the accepted `step_002` choice of \(K_a\) and the primitive fixed parameter \(\varepsilon_0\).
- The optional \(\bar q\) is a `proof-local` witness to a local conditional bounded-tail specialization. It is never used to prove the unconditional target and is displayed wherever it enters a constant.
- Constant provenance is complete: every threshold comes from `(SP)`, \(L_\kappa\to\infty\), or a displayed fixed coefficient; every fixed power comes from \(b=2a+2\); and the ceiling contributes exactly the displayed additive \(1\). No class-cardinality dependence is hidden in a constant.
- Assumption provenance is complete: size divergence, exact `(SP)`, and finite-class counting are primitive sequence inputs; fixed \(a\) comes from Assumption~\(\ref{assump:polynomial-global-stability}\); the exact \(T_a\) and \(N_a\) formulas and fixed \(K_a\) provenance are accepted dependency outputs. All subpower and sublogarithmic conclusions are proved locally. No generated event, stability condition, recurrence, boundedness invariant, or learner property is promoted to an assumption.
- The proof handles logarithm domains by passing to an eventual tail with \(L_\kappa\geq1\), justified by (57). Earlier indices may have \(L_\kappa=0\), \(d_\kappa=0\), or \(\ell_\kappa=0\); the asymptotic claims make no assertion about a finite prefix, while the setting definitions and accepted dependency formulas remain valid there.
- `global_proof.md` was not consulted. The proof uses only `setting.md`, the accepted sketch and sketch review, and the current accepted dependency pairs for `step_002` and `step_003`.
