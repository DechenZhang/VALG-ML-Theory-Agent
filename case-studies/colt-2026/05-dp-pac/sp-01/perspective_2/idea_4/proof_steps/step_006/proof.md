# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof SHA-256 (`step_005`):
  `f1ba8be90c3ec4c84ac79bed9bb8ad537d9912e5737e6362e50647c3634557c5`
- Accepted dependency review SHA-256 (`step_005`):
  `40bbda8f8bb5f05d545f348a4d1a047454e86a8a6833db9f28a756d0a12ef67b`
- Diagnostic global-proof SHA-256:
  `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
- Accepted diagnostic global-proof-review SHA-256:
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`
- Checked source: Xin Lyu, *Private Learning of Littlestone Classes,
  Revisited*, arXiv:2510.00076v1, `submission/main.tex`, SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Target Step Claim

- Intended claim: Prove the fixed-trace high-error and low-error block tails
  and define the exact simultaneous `E_good` event.
- Depends on: `step_005`.
- Assumptions used: Primitive `assump:approximate-dp-regime`; derived fixed
  trace.
- Technical challenge: Prove the correct near-zero one-sided tail and make no
  false independence assertion about the blocks of the partition.
- Intended proof tool or cited result: Lyu
  `prop:chernoff-sample-without-replacement` for the high-error relative
  branch, plus a local finite-population exponential-mgf and binary-KL
  derivation for the low-error branch.
- Output target: The exact source `E_good` conditional trace interface.
- Rate objective: Preserve exponent (m\alpha/d^2).
- Sketch-row review status: `PENDING`; sketch acceptance is supplied by the
  binding `ACCEPTED` proof-sketch review.

More explicitly, on the setting's positive branch, with

\[
 \gamma:=\alpha/16,\qquad a_d:=\frac1{5d},\qquad n_0=km,
\]

the required event is the simultaneous source event saying that, for every
error trace and every block, the block mean lies in

\[
\begin{cases}
 [(1-a_d)\mu,(1+a_d)\mu],&\mu>\gamma/3,\\
 [0,\gamma/2],&\mu\leq\gamma/3,
\end{cases}
\]

where \(\mu\) is the master-trace mean.  The target conditional estimate is

\[
 \Pr_{\mathcal P}[E_{\mathrm{good}}(\bar S,\mathcal P)^c\mid\bar S]
 \leq 4k\,\Pi_{\bar C}(n_0)
 \exp\!\left(-c_{\mathrm{tr}}\frac{m\alpha}{d^2}\right)
\tag{T}
\]

for a universal \(c_{\mathrm{tr}}>0\), without using independence among the
blocks.  This step proves (T) with the explicit choice
\(c_{\mathrm{tr}}=1/3600\).  The fixed-point comparison with \(\beta\) is
not part of this step and remains the assigned task of `step_007`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:approximate-dp-regime`: \(0<\alpha,\beta<1/4\),
    \(0<\varepsilon\leq1\), and \(0<\delta<1\).  Only
    \(0<\alpha<1/4\) is used in the present tails.
  - The formalized setting's positive-branch procedure is a deterministic
    case of the theorem specification: \(d\geq1\), \(k\geq2\),
    \(m=\lceil C_{\mathrm{blk}}d^2a\log(Q_{\mathrm{blk}})/\alpha\rceil\),
    and \(n_0=km\).  These are pre-sampling definitions, not generated
    invariants or extra assumptions.  The accepted sketch fixes
    \(\gamma=\alpha/16\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-005-binomial} and its target assembly prove
    that, for every fixed positive-branch quotient master sample \(\bar S\),
    the exact indexed error-trace family is finite and satisfies
    \[
      |\mathcal E_{\bar C}(\bar S)|
      \leq\Pi_{\bar C}(n_0)
      \leq(en_0/v)^v,
      \qquad 1\leq v\leq n_0.
      \tag{1}
    \]
    The dependency also proves that repetitions and conflicting labels on a
    repeated quotient point do not alter the exact error-trace count.
- Local conditional hypotheses: None.  The master sample and every trace are
  universally fixed before probability is taken over the data-independent
  uniform partition.  Event membership is proved rather than assumed.
- Accepted dependency artifacts:
  `proof_steps/step_005/proof.md` and
  `proof_steps/step_005/review.md`, with the hashes in `## Step Identity` and
  review status `ACCEPTED`.

The \(d=0\) branch is the setting's no-data singleton branch and never
constructs this partition or invokes a formula containing \(d^{-2}\).  All
claims below therefore explicitly concern \(d\geq1\).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:approximate-dp-regime} and the setting-defined positive-branch partition, conditional on any fixed master sample, every labeled block is marginally a uniform size-\(m\) subset of \([n_0]\); no joint independence is asserted, and for \(k=2\) the two blocks are complements. | Supplies exactly the fixed-input sampling law needed by both tails. |
| `unit_002` | lemma | Under Assumption~\ref{assump:approximate-dp-regime}, Proposition~\ref{prop:step-006-partition}, and the checked Lyu v1 without-replacement proposition, every fixed trace with master mean \(\mu>\gamma/3\) obeys the relative-deviation failure bound \(2\exp[-m\alpha/(3600d^2)]\) for each block. | Proves the high-error clause with the exact tolerance \(1/(5d)\). |
| `unit_003` | lemma | Under Proposition~\ref{prop:step-006-partition}, the exponential moment of the sum of any fixed binary trace over one block is at most the corresponding iid Bernoulli moment \((1-\mu+\mu e^\lambda)^m\). | Gives a self-contained finite-population tool for the low-error clause. |
| `unit_004` | lemma | Under Assumption~\ref{assump:approximate-dp-regime}, Lemma~\ref{lem:step-006-mgf}, and the positive-branch definitions, every fixed trace with \(0\leq\mu\leq\gamma/3\) satisfies \(\Pr[\widehat\mu_i>\gamma/2\mid\bar S]\leq e^{-m\gamma/30}\leq e^{-m\alpha/(3600d^2)}\); the zero-mean event is impossible and equality \(\mu=\gamma/3\) is included. | Proves the near-zero one-sided clause without applying Lyu's relative theorem outside its useful regime. |
| `unit_005` | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted `step_005`, and Lemmas~\ref{lem:step-006-high-tail} and \ref{lem:step-006-low-tail}, the exact simultaneous source event satisfies (T), with the exact \(4k\) trace/block envelope and no block-independence claim. | Defines and exports `E_good` for all downstream consumers. |

Atomic step = no.  The marginal partition law, cited high-mean tail,
finite-population mgf comparison, low-mean KL calculation, and simultaneous
finite union are independent audit obligations.

## Cited Result Applications

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Exact conclusion used |
| --- | --- | --- | --- |
| Accepted `step_005`, in particular Lemma~\ref{lem:step-005-binomial} and its target assembly | For every fixed positive-branch labeled quotient sample of length \(n_0\), the exact error vectors induced by \(\bar C\) form a finite set obeying (1). | Its current proof and review have the accepted hashes in `## Step Identity`.  It already discharges quotient VC dimension, infinite-class, duplicate-record, \(v=1\), and positive-branch range issues. | The finite family over which Proposition~\ref{prop:step-006-good-event} takes its union, and the two cardinality inequalities after that union. |
| Lyu v1 Proposition 2, `prop:chernoff-sample-without-replacement` | For fixed bits \(x_1,\ldots,x_N\in\{0,1\}\), population mean \(p=N^{-1}\sum_r x_r\), a uniformly random subset \(A\subseteq[N]\) of size \(t\), and \(0<\zeta<1\), \[ \Pr\!\left[\left|t^{-1}\sum_{r\in A}x_r-p\right|>\zeta p\right] \leq2\exp(-\zeta^2tp/3). \tag{2} \] | Use \(N=n_0\), \(t=m\), \(x_r=z_r\), \(p=\mu(z)\), and \(\zeta=1/(5d)\).  Proposition~\ref{prop:step-006-partition} gives the uniform subset; \(m\leq n_0\) follows from \(n_0=km\), \(k\geq2\); and \(0<\zeta<1\) follows from \(d\geq1\).  The source text has an unused printed `k` in the premise while its subset size and exponent use `t`; the operative size condition is the checked \(t\leq N\), and no conclusion involving that source typo is used. | Only the high-mean relative failure estimate in Lemma~\ref{lem:step-006-high-tail}.  The low-mean branch is not obtained from this citation. |
| Proposition~\ref{prop:step-006-partition} | Each block of the uniform labeled partition is a marginally uniform size-\(m\) subset conditional on the fixed master sample; the blocks may be dependent. | Proved locally from an exact partition count. | Instantiates (2) and Lemma~\ref{lem:step-006-mgf} one block at a time. |
| Lemma~\ref{lem:step-006-high-tail} | For each fixed high-mean trace and fixed block, relative failure has probability at most \(2e^{-m\alpha/(3600d^2)}\). | The checked Lyu result, the exact block marginal, and \(\mu>\gamma/3=\alpha/48\). | The high-branch terms in the finite union defining \(E_{\mathrm{good}}^c\). |
| Lemma~\ref{lem:step-006-mgf} | For each fixed trace and block, \(\mathbb E[e^{\lambda m\widehat\mu_i}\mid\bar S]\leq(1-\mu+\mu e^\lambda)^m\) for every \(\lambda\geq0\). | Proved locally by an elementary symmetric-mean smoothing argument; no independence theorem is cited. | The exponential-Markov optimization in Lemma~\ref{lem:step-006-low-tail}. |
| Lemma~\ref{lem:step-006-low-tail} | For each fixed trace with \(\mu\leq\gamma/3\), upper failure above \(\gamma/2\) has probability at most \(e^{-m\alpha/(3600d^2)}\). | The mgf comparison, an explicit binary-KL minimization, and the separately handled case \(\mu=0\). | The low-branch terms in the finite union defining \(E_{\mathrm{good}}^c\). |
| Proposition~\ref{prop:step-006-good-event} | The exact simultaneous event defined below has conditional failure at most the right side of (T), and in fact also at most \(4k(en_0/v)^v e^{-m\alpha/(3600d^2)}\). | The two fixed-trace tails, a finite union only, and accepted (1). | The exact target-step output consumed by later structural and confidence steps. |

The source's event uses its internal accuracy symbol at the thresholds
`source accuracy / 3` and `source accuracy / 2`.  The accepted sketch maps
that symbol to the current \(\gamma=\alpha/16\).  Thus the thresholds and
relative tolerance in this proof are the exact source thresholds under the
declared symbol map, not altered surrogate thresholds.

## Local Derivation

### unit_001: proposition

**Proposition (Marginal law of a uniform labeled block partition).**
\(\label{prop:step-006-partition}\)
Under Assumption~\ref{assump:approximate-dp-regime} and the formalized
setting's positive-branch construction, let \(d\geq1\), \(k\geq2\), let
\(m\) be the exact integer produced by the displayed ceiling, and let
\(n_0=km\).  Fix any indexed master sample
\(\bar S=((q_r,y_r))_{r=1}^{n_0}\).  If
\(\mathcal P=(B_1,\ldots,B_k)\) is uniform over all labeled partitions of
\([n_0]\) with \(|B_i|=m\), then, conditional on \(\bar S\), for every
\(i\in[k]\) and every \(A\subseteq[n_0]\) of size \(m\),

\[
 \Pr_{\mathcal P}[B_i=A\mid\bar S]=\binom{n_0}{m}^{-1}.
\tag{3}
\]

This is a marginal statement only.  The blocks are pairwise disjoint and
jointly cover \([n_0]\), and hence are generally dependent.  In particular,
when \(k=2\), \(B_2=[n_0]\setminus B_1\).

**Proof.**  The partition is drawn independently of the record values, so
conditioning on \(\bar S\) does not change its law.  The number of labeled
equal-size partitions is

\[
 \frac{n_0!}{(m!)^k}.
\]

After fixing \(B_i=A\), the remaining \(n_0-m\) indices can be assigned to
the remaining labeled blocks in

\[
 \frac{(n_0-m)!}{(m!)^{k-1}}
\]

ways.  Their ratio is

\[
 \frac{(n_0-m)!}{(m!)^{k-1}}
 \frac{(m!)^k}{n_0!}
 =\frac{m!(n_0-m)!}{n_0!}
 =\binom{n_0}{m}^{-1},
\]

which proves (3).  Disjointness and coverage are part of the definition of
a partition and give the dependence statements, including the complement
identity for \(k=2\).  No later argument replaces (3) by a joint product
law. \(\square\)

### unit_002: lemma

**Lemma (High-error relative fixed-trace tail).**
\(\label{lem:step-006-high-tail}\)
Under Assumption~\ref{assump:approximate-dp-regime}, the positive-branch
definitions \(d\geq1\), \(\gamma=\alpha/16\), and \(a_d=1/(5d)\),
Proposition~\ref{prop:step-006-partition}, and the checked Lyu v1
Proposition 2 restated in (2), fix an arbitrary trace
\(z=(z_r)_{r=1}^{n_0}\in\{0,1\}^{n_0}\) and define

\[
 \mu(z):=\frac1{n_0}\sum_{r=1}^{n_0}z_r,
 \qquad
 \widehat\mu_i(z):=\frac1m\sum_{r\in B_i}z_r.
\tag{4}
\]

If \(\mu(z)>\gamma/3\), then for every \(i\in[k]\),

\[
\begin{aligned}
 &\Pr_{\mathcal P}
 \left[|\widehat\mu_i(z)-\mu(z)|>a_d\mu(z)\mid\bar S\right]\\
 &\qquad\leq
 2\exp\!\left(-\frac{m\mu(z)}{75d^2}\right)
 \leq
 2\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\end{aligned}
\tag{5}
\]

The good relative interval is closed, so equality at either relative
endpoint is not a failure event in (5).

**Proof.**  Conditional on \(\bar S\), the vector \(z\) is fixed, and
Proposition~\ref{prop:step-006-partition} makes \(B_i\) a uniformly random
size-\(m\) subset of the \(n_0\) indexed coordinates.  In (2), instantiate

\[
 N=n_0,\qquad t=m,\qquad p=\mu(z),\qquad \zeta=a_d=\frac1{5d}.
\]

The conditions \(t\leq N\) and \(0<\zeta<1\) hold because
\(n_0=km\), \(k\geq2\), and \(d\geq1\).  Thus (2) gives

\[
 2\exp\!\left(-\frac{a_d^2m\mu(z)}3\right)
 =2\exp\!\left(-\frac{m\mu(z)}{75d^2}\right).
\]

The branch premise and \(\gamma=\alpha/16\) give
\(\mu(z)>\gamma/3=\alpha/48\).  Hence

\[
 \frac{m\mu(z)}{75d^2}
 >\frac{m\alpha}{75\cdot48\,d^2}
 =\frac{m\alpha}{3600d^2},
\]

which proves the second inequality in (5).  Lyu's proposition controls the
strict event `greater than the relative tolerance`; its complement is
therefore exactly the closed interval used in the event definition.
\(\square\)

### unit_003: lemma

**Lemma (Finite-population exponential-moment domination).**
\(\label{lem:step-006-mgf}\)
Under Proposition~\ref{prop:step-006-partition}, fix an arbitrary binary
trace \(z\), define \(\mu(z)\) and \(\widehat\mu_i(z)\) by (4), and fix a
block \(i\in[k]\).  Then for every \(\lambda\geq0\), conditional on the
fixed master sample,

\[
 \mathbb E_{\mathcal P}
 \left[e^{\lambda m\widehat\mu_i(z)}\mid\bar S\right]
 \leq \left(1-\mu(z)+\mu(z)e^\lambda\right)^m.
\tag{6}
\]

No independence between selected coordinates or between different blocks
is asserted.

**Proof.**  Write \(N=n_0\), \(a_r=e^{\lambda z_r}\geq0\), and let
\(e_m(a_1,\ldots,a_N)\) be the degree-\(m\) elementary symmetric sum.
By the exact marginal law (3),

\[
\begin{aligned}
 \mathbb E_{\mathcal P}
 \left[e^{\lambda\sum_{r\in B_i}z_r}\mid\bar S\right]
 &=\binom Nm^{-1}
   \sum_{A\subseteq[N]:|A|=m}\prod_{r\in A}a_r\\
 &=\binom Nm^{-1}e_m(a_1,\ldots,a_N).
\end{aligned}
\tag{7}
\]

We prove the symmetric-mean inequality needed to bound (7).  For two
coordinates \(a,b\) and the vector \(\mathbf c\) of all remaining
coordinates,

\[
 e_m(a,b,\mathbf c)
 =e_m(\mathbf c)+(a+b)e_{m-1}(\mathbf c)
  +ab\,e_{m-2}(\mathbf c),
\tag{8}
\]

with the usual conventions \(e_0=1\) and \(e_j=0\) outside the available
degrees.  Replacing \(a,b\) by their average preserves their sum and changes
their product by

\[
 \left(\frac{a+b}{2}\right)^2-ab=\frac{(a-b)^2}{4}\geq0.
\]

Since every elementary symmetric sum of the nonnegative coordinates
\(\mathbf c\) is nonnegative, (8) shows that pairwise averaging cannot
decrease \(e_m\).  To make the limiting step explicit, repeatedly replace a
current maximum coordinate \(a\) and a current minimum coordinate \(b\) by
their average.  The coordinate sum is preserved, while the sum of squares
decreases by

\[
 a^2+b^2-2\left(\frac{a+b}{2}\right)^2
 =\frac{(a-b)^2}{2}.
\]

The nonnegative sum of squares cannot decrease by a fixed positive amount
infinitely often.  Hence the maximum-minus-minimum range tends to zero, and,
because the sum stays fixed, the vector converges to its constant mean
vector.  Continuity of \(e_m\) now gives

\[
 e_m(a_1,\ldots,a_N)
 \leq\binom Nm\left(\frac1N\sum_{r=1}^N a_r\right)^m.
\tag{9}
\]

For the current binary population,

\[
 \frac1N\sum_{r=1}^N a_r
 =\frac1N\sum_{r=1}^N e^{\lambda z_r}
 =1-\mu(z)+\mu(z)e^\lambda.
\]

Substitution in (7) proves (6).  This proof uses only the single-block
marginal law. \(\square\)

### unit_004: lemma

**Lemma (Low-error one-sided fixed-trace tail).**
\(\label{lem:step-006-low-tail}\)
Under Assumption~\ref{assump:approximate-dp-regime}, the positive-branch
definitions \(d\geq1\) and \(\gamma=\alpha/16\), and
Lemma~\ref{lem:step-006-mgf}, fix an arbitrary trace \(z\) with
\(0\leq\mu(z)\leq\gamma/3\).  Then every \(i\in[k]\) satisfies

\[
\begin{aligned}
 \Pr_{\mathcal P}
 [\widehat\mu_i(z)>\gamma/2\mid\bar S]
 &\leq \exp(-m\gamma/30)\\
 &=\exp(-m\alpha/480)\\
 &\leq\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\end{aligned}
\tag{10}
\]

If \(\mu(z)=0\), the failure event is empty.  The conclusion includes the
branch boundary \(\mu(z)=\gamma/3\).

**Proof.**  Put \(p=\mu(z)\) and \(q=\gamma/2\).  Because
\(0<\alpha<1/4\), one has \(0<q<1\).  If \(p=0\), every coordinate of the
binary trace is zero.  Therefore \(\widehat\mu_i(z)=0\) for every partition,
and the claimed failure probability is zero.

Now suppose \(0<p\leq\gamma/3<q\).  For every \(\lambda>0\), exponential
Markov and Lemma~\ref{lem:step-006-mgf} give

\[
\begin{aligned}
 \Pr_{\mathcal P}[\widehat\mu_i(z)>q\mid\bar S]
 &\leq e^{-\lambda mq}
 \mathbb E_{\mathcal P}
 [e^{\lambda m\widehat\mu_i(z)}\mid\bar S]\\
 &\leq
 \exp\{m[-\lambda q+\log(1-p+pe^\lambda)]\}.
\end{aligned}
\tag{11}
\]

The minimizing value is

\[
 \lambda_*:=\log\frac{q(1-p)}{p(1-q)}>0.
\]

Direct substitution in (11) yields

\[
 \Pr_{\mathcal P}[\widehat\mu_i(z)>q\mid\bar S]
 \leq e^{-mD(q\Vert p)},
\tag{12}
\]

where

\[
 D(q\Vert p):=q\log\frac qp+(1-q)\log\frac{1-q}{1-p}
\tag{13}
\]

is the binary relative entropy.  For fixed \(q\) and \(0<p<q\),

\[
 \frac{\partial}{\partial p}D(q\Vert p)
 =\frac{p-q}{p(1-p)}<0.
\tag{14}
\]

Consequently (13) is minimized over
\(0<p\leq p_0:=\gamma/3\) at \(p=p_0\).  At this endpoint,
\(q=(3/2)p_0\).  For any \(0<p_0<q<1\), set
\(u=(q-p_0)/(1-p_0)\).  The elementary inequality

\[
 \log(1-u)\geq-\frac{u}{1-u},\qquad 0\leq u<1,
\tag{15}
\]

follows because the difference between the two sides is zero at \(u=0\)
and has derivative \(u/(1-u)^2\geq0\).  Since
\(1-q=(1-p_0)(1-u)\), (15) gives

\[
 (1-q)\log\frac{1-q}{1-p_0}\geq-(q-p_0).
\tag{16}
\]

It follows that

\[
\begin{aligned}
 D(q\Vert p_0)
 &\geq q\log(q/p_0)-(q-p_0)\\
 &=p_0\left(\frac32\log\frac32-\frac12\right).
\end{aligned}
\tag{17}
\]

For \(x\geq0\),

\[
 \log(1+x)\geq\frac{2x}{2+x},
\tag{18}
\]

because the difference is zero at zero and its derivative is
\(x^2/((1+x)(2+x)^2)\geq0\).  Taking \(x=1/2\) in (18) gives
\(\log(3/2)\geq2/5\).  Thus (17) implies

\[
 D(q\Vert p_0)
 \geq p_0\left(\frac32\frac25-\frac12\right)
 =\frac{p_0}{10}
 =\frac\gamma{30}.
\tag{19}
\]

Equations (12), (14), and (19) prove the first line of (10), including
\(p=p_0=\gamma/3\).  Finally,
\(\gamma/30=\alpha/480\), and \(d\geq1\) gives

\[
 \frac1{480}\geq\frac1{3600d^2}.
\]

This proves the remaining lines of (10). \(\square\)

### unit_005: proposition

**Proposition (Exact simultaneous source trace event).**
\(\label{prop:step-006-good-event}\)
Under Assumption~\ref{assump:approximate-dp-regime}, the setting-defined
positive branch, accepted `step_005`,
Lemma~\ref{lem:step-006-high-tail}, and
Lemma~\ref{lem:step-006-low-tail}, fix an arbitrary labeled quotient master
sample \(\bar S\) and let \(\mathcal P=(B_1,\ldots,B_k)\) be the uniform
labeled partition.  For every
\(z\in\mathcal E_{\bar C}(\bar S)\), use the means in (4), and define

\[
\begin{aligned}
 E_{\mathrm{good}}(\bar S,\mathcal P)
 :=\bigcap_{z\in\mathcal E_{\bar C}(\bar S)}
   \bigcap_{i=1}^k
 \Big(&\{\mu(z)>\gamma/3\}
       \cap\{|\widehat\mu_i(z)-\mu(z)|\leq a_d\mu(z)\}\\
 &\quad\cup
       \{\mu(z)\leq\gamma/3\}
       \cap\{0\leq\widehat\mu_i(z)\leq\gamma/2\}\Big).
\end{aligned}
\tag{20}
\]

Then, with \(c_{\mathrm{tr}}:=1/3600\),

\[
\begin{aligned}
 \Pr_{\mathcal P}
 [E_{\mathrm{good}}(\bar S,\mathcal P)^c\mid\bar S]
 &\leq4k|\mathcal E_{\bar C}(\bar S)|
   \exp\!\left(-c_{\mathrm{tr}}\frac{m\alpha}{d^2}\right)\\
 &\leq4k\Pi_{\bar C}(n_0)
   \exp\!\left(-c_{\mathrm{tr}}\frac{m\alpha}{d^2}\right)\\
 &\leq4k\left(\frac{en_0}{v}\right)^v
   \exp\!\left(-c_{\mathrm{tr}}\frac{m\alpha}{d^2}\right).
\end{aligned}
\tag{21}
\]

The event (20) is exactly Lyu's source event after mapping the source's
internal accuracy to \(\gamma\): for every \(\bar c\in\bar C\), its error
trace gives its master and block empirical errors, and concepts with the
same trace impose the same inequalities.

**Proof.**  For every trace-block pair, define the two branch-qualified
failure events

\[
\begin{aligned}
 F^{\mathrm H}_{z,i}
 &:=\{\mu(z)>\gamma/3\}
   \cap\{|\widehat\mu_i(z)-\mu(z)|>a_d\mu(z)\},\\
 F^{\mathrm L}_{z,i}
 &:=\{\mu(z)\leq\gamma/3\}
   \cap\{\widehat\mu_i(z)>\gamma/2\}.
\end{aligned}
\tag{22}
\]

The lower endpoint in the low branch needs no failure event because every
block mean of a binary trace is nonnegative.  The predicates in (22) split
all possible master means and assign the equality
\(\mu(z)=\gamma/3\) to the low branch.  Hence

\[
 E_{\mathrm{good}}(\bar S,\mathcal P)^c
 \subseteq
 \bigcup_{z\in\mathcal E_{\bar C}(\bar S)}
 \bigcup_{i=1}^k
 \left(F^{\mathrm H}_{z,i}\cup F^{\mathrm L}_{z,i}\right).
\tag{23}
\]

Lemma~\ref{lem:step-006-high-tail} gives

\[
 \Pr(F^{\mathrm H}_{z,i}\mid\bar S)
 \leq2\exp\!\left(-\frac{m\alpha}{3600d^2}\right),
\tag{24}
\]

where the probability is zero if its branch predicate is false.  Likewise,
Lemma~\ref{lem:step-006-low-tail} gives

\[
 \Pr(F^{\mathrm L}_{z,i}\mid\bar S)
 \leq\exp\!\left(-\frac{m\alpha}{3600d^2}\right)
 \leq2\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\tag{25}
\]

Apply the union bound to (23), retain the source-facing envelope of four
per trace-block pair from (24)-(25), and use the accepted trace bounds (1).
This proves all three lines of (21).  Only the one-block marginal law (3)
entered (24) and (25).  The proof neither factors a joint probability nor
multiplies block success probabilities, so the dependence of the single
partition's blocks is irrelevant.

For exact object matching, if
\(z_r=\mathbf1\{\bar c(q_r)\ne y_r\}\), then \(\mu(z)\) is precisely
\(\operatorname{err}_{\bar S}(\bar c)\), and
\(\widehat\mu_i(z)\) is precisely
\(\operatorname{err}_{\bar S_i}(\bar c)\).  Thus (20) is neither a trace
representative event nor a changed empirical metric. \(\square\)

## Target-Step Assembly

The positive branch fixes the actual integer \(m\) through its ceiling and
sets \(n_0=km\).  Proposition~\ref{prop:step-006-partition} therefore makes
every block, conditional on an arbitrary fixed master sample, a uniform
size-\(m\) sample without replacement.  This remains true at \(k=2\), even
though then the second block is completely determined by the first.

For a fixed exact error trace above \(\gamma/3\),
Lemma~\ref{lem:step-006-high-tail} instantiates the checked Lyu proposition
with the unchanged relative tolerance \(1/(5d)\) and gives exponent
\(m\alpha/(3600d^2)\).  For a trace at or below \(\gamma/3\),
Lemma~\ref{lem:step-006-mgf} derives the without-replacement exponential
moment directly, and Lemma~\ref{lem:step-006-low-tail} turns it into the
one-sided threshold \(\gamma/2\).  That lemma treats mean zero
deterministically and includes the equality boundary \(\mu=\gamma/3\).

Proposition~\ref{prop:step-006-good-event} then defines the exact two-clause
source event simultaneously over the finite trace family produced by the
accepted dependency and all \(k\) blocks.  Its finite union retains exactly
the required source-facing \(4k\) envelope and proves

\[
 \Pr_{\mathcal P}
 [E_{\mathrm{good}}(\bar S,\mathcal P)^c\mid\bar S]
 \leq4k\Pi_{\bar C}(n_0)
 \exp\!\left(-\frac{m\alpha}{3600d^2}\right).
\tag{26}
\]

No factor \(d+1\) is present: the single event (20) is defined once from
master and block errors and is reused at every source stage.  No
independence among blocks is used.  This is the exact target conditional
trace interface; the logarithmic fixed point and the charge to
\(\beta_{\mathrm{tr}}\) are deliberately not claimed here.

## Explicit Rate Audit

- Exposed variables: \(m,\alpha,d,k,n_0,v\), with
  \(\gamma=\alpha/16\), \(a_d=1/(5d)\), and exact trace multiplicity
  \(\Pi_{\bar C}(n_0)\).
- Hidden constants may depend on: None.  The tail constant is explicitly
  fixed as \(c_{\mathrm{tr}}=1/3600\).
- Hidden constants may not depend on: \(C,X,D,c,\bar S\), a trace, a block,
  the partition, \(d,v,k,m,n_0,\alpha,\beta,\varepsilon,\delta\), or a
  source stage.
- Fixed quantities: Conditional on \(\bar S\), all public parameters and
  every trace are fixed.  Only the data-independent uniform partition is
  random.
- Probability mode: Conditional high probability over one uniform labeled
  partition, simultaneously over all exact error traces and blocks.  There
  is no independence conversion.  `step_007` will integrate/charge this
  conditional estimate.
- Horizon mode: One fixed finite partition, simultaneous over \(k\) blocks;
  the event is reused across all \(d+1\) stages without another union.
- Norm mode: Master and block empirical zero-one error.  The high branch is
  a relative absolute deviation; the low branch is a one-sided empirical
  upper tail.
- Admissibility conditions and auxiliary tolerances: \(d\geq1\),
  \(0<\alpha<1/4\), \(k\geq2\), exact integer \(m\geq1\), \(n_0=km\),
  \(\gamma=\alpha/16\), and \(a_d=1/(5d)\).  Accepted `step_005` supplies
  \(1\leq v\leq n_0\) for the final VC trace envelope.
- Term absorption or simplification inequalities:
  \[
    \mu>\gamma/3=\alpha/48
    \Longrightarrow \frac{m\mu}{75d^2}
      >\frac{m\alpha}{3600d^2},
  \]
  \[
    D(\gamma/2\Vert\mu)\geq\gamma/30=\alpha/480
      \geq\frac{\alpha}{3600d^2}
      \quad(0<\mu\leq\gamma/3,d\geq1).
  \]
  No ceiling is absorbed or removed: every exponent contains the actual
  ceiled block size \(m\).
- Probability conversion: A finite union over two source clauses, \(k\)
  block marginals, and \(|\mathcal E_{\bar C}(\bar S)|\) exact traces gives
  the displayed \(4k\) envelope.  No product probability is formed.
- Contribution to any Rate Specialization Bridge: Equation (26) is the
  input to `step_007`, which must prove the fixed-point domination and
  confidence charge.  This step makes no public sample-complexity claim.
- Baseline-reduction check: At \(v=1\), accepted (1) gives the finite
  envelope \(\Pi_{\bar C}(n_0)\leq en_0\) and the same tail exponent.  At
  \(v=d\), it becomes \((en_0/d)^d\), the coarse source scale, without an
  extra factor.  At \(d=0\), the no-data singleton branch bypasses this
  step.  At \(k=2\), the marginal proof and union remain valid although the
  two blocks are complements.

## Blockers

None.

## Notation And Assumption Notes

- The setting-defined \(\bar S,\mathcal E_{\bar C}(\bar S),\Pi_{\bar C}\),
  \(k,m,n_0,d,v,\alpha\), and the uniform partition procedure retain their
  original meanings.  The accepted dependency supplies the exact finite
  trace family; no trace representative is selected.
- The event \(E_{\mathrm{good}}\), internal tolerance
  \(\gamma=\alpha/16\), relative tolerance \(a_d=1/(5d)\), and explicit
  universal constant \(c_{\mathrm{tr}}=1/3600\) are `appendix-local`.
  `E_good` is the minimal exported interface to downstream proof steps and
  is not a primitive theorem assumption.
- The block index sets \(B_i\), trace mean \(\mu(z)\), and block means
  \(\widehat\mu_i(z)\) are `proof-local` representations of the
  setting-defined partition blocks and empirical errors.  The binary KL
  quantity \(D(q\Vert p)\), elementary symmetric sums \(e_m\), and
  auxiliary scalars \(p,p_0,q,u,\lambda_*\) are also `proof-local`.
- Constant provenance is explicit.  \(\gamma\) and \(a_d\) come from the
  accepted sketch/source map; \(c_{\mathrm{tr}}\) is proved sufficient in
  Lemmas~\ref{lem:step-006-high-tail} and
  \ref{lem:step-006-low-tail}; no free bounded quantity is introduced.
- Assumption provenance is exact.  The parameter inequalities are primitive
  under Assumption~\ref{assump:approximate-dp-regime}; the positive branch
  and the integer ceiling are deterministic parts of the formalized
  procedure; finite trace multiplicity is supplied by accepted `step_005`;
  the partition marginal, both tails, and `E_good` are proved in the named
  local results.  No realized good event or block-independence property is
  assumed.
- Boundary audit: a zero trace has every block mean zero; equality
  \(\mu=\gamma/3\) belongs to the low branch; equality at a high-branch
  relative endpoint belongs to the good event; \(v=1\) uses the accepted
  finite trace envelope; \(k=2\) uses complementary but individually
  uniform blocks; and arbitrary repeats or labels in \(\bar S\) are already
  represented by exact fixed binary traces.  The ceiling defining \(m\) is
  never relaxed.  A mean-one trace is deterministic and also satisfies the
  high-branch conclusion.
- The paired global proof and global-proof review were read only for the
  step-relevant diagnostic plan: separate Lyu's high branch from the local
  near-zero KL branch, then retain the finite \(4k\) union.  The review is
  `ACCEPTED`.  Neither diagnostic artifact is used as evidence, a cited
  result, an assumption source, or authority to change the target claim.
- No prior idea branch, same-step attempt, `proof_history/` artifact,
  unrelated proof step, final artifact, tracker, or worker log was read or
  used.
