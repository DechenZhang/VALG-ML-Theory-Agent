# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove that any learner, private or not and improper or not, satisfying the global \((1/16,1/16)\) PAC guarantee with \(n\) samples must have \(n\ge a_{\rm VC}k\) for a universal \(a_{\rm VC}>0\).
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:canonical-product`, `assump:vc-one-factors`; derived: full-product shattered witness.
- Technical challenge: Keep the argument valid for randomized improper outputs and small \(k\), and return from a random-target average to the exact PAC convention.
- Intended proof tool or cited result: Independent unseen fair labels on one witness point per factor; bounded-loss PAC expectation ceiling.
- Output target: Global additive VC lower certificate.
- Rate objective: Candidate lower objective: explicit \(k,n\), impossibility/expectation mode converted to exact PAC, fixed candidate/risk; no privacy dependence.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: \(X=\bigsqcup_{i=1}^kX_i\), where \(1\le k<\infty\), and restriction identifies \(C\) bijectively with \(\prod_{i=1}^k C_i\).
  - Assumption~\ref{assump:vc-one-factors}: every \(C_i\) is nonconstant and has \(\operatorname{VC}(C_i)=1\).
- Derived invariants supplied by accepted dependencies:
  - Lemma~\ref{lem:step-001-vc-cardinality} from the accepted `step_001` proof supplies points \(x_i\in X_i\), one per factor, such that \(\{x_1,\ldots,x_k\}\) is shattered by \(C\). Equivalently, for every \(b\in\{0,1\}^k\), it supplies a target \(c^b\in C\) with \(c^b(x_i)=b_i\) for all \(i\).
  - Accepted dependency artifacts: `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`, and its `ACCEPTED` review `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`.
- Local conditional hypotheses:
  - A fixed \(n\in\mathbb N\) and a fixed unrestricted learner \(A_n\) in the setting's measurable finite-evaluation-cylinder model. The learner may be randomized, improper, computationally unbounded, and nonprivate.
  - In Proposition~\ref{prop:step-007-additive-vc}, the target premise is that \(A_n\) satisfies the global \((1/16,1/16)\) PAC guarantee. The temporary contradiction hypothesis \(n<k/2\) is discharged in that proposition.

No privacy assumption, quotient-output restriction, properness condition, efficiency condition, balance condition, or support condition is used. The hard distribution below is finite atomic, and output measurability follows directly from the learner model's finite-evaluation-cylinder requirement.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors} and accepted Lemma~\ref{lem:step-001-vc-cardinality}, for every \(n\in\mathbb N\) and every unrestricted randomized learner \(A_n\), the uniform distribution on the \(k\) witness points and a uniform random full-product target satisfy \(\mathbb E R_D\ge \frac12(1-1/k)^n\). | Proves the unseen-label lower bound at kernel level, including learner randomness, improper output, and repeated samples. |
| `unit_002` | lemma | Under the setting's exact PAC convention, any measurable loss \(L\in[0,1]\) satisfying \(\Pr[L\le1/16]\ge15/16\) has \(\mathbb E L\le31/256\); hence \(\mathbb E L>31/256\) implies \(\Pr[L>1/16]>1/16\). | Converts expectation hardness back to the exact accuracy and failure event. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, accepted Lemma~\ref{lem:step-001-vc-cardinality}, and Lemmas~\ref{lem:step-007-unseen-labels} and \ref{lem:step-007-pac-conversion}, every unrestricted learner with the global \((1/16,1/16)\) PAC guarantee on \(n\in\mathbb N\) samples satisfies \(n\ge k/2\); if \(n<k/2\), a deterministic target \(c\in C\) and the uniform witness distribution satisfy \(\Pr[R_D>1/16]>1/16\). | Handles finite target extraction, the exact PAC contradiction, all small \(k\), and fixes \(a_{\rm VC}=1/2\). |

Atomic step = no. The random-target lower bound, the bounded-loss probability conversion, and the deterministic target/rate conclusion are independent audit obligations.

## Cited Result Applications

No external paper result is used. The elementary inequality \((1-x)^m\ge1-mx\) for integer \(m\ge1\) and \(x\in[0,1]\) is proved by induction inside Proposition~\ref{prop:step-007-additive-vc}; it is not imported as an unchecked result.

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Conclusion used |
| ------ | ------------------------------------------- | ---------------------------------- | --------------- |
| Accepted Lemma~\ref{lem:step-001-vc-cardinality} | There are \(x_i\in X_i\) such that every vector \(b\in\{0,1\}^k\) is realized on \((x_1,\ldots,x_k)\) by a target \(c^b\in C\). | Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}; the accepted proof chooses one shattered singleton in each factor and uses full-product surjectivity. Its matching review accepts this exact unit. | The finite shattered witness and exact full-product random-target family. |
| Lemma~\ref{lem:step-007-unseen-labels} | For the uniform witness distribution and a uniform random target bit vector, every unrestricted randomized learner has averaged expected risk at least \(\frac12(1-1/k)^n\). | The accepted shattered witness; the learner's finite evaluation events are measurable by the setting. No PAC or privacy premise is needed. | The strict average risk lower bound when \(n<k/2\). |
| Lemma~\ref{lem:step-007-pac-conversion} | A \([0,1]\)-valued risk obeying the exact \((1/16,1/16)\) PAC event has expectation at most \(31/256\), with the stated strict contrapositive. | Only bounded \(0\)-\(1\) risk and measurability of the risk event, both part of the setting's PAC convention. | Conversion of the extracted deterministic target's expectation into exact PAC failure. |
| Proposition~\ref{prop:step-007-additive-vc} | A global PAC learner on \(n\in\mathbb N\) samples has \(n\ge k/2\), without privacy, properness, or output-space restrictions beyond the setting. | The accepted shattered witness and the two preceding lemmas; small \(k\) follows from \(n\ge1\), and the remaining branch uses a proved elementary product inequality. | The exact target-step certificate with \(a_{\rm VC}=1/2\). |

## Local Derivation

### unit_001: lemma

**Lemma (Unseen labels against unrestricted randomized learners).** \(\label{lem:step-007-unseen-labels}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors} and accepted Lemma~\ref{lem:step-001-vc-cardinality}, fix \(n\in\mathbb N\) and any unrestricted learner kernel \(A_n\) with its measurable binary decoder \(\omega\mapsto h_\omega\). There are witness points \(x_i\in X_i\), targets \(c^b\in C\) indexed by \(b\in\{0,1\}^k\), and the probability measure
\[
D:=\frac1k\sum_{i=1}^k\delta_{x_i}
\tag{1}
\]
such that, if \(B\) is uniform on \(\{0,1\}^k\), \(S\sim D_{c^B}^n\), and the output is drawn from \(A_n(S,\cdot)\), then
\[
\mathbb E_{B,S,A_n}
 R_D(h_{A_n(S)},c^B)
\ge \frac12\left(1-\frac1k\right)^n.
\tag{2}
\]
The expectation includes the target, sample, and learner randomness. No privacy, properness, or PAC premise is required.

Proof / justification:
By accepted Lemma~\ref{lem:step-001-vc-cardinality}, choose \(x_i\in X_i\) so that \(W:=\{x_1,\ldots,x_k\}\) is shattered. Because the blocks are disjoint, these points are distinct. For each \(b\in\{0,1\}^k\), fix the full-product target \(c^b\in C\) supplied by that lemma, so
\[
c^b(x_i)=b_i,\qquad 1\le i\le k.
\tag{3}
\]
Only finitely many targets are fixed, so this introduces no selector or measurability condition.

Represent a sample from \(D_{c^B}^n\) by independent indices \(I_1,\ldots,I_n\), each uniform on \([k]:=\{1,\ldots,k\}\):
\[
S_B(I)=\bigl((x_{I_t},B_{I_t})\bigr)_{t=1}^n.
\tag{4}
\]
For each \(j\in[k]\), let
\[
U_j:=\{I_t\ne j\text{ for all }1\le t\le n\}.
\tag{5}
\]
This is a generated event in the finite index experiment, and
\[
\Pr(U_j)=\left(1-\frac1k\right)^n.
\tag{6}
\]

For \(a\in\{0,1\}\), the set
\[
E_{j,a}:=\{\omega\in\Omega:h_\omega(x_j)=a\}
\tag{7}
\]
is measurable by the finite-evaluation-cylinder requirement. The two sets \(E_{j,0}\) and \(E_{j,1}\) partition \(\Omega\), even when the decoded hypothesis is improper.

Fix an index tuple \(I\) for which \(U_j\) occurs and fix all target bits \(b_\ell\) with \(\ell\ne j\). The dataset (4) is then identical for \(b_j=0\) and \(b_j=1\); call it \(S\). Averaging only over the fair bit \(B_j\), while integrating all learner randomness through its kernel, gives
\[
\begin{aligned}
&\frac12\Pr_{A_n(S)}[h_{A_n(S)}(x_j)\ne0]
+\frac12\Pr_{A_n(S)}[h_{A_n(S)}(x_j)\ne1]\\
&\qquad=\frac12 A_n(S,E_{j,1})
+\frac12 A_n(S,E_{j,0})
=\frac12.
\end{aligned}
\tag{8}
\]
Thus learner randomness and arbitrary coupling among its predictions do not reveal an unseen target bit.

Since \(D\) is uniform on \(W\), its risk is the measurable finite-evaluation sum
\[
R_D(h_\omega,c^B)
=\frac1k\sum_{j=1}^k
 \mathbf 1\{h_\omega(x_j)\ne B_j\}.
\tag{9}
\]
Dropping the nonnegative losses on seen points, applying (8) on \(U_j\), and then using (6) yield
\[
\begin{aligned}
\mathbb E R_D(h_{A_n(S)},c^B)
&=\frac1k\sum_{j=1}^k
  \Pr[h_{A_n(S)}(x_j)\ne B_j]\\
&\ge\frac1k\sum_{j=1}^k
  \Pr[U_j,\ h_{A_n(S)}(x_j)\ne B_j]\\
&=\frac1k\sum_{j=1}^k\frac12\Pr(U_j)
=\frac12\left(1-\frac1k\right)^n.
\end{aligned}
\tag{10}
\]
Repeated sample points are already included in the index experiment. They can only leave more witness coordinates unseen; no distinct-sample assumption was made. This proves (2).

### unit_002: lemma

**Lemma (Exact PAC-event to expectation conversion).** \(\label{lem:step-007-pac-conversion}\)

Statement:
Under the setting's exact \((1/16,1/16)\) PAC convention, let \(L\) be any measurable random variable with \(0\le L\le1\). If
\[
\Pr[L\le1/16]\ge15/16,
\tag{11}
\]
then
\[
\mathbb E L\le\frac{31}{256}.
\tag{12}
\]
Consequently,
\[
\mathbb E L>\frac{31}{256}
\quad\Longrightarrow\quad
\Pr[L>1/16]>1/16.
\tag{13}
\]

Proof / justification:
Put \(p:=\Pr[L>1/16]\). On the complementary event, \(L\le1/16\), and everywhere \(L\le1\). Hence
\[
\mathbb E L
\le \frac1{16}(1-p)+p
=\frac1{16}+\frac{15}{16}p.
\tag{14}
\]
Under (11), \(p\le1/16\), so
\[
\mathbb E L
\le\frac1{16}+\frac{15}{16}\frac1{16}
=\frac{31}{256}.
\tag{15}
\]
Taking the strict contrapositive proves (13). The good event uses \(\le1/16\), and its complement is exactly \(>1/16\), matching the setting without a threshold change.

### unit_003: proposition

**Proposition (Additive VC PAC lower certificate).** \(\label{prop:step-007-additive-vc}\)

Statement:
Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, accepted Lemma~\ref{lem:step-001-vc-cardinality}, and Lemmas~\ref{lem:step-007-unseen-labels} and \ref{lem:step-007-pac-conversion}, fix \(n\in\mathbb N\). If an unrestricted learner \(A_n\) satisfies, for every \(c\in C\) and every allowed probability measure \(D'\),
\[
\Pr_{S\sim(D'_c)^n,A_n}
\left[R_{D'}(h_{A_n(S)},c)\le\frac1{16}\right]
\ge\frac{15}{16},
\tag{16}
\]
then
\[
n\ge\frac{k}{2}.
\tag{17}
\]
More precisely, if \(n<k/2\), the distribution \(D\) from (1) and some deterministic full-product target \(c^{b_*}\in C\) satisfy
\[
\Pr_{S\sim D_{c^{b_*}}^n,A_n}
\left[R_D(h_{A_n(S)},c^{b_*})>\frac1{16}\right]
>\frac1{16}.
\tag{18}
\]

Proof / justification:
First handle the small-factor boundary. Since \(n\in\mathbb N=\{1,2,\ldots\}\), if \(k=1\), then \(n\ge1\ge k/2\), and if \(k=2\), then \(n\ge1=k/2\). Thus only \(k\ge3\) can enter the contradiction branch \(n<k/2\).

For completeness, for every integer \(m\ge1\) and \(x\in[0,1]\),
\[
(1-x)^m\ge1-mx.
\tag{19}
\]
Indeed, the claim is equality for \(m=1\). If it holds at \(m\), multiplication by \(1-x\ge0\) gives
\[
(1-x)^{m+1}
\ge(1-mx)(1-x)
=1-(m+1)x+mx^2
\ge1-(m+1)x.
\]
This proves (19) by induction.

Suppose now that \(n<k/2\). Lemma~\ref{lem:step-007-unseen-labels} and (19), with \(x=1/k\), imply
\[
\mathbb E_{B,S,A_n}R_D(h_{A_n(S)},c^B)
\ge\frac12\left(1-\frac1k\right)^n
\ge\frac12\left(1-\frac nk\right)
>\frac14
>\frac{31}{256}.
\tag{20}
\]
For each \(b\in\{0,1\}^k\), define
\[
\ell_b:=
\mathbb E_{S\sim D_{c^b}^n,A_n}
R_D(h_{A_n(S)},c^b).
\tag{21}
\]
The left side of (20) is the finite average \(2^{-k}\sum_b\ell_b\). Therefore some deterministic \(b_*\) has
\[
\ell_{b_*}>\frac14>\frac{31}{256}.
\tag{22}
\]
Applying Lemma~\ref{lem:step-007-pac-conversion} contrapositively to the \([0,1]\)-valued risk in (21) proves (18). This contradicts (16) for the exact target \(c^{b_*}\) and exact probability measure \(D\). Hence \(n<k/2\) is impossible, proving (17).

The argument neither invokes nor derives privacy. The kernel identity (8) accounts for all learner randomization, and only the learner's binary predictions on \(W\) are used, so the output may be arbitrary and improper.

## Target-Step Assembly

Accepted Lemma~\ref{lem:step-001-vc-cardinality} supplies the exact \(k\)-point full-product witness from the two permitted primitive assumptions. Lemma~\ref{lem:step-007-unseen-labels} turns that witness into the kernel-valid averaged risk lower bound for every randomized, improper, private or nonprivate learner. Lemma~\ref{lem:step-007-pac-conversion} gives the exact \((1/16,1/16)\) bounded-loss ceiling and strict failure-event contrapositive. Proposition~\ref{prop:step-007-additive-vc} composes these facts, extracts a deterministic target from the finite random-target average, handles \(k=1,2\) using the binding positive-integer sample convention, and proves
\[
n\ge a_{\rm VC}k
\qquad\text{with the universal choice}\qquad
a_{\rm VC}:=\frac12.
\tag{23}
\]
This is exactly the binding global additive VC lower certificate. It has no privacy dependence and does not narrow the learner or output quantifiers.

## Explicit Rate Audit

- Exposed variables: exactly the factor count \(k\) and fixed candidate sample size \(n\).
- Hidden constants may depend on: None. The exported constant is explicitly \(a_{\rm VC}=1/2\).
- Hidden constants may not depend on: \(X,\Sigma,C,k,(C_i)_i,(d_i)_i,n\), the target, the distribution, learner randomness, output space, properness, computational power, \(\varepsilon\), or \(\delta\).
- Fixed quantities: \(\alpha_0=\beta_0=1/16\), binary \(0\)-\(1\) loss, and the convention \(n\in\mathbb N=\{1,2,\ldots\}\).
- Probability mode: the premise is high probability over the iid sample and learner randomness for every deterministic target and distribution. Random-target expectation is only a finite proof device; (21)-(22) extract a deterministic target, and Lemma~\ref{lem:step-007-pac-conversion} returns to the exact strict PAC failure event.
- Horizon mode: one fixed sample size \(n\); no asymptotic or uniform-in-candidate statement.
- Norm mode: exact distributional binary \(0\)-\(1\) risk \(R_D\).
- Admissibility conditions and auxiliary tolerances: Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors}, the accepted `step_001` shattered-witness conclusion, and \(n\in\mathbb N\). There is no auxiliary tolerance and no privacy admissibility condition.
- Term absorption or simplification inequalities: no term is hidden or absorbed. The complete rate comparison is
  \[
  \frac12\left(1-\frac1k\right)^n
  \ge\frac12\left(1-\frac nk\right)
  >\frac14
  >\frac{31}{256}
  \qquad(n<k/2).
  \]
- Probability conversion: if \(p=\Pr[R_D>1/16]\le1/16\), then \(\mathbb E R_D\le1/16+(15/16)p\le31/256\). Its strict contrapositive is used after deterministic target extraction.
- Contribution to any Rate Specialization Bridge: (23) exports the exact additive factor-count floor used by `step_009` and `step_014`; no public-rate simplification occurs in this step.
- Baseline-reduction check: at \(k=1\), the binding integer convention gives \(n\ge1\ge a_{\rm VC}\) exactly, so the additive VC component of the one-factor lower baseline is preserved without a surrogate or extra condition. At \(k=2\), \(n\ge1=k/2\) is exact. The later one-factor Littlestone/log-star component is neither changed nor claimed here.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: only the universal constant \(a_{\rm VC}=1/2\) and the certificate \(n\ge a_{\rm VC}k\) are exported downstream.
- `Appendix-local`: the accepted witness points \(x_i\), their finite set \(W\), the targets \(c^b\), and the hard measure \(D=k^{-1}\sum_i\delta_{x_i}\) express the proof construction. The points and targets are accepted dependency objects; \(D\) is directly defined from them. None is a new theorem-facing assumption.
- `Proof-local`: \(B\), \((I_t)_t\), \(U_j\), \(E_{j,a}\), and \(\ell_b\) are finite-experiment bookkeeping objects defined in (4)-(7) and (21). They are not exported.
- Constant provenance: \(a_{\rm VC}=1/2\) is directly fixed by the proved comparison (20). The threshold \(1/4\) follows from \(n/k<1/2\); \(31/256\) is derived exactly from the setting's fixed \(1/16\) accuracy and failure levels in (15). No free constant or asymptotic notation is introduced.
- Assumption provenance: the shattered witness and full-product target map are supplied by the accepted dependency. Each unseen event \(U_j\) is generated and its probability is proved in (6). The learner's PAC guarantee and \(n<k/2\) are local conditional hypotheses used only in Proposition~\ref{prop:step-007-additive-vc}; the latter is discharged by contradiction. No generated event, independence assertion, or boundedness property is promoted to a primitive condition.
- Measurability: the finite atomic risk (9) is a finite sum of measurable evaluation indicators. Consequently its expectation and threshold event are legal for the arbitrary measurable output space in the setting. Assumption~\ref{assump:countably-coded-evaluation} is not needed by this step's finite witness argument and is not added to the binding row.
- Randomization and improperness: (8) is an identity between probabilities under the learner kernel on the same dataset; it does not require a random-seed representation. The sets \(E_{j,0},E_{j,1}\) partition every binary decoded output, whether or not it belongs to \(C\).
- Diagnostic boundary: no `global_proof.md` or `global_proof_review.md` was read or used.
