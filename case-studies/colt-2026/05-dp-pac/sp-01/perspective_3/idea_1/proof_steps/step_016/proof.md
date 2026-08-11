# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_016`
- Unit attempt: 1
- Binding setting SHA-256: `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`
- Binding accepted sketch SHA-256: `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`
- Binding accepted sketch-review SHA-256: `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`

### Direct Dependency Identity Table

| Step ID | Accepted proof SHA-256 | Accepted review SHA-256 | Producer status | Review status |
| ------- | --------------------- | ---------------------- | --------------- | ------------- |
| `step_001` | `88997f4c3f43c06150180724f80fcb207486dd9395aedaff636acea927659896` | `685b7bc696cbc44dfbc55b24f73ff9658cf9fb236b3f25f77fb8a0fd5002bb25` | `COMPLETE` | `ACCEPTED` |
| `step_015` | `d2e40b565478a02abb7a3e615f723f9dc1d375d6be35b9eaa2f29a76a51ca1a7` | `99740a7d05045f7abe901465b1e66aa64818c10bba96ed41248cb1c932161255` | `COMPLETE` | `ACCEPTED` |

All seven displayed binding and dependency hashes were verified
before use. Each dependency review certifies the displayed producer attempt
and reports no blocker or retry target.

## Target Step Claim

- Intended claim: On
  \(k=r,N=\operatorname{Tow}_2(r)\), prove \(L_N=r\), the exact
  structural formulas, \(\log_2^*\operatorname{LD}=\Theta(r)\), and hence
  \(n=\Omega(r^2)=\Omega(\operatorname{VC}\log_2^*\operatorname{LD})\),
  while recording the remaining gap.
- Depends on: `step_001`, `step_015`.
- Assumptions used: No additional assumption.
- Technical challenge: Floors, finite initial \(r\), and exact
  log-star/tower conventions.
- Intended proof tool or cited result: Direct tower arithmetic.
- Output target: Tower-diagonal corollary.
- Rate objective: R2, the final public specialization with
  \(r\)-independent constants.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

The rate conclusion below is asserted only for diagonal candidates that
remain inside Assumptions~\ref{assump:candidate-regime},
\ref{assump:central-dp}, and
\ref{assump:distribution-free-realizable-pac}. The deterministic structural
identities do not require those learning assumptions.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The setting definitions
    \[
    \operatorname{Tow}_2(1)=2,
    \qquad
    \operatorname{Tow}_2(s+1)=2^{\operatorname{Tow}_2(s)},
    \]
    and
    \[
    \log_2^*u=\min\{j\in\mathbb Z_{\ge0}:\log_2^{(j)}u\le1\}.
    \]
  - The diagonal specialization \(r\in\mathbb Z_{\ge2}\), \(k=r\), and
    \(N=\operatorname{Tow}_2(r)\).
  - For the learning-rate implication only, the exact primitive
    Assumptions~\ref{assump:candidate-regime},
    \ref{assump:central-dp}, and
    \ref{assump:distribution-free-realizable-pac}, specialized to the same
    diagonal candidate without strengthening any clause.
- Accepted dependency artifacts:
  - The hash-matched `step_001` proof/review pair. Accepted
    Lemma~\ref{lem:step-001-cardinality},
    Lemma~\ref{lem:step-001-vc}, and
    Proposition~\ref{prop:step-001-product-ld} give, for the exact class,
    \[
    |C_{k,N}|=(N+1)^k,
    \quad
    \operatorname{VC}(C_{k,N})=k,
    \quad
    \operatorname{LD}(C_{k,N})
      =k\lfloor\log_2(N+1)\rfloor.
    \]
  - The hash-matched `step_015` proof/review pair. Accepted
    Proposition~\ref{prop:step-015-exact-closure} fixes universal constants
    \(a,c_\delta,\varepsilon_0>0\),
    \(\alpha_0,\beta_0\in(0,1/2)\), and \(N_0\ge2\), before candidate
    quantification. In the dependency notation,
    \[
    a=\frac{b_*}{16},\qquad c_\delta=d_*,\qquad
    \varepsilon_0=0.1,\qquad \alpha_0=\beta_0=2^{-13}.
    \]
    It proves
    \[
    n\ge ak\log_2^*N
    \]
    for every and only every candidate in the approved regime.
- Derived invariants supplied by accepted dependencies:
  - The three exact structural identities above.
  - The exact pointwise nonasymptotic lower bound above, including its
    fixed constants, candidate quantifier order, privacy scope, and
    population-risk mode.
- Local conditional hypotheses: None. The diagonal substitution is a
  deterministic specialization, and no generated event or invariant is
  assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the branch tower and log-star definitions, the tower is increasing and unbounded, \(\log_2^*\operatorname{Tow}_2(r)=r\), and \(\lfloor\log_2(\operatorname{Tow}_2(r)+1)\rfloor=\operatorname{Tow}_2(r-1)\) for every integer \(r\ge2\). | Fixes the exact convention, proves \(L_N=r\), controls the floor, and makes the admissible diagonal threshold finite. |
| `unit_002` | proposition | Under the diagonal specialization and the accepted structural dependency, \(\operatorname{VC}=r\), \(\operatorname{LD}=r\operatorname{Tow}_2(r-1)\), and \(|C|=(\operatorname{Tow}_2(r)+1)^r\), with explicit natural-log cardinality bounds. | Gives all exact structural formulas and the cardinality scale. |
| `unit_003` | lemma | Under Lemma~\ref{lem:step-016-tower-arithmetic} and Proposition~\ref{prop:step-016-structural-diagonal}, \(r-1\le\log_2^*\operatorname{LD}\le r\), hence \(\log_2^*\operatorname{LD}=\Theta(r)\) with universal constants. | Proves the required LD log-star scale without hiding an \(r\)-dependent constant. |
| `unit_004` | proposition | Under the three primitive candidate assumptions, accepted Proposition~\ref{prop:step-015-exact-closure}, and \(r\) above the fixed admissible diagonal index, the specialization gives \(n\ge ar^2\) and \(n\ge a\operatorname{VC}\log_2^*\operatorname{LD}\). | Supplies the complete Rate Specialization Bridge and preserves the approved privacy/PAC regime. |
| `unit_005` | proposition | Under Propositions~\ref{prop:step-016-structural-diagonal} and Lemma~\ref{lem:step-016-ld-logstar}, the additive expression is between \(2r-1\) and \(2r\), while the exponential milestone and log-cardinality scales dominate \(r^2\). | Proves the advertised separation and locates the remaining lower-bound gap. |

Atomic step = no. Exact tower inversion, the accepted structural
specialization, the LD iterated-log comparison, activation of the accepted
learning theorem, and comparison with the source scales are independent
auditable obligations.

## Cited Result Applications

No external paper result or standard theorem is invoked directly in this
step. The only nonlocal results used are the two accepted dependency pairs.

### Accepted dependency: exact tagged-product structure

- Source or name: Accepted Lemma~\ref{lem:step-001-cardinality},
  Lemma~\ref{lem:step-001-vc}, and
  Proposition~\ref{prop:step-001-product-ld}, certified by the hash-matched
  `step_001` review.
- Restated statement in current notation: For every \(k\ge2,N\ge2\),
  \[
  |C_{k,N}|=(N+1)^k,
  \quad
  \operatorname{VC}(C_{k,N})=k,
  \quad
  \operatorname{LD}(C_{k,N})
    =k\lfloor\log_2(N+1)\rfloor.
  \]
- Instantiated objects: \(k=r\) and
  \(N=\operatorname{Tow}_2(r)\), with integer \(r\ge2\).
- Required assumptions and discharge: Only the primitive class definitions
  and \(k,N\ge2\). The diagonal has \(k=r\ge2\) and
  \(N=\operatorname{Tow}_2(r)\ge4\).
- Conclusion used: The exact VC, LD, and cardinality formulas in
  Proposition~\ref{prop:step-016-structural-diagonal}.
- Boundary interface: The accepted result includes both endpoint cuts and
  exact LD additivity; no endpoint is deleted in the specialization.

### Accepted dependency: exact nonasymptotic candidate closure

- Source or name: Accepted
  Proposition~\ref{prop:step-015-exact-closure}, certified by the
  hash-matched `step_015` review.
- Restated statement in current notation: Once the universal constants and
  fixed \(N_0\) have been chosen, with
  \(a=b_*/16,c_\delta=d_*,\varepsilon_0=0.1\), and
  \(\alpha_0=\beta_0=2^{-13}\), every
  \(k\ge2,N\ge N_0,n\ge1\), exact
  admissible privacy pair, and arbitrary randomized unrestricted improper
  learner satisfying Assumptions~\ref{assump:central-dp} and
  \ref{assump:distribution-free-realizable-pac} obeys
  \(n\ge ak\log_2^*N\).
- Instantiated objects: \(k=r\),
  \(N=\operatorname{Tow}_2(r)\), the same fixed candidate sample size
  \(n\), the same \((\varepsilon,\delta)\), and the same learner \(A\).
- Required assumptions and discharge: The exact three primitive assumptions
  are retained in Proposition~\ref{prop:step-016-rate-bridge}; its fixed
  index \(r_0\) verifies \(N\ge N_0\).
- Conclusion used: \(n\ge ar\log_2^*\operatorname{Tow}_2(r)=ar^2\).
- Boundary interface: The dependency makes no claim for \(N<N_0\), and
  neither does this step.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use |
| ------ | ------------------- | -------------------- | --------- |
| Lemma~\ref{lem:step-016-tower-arithmetic} | The branch convention gives exact tower inversion, exact floor control, and a finite admissible diagonal index. | Direct derivation from the setting definitions. | Structural specialization and rate bridge. |
| Proposition~\ref{prop:step-016-structural-diagonal} | The diagonal has exact VC, LD, and cardinality formulas, plus explicit log-cardinality bounds. | Accepted structural dependency and Lemma~\ref{lem:step-016-tower-arithmetic}. | LD log-star comparison, rate bridge, and gap comparison. |
| Lemma~\ref{lem:step-016-ld-logstar} | \(r-1\le\log_2^*\operatorname{LD}\le r\), so the structural product is between \(r^2/2\) and \(r^2\). | Tower comparisons and the exact diagonal LD formula. | Rate re-expression and comparison scales. |
| Proposition~\ref{prop:step-016-rate-bridge} | Every approved diagonal candidate at \(r\ge r_0\) satisfies both advertised lower bounds with the fixed constant \(a\). | Accepted nonasymptotic closure and the preceding local arithmetic. | Exact R2 export. |
| Proposition~\ref{prop:step-016-scale-comparison} | The additive frontier is \(\Theta(r)\), while the unproved exponential and log-cardinality milestones are asymptotically larger than the proved \(r^2\) scale. | Exact inequalities from the preceding structural results. | Honest interpretation and remaining-gap statement. |

## Local Derivation

For compactness, write

\[
T_s=\operatorname{Tow}_2(s)\qquad(s\ge1)
\]

inside this step only.

### unit_001: lemma

**Lemma (Exact tower inversion and floor arithmetic).**
\(\label{lem:step-016-tower-arithmetic}\)
Under the tower and iterated-logarithm definitions in `setting.md`, the map
\(s\mapsto T_s\) is strictly increasing and unbounded, with
\(T_s\ge2^s\) for every integer \(s\ge1\). The function
\(u\mapsto\log_2^*u\) is nondecreasing on \((0,\infty)\). Moreover, for
every integer \(r\ge1\),

\[
\log_2^*T_r=r
\tag{1}
\]

and, for every integer \(r\ge2\),

\[
\left\lfloor\log_2(T_r+1)\right\rfloor=T_{r-1}.
\tag{2}
\]

**Proof / justification.**
Because \(T_1=2\) and \(T_{s+1}=2^{T_s}\), induction gives
\(T_s\ge2^s\). Indeed, the claim is true at \(s=1\), and the elementary
induction \(2^s\ge s+1\) gives

\[
T_{s+1}=2^{T_s}\ge2^{2^s}\ge2^{s+1}.
\]

Also \(2^m>m\) for every integer \(m\ge2\), so
\(T_{s+1}>T_s\). Thus the tower is strictly increasing and, from
\(T_s\ge2^s\), unbounded.

For monotonicity of log-star, first note that for \(u>1\),

\[
\log_2^*u=1+\log_2^*(\log_2u).
\tag{3}
\]

If \(0<u\le v\), induction on \(\log_2^*v\), using the monotonicity of
\(\log_2\) and (3), gives \(\log_2^*u\le\log_2^*v\). The base case
\(\log_2^*v=0\) means \(v\le1\), so also \(u\le1\), and both log-star
values are zero. In the induction step, \(u\le1\) is immediate; if
\(u>1\), apply the induction hypothesis to
\(0<\log_2u\le\log_2v\) in (3).

For \(0\le j\le r-1\), repeated use of the tower recursion yields

\[
\log_2^{(j)}T_r=T_{r-j}.
\tag{4}
\]

In particular, the \((r-1)\)-fold iterate equals \(T_1=2>1\), whereas
the \(r\)-fold iterate equals \(\log_2 2=1\). By the minimum in the
definition of log-star, (1) follows exactly.

Finally, put \(q=T_{r-1}\). Then \(T_r=2^q>1\), and hence

\[
2^q<T_r+1<2T_r=2^{q+1}.
\]

Taking base-two logarithms gives

\[
q<\log_2(T_r+1)<q+1.
\]

Since \(q\) is an integer, its floor is exactly \(q=T_{r-1}\), proving
(2). \(\square\)

### unit_002: proposition

**Proposition (Exact diagonal structural identities).**
\(\label{prop:step-016-structural-diagonal}\)
Under the primitive diagonal specialization \(r\in\mathbb Z_{\ge2}\),
\(k=r\), \(N=T_r\), accepted
Lemma~\ref{lem:step-001-cardinality}, accepted
Lemma~\ref{lem:step-001-vc}, accepted
Proposition~\ref{prop:step-001-product-ld}, and
Lemma~\ref{lem:step-016-tower-arithmetic},

\[
\operatorname{VC}(C_{r,T_r})=r,
\qquad
\operatorname{LD}(C_{r,T_r})=rT_{r-1},
\qquad
|C_{r,T_r}|=(T_r+1)^r.
\tag{5}
\]

With the setting convention that unadorned \(\log\) is natural,

\[
rT_{r-1}\log2
  <\log|C_{r,T_r}|
  <\frac32rT_{r-1}\log2.
\tag{6}
\]

In particular,
\(\log|C_{r,T_r}|=\Theta(rT_{r-1})\) with universal hidden constants.

**Proof / justification.**
The accepted structural identities give, after the exact substitution
\(k=r,N=T_r\),

\[
\operatorname{VC}(C_{r,T_r})=r,
\]

\[
\operatorname{LD}(C_{r,T_r})
=r\left\lfloor\log_2(T_r+1)\right\rfloor,
\]

and \(|C_{r,T_r}|=(T_r+1)^r\). Equation (2) in
Lemma~\ref{lem:step-016-tower-arithmetic} turns the middle display into
\(rT_{r-1}\), proving every exact identity in (5).

For (6), write \(T_r=2^{T_{r-1}}\). The same strict comparison used for
the floor gives

\[
T_{r-1}\log2
  <\log(T_r+1)
  <(T_{r-1}+1)\log2.
\]

Since \(r\ge2\) implies \(T_{r-1}\ge T_1=2\),
\(T_{r-1}+1\le(3/2)T_{r-1}\). Multiplication by \(r\) and the exact
identity \(\log|C_{r,T_r}|=r\log(T_r+1)\) prove (6). The constants
\(\log2\) and \((3/2)\log2\) are absolute and independent of \(r\).
\(\square\)

### unit_003: lemma

**Lemma (Iterated logarithm of the diagonal Littlestone dimension).**
\(\label{lem:step-016-ld-logstar}\)
Under Lemma~\ref{lem:step-016-tower-arithmetic} and
Proposition~\ref{prop:step-016-structural-diagonal}, for every integer
\(r\ge2\),

\[
r-1
\le
\log_2^*\operatorname{LD}(C_{r,T_r})
\le r.
\tag{7}
\]

Consequently,

\[
\frac r2
\le
\log_2^*\operatorname{LD}(C_{r,T_r})
\le r,
\tag{8}
\]

so \(\log_2^*\operatorname{LD}(C_{r,T_r})=\Theta(r)\) with constants
\(1/2\) and \(1\), independent of \(r\).

**Proof / justification.**
Let \(q=T_{r-1}\). Proposition~\ref{prop:step-016-structural-diagonal}
gives

\[
\operatorname{LD}(C_{r,T_r})=rq\ge q=T_{r-1}.
\tag{9}
\]

We next prove the upper comparison \(rq\le T_r=2^q\). At \(r=2\),
\(q=T_1=2\) and both sides equal \(4\). For \(r\ge3\), induction gives
\(T_{r-1}\ge r\): the base is \(T_2=4\ge3\), and
\(T_s\ge s+1\) implies \(T_{s+1}=2^{T_s}\ge2^{s+1}\ge s+2\).
Also, \(2^x\ge x^2\) for every integer \(x\ge4\); this follows by
induction from equality at \(x=4\) and
\(2x^2\ge(x+1)^2\) for \(x\ge3\). Therefore, for \(r\ge3\),

\[
T_r=2^q\ge q^2\ge rq.
\tag{10}
\]

Combining (9)--(10), monotonicity of log-star from
Lemma~\ref{lem:step-016-tower-arithmetic}, and its exact tower inversion
gives

\[
\log_2^*T_{r-1}=r-1
\le\log_2^*(rq)
\le\log_2^*T_r=r,
\]

which is (7). Finally, \(r-1\ge r/2\) for every \(r\ge2\), yielding
(8) and the stated uniform \(\Theta\)-constants. \(\square\)

### unit_004: proposition

**Proposition (Tower-diagonal Rate Specialization Bridge).**
\(\label{prop:step-016-rate-bridge}\)
Fix the universal constants
\(a,c_\delta,\varepsilon_0,\alpha_0,\beta_0,N_0\) from accepted
Proposition~\ref{prop:step-015-exact-closure}, before any candidate is
chosen. Thus \(a=b_*/16,c_\delta=d_*,\varepsilon_0=0.1\), and
\(\alpha_0=\beta_0=2^{-13}\) in the accepted dependency notation. Define
the finite deterministic index

\[
r_0=\min\{s\in\mathbb Z_{\ge2}:T_s\ge N_0\}.
\tag{11}
\]

Under Assumptions~\ref{assump:candidate-regime},
\ref{assump:central-dp}, and
\ref{assump:distribution-free-realizable-pac}, every diagonal candidate
with integer \(r\ge r_0\), \(k=r\), and \(N=T_r\) satisfies

\[
n\ge ar^2
\tag{12}
\]

and

\[
n\ge
a\,\operatorname{VC}(C_{r,T_r})
   \log_2^*\operatorname{LD}(C_{r,T_r}).
\tag{13}
\]

Moreover,

\[
\frac12r^2
\le
\operatorname{VC}(C_{r,T_r})
\log_2^*\operatorname{LD}(C_{r,T_r})
\le r^2.
\tag{14}
\]

Thus (12)--(13) are exactly
\(n=\Omega(r^2)=\Omega(\operatorname{VC}\log_2^*\operatorname{LD})\),
with constants independent of \(r\), and only within the approved
candidate/privacy/PAC regime.

**Proof / justification.**
Lemma~\ref{lem:step-016-tower-arithmetic} proves that \(T_s\) is
increasing and unbounded, so the set in (11) is nonempty and \(r_0\) is a
finite integer depending only on the already-fixed \(N_0\). For every
\(r\ge r_0\), one has \(r\ge2\) and \(T_r\ge T_{r_0}\ge N_0\).
Therefore \(k=r,N=T_r\) meet the structural range of accepted
Proposition~\ref{prop:step-015-exact-closure}.

No privacy condition is absorbed in this substitution. The candidate has
the exact budget

\[
m_{n,r}=\max\left\{8,\left\lceil\frac{4n}{r}\right\rceil\right\},
\]

and Assumption~\ref{assump:candidate-regime} remains exactly

\[
n\in\mathbb Z_{\ge1},
\quad 0<\varepsilon\le\varepsilon_0,
\quad
0<\delta\le
\min\left\{
\frac1{n\log(n+1)},
\frac{c_\delta}{m_{n,r}^2\log(m_{n,r}+1)}
\right\}.
\tag{15}
\]

The learner remains an arbitrary randomized map

\[
A:(X_{r,T_r}\times\{0,1\})^n
  \longrightarrow\{0,1\}^{X_{r,T_r}}
\]

satisfying the exact central replacement-DP and distribution-free
realizable-PAC assumptions at this same candidate. Accepted
Proposition~\ref{prop:step-015-exact-closure} therefore applies without a
mode or scope conversion and gives

\[
n\ge ar\log_2^*T_r.
\]

Equation (1) in Lemma~\ref{lem:step-016-tower-arithmetic} makes the
right-hand side exactly \(ar^2\), proving (12). No asymptotic term is
dropped in this equality.

By Proposition~\ref{prop:step-016-structural-diagonal} and
Lemma~\ref{lem:step-016-ld-logstar},

\[
\operatorname{VC}(C_{r,T_r})=r,
\qquad
\frac r2
\le\log_2^*\operatorname{LD}(C_{r,T_r})\le r.
\]

Multiplication proves (14). In particular, the upper half of (14) and
(12) give

\[
n\ge ar^2
\ge
a\,\operatorname{VC}(C_{r,T_r})
   \log_2^*\operatorname{LD}(C_{r,T_r}),
\]

which is (13) with the same inherited constant \(a\).

The finite initial indices are not hidden inside an \(r\)-dependent
constant. At \(r=2\), the arithmetic itself is exact:

\[
T_1=2,\qquad T_2=4,\qquad \log_2^*T_2=2,\qquad
\lfloor\log_2(5)\rfloor=2,
\]

and hence \(\operatorname{VC}=2\), \(\operatorname{LD}=4\),
\(|C|=25\), and \(\log_2^*\operatorname{LD}=2\). The same structural
identities hold for every \(2\le r<r_0\). By the minimality of \(r_0\)
and monotonicity of the tower, every such index has \(T_r<N_0\). Therefore
accepted
Proposition~\ref{prop:step-015-exact-closure} is inapplicable, so this step
makes no learning lower-bound claim there. The asymptotic statements begin
at the single fixed index \(r_0\). \(\square\)

### unit_005: proposition

**Proposition (Diagonal separation and unresolved scales).**
\(\label{prop:step-016-scale-comparison}\)
Under Proposition~\ref{prop:step-016-structural-diagonal} and
Lemma~\ref{lem:step-016-ld-logstar}, for every integer \(r\ge2\),

\[
2r-1
\le
\operatorname{VC}(C_{r,T_r})
+\log_2^*\operatorname{LD}(C_{r,T_r})
\le2r,
\tag{16}
\]

and

\[
r2^{r-1}
\le
\operatorname{VC}(C_{r,T_r})
2^{\log_2^*\operatorname{LD}(C_{r,T_r})}
\le r2^r.
\tag{17}
\]

Consequently, the established lower-bound scale \(r^2\) exceeds the
additive expression by an unbounded factor, but

\[
r^2
=o\!\left(
\operatorname{VC}(C_{r,T_r})
2^{\log_2^*\operatorname{LD}(C_{r,T_r})}
\right)
\tag{18}
\]

and

\[
r^2=o(\log|C_{r,T_r}|).
\tag{19}
\]

These comparisons concern the size of the proved lower-bound expression;
they are not upper bounds on the true sample complexity.

**Proof / justification.**
Substitute \(\operatorname{VC}=r\) and the two bounds in (7). Addition
gives (16), and exponentiation followed by multiplication by \(r\) gives
(17). In particular,

\[
\frac{r^2}{
 \operatorname{VC}(C_{r,T_r})
 +\log_2^*\operatorname{LD}(C_{r,T_r})}
\ge\frac r2\longrightarrow\infty,
\]

which proves the unbounded-factor comparison with the additive scale.

For the first remaining scale, the lower half of (17) gives

\[
0\le
\frac{r^2}{
 \operatorname{VC}(C_{r,T_r})
 2^{\log_2^*\operatorname{LD}(C_{r,T_r})}}
\le\frac r{2^{r-1}}.
\tag{20}
\]

The right-hand side tends to zero: its ratio at consecutive indices is
\((r+1)/(2r)\le3/4\) for \(r\ge2\). This proves (18).

For cardinality, (6) and \(T_{r-1}\ge2^{r-1}\) from
Lemma~\ref{lem:step-016-tower-arithmetic} yield

\[
0\le\frac{r^2}{\log|C_{r,T_r}|}
<\frac{r}{T_{r-1}\log2}
\le\frac{r}{2^{r-1}\log2}\longrightarrow0,
\]

which proves (19). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-016-tower-arithmetic} uses the exact branch convention
\(T_1=2,T_{s+1}=2^{T_s}\) and the minimum-based definition of log-star to
prove

\[
L_N=\log_2^*N=\log_2^*T_r=r
\]

without a base change or asymptotic replacement. It also proves the exact
floor identity needed by the accepted structural dependency. Accepted
Lemma~\ref{lem:step-001-cardinality}, accepted
Lemma~\ref{lem:step-001-vc}, and accepted
Proposition~\ref{prop:step-001-product-ld} then assemble through
Proposition~\ref{prop:step-016-structural-diagonal} to give

\[
\operatorname{VC}(C_{r,T_r})=r,
\quad
\operatorname{LD}(C_{r,T_r})=rT_{r-1},
\quad
|C_{r,T_r}|=(T_r+1)^r.
\]

Lemma~\ref{lem:step-016-ld-logstar} proves with explicit universal
constants that

\[
\frac r2
\le\log_2^*\operatorname{LD}(C_{r,T_r})\le r.
\]

Accepted Proposition~\ref{prop:step-015-exact-closure}, instantiated only
after Proposition~\ref{prop:step-016-rate-bridge} verifies
\(r\ge r_0\), the exact candidate-privacy conjunction, and both learner
assumptions, gives

\[
n\ge ar^2
\ge
a\,\operatorname{VC}(C_{r,T_r})
   \log_2^*\operatorname{LD}(C_{r,T_r}).
\]

The same proposition handles finite initial indices explicitly: all
structural formulas hold from \(r=2\), while the learning theorem is
asserted only from the fixed \(r_0\) that ensures \(N=T_r\ge N_0\).
Proposition~\ref{prop:step-016-scale-comparison} proves that the additive
expression is \(\Theta(r)\), so the established \(\Omega(r^2)\) lower
bound improves that scale by an unbounded factor. Together, these named
results prove exactly the accepted `step_016` target.

The remaining source gap is unchanged and is not hidden by the
specialization. This `material_partial` result does not prove the stronger
\(\Omega(\operatorname{VC}\,2^{\log_2^*\operatorname{LD}})\) milestone,
does not prove the sibling \(\Omega(\log|C|)\) theorem, supplies no
universal upper bound, and does not identify a matching combinatorial
measure for every finite-Littlestone class. Equations (18)--(19) quantify
why the proved \(r^2\) lower-bound expression remains below those two
lower-bound targets on this diagonal.

## Explicit Rate Audit

- Exposed variables: \(r\), with the exact substitutions \(k=r\),
  \(N=T_r\), candidate sample size \(n\), privacy parameters
  \(\varepsilon,\delta\), exact
  \(m_{n,r}=\max\{8,\lceil4n/r\rceil\}\), and the induced
  \(\operatorname{VC}\), \(\operatorname{LD}\), \(\log_2^*\), and
  \(|C|\).
- Hidden constants may depend on: Only the universal constants already
  allowed by accepted R1, namely the fixed source constants and the
  once-chosen privacy, accuracy, confidence, and \(N_0\) constants. The
  lower-bound constant is the same accepted \(a>0\).
- Hidden constants may not depend on: \(r,k,N,n,\varepsilon,\delta\), the
  learner, a target, a distribution, or any random object. The displayed
  \(1/2\), \(1\), \(\log2\), and \((3/2)\log2\) structural constants are
  absolute.
- Fixed quantities: The tower convention, base-two log-star convention,
  all R1 theorem constants, and \(N_0\) are fixed before the diagonal
  index and candidate. The threshold \(r_0\) is then determined solely by
  the fixed \(N_0\).
- Probability mode: Deterministic pointwise lower-bound implication,
  inherited unchanged from accepted `step_015`. PAC probability remains
  over the exact iid sample and learner randomness inside the antecedent;
  this specialization performs no probability conversion.
- Horizon mode: Each underlying theorem application has fixed sample size
  \(n\); R2 is an asymptotic structural specialization as \(r\to\infty\)
  beginning at fixed \(r_0\). There is no stopping-time, expected-size, or
  all-time upgrade.
- Norm mode: Population 0-1 risk, inherited unchanged. The structural
  comparisons use exact VC dimension, Littlestone dimension, and
  cardinality.
- Admissibility conditions and auxiliary tolerances: Exactly
  Assumptions~\ref{assump:candidate-regime},
  \ref{assump:central-dp}, and
  \ref{assump:distribution-free-realizable-pac}, with \(k=r,N=T_r\) and
  \(r\ge r_0\). Equation (15) displays the full two-term \(\delta\)
  conjunction. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: The exact identity
  \(\log_2^*T_r=r\) gives
  \(ak\log_2^*N=ar^2\) with no absorption. Equations (7)--(8) give
  \[
  \frac12r^2
  \le\operatorname{VC}\log_2^*\operatorname{LD}\le r^2,
  \]
  so \(n\ge ar^2\) implies the second lower bound with the same \(a\).
  The floor and cardinality simplifications are the explicit inequalities
  (2) and (6).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: Proposition~\ref{prop:step-016-rate-bridge}
  is the R2 bridge. Its auxiliary choice is \(k=r,N=T_r\); it verifies
  \(r\ge r_0\), \(k\ge2\), \(N\ge N_0\), the exact candidate-privacy
  condition, and both learner assumptions; performs the exact term
  simplification; requires no probability conversion; and states the final
  constants and structural rate.
- Baseline-reduction check: At \(r=2\), all tower, floor, VC, LD,
  cardinality, and log-star conventions are checked explicitly. For every
  \(2\le r<r_0\), the structural identities remain true but no learning
  lower bound is asserted when \(T_r<N_0\). For \(r\ge r_0\), the exact
  unrestricted improper learner scope, fixed-size central replacement DP,
  full candidate-\(\delta\) conjunction, and population-risk PAC mode are
  inherited without a conservative loss.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: The exact diagonal identities, the two-sided structural
  bounds, Proposition~\ref{prop:step-016-rate-bridge}, and the fixed
  admissible index \(r_0\). The latter is directly defined from the
  accepted fixed \(N_0\) and proved finite by
  Lemma~\ref{lem:step-016-tower-arithmetic}.
- `Appendix-local`: \(T_s=\operatorname{Tow}_2(s)\) and the temporary
  quantity \(q=T_{r-1}\). Both are direct abbreviations of setting-defined
  expressions and introduce no assumption or free constant.
- `Proof-local`: The ratios in (20) and the elementary comparison
  \(2^q\ge q^2\ge rq\). They are derived in the corresponding local units
  and export no helper object.
- Constant provenance: \(a,c_\delta,\varepsilon_0,\alpha_0,\beta_0,N_0\)
  are inherited from accepted
  Proposition~\ref{prop:step-015-exact-closure}. The index \(r_0\) is
  directly defined from \(N_0\) and the setting tower. Every other constant
  displayed in this step is numerical and absolute. No constant depends on
  \(r\) or a candidate.
- Accepted dependency constants: \(b_*\) and \(d_*\) are the universal
  source constants already encapsulated by accepted
  Proposition~\ref{prop:step-015-exact-closure}. They appear only to record
  the inherited identities \(a=b_*/16\) and \(c_\delta=d_*\); no external
  source theorem is consumed directly in this step.
- Primitive assumption provenance: The arithmetic and structural units use
  only the setting definitions and \(r\ge2\). The learning-rate unit uses
  exactly Assumptions~\ref{assump:candidate-regime},
  \ref{assump:central-dp}, and
  \ref{assump:distribution-free-realizable-pac}; none is strengthened or
  replaced.
- Derived-condition provenance: The exact structural identities are
  supplied by the accepted `step_001` dependency, and the pointwise R1
  theorem and its constants are supplied by the accepted `step_015`
  dependency. Tower comparisons, the LD log-star bounds, and finiteness of
  \(r_0\) are proved locally.
- Generated-object and invariant provenance: No random object, event,
  recurrence, stability condition, or generated invariant occurs in this
  deterministic specialization.
- Scope discipline: The structural statements hold for all integers
  \(r\ge2\). The sample lower bounds hold only for \(r\ge r_0\) and only
  when the exact diagonal candidate satisfies all three approved primitive
  assumptions. No conclusion is asserted outside that candidate/privacy
  regime.
- Remaining-gap discipline: The absence statements in the assembly are
  scope labels, not inferred upper bounds. The proof establishes only the
  accepted `material_partial` diagonal lower bound and the exact structural
  comparisons in Proposition~\ref{prop:step-016-scale-comparison}.
- Diagnostic boundary: The optional `global_proof.md` was not read or used.
  No diagnostic statement is evidence, a cited result, an assumption
  source, or authority to change the accepted target claim.
