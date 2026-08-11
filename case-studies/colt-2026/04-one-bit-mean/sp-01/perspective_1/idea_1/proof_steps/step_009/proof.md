# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Bound the fine variance by \(C\sigma^2\) uniformly.
- Depends on: `step_003`, `step_007`, `step_008`.
- Assumptions used: derived normalizer and pathwise activity.
- Technical challenge: Avoid an extra fine-level count.
- Intended proof tool or cited result: Substitute the exact \(p_j\), then sum pathwise.
- Output target: Fine variance.
- Rate objective: \(O(\sigma^2)\), with no dependence on the number of fine levels.
- Sketch-row review status: `PENDING`; the separate `proof_sketch_review.md`
  acceptance gate records `ACCEPTED` for sketch attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-domain`: only the setting domains \(\sigma>0\), the
    finite dyadic scale family, and the exact level law are used, through the
    accepted `step_003` interface. The proof does not use the value of
    \(\lambda\), the confidence parameter \(\delta\), or any accuracy
    inequality beyond what makes the accepted level law legal.
  - `assump:iid-independent-randomness`: used only through the accepted
    `step_008` conclusion that conditioning on the localization center leaves
    the refinement tuple with its original product law and gives the exact
    conditional raw second moment.
- Accepted dependency artifacts:
  - `proof_steps/step_003/proof.md`, SHA-256
    `3004fae27e0cb92d391b296ae21afa8e38f50daaebda5c8b9988d59be1fa2ddf`,
    and `proof_steps/step_003/review.md`, SHA-256
    `b28d7b3b77efd48df96d29937b8b1029295c8f2accf2982898574ea4129690de`.
    The review records `ACCEPTED` for sketch attempt 1, step `step_003`, unit
    attempt 1, and the displayed proof hash.
  - `proof_steps/step_007/proof.md`, SHA-256
    `ae20b081db5273b80dd726d07fb34b0f24db20bebd007c973bea2b4a79276498`,
    and `proof_steps/step_007/review.md`, SHA-256
    `6bba1a0d83b472a6d4dfea84753e84dd9bf12264d1c2c0695071db6f0d3f263d`.
    The review records `ACCEPTED` for sketch attempt 1, step `step_007`, unit
    attempt 1, and the displayed proof hash.
  - `proof_steps/step_008/proof.md`, SHA-256
    `13363eff6ae9349ab6ce6e8d8ad4a7ff0b7e380671405b20f1944f45214a66d5`,
    and `proof_steps/step_008/review.md`, SHA-256
    `7a52062f02688f0eb30319a5fd1c944642705d58df96914c99f94b727c28a8c1`.
    The review records `ACCEPTED` for sketch attempt 1, step `step_008`, unit
    attempt 1, and the displayed proof hash.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\(\ref{prop:step-003-group-law}\) gives the exact
    empty-group-safe level law. For a nonempty fine group,
    \(w_j=h_j/\sigma\), \(W_{\rm f}=\sum_{j\in\mathcal J_{\rm f}}w_j>0\),
    and \(p_j=m^{-1}w_j/W_{\rm f}\), where \(m\in\{1,2\}\). Under the
    theorem design both groups are nonempty and \(m=2\).
  - Lemma~\(\ref{lem:step-003-fine-normalizer}\) gives
    \(0\leq W_{\rm f}\leq2\), with the empty sum equal to zero and the
    nonempty sum strictly below two.
  - Proposition~\(\ref{prop:step-007-fine-ledger}\) gives, deterministically
    for every \(t,x\in\mathbb R\),
    \[
    \sum_{j\in\mathcal J_{\rm f}}
    |D_j^t(x)-D_j^t(t)|
    \leq16\min\{|x-t|,\sigma\}.
    \]
  - Proposition~\(\ref{prop:step-008-raw-square}\) gives the exact factor-48
    conditional raw square and proves all terms finite before conditioning is
    reduced from the localization sigma-field to the center.
- Local conditional hypotheses: None. A deterministic center \(t\) below is
  a pointwise kernel argument, not an assumed localization event or generated
  invariant.

The proof does not use `assump:moment-class`, localization success, a
recentered moment, top support, a tail estimate, or any coarse-variance or
concentration conclusion. It therefore applies uniformly to every
setting-admissible \(D\) and every realized center, on and off the localization
event.

## Local Lemma Map

Atomic step = no. Exact probability substitution, count-free pathwise
accumulation, and the variance-versus-raw-second-moment bridge are separate
auditable obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:iid-independent-randomness}\), and the accepted exact group-law and raw-square dependencies, the fine raw-square contribution is zero for an empty fine group and otherwise equals \(48mW_{\rm f}\sigma\,\mathbb E_D\sum_{j\in\mathcal J_{\rm f}}|D_j^t(X)-D_j^t(t)|\), for every deterministic center \(t\), with the same identity conditional on the generated center. | Audits every \(m,W_{\rm f},w_j,p_j,h_j\) substitution and the expectation/sum order while retaining the exact factor 48. |
| `unit_002` | proposition | Under Lemma~\(\ref{lem:step-009-fine-square-reduction}\), Lemma~\(\ref{lem:step-003-fine-normalizer}\), and Proposition~\(\ref{prop:step-007-fine-ledger}\), the fine raw-square contribution is at most \(768mW_{\rm f}\sigma^2\leq3072\sigma^2\), uniformly in \(t,D,J\); it is zero when the fine group or fine activity is empty. | Gives the requested count-free \(O(\sigma^2)\) certificate with a universal displayed constant and no logarithm. |
| `unit_003` | proposition | Under Proposition~\(\ref{prop:step-009-count-free-fine-bound}\) and the accepted raw-square dependency, the conditional variance of the fine-restricted pseudo-observation is at most \(3072\sigma^2\), and the full conditional variance is bounded by this fine term plus the untouched exact coarse raw-square term. | Converts the raw-square estimate into the precise variance interface without claiming an invalid additive variance decomposition or importing a coarse bound. |

## Cited Result Applications

No external paper result is used. The following accepted dependency and direct
algebraic results are restated in current notation.

### Accepted scale and fine-normalizer certificate

- Source or name: accepted Proposition~\(\ref{prop:step-003-group-law}\) and
  Lemma~\(\ref{lem:step-003-fine-normalizer}\) from `step_003`.
- Restated statement: the sampled indices are partitioned into nonempty groups
  counted by \(m\in\{1,2\}\). If \(\mathcal J_{\rm f}\neq\varnothing\),
  then
  \[
  w_j=\frac{h_j}{\sigma}>0,
  \qquad
  W_{\rm f}=\sum_{\ell\in\mathcal J_{\rm f}}\frac{h_\ell}{\sigma}
  \in(0,2),
  \qquad
  p_j=\frac1m\frac{w_j}{W_{\rm f}}>0.
  \]
  The fine group has total level mass \(1/m\). Under the theorem choices both
  groups occur, so \(m=2\). If the fine group is empty, it supplies no index,
  no level probability, and no denominator; its inequality normalizer is the
  empty sum \(W_{\rm f}=0\).
- Instantiated objects: the exact setting quantities
  \(m,w_j,W_{\rm f},p_j,h_j,\sigma\).
- Required assumptions and discharge: `assump:parameter-domain` and the
  accepted `step_003` dependency discharge scale positivity, finiteness,
  normalization, the theorem-regime group witnesses, and empty-group
  legality.
- Conclusion used: for each actual fine index,
  \(h_j/p_j=mW_{\rm f}\sigma\), and universally
  \(m\leq2\), \(W_{\rm f}\leq2\).

### Accepted count-free fine activation ledger

- Source or name: accepted
  Proposition~\(\ref{prop:step-007-fine-ledger}\) from `step_007`.
- Restated statement: for every deterministic \(t,x\in\mathbb R\), every
  finite setting scale family, and the equality convention
  \(h_j=\sigma\Rightarrow j\in\mathcal J_{\rm f}\),
  \[
  \sum_{j\in\mathcal J_{\rm f}}
  |D_j^t(x)-D_j^t(t)|
  \leq16\min\{|x-t|,\sigma\}.
  \]
  Empty fine groups and \(x=t\) give zero. The constant is independent of the
  number of fine levels.
- Instantiated objects: the exact selected digit differences appearing in the
  accepted raw-square identity.
- Required assumptions and discharge: the accepted `step_007` pair derives
  the result deterministically from earlier stable-cell and digit-range
  interfaces. This step adds no support or localization hypothesis.
- Conclusion used: the entire fine sum is bounded pathwise before expectation
  is taken.

### Accepted exact conditional raw square

- Source or name: accepted
  Proposition~\(\ref{prop:step-008-raw-square}\) from `step_008`.
- Restated statement: under
  Assumption~\(\ref{assump:iid-independent-randomness}\), for every refinement
  index \(i\),
  \[
  \mathbb E[Z_i(c)^2\mid c]
  =48\sum_{j=0}^{J-1}\frac{h_j}{p_j}
  \mathbb E_D|D_j^c(X)-D_j^c(c)|
  \quad\text{almost surely}.
  \]
  For a deterministic center \(t\), the same product-kernel calculation holds
  before substituting \(t=c\). Every \(p_j\) is positive, \(J\) is finite,
  \(|D_j^t(X)-D_j^t(t)|<3h_j\), and all displayed expectations are finite.
  The coefficient is exactly
  \[
  p_j\frac{256}{p_j^2}\frac1{16}(3h_j)
  =\frac{48h_j}{p_j}.
  \]
- Instantiated objects: the same \(Z_i(c)\), selected digits, scale law, and
  conditional center as in the setting.
- Required assumptions and discharge: the accepted `step_008` pair discharges
  refinement/localization independence, conditional measurability,
  square-integrability, the selected-pair probability \(1/16\), and all
  finite expectation operations. Localization success is not required.
- Conclusion used: the fine indices form an exact nonnegative sub-sum of the
  raw conditional second moment.

### Direct conditional-variance fact

- Source or name: definition of conditional variance; no external citation.
- Restated statement: for every conditionally square-integrable real random
  variable \(Y\) and sigma-field \(\mathscr G\),
  \[
  \operatorname{Var}(Y\mid\mathscr G)
  =\mathbb E[Y^2\mid\mathscr G]
   -\bigl(\mathbb E[Y\mid\mathscr G]\bigr)^2
  \leq\mathbb E[Y^2\mid\mathscr G]
  \quad\text{almost surely}.
  \]
- Instantiated objects: \(Y=Z_{i,\rm f}(c)\) and \(Y=Z_i(c)\), with
  \(\mathscr G=\sigma(c)\).
- Required assumptions and discharge: conditional square-integrability is an
  accepted `step_008` conclusion; restriction to fine levels preserves it.
- Conclusion used: a raw-square upper bound is a valid variance upper bound,
  but fine and coarse variances are not asserted to add.

### Local-result application register

| Result | Restated conclusion used later | Assumption discharge |
| ------ | ------------------------------- | -------------------- |
| Lemma~\(\ref{lem:step-009-fine-square-reduction}\) | The exact fine raw-square contribution is \(48mW_{\rm f}\sigma\) times the expectation of the complete pathwise fine digit sum, with empty groups handled separately. | Accepted exact level law and factor-48 raw square; proved in `unit_001`. |
| Proposition~\(\ref{prop:step-009-count-free-fine-bound}\) | The exact fine contribution is at most \(768mW_{\rm f}\sigma^2\leq3072\sigma^2\), uniformly. | Accepted fine ledger and normalizer bound; proved in `unit_002`. |
| Proposition~\(\ref{prop:step-009-variance-interface}\) | The fine-restricted conditional variance is at most \(3072\sigma^2\), and the full variance is at most this plus the unaltered coarse raw-square sum. | Conditional variance identity and accepted raw-square decomposition; proved in `unit_003`. |

## Local Derivation

### unit_001: lemma

**Lemma (Exact reduction of the fine conditional square).**
\(\label{lem:step-009-fine-square-reduction}\)

Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:iid-independent-randomness}\), the accepted exact group law in
Proposition~\(\ref{prop:step-003-group-law}\), and the accepted raw-square
identity in Proposition~\(\ref{prop:step-008-raw-square}\), define, for a
deterministic center \(t\in\mathbb R\), the appendix-local fine contribution

\[
\mathcal V_{\rm f}(t)
:=48\sum_{j\in\mathcal J_{\rm f}}
\frac{h_j}{p_j}\,
\mathbb E_D|D_j^t(X)-D_j^t(t)|,
\]

where an empty fine sum is zero. If the fine group is nonempty, then

\[
\boxed{
\mathcal V_{\rm f}(t)
=48mW_{\rm f}\sigma\,
\mathbb E_D\!\left[
\sum_{j\in\mathcal J_{\rm f}}
|D_j^t(X)-D_j^t(t)|
\right].
}
\tag{9.1}
\]

For the generated center \(c\), the accepted conditional raw square splits
almost surely as

\[
\mathbb E[Z_i(c)^2\mid c]
=\mathcal V_{\rm f}(c)
+48\sum_{j\in\mathcal J_{\rm c}}
\frac{h_j}{p_j}\,
\mathbb E_D|D_j^c(X)-D_j^c(c)|.
\tag{9.2}
\]

No normalizer is evaluated for an empty group.

**Proof / justification.** If \(\mathcal J_{\rm f}=\varnothing\), the
definition of \(\mathcal V_{\rm f}(t)\) is an empty sum and hence equals zero.
There is then no fine index \(j\), no fine probability formula to evaluate,
and no division by \(W_{\rm f}=0\). This proves the empty-group clause.

Suppose \(\mathcal J_{\rm f}\neq\varnothing\). The accepted group law gives
\(m\in\{1,2\}\), \(W_{\rm f}>0\), and, for every fine index,

\[
w_j=\frac{h_j}{\sigma},
\qquad
p_j=\frac1m\frac{w_j}{W_{\rm f}}
=\frac1m\frac{h_j/\sigma}{W_{\rm f}}
=\frac{h_j}{m\sigma W_{\rm f}}.
\tag{9.3}
\]

All divisions are legal because \(h_j>0\), \(\sigma>0\),
\(W_{\rm f}>0\), and \(m\geq1\). Taking the reciprocal in (9.3) and
multiplying by the same positive \(h_j\) gives the exact, level-independent
identity

\[
p_j^{-1}=\frac{m\sigma W_{\rm f}}{h_j},
\qquad
\frac{h_j}{p_j}=mW_{\rm f}\sigma.
\tag{9.4}
\]

In particular, if \(h_j=\sigma\), the setting assigns the level to the fine
group, \(w_j=1\), and (9.3)--(9.4) remain unchanged.

Substitution of (9.4), with no inequality, into the exact factor-48 fine sum
gives

\[
\mathcal V_{\rm f}(t)
=48mW_{\rm f}\sigma
\sum_{j\in\mathcal J_{\rm f}}
\mathbb E_D|D_j^t(X)-D_j^t(t)|.
\tag{9.5}
\]

The level set is finite. Moreover, the accepted `step_008` integrability
audit gives \(|D_j^t(X)-D_j^t(t)|<3h_j\) for every term. Finite linearity of
expectation therefore yields the exact order exchange

\[
\sum_{j\in\mathcal J_{\rm f}}
\mathbb E_D|D_j^t(X)-D_j^t(t)|
=\mathbb E_D\!\left[
\sum_{j\in\mathcal J_{\rm f}}
|D_j^t(X)-D_j^t(t)|
\right],
\tag{9.6}
\]

with no infinite-series, limit, or conditional-expectation interchange.
Combining (9.5) and (9.6) proves (9.1).

Finally, Proposition~\(\ref{prop:step-008-raw-square}\) gives the exact full
conditional identity for the generated center. Partitioning its finite level
sum into the disjoint fine and coarse index sets yields (9.2). The first
sub-sum is exactly \(\mathcal V_{\rm f}(c)\) by definition; nothing is
bounded, subtracted, or imported about the coarse sub-sum. \(\square\)

### unit_002: proposition

**Proposition (Universal count-free fine-square bound).**
\(\label{prop:step-009-count-free-fine-bound}\)

Under Lemma~\(\ref{lem:step-009-fine-square-reduction}\), the accepted
fine-normalizer bound in
Lemma~\(\ref{lem:step-003-fine-normalizer}\), and the accepted pathwise
fine ledger in Proposition~\(\ref{prop:step-007-fine-ledger}\), for every
deterministic center \(t\in\mathbb R\), every setting-admissible law \(D\),
and every finite setting scale family,

\[
\boxed{
\mathcal V_{\rm f}(t)
\leq768mW_{\rm f}\sigma^2
\leq3072\sigma^2.
}
\tag{9.7}
\]

The same bound holds almost surely at the generated center \(t=c\). The
constant \(3072=48\cdot16\cdot2\cdot2\) is universal: it has no dependence
on \(k,\lambda,\sigma,\epsilon,\delta,D,t,J,H\), or the number of fine
levels. If the fine group is empty, or if all fine digits are inactive
\(D\)-almost surely, then \(\mathcal V_{\rm f}(t)=0\).

**Proof / justification.** The empty-fine case was proved in
Lemma~\(\ref{lem:step-009-fine-square-reduction}\), so suppose the fine group
is nonempty. The accepted pathwise ledger applies before any expectation:

\[
\sum_{j\in\mathcal J_{\rm f}}
|D_j^t(x)-D_j^t(t)|
\leq16\min\{|x-t|,\sigma\}
\qquad\text{for every }x\in\mathbb R.
\tag{9.8}
\]

All quantities in (9.8) are nonnegative and integrable by the finite bounded
digit interface. Taking \(X\sim D\), then using only the pointwise scalar
inequality \(\min\{|X-t|,\sigma\}\leq\sigma\), gives

\[
\begin{aligned}
\mathbb E_D\!\left[
\sum_{j\in\mathcal J_{\rm f}}
|D_j^t(X)-D_j^t(t)|
\right]
&\leq16\,\mathbb E_D\min\{|X-t|,\sigma\}\\
&\leq16\sigma.
\end{aligned}
\tag{9.9}
\]

No moment of \(X-t\) is used. In particular, neither localization nor the
recentered \(k\)-moment is needed to pass from the first to the second line.
Substituting (9.9) into the exact reduction (9.1) gives

\[
\mathcal V_{\rm f}(t)
\leq48mW_{\rm f}\sigma(16\sigma)
=768mW_{\rm f}\sigma^2.
\tag{9.10}
\]

The accepted level law gives \(m\leq2\), and the accepted geometric
normalizer calculation gives \(W_{\rm f}\leq2\), independently of the
cardinality of \(\mathcal J_{\rm f}\). Therefore

\[
768mW_{\rm f}\sigma^2
\leq768\cdot2\cdot2\,\sigma^2
=3072\sigma^2,
\]

which proves (9.7). In the auxiliary fine-only configuration, \(m=1\) and the
same argument gives the sharper bound \(1536\sigma^2\). Under the theorem
design, both groups occur, \(m=2\), and the universal displayed bound applies.

The entire calculation is valid for every deterministic \(t\); the accepted
conditional kernel then permits evaluation at the generated \(c\), without
conditioning on localization success. If every fine digit difference is zero
\(D\)-almost surely, the exact nonnegative sum defining
\(\mathcal V_{\rm f}(t)\) is zero. In particular, when \(D\) is concentrated
at \(t\), the accepted exact zero-displacement identity makes every fine
integrand zero. \(\square\)

### unit_003: proposition

**Proposition (Fine conditional-variance interface).**
\(\label{prop:step-009-variance-interface}\)

Under Proposition~\(\ref{prop:step-009-count-free-fine-bound}\), the accepted
conditional kernel and raw square in
Proposition~\(\ref{prop:step-008-raw-square}\), and
Assumption~\(\ref{assump:iid-independent-randomness}\), define only for this
proof

\[
Z_{i,{\rm f}}(t)
:=Z_i(t)\mathbf1\{L_i\in\mathcal J_{\rm f}\}.
\]

Then, for the generated center \(c\),

\[
\mathbb E[Z_{i,{\rm f}}(c)^2\mid c]
=\mathcal V_{\rm f}(c),
\qquad
\boxed{
\operatorname{Var}(Z_{i,{\rm f}}(c)\mid c)
\leq3072\sigma^2
}
\quad\text{almost surely}.
\tag{9.11}
\]

For the full pseudo-observation, the precise assembly-facing consequence is

\[
\boxed{
\operatorname{Var}(Z_i(c)\mid c)
\leq3072\sigma^2
+48\sum_{j\in\mathcal J_{\rm c}}
\frac{h_j}{p_j}\,
\mathbb E_D|D_j^c(X)-D_j^c(c)|
}
\quad\text{almost surely}.
\tag{9.12}
\]

The coarse term in (9.12) is the untouched exact raw-square sub-sum, not a
coarse estimate.

**Proof / justification.** The accepted `step_008` disjoint-level square
calculation remains valid after multiplication by
\(\mathbf1\{L_i\in\mathcal J_{\rm f}\}\): it simply retains the fine level
indices. Hence

\[
\mathbb E[Z_{i,{\rm f}}(c)^2\mid c]
=48\sum_{j\in\mathcal J_{\rm f}}
\frac{h_j}{p_j}\,
\mathbb E_D|D_j^c(X)-D_j^c(c)|
=\mathcal V_{\rm f}(c).
\]

The accepted square-integrability of \(Z_i(c)\) also gives conditional
square-integrability of its fine restriction. Therefore, directly from the
definition of conditional variance,

\[
\operatorname{Var}(Z_{i,{\rm f}}(c)\mid c)
=\mathbb E[Z_{i,{\rm f}}(c)^2\mid c]
-\bigl(\mathbb E[Z_{i,{\rm f}}(c)\mid c]\bigr)^2
\leq\mathcal V_{\rm f}(c)
\leq3072\sigma^2.
\]

For the full variable, the same variance identity and nonnegativity of a
conditional square give

\[
\operatorname{Var}(Z_i(c)\mid c)
\leq\mathbb E[Z_i(c)^2\mid c].
\]

Insert the exact fine/coarse raw-square split (9.2) and then apply (9.7) only
to the fine term. This proves (9.12). We do not assert that the full
conditional variance equals the sum of the conditional variances of its fine-
and coarse-level restrictions: although those level events are disjoint
pathwise, their conditional means need not vanish, so such an additive
variance identity is not available. The raw-second-moment upper bound is the
valid interface.

If \(X_i=c\), the accepted exact baseline gives \(Z_i(c)=0\) pathwise for
every level and seed, and hence also \(Z_{i,{\rm f}}(c)=0\). If the fine group
is empty, \(Z_{i,{\rm f}}(c)=0\) identically and (9.11) reads \(0\leq0\). If
the coarse group is empty, the last sum in (9.12) is absent, so the same
\(3072\sigma^2\) bound applies to the full conditional variance. \(\square\)

## Target-Step Assembly

Accepted Proposition~\(\ref{prop:step-008-raw-square}\) supplies the exact
factor-48 conditional raw square under the independent refinement kernel.
Lemma~\(\ref{lem:step-009-fine-square-reduction}\) combines it with the
accepted exact fine law from
Proposition~\(\ref{prop:step-003-group-law}\) and explicitly checks

\[
w_j=\frac{h_j}{\sigma},
\qquad
p_j=\frac{h_j}{m\sigma W_{\rm f}},
\qquad
\frac{h_j}{p_j}=mW_{\rm f}\sigma.
\]

It then moves the finite level sum inside expectation exactly, before any
inequality is applied. Proposition~\(\ref{prop:step-009-count-free-fine-bound}\)
uses the accepted pathwise result

\[
\sum_{j\in\mathcal J_{\rm f}}|D_j^c(X)-D_j^c(c)|
\leq16\min\{|X-c|,\sigma\}
\leq16\sigma
\]

and the accepted bounds \(m\leq2\), \(W_{\rm f}\leq2\) to obtain

\[
48mW_{\rm f}\sigma\,
\mathbb E_D\sum_{j\in\mathcal J_{\rm f}}
|D_j^c(X)-D_j^c(c)|
\leq3072\sigma^2.
\]

Thus arbitrarily many fine scales are summed pathwise and never counted.
Proposition~\(\ref{prop:step-009-variance-interface}\) finally applies the
conditional variance definition: the fine-restricted conditional variance is
at most \(3072\sigma^2\), while the same universal amount is the fine
contribution to the valid full-variance raw-second-moment bound. The coarse
sub-sum is retained exactly for its legal later producer; no coarse or future
concentration conclusion is imported.

These named results prove the exact binding claim with the explicit universal
choice \(C=3072\). The statement is simultaneous over all deterministic
centers and all setting-admissible laws, almost sure when evaluated at the
generated center, uniform over every finite \(J\), valid at \(h_j=\sigma\),
and empty-group safe.

## Explicit Rate Audit

- Exposed variables: \(\sigma>0\); the deterministic or generated center
  \(t\) or \(c\); the law \(D\); the finite scale family
  \(h_0,\ldots,h_J\); \(J\); \(\mathcal J_{\rm f}\); and the exact level-law
  objects \(m,w_j,W_{\rm f},p_j\). The inherited parameters
  \(k,\lambda,\epsilon,\delta,H\) remain in the setting but disappear from
  the final fine bound.
- Hidden constants may depend on: None. The certificate is the displayed
  universal constant \(3072\).
- Hidden constants may not depend on: \(k,\lambda,\sigma,\epsilon,\delta,D,c\),
  a localization transcript, \(J,H\), the number of fine levels, or the
  refinement index \(i\).
- Fixed quantities: protocol parameters, \(D\), and one refinement index are
  fixed while the one-sample conditional moment is taken. The result is
  uniform in their allowed values; no asymptotic limit is used.
- Probability mode: the ledger and its bound are deterministic and pathwise;
  the raw square and variance conclusions hold almost surely conditional on
  the generated center. They hold on and off the localization event and are
  neither an unconditional PAC statement nor a high-probability event.
- Horizon mode: one refinement observation in a deterministic fixed-horizon
  protocol, with a finite level sum. The constant is uniform over every finite
  \(J\), but no stopping-time or all-time claim is made.
- Norm mode: scalar absolute value for digit differences and ordinary real
  conditional variance for \(Z_i(c)\).
- Admissibility conditions and auxiliary tolerances: \(\sigma>0\), finite
  \(J\geq1\), the exact positive level law on every nonempty group, and the
  accepted conditional product kernel. There is no auxiliary tolerance,
  moment threshold, localization radius, or confidence parameter.
- Term absorption or simplification inequalities:
  \[
  \frac{h_j}{p_j}=mW_{\rm f}\sigma,
  \qquad
  \mathbb E_D\sum_{j\in\mathcal J_{\rm f}}|D_j^t(X)-D_j^t(t)|
  \leq16\mathbb E_D\min\{|X-t|,\sigma\}
  \leq16\sigma,
  \]
  \[
  48\cdot16\cdot mW_{\rm f}\sigma^2
  \leq48\cdot16\cdot2\cdot2\,\sigma^2
  =3072\sigma^2.
  \]
  No term is absorbed by prose. In particular, no factor depending on
  \(J\) or \(\log(\sigma/\epsilon)\) appears.
- Probability conversion: the accepted `step_008` kernel first proves the
  deterministic-center identity conditional on the full localization
  sigma-field and then conditions only on \(c\). This step uses that interface
  and the exact inequality
  \(\operatorname{Var}(Y\mid c)\leq\mathbb E[Y^2\mid c]\); it performs no
  event union, confidence split, or mode upgrade.
- Contribution to any Rate Specialization Bridge: this step supplies the
  universal \(3072\sigma^2\) fine component for the later full variance and
  block-size certificates. It proves no coarse rate, sample allocation,
  confidence amplification, or final public sample-complexity statement.
- Baseline-reduction check: at \(X_i=c\), every centered bit and
  \(Z_{i,{\rm f}}(c)\) vanish pathwise. If \(D=\delta_c\), then
  \(\mathcal V_{\rm f}(c)=0\) and the fine conditional variance is exactly
  zero, not merely \(O(\sigma^2)\). More generally, zero fine activity
  \(D\)-almost surely makes the exact fine contribution zero.

## Blockers

None.

## Notation And Assumption Notes

- **Setting-defined objects:** \(h_j,J,\mathcal J_{\rm f},\mathcal J_{\rm c},
  w_j,W_{\rm f},m,p_j,D_j^t,Z_i(t)\) retain their setting meanings, with the
  deterministic-center extension \(Z_i(t)\) already checked in accepted
  `step_008`. Equality \(h_j=\sigma\) is assigned to the fine group exactly as
  in the setting.
- **Appendix-local objects:**
  - \(\mathcal V_{\rm f}(t)\) is an appendix-local abbreviation for the exact
    factor-48 fine sub-sum of the accepted raw conditional second moment. It is
    reused across all three units, and every dependence is visible in its
    definition.
  - \(D_j^t(x)-D_j^t(t)\) is generally written in full. No new digit-difference
    object is exported.
- **Proof-local objects:** \(t\) is a deterministic placeholder for the
  realized center, and
  \(Z_{i,{\rm f}}(t)=Z_i(t)\mathbf1\{L_i\in\mathcal J_{\rm f}\}\) is used only
  to state the literal fine-restricted variance. Neither is a theorem-facing
  assumption or final-theorem object.
- **Public-facing interface:** the minimal exported conclusion is the named
  fine certificate
  \[
  48\sum_{j\in\mathcal J_{\rm f}}
  \frac{h_j}{p_j}\mathbb E_D|D_j^c(X)-D_j^c(c)|
  \leq3072\sigma^2,
  \]
  together with its valid conditional-variance interpretation in
  Proposition~\(\ref{prop:step-009-variance-interface}\). No helper dictionary
  is exported to the final theorem.
- **Constant provenance:** \(48\) is inherited exactly from the accepted raw
  square; \(16\) is inherited from the accepted count-free fine ledger;
  \(m\leq2\) follows from the two possible nonempty groups; and
  \(W_{\rm f}\leq2\) is the accepted finite geometric sum. Their product is
  the proved universal constant \(3072\). No unspecified \(C\), hidden
  dependence, or free bounded quantity remains.
- **Assumption provenance:** the exact level law and normalizer are accepted
  derived deterministic outputs of `step_003`; the pathwise activity ledger
  is an accepted derived deterministic output of `step_007`; and the
  conditional law, square-integrability, and factor-48 raw square are accepted
  derived outputs of `step_008` under
  `assump:iid-independent-randomness`. The only new claims, (9.1), (9.7), and
  (9.11)--(9.12), are proved here. No generated event or local conditional
  hypothesis is assumed.
- **Moment and localization audit:** the sole distributional operation after
  the accepted raw-square identity is
  \(\mathbb E_D\min\{|X-t|,\sigma\}\leq\sigma\). Thus
  `assump:moment-class`, the localization event, a localization radius, and a
  recentered moment are unnecessary. Uniformity extends to all values of the
  realized center, not only localized ones.
- **Empty-group audit:** if the fine group is empty, its sum and fine-restricted
  variable are zero and no \(W_{\rm f}\) or \(p_j\) formula is evaluated. If
  the coarse group is empty, \(m=1\) and the fine bound sharpens to
  \(1536\sigma^2\). Under the theorem scales, accepted `step_003` gives both
  groups and \(m=2\).
- **Boundary and long-range audit:** a level with \(h_j=\sigma\) has \(w_j=1\)
  and is included in every fine formula. As \(\epsilon\) decreases, the number
  of fine levels may grow arbitrarily, but both \(W_{\rm f}\leq2\) and the
  pathwise fine ledger are cardinality-free. Neither \(H\) nor a top-scale
  restriction appears.
- **Zero-activity audit:** at \(x=t\), every accepted centered digit is exactly
  zero. A path with no active fine digit has zero fine sum; if this occurs
  \(D\)-almost surely, the exact fine raw-square contribution and fine
  conditional variance are zero.
- **Expectation and conditioning audit:** all level sums are finite, every
  digit difference is bounded by its accepted finite scale envelope, and all
  \(p_j\) used are positive. Hence (9.6) is finite linearity, not an exchange
  involving a limit. The conditional law and passage from the localization
  sigma-field to \(c\) were proved in accepted `step_008`; this step does not
  condition on the response or on localization success.
- **Variance audit:** the fine certificate controls a raw-second-moment
  sub-sum. It bounds the literal variance of the fine-restricted variable and
  enters the full variance through
  \(\operatorname{Var}(Z_i\mid c)\leq\mathbb E[Z_i^2\mid c]\). No unsupported
  additive decomposition of conditional variances is used.
- **Scope and dependence audit:** the bound is exact conditional-on-center,
  one-observation, fixed-finite-horizon, and scalar. The constant is uniform in
  \(c,D,J\) and all source parameters, and there is no hidden
  \(\log(\sigma/\epsilon)\).
- **Diagnostic context boundary:** the optional `global_proof.md` and
  `global_proof_review.md` pair was not read or used.
