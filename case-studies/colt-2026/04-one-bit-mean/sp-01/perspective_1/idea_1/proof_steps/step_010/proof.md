# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove coarse variance (C_k\sigma^2),
  (C\sigma^2\log(\sigma/\epsilon)), or
  (C_k\sigma^kH^{2-k}).
- Depends on: `step_002`, `step_003`, `step_007`, `step_008`.
- Assumptions used: `assump:moment-class`; derived recentered moment,
  normalizers, and activity.
- Technical challenge: Rare tails without an extra logarithm.
- Intended proof tool or cited result: Exact factor-(48) raw square,
  exact coarse (p_j) substitution, weighted pathwise sum, and recentered
  moment.
- Output target: Full three-regime coarse variance certificate.
- Rate objective: Exact (k>2), (k=2), and (1<k<2) regimes.
- Sketch-row review status: `PENDING`; the separate
  `proof_sketch_review.md` accepts sketch attempt 1 and is the controlling
  sketch-level gate.

Throughout, \(\mu=\mu(D)\), and \(\mathbb E_D\) denotes expectation of a
fresh refinement draw \(X\sim D\). All logarithms without a subscript are
natural.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:moment-class`: \(D\in\mathcal D(k,\lambda,\sigma)\), so
    \(\mathbb E_D|X-\mu|^k\leq\sigma^k\). No support, symmetry, density,
    exact-moment, or additional tail condition is used.
- Accepted dependency artifacts:
  - `proof_steps/step_002/proof.md`, SHA-256
    `f22f51f16d14638bd26f5f83662c33620f142a3b3d1bd167cbb32b982d509c58`,
    together with its `ACCEPTED` review, SHA-256
    `a549919aa08482df95acaf2b6551b14f1da4e0ae2c8301f30a06a654062229e2`.
  - `proof_steps/step_003/proof.md`, SHA-256
    `3004fae27e0cb92d391b296ae21afa8e38f50daaebda5c8b9988d59be1fa2ddf`,
    together with its `ACCEPTED` review, SHA-256
    `b28d7b3b77efd48df96d29937b8b1029295c8f2accf2982898574ea4129690de`.
  - `proof_steps/step_007/proof.md`, SHA-256
    `ae20b081db5273b80dd726d07fb34b0f24db20bebd007c973bea2b4a79276498`,
    together with its `ACCEPTED` review, SHA-256
    `6bba1a0d83b472a6d4dfea84753e84dd9bf12264d1c2c0695071db6f0d3f263d`.
  - `proof_steps/step_008/proof.md`, SHA-256
    `13363eff6ae9349ab6ce6e8d8ad4a7ff0b7e380671405b20f1944f45214a66d5`,
    together with its `ACCEPTED` review, SHA-256
    `7a52062f02688f0eb30319a5fd1c944642705d58df96914c99f94b727c28a8c1`.
- Derived invariants supplied by accepted dependencies:
  - From `step_002`, for every localization transcript in
    \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\),
    \[
    \mathbb E_D|X-c|^k\leq C_k^{\rm rec}\sigma^k,
    \qquad C_k^{\rm rec}=2^{k-1}(1+50^k).
    \]
  - From `step_003`, the exact group law and all three accepted bounds on
    \(W_{\rm c}\), including the empty-group convention and the fact that
    the theorem design has both groups nonempty and hence \(m=2\).
  - From `step_007`, for every deterministic \(t,x\in\mathbb R\),
    \[
    \sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}
       |D_j^t(x)-D_j^t(t)|
    \leq C_k^{\rm act}|x-t|^k,
    \qquad
    C_k^{\rm act}=\frac{3(8/3)^k}{1-2^{-k}}.
    \]
  - From `step_008`, conditional on the independent localization output,
    the refinement draw retains law \(D\), every inverse level probability
    is legal, and the exact raw conditional square is
    \[
    \mathbb E[Z_i(c)^2\mid c]
    =48\sum_{j=0}^{J-1}\frac{h_j}{p_j}
       \mathbb E_D|D_j^c(X)-D_j^c(c)|.
    \]
- Local conditional hypotheses: None. The localized-center restriction used
  below is the accepted generated event from `step_002`, not a new assumption.

For deterministic \(t,x\), define the appendix-local abbreviation

\[
\Delta_j^t(x):=D_j^t(x)-D_j^t(t).
\]

Let \(\mathbb E_t\) and \(\operatorname{Var}_t\) denote expectation and
variance under the setting-defined independent refinement product kernel with
the decoder parameter fixed at the deterministic value \(t\). Accepted
Lemma~\(\ref{lem:step-008-refinement-kernel}\) proves that evaluating this
kernel at the generated value \(t=c\) gives a version of the ordinary
conditional law given \(c\).

For a refinement index \(i\), define its appendix-local coarse component

\[
Z_{i,{\rm c}}(t):=Z_i(t)\mathbf 1\{L_i\in\mathcal J_{\rm c}\}.
\]

When \(\mathcal J_{\rm c}\neq\varnothing\), define the exact coarse
raw-square summand

\[
S_{\rm c}(t)
:=48\sum_{j\in\mathcal J_{\rm c}}\frac{h_j}{p_j}
       \mathbb E_D|\Delta_j^t(X)|,
\]

and set \(S_{\rm c}(t)=0\) when the coarse group is empty. This definition
never evaluates a probability denominator for an empty group.

## Local Lemma Map

Atomic step = no. The exact raw-square/variance distinction, moment closure,
and each of the three mutually exclusive normalizer regimes are independent
audit obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under accepted Proposition~\(\ref{prop:step-008-raw-square}\) and Proposition~\(\ref{prop:step-003-group-law}\), for every deterministic center \(t\), \(\mathbb E_t[Z_{i,{\rm c}}(t)^2]=S_{\rm c}(t)\), \(\operatorname{Var}_t(Z_{i,{\rm c}}(t))\leq S_{\rm c}(t)\), and a nonempty coarse group obeys the exact substitution \(S_{\rm c}(t)=48mW_{\rm c}\sigma^{2-k}\mathbb E_D\sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}|\Delta_j^t(X)|\). | Separates conditional variance from raw square and audits every \(m,W_{\rm c},w_j,p_j,h_j\) factor. |
| `unit_002` | proposition | Under Assumption~\(\ref{assump:moment-class}\), accepted Lemma~\(\ref{lem:step-002-recentered-moment}\), accepted Proposition~\(\ref{prop:step-007-coarse-ledger}\), and Lemma~\(\ref{lem:step-010-exact-coarse-square}\), if \(|t-\mu|\leq50\sigma\), then \(S_{\rm c}(t)\leq A_kW_{\rm c}\sigma^2\), where \(A_k=96C_k^{\rm rec}C_k^{\rm act}\); an empty coarse group has both sides equal to zero before this extension. | Applies activity pointwise before expectation and closes rare tails with the actual-center moment. |
| `unit_003` | lemma | Under Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) and accepted Proposition~\(\ref{prop:step-003-coarse-normalizers}\), if \(k>2\), then \(S_{\rm c}(t)\leq A_k(1-2^{2-k})^{-1}\sigma^2\) for every localized \(t\). | Proves the fixed-\(k>2\) constant regime. |
| `unit_004` | lemma | Under Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) and accepted Proposition~\(\ref{prop:step-003-coarse-normalizers}\), if \(k=2\), then \(S_{\rm c}(t)\leq C_2^{\rm c}\sigma^2\log(\sigma/\epsilon)\) with an explicit numerical \(C_2^{\rm c}\), and the displayed logarithm is the only level count. | Proves the exact critical regime without a one-sided limit or a second logarithm. |
| `unit_005` | lemma | Under Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) and accepted Proposition~\(\ref{prop:step-003-coarse-normalizers}\), if \(1<k<2\), then \(S_{\rm c}(t)\leq C_{k,<}^{\rm c}\sigma^kH^{2-k}\) for every localized \(t\), with an explicit finite fixed-\(k\) constant. | Proves the subquadratic structural \(H\)-regime. |
| `unit_006` | proposition | Under Assumption~\(\ref{assump:moment-class}\), Lemma~\(\ref{lem:step-010-exact-coarse-square}\), Proposition~\(\ref{prop:step-010-coarse-moment-closure}\), and Lemmas~\(\ref{lem:step-010-superquadratic}\), \(\ref{lem:step-010-critical}\), and \(\ref{lem:step-010-subquadratic}\), whose bases are the four accepted dependencies, on \(\mathcal E_{\rm loc}\) the actual coarse component and exact coarse raw-square summand obey the required three-regime certificate, including empty-group and exact zero-activity reductions. | Packages the minimal public-facing output consumed downstream. |

## Cited Result Applications

No external paper theorem is used in this step. Every mathematical input is a
current accepted dependency or a direct identity proved below.

### Accepted dependency: actual-center recentered moment

- Source or name: accepted
  Lemma~\(\ref{lem:step-002-recentered-moment}\) from `step_002`.
- Restated statement in current notation: under
  Assumption~\(\ref{assump:moment-class}\), for every localization outcome
  satisfying \(|t-\mu|\leq50\sigma\),
  \[
  \mathbb E_D|X-t|^k\leq C_k^{\rm rec}\sigma^k,
  \qquad C_k^{\rm rec}=2^{k-1}(1+50^k).
  \]
- Instantiated objects: the same deterministic value \(t\) used by the
  decoder-selected digits, a fresh refinement draw \(X\sim D\), and the
  setting scale \(\sigma\).
- Assumption discharge: the primitive central moment is exactly
  `assump:moment-class`; the radius is the accepted generated localization
  output. The accepted review verifies that the moment is about the actual
  decoder center, not a surrogate.
- Conclusion used: the final expectation in
  Proposition~\(\ref{prop:step-010-coarse-moment-closure}\).

### Accepted dependency: group law and coarse normalizers

- Source or name: accepted
  Proposition~\(\ref{prop:step-003-group-law}\) and
  Proposition~\(\ref{prop:step-003-coarse-normalizers}\) from `step_003`.
- Restated exact level law: if the coarse group is nonempty, then
  \[
  w_j=\left(\frac{h_j}{\sigma}\right)^{2-k},
  \qquad
  W_{\rm c}=\sum_{\ell\in\mathcal J_{\rm c}}w_\ell>0,
  \qquad
  p_j=\frac1m\frac{w_j}{W_{\rm c}}>0.
  \]
  Every nonempty group has mass \(1/m\). Under the theorem design both groups
  are nonempty and \(m=2\); in auxiliary empty-group configurations
  \(m\in\{1,2\}\), and no empty normalizer is evaluated.
- Restated three-regime bounds, with \(t_\epsilon=\sigma/\epsilon\geq e\):
  \[
  W_{\rm c}\leq\frac1{1-2^{2-k}}
  \quad(k>2),
  \]
  \[
  W_{\rm c}\leq
  \left(\log_2(2b_2)+\frac1{\log2}\right)
  \log t_\epsilon
  \quad(k=2),
  \]
  and
  \[
  W_{\rm c}\leq
  \frac1{1-2^{-(2-k)}}
  \left(\frac{H}{2\sigma}\right)^{2-k}
  \quad(1<k<2).
  \]
- Assumption discharge: `step_003` derives these statements from the accepted
  deterministic design and parameter domain, including \(h_j=\sigma\) being
  fine, the ceiling in \(J\), and the largest admissible \(\epsilon\).
- Conclusions used: exact substitution in
  Lemma~\(\ref{lem:step-010-exact-coarse-square}\), then one and only one of
  the three specialization lemmas.

### Accepted dependency: moment-compatible activity

- Source or name: accepted
  Proposition~\(\ref{prop:step-007-coarse-ledger}\) from `step_007`.
- Restated statement: for all deterministic \(t,x\in\mathbb R\),
  \[
  \sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}|\Delta_j^t(x)|
  \leq C_k^{\rm act}|x-t|^k,
  \qquad
  C_k^{\rm act}=\frac{3(8/3)^k}{1-2^{-k}}.
  \]
- Object mapping: the dependency's actual selected digit difference is exactly
  \(\Delta_j^t(x)\) above. Its cutoff is
  \(h_j<8|x-t|/3\), and it includes every sampled coarse index through
  \(j=J-1\).
- Assumption discharge: the accepted proof derives the inequality
  deterministically from stable cells and bounded digits. It imposes no
  restriction \(|x-t|\leq H\), so it covers rare observations with
  \(|x-t|\gg H\), and it gives zero at \(x=t\).
- Conclusion used: the pointwise inequality taken under \(\mathbb E_D\) in
  Proposition~\(\ref{prop:step-010-coarse-moment-closure}\).

### Accepted dependency: exact conditional raw square

- Source or name: accepted
  Proposition~\(\ref{prop:step-008-raw-square}\), together with
  Lemma~\(\ref{lem:step-008-refinement-kernel}\), from `step_008`.
- Restated statement: conditional on the localization sigma-field, and hence
  conditional on its measurable output \(c\), the refinement tuple retains
  its original product law and
  \[
  \mathbb E[Z_i(c)^2\mid c]
  =48\sum_{j=0}^{J-1}\frac{h_j}{p_j}
    \mathbb E_D|\Delta_j^c(X)|.
  \]
  For a nonempty coarse group, its exact nonnegative summand is
  \[
  48mW_{\rm c}\sigma^{2-k}
  \sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}
    \mathbb E_D|\Delta_j^c(X)|.
  \]
- Numerical-factor mapping: \(48=256\cdot(1/16)\cdot3\) after the level
  factor \(p_j\) cancels one factor in \((16/p_j)^2\). This is a raw second
  moment, and the accepted proof does not subtract the conditional mean.
- Assumption discharge: accepted `step_008` discharges localization/refinement
  independence, positivity of \(p_j\), match probability \(1/16\), dither
  square, measurability, and square-integrability.
- Conclusion used: Lemma~\(\ref{lem:step-010-exact-coarse-square}\).

### Direct conditional-variance identity

- Source or name: direct definition of conditional variance; no citation.
- Restated statement: for every square-integrable scalar \(Y\) and
  sigma-field \(\mathscr G\),
  \[
  \operatorname{Var}(Y\mid\mathscr G)
  =\mathbb E[Y^2\mid\mathscr G]
   -\mathbb E[Y\mid\mathscr G]^2
  \leq\mathbb E[Y^2\mid\mathscr G].
  \]
- Assumption discharge: accepted `step_008` supplies conditional
  square-integrability. The subtracted square is nonnegative.
- Conclusion used: only for the genuine variance of \(Z_{i,{\rm c}}\). The
  coarse summand \(S_{\rm c}\) is separately retained as a raw-square
  contribution to the full statistic.

### Local-result application register

| Result | Restated conclusion used later | Assumption discharge |
| ------ | ------------------------------- | -------------------- |
| Lemma~\(\ref{lem:step-010-exact-coarse-square}\) | Exact coarse square, genuine coarse-component variance upper bound, and exact \(p_j\) substitution. | Accepted group law and raw-square dependency; proved in `unit_001`. |
| Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) | \(S_{\rm c}(t)\leq A_kW_{\rm c}\sigma^2\) for every \(|t-\mu|\leq50\sigma\). | Primitive moment plus accepted recentering and activity; proved in `unit_002`. |
| Lemma~\(\ref{lem:step-010-superquadratic}\) | Fixed-\(k>2\) \(O_k(\sigma^2)\) certificate. | Accepted decreasing coarse normalizer; proved in `unit_003`. |
| Lemma~\(\ref{lem:step-010-critical}\) | Exact \(k=2\) one-log certificate. | Accepted exact coarse count and its explicit bound; proved in `unit_004`. |
| Lemma~\(\ref{lem:step-010-subquadratic}\) | Fixed-\(1<k<2\) \(O_k(\sigma^kH^{2-k})\) certificate. | Accepted last-term-dominated normalizer; proved in `unit_005`. |
| Proposition~\(\ref{prop:step-010-three-regime}\) | Complete eventwise three-regime output for the actual center. | The five preceding named results; proved in `unit_006`. |

## Local Derivation

### unit_001: lemma

**Lemma (Exact coarse raw square and conditional-variance interface).**
\(\label{lem:step-010-exact-coarse-square}\)

Under accepted Proposition~\(\ref{prop:step-008-raw-square}\) and
Proposition~\(\ref{prop:step-003-group-law}\), for every deterministic center
\(t\), the independent-refinement conditional kernel satisfies

\[
\mathbb E_t[Z_{i,{\rm c}}(t)^2]=S_{\rm c}(t),
\qquad
\operatorname{Var}_t(Z_{i,{\rm c}}(t))\leq S_{\rm c}(t).
\]

If \(\mathcal J_{\rm c}\neq\varnothing\), then exactly

\[
\boxed{
S_{\rm c}(t)
=48mW_{\rm c}\sigma^{2-k}\,
  \mathbb E_D\!\left[
    \sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}
      |\Delta_j^t(X)|
  \right].
}
\tag{10.1}
\]

If \(\mathcal J_{\rm c}=\varnothing\), then
\(Z_{i,{\rm c}}(t)=0\) pathwise and \(S_{\rm c}(t)=0\), without evaluating
\(W_{\rm c}\), \(w_j/W_{\rm c}\), or \(p_j^{-1}\) for an absent level.

**Proof / justification.** By definition,

\[
Z_{i,{\rm c}}(t)^2
=Z_i(t)^2\mathbf1\{L_i\in\mathcal J_{\rm c}\}.
\]

The accepted raw-square proof expands \(Z_i(t)^2\) over the disjoint events
\(\{L_i=j\}\). Restricting that same exact expansion to
\(j\in\mathcal J_{\rm c}\) therefore gives

\[
\mathbb E_t[Z_{i,{\rm c}}(t)^2]
=48\sum_{j\in\mathcal J_{\rm c}}\frac{h_j}{p_j}
  \mathbb E_D|\Delta_j^t(X)|
=S_{\rm c}(t).
\]

This is a raw conditional square. The direct conditional-variance identity
gives

\[
\operatorname{Var}_t(Z_{i,{\rm c}}(t))
=S_{\rm c}(t)-\mathbb E_t[Z_{i,{\rm c}}(t)]^2
\leq S_{\rm c}(t).
\]

Now suppose the coarse group is nonempty. For every
\(j\in\mathcal J_{\rm c}\), the definitions, in their exact order, are

\[
w_j=\left(\frac{h_j}{\sigma}\right)^{2-k},
\qquad
W_{\rm c}=\sum_{\ell\in\mathcal J_{\rm c}}w_\ell,
\qquad
p_j=\frac1m\frac{w_j}{W_{\rm c}}.
\]

Thus

\[
\frac1{p_j}
=mW_{\rm c}\left(\frac{h_j}{\sigma}\right)^{k-2}
=mW_{\rm c}\sigma^{2-k}h_j^{k-2},
\]

and hence, without an inequality,

\[
\begin{aligned}
S_{\rm c}(t)
&=48\sum_{j\in\mathcal J_{\rm c}}
   h_j\,mW_{\rm c}\sigma^{2-k}h_j^{k-2}
   \mathbb E_D|\Delta_j^t(X)|\\
&=48mW_{\rm c}\sigma^{2-k}
  \sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}
   \mathbb E_D|\Delta_j^t(X)|\\
&=48mW_{\rm c}\sigma^{2-k}\,
  \mathbb E_D\!\left[
    \sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}
      |\Delta_j^t(X)|
  \right].
\end{aligned}
\]

The last equality moves expectation across a finite sum only. Accepted
`step_008` already proves every summand integrable. At \(k=2\), this same
calculation reads \(w_j=1\), \(p_j=(mW_{\rm c})^{-1}\), and
\(h_j/p_j=mW_{\rm c}h_j\); no limiting interpretation is used.

If the coarse group is empty, the defining indicator of
\(Z_{i,{\rm c}}\) is zero and every coarse sum is empty. This proves the exact
zero statements directly and completes the two cases. \(\square\)

### unit_002: proposition

**Proposition (Localized moment closure of the coarse square).**
\(\label{prop:step-010-coarse-moment-closure}\)

Under Assumption~\(\ref{assump:moment-class}\), accepted
Lemma~\(\ref{lem:step-002-recentered-moment}\), accepted
Proposition~\(\ref{prop:step-007-coarse-ledger}\), and
Lemma~\(\ref{lem:step-010-exact-coarse-square}\), fix a deterministic center
\(t\) with \(|t-\mu|\leq50\sigma\). Then

\[
S_{\rm c}(t)\leq A_kW_{\rm c}\sigma^2,
\qquad
A_k:=96C_k^{\rm rec}C_k^{\rm act},
\tag{10.2}
\]

where the empty-coarse case means \(S_{\rm c}(t)=W_{\rm c}=0\) under the
accepted inequality-only empty-sum extension. The constant is explicitly

\[
A_k
=96\,[2^{k-1}(1+50^k)]
  \left[\frac{3(8/3)^k}{1-2^{-k}}\right],
\]

which is finite and positive for every fixed \(k>1\).

**Proof / justification.** If the coarse group is empty, the conclusion is
the exact equality \(0=0\), so suppose it is nonempty. The accepted activity
ledger is pointwise in \(x\):

\[
\sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}|\Delta_j^t(x)|
\leq C_k^{\rm act}|x-t|^k
\qquad\text{for every }x\in\mathbb R.
\tag{10.3}
\]

This is the required order of operations: all active scales are summed before
any expectation is taken. Applying \(\mathbb E_D\) to the nonnegative
pointwise inequality gives

\[
\mathbb E_D\!\left[
 \sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}|\Delta_j^t(X)|
\right]
\leq C_k^{\rm act}\mathbb E_D|X-t|^k.
\tag{10.4}
\]

The recentered-moment dependency concerns this same deterministic decoder
center \(t\), and the accepted refinement kernel leaves the refinement draw
with its population law \(D\) after localization conditioning. Therefore the
localized-center condition and Assumption~\(\ref{assump:moment-class}\) give

\[
\mathbb E_D|X-t|^k\leq C_k^{\rm rec}\sigma^k.
\tag{10.5}
\]

Substituting (10.4)--(10.5) into the exact identity (10.1) yields

\[
\begin{aligned}
S_{\rm c}(t)
&\leq48mW_{\rm c}\sigma^{2-k}
  C_k^{\rm act}C_k^{\rm rec}\sigma^k\\
&=48mC_k^{\rm act}C_k^{\rm rec}W_{\rm c}\sigma^2\\
&\leq96C_k^{\rm act}C_k^{\rm rec}W_{\rm c}\sigma^2
=A_kW_{\rm c}\sigma^2.
\end{aligned}
\]

The final inequality is the displayed deterministic bound
\(m\leq2\); under the actual theorem design \(m=2\), so its coefficient is
exactly \(96\). No level count, tail truncation, or term absorption occurs.

For rare \(R=|X-t|\gg H\), every sampled coarse level may be active, but
(10.3) remains valid because accepted `step_007` imposed no condition
\(R\leq H\). At \(X=t\), its left and right sides are both zero. \(\square\)

### unit_003: lemma

**Lemma (Superquadratic coarse variance).**
\(\label{lem:step-010-superquadratic}\)

Under Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) and accepted
Proposition~\(\ref{prop:step-003-coarse-normalizers}\), if \(k>2\) is fixed
and \(|t-\mu|\leq50\sigma\), then

\[
S_{\rm c}(t)
\leq C_{k,>}^{\rm c}\sigma^2,
\qquad
C_{k,>}^{\rm c}
:=\frac{A_k}{1-2^{2-k}}<\infty.
\tag{10.6}
\]

Consequently
\(\operatorname{Var}_t(Z_{i,{\rm c}}(t))
\leq C_{k,>}^{\rm c}\sigma^2\).

**Proof / justification.** In the fixed regime \(k>2\), the accepted coarse
normalizer bound is

\[
W_{\rm c}\leq\frac1{1-2^{2-k}}.
\]

The denominator is positive because \(2^{2-k}<1\). Substitution into (10.2)
gives (10.6) directly. The conditional-variance conclusion follows from
Lemma~\(\ref{lem:step-010-exact-coarse-square}\). The constant may grow as
\(k\downarrow2\); no uniform limit in \(k\) is claimed or needed. \(\square\)

### unit_004: lemma

**Lemma (Critical coarse variance with exactly one logarithm).**
\(\label{lem:step-010-critical}\)

Under Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) and accepted
Proposition~\(\ref{prop:step-003-coarse-normalizers}\), set \(k=2\) exactly.
For every \(|t-\mu|\leq50\sigma\),

\[
S_{\rm c}(t)
\leq C_2^{\rm c}\sigma^2\log\frac{\sigma}{\epsilon},
\tag{10.7}
\]

where the numerical constant

\[
C_2^{\rm c}
:=A_2\left(\log_2(2b_2)+\frac1{\log2}\right)
\]

depends on no problem quantity. Consequently the same upper bound holds for
\(\operatorname{Var}_t(Z_{i,{\rm c}}(t))\).

**Proof / justification.** At \(k=2\), the coarse weights are exactly
\(w_j=1\), so

\[
W_{\rm c}=\#\mathcal J_{\rm c}.
\]

This is the sole coarse-level count. The accepted normalizer proof, using the
largest sampled scale \(h_{J-1}=H/2\) and
\(H<2b_2\sigma(\sigma/\epsilon)\), gives

\[
W_{\rm c}
<\log_2(2b_2)+\frac{\log(\sigma/\epsilon)}{\log2}.
\tag{10.8}
\]

The accepted design has \(\sigma/\epsilon\geq e\), hence
\(\log(\sigma/\epsilon)\geq1\). Therefore the additive constant in (10.8)
is dominated by the target logarithm through the explicit inequality

\[
\log_2(2b_2)+\frac{\log(\sigma/\epsilon)}{\log2}
\leq
\left(\log_2(2b_2)+\frac1{\log2}\right)
\log\frac{\sigma}{\epsilon}.
\tag{10.9}
\]

Combining (10.2) and (10.9) proves (10.7). There is no second count:
before \(W_{\rm c}\) is applied, accepted
Proposition~\(\ref{prop:step-007-coarse-ledger}\) at \(k=2\) gives the
pointwise geometric charge

\[
\sum_{j\in\mathcal J_{\rm c}}h_j|\Delta_j^t(x)|
\leq C_2^{\rm act}|x-t|^2,
\]

which contains no factor \(\#\mathcal J_{\rm c}\). Thus (10.7) contains
exactly the one logarithm carried by \(W_{\rm c}\). The proof sets \(k=2\)
from the start and does not take either one-sided limit. \(\square\)

### unit_005: lemma

**Lemma (Subquadratic coarse variance).**
\(\label{lem:step-010-subquadratic}\)

Under Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) and accepted
Proposition~\(\ref{prop:step-003-coarse-normalizers}\), if fixed
\(1<k<2\) and \(|t-\mu|\leq50\sigma\), then

\[
S_{\rm c}(t)
\leq C_{k,<}^{\rm c}\sigma^kH^{2-k},
\qquad
C_{k,<}^{\rm c}
:=\frac{A_k}{2^{2-k}(1-2^{-(2-k)})}<\infty.
\tag{10.10}
\]

Consequently the same bound holds for
\(\operatorname{Var}_t(Z_{i,{\rm c}}(t))\).

**Proof / justification.** In the fixed regime \(1<k<2\), the accepted
last-term-dominated normalizer bound is

\[
W_{\rm c}
\leq\frac1{1-2^{-(2-k)}}
\left(\frac{H}{2\sigma}\right)^{2-k}.
\]

Substituting this inequality into (10.2), with no change to \(H\), gives

\[
\begin{aligned}
S_{\rm c}(t)
&\leq
\frac{A_k}{1-2^{-(2-k)}}\sigma^2
\left(\frac{H}{2\sigma}\right)^{2-k}\\
&=\frac{A_k}{2^{2-k}(1-2^{-(2-k)})}
  \sigma^{2-(2-k)}H^{2-k}\\
&=C_{k,<}^{\rm c}\sigma^kH^{2-k}.
\end{aligned}
\]

Both denominator factors are positive because \(2-k\in(0,1)\). The constant
is finite for each fixed \(k\), although it may grow as \(k\uparrow2\). This
is not replaced by a uniform-in-\(k\) limit or by the critical-regime formula.
The activity ledger already includes \(|X-t|\gg H\), so no tail beyond
\(H\) is omitted. \(\square\)

### unit_006: proposition

**Proposition (Three-regime coarse conditional variance certificate).**
\(\label{prop:step-010-three-regime}\)

Under Assumption~\(\ref{assump:moment-class}\),
Lemma~\(\ref{lem:step-010-exact-coarse-square}\),
Proposition~\(\ref{prop:step-010-coarse-moment-closure}\), and
Lemmas~\(\ref{lem:step-010-superquadratic}\),
\(\ref{lem:step-010-critical}\), and
\(\ref{lem:step-010-subquadratic}\), whose assumption bases are the accepted
dependency results from `step_002`, `step_003`, `step_007`, and `step_008`, on
the generated localization event

\[
\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\},
\]

the actual decoder center satisfies, almost surely in its localization
transcript,

\[
\operatorname{Var}(Z_{i,{\rm c}}(c)\mid c)
\leq S_{\rm c}(c)
\leq
\begin{cases}
C_{k,>}^{\rm c}\sigma^2, & k>2,\\[0.3em]
C_2^{\rm c}\sigma^2\log(\sigma/\epsilon), & k=2,\\[0.3em]
C_{k,<}^{\rm c}\sigma^kH^{2-k}, & 1<k<2.
\end{cases}
\tag{10.11}
\]

Moreover, \(S_{\rm c}(c)\) is exactly the coarse nonnegative summand in
\(\mathbb E[Z_i(c)^2\mid c]\), not a replacement for the full raw square.
If the coarse group is empty, or if every coarse digit has zero activity,
then \(S_{\rm c}(c)=0\) and
\(Z_{i,{\rm c}}(c)=0\) conditionally almost surely. In particular, at the
exact baseline \(X_i=c\), the coarse component is zero pathwise for every
level, offset, and dither realization.

**Proof / justification.** Fix any localization transcript in
\(\mathcal E_{\rm loc}\), and denote its realized center by \(t=c\). Accepted
`step_008` says that conditional on this transcript the refinement kernel is
still the original one, so Lemma~\(\ref{lem:step-010-exact-coarse-square}\)
applies to the actual conditional square. Accepted `step_002` supplies the
same-center moment needed by
Proposition~\(\ref{prop:step-010-coarse-moment-closure}\). Exactly one of the
three mutually exclusive cases holds. Lemma~\(\ref{lem:step-010-superquadratic}\),
Lemma~\(\ref{lem:step-010-critical}\), or
Lemma~\(\ref{lem:step-010-subquadratic}\), respectively, gives (10.11).

For the exact raw-square interface, accepted `step_008` gives

\[
\mathbb E[Z_i(c)^2\mid c]
=48\sum_{j\in\mathcal J_{\rm f}}\frac{h_j}{p_j}
  \mathbb E_D|D_j^c(X)-D_j^c(c)|
 +S_{\rm c}(c),
\]

where an empty fine sum is zero. This line is only an exact decomposition; no
fine bound is asserted or imported here. Thus the proposition precisely
certifies the coarse contribution while distinguishing it from the variance
and from the full raw square.

If the coarse group is empty, Lemma~\(\ref{lem:step-010-exact-coarse-square}\)
gives exact pathwise zero. If all coarse digit differences vanish
\(D\)-almost surely, the exact nonnegative formula gives
\(S_{\rm c}(c)=0\); the conditional square of \(Z_{i,{\rm c}}(c)\) is then
zero, so that component is conditionally almost surely zero. At \(X_i=c\),
accepted `step_008` gives the stronger pathwise identity before expectation.
\(\square\)

## Target-Step Assembly

Accepted Proposition~\(\ref{prop:step-008-raw-square}\) supplies the exact
factor-(48) conditional raw square. Lemma~\(\ref{lem:step-010-exact-coarse-square}\)
restricts that identity to the coarse levels, distinguishes the genuine
conditional variance from its raw-square upper bound, and performs the exact
substitution

\[
\frac{h_j}{p_j}
=mW_{\rm c}\sigma^{2-k}h_j^{k-1}
\qquad(j\in\mathcal J_{\rm c}).
\]

Accepted Proposition~\(\ref{prop:step-007-coarse-ledger}\) then sums all
coarse activity pointwise before expectation, including the rare-tail case
\(|X-c|\gg H\). Accepted
Lemma~\(\ref{lem:step-002-recentered-moment}\) integrates the resulting
\(|X-c|^k\) charge under exactly the generated localization interface.
Proposition~\(\ref{prop:step-010-coarse-moment-closure}\) composes these
inputs and proves the common bound

\[
S_{\rm c}(c)\leq A_kW_{\rm c}\sigma^2
\quad\text{on }\mathcal E_{\rm loc}.
\]

The three accepted normalizer formulas are then applied separately:
Lemma~\(\ref{lem:step-010-superquadratic}\) gives the fixed-\(k>2\)
\(C_k\sigma^2\) bound; Lemma~\(\ref{lem:step-010-critical}\) gives the exact
\(k=2\) bound with precisely one \(\log(\sigma/\epsilon)\); and
Lemma~\(\ref{lem:step-010-subquadratic}\) gives the fixed-\(1<k<2\)
\(C_k\sigma^kH^{2-k}\) bound. Proposition~\(\ref{prop:step-010-three-regime}\)
packages those mutually exclusive conclusions for the actual random center,
with exact empty-group and zero-displacement reductions. This proves the
binding `step_010` claim without importing a fine-variance estimate,
concentration result, or bias statement.

## Explicit Rate Audit

- Exposed variables: fixed \(k>1\), \(\sigma>0\),
  \(0<\epsilon\leq e^{-1}\sigma\), the actual localized center \(c\), law
  \(D\), finite scale count \(J\), sampled scales \(h_j\), top scale
  \(H=h_J\), coarse set \(\mathcal J_{\rm c}\), weights \(w_j\), normalizer
  \(W_{\rm c}\), group count \(m\), and probabilities \(p_j\). The setting
  parameters \(\lambda\) and \(\delta\) do not enter this one-sample
  conditional bound.
- Hidden constants may depend on: fixed \(k\) only. They are displayed as
  \[
  C_{k,>}^{\rm c}
  =\frac{96C_k^{\rm rec}C_k^{\rm act}}{1-2^{2-k}},
  \]
  \[
  C_2^{\rm c}
  =96C_2^{\rm rec}C_2^{\rm act}
    \left(\log_2(2b_2)+\frac1{\log2}\right),
  \]
  and
  \[
  C_{k,<}^{\rm c}
  =\frac{96C_k^{\rm rec}C_k^{\rm act}}
   {2^{2-k}(1-2^{-(2-k)})}.
  \]
  At \(k=2\), \(b_2\), \(C_2^{\rm rec}\), and
  \(C_2^{\rm act}\) are fixed numerical design constants, so
  \(C_2^{\rm c}\) is numerical.
- Hidden constants may not depend on: \(\lambda,\sigma,\epsilon,\delta,D,c\),
  a localization transcript, \(J,H,W_{\rm c},m,p_j\), or the refinement
  sample index.
- Fixed quantities: one of the three regimes is fixed before constants are
  chosen. The open regimes are not made uniform as \(k\to2\), and the
  \(k=2\) case is not inferred from a limit.
- Probability mode: conditional second moment and conditional variance given
  the independent localization center, almost surely on the generated event
  \(\mathcal E_{\rm loc}\), uniformly for every deterministic
  \(|t-\mu|\leq50\sigma\). This is not a confidence statement and introduces
  no failure probability.
- Horizon mode: one refinement observation within the deterministic fixed
  horizon; the level sum has exactly the finite sampled range
  \(0\leq j<J\). No stopping-time, horizon-uniform, or asymptotic upgrade is
  made.
- Norm mode: scalar conditional variance and raw second moment; every digit
  and displacement is measured in absolute value on \(\mathbb R\).
- Admissibility conditions and auxiliary tolerances: the accepted design has
  \(\epsilon\leq e^{-1}\sigma\), \(H=h_J\), both theorem groups nonempty,
  and \(m=2\). Auxiliary empty-group configurations use \(m=1\) for the
  existing group and never evaluate an absent denominator. There is no
  stochastic auxiliary tolerance.
- Term absorption or simplification inequalities:
  \[
  48m\leq96,
  \]
  \[
  \log_2(2b_2)+\frac{\log(\sigma/\epsilon)}{\log2}
  \leq
  \left(\log_2(2b_2)+\frac1{\log2}\right)
  \log\frac{\sigma}{\epsilon}
  \quad\text{because }\log\frac{\sigma}{\epsilon}\geq1,
  \]
  and
  \[
  \sigma^2\left(\frac{H}{2\sigma}\right)^{2-k}
  =2^{-(2-k)}\sigma^kH^{2-k}.
  \]
  No other term is dropped, dominated, or absorbed.
- Probability conversion: None. Accepted `step_008` identifies the exact
  conditional refinement kernel; this step makes no conditional-to-unconditional
  conversion.
- Contribution to any Rate Specialization Bridge: this step exports the exact
  coarse conditional raw-square/variance contribution in all three regimes.
  It does not substitute the design value of \(H\) into a public sample rate,
  choose block sizes, amplify confidence, or absorb localization cost.
- Baseline-reduction check: if \(X_i=c\), then
  \(Z_{i,{\rm c}}(c)=0\) pathwise and every coarse digit difference is zero.
  If \(D=\delta_c\), then \(S_{\rm c}(c)=0\) and the conditional variance is
  exactly zero. If the coarse group is empty, the same exact conclusion holds
  without any denominator. These are exact reductions, not conservative
  \(O(h_j)\) surrogates.

## Blockers

None.

## Notation And Assumption Notes

- **Setting-defined public objects:** \(k,\lambda,\sigma,\epsilon,\delta,D,\mu\),
  \(c,J,h_j,H,\mathcal J_{\rm c},w_j,W_{\rm c},m,p_j,D_j^c,Z_i(c)\)
  retain exactly their meanings in `setting.md`.
- **Public-facing output:** Proposition~\(\ref{prop:step-010-three-regime}\)
  is the minimal export: it bounds the exact coarse raw-square contribution
  and the genuine variance of the coarse-level component in the three required
  regimes. The three displayed coefficients are public-facing constants with
  explicit provenance and fixed-\(k\) dependence.
- **Appendix-local objects:**
  \(\Delta_j^t(x)=D_j^t(x)-D_j^t(t)\),
  \(Z_{i,{\rm c}}(t)=Z_i(t)\mathbf1\{L_i\in\mathcal J_{\rm c}\}\),
  \(S_{\rm c}(t)\), \(\mathbb E_t\), \(\operatorname{Var}_t\), and
  \(A_k=96C_k^{\rm rec}C_k^{\rm act}\) package the repeated exact expressions
  and deterministic-center refinement kernel used in the local proof. They
  introduce no new protocol object and need not appear in the final theorem
  statement.
- **Proof-local objects:** a deterministic center \(t\), displacement
  \(R=|X-t|\), and \(t_\epsilon=\sigma/\epsilon\) are proof-local. The
  full raw-square decomposition is written directly in setting notation, so
  no fine-scale helper is introduced or exported.
- **Constant provenance:** \(C_k^{\rm rec}=2^{k-1}(1+50^k)\) is inherited
  from accepted `step_002`; \(C_k^{\rm act}=3(8/3)^k/(1-2^{-k})\) is
  inherited from accepted `step_007`; \(96=48\cdot2\) comes from the accepted
  exact raw-square coefficient and the proved \(m\leq2\); every remaining
  denominator is the exact accepted geometric-normalizer constant from
  `step_003`. No free finite constant is introduced.
- **Assumption provenance:** the central moment is primitive under
  `assump:moment-class`. The event \(\mathcal E_{\rm loc}\) and recentered
  moment are accepted derived outputs of `step_002`; group behavior and
  normalizers are accepted deterministic outputs of `step_003`; activity is
  an accepted deterministic output of `step_007`; and the conditional product
  kernel and raw square are accepted derived outputs of `step_008`. The present
  step proves their composition. No generated condition is treated as
  primitive and no local conditional hypothesis is used.
- **Exact conditioning/event interface:** for each localization transcript,
  accepted `step_008` leaves the refinement sample with law \(D\). On those
  transcripts for which \(|c-\mu|\leq50\sigma\), accepted `step_002` bounds
  the population moment about that same realized \(c\). The proof never
  replaces \(D\) by a distribution conditioned on
  \(\mathcal E_{\rm loc}\).
- **Level-law audit:** for a nonempty coarse group,
  \(w_j=(h_j/\sigma)^{2-k}\),
  \(W_{\rm c}=\sum_jw_j\), and
  \(p_j=m^{-1}w_j/W_{\rm c}\) are substituted exactly before any inequality.
  Under theorem parameters \(m=2\). If the group is empty, its raw-square
  sum is zero and no \(W_{\rm c}\) or \(p_j\) denominator is evaluated.
- **Transition, smallest, and top levels:** a level with \(h_j=\sigma\) is
  fine and never enters a coarse formula. Under the theorem design \(j=0\) is
  fine and \(j=J-1\) is coarse. The accepted activity ledger covers the top
  sampled level \(J-1\); the unsampled level \(J\) is not inserted. Its proof
  also covers auxiliary empty groups and every finite \(J\).
- **Rare-tail and boundary audit:** no line assumes \(|X-c|\leq H\). If
  \(|X-c|\gg H\), all sampled coarse levels may activate, but the pointwise
  weighted sum is still charged once to \(|X-c|^k\). At \(X=c\), at a zero
  coarse-activity realization, and for a degenerate law at the center, the
  exact raw square and variance reduce to zero.
- **Regime audit:** \(k>2\), \(k=2\), and \(1<k<2\) use separate local
  results. The possibly singular fixed-\(k\) geometric constants near
  \(k=2\) are not hidden by a uniform limit. At \(k=2\), the only level count
  is \(W_{\rm c}=\#\mathcal J_{\rm c}\); the pointwise activity bound supplies
  no second count.
- **Scope boundary:** this proof establishes no fine-variance estimate,
  residual bias, median-of-means concentration, confidence conversion, sample
  allocation, or public \(r_k\) absorption claim.
- **Diagnostic context boundary:** the optional `global_proof.md` and
  `global_proof_review.md` pair was not read or used.
