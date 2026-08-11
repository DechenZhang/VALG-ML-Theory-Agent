# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1

## Target Step Claim

- Intended claim: For \(r=\lvert x-m_0\rvert\), prove that every retained
  target or same-color non-target activation at \(s\geq1\) satisfies
  \(h_s\leq2r\), and hence
  \[
    \sum_{s\geq1:\,{\rm active}}h_s^k
      \leq C_{{\rm act},k}r^k,
  \]
  uniformly over all cells, branches, boundaries, and \(S\).
- Depends on: step_002.
- Assumptions used: Primitive assumptions `assump:parameter-domain` and
  `assump:precommitted-protocol`. Derived inputs are the exact child-padding
  and color geometry from step_002.
- Technical challenge: The target and alias cases have different distance
  mechanisms; mean cancellation cannot omit alias squares.
- Intended proof tool or cited result: Direct child-padding radius
  calculation, nearest same-color alias separation, and a dyadic geometric
  sum.
- Output target: All-ring activation ledger with zero charge at \(r=0\) and
  on the supported-in-\(J_{0,j_0}\) higher-level baseline.
- Rate objective: None.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- `assump:parameter-domain`: \(k>1\), \(h_0=a_k\sigma>0\),
  \(h_s=2^sh_0\), and \(S\geq1\) is finite. These facts supply the positive
  dyadic scales and make the all-level sum a finite sum. No moment,
  distributional, accuracy, or confidence conclusion is used.
- `assump:precommitted-protocol`: the color and branch variables and the
  complete ring query family exist before any response. This assumption is
  used only to identify the decoder-retained collection as the already
  precommitted rings with color \(\kappa_s=j_s\bmod4\) and branch \(b_s\).
  The distance and summation bounds below are deterministic and do not use
  independence or a success event.

### Derived invariants supplied by accepted dependencies

- The accepted dependency pair
  `perspective_3/idea_1/proof_steps/step_002/proof.md` (Unit attempt 1,
  SHA-256
  `4d6547f9389cc8a94f6ca170ca7c6059e61ee14d0232b6441d1ce333ea2cce0c`)
  and its `review.md` with status `ACCEPTED` supplies, for every real decoder
  value \(c\), the exact ancestor identity
  \(j_{s-1}=2j_s+b_s\), both half-open child-padding formulas, nesting of
  the path paddings, strict membership \(m_0\in P_{s,j_s}\), and
  pairwise disjointness of all level-\(s\) paddings of one color. It also
  supplies exact inactivity on \(J_{0,j_0}\) of the target and every
  same-color non-target ring retained at a higher level.

### Local conditional hypotheses

- Lemma~\(\ref{lem:step-004-target-distance}\) assumes only in its local
  antecedent that \(x\) activates the target ring at one fixed level.
- Lemma~\(\ref{lem:step-004-alias-distance}\) assumes only in its local
  antecedent that \(x\) activates one fixed non-target same-color ring.
  Proposition~\(\ref{prop:step-004-activation-ledger}\) exhausts these
  two cases pointwise, so neither activation membership is promoted to a
  theorem-facing assumption.

## Local Lemma Map

Atomic step = no. The target child-exclusion mechanism, the alias-spacing
mechanism, and the cross-level geometric accumulation are independent
non-atomic obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted ancestor and child-padding conclusions of Lemma~\(\ref{lem:step-002-ancestor}\), if \(1\leq s\leq S\) and \(x\in{\cal R}_{s,j_s,b_s}\), then \(\lvert x-m_0\rvert>h_s/2\), hence \(h_s<2\lvert x-m_0\rvert\), for both child branches and every half-open boundary. | Proves the target-ring scale charge using exclusion by the selected child padding. |
| unit_002 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted ancestor and four-color conclusions of Lemmas~\(\ref{lem:step-002-ancestor}\) and \(\ref{lem:step-002-color}\), if \(1\leq s\leq S\), \(q\in\mathbb Z\setminus\{0\}\), and \(x\in{\cal R}_{s,j_s+4q,b_s}\), then \(\lvert x-m_0\rvert>2h_s\), hence \(h_s<\lvert x-m_0\rvert/2\). | Covers every same-color non-target activation separately from target mean cancellation. |
| unit_003 | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:precommitted-protocol}\), the accepted step_002 geometry, and Lemmas~\(\ref{lem:step-004-target-distance}\) and \(\ref{lem:step-004-alias-distance}\), every retained activation satisfies \(h_s\leq2r\), and for every \(c,x\) and finite \(S\), \(\sum_{s=1}^S h_s^k{\bf1}\{x\in\Gamma_s(c)\}\leq C_{{\rm act},k}r^k\) with \(C_{{\rm act},k}=2^k/(1-2^{-k})\); the sum is exactly zero when \(r=0\) or \(x\in J_{0,j_0}\). | Exports the uniform all-ring activation ledger and both exact zero-charge baselines. |

## Cited Result Applications

### Accepted dependency: ancestor and child-padding geometry

**Source and current-notation statement.** The accepted
Lemma~\(\ref{lem:step-002-ancestor}\) states that under
Assumption~\(\ref{assump:parameter-domain}\), for every \(c\in\mathbb R\)
and \(1\leq s\leq S\),
\[
  j_{s-1}=2j_s+b_s,\qquad b_s\in\{0,1\},
  \qquad J_{s-1,j_{s-1}}\subseteq J_{s,j_s}.
\]
Its exact endpoint calculation gives, for every integer \(j\),
\[
\begin{aligned}
  J_{s,j}&=[(j-1)h_s,(j+2)h_s),\\
  J_{s-1,2j}&=[(j-\tfrac12)h_s,(j+1)h_s),\\
  J_{s-1,2j+1}&=[jh_s,(j+\tfrac32)h_s).
\end{aligned}
\]
Translating the same accepted Euclidean-remainder calculation into the
present proof-local symbol \(a_s:=j_0-2^sj_s\) gives
\(0\leq a_s\leq2^s-1\), and therefore places
\[
  m_0=\left(j_s+\frac{a_s+1/2}{2^s}\right)h_s
\]
strictly inside \(P_{s,j_s}\). These statements include negative indices,
both values of \(b_s\), and the setting's half-open convention.

**Objects, assumptions, and conclusion used.** The present proof uses the
same setting-defined \(c,j_s,b_s,m_0,h_s,J_{s,j}\). Positivity and finite
\(S\) are discharged by `assump:parameter-domain`; the accepted step_002
review certifies all endpoint and negative-index cases. Unit_001 uses the
child-padding formulas and the Euclidean remainder to prove a radius-
\(h_s/2\) exclusion zone. Unit_002 uses strict membership of \(m_0\) in the
path cell to measure the distance to an alias padding. No localization
success, moment bound, or probability conclusion is imported.

### Accepted dependency: four-color support and baseline geometry

**Source and current-notation statement.** The accepted
Lemma~\(\ref{lem:step-002-color}\) states that, for fixed \(s\) and color,
the paddings \(J_{s,j}\) are pairwise disjoint as \(j\) ranges over that
color, and hence so are their branch-matched rings. For every \(s\geq1\),
it also states that each \(x\in J_{0,j_0}\) activates neither the target
ring nor any non-target ring
\({\cal R}_{s,j,b_s}\) with \(j\equiv j_s\pmod4\).

**Objects, assumptions, and conclusion used.** Since every index with the
retained color has the unique form \(j_s+4q\), \(q\in\mathbb Z\), this
result gives at most one retained active ring at each level and makes the
target/alias split exhaustive. Its baseline conclusion is used in
Proposition~\(\ref{prop:step-004-activation-ledger}\) to export exact zero
higher-level charge on \(J_{0,j_0}\). The result is deterministic under
`assump:parameter-domain`; `assump:precommitted-protocol` identifies these
branch-matched, same-color rings as the decoder-retained members of the
precommitted family.

### Local result applications

- Lemma~\(\ref{lem:step-004-target-distance}\) is proved in unit_001 and
  is used by Proposition~\(\ref{prop:step-004-activation-ledger}\) for the
  unique \(q=0\) target case.
- Lemma~\(\ref{lem:step-004-alias-distance}\) is proved in unit_002 and
  is used by Proposition~\(\ref{prop:step-004-activation-ledger}\) for all
  \(q\neq0\) alias cases.
- Proposition~\(\ref{prop:step-004-activation-ledger}\) is proved in
  unit_003 by combining the two distance mechanisms with the accepted
  same-color uniqueness and a finite dyadic sum. It is the sole public
  output consumed by the later all-alias second-moment step.

No paper theorem, probabilistic inequality, or external standard result is
used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Target-child exclusion forces residual distance).**
\(\label{lem:step-004-target-distance}\)
Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted
ancestor and child-padding conclusions of
Lemma~\(\ref{lem:step-002-ancestor}\), let \(c,x\in\mathbb R\) and
\(1\leq s\leq S\). If the target ring is active at \(x\), namely
\[
  x\in {\cal R}_{s,j_s,b_s}
    =J_{s,j_s}\setminus J_{s-1,j_{s-1}},
\]
then
\[
  |x-m_0|>\frac{h_s}{2},
  \qquad h_s<2|x-m_0|.
\]
This conclusion holds for \(b_s=0\) and \(b_s=1\), for negative and
positive path indices, and at every half-open child-padding endpoint.

**Proof / justification.** Define from the setting's floor convention the
proof-local Euclidean remainder
\[
  a_s:=j_0-2^sj_s
      =j_0-2^s\left\lfloor\frac{j_0}{2^s}\right\rfloor.
\]
The floor inequalities give \(a_s\in\{0,\ldots,2^s-1\}\), including for
negative \(j_0\). Since \(h_s=2^sh_0\),
\[
  m_0=(j_0+\tfrac12)h_0
      =(j_s+\theta_s)h_s,
  \qquad
  \theta_s:=\frac{a_s+1/2}{2^s}.
\]
Moreover,
\[
\begin{aligned}
  b_s
  &=j_{s-1}-2j_s\\
  &=\left\lfloor\frac{2^sj_s+a_s}{2^{s-1}}\right\rfloor-2j_s
    =\left\lfloor\frac{a_s}{2^{s-1}}\right\rfloor.
\end{aligned}
\]
Thus the two branch cases determine the exact range of \(\theta_s\).

If \(b_s=0\), then \(0\leq a_s\leq2^{s-1}-1\), so
\[
  \frac1{2^{s+1}}\leq\theta_s
  \leq\frac12-\frac1{2^{s+1}}.
\]
The accepted endpoint formula gives
\[
  J_{s-1,j_{s-1}}
  =J_{s-1,2j_s}
  =[(j_s-\tfrac12)h_s,(j_s+1)h_s).
\]
The displayed range yields
\[
\begin{aligned}
  m_0-\frac{h_s}{2}
    &=(j_s-\tfrac12+\theta_s)h_s
      >(j_s-\tfrac12)h_s,\\
  m_0+\frac{h_s}{2}
    &=(j_s+\tfrac12+\theta_s)h_s
      <(j_s+1)h_s.
\end{aligned}
\]
Hence the closed interval
\([m_0-h_s/2,m_0+h_s/2]\) lies strictly inside the selected child padding.

If \(b_s=1\), then \(2^{s-1}\leq a_s\leq2^s-1\), so
\[
  \frac12+\frac1{2^{s+1}}\leq\theta_s
  \leq1-\frac1{2^{s+1}}.
\]
Now the accepted endpoint formula gives
\[
  J_{s-1,j_{s-1}}
  =J_{s-1,2j_s+1}
  =[j_sh_s,(j_s+\tfrac32)h_s),
\]
and
\[
\begin{aligned}
  m_0-\frac{h_s}{2}
    &=(j_s-\tfrac12+\theta_s)h_s>j_sh_s,\\
  m_0+\frac{h_s}{2}
    &=(j_s+\tfrac12+\theta_s)h_s
      <(j_s+\tfrac32)h_s.
\end{aligned}
\]
The same closed radius-\(h_s/2\) interval is therefore strictly inside the
selected child padding in this branch as well.

In either branch, target activation means that \(x\) is outside this child
padding. It cannot belong to the closed interval just shown to be inside
the padding, and hence \(|x-m_0|>h_s/2\). This also handles the asymmetric
half-open endpoints: an included child left endpoint is subtracted, while
an excluded child right endpoint can enter the ring only beyond the strict
radius-\(h_s/2\) interval. Multiplication by two proves the stated scale
bound. \(\square\)

### unit_002: lemma

**Lemma (Every same-color alias is separated from the path center).**
\(\label{lem:step-004-alias-distance}\)
Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted
ancestor and four-color conclusions of
Lemmas~\(\ref{lem:step-002-ancestor}\) and
\(\ref{lem:step-002-color}\), let \(c,x\in\mathbb R\),
\(1\leq s\leq S\), and \(q\in\mathbb Z\setminus\{0\}\). If the
same-color non-target ring with index \(j=j_s+4q\) is active at \(x\),
namely
\[
  x\in{\cal R}_{s,j_s+4q,b_s},
\]
then
\[
  |x-m_0|>2h_s,
  \qquad h_s<\frac{|x-m_0|}{2}.
\]
The conclusion is uniform in the retained branch \(b_s\), all positive and
negative indices, and all half-open padding boundaries.

**Proof / justification.** The accepted ancestor geometry places \(m_0\)
strictly in the path cell, so
\[
  j_sh_s<m_0<(j_s+1)h_s.
\]
Every branch ring is a subset of its padding, and the accepted endpoint
formula gives
\[
  {\cal R}_{s,j_s+4q,b_s}
  \subseteq J_{s,j_s+4q}
  =[(j_s+4q-1)h_s,(j_s+4q+2)h_s).
\]

If \(q\geq1\), then activation implies
\[
  x\geq(j_s+4q-1)h_s\geq(j_s+3)h_s.
\]
Together with \(m_0<(j_s+1)h_s\), this gives
\[
  x-m_0>2h_s.
\]
The strict inequality remains true when \(q=1\) and \(x\) is the included
left padding endpoint because \(m_0\) is strictly below the right endpoint
of the path cell.

If \(q\leq-1\), then activation and the excluded right padding endpoint
give
\[
  x<(j_s+4q+2)h_s\leq(j_s-2)h_s.
\]
Since \(m_0>j_sh_s\), it follows that
\[
  m_0-x>2h_s.
\]
This is again strict for the nearest alias \(q=-1\), now because the alias
padding is right-open and \(m_0\) is strictly inside the path cell. The two
integer cases exhaust every nonzero \(q\); the argument depends only on
ordered endpoints, so it is unchanged for negative \(j_s\) and for either
branch. Dividing the strict distance inequality by two proves the second
claim. \(\square\)

### unit_003: proposition

**Proposition (Uniform all-ring activation ledger).**
\(\label{prop:step-004-activation-ledger}\)
Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:precommitted-protocol}\), the accepted child-padding and
four-color conclusions of Lemmas~\(\ref{lem:step-002-ancestor}\) and
\(\ref{lem:step-002-color}\), and
Lemmas~\(\ref{lem:step-004-target-distance}\) and
\(\ref{lem:step-004-alias-distance}\), define for \(1\leq s\leq S\)
the retained activation support
\[
  \Gamma_s(c)
    :=\bigcup_{q\in\mathbb Z}{\cal R}_{s,j_s+4q,b_s}.
\]
Then, for every \(c,x\in\mathbb R\), with \(r:=|x-m_0|\), every active
level satisfies
\[
  x\in\Gamma_s(c)\quad\Longrightarrow\quad h_s\leq2r,
\]
and
\[
  \sum_{s=1}^S h_s^k{\bf1}\{x\in\Gamma_s(c)\}
  \leq C_{{\rm act},k}r^k,
  \qquad
  C_{{\rm act},k}:=\frac{2^k}{1-2^{-k}}<\infty.
\]
At each active level there is at most one active ring, and the displayed
sum therefore charges every retained target and same-color non-target
activation. The bound holds uniformly over every path cell, retained
branch, half-open boundary, and finite \(S\). Moreover, its left-hand side
is exactly zero if \(r=0\), and it is exactly zero for every
\(x\in J_{0,j_0}\).

**Proof / justification.** Every integer with residue
\(j_s\pmod4\) is uniquely \(j_s+4q\) for \(q\in\mathbb Z\). The accepted
same-color padding disjointness implies that at a fixed \(s\), at most one
ring in the union defining \(\Gamma_s(c)\) contains \(x\). If the unique
index has \(q=0\),
Lemma~\(\ref{lem:step-004-target-distance}\) gives \(h_s<2r\). If it has
\(q\neq0\), Lemma~\(\ref{lem:step-004-alias-distance}\) gives the stronger
\(h_s<r/2\). Thus every active target or alias satisfies the claimed weak
bound \(h_s\leq2r\), and no retained ring has been omitted.

It remains to sum over levels. The preceding implication gives the
pointwise comparison
\[
\begin{aligned}
  \sum_{s=1}^S h_s^k{\bf1}\{x\in\Gamma_s(c)\}
  &\leq \sum_{\substack{1\leq s\leq S\\h_s\leq2r}}h_s^k.
\end{aligned}
\]
If the index set on the right is empty, the desired bound is immediate.
Otherwise, since \(S\) is finite, let \(t\) be its largest element. The
dyadic identity \(h_s=2^{s-t}h_t\) gives
\[
\begin{aligned}
  \sum_{\substack{1\leq s\leq S\\h_s\leq2r}}h_s^k
  &=\sum_{s=1}^t h_s^k
    =h_t^k\sum_{u=0}^{t-1}2^{-ku}\\
  &\leq\frac{h_t^k}{1-2^{-k}}
    \leq\frac{(2r)^k}{1-2^{-k}}
    =C_{{\rm act},k}r^k.
\end{aligned}
\]
Here \(1-2^{-k}>0\) because \(k>1\), and the explicit constant depends on
no cell, branch, boundary, level count, decoder value, or sample point.

If \(r=0\), positivity of every \(h_s\) makes the set
\(\{s:h_s\leq2r\}\) empty, so every retained higher-level activation
indicator and the ledger are exactly zero. For the supported-in-
\(J_{0,j_0}\) baseline, fix \(x\in J_{0,j_0}\). Accepted path nesting puts
\(x\in J_{s-1,j_{s-1}}\), so the target ring
\(J_{s,j_s}\setminus J_{s-1,j_{s-1}}\) is inactive. Nesting also puts
\(x\in J_{s,j_s}\), while every \(q\neq0\) alias padding is disjoint from
\(J_{s,j_s}\); hence no alias ring can be active. This holds for each
\(1\leq s\leq S\), with exact set membership at all half-open endpoints.
Consequently the complete higher-level sum is zero for every point of
\(J_{0,j_0}\), and therefore pathwise zero for any law supported there.
\(\square\)

## Target-Step Assembly

For any fixed level \(s\geq1\), every ring retained by the decoder has
index \(j_s+4q\) and branch \(b_s\). Accepted same-color disjointness makes
its active index unique. In the target case \(q=0\),
Lemma~\(\ref{lem:step-004-target-distance}\) proves the scale bound by
showing that the selected child padding contains the entire closed
radius-\(h_s/2\) neighborhood of \(m_0\). In every non-target case
\(q\neq0\), Lemma~\(\ref{lem:step-004-alias-distance}\) uses the separate
four-color spacing mechanism and proves the stronger distance
\(r>2h_s\). This explicit split covers alias squares even though their later
signed means cancel.

Proposition~\(\ref{prop:step-004-activation-ledger}\) combines the two
exhaustive cases to prove \(h_s\leq2r\) at every active level, then sums all
eligible dyadic scales before any expectation is taken. Its explicit
constant
\[
  C_{{\rm act},k}=\frac{2^k}{1-2^{-k}}
\]
depends only on \(k\) and is uniform in all cells, branches, boundaries,
decoder outputs, sample points, and finite \(S\). The same proposition
establishes exact zero charge at \(r=0\) and, using accepted nesting plus
color separation, at every point of the supported-in-\(J_{0,j_0}\)
higher-level baseline. These named results prove every clause of the
binding sketch row.

## Explicit Rate Audit

None. This deterministic step has no sample, confidence, probability,
horizon, or norm rate objective. The only quantitative constant is the
explicit ledger constant \(C_{{\rm act},k}=2^k/(1-2^{-k})\), which depends
only on the fixed \(k\) and on none of
\(c,x,S,h_0\), the path, the cells, the branch, or the boundary location.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** The residual radius \(r=|x-m_0|\) is the
  target-row expression formed directly from setting objects. The retained
  activation support
  \(
    \Gamma_s(c)=\bigcup_{q\in\mathbb Z}
    {\cal R}_{s,j_s+4q,b_s}
  \)
  is a public-facing abbreviation for the exact color-\(\kappa_s\),
  branch-\(b_s\) ring family consumed by the all-alias variance step. The
  public-facing constant
  \(C_{{\rm act},k}=2^k/(1-2^{-k})\) is proved finite by
  Proposition~\(\ref{prop:step-004-activation-ledger}\) and is the only
  new constant exported downstream.
- **Proof-local objects.** The Euclidean remainder \(a_s\) and fractional
  coordinate \(\theta_s=(a_s+1/2)/2^s\) are derived in
  Lemma~\(\ref{lem:step-004-target-distance}\) directly from the setting's
  floor convention; they are not imported under a new meaning from the
  dependency and are not exported. The alias offset \(q\), eligible-scale
  maximum \(t\), and reversed geometric-sum index \(u\) are proof-local.
  No appendix-local helper object is introduced.
- **Constant provenance.** The radii \(h_s/2\) and \(2h_s\) are proved by
  the named target-distance and alias-distance lemmas from exact dyadic
  endpoints. The geometric-series denominator \(1-2^{-k}\) follows from
  the setting's dyadic ratio and is positive under
  `assump:parameter-domain`. There is no free bounded quantity, threshold,
  tolerance, or hidden dependence.
- **Assumption provenance.** Positive dyadic scales, fixed \(k>1\), and
  finite \(S\) are primitive. Ancestor identities, child-padding endpoints,
  path nesting, strict path-cell membership, same-color disjointness, and
  supported-in-\(J_0\) inactivity are accepted derived conclusions from
  step_002. Ring activation appears only as a local antecedent in the first
  two lemmas; the proposition proves an unconditional pointwise ledger for
  every \(c,x\). No selected-cell event, localization event, moment bound,
  cancellation claim, variance bound, support assumption, or probabilistic
  independence is assumed.
- **Boundary and scope.** The Euclidean remainder handles negative indices.
  The target proof treats both child branches, the alias proof treats
  \(q\geq1\) and \(q\leq-1\), and strict endpoint inequalities cover the
  included-left/excluded-right convention. The sum is finite over the
  setting's \(1\leq s\leq S\); the bound is nevertheless independent of
  \(S\), and no limiting interchange is used.
- **Baseline reduction.** At \(r=0\), positivity alone forces exact zero
  higher-level charge. On \(J_{0,j_0}\), accepted child nesting excludes the
  target rings and accepted color separation excludes every alias, so the
  higher-level ledger is identically zero rather than bounded by a
  conservative remainder.
- **Diagnostic boundary.** The optional `global_proof.md` was not read or
  used. No diagnostic statement serves as evidence, a cited result, an
  assumption source, or authority to alter the target claim.
