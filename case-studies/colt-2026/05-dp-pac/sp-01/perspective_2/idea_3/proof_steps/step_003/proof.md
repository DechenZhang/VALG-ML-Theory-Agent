# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: step_003
- Unit attempt: 1
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted dependency proof SHA-256: 061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486
- Accepted dependency review SHA-256: 1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6
- Accepted diagnostic SHA-256: dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407
- Accepted diagnostic-review SHA-256: fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710

## Target Step Claim

- Intended claim: For one fixed trace and block, prove both exact
  \(E_{\rm good}\) clauses with failure at most
  \(4\exp(-c_{\rm tr}m\alpha/d^2)\).
- Depends on: step_001.
- Assumptions used: Primitive assump:approximate-dp-regime and a fixed-trace
  local hypothesis.
- Technical challenge: Obtain a nonvanishing low-error exponent at empirical
  mean zero or near zero.
- Intended proof tool or cited result: Lyu Proposition 2 plus a
  finite-population mgf/KL upper tail.
- Output target: Per-trace two-clause deviation lemma.
- Rate objective: Keep exponent \(m\alpha/d^2\) and constants explicit.
- Row-local review status: PENDING. Acceptance of the sketch is supplied by
  the binding proof_sketch_review.md, not by this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:approximate-dp-regime: \(0<\alpha<1/4\). The ranges of
    \(\beta,\varepsilon,\delta\) are part of the setting but are not used by
    the concentration calculation.
  - assump:finite-littlestone: this is used only through the accepted
    positive-branch conclusion of step_001, which makes \(d\) a positive
    integer. No class-cardinality or trace-count conclusion is used.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-001-boundary-entry} supplies the branch
    \(d\ge1\).
  - Proposition~\ref{prop:step-001-teacher-existence} supplies integers
    \(k\ge2\), \(m\ge1\), and \(n_0=km\).
  - Proposition~\ref{prop:step-001-totality} supplies the data-independent
    uniform-permutation partition of the exact \(n_0\) indexed records into
    \(k\) indexed blocks of size \(m\).
- Local conditional hypotheses:
  - The full indexed labeled master sample \(S\) is fixed.
  - One binary indexed error trace
    \(z=(z_1,\ldots,z_{n_0})\in\{0,1\}^{n_0}\) is fixed. It may, but need not
    for the local calculation, be written as
    \(z_u={\bf1}\{h(x_u)\ne y_u\}\) for a fixed \(h\in C\).
  - One indexed block label \(i\in[k]\) is fixed. Randomness remains only in
    the data-independent uniform partition.
- Accepted dependency artifacts:
  - `perspective_2/idea_3/proof_steps/step_001/proof.md`, SHA-256
    `061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486`.
  - `perspective_2/idea_3/proof_steps/step_001/review.md`, SHA-256
    `1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6`,
    status ACCEPTED.

The accepted neighboring step_002 proof and review are not dependencies of
this sketch row and are not used. In particular, no trace count, union bound,
or Sauer--Shelah conclusion enters this fixed-trace statement. No
realizability, iid sampling, generated good event, or block independence is
assumed.

For all sections below, \(\gamma:=\alpha/16\), as fixed by the accepted
sketch. For the fixed trace, write
\(K_z:=\sum_{u=1}^{n_0}z_u\) and \(\mu:=K_z/n_0\). Let \(I_i\) denote the
random index set of the fixed block and
\(Z_i:=m^{-1}\sum_{u\in I_i}z_u\). For \(0<q,t<1\), write
\[
D(t\Vert q):=
t\log\frac tq+(1-t)\log\frac{1-t}{1-q}
\]
for binary relative entropy. These are local translations of the exact
master- and block-error quantities, not additional assumptions.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under accepted Propositions~\ref{prop:step-001-boundary-entry}, \ref{prop:step-001-teacher-existence}, and \ref{prop:step-001-totality}, conditional on fixed \(S\), every fixed partition-block index set is marginally uniform over the size-\(m\) subsets of \([n_0]\); a fixed binary trace therefore has the stated hypergeometric block mean. | Establishes the exact finite-population probability space without asserting independence among blocks. |
| unit_002 | lemma | Under Assumption~\ref{assump:approximate-dp-regime}, Proposition~\ref{prop:step-003-block-marginal}, and Lyu Proposition 2, if \(\mu>\gamma/3\), then the relative-deviation failure is at most \(2\exp[-m\alpha/(3600d^2)]\). | Proves the high-error clause at the common exponent scale. |
| unit_003 | lemma | Under Proposition~\ref{prop:step-003-block-marginal}, if \(0<\mu<t<1\), then direct finite-population mgf optimization gives \(\Pr[Z_i\ge t\mid S]\le\exp[-mD(t\Vert\mu)]\). | Derives, rather than cites as a raw corollary, the one-sided hypergeometric/KL tail. |
| unit_004 | lemma | Under Assumption~\ref{assump:approximate-dp-regime} and Lemma~\ref{lem:step-003-hypergeom-kl}, if \(0\le\mu\le\gamma/3\), then \(\Pr[Z_i>\gamma/2\mid S]\le\exp[-m\alpha/800]\), with probability zero when \(\mu=0\). | Proves the low-error absolute clause, including the zero-mean and threshold-boundary cases. |
| unit_005 | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-001-boundary-entry}, \ref{prop:step-001-teacher-existence}, and \ref{prop:step-001-totality}, and the fixed-trace hypotheses, both guarded clauses hold for one fixed trace/block with failure at most \(4\exp[-c_{\rm tr}m\alpha/d^2]\), where \(c_{\rm tr}=1/3600\). | Exports the exact per-trace interface consumed by step_004. |

## Cited Result Applications

### Accepted step_001 positive-branch dictionary

- Source or name: accepted Propositions
  \ref{prop:step-001-boundary-entry},
  \ref{prop:step-001-teacher-existence}, and
  \ref{prop:step-001-totality}.
- Restated statement used here: on the positive branch, \(d\in\mathbb N\),
  \(k,m,n_0\in\mathbb N\), \(k\ge2\), \(n_0=km\), and the learner draws a
  uniform random permutation of the \(n_0\) indexed records, independently
  of their values, to form \(k\) indexed consecutive blocks of exactly
  \(m\) records.
- Instantiated objects: the realized \(d,k,m,n_0\), the fixed indexed sample
  \(S\), and block label \(i\).
- Required assumptions and discharge: Assumptions
  \ref{assump:finite-littlestone} and
  \ref{assump:approximate-dp-regime} are the explicit assumption basis of
  the accepted dependency propositions. Their proof and review hashes are
  recorded above.
- Conclusion used: positivity and integrality of all finite-population
  quantities and the exact random-partition rule. No teacher margin, list,
  privacy, or utility conclusion is used.

### Lyu Proposition 2: multiplicative Chernoff bound without replacement

- Source or name: Xin Lyu, *Private Learning of Littlestone Classes,
  Revisited*, arXiv:2510.00076v1, Proposition 2,
  `prop:chernoff-sample-without-replacement`.
- Restated statement in current notation: let \(N\ge r\ge1\), fix
  \(b_1,\ldots,b_N\in\{0,1\}\), put
  \(\bar b=N^{-1}\sum_{u=1}^N b_u\), and let \(J\) be a uniformly random
  size-\(r\) subset of \([N]\). For every \(0<\theta<1\), the source's
  two-sided bound gives
  \[
  \Pr\!\left[
    \left|\frac1r\sum_{u\in J}b_u-\bar b\right|
       >\theta\bar b
  \right]
  \le
  2\exp\!\left(-\frac{r\bar b\theta^2}{3}\right).
  \tag{L-P2}
  \]
  Replacing a source non-strict bad event by the displayed strict event, if
  needed, only weakens its left-hand side.
- Instantiated objects: \(N=n_0\), \(r=m\), \(b_u=z_u\),
  \(\bar b=\mu\), \(J=I_i\), and \(\theta=1/(5d)\).
- Required assumptions and discharge: \(n_0\ge m\ge1\) and uniform
  sampling without replacement follow from
  Proposition~\ref{prop:step-003-block-marginal}; \(z_u\in\{0,1\}\) because
  the trace is binary; and \(0<1/(5d)\le1/5\) because the accepted
  dependency supplies \(d\ge1\).
- Conclusion used: only the high-error relative-deviation tail. Proposition
  2 is not used to infer the low-error absolute tail near \(\mu=0\).

### Elementary symmetric-mean inequality used in the direct mgf derivation

- Source or name: Maclaurin's elementary symmetric-mean inequality.
- Restated statement: for nonnegative \(a_1,\ldots,a_N\), if
  \(e_j(a)=\sum_{|J|=j}\prod_{u\in J}a_u\), then, for
  \(1\le j\le N\),
  \[
  \frac{e_j(a)}{\binom Nj}
  \le
  \left(\frac1N\sum_{u=1}^N a_u\right)^j.
  \tag{Mac}
  \]
  In the form needed below, this follows from the normalized Newton
  inequalities: with \(E_j=e_j/\binom Nj\) and \(E_0=1\),
  \(E_j^2\ge E_{j-1}E_{j+1}\). Thus the ratios
  \(E_j/E_{j-1}\) are nonincreasing and
  \(E_j=\prod_{s=1}^j(E_s/E_{s-1})\le E_1^j\), which is (Mac).
- Instantiated objects: \(N=n_0\), \(j=m\), and
  \(a_u=\exp(\lambda z_u)>0\) for \(\lambda\ge0\).
- Required assumptions and discharge: finiteness and \(m\le n_0\) come
  from the accepted dependency; nonnegativity is immediate from the
  exponential definition.
- Conclusion used: the finite-population mgf is bounded by the iid Bernoulli
  mgf with the same mean. The KL tail itself is derived explicitly below and
  is not imported as a cited corollary.

### Elementary probability tools

- Conditional Markov inequality: for every nonnegative random variable
  \(Y\), threshold \(a>0\), and conditioning value for which the conditional
  expectation is defined,
  \[
  \Pr(Y\ge a\mid S)\le\frac{\mathbb E[Y\mid S]}{a}.
  \tag{Markov}
  \]
  It is instantiated in Lemma~\ref{lem:step-003-hypergeom-kl} with
  \(Y=e^{\lambda mZ_i}\) and \(a=e^{\lambda mt}\), both positive.
- Finite union bound: for any two events \(A,B\),
  \[
  \Pr(A\cup B\mid S)\le\Pr(A\mid S)+\Pr(B\mid S).
  \tag{Union}
  \]
  It is instantiated in Proposition~\ref{prop:step-003-per-trace} for the
  two guarded bad events. It requires no independence.

### Internal result applications

- Proposition~\ref{prop:step-003-block-marginal} supplies the exact marginal
  law used by Lemmas~\ref{lem:step-003-high-relative} and
  \ref{lem:step-003-hypergeom-kl}.
- Lemma~\ref{lem:step-003-hypergeom-kl} supplies the optimized tail used by
  Lemma~\ref{lem:step-003-low-absolute}; the latter proves the needed KL
  lower bound and handles \(\mu=0\) separately.
- Lemmas~\ref{lem:step-003-high-relative} and
  \ref{lem:step-003-low-absolute} jointly supply
  Proposition~\ref{prop:step-003-per-trace}.

## Local Derivation

Recall the setting-prescribed internal tolerance
\[
\gamma:=\frac{\alpha}{16}.
\tag{1}
\]
and, for the fixed binary trace \(z\), recall
\[
K_z:=\sum_{u=1}^{n_0}z_u,
\qquad
\mu:=\frac{K_z}{n_0}.
\tag{2}
\]

### unit_001: proposition

**Proposition (Marginal law of one exact master-sample block).**
\label{prop:step-003-block-marginal}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, and the accepted positive-branch
dictionary from Propositions~\ref{prop:step-001-boundary-entry},
\ref{prop:step-001-teacher-existence}, and
\ref{prop:step-001-totality}, fix the indexed sample \(S\), a binary trace
\(z\in\{0,1\}^{n_0}\), and a block label \(i\in[k]\). If \(I_i\) is the
random index set of that block and
\[
Z_i:=\frac1m\sum_{u\in I_i}z_u,
\tag{3}
\]
then, conditional on \(S\), \(I_i\) is uniform over all
\(\binom{n_0}{m}\) size-\(m\) subsets of \([n_0]\), and
\[
mZ_i\sim\operatorname{Hypergeom}(n_0,K_z,m),
\qquad
\mathbb E[Z_i\mid S]=\mu.
\tag{4}
\]
This is a marginal statement for the fixed block; it makes no independence
claim about different blocks.

**Proof.** By the accepted total procedure, a uniform random permutation
\(\pi\) of \([n_0]\) is drawn independently of \(S\), and \(I_i\) is the
set of the \(m\) permutation values in positions
\((i-1)m+1,\ldots,im\). For every fixed \(J\subseteq[n_0]\) with
\(|J|=m\), exactly \(m!(n_0-m)!\) permutations place the elements of \(J\)
in those positions. Hence
\[
\Pr_{\mathcal P}(I_i=J\mid S)
=\frac{m!(n_0-m)!}{n_0!}
=\binom{n_0}{m}^{-1}.
\tag{5}
\]
The trace has exactly \(K_z\) one-coordinates. Thus the count of ones in a
uniform size-\(m\) subset has the hypergeometric law in (4). Every coordinate
has inclusion probability \(m/n_0\), so
\[
\mathbb E[Z_i\mid S]
=\frac1m\sum_{u=1}^{n_0}z_u\Pr(u\in I_i\mid S)
=\frac1{n_0}\sum_{u=1}^{n_0}z_u
=\mu.
\tag{6}
\]
All statements are conditional on the fixed indexed sample; repeated sample
points do not merge their distinct indices. \(\square\)

### unit_002: lemma

**Lemma (High-error relative finite-population tail).**
\label{lem:step-003-high-relative}
Under Assumption~\ref{assump:approximate-dp-regime}, the accepted
positive-branch conclusions of
Propositions~\ref{prop:step-001-boundary-entry} and
\ref{prop:step-001-teacher-existence}, Proposition
\ref{prop:step-003-block-marginal}, and Lyu Proposition 2 (L-P2), if
\(\mu>\gamma/3\), then
\[
\Pr_{\mathcal P}\!\left[
  |Z_i-\mu|>\frac{\mu}{5d}
  \mathrel{\Big|}S
\right]
\le
2\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\tag{7}
\]

**Proof.** If \(\mu=1\), every trace coordinate equals one and \(Z_i=1\)
surely, so (7) is immediate. Otherwise \(0<\mu<1\). Apply (L-P2) through
Proposition~\ref{prop:step-003-block-marginal} with
\(\theta=1/(5d)\). Its hypotheses were discharged in the cited-result
section, and it gives
\[
\Pr_{\mathcal P}\!\left[
  |Z_i-\mu|>\frac{\mu}{5d}
  \mathrel{\Big|}S
\right]
\le
2\exp\!\left(-\frac{m\mu}{75d^2}\right).
\tag{8}
\]
Because \(\gamma=\alpha/16\) and the present branch has
\(\mu>\gamma/3=\alpha/48\),
\[
\frac{m\mu}{75d^2}
>\frac{m\alpha}{48\cdot75d^2}
=\frac{m\alpha}{3600d^2}.
\tag{9}
\]
Substitution of (9) into (8) proves (7), with no rounding or asymptotic
absorption. \(\square\)

### unit_003: lemma

**Lemma (Direct hypergeometric mgf/KL upper tail).**
\label{lem:step-003-hypergeom-kl}
Under Proposition~\ref{prop:step-003-block-marginal}, fix any real
\(t\) satisfying \(0<\mu<t<1\). Then
\[
\Pr_{\mathcal P}[Z_i\ge t\mid S]
\le
\exp\{-mD(t\Vert\mu)\},
\tag{10}
\]
where
\[
D(t\Vert\mu)
:=t\log\frac{t}{\mu}
 +(1-t)\log\frac{1-t}{1-\mu}.
\tag{11}
\]

**Proof.** Fix \(\lambda\ge0\) and set
\(a_u:=\exp(\lambda z_u)\). Uniformity of \(I_i\) gives the exact
finite-population moment generating function
\[
\begin{aligned}
\mathbb E_{\mathcal P}[e^{\lambda mZ_i}\mid S]
&=\binom{n_0}{m}^{-1}
  \sum_{\substack{J\subseteq[n_0]\\|J|=m}}
  \prod_{u\in J}a_u\\
&=\frac{e_m(a_1,\ldots,a_{n_0})}{\binom{n_0}{m}}.
\end{aligned}
\tag{12}
\]
Applying (Mac), and using that a fraction \(\mu\) of the binary trace
coordinates equal one, yields
\[
\mathbb E_{\mathcal P}[e^{\lambda mZ_i}\mid S]
\le
\left(\frac1{n_0}\sum_{u=1}^{n_0}e^{\lambda z_u}\right)^m
=\bigl(1-\mu+\mu e^\lambda\bigr)^m.
\tag{13}
\]
The conditional inequality (Markov) therefore gives
\[
\Pr_{\mathcal P}[Z_i\ge t\mid S]
\le
\exp\!\left\{m\left[
 -\lambda t+\log(1-\mu+\mu e^\lambda)
\right]\right\}.
\tag{14}
\]
Since \(0<\mu<t<1\), the choice
\[
\lambda_*:=\log\frac{t(1-\mu)}{\mu(1-t)}>0
\tag{15}
\]
is admissible. Direct substitution gives
\[
1-\mu+\mu e^{\lambda_*}
=\frac{1-\mu}{1-t}
\tag{16}
\]
and hence
\[
-\lambda_*t+\log(1-\mu+\mu e^{\lambda_*})
=-t\log\frac{t}{\mu}
 -(1-t)\log\frac{1-t}{1-\mu}
=-D(t\Vert\mu).
\tag{17}
\]
Equations (14)-(17) prove (10). Thus the one-sided tail is derived from the
exact without-replacement mgf and its optimization, rather than imported as
an unsupported hypergeometric corollary. \(\square\)

### unit_004: lemma

**Lemma (Low-error absolute finite-population tail).**
\label{lem:step-003-low-absolute}
Under Assumption~\ref{assump:approximate-dp-regime}, the accepted
positive-branch conclusions of
Propositions~\ref{prop:step-001-boundary-entry} and
\ref{prop:step-001-teacher-existence}, Proposition
\ref{prop:step-003-block-marginal}, and Lemma
\ref{lem:step-003-hypergeom-kl}, if \(0\le\mu\le\gamma/3\), then
\[
\Pr_{\mathcal P}\!\left[Z_i>\frac\gamma2\mathrel{\Big|}S\right]
\le
\exp\!\left(-\frac{m\gamma}{50}\right)
=\exp\!\left(-\frac{m\alpha}{800}\right).
\tag{18}
\]
In particular, the probability in (18) is exactly zero when \(\mu=0\).

**Proof.** If \(\mu=0\), equation (2) and binary-valuedness imply
\(K_z=0\), so every \(z_u=0\). Consequently \(Z_i=0\) for every partition,
and the bad event is empty. This proves both the stated zero-mean conclusion
and (18) in that case.

Now suppose \(0<\mu\le\gamma/3\), and put \(t:=\gamma/2\). Assumption
\ref{assump:approximate-dp-regime} and (1) give
\[
0<\gamma<\frac1{64},
\qquad
0<\mu\le\frac\gamma3<\frac\gamma2=t<1.
\tag{19}
\]
The event \(\{Z_i>t\}\) is contained in \(\{Z_i\ge t\}\), whether or not
\(mt\) is an integer. Lemma~\ref{lem:step-003-hypergeom-kl} therefore gives
\[
\Pr_{\mathcal P}[Z_i>\gamma/2\mid S]
\le \exp\{-mD(\gamma/2\Vert\mu)\}.
\tag{20}
\]

For fixed \(t\in(0,1)\), differentiation in the second argument gives
\[
\frac{\partial}{\partial q}D(t\Vert q)
=\frac{q-t}{q(1-q)}<0
\qquad(0<q<t).
\tag{21}
\]
Thus, using \(\mu\le\gamma/3<t\),
\[
D(\gamma/2\Vert\mu)
\ge D(\gamma/2\Vert\gamma/3).
\tag{22}
\]
We lower-bound the right-hand side without asymptotic notation. Its exact
form is
\[
D(\gamma/2\Vert\gamma/3)
=\frac\gamma2\log\frac32
 +\left(1-\frac\gamma2\right)
  \log\frac{1-\gamma/2}{1-\gamma/3}.
\tag{23}
\]
Set
\[
u:=\frac{\gamma}{6-2\gamma},
\qquad
\frac{1-\gamma/2}{1-\gamma/3}=1-u.
\tag{24}
\]
Since \(\gamma<1/64\),
\[
0<u\le\frac{32}{191}\gamma
<\frac{17}{100}\gamma
<\frac1{100}.
\tag{25}
\]
The elementary inequalities
\[
\log\frac32\ge\frac25,
\qquad
\log(1-u)\ge-\frac{u}{1-u}
\tag{26}
\]
follow respectively from
\(\log(1+x)\ge2x/(2+x)\) at \(x=1/2\), whose derivative gap is
\(x^2/((1+x)(2+x)^2)\ge0\), and from integrating
\((1-s)^{-1}\le(1-u)^{-1}\) over \(s\in[0,u]\). Because
\(\log(1-u)<0\), equations (25)-(26) imply
\[
\left(1-\frac\gamma2\right)\log(1-u)
\ge\log(1-u)
\ge-\frac{u}{1-u}
> -\frac{17}{99}\gamma
> -\frac9{50}\gamma.
\tag{27}
\]
Combining (23), (26), and (27),
\[
D(\gamma/2\Vert\mu)
\ge D(\gamma/2\Vert\gamma/3)
\ge\frac\gamma5-\frac{9\gamma}{50}
=\frac\gamma{50}.
\tag{28}
\]
Substituting (28) into (20) proves (18). The equality in (18) uses exactly
\(\gamma=\alpha/16\). \(\square\)

### unit_005: proposition

**Proposition (Exact two-clause per-trace block event).**
\label{prop:step-003-per-trace}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, the accepted positive-branch dictionary
from Propositions~\ref{prop:step-001-boundary-entry},
\ref{prop:step-001-teacher-existence}, and
\ref{prop:step-001-totality}, and the local hypotheses that \(S\), one
binary indexed trace \(z\), and one block label \(i\) are fixed, define
\(\mu\) and \(Z_i\) by
(2)-(3), and define
\[
\mathsf G_{z,i}:=
\left\{\mu>\frac\gamma3\Rightarrow
  |Z_i-\mu|\le\frac{\mu}{5d}\right\}
\cap
\left\{\mu\le\frac\gamma3\Rightarrow
  Z_i\le\frac\gamma2\right\}.
\tag{29}
\]
Then, with the explicit universal constant
\[
c_{\rm tr}:=\frac1{3600},
\tag{30}
\]
one has the exact common interface
\[
\Pr_{\mathcal P}(\mathsf G_{z,i}^{c}\mid S)
\le
4\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right).
\tag{31}
\]

**Proof.** By elementary logic, the complement of (29) is exactly
\[
\begin{aligned}
\mathsf G_{z,i}^{c}
=\;&\left\{\mu>\frac\gamma3,
 |Z_i-\mu|>\frac\mu{5d}\right\}\\
&\cup
\left\{\mu\le\frac\gamma3,
 Z_i>\frac\gamma2\right\}.
\end{aligned}
\tag{32}
\]
The two guards are disjoint and exhaust all possible \(\mu\).
Lemma~\ref{lem:step-003-high-relative} bounds the first guarded event by
\[
2\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\tag{33}
\]
Lemma~\ref{lem:step-003-low-absolute} bounds the second guarded event by
\(\exp(-m\alpha/800)\). Since \(d\ge1\),
\[
\exp\!\left(-\frac{m\alpha}{800}\right)
\le
\exp\!\left(-\frac{m\alpha}{800d^2}\right)
\le
\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\tag{34}
\]
The conditional inequality (Union) applied to (32), which does not require
independence, now gives the
stronger coefficient \(3\); padding it to the source-facing coefficient
\(4\) yields (31). At \(\mu=\gamma/3\), the second guard applies exactly;
at \(\mu=0\), its bad event has probability zero. \(\square\)

## Target-Step Assembly

Fix an arbitrary indexed master sample \(S\), one fixed error trace from that
sample, and one fixed block label.
Proposition~\ref{prop:step-001-boundary-entry} supplies \(d\ge1\),
Proposition~\ref{prop:step-001-teacher-existence} supplies the exact positive
integers \(k,m,n_0\) with \(n_0=km\), and
Proposition~\ref{prop:step-001-totality} supplies the
uniform-permutation partition.
Proposition~\ref{prop:step-003-block-marginal} proves that this block is
marginally a uniform size-\(m\) sample without replacement from the exact
\(n_0\)-record master sample.

When the full-trace mean satisfies \(\mu>\gamma/3\),
Lemma~\ref{lem:step-003-high-relative} instantiates Lyu Proposition 2 with
relative tolerance \(1/(5d)\) and proves the first clause at exponent
\(m\alpha/(3600d^2)\). When \(\mu\le\gamma/3\),
Lemma~\ref{lem:step-003-hypergeom-kl} derives the one-sided
without-replacement mgf/KL tail, and
Lemma~\ref{lem:step-003-low-absolute} proves the explicit KL lower bound at
threshold \(\gamma/2\), including the exact \(\mu=0\) branch and the
\(\mu=\gamma/3\) boundary.

Proposition~\ref{prop:step-003-per-trace} composes these named results into
the exact per-trace complement of the two implications. Translating
\(z_u={\bf1}\{h(x_u)\ne y_u\}\), \(\mu=e_S(h)\), and \(Z_i=e_i(h)\) gives
\[
\boxed{
\begin{aligned}
&\Pr_{\mathcal P}\!\left[
 \left\{e_S(h)>\frac\gamma3,
  |e_i(h)-e_S(h)|>\frac{e_S(h)}{5d}\right\}
 \right.\\[-2pt]
&\hspace{47mm}\left.
 {}\cup
 \left\{e_S(h)\le\frac\gamma3,
  e_i(h)>\frac\gamma2\right\}
 \mathrel{\Big|}S\right]
 \le4\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\end{aligned}}
\tag{35}
\]
Equivalently, the exact two implications defining the \((h,i)\) component of
\(E_{\rm good}\) hold with conditional probability at least the complement
of the right-hand side of (35). This is precisely the accepted sketch-row
claim with \(c_{\rm tr}=1/3600\). No count or union over traces or blocks is
performed here; that operation belongs to step_004.

## Explicit Rate Audit

- Exposed variables: \(m,\alpha,d\), with the exact thresholds
  \(\gamma/3=\alpha/48\), \(\gamma/2=\alpha/32\), and relative tolerance
  \(1/(5d)\). The exported rate is
  \(4\exp[-m\alpha/(3600d^2)]\).
- Hidden constants may depend on: nothing. The constants \(4\) and
  \(c_{\rm tr}=1/3600\) are explicit universal numbers.
- Hidden constants may not depend on: \(X,C,S,h,z,n_0,k,m,d,v,\alpha,
  \beta,\varepsilon,\delta\), a block label, partition, trace family, list,
  stage, support set, or generated event.
- Fixed quantities: \(S\), one indexed binary trace, one block label, and all
  public scalar parameters are fixed before the partition probability is
  evaluated.
- Probability mode: conditional high probability over the random partition
  given \(S\). Only the marginal law of one fixed block is used. There is no
  independence assertion, expectation-only conclusion, integration over
  \(S\), or union-bound conversion in this step.
- Horizon mode: one fixed block of one fixed finite master sample.
- Norm mode: scalar absolute deviation of an empirical binary \(0\)-\(1\)
  error mean; no function norm is used.
- Admissibility conditions and auxiliary tolerances: \(d\ge1\),
  \(0<\alpha<1/4\), \(k\ge2\), \(m,n_0\in\mathbb N\), \(n_0=km\), a binary
  fixed trace, \(\gamma=\alpha/16\), and a uniform size-\(m\) block. All
  scalar legality comes from the accepted dependency or the primitive
  parameter range.
- Term absorption or simplification inequalities: (9) proves the high-error
  conversion exactly; (28) proves
  \(D(\gamma/2\Vert\mu)\ge\gamma/50\); and (34) displays the sole weakening
  from the stronger \(m\alpha\) low-error exponent to the common
  \(m\alpha/d^2\) exponent.
- Probability conversion: none beyond identifying the marginal block law.
  The coefficient-three local union is explicitly padded to four in (31);
  downstream finite unions and the tower property are not used.
- Contribution to any Rate Specialization Bridge: this step exports the
  common exponent \(c_{\rm tr}m\alpha/d^2\) needed for the trace union and
  fixed-point calibration in steps 004-005.
- Baseline-reduction check: the thresholds and relative tolerance are exactly
  those in the accepted source-facing event. At \(d=1\), all inequalities
  remain valid with tolerance \(1/5\). At \(\mu=0\), the low-error bad event
  is empty; at \(\mu=1\), the high-error bad event is empty; and at
  \(\mu=\gamma/3\), the low-error branch applies. The \(d=0\) branch is
  bypassed by Proposition~\ref{prop:step-001-boundary-entry}, so no division
  by \(d\) occurs there.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing, setting/sketch-defined objects: \(d,m,n_0,k,\alpha\),
  \(\gamma=\alpha/16\), the block errors \(e_i(h)\), and master error
  \(e_S(h)\). The only new public-facing constant is
  \(c_{\rm tr}=1/3600\), proved adequate by
  Proposition~\ref{prop:step-003-per-trace}.
- Appendix-local objects: the fixed indexed binary trace \(z\), its one-count
  \(K_z\), its mean \(\mu\), the random block index set \(I_i\), its block
  mean \(Z_i\), and the local good event \(\mathsf G_{z,i}\). They are direct
  expressions from the fixed master sample and partition and are translated
  back to \(e_S(h),e_i(h)\) in (35).
- Proof-local objects: the generic source variables \(N,r,b,J,\bar b,\theta\);
  the symmetric-polynomial variables \(a_u,e_j,E_j,\lambda\); the Chernoff
  optimizer \(\lambda_*\); the KL threshold \(t\); the scalar \(u\) in
  (24); the random-permutation symbol \(\pi\); the derivative and elementary
  inequality dummies \(q,x,s\); and the generic Markov/union variables
  \(Y,A,B\) and their threshold. Each is locally scoped and eliminated
  before the exported interface.
- Constant provenance: the factor \(1/3\) in (L-P2) is the checked cited
  source constant; \(1/50\) is proved in (21)-(28); \(1/800\) is exactly
  \((1/50)(1/16)\); and \(1/3600\) is the high-error constant computed in
  (9) and chosen as the common constant in (30). No free bounded quantity is
  introduced.
- Assumption provenance: the partition rule and integer dictionary are
  accepted dependency conclusions. Marginal uniformity and the
  hypergeometric law are proved by
  Proposition~\ref{prop:step-003-block-marginal}. The fixed trace and fixed
  sample are local conditional hypotheses quantified arbitrarily, not
  theorem-facing generated invariants. The two-clause good event is proved
  probabilistically in this step and is not assumed.
- Rounding: \(m,n_0,k,K_z\) are exact integers. The thresholds
  \(\gamma/3\) and \(\gamma/2\) need not be attainable block means; the
  containment \(\{Z_i>t\}\subseteq\{Z_i\ge t\}\) used in (20) is valid for
  every real \(t\), so no floor or ceiling loss is hidden.
- Scope exclusions: assump:realizable-iid is not used. Labels may be
  arbitrary, sample points may repeat, and the fixed trace calculation is
  valid on nonrealizable inputs. There is no use of \(v\), \(|C|\),
  Sauer--Shelah, or the accepted step_002 artifacts.
- The optional global diagnostic was consulted only for the planning cue to
  separate Lyu's relative branch from a direct low-error KL derivation. Its
  paired review is ACCEPTED with SHA-256
  `fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710`.
  Neither diagnostic artifact is used as evidence, a cited result, an
  assumption source, or authority to change the target claim.
