# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Choose \(\gamma_k,b_k,c_k\); prove scale ordering, group
  behavior, and all \(W_f,W_c\) bounds, including empty-group legality.
- Depends on: `step_002`.
- Assumptions used: `assump:parameter-domain`; derived
  \(C_k^{\rm rec}\).
- Technical challenge: \(k=2\), ceilings, largest epsilon.
- Intended proof tool or cited result: Explicit geometric sums.
- Output target: Scale/normalizer certificate.
- Rate objective: Three-regime structural dependence.
- Sketch-row review status: `PENDING`; the separate
  `proof_sketch_review.md` acceptance gate records `ACCEPTED` for sketch
  attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-domain`: \(k>1\) is fixed and known,
    \(\lambda\geq\sigma>0\), \(\delta\in(0,1/2)\), and
    \(0<\epsilon\leq c_k\sigma\). This proof makes the explicit legal
    choice \(c_k=e^{-1}\).
- Accepted dependency artifacts:
  - `proof_steps/step_002/proof.md`, SHA-256
    `f22f51f16d14638bd26f5f83662c33620f142a3b3d1bd167cbb32b982d509c58`,
    whose Lemma~\(\ref{lem:step-002-recentered-moment}\) exports
    \[
    C_k^{\rm rec}=2^{k-1}(1+50^k)<\infty.
    \]
  - `proof_steps/step_002/review.md`, which records `ACCEPTED` for sketch
    attempt 1, step `step_002`, unit attempt 1, and the same reviewed-proof
    SHA-256.
- Derived invariants supplied by accepted dependencies:
  - On the generated localization event, the dependency proves
    \(\mathbb E_D|X-c|^k\leq C_k^{\rm rec}\sigma^k\). The present step
    consumes only the explicit deterministic \(k\)-only constant
    \(C_k^{\rm rec}\) to calibrate \(b_k\); it does not assume or use the
    localization event.
- Local conditional hypotheses: None.

No distributional condition, generated event, realized center, or variance
claim is used in this deterministic scale calculation.

## Local Lemma Map

Atomic step = no. The ceiling calculation, normalization law, two geometric
normalizer calculations, and endpoint calibration are independent downstream
interfaces and are exposed separately.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted \(C_k^{\rm rec}\) interface of Lemma~\(\ref{lem:step-002-recentered-moment}\), the explicit choices \(\gamma_k=1/8\), \(c_k=e^{-1}\), and tail-calibrated \(b_k\) are legal and imply \(J\geq1\), \(H_*\leq H<2H_*\), \(h_0<\sigma<h_{J-1}\), and both theorem-regime groups are nonempty, including at \(\epsilon=c_k\sigma\). | Chooses all requested constants and resolves the ceiling, ordering, and largest-epsilon obligations. |
| `unit_002` | proposition | For every \(J\geq1\) and positive dyadic scale family in the setting, the fine/coarse sets form a prefix/suffix partition, every nonempty normalizer is positive, and the exact \(p_j\) law has total mass one and mass \(1/m\) per nonempty group; if a group is empty, its empty sum is zero and no zero denominator is evaluated. Under Assumption~\(\ref{assump:parameter-domain}\) and Lemma~\(\ref{lem:step-003-scale-ordering}\), the chosen theorem parameters give \(m=2\). | Proves group behavior, exact group masses, and nonvacuous empty-group legality. |
| `unit_003` | lemma | For every scale family covered by Proposition~\(\ref{prop:step-003-group-law}\), \(W_{\rm f}\leq2\), with \(W_{\rm f}=0\) in the empty-fine convention. | Supplies the uniform fine normalizer bound without a level count. |
| `unit_004` | proposition | The empty-coarse convention gives \(W_{\rm c}=0\) without evaluating a denominator. Under Assumption~\(\ref{assump:parameter-domain}\), Lemma~\(\ref{lem:step-003-scale-ordering}\), and Proposition~\(\ref{prop:step-003-group-law}\), the theorem scales satisfy a \(k\)-only bound for \(k>2\), an explicit constant times \(\log(\sigma/\epsilon)\) for \(k=2\), and an explicit \(k\)-only constant times \((H/\sigma)^{2-k}\) for \(1<k<2\). | Supplies the exact three-regime structural normalizer dependence and its empty-sum extension. |
| `unit_005` | lemma | Under Assumption~\(\ref{assump:parameter-domain}\), the accepted \(C_k^{\rm rec}\) interface of Lemma~\(\ref{lem:step-002-recentered-moment}\), and Lemma~\(\ref{lem:step-003-scale-ordering}\), the chosen endpoints obey \(h_0=\epsilon/8\) and \(\overline C_k^{\rm tail}\sigma^k/H^{k-1}\leq\epsilon/8\). | Exports the bias-calibrated scale interface implicit in the requested choice of \(b_k\). |

## Cited Result Applications

### Accepted dependency: actual-center moment constant

- Source or name: accepted
  Lemma~\(\ref{lem:step-002-recentered-moment}\) from
  `proof_steps/step_002/proof.md`, validated by the current `ACCEPTED`
  `proof_steps/step_002/review.md`.
- Restated statement in current notation: for every localization transcript in
  the generated event,
  \[
  \mathbb E_D|X-c|^k\leq C_k^{\rm rec}\sigma^k,
  \qquad C_k^{\rm rec}:=2^{k-1}(1+50^k).
  \]
- Instantiated object: only the displayed deterministic constant
  \(C_k^{\rm rec}\), used below to define
  \(\overline C_k^{\rm tail}\) and \(b_k\).
- Required assumptions and discharge: the dependency proof and its accepted
  review discharge `assump:moment-class` and the generated localization radius.
  This step does not reopen those assumptions and does not consume the eventwise
  moment assertion.
- Conclusion used: \(C_k^{\rm rec}\) is explicit, finite, positive, and depends
  only on fixed \(k\).

### Direct arithmetic facts

- Source or name: ceiling and finite geometric-series identities; no external
  citation is used.
- Restated statements:
  - If \(x>1\) and \(J=\lceil\log_2 x\rceil\), then
    \(2^{J-1}<x\leq2^J\).
  - If \(0<q<1\), then for every integer \(n\geq1\),
    \(\sum_{r=0}^{n-1}q^r=(1-q^n)/(1-q)\leq(1-q)^{-1}\).
- Instantiated objects: \(x=H_*/h_0\), and respectively
  \(q=1/2\), \(q=2^{-(k-2)}\) when \(k>2\), and
  \(q=2^{-(2-k)}\) when \(1<k<2\).
- Required assumptions and discharge: Lemma~\(\ref{lem:step-003-scale-ordering}\)
  proves \(x>1\); in each geometric use the stated regime makes \(q\in(0,1)\).
- Conclusions used: exact endpoint ordering and finite prefix/suffix normalizer
  sums. The identities are also derived explicitly in the local proofs below.

### Local-result application register

| Result | Restated conclusion used later | Assumption discharge |
| ------ | ------------------------------- | -------------------- |
| Lemma~\(\ref{lem:step-003-scale-ordering}\) | Legal design constants, \(J\geq1\), \(H_*\leq H<2H_*\), and \(h_0<\sigma<h_{J-1}\). | `assump:parameter-domain` and the accepted explicit \(C_k^{\rm rec}\) constant; proved in `unit_001`. |
| Proposition~\(\ref{prop:step-003-group-law}\) | Prefix/suffix partition, positive active normalizers, exact group masses, and no division by an empty-group normalizer for every \(J\geq1\); the theorem design has \(m=2\). | Direct finite-sum algebra generally, then Assumption~\(\ref{assump:parameter-domain}\) and scale ordering for the theorem-regime clause; proved in `unit_002`. |
| Lemma~\(\ref{lem:step-003-fine-normalizer}\) | \(W_{\rm f}\leq2\), including the empty sum. | General dyadic prefix geometry; proved in `unit_003`. |
| Proposition~\(\ref{prop:step-003-coarse-normalizers}\) | The complete \(k>2\), \(k=2\), and \(1<k<2\) bounds for \(W_{\rm c}\). | Dyadic suffix geometry, ceiling upper bound, and \(\log(\sigma/\epsilon)\geq1\); proved in `unit_004`. |
| Lemma~\(\ref{lem:step-003-endpoint-calibration}\) | \(h_0=\epsilon/8\) and \(\overline C_k^{\rm tail}\sigma^k/H^{k-1}\leq\epsilon/8\). | Explicit definitions of \(b_k,H_*\) and \(H\geq H_*\); proved in `unit_005`. |

## Local Derivation

### unit_001: lemma

**Lemma (tail-calibrated dyadic design and ceiling ordering).**
\(\label{lem:step-003-scale-ordering}\)

Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted
\(C_k^{\rm rec}\) interface of
Lemma~\(\ref{lem:step-002-recentered-moment}\), define
\[
\overline C_k^{\rm tail}
:=\frac{11}{3}\left(\frac{8}{3}\right)^{k-1}C_k^{\rm rec},
\qquad
\gamma_k:=\frac18,
\]
\[
b_k:=\max\left\{4,
  \left(8\overline C_k^{\rm tail}\right)^{1/(k-1)}
\right\},
\qquad
c_k:=e^{-1}.
\]
For every \(0<\epsilon\leq c_k\sigma\), let \(h_0,H_*,J,h_j,H\)
be exactly the setting-defined scales. Then all three design constants are
legal, \(J\geq1\), and
\[
0<h_0<\sigma<\frac{H_*}{2}
\leq h_{J-1}=\frac H2
<H_*\leq H<2H_*.
\]
In particular, \(0\in\mathcal J_{\rm f}\),
\(J-1\in\mathcal J_{\rm c}\), and both groups are nonempty. These
conclusions remain valid at the largest permitted accuracy
\(\epsilon=c_k\sigma\).

**Proof / justification.** The accepted dependency gives
\(0<C_k^{\rm rec}<\infty\) as a function of fixed \(k\) only. Hence
\(\overline C_k^{\rm tail}\) is positive, finite, and \(k\)-only. Because
\(k-1>0\), the displayed choices satisfy
\[
0<\gamma_k<1,
\qquad b_k\geq4\geq1,
\qquad 0<c_k<1,
\qquad
b_k^{k-1}\geq8\overline C_k^{\rm tail}.
\]
Thus they meet every design-domain requirement in `setting.md`.

Put, only for this proof,
\[
t:=\frac{\sigma}{\epsilon}.
\]
Assumption~\(\ref{assump:parameter-domain}\) and \(c_k=e^{-1}\) imply
\(t\geq e\), including equality at the largest allowed \(\epsilon\). The
bottom scale therefore obeys
\[
h_0=\frac{\epsilon}{8}=\frac{\sigma}{8t}
\leq\frac{\sigma}{8e}<\sigma.
\]
Moreover,
\[
\frac{H_*}{h_0}
=\frac{b_k\sigma t^{1/(k-1)}}{\epsilon/8}
=8b_k t^{1+1/(k-1)}
=8b_k t^{k/(k-1)}>1.
\]
Consequently \(J=\lceil\log_2(H_*/h_0)\rceil\) is a positive integer.
Applying the ceiling relation to \(x=H_*/h_0\) gives
\[
2^{J-1}<\frac{H_*}{h_0}\leq2^J.
\]
After multiplying by \(h_0\), and recalling \(H=2^Jh_0\), this is
\[
\frac H2=h_{J-1}<H_*\leq H<2H_*.
\]
The middle lower bound follows separately from \(H\geq H_*\):
\[
h_{J-1}=\frac H2\geq\frac{H_*}{2}
=\frac{b_k}{2}\sigma t^{1/(k-1)}
\geq2\sigma e^{1/(k-1)}>\sigma.
\]
Together with \(h_0<\sigma\), these displays prove the full ordering and
show that the endpoint indices \(0\) and \(J-1\) lie in the claimed groups.
Every inequality used \(t\geq e\), so equality
\(\epsilon=c_k\sigma\) causes no endpoint or ceiling failure.
\(\square\)

### unit_002: proposition

**Proposition (group partition and empty-group-safe level law).**
\(\label{prop:step-003-group-law}\)

Let \(k>1\), \(\sigma>0\), \(h_0>0\), and \(J\geq1\), and set
\(h_j=2^jh_0\) for \(0\leq j\leq J\). With the setting's group, weight,
and probability definitions, the sampled indices \(\{0,\ldots,J-1\}\)
are the disjoint union of a fine prefix
\(\mathcal J_{\rm f}\) and a coarse suffix \(\mathcal J_{\rm c}\), with
the equality case \(h_j=\sigma\) assigned to the fine prefix. Every nonempty
group \(G\) has \(W_G>0\). If \(m\) is the number of nonempty groups and
\[
p_j=\frac1m\frac{w_j}{W_G}\qquad(j\in G),
\]
then
\[
\sum_{j\in G}p_j=\frac1m
\quad\text{for each nonempty }G,
\qquad
\sum_{j=0}^{J-1}p_j=1.
\]
For inequality statements, an empty group's normalizer may be extended by the
empty-sum convention \(W_G=0\); its probability formula is not evaluated. If
one group is empty, the other group receives all mass with \(m=1\). Both
groups cannot be empty because \(J\geq1\). If, in addition,
Assumption~\(\ref{assump:parameter-domain}\) holds and the constants and scales
are those of Lemma~\(\ref{lem:step-003-scale-ordering}\), then both groups are
nonempty, so \(m=2\) and each receives mass \(1/2\).

**Proof / justification.** The scales are strictly increasing because
\(h_{j+1}=2h_j\). Hence once \(h_j>\sigma\), every later sampled scale is
also larger than \(\sigma\), and every earlier scale is smaller than that
scale. Thus the indices satisfying \(h_j\leq\sigma\) form a prefix, while
those satisfying \(h_j>\sigma\) form the complementary suffix. The weak and
strict inequalities make the two sets disjoint and place an exact transition
\(h_j=\sigma\) in \(\mathcal J_{\rm f}\).

Every weight is strictly positive: on the fine group,
\(w_j=h_j/\sigma>0\), and on the coarse group,
\(w_j=(h_j/\sigma)^{2-k}>0\). A finite sum of at least one positive weight is
positive, so \(W_G>0\) for each nonempty group. Consequently the displayed
formula for \(p_j\) never divides by zero. Direct summation within such a
group gives
\[
\sum_{j\in G}p_j
=\frac1m\frac{\sum_{j\in G}w_j}{W_G}
=\frac1m.
\]
Summing this identity over the \(m\) nonempty groups gives total mass one.

If a group is empty, its defining sum contains no terms, so setting that sum
to zero is the usual empty-sum extension for bounds. The protocol definition
only applies \(w_j/W_G\) for \(j\in G\), so an empty group creates neither an
index nor a denominator. Since \(J\geq1\), the sampled index set is nonempty,
and at least one of the two partition sets is nonempty. Thus \(m\in\{1,2\}\),
and in the one-group case the preceding mass identity gives mass one to the
existing group. Finally,
Lemma~\(\ref{lem:step-003-scale-ordering}\) proves that index \(0\) is fine
and index \(J-1\) is coarse under the theorem choices, so there \(m=2\).
\(\square\)

### unit_003: lemma

**Lemma (uniform fine normalizer).**
\(\label{lem:step-003-fine-normalizer}\)

For every positive dyadic scale family covered by
Proposition~\(\ref{prop:step-003-group-law}\), the fine normalizer satisfies
\[
0\leq W_{\rm f}\leq2,
\]
where \(W_{\rm f}=0\) is the empty-sum value if
\(\mathcal J_{\rm f}=\varnothing\). If the group is nonempty, then in fact
\(W_{\rm f}<2\).

**Proof / justification.** The empty case is immediate. Otherwise let
\(j_{\rm f}:=\max\mathcal J_{\rm f}\). By the prefix property from
Proposition~\(\ref{prop:step-003-group-law}\),
\(\mathcal J_{\rm f}=\{0,\ldots,j_{\rm f}\}\). Reindexing backward from its
largest scale gives the explicit finite geometric sum
\[
\begin{aligned}
W_{\rm f}
&=\sum_{j=0}^{j_{\rm f}}\frac{h_j}{\sigma}
=\frac{h_{j_{\rm f}}}{\sigma}
  \sum_{r=0}^{j_{\rm f}}2^{-r}\\
&=\frac{h_{j_{\rm f}}}{\sigma}
  \frac{1-2^{-(j_{\rm f}+1)}}{1-1/2}
<2\frac{h_{j_{\rm f}}}{\sigma}
\leq2.
\end{aligned}
\]
The last inequality uses the defining fine condition
\(h_{j_{\rm f}}\leq\sigma\), including equality at the fine/coarse boundary.
No bound on the number of fine levels was used.
\(\square\)

### unit_004: proposition

**Proposition (three-regime coarse normalizers).**
\(\label{prop:step-003-coarse-normalizers}\)

With the setting's empty-group semantics, an empty coarse group has the
empty-sum value \(W_{\rm c}=0\), and no probability denominator for that
group is evaluated. Under Assumption~\(\ref{assump:parameter-domain}\),
Lemma~\(\ref{lem:step-003-scale-ordering}\), and
Proposition~\(\ref{prop:step-003-group-law}\), put
\(t=\sigma/\epsilon\geq e\). The theorem scales satisfy
\[
W_{\rm c}\leq
\begin{cases}
\displaystyle \frac{1}{1-2^{2-k}}, & k>2,\\[0.8em]
\displaystyle
\left(\log_2(2b_k)+\frac1{\log 2}\right)
\log t, & k=2,\\[0.8em]
\displaystyle
\frac{1}{1-2^{-(2-k)}}
\left(\frac{H}{2\sigma}\right)^{2-k}, & 1<k<2.
\end{cases}
\]
Here \(\log\) is natural, as in the setting. In the last regime this also
implies the two structural consequences
\[
W_{\rm c}
\leq\frac{1}{1-2^{-(2-k)}}
\left(\frac{H}{\sigma}\right)^{2-k}
<\frac{(2b_k)^{2-k}}{1-2^{-(2-k)}}
t^{(2-k)/(k-1)}.
\]
Thus the only nonconstant scale accumulation at \(k=2\) is the explicit
\(\log(\sigma/\epsilon)\) factor, while for \(1<k<2\) the exact structural
factor is \((H/\sigma)^{2-k}\).

**Proof / justification.** The empty case satisfies every displayed bound
because each right-hand side is positive. Suppose henceforth that the coarse
group is nonempty. By Proposition~\(\ref{prop:step-003-group-law}\), it is a
suffix. Write
\[
j_{\rm c}:=\min\mathcal J_{\rm c},
\qquad n_{\rm c}:=J-j_{\rm c}\geq1,
\]
so its indices are \(j_{\rm c},\ldots,J-1\).

If \(k>2\), let \(\beta=k-2>0\). Since
\(h_{j_{\rm c}}/\sigma>1\), the first coarse weight satisfies
\((h_{j_{\rm c}}/\sigma)^{-\beta}<1\). Successive weights have ratio
\(2^{-\beta}\in(0,1)\). Therefore the explicit decreasing geometric sum
obeys
\[
\begin{aligned}
W_{\rm c}
&=\left(\frac{h_{j_{\rm c}}}{\sigma}\right)^{-\beta}
  \sum_{r=0}^{n_{\rm c}-1}2^{-\beta r}\\
&<\sum_{r=0}^{\infty}2^{-\beta r}
=\frac1{1-2^{-\beta}}
=\frac1{1-2^{2-k}}.
\end{aligned}
\]
This is finite for each fixed \(k>2\) and contains no dependence on
\(J,H,\sigma\), or \(\epsilon\).

If \(k=2\), every coarse weight equals one, so
\(W_{\rm c}=n_{\rm c}\) exactly. The largest sampled coarse scale is
\(h_{J-1}=H/2\), and
\[
\frac{H}{2}=h_{J-1}
=2^{n_{\rm c}-1}h_{j_{\rm c}}
>2^{n_{\rm c}-1}\sigma.
\]
Thus \(n_{\rm c}<\log_2(H/\sigma)\). At \(k=2\), the ceiling upper bound
from Lemma~\(\ref{lem:step-003-scale-ordering}\) reads
\[
H<2H_*=2b_k\sigma t,
\]
and hence
\[
W_{\rm c}<\log_2(2b_k t)
=\log_2(2b_k)+\frac{\log t}{\log 2}.
\]
Since \(t\geq e\), \(\log t\geq1\), so the constant first term may be
dominated by its explicit multiple of \(\log t\):
\[
\log_2(2b_k)+\frac{\log t}{\log 2}
\leq
\left(\log_2(2b_k)+\frac1{\log 2}\right)\log t.
\]
This verifies the exact \(k=2\) logarithm even when
\(\epsilon=c_k\sigma\), where \(\log t=1\); no unquantified `+1` is
discarded.

Finally, let \(1<k<2\) and \(\alpha=2-k>0\). Successive coarse weights now
have ratio \(2^\alpha>1\). Reindexing backward from the largest sampled
coarse scale gives
\[
\begin{aligned}
W_{\rm c}
&=\left(\frac{h_{J-1}}{\sigma}\right)^\alpha
  \sum_{r=0}^{n_{\rm c}-1}2^{-\alpha r}\\
&\leq\left(\frac{H}{2\sigma}\right)^\alpha
  \sum_{r=0}^{\infty}2^{-\alpha r}
=\frac{(H/(2\sigma))^\alpha}{1-2^{-\alpha}}.
\end{aligned}
\]
Dropping only the factor \(2^{-\alpha}\leq1\) gives the stated
\((H/\sigma)^\alpha\) bound. The strict ceiling inequality
\(H<2b_k\sigma t^{1/(k-1)}\) then gives
\[
\left(\frac H\sigma\right)^{2-k}
<(2b_k)^{2-k}t^{(2-k)/(k-1)},
\]
which is the final displayed consequence. All geometric denominators are
positive in their stated open regimes. Their possible growth as \(k\to2\)
is permitted because \(k\) is fixed and hidden constants are only required to
be \(k\)-dependent.
\(\square\)

### unit_005: lemma

**Lemma (bias-calibrated endpoint scales).**
\(\label{lem:step-003-endpoint-calibration}\)

Under Assumption~\(\ref{assump:parameter-domain}\), the accepted
\(C_k^{\rm rec}\) interface of
Lemma~\(\ref{lem:step-002-recentered-moment}\), and
Lemma~\(\ref{lem:step-003-scale-ordering}\), the explicit design satisfies
\[
h_0=\frac{\epsilon}{8},
\qquad
\overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}
\leq\frac{\epsilon}{8}.
\]

**Proof / justification.** The first equality is the definition
\(h_0=\gamma_k\epsilon\) with \(\gamma_k=1/8\). For the top scale,
Lemma~\(\ref{lem:step-003-scale-ordering}\) gives \(H\geq H_*\), while
\(k-1>0\). Therefore
\[
H^{k-1}\geq H_*^{k-1}
=b_k^{k-1}\sigma^{k-1}
  \left(\frac{\sigma}{\epsilon}\right)
=b_k^{k-1}\frac{\sigma^k}{\epsilon}.
\]
It follows that
\[
\overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}
\leq\frac{\overline C_k^{\rm tail}}{b_k^{k-1}}\epsilon
\leq\frac\epsilon8,
\]
where the last inequality is exactly the design relation
\(b_k^{k-1}\geq8\overline C_k^{\rm tail}\) proved in
Lemma~\(\ref{lem:step-003-scale-ordering}\). This is only an endpoint-scale
certificate; it does not assume or prove any residual-bias statement.
\(\square\)

## Target-Step Assembly

Accepted Lemma~\(\ref{lem:step-002-recentered-moment}\) supplies the explicit
finite constant \(C_k^{\rm rec}=2^{k-1}(1+50^k)\). From that legal dependency
interface and Assumption~\(\ref{assump:parameter-domain}\),
Lemma~\(\ref{lem:step-003-scale-ordering}\) chooses
\[
\gamma_k=\frac18,
\quad
c_k=e^{-1},
\quad
b_k=\max\left\{4,
  (8\overline C_k^{\rm tail})^{1/(k-1)}
\right\},
\quad
\overline C_k^{\rm tail}
=\frac{11}{3}\left(\frac83\right)^{k-1}C_k^{\rm rec},
\]
and proves the exact ceiling relations \(H_*\leq H<2H_*\),
\(h_0<\sigma<h_{J-1}\), and \(J\geq1\), including at
\(\epsilon=c_k\sigma\).

Proposition~\(\ref{prop:step-003-group-law}\) then proves the complete group
interface. Under the theorem parameters both groups occur and receive mass
\(1/2\). In every stipulated auxiliary empty-group case, the empty sum is zero,
the absent group contributes no indices and creates no denominator, and the
remaining group receives mass one. Thus the exact level law is legal in all
group configurations named by the sketch row.

Lemma~\(\ref{lem:step-003-fine-normalizer}\) and
Proposition~\(\ref{prop:step-003-coarse-normalizers}\) give, without hidden
level-count terms,
\[
W_{\rm f}\leq2,
\qquad
W_{\rm c}\lesssim_k
\begin{cases}
1,&k>2,\\
\log(\sigma/\epsilon),&k=2,\\
(H/\sigma)^{2-k},&1<k<2,
\end{cases}
\]
where every implicit constant is explicitly displayed in
Proposition~\(\ref{prop:step-003-coarse-normalizers}\) and depends only on
fixed \(k\). The \(k=2\) proof retains the exact finite level count and uses
\(\log(\sigma/\epsilon)\geq1\) to handle the largest allowed epsilon.
Lemma~\(\ref{lem:step-003-endpoint-calibration}\) finally exports the two
endpoint scale inequalities needed by downstream residual consumers. These
named results jointly prove the exact binding `step_003` claim and export the
requested scale/normalizer certificate.

## Explicit Rate Audit

- Exposed variables: fixed \(k>1\), \(\sigma>0\),
  \(0<\epsilon\leq e^{-1}\sigma\),
  \(t=\sigma/\epsilon\), \(h_0,H_*,J,h_j,H\),
  \(W_{\rm f},W_{\rm c}\), and the exact level probabilities \(p_j\).
  The inherited parameters \(\lambda\) and \(\delta\) remain in their full
  setting domains but do not enter this deterministic certificate.
- Hidden constants may depend on: fixed \(k\) only. Explicit examples are
  \(b_k\), \((1-2^{2-k})^{-1}\) for \(k>2\), and
  \((1-2^{-(2-k)})^{-1}\) for \(1<k<2\).
- Hidden constants may not depend on: \(\lambda,\sigma,\epsilon,\delta,D,c\),
  any localization transcript, \(J,H\), or any sample count.
- Fixed quantities: \(k\) and the accepted dependency constant
  \(C_k^{\rm rec}\) are fixed before \((\lambda,\sigma,\epsilon,\delta)\)
  is instantiated. No asymptotic limit is used.
- Probability mode: deterministic and uniform over all laws and all protocol
  transcripts. No event is conditioned on and no probability conversion is
  performed.
- Horizon mode: deterministic finite scale family \(j=0,\ldots,J\); this step
  makes no stopping-time, all-time, or horizon-uniform claim.
- Norm mode: scalar positive scales and normalizers. The inherited theorem norm
  is absolute value on \(\mathbb R\), but no estimator-error norm is bounded in
  this step.
- Admissibility conditions and auxiliary tolerances:
  \(t=\sigma/\epsilon\geq e\), \(J=\lceil\log_2(H_*/h_0)\rceil\), and the
  explicit choices of \(\gamma_k,b_k,c_k\). There is no stochastic auxiliary
  tolerance.
- Term absorption or simplification inequalities:
  \[
  H_*\leq H<2H_*,
  \qquad
  \log_2(2b_k)+\frac{\log t}{\log 2}
  \leq\left(\log_2(2b_k)+\frac1{\log 2}\right)\log t,
  \]
  \[
  \left(\frac H\sigma\right)^{2-k}
  <(2b_k)^{2-k}t^{(2-k)/(k-1)}
  \quad(1<k<2),
  \qquad
  \overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}
  \leq\frac\epsilon8.
  \]
  Each simplification has its threshold \(t\geq e\) or regime displayed; no
  term is dropped by prose.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: the certificate supplies the
  exact \(W_{\rm f}\) and \(W_{\rm c}\) inputs to the fine/coarse variance
  steps, the structural \((H/\sigma)^{2-k}\) term for the
  \(1<k<2\) public-rate bridge, the retained \(k=2\) logarithm, and the
  bias-calibrated endpoint inequality. It does not itself choose sample counts
  or claim the final \(r_k\) bound.
- Baseline-reduction check, if applicable: no theorem-facing recovery claim is
  altered here. The scale design introduces no centered random object, so the
  exact zero-displacement identities reserved for later digit steps remain
  unchanged.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined expressions:
  - \(h_0,H_*,J,h_j,H,\mathcal J_{\rm f},\mathcal J_{\rm c},w_j,W_G,m,p_j\)
    retain exactly their definitions in `setting.md`.
  - The local empty-sum extension \(W_G=0\) for an empty group is used only to
    state inequalities uniformly. The setting's probability formula remains
    restricted to nonempty groups, so no \(0/0\) expression is introduced.
- Accepted dependency object:
  - \(C_k^{\rm rec}=2^{k-1}(1+50^k)\) is public-facing and inherited from the
    accepted `step_002` pair. Its eventwise moment assertion is not consumed in
    this deterministic step.
- Public-facing helper objects:
  - \(\gamma_k=1/8\), \(c_k=e^{-1}\), and
    \(b_k=\max\{4,(8\overline C_k^{\rm tail})^{1/(k-1)}\}\) are the requested
    design outputs, each explicitly defined from fixed \(k\) and the accepted
    \(k\)-only constant.
  - \(\overline C_k^{\rm tail}=(11/3)(8/3)^{k-1}C_k^{\rm rec}\) is
    public-facing because it records the exact downstream endpoint calibration;
    it is finite and \(k\)-only by the accepted dependency.
  - The scale ordering, empty-group-safe probability law,
    \(W_{\rm f}\leq2\), and the three displayed \(W_{\rm c}\) regimes are the
    minimal public-facing certificate exported to later proof steps.
- Proof-local objects:
  - \(t=\sigma/\epsilon\), the transition indices
    \(j_{\rm f},j_{\rm c}\), the coarse count \(n_{\rm c}\), and the regime
    exponents \(\alpha=2-k\), \(\beta=k-2\) are proof-local bookkeeping. They
    are explicit functions of setting quantities and are not required in the
    final theorem statement.
- Appendix-local objects: None.
- Constant provenance:
  - The factor \(50\) inside \(C_k^{\rm rec}\) is inherited from the accepted
    dependency. The factors \(11/3\), \(8/3\), and \(8\) in the endpoint
    calibration are explicitly prescribed by the accepted sketch's scale
    interface. The geometric denominators are proved by finite series in
    Proposition~\(\ref{prop:step-003-coarse-normalizers}\). No free bounded
    quantity or unspecified finite constant is introduced.
- Assumption provenance:
  - The only primitive input is `assump:parameter-domain`. The only accepted
    derived input is the deterministic value of \(C_k^{\rm rec}\). Group
    membership, normalizer bounds, and endpoint inequalities are proved in this
    step. No generated event, boundedness claim, local-validity condition, or
    conditional hypothesis is assumed.
- Boundary audit:
  - At \(\epsilon=c_k\sigma\), \(t=e\), so \(h_0<\sigma<h_{J-1}\) and
    \(\log t=1\); all group and \(k=2\) bounds remain valid.
  - At \(k=2\), the exponent \(2-k\) is treated exactly as zero, so
    \(W_{\rm c}\) is the finite coarse-level count. No limit from either side
    is used.
  - If a group is empty in an auxiliary instantiation, its sum is zero and the
    active group is normalized with \(m=1\). Under the theorem choices, both
    endpoint witnesses exist and \(m=2\).
- Diagnostic context boundary: `global_proof.md` was not read or used for this
  step.
