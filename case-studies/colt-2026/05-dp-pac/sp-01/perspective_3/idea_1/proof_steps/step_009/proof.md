# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove
  \(U\sim\operatorname{Bin}(n,1/k)\) and
  \(\Pr(U>M)<2^{-9}\) by the two-case factorial-moment calculation;
  explicitly cover \(k=2,3\), \(n<k\), and \(M=8\).
- Depends on: `step_005`, `step_008`.
- Assumptions used: Primitive tag sampling; the derived contradiction regime
  is not needed for the tail.
- Technical challenge: Uniform small-mean and ceiling control.
- Intended proof tool or cited result: Falling-factorial Markov bound and a
  monotone scalar sequence.
- Output target: Overflow certificate.
- Rate objective: R1, with explicit \(n,k,M\) finite-budget dependence.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

Use the exact setting-defined budget

\[
M=m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\}.
\tag{1}
\]

In the ideal hidden-coordinate experiment of accepted `step_008`, let
\(J\sim\operatorname{Unif}[k]\), let \(I_1,\ldots,I_n\) be the fresh
independent uniform tags, independent of \(J\), and define the exact usage
count

\[
U:=\sum_{\ell=1}^n \mathbf 1\{I_\ell=J\}.
\tag{2}
\]

The exact certificate proved below is

\[
U\sim\operatorname{Bin}\!\left(n,\frac1k\right)
\quad\text{and}\quad
\Pr\{U>M\}<2^{-9}
\tag{3}
\]

for every pair of integers \(k\ge2\) and \(n\ge1\). The probability in
(3) is over the analysis-side selector and the exactly \(n\) fresh tag
draws. It is not an expected-sample-size statement. The proof uses neither
the contradiction hypothesis \(n<ak\log_2^*N\) nor any restriction on
\(N,\varepsilon,\delta\), a hard instance, the data features, or the
learner.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic-setting integer ranges \(k\ge2\) and \(n\ge1\).
  - The exact definition (1), including its ceiling and floor-eight branch.
- Setting technical assumptions by stable id: None. In particular, this
  step does not consume `assump:candidate-regime`, `assump:central-dp`, or
  `assump:distribution-free-realizable-pac`.
- Accepted dependency step proof/review artifacts:
  - `proof_steps/step_005/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a`.
  - `proof_steps/step_005/review.md`, SHA-256
    `f12de095c3827725cd4d7c8e7ab89fa2b450c0e7a878bd56d766ea5e6aab750b`,
    whose `Step-Review Status` is `ACCEPTED` and which reviews the preceding
    proof hash.
  - `proof_steps/step_008/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `3dddedfdd14f3415d0c01b41d4f401cc0039249d8e4aa3fa856808588971fc41`.
  - `proof_steps/step_008/review.md`, SHA-256
    `5c49ef256d2a14d6f0abb365bd160f319cf7566113733f68dc76663d74f44305`,
    whose `Step-Review Status` is `ACCEPTED` and which reviews the preceding
    proof hash.
- Derived objects and interfaces supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-005-certificate} preserves the exact
    integer budget (1) in the R1 calibration. Its additional conclusions
    about \(M<b_*\log_2^*N\), source privacy parameters, and the local
    contradiction hypothesis are not used in this tail calculation.
  - The ideal experiment exported by accepted `step_008`, together with
    Lemma~\ref{lem:step-008-ideal-sample-law}, supplies the selector \(J\)
    and fresh tags \(I_1,\ldots,I_n\): conditional on every value of \(J\)
    and every preceding instance vector, those tags are mutually independent
    and uniform on \([k]\), and their kernel does not depend on \(J\).
- Derived invariants supplied by accepted dependencies: None. The binomial
  law and overflow event are proved here.
- Local conditional hypotheses: None.

Under the Assumption Provenance Contract, the integer ranges and budget
formula are primitive scalar conditions; the ideal tag variables are
accepted dependency objects; and the usage law and tail certificate are
locally derived outputs. No generated-object property is promoted to a
primitive or conditional assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | **Exact hidden-tag usage law** (`lem:step-009-usage-law`). Under the accepted ideal tag interface, for integers \(k\ge2,n\ge1\), the count in (2) is conditionally and unconditionally \(\operatorname{Bin}(n,1/k)\). | Proves the exact usage law at fixed size \(n\), including \(U=0\). |
| `unit_002` | lemma | **Falling-factorial binomial tail bound** (`lem:step-009-factorial-tail`). If \(V\sim\operatorname{Bin}(n,p)\) and \(r\ge1\) is an integer, then \(\Pr(V\ge r)\le (n)_r p^r/r!\le(np)^r/r!\), with the same statement when \(r>n\). | Supplies a self-contained factorial-moment inequality with no asymptotic tail theorem. |
| `unit_003` | lemma | **Floor-eight small-mean bound** (`lem:step-009-small-mean`). If \(\lambda=n/k\le2\), then \(M=8\) and \(\Pr(U>M)\le2^9/9!<2^{-9}\); if \(n<k\), the sharper strict chain \(\Pr(U>M)<1/9!<2^{-9}\) holds. | Handles the entire \(M=8\) branch, the exact boundary \(\lambda=2\), and \(n<k\). |
| `unit_004` | lemma | **Monotone factorial envelope** (`lem:step-009-envelope`). For every integer \(j\ge9\), \(a_j=(j/4)^{j+1}/(j+1)!\) is strictly decreasing and \(a_j\le a_9<2^{-10}\). | Controls all ceiling values in the large-mean branch by one exact numerical endpoint. |
| `unit_005` | lemma | **Ceiling-controlled large-mean bound** (`lem:step-009-large-mean`). If \(\lambda=n/k>2\) and \(j=\lceil4\lambda\rceil\), then \(M=j\ge9\) and \(\Pr(U>M)\le a_j<2^{-10}<2^{-9}\), including the case \(j+1>n\). | Applies the factorial moment at the exact integer overflow threshold and controls every ceiling effect. |
| `unit_006` | proposition | **Exact finite-budget overflow certificate** (`prop:step-009-overflow`). Under the primitive ranges and accepted tag interface, (3) holds for all \(k,n\); moreover \(k=2,3\) gives zero overflow, \(n<k\) lies in the floor-eight branch, and every occurrence of \(M=8\) is covered by the small-mean calculation. | Assembles exactly the accepted sketch-row claim and its requested boundary cases. |

Atomic step = no. The probability law, factorial-moment identity, two tail
branches, monotonic scalar envelope, and boundary reductions are independent
auditable obligations.

## Cited Result Applications

### Accepted dependency: hard-regime and candidate-parameter certificate

- Source or name: Accepted
  Proposition~\ref{prop:step-005-certificate}, certified by the matching
  accepted `step_005` review.
- Restated statement in current notation: With its fixed universal
  calibration and under Assumption~\ref{assump:candidate-regime} plus the
  local contradiction hypothesis, the proposition keeps
  \(M=\max\{8,\lceil4n/k\rceil\}\) as the exact integer simulator budget
  and proves the source-regime and privacy-cap conditions.
- Instantiated objects: The same integers \(n,k\) and exact \(M\) as in (1).
- Required assumptions and discharge: The proposition's contradiction and
  privacy hypotheses are not discharged here because none of its
  contradiction-dependent conclusions is used. The exact budget formula is
  already a primitive basic-setting definition and is used without
  alteration.
- Conclusion used: Only interface compatibility: this proof returns a tail
  certificate for the identical fixed integer \(M\). It does not replace
  \(M\) by \(4n/k\), an expectation, or a stopping budget.

### Accepted dependency: ideal hidden-coordinate tag interface

- Source or name: The accepted ideal experiment and
  Lemma~\ref{lem:step-008-ideal-sample-law}, certified by the matching
  accepted `step_008` review.
- Restated statement in current notation: The experiment first draws
  \(J\sim\operatorname{Unif}[k]\); after all preceding variables, it draws
  \(I_1,\ldots,I_n\) independently and uniformly from \([k]\), independently
  of \(J\). Conditional on any preceding realization, the tag kernel is
  exactly the \(n\)-fold uniform product and contains no \(J\)-dependent
  factor.
- Instantiated objects: \(J,I_1,\ldots,I_n\) and the count \(U\) in (2).
- Required assumptions and discharge: Integers \(k\ge2,n\ge1\) are primitive;
  the exact fixed-size tag construction is an accepted dependency output.
- Conclusion used: Conditional on \(J=j\), the indicators
  \(\mathbf1\{I_\ell=j\}\) are independent Bernoulli\((1/k)\), and this
  conditional law is the same for every \(j\).
- Non-output boundary: The dependency supplies no binomial-count theorem,
  factorial moment, overflow estimate, or numerical tail constant. Those
  conclusions are proved below.

### Locally proved falling-factorial tool

- Source or name: Lemma~\ref{lem:step-009-factorial-tail}, proved in this
  artifact by expanding ordered tuples of successful Bernoulli trials.
- Restated statement in current notation: For a binomial count \(V\) and
  every integer \(r\ge1\),
  \[
  \Pr(V\ge r)\le\frac{(n)_r p^r}{r!}
  \le\frac{(np)^r}{r!}.
  \]
- Instantiated objects: \(V=U\), \(p=1/k\), and \(r=9\) in the small-mean
  branch or \(r=j+1\) in the large-mean branch.
- Required assumptions and discharge: The exact binomial law is proved by
  Lemma~\ref{lem:step-009-usage-law}; both values of \(r\) are positive
  integers. The proof explicitly includes \(r>n\).
- Conclusion used: The overflow event is charged to one exact factorial
  moment, with no repeated-row, limit, or hidden-constant argument.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Lemma~\ref{lem:step-009-usage-law} | \(U\) is exactly \(\operatorname{Bin}(n,1/k)\), conditionally on every \(J\) and unconditionally. | Accepted fixed-size uniform-tag construction. | Supplies the count law to both tail branches. |
| Lemma~\ref{lem:step-009-factorial-tail} | \(\Pr(V\ge r)\le(np)^r/r!\) for every integer \(r\ge1\), including \(r>n\). | Direct ordered-tuple expansion and indicator domination. | Bounds \(U\ge9\) and \(U\ge j+1\). |
| Lemma~\ref{lem:step-009-small-mean} | \(\lambda\le2\) forces \(M=8\) and gives the strict \(2^{-9}\) tail bound. | Exact ceiling arithmetic, the preceding two lemmas, and \(9!>2^{18}\). | Discharges the first exhaustive branch and the \(M=8,n<k\) boundaries. |
| Lemma~\ref{lem:step-009-envelope} | \(a_j\le a_9<2^{-10}\) for every integer \(j\ge9\). | Exact consecutive-ratio and endpoint arithmetic. | Uniformly controls the large-mean ceiling. |
| Lemma~\ref{lem:step-009-large-mean} | \(\lambda>2\) gives \(M=j=\lceil4\lambda\rceil\) and tail below \(2^{-10}\). | Factorial tail lemma, \(\lambda\le j/4\), and the monotone envelope. | Discharges the second exhaustive branch. |
| Proposition~\ref{prop:step-009-overflow} | The binomial law and strict overflow certificate hold for all allowed \(n,k\), with the requested boundaries. | Exhaustive split \(\lambda\le2\) or \(\lambda>2\), plus direct deterministic boundary checks. | Exact target-step export. |

No external paper theorem, asymptotic concentration inequality, or diagnostic
artifact is used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Exact hidden-tag usage law).**
\(\label{lem:step-009-usage-law}\)
Under the accepted ideal hidden-coordinate tag interface, for every pair of
integers \(k\ge2,n\ge1\), the count \(U\) in (2) satisfies, for each
\(j\in[k]\) and each \(u\in\{0,\ldots,n\}\),

\[
\Pr\{U=u\mid J=j\}
=\binom nu\left(\frac1k\right)^u
 \left(1-\frac1k\right)^{n-u}.
\tag{4}
\]

Consequently \(U\sim\operatorname{Bin}(n,1/k)\) unconditionally. The law
includes \(U=0\), and its trial count is exactly \(n\).

**Proof / justification.**
Fix \(j\in[k]\). By the accepted tag interface, conditional on \(J=j\),
the variables

\[
B_\ell:=\mathbf1\{I_\ell=j\},\qquad \ell\in[n],
\]

are mutually independent, and

\[
\Pr\{B_\ell=1\mid J=j\}=\Pr\{I_\ell=j\mid J=j\}=\frac1k.
\]

Thus \(U=\sum_{\ell=1}^nB_\ell\). For any fixed set of exactly \(u\)
indices, the probability that precisely those indicators equal one is
\(k^{-u}(1-1/k)^{n-u}\). The \(\binom nu\) choices are disjoint, proving
(4). The right-hand side does not depend on \(j\). Since
\(\Pr(J=j)=1/k\),

\[
\begin{aligned}
\Pr\{U=u\}
&=\sum_{j=1}^k\Pr\{J=j\}\Pr\{U=u\mid J=j\}\\
&=\binom nu\left(\frac1k\right)^u
 \left(1-\frac1k\right)^{n-u}.
\end{aligned}
\]

This is the asserted binomial mass function. In particular, no random block
instance, feature, label, learner output, or stopping rule changes the law.
\(\square\)

### unit_002: lemma

**Lemma (Falling-factorial binomial tail bound).**
\(\label{lem:step-009-factorial-tail}\)
Let \(V\sim\operatorname{Bin}(n,p)\), where \(n\ge1\) and
\(p\in[0,1]\). For every integer \(v\ge0\), set \((v)_0:=1\); for every
integer \(r\ge1\), write

\[
(v)_r:=v(v-1)\cdots(v-r+1),
\]

with \((v)_r=0\) when \(r>v\). Then, for every integer \(r\ge1\),

\[
\mathbb E(V)_r=(n)_r p^r
\tag{5}
\]

and

\[
\Pr\{V\ge r\}
\le \frac{(n)_r p^r}{r!}
\le \frac{(np)^r}{r!}.
\tag{6}
\]

Equations (5)--(6) remain valid when \(r>n\), in which case both the event
and \((n)_r\) vanish.

**Proof / justification.**
Represent \(V=\sum_{\ell=1}^n Z_\ell\) for independent
Bernoulli\((p)\) variables. For every outcome with \(V=v\), the number of
ordered \(r\)-tuples of pairwise distinct successful trial indices is
exactly \((v)_r\). Hence the pointwise identity

\[
(V)_r
=\sum_{\substack{(\ell_1,\ldots,\ell_r)\in[n]^r\\
                    \ell_1,\ldots,\ell_r\ \mathrm{pairwise\ distinct}}}
  \prod_{s=1}^r Z_{\ell_s}
\tag{7}
\]

holds, with an empty sum if \(r>n\). There are \((n)_r\) ordered tuples,
and independence gives expectation \(p^r\) for every product in (7),
proving (5).

If \(V\ge r\), then

\[
(V)_r=r!\binom Vr\ge r!,
\]

whereas if \(V<r\), both \(\mathbf1\{V\ge r\}\) and \((V)_r\) are zero.
Therefore

\[
\mathbf1\{V\ge r\}\le\frac{(V)_r}{r!}
\]

pointwise. Taking expectations and using (5) gives the first inequality in
(6). Finally, each of the \(r\) nonnegative factors of \((n)_r\) is at
most \(n\) when \(r\le n\), so \((n)_r\le n^r\). When \(r>n\), the
left side is zero. This proves the second inequality in every case.
\(\square\)

### unit_003: lemma

**Lemma (Floor-eight small-mean bound).**
\(\label{lem:step-009-small-mean}\)
Under Lemmas~\ref{lem:step-009-usage-law} and
\ref{lem:step-009-factorial-tail}, define

\[
\lambda:=\frac nk.
\tag{8}
\]

If \(\lambda\le2\), then the exact budget (1) satisfies \(M=8\) and

\[
\Pr\{U>M\}
\le\frac{\lambda^9}{9!}
\le\frac{2^9}{9!}
<2^{-9}.
\tag{9}
\]

If, more specifically, \(n<k\), then \(M=8\) and

\[
\Pr\{U>M\}<\frac1{9!}<2^{-9}.
\tag{10}
\]

Thus the statement includes the exact boundary \(\lambda=2\), every
occurrence of \(M=8\), and the case \(n<k\).

**Proof / justification.**
If \(\lambda\le2\), then \(4\lambda\le8\), so

\[
\lceil4n/k\rceil=\lceil4\lambda\rceil\le8.
\]

Equation (1) therefore gives \(M=8\) exactly. Since \(U\) is integer,

\[
\{U>M\}=\{U>8\}=\{U\ge9\}.
\tag{11}
\]

Apply Lemma~\ref{lem:step-009-factorial-tail} to the exact law in
Lemma~\ref{lem:step-009-usage-law} with \(p=1/k\) and \(r=9\). Because
\(np=n/k=\lambda\),

\[
\Pr\{U>M\}\le\frac{\lambda^9}{9!}
\le\frac{2^9}{9!}.
\tag{12}
\]

The final comparison in (9) is strict and completely numerical:

\[
9!=362880>262144=2^{18}.
\tag{13}
\]

Dividing (13) by the positive number \(2^9 9!\) gives
\(2^9/9!<2^{-9}\), completing (9). If \(n<9\), the event in (11) is
actually empty because \(U\le n\), and the convention in
Lemma~\ref{lem:step-009-factorial-tail} records this as \((n)_9=0\).

If \(n<k\), then \(0<\lambda<1\) and
\(0<4\lambda<4\), whence \(\lceil4\lambda\rceil\le4\) and \(M=8\).
The first inequality of (9) is then strict:

\[
\Pr\{U>M\}\le\frac{\lambda^9}{9!}<\frac1{9!}.
\]

Since \(9!=362880>512=2^9\), one has \(1/9!<2^{-9}\), proving (10).
Conversely, if \(M=8\), then (1) implies
\(\lceil4\lambda\rceil\le8\), hence \(4\lambda\le8\) and
\(\lambda\le2\); thus every possible \(M=8\) case is indeed contained
in this lemma. \(\square\)

### unit_004: lemma

**Lemma (Monotone factorial envelope).**
\(\label{lem:step-009-envelope}\)
For every integer \(j\ge9\), define

\[
a_j:=\frac{(j/4)^{j+1}}{(j+1)!}.
\tag{14}
\]

Then \((a_j)_{j\ge9}\) is strictly decreasing and

\[
a_j\le a_9
=\frac{(9/4)^{10}}{10!}
<2^{-10}.
\tag{15}
\]

**Proof / justification.**
Direct cancellation gives, for every integer \(j\ge9\),

\[
\frac{a_{j+1}}{a_j}
=\frac{j+1}{4(j+2)}
 \left(1+\frac1j\right)^{j+1}.
\tag{16}
\]

We bound the power in (16) without importing an asymptotic exponential
estimate. The binomial theorem gives

\[
\left(1+\frac1j\right)^j
=\sum_{r=0}^j \binom jr j^{-r}
=\sum_{r=0}^j \frac{(j)_r}{r!\,j^r}
\le\sum_{r=0}^j\frac1{r!}
<3.
\tag{17}
\]

For the strict last inequality, \(r!\ge2^{r-1}\) for every \(r\ge2\),
with strict inequality for every \(r\ge3\), so

\[
\sum_{r=2}^{\infty}\frac1{r!}
<\sum_{r=2}^{\infty}\frac1{2^{r-1}}=1.
\]

Adding the \(r=0,1\) terms proves (17). Since \(j\ge9\),

\[
\left(1+\frac1j\right)^{j+1}
<3\left(1+\frac19\right)
=\frac{10}{3}<4.
\tag{18}
\]

Substituting (18) into (16) yields the strict ratio bound

\[
\frac{a_{j+1}}{a_j}
<\frac{j+1}{j+2}<1.
\tag{19}
\]

Thus the sequence is strictly decreasing and \(a_j\le a_9\). It remains
to verify the endpoint constant. Since \(4^{10}=2^{20}\), the inequality
\(a_9<2^{-10}\) is equivalent to

\[
9^{10}<2^{10}\,10!.
\]

Both integers are explicit:

\[
9^{10}=3486784401
<3715891200=2^{10}\,10!.
\tag{20}
\]

Equations (19)--(20) prove (15). \(\square\)

### unit_005: lemma

**Lemma (Ceiling-controlled large-mean bound).**
\(\label{lem:step-009-large-mean}\)
Under Lemmas~\ref{lem:step-009-usage-law},
\ref{lem:step-009-factorial-tail}, and
\ref{lem:step-009-envelope}, if \(\lambda=n/k>2\) and

\[
j:=\lceil4\lambda\rceil,
\tag{21}
\]

then \(j\) is an integer satisfying \(j\ge9\), the exact budget is
\(M=j\), and

\[
\Pr\{U>M\}
\le\frac{\lambda^{j+1}}{(j+1)!}
\le\frac{(j/4)^{j+1}}{(j+1)!}
\le\frac{(9/4)^{10}}{10!}
<2^{-10}<2^{-9}.
\tag{22}
\]

The conclusion remains valid when \(j+1>n\), when the overflow event is
empty.

**Proof / justification.**
The strict inequality \(\lambda>2\) gives \(4\lambda>8\). Therefore its
integer ceiling obeys

\[
j=\lceil4\lambda\rceil\ge9,
\tag{23}
\]

so (1) gives \(M=\max\{8,j\}=j\). Because \(U\) is integer,

\[
\{U>M\}=\{U\ge j+1\}.
\tag{24}
\]

Apply Lemma~\ref{lem:step-009-factorial-tail} with
\(p=1/k\) and the integer order \(r=j+1\). Together with
Lemma~\ref{lem:step-009-usage-law}, this gives

\[
\Pr\{U>M\}
\le\frac{(n/k)^{j+1}}{(j+1)!}
=\frac{\lambda^{j+1}}{(j+1)!}.
\tag{25}
\]

If \(j+1>n\), the sharper first expression in (6) has
\((n)_{j+1}=0\), so (24) is empty and (25) still holds. No unstated
assumption \(j+1\le n\) is needed.

The ceiling definition (21) also gives \(j\ge4\lambda\), hence
\(\lambda\le j/4\). Raising nonnegative quantities to the positive integer
power \(j+1\) and dividing by \((j+1)!>0\) proves the second inequality in
(22). Lemma~\ref{lem:step-009-envelope} supplies the next two inequalities,
and \(2^{-10}<2^{-9}\) follows from \(2^{-10}=\tfrac12 2^{-9}\).
This proves the entire strict chain (22). \(\square\)

### unit_006: proposition

**Proposition (Exact finite-budget overflow certificate).**
\(\label{prop:step-009-overflow}\)
Under the basic-setting ranges \(k\ge2,n\ge1\), the exact budget (1), and
the accepted ideal hidden-coordinate tag interface, the usage count (2)
satisfies (3). More explicitly:

1. if \(n/k\le2\), then \(M=8\) and (9) gives the strict tail bound;
2. if \(n/k>2\), then \(M=\lceil4n/k\rceil\ge9\) and (22) gives the
   stronger tail bound \(\Pr(U>M)<2^{-10}\);
3. if \(k=2\) or \(k=3\), then \(M\ge n\) and
   \(\Pr(U>M)=0\);
4. if \(n<k\), then \(M=8\) and the strict chain (10) holds; and
5. if \(M=8\), necessarily \(n/k\le2\), so the first branch applies.

No contradiction-regime, hard-prior, privacy, PAC, or learner condition is
needed for any clause.

**Proof / justification.**
Lemma~\ref{lem:step-009-usage-law} proves the first assertion in (3).
Exactly one of \(n/k\le2\) and \(n/k>2\) holds. In the first case,
Lemma~\ref{lem:step-009-small-mean} proves
\(\Pr(U>M)<2^{-9}\); in the second,
Lemma~\ref{lem:step-009-large-mean} proves the stronger
\(\Pr(U>M)<2^{-10}<2^{-9}\). This proves the second assertion in (3)
for all \(k,n\).

For the requested small-tag boundaries, if \(k\in\{2,3\}\), then
\(4/k\ge1\), so

\[
\left\lceil\frac{4n}{k}\right\rceil\ge n
\quad\text{and hence}\quad M\ge n.
\tag{26}
\]

The count (2) always obeys \(0\le U\le n\). Thus \(U>M\) is impossible
and its probability is zero. This direct argument covers every \(n\),
including values for which \(M=8\) and values for which the ceiling branch
exceeds eight.

The \(n<k\) and \(M=8\) clauses, including all ceiling inequalities and
their strict constants, were proved in
Lemma~\ref{lem:step-009-small-mean}. Finally, \(U=0\) never belongs to the
overflow event because \(M\ge8\); it remains an ordinary atom of the exact
binomial law rather than a conditioned-away case. \(\square\)

## Target-Step Assembly

The accepted ideal experiment of `step_008` supplies the exact ordered
selector/tag construction. Lemma~\ref{lem:step-009-usage-law} expands that
construction and proves, conditionally on every selector value and then
unconditionally,

\[
U\sim\operatorname{Bin}(n,1/k).
\]

The budget used throughout is exactly the setting-defined
\(M=\max\{8,\lceil4n/k\rceil\}\), the same integer interface retained by
accepted Proposition~\ref{prop:step-005-certificate}. None of that
proposition's contradiction-dependent conclusions is assumed.

Lemma~\ref{lem:step-009-factorial-tail} proves the required tail tool from
ordered Bernoulli-success tuples, including factorial orders larger than
\(n\). Lemma~\ref{lem:step-009-small-mean} applies it at order 9, proves
\(M=8\) when \(n/k\le2\), and verifies the strict arithmetic
\(2^9/9!<2^{-9}\). It also gives the separate \(n<k\) certificate and
proves that every possible \(M=8\) case is in this branch.

For \(n/k>2\), Lemma~\ref{lem:step-009-envelope} proves by an exact
consecutive-ratio calculation that
\((j/4)^{j+1}/(j+1)!\) decreases for all integers \(j\ge9\), and verifies
the endpoint strictly below \(2^{-10}\). Lemma~\ref{lem:step-009-large-mean}
sets the exact ceiling \(j=\lceil4n/k\rceil=M\), applies the factorial
moment at order \(j+1\), and obtains the strict bound in the second
exhaustive branch.

Proposition~\ref{prop:step-009-overflow} composes the exact law and the two
branches. It additionally proves pathwise that \(k=2,3\) have zero overflow
because \(M\ge n\). These named results establish exactly the accepted
`step_009` row, at exact fixed sizes \(n,M\), without a contradiction
assumption, asymptotic concentration estimate, expected budget, or hidden
constant.

## Explicit Rate Audit

- Exposed variables: The exact integers \(n\ge1\), \(k\ge2\), the ratio
  \(\lambda=n/k\) used only to split the proof, the exact integer
  \(M=m_{n,k}=\max\{8,\lceil4n/k\rceil\}\), and the exact overflow
  probability \(\Pr(U>M)\). The surrounding R1 variables
  \(N,\varepsilon,\delta\) and \(L_N=\log_2^*N\) are unchanged but do not
  enter this tail bound.
- Hidden constants may depend on: None. The numerical constants
  \(4,8,2^{-9},2^{-10}\) are explicit.
- Hidden constants may not depend on: \(k,N,n,M,\varepsilon,\delta\), the
  hard prior, any hard instance, \(J\), the tags, sample features or labels,
  the learner, or learner randomness.
- Fixed quantities: \(k,n\) and their exact deterministic budget \(M\) are
  fixed before drawing \(J,I_1,\ldots,I_n\). Any \(N,M\)-indexed accepted
  prior and any learner are irrelevant to this marginal count law.
- Probability mode: Exact finite distribution for \(U\), and a strict
  finite-sample upper bound on probability over \(J\) and the \(n\) fresh
  tag draws. The same binomial law holds conditional on each \(J=j\) and
  each preceding instance realization. There is no high-probability union
  bound, conditioning loss, or expectation-to-probability conversion.
- Horizon mode: Fixed-size and pointwise in the candidate integer \(n\),
  with exactly \(n\) Bernoulli trials and exact deterministic budget \(M\).
  There is no stopping time, random horizon, expected usage substitution, or
  asymptotic limit.
- Norm mode: No norm or risk is evaluated in this step. Downstream, because
  population 0-1 risk is in \([0,1]\), this exact overflow probability can
  be charged once as an additive risk residual; that downstream charging is
  not assumed or proved here.
- Admissibility conditions and auxiliary tolerances: Only \(k\ge2\),
  \(n\ge1\), the exact formula (1), and the accepted fresh uniform-tag
  interface. There is no auxiliary tolerance and no use of
  `assump:candidate-regime`, the contradiction regime, privacy, or PAC.
- Term absorption or simplification inequalities: Equations (11)--(13)
  expose the floor-eight and order-9 arithmetic. Equations (16)--(20) prove
  monotonicity and the \(2^{-10}\) endpoint. Equations (21)--(25) expose
  every large-mean ceiling and factorial-order comparison. No term is
  absorbed by prose.
- Probability conversion: The pointwise inequality
  \(\mathbf1\{V\ge r\}\le(V)_r/r!\), followed by the exact factorial
  moment (5), is the only conversion.
- Contribution to any Rate Specialization Bridge: This is R1's exact
  finite-budget overflow certificate. It exports the strict residual scale
  \(\Pr(U>M)<2^{-9}\) for `step_010`, `step_011`, and `step_013` while
  preserving the exact \(n,k,M\) dependence.
- Baseline-reduction check: For \(k=2,3\), the result reduces to the exact
  zero-overflow statement rather than a conservative positive bound. For
  \(n<k\), it reduces to the explicit floor-eight estimate (10). Every
  \(M=8\) case is handled at the exact threshold, and \(U=0\) remains in
  the unconditioned experiment. The exact no-overflow simulation baseline
  is therefore not weakened on these regimes.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: The usage count
  \(U=\sum_{\ell=1}^n\mathbf1\{I_\ell=J\}\), the exact setting-defined
  budget \(M\), its law \(\operatorname{Bin}(n,1/k)\), and the certificate
  \(\Pr(U>M)<2^{-9}\). These are the minimal interfaces consumed by later
  simulator and coupling steps.
- `Appendix-local`: \(\lambda=n/k\) and the Bernoulli indicators
  \(B_\ell=\mathbf1\{I_\ell=J\}\). They expose the two-case calculation
  and exact trial law but need not enter the public theorem statement.
- `Proof-local`: The generic binomial count \(V\), success probability
  \(p\), factorial order \(r\), falling factorial \((v)_r\), large-mean
  ceiling \(j=\lceil4\lambda\rceil\), and envelope \(a_j\). They are
  eliminated from the exported certificate.
- Accepted dependency objects: \(J,I_1,\ldots,I_n\) and their fresh
  uniform-tag construction are inherited from accepted `step_008`.
  The exact budget formula is primitive in `setting.md` and is preserved by
  accepted `step_005`. No notation or conclusion is imported from a prior
  idea branch or an unaccepted artifact.
- Constant provenance: The factor 4 and floor 8 are direct components of
  the setting-defined \(M\). The factorial orders 9 and \(j+1\) are the
  first integer values strictly above the corresponding budget. The target
  constant \(2^{-9}\) is fixed by the accepted sketch. The intermediate
  \(2^{-10}\) is proved by the exact endpoint inequality (20), not chosen as
  a free tolerance. There is no hidden constant.
- Assumption provenance: The ranges \(k\ge2,n\ge1\) and formula for \(M\)
  are primitive scalar conditions. Fresh uniform tags are accepted
  dependency objects. The binomial law, factorial moment, monotone envelope,
  and overflow certificate are proved in named local units. There is no
  local conditional hypothesis or generated invariant.
- Calibration boundary: Accepted Proposition~\ref{prop:step-005-certificate}
  remains available to later steps with all of its exact
  \(N,M,\varepsilon,\delta\) interfaces. This proof neither invokes nor
  alters its contradiction hypothesis, source cap, ceiling/floor
  calibration, or candidate-\(\delta\) conjunction.
- Boundary discipline: \(k=2,3\) is handled by the deterministic inequality
  \(U\le n\le M\); \(n<k\) by (10); \(M=8\) by the equivalence with the
  small-mean branch; \(n<9\) and \(j+1>n\) by the zero falling-factorial
  convention; \(\lambda=2\) by the non-strict branch entry followed by the
  strict numerical comparison; and \(U=0\) without conditioning it away.
- Diagnostic boundary: No `global_proof.md` or
  `global_proof_review.md` was read or used. No diagnostic statement is
  proof evidence, a cited result, an assumption source, or authority to
  change the target claim.
