# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_009`
- Unit attempt: `1`

## Target Step Claim

- Intended claim: Set `C_Delta=225(1+log15)`, `c_delta=a_delta/C_Delta`, `c=a_th/4`, choose `N_0>=N_th` with `log^*N_0>26/a_th`, verify all admissibility inequalities, contradict `(HP)` with `(UT)`, and check exact `k=1` recovery.
- Depends on: `step_005`, `step_006`, `step_007`, `step_008`.
- Assumptions used: `assump:minor-table`; `assump:unrestricted-private-pac`; `assump:fixed-parameter-scale`; all derived interfaces.
- Technical challenge: No hidden asymptotic absorption, no delta relabeling, and no weakened baseline.
- Intended proof tool or cited result: Deterministic arithmetic and contradiction.
- Output target: Main theorem with universal constants and baseline certificate.
- Rate objective: R2, with full explicit specialization in `m,k,N,epsilon_0,delta_m`.

Let \(a_{\rm th},a_\delta>0\) and \(N_{\rm th}\ge2\) be the universal
constants exported by the accepted hard-prior dependency.  Define

\[
C_\Delta=225(1+\log 15),
\qquad
c_\delta=\frac{a_\delta}{C_\Delta},
\qquad
c=\frac{a_{\rm th}}4,
\tag{T9.1}
\]

and choose an integer \(N_0\ge N_{\rm th}\) such that

\[
\log^*N_0>\frac{26}{a_{\rm th}}.
\tag{T9.2}
\]

For every \(k\ge1\), \(N\ge N_0\), and learner \(A\) under the three
named setting assumptions, put

\[
n=\left\lceil\frac{2m}{k}\right\rceil+12.
\tag{T9.3}
\]

The required conclusion is

\[
m\ge c\,k\log^*N.
\tag{T9.4}
\]

The same inherited privacy parameter `delta_m` must be used in the
hard-prior lower bound, the exact-private hidden-arm kernel, and the
utility upper bound.  At \(k=1\), the construction must reduce exactly
to the unrestricted one-chain `Omega(log^*N)` obstruction, with no
overflow or multi-arm residual.

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Accepted `step_005` proof:
  `perspective_2/idea_2/proof_steps/step_005/proof.md`, SHA-256
  `ef7343576f23d59e14f2a29da1d7d9461608590f23332b1707a46f4b77f01b3a`.
- Accepted `step_005` review:
  `perspective_2/idea_2/proof_steps/step_005/review.md`, status
  `ACCEPTED`, SHA-256
  `03fc727ae75639b93121a945d0034af47f11f380970239e9fce96fbd8150a1f9`.
- Accepted `step_006` proof:
  `perspective_2/idea_2/proof_steps/step_006/proof.md`, SHA-256
  `f4d72880911b9379963068d28103e397067061f6dbdc53ad2448db8f76f99f6b`.
- Accepted `step_006` review:
  `perspective_2/idea_2/proof_steps/step_006/review.md`, status
  `ACCEPTED`, SHA-256
  `872560c50b01fbab254e716a30ec61a31391ae78634979a2af2712dcca9bb2ee`.
- Accepted `step_007` proof:
  `perspective_2/idea_2/proof_steps/step_007/proof.md`, SHA-256
  `2acaf6fc9f7237c8f965c90b929b390dce607df84c86e775af02bca41bf7390b`.
- Accepted `step_007` review:
  `perspective_2/idea_2/proof_steps/step_007/review.md`, status
  `ACCEPTED`, SHA-256
  `d0df17ccf82f5dc1275dc24cd0bcfc2774383728a87e14eb59cab822e53798b9`.
- Accepted `step_008` proof:
  `perspective_2/idea_2/proof_steps/step_008/proof.md`, SHA-256
  `95c9d5678aebe6a6ffd1312c955212e0438d1c704c954a50bffd68ba922a1003`.
- Accepted `step_008` review:
  `perspective_2/idea_2/proof_steps/step_008/review.md`, status
  `ACCEPTED`, SHA-256
  `2cfc7083f459fa4cf4e7234e0c9ae5eb126c193dc0d9026eabe0baf966df4ec3`.

Assumption-provenance classification:

- Primitive conditions:
  1. Assumption~\ref{assump:minor-table} supplies \(k\ge1\), \(N\ge2\),
     and the exact disjoint-threshold restriction table.  Its structural
     content has already produced exact mixture realizability in the
     accepted utility dependency.
  2. Assumption~\ref{assump:unrestricted-private-pac} supplies \(m\ge1\)
     and the arbitrary-output learner \(A\), with its fixed-sample
     realizable PAC guarantee and exact inherited
     \((\varepsilon_0,\delta_m)\)-DP pair.
  3. Assumption~\ref{assump:fixed-parameter-scale} supplies
     
     \[
     \alpha_0=\frac1{128},\qquad
     \beta_0=\frac1{32},\qquad
     0<\varepsilon_0\le1,
     \qquad
     0\le\delta_m\le
       \frac{c_\delta}{m^2\log(em)}.
     \tag{A9.1}
     \]
  4. Equation (T9.3), the natural logarithm, and the base-two iterated
     logarithm are setting-defined expressions.
- Derived invariants supplied by accepted dependencies:
  1. Proposition~\ref{prop:step-005-hard-prior} supplies universal
     \(a_{\rm th},a_\delta,N_{\rm th}\) and, under its four exact
     admissibility inequalities, an attained prior
     \(\Pi_{n,N,\varepsilon_0,\delta_m}\) satisfying `(HP)` at \(1/20\)
     against every arbitrary-output private threshold-domain kernel.
  2. Proposition~\ref{prop:step-006-exact-dp} supplies the constructed
     full-cube kernel \(B_\Pi\) and proves that it is exactly
     \((\varepsilon_0,\delta_m)\)-DP.  Proposition~\ref{prop:step-006-one-arm}
     supplies its exact \(k=1\) input-map specialization.
  3. Proposition~\ref{prop:step-007-boundaries} supplies zero overflow
     and pathwise ideal/constructed equality at \(k=1\).  The general
     `step_007` coupling and tail interfaces are already consumed inside
     the accepted `step_008` utility result.
  4. Proposition~\ref{prop:step-008-utility} supplies the strict upper
     value `(UT)` for the same prior, kernel, risk, and privacy pair.
     Proposition~\ref{prop:step-008-auxiliary} supplies the exact
     one-arm utility specialization.
- Local conditional hypotheses: None.  The inequality
  \(m<c k\log^*N\) is only the temporary negation of the target in a
  contradiction proof; it is discharged and not exported.

No hard prior, private kernel, coupling event, utility bound, or
baseline fact is promoted to a primitive theorem condition.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Proposition~\ref{prop:step-005-hard-prior}, the definitions in (T9.1) give positive universal `C_Delta,c_delta,c`, and there is an integer `N_0>=N_th` satisfying (T9.2); every `N>=N_0` has `13<(a_th/2)log^*N`. | Fixes all public constants and the strict finite-`N` reserve. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:minor-table} and~\ref{assump:unrestricted-private-pac}, Proposition~\ref{prop:step-009-constants}, and (T9.3), `n<=15m` and `n^2 log(en)<=C_Delta m^2 log(em)`; if `m<c k log^*N`, then `n<a_th log^*N`. | Proves the exact ceiling, logarithm, denominator, and strict sample-size comparisons. |
| `unit_003` | proposition | Under all three setting assumptions, Proposition~\ref{prop:step-009-constants}, Lemma~\ref{lem:step-009-arithmetic}, and the temporary inequality `m<c k log^*N`, all four hard-prior conditions hold with the unchanged `delta_m`; hence the accepted prior exists and accepted `B_Pi` is an exact-private competitor. | Instantiates `(HP)` with no delta relabeling or added assumption. |
| `unit_004` | proposition | Under all three setting assumptions, Proposition~\ref{prop:step-009-admissibility}, accepted `(HP)`, accepted exact privacy, and accepted `(UT)`, the inequality \(m<c k\log^*N\) is impossible; hence (T9.4) holds. | Gives the strict lower-versus-upper contradiction. |
| `unit_005` | proposition | Under all three setting assumptions, Propositions~\ref{prop:step-006-one-arm}, \ref{prop:step-007-boundaries}, \ref{prop:step-008-auxiliary}, and \ref{prop:step-009-main-closure}, setting `k=1` gives `n=2m+12`, `R=m<n`, zero overflow, exact one-chain sampling/privacy/risk interfaces, and `m>=(a_th/4)log^*N`. | Verifies exact one-chain recovery without a residual or weaker surrogate. |

Atomic step = no.  Constant selection, sample/denominator arithmetic,
privacy-scale admissibility, the game-value contradiction, and baseline
invariance are distinct nontrivial obligations.

## Cited Result Applications

### Accepted dependency: learner-independent hard prior `(HP)`

- Source: accepted `step_005`, specifically
  Proposition~\ref{prop:step-005-hard-prior}.
- Restated statement in current notation: there are universal constants
  \(a_{\rm th},a_\delta>0\) and \(N_{\rm th}\ge2\) such that, whenever
  
  \[
  N\ge N_{\rm th},\qquad
  n<a_{\rm th}\log^*N,
  \qquad
  0<\varepsilon\le1,
  \qquad
  0\le\delta\le\frac{a_\delta}{n^2\log(en)},
  \tag{C9.1}
  \]
  
  an attained prior
  `Pi_(n,N,epsilon,delta)` in `Delta(E_(n,N))` exists
  and satisfies
  
  \[
  \inf_{B:\,(\varepsilon,\delta)\text{-DP}}
  \mathbb E_{e\sim\Pi_{n,N,\varepsilon,\delta}}
  [\mathcal R_n(B,e)]\ge\frac1{20}.
  \tag{HP}
  \]
- Instantiated objects: `epsilon=epsilon_0`, `delta=delta_m`, the
  setting-defined `n`, and the prior
  `Pi=Pi_(n,N,epsilon_0,delta_m)`.
- Required assumptions and discharge: Proposition~\ref{prop:step-009-admissibility}
  proves all four inequalities in (C9.1) from primitive conditions and
  the explicit constants (T9.1)--(T9.2).
- Conclusion used: the lower bound \(1/20\) for the prior-average risk
  of every admissible kernel, in particular \(B_\Pi\).
- Non-output boundary: this dependency neither defines \(B_\Pi\) nor
  proves utility.  Its prior is selected before \(B_\Pi\) and is
  independent of the later competitor.

### Accepted dependency: exact-private hidden-arm kernel

- Source: accepted `step_006`, specifically
  Propositions~\ref{prop:step-006-kernel},
  \ref{prop:step-006-exact-dp}, and
  \ref{prop:step-006-one-arm}.
- Restated statement in current notation: once the accepted prior is
  available, the hidden-arm procedure defines
  
  \[
  B_\Pi:([N]\times\{0,1\})^n
  \rightsquigarrow\{0,1\}^{[N]}
  \]
  
  and satisfies both eventwise replacement-adjacency
  \((\varepsilon_0,\delta_m)\)-DP inequalities with exactly the inherited
  pair.  At \(k=1\), \(J=I_r=1\), \(R=m<n=2m+12\), there are no
  nonhidden simulations, and the first \(m\) real records are used once.
- Instantiated objects: the same learner \(A\), prior `Pi`, and
  setting parameters \(m,k,n,N\).
- Required assumptions and discharge: the three setting assumptions
  and prior availability are exactly the dependency hypotheses;
  Proposition~\ref{prop:step-009-admissibility} supplies the prior.
- Conclusion used: \(B_\Pi\) belongs to the competitor class in `(HP)`
  without composition, group privacy, properness, or changed delta.
- Non-output boundary: exact privacy alone supplies no utility bound.

### Accepted dependency: exact one-arm coupling boundary

- Source: accepted `step_007`, specifically
  Proposition~\ref{prop:step-007-boundaries}.
- Restated statement in current notation: at \(k=1\), the occupancy is
  deterministically \(R=m<n=2m+12\), so \(p_{\rm ov}=0\), the sole-arm
  mixture is the original threshold experiment, and constructed and
  ideal learner inputs and outputs agree surely.
- Instantiated objects: only the \(k=1\) specialization in
  Proposition~\ref{prop:step-009-one-arm}.
- Required assumptions and discharge: the current accepted review
  checked the hidden-arm objects and Assumption~\ref{assump:minor-table}.
- Conclusion used: exact baseline recovery with no overflow remainder.
- Non-output boundary: general coupling and tail conclusions are used
  only through the accepted `step_008` utility dependency.

### Accepted dependency: strict utility `(UT)`

- Source: accepted `step_008`, specifically
  Proposition~\ref{prop:step-008-utility} and, for the baseline,
  Proposition~\ref{prop:step-008-auxiliary}.
- Restated statement in current notation: for the same prior and
  hidden-arm kernel,
  
  \[
  \mathbb E_{e\sim\Pi}[\mathcal R_n(B_\Pi,e)]
  \le \alpha_0+\beta_0+p_{\rm ov}
  \le\frac5{128}+e^{-27/2}<\frac1{20}.
  \tag{UT}
  \]
  
  At \(k=1\), zero overflow makes the ideal and constructed runs
  identical, the arm-mixture identity tautological, and the auxiliary
  conditional success probability equal to one.
- Instantiated objects: exactly the prior and `B_Pi` above, with
  `alpha_0=1/128` and `beta_0=1/32`.
- Required assumptions and discharge: the accepted review verifies all
  three setting assumptions and the current `step_006`/`step_007`
  identities.  This step changes neither the probability mode nor the
  object inside the expectation.
- Conclusion used: the strict upper side of the contradiction and the
  exact one-arm utility interface.
- Non-output boundary: `(UT)` does not use `(HP)` or prove the final
  sample-size lower bound.

### Internal results used in target assembly

- Proposition~\ref{prop:step-009-constants}: fixes all public constants
  and the strict \(N_0\) reserve.
- Lemma~\ref{lem:step-009-arithmetic}: proves the ceiling,
  denominator, and sub-threshold sample inequalities.
- Proposition~\ref{prop:step-009-admissibility}: transfers the same
  `delta_m` into `(HP)` and instantiates the prior and private kernel.
- Proposition~\ref{prop:step-009-main-closure}: contradicts accepted
  `(HP)` with accepted `(UT)` and proves the public lower bound.
- Proposition~\ref{prop:step-009-one-arm}: certifies exact \(k=1\)
  recovery.

No external theorem or paper result is invoked in this step.

## Local Derivation

### unit_001: proposition

**Proposition (Universal specialization constants and finite-domain
threshold).** \(\label{prop:step-009-constants}\)
Under accepted Proposition~\ref{prop:step-005-hard-prior}, let
\(a_{\rm th},a_\delta>0\) and \(N_{\rm th}\ge2\) be its universal
constants.  Define \(C_\Delta,c_\delta,c\) by (T9.1).  These constants
are positive and universal, and there is an integer
\(N_0\ge N_{\rm th}\) satisfying (T9.2).  For every \(N\ge N_0\),

\[
N\ge N_{\rm th},
\qquad
\log^*N\ge\log^*N_0>\frac{26}{a_{\rm th}},
\qquad
13<\frac{a_{\rm th}}2\log^*N.
\tag{9.1}
\]

The constants are independent of
\(C,X,k,N,m,\varepsilon_0,\delta_m\), the learner, and every random
object.

**Proof / justification.**
Because `log 15>0`,

\[
C_\Delta=225(1+\log15)>0.
\tag{9.2}
\]

The accepted dependency gives \(a_{\rm th},a_\delta>0\), so (T9.1)
gives \(c_\delta,c>0\).  All three constants depend only on accepted
universal constants and displayed numerical factors.

The base-two iterated logarithm is nondecreasing and unbounded on the
positive integers.  For example, if \(T_0=2\) and
\(T_{r+1}=2^{T_r}\), applying one base-two logarithm to \(T_{r+1}\)
gives \(T_r\), so `log^* T_r` tends to infinity.  Choose \(r\) with
`log^* T_r>26/a_th`, and take an integer

\[
N_0\ge\max\{N_{\rm th},T_r\}.
\tag{9.3}
\]

Monotonicity gives the middle inequality in (9.1) for every
\(N\ge N_0\).  Multiplication by \(a_{\rm th}/2>0\) gives the last
inequality.  \(\square\)

### unit_002: lemma

**Lemma (Exact sample and privacy-denominator arithmetic).**
\(\label{lem:step-009-arithmetic}\)
Under Assumptions~\ref{assump:minor-table} and
\ref{assump:unrestricted-private-pac},
Proposition~\ref{prop:step-009-constants}, and \(N\ge N_0\), define

\[
L:=\log^*N,
\qquad
\mu:=\frac{m}{k},
\qquad
n:=\lceil2\mu\rceil+12.
\tag{9.4}
\]

Then

\[
n\le15m,
\qquad
n^2\log(en)\le C_\Delta m^2\log(em).
\tag{9.5}
\]

If, in addition,

\[
m<c kL=\frac{a_{\rm th}}4kL,
\tag{9.6}
\]

then

\[
n<a_{\rm th}L.
\tag{9.7}
\]

**Proof / justification.**
Since \(m,k\ge1\), \(2m/k\le2m\), and \(2m\) is an integer.  Hence

\[
n=\left\lceil\frac{2m}{k}\right\rceil+12
\le2m+12
\le14m
\le15m,
\tag{9.8}
\]

where \(2m+12\le14m\) is exactly \(12\le12m\).  Thus this comparison
does not require a large-\(m\) qualification.

The natural logarithm is increasing and \(m\ge1\), so
`log(em)=1+log m>=1`.  From (9.8),

\[
\begin{aligned}
\log(en)
&\le\log(15em)\\
&=\log(em)+\log15\\
&\le(1+\log15)\log(em).
\end{aligned}
\tag{9.9}
\]

The last line uses `log15<=(log15)log(em)`.  Combining
\(n^2\le225m^2\) with (9.9) gives

\[
n^2\log(en)
\le225(1+\log15)m^2\log(em)
=C_\Delta m^2\log(em).
\tag{9.10}
\]

For the strict sample condition, `ceil(x)<x+1` for every real
\(x\).  Equation (9.6) therefore gives

\[
n<2\mu+13
<\frac{a_{\rm th}}2L+13.
\tag{9.11}
\]

Proposition~\ref{prop:step-009-constants} gives
`13<(a_th/2)L`, so

\[
n
<\frac{a_{\rm th}}2L+13
<a_{\rm th}L.
\tag{9.12}
\]

The two strict inequalities come respectively from the strict
counterassumption and the strict choice (T9.2).  \(\square\)

### unit_003: proposition

**Proposition (Admissible hard prior and unchanged private competitor).**
\(\label{prop:step-009-admissibility}\)
Under Assumptions~\ref{assump:minor-table},
\ref{assump:unrestricted-private-pac}, and
\ref{assump:fixed-parameter-scale},
Proposition~\ref{prop:step-009-constants},
Lemma~\ref{lem:step-009-arithmetic}, and the temporary
counterassumption (9.6), all four conditions in (C9.1) hold at

\[
(n,N,\varepsilon,\delta)
=(n,N,\varepsilon_0,\delta_m).
\tag{9.13}
\]

Consequently, accepted Proposition~\ref{prop:step-005-hard-prior}
produces

\[
\Pi=\Pi_{n,N,\varepsilon_0,\delta_m}
\in\Delta(\mathcal E_{n,N})
\tag{9.14}
\]

satisfying `(HP)`, and accepted
Proposition~\ref{prop:step-006-exact-dp} produces a kernel \(B_\Pi\)
in the exact \((\varepsilon_0,\delta_m)\)-DP competitor class of the
same `(HP)` inequality.

**Proof / justification.**
Proposition~\ref{prop:step-009-constants} gives

\[
N\ge N_0\ge N_{\rm th}.
\tag{9.15}
\]

Lemma~\ref{lem:step-009-arithmetic} and (9.6) give

\[
n<a_{\rm th}\log^*N.
\tag{9.16}
\]

Assumption~\ref{assump:fixed-parameter-scale} gives

\[
0<\varepsilon_0\le1,
\qquad
0\le\delta_m
\le\frac{c_\delta}{m^2\log(em)}.
\tag{9.17}
\]

Substituting \(c_\delta=a_\delta/C_\Delta\) gives

\[
\delta_m
\le
\frac{a_\delta}{C_\Delta m^2\log(em)}.
\tag{9.18}
\]

All denominators are positive because \(m,n\ge1\).  Equation (9.10)
therefore reverses under reciprocation:

\[
\frac1{C_\Delta m^2\log(em)}
\le
\frac1{n^2\log(en)}.
\tag{9.19}
\]

Multiplying by \(a_\delta>0\) and combining with (9.18) yields

\[
0\le\delta_m
\le\frac{a_\delta}{n^2\log(en)}.
\tag{9.20}
\]

Equations (9.15)--(9.17) and (9.20) are exactly (C9.1).  This is a
comparison of the inherited scalar `delta_m`, not a definition or
renaming of a parameter `delta_n`.  The accepted hard-prior result
therefore produces (9.14) at precisely
`(n,N,epsilon_0,delta_m)`.  With that prior fixed, the accepted
hidden-arm result constructs \(B_\Pi\) and proves both DP directions
with the same pair \((\varepsilon_0,\delta_m)\).  Thus \(B_\Pi\) is a
legal competitor in `(HP)`.  \(\square\)

### unit_004: proposition

**Proposition (Strict hard-prior closure).**
\(\label{prop:step-009-main-closure}\)
Under Assumptions~\ref{assump:minor-table},
\ref{assump:unrestricted-private-pac}, and
\ref{assump:fixed-parameter-scale}, for every \(k\ge1\), \(N\ge N_0\),
and learner \(A\) in the formalized setting,

\[
m\ge c k\log^*N
=\frac{a_{\rm th}}4k\log^*N.
\tag{9.21}
\]

**Proof / justification.**
Suppose for contradiction that (9.6) holds.
Proposition~\ref{prop:step-009-admissibility} supplies the prior (9.14)
and exact-private competitor \(B_\Pi\).  Applying `(HP)` to this
competitor gives

\[
\frac1{20}
\le
\inf_{B:\,(\varepsilon_0,\delta_m)\text{-DP}}
\mathbb E_{e\sim\Pi}[\mathcal R_n(B,e)]
\le
\mathbb E_{e\sim\Pi}[\mathcal R_n(B_\Pi,e)].
\tag{9.22}
\]

Accepted Proposition~\ref{prop:step-008-utility}, applied to exactly the
same prior, kernel, risk, and outer expectation, gives

\[
\mathbb E_{e\sim\Pi}[\mathcal R_n(B_\Pi,e)]
\le\frac5{128}+e^{-27/2}
<\frac5{128}+\frac1{1024}
=\frac{41}{1024}
<\frac1{20}.
\tag{9.23}
\]

The last comparison is equivalent to \(820<1024\).  Equations (9.22)
and (9.23) therefore contradict each other.  Hence (9.6) is false,
which is (9.21).  All constants were fixed before quantifying over
\(C,X,k,N,m,\varepsilon_0,\delta_m\) and \(A\), so the required
universal quantifier order is preserved.  \(\square\)

### unit_005: proposition

**Proposition (Exact one-chain recovery).**
\(\label{prop:step-009-one-arm}\)
Under Assumptions~\ref{assump:minor-table},
\ref{assump:unrestricted-private-pac}, and
\ref{assump:fixed-parameter-scale},
Propositions~\ref{prop:step-006-one-arm},
\ref{prop:step-007-boundaries}, and
\ref{prop:step-008-auxiliary}, and \(N\ge N_0\), setting \(k=1\) specializes
Proposition~\ref{prop:step-009-main-closure} to

\[
m\ge\frac{a_{\rm th}}4\log^*N.
\tag{9.24}
\]

Moreover, this is the unrestricted one-chain threshold obstruction on
the same finite-experiment, arbitrary-output, zero-one-risk, and exact
privacy interfaces: \(n=2m+12\), \(R=m<n\), \(p_{\rm ov}=0\), and no
multi-arm or overflow residual remains.

**Proof / justification.**
At \(k=1\),

\[
n=\lceil2m\rceil+12=2m+12,
\qquad
J=I_1=\cdots=I_m=1,
\qquad
R=m<n.
\tag{9.25}
\]

Accepted Proposition~\ref{prop:step-006-one-arm} says that there are no
nonhidden simulations, the first \(m\) real records are used once, the
remaining (m+12) external records are unused, arbitrary outputs are
restricted only by their one-chain coordinates, and privacy remains
exactly \((\varepsilon_0,\delta_m)\).  Accepted
Proposition~\ref{prop:step-007-boundaries} says that overflow is
impossible, the sole-arm mixture is exactly the original threshold
experiment, and ideal and constructed inputs and outputs agree surely.
Accepted Proposition~\ref{prop:step-008-auxiliary} says that the
one-arm mixture identity is tautological and the conditional auxiliary
success probability is one.

The main contradiction retains this exact specialization.  If

\[
m<\frac{a_{\rm th}}4\log^*N,
\tag{9.26}
\]

then, by (9.1) and (9.25),

\[
n=2m+12
<\frac{a_{\rm th}}2\log^*N+12
<a_{\rm th}\log^*N,
\tag{9.27}
\]

because `12<13<(a_th/2)log^*N`.  The same unchanged
`delta_m` comparison (9.18)--(9.20) applies.  Thus `(HP)` is
available for the exact one-chain kernel.  Because \(p_{\rm ov}=0\),
the accepted utility derivation specializes to

\[
\mathbb E_{e\sim\Pi}[\mathcal R_n(B_\Pi,e)]
\le\alpha_0+\beta_0
=\frac5{128}
<\frac1{20},
\tag{9.28}
\]

where the last comparison is equivalent to \(100<128\).  This
contradicts the same one-chain `(HP)` value and proves (9.24).

Thus the entry trace, generated object, metric, arbitrary-output scope,
privacy pair, and risk target all coincide with the inherited
one-chain obstruction.  The only losses are the displayed factor
\(1/4\), the fixed additive twelve records in \(n=2m+12\), and the
explicit denominator constant \(C_\Delta\); there is no residual,
stopped event, properness restriction, or weaker surrogate.  \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-005-hard-prior} exports universal
\(a_{\rm th},a_\delta,N_{\rm th}\) and the exact hard value \(1/20\).
Proposition~\ref{prop:step-009-constants} defines

\[
C_\Delta=225(1+\log15),
\qquad
c_\delta=a_\delta/C_\Delta,
\qquad
c=a_{\rm th}/4,
\]

and chooses \(N_0\ge N_{\rm th}\) with
`log^*N_0>26/a_th`.

Lemma~\ref{lem:step-009-arithmetic} proves

\[
n\le15m,
\qquad
n^2\log(en)\le C_\Delta m^2\log(em),
\]

and, from the negation of the target,
\(n<a_{\rm th}\log^*N\).  Proposition~\ref{prop:step-009-admissibility}
combines these inequalities with
Assumption~\ref{assump:fixed-parameter-scale} to verify every hard-prior
condition.  Its reciprocal-denominator comparison transfers the same
`delta_m`; no privacy parameter is renamed or absorbed.

Accepted Proposition~\ref{prop:step-006-exact-dp} makes \(B_\Pi\) a
competitor in the exact `(HP)` infimum.  Proposition~\ref{prop:step-009-main-closure}
then compares the accepted lower value \(1/20\) to the accepted strict
`(UT)` upper value for the same prior-average risk and proves

\[
m\ge\frac{a_{\rm th}}4k\log^*N
=c k\log^*N.
\]

Finally, Proposition~\ref{prop:step-009-one-arm}, using
Propositions~\ref{prop:step-006-one-arm},
\ref{prop:step-007-boundaries}, and
\ref{prop:step-008-auxiliary}, proves exact \(k=1\)
recovery: \(n=2m+12\), \(R=m<n\), zero overflow, exact
ideal/constructed equality, exact privacy, and the unrestricted
`Omega(log^*N)` conclusion.  Thus every component of the binding
sketch row is proved.

## Explicit Rate Audit

- Exposed variables: m,k,N,epsilon_0,delta_m,
  n=ceil(2m/k)+12, and log^*N; fixed
  alpha_0=1/128, beta_0=1/32; and public
  C_Delta,c_delta,c,N_0.
- Hidden constants may depend on: only the accepted universal one-arm
  constants \(a_{\rm th},a_\delta,N_{\rm th}\).  Every new numerical
  constant is explicitly defined in (T9.1)--(T9.2).
- Hidden constants may not depend on:
  \(C,X,k,N,m,\varepsilon_0,\delta_m\), the learner, embeddings, prior
  realization, hidden arm, sample, simulation, or learner randomness.
- Fixed quantities: natural logarithm in the privacy denominator,
  base-two iterated logarithm, ordered replacement adjacency,
  zero-one risk, arbitrary-output scope, experiment size \(9n\), and
  the fixed PAC constants.
- Probability mode: the antecedent is high-probability realizable PAC;
  privacy is exact eventwise \((\varepsilon_0,\delta_m)\)-DP; `(HP)` and
  `(UT)` are expectations over the same prior, samples, construction
  coins, and learner randomness.  No probability-mode upgrade occurs.
- Horizon mode: fixed sample with \(m\) learner records and \(n\)
  external records; no asymptotic, all-time, stopping-time, or
  uniform-horizon conclusion.
- Norm mode: expected zero-one population risk `R_n(B,e)` on the exact
  finite empirical experiments.
- Admissibility conditions and auxiliary tolerances:
  \(m,k\ge1\), \(N\ge N_0\), \(0<\varepsilon_0\le1\), and
  `0<=delta_m<=c_delta/(m^2 log(em))`.  There is no new event
  assumption, confidence parameter, mesh, or auxiliary privacy value.
- Term absorption or simplification inequalities:
  
  \[
  \begin{gathered}
  n\le2m+12\le14m\le15m,\\
  \log(en)\le\log(em)+\log15
  \le(1+\log15)\log(em),\\
  n^2\log(en)
  \le225(1+\log15)m^2\log(em),\\
  \delta_m
  \le\frac{a_\delta}{C_\Delta m^2\log(em)}
  \le\frac{a_\delta}{n^2\log(en)},\\
  m<\frac{a_{\rm th}}4k\log^*N
  \Longrightarrow
  n<\frac{a_{\rm th}}2\log^*N+13
  <a_{\rm th}\log^*N,\\
  \frac5{128}+e^{-27/2}
  <\frac{41}{1024}<\frac1{20}.
  \end{gathered}
  \]
  
  Every domination has a displayed threshold and constant.
- Probability conversion: none performed locally.  Accepted `step_008`
  already converts PAC utility and coupling into `(UT)`; this step only
  compares that expectation to `(HP)` after deterministic checks.
- Contribution to any Rate Specialization Bridge: this is the complete
  R2 public bridge.  It fixes auxiliary constants, verifies the \(N\),
  sample, epsilon, and delta conditions, proves every simplification,
  invokes the exact probability interfaces, and concludes the public
  rate with universal dependence.
- Baseline-reduction check: at \(k=1\), \(n=2m+12\), \(R=m<n\), and
  \(p_{\rm ov}=0\).  The experiment, arbitrary-output scope, privacy
  pair, and zero-one risk coincide exactly with the one-chain
  interfaces, and the conclusion is
  `m>=(a_th/4)log^*N`, not a residual, conditional, proper, or
  finite-scope surrogate.

## Blockers

None

## Notation And Assumption Notes

- \(a_{\rm th},a_\delta,N_{\rm th}\): `public-facing` accepted
  dependency constants from Proposition~\ref{prop:step-005-hard-prior}.
- `C_Delta=225(1+log15)`, \(c_\delta=a_\delta/C_\Delta\), and
  \(c=a_{\rm th}/4\): `public-facing`; directly defined from accepted
  universal constants.  Proposition~\ref{prop:step-009-constants}
  proves positivity and allowed dependence.
- \(N_0\): `public-facing`; its existence and exact lower bounds are
  proved by Proposition~\ref{prop:step-009-constants}.  It is selected
  before theorem variables and depends only on
  \(a_{\rm th},N_{\rm th}\).
- \(n=\lceil2m/k\rceil+12\): `public-facing` setting-defined
  expression.  Lemma~\ref{lem:step-009-arithmetic} proves all needed
  comparisons.
- \(L=\log^*N\) and `mu=m/k`: `proof-local` abbreviations; neither is
  a new assumption or hidden bounded quantity.
- `Pi=Pi_(n,N,epsilon_0,delta_m)` and \(B_\Pi\):
  `public-facing` accepted generated objects.  Proposition~\ref{prop:step-009-admissibility}
  proves every dependency condition before using them.  Accepted
  `step_005` produces the prior; accepted `step_006` produces the
  kernel and exact privacy certificate.
- \(R,p_{\rm ov}\): `appendix-local` accepted occupancy and overflow
  objects, used directly only in the \(k=1\) trace.  Accepted
  `step_007` proves \(R=m<n\) and \(p_{\rm ov}=0\) there.
- Constant provenance: \(225=15^2\), \(1+\log15\), \(1/4\), \(26\),
  and \(13\) appear in displayed definitions or inequalities.  The
  values \(1/20,5/128,27/2,1/1024\) are accepted dependency values,
  and their final strict comparison is displayed in (9.23).
- Assumption provenance: \(m,k,N\), PAC, privacy, and the fixed scale
  are primitive; the hard prior, exact-private kernel, one-arm coupling,
  and strict utility are accepted derived outputs; the five local units
  prove constants, denominator transfer, admissibility, contradiction,
  and baseline recovery.  No generated event, boundedness,
  realizability, stability, recurrence, or local-validity condition is
  treated as primitive.
- Delta-identity audit: every appearance in (9.13), (9.17)--(9.20),
  `(HP)`, exact privacy, and `(UT)` is the same scalar `delta_m`.  No
  `delta_n` is defined.
- Quantifier audit: \(a_{\rm th},a_\delta,N_{\rm th}\) are fixed first;
  then \(C_\Delta,c_\delta,c,N_0\); only afterward are
  \(k,N,C,X,A,m,\varepsilon_0,\delta_m\) quantified.  The prior may
  depend on \(n,N,\varepsilon_0,\delta_m\), as `(HP)` permits, but not
  on the later competitor or learner randomness.
- Strictness audit: the strict counterassumption supplies
  `2m/k<(a_th/2)log^*N`, while (T9.2) supplies
  `13<(a_th/2)log^*N`.  Both are used for
  \(n<a_{\rm th}\log^*N\).  The final contradiction is strict because
  \(41/1024<1/20\).
- Boundary audit: \(m=1\) is covered by \(2m+12\le14m\); \(N=N_0\)
  retains strict reserve; epsilon_0=1 and delta_m=0 need
  no limiting argument; and \(k=1\) has exact rounding, zero overflow,
  and no nonhidden simulation.
- Diagnostic boundary: `global_proof.md` was not read or used.  It
  supplied no evidence, cited result, assumption, notation, or
  authority to change the accepted target claim.
