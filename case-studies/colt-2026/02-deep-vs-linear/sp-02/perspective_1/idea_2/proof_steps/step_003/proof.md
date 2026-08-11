# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: On the canonical path, replayed predictor, actual learner
  output, and selected coordinate agree pointwise; its tie loss equals binary
  loss.
- Depends on: `step_001`, `step_002`.
- Assumptions used: `assump:universal-adversarial-sq`.
- Technical challenge: Establish exact adaptive path matching and eliminate
  score ties without a margin assumption.
- Intended proof tool or cited result: Finite prefix induction, coordinate
  definition, and binary loss-event identity; no cited theorem.
- Output target: Zero-residual comparison certificate.
- Rate objective: None.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:universal-adversarial-sq`: conditioning on a complete
    tape \(r\) makes every query, internal transition, stopping decision,
    and terminal predictor deterministic; the protocol makes at most \(m\)
    queries and returns a binary predictor
    \(\mathcal X\to\{+1,-1\}\). The expected-risk guarantee is not used in
    this step.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-001-canonical-oracle} supplies the fixed
    deterministic canonical reply rule
    \(\mathcal O^\rho_{\mathcal D,h}\).
  - Proposition~\ref{prop:step-001-padded-path} supplies, for every
    \((\mathcal D,h,r)\), the unique actual canonical reply prefix and its
    fixed-padded representative \(z^{\mathcal D,h,r}\in G^m\), with unread
    suffix and the empty path when \(m=0\).
  - Proposition~\ref{prop:step-002-total-replay} supplies every total binary
    replay predictor \(g_{r,z}\) and proves that replies after a replay has
    stopped cannot affect its terminal predictor.
  - Proposition~\ref{prop:step-002-feature-map} supplies the pre-instance
    response-tree map
    \(\phi_r=(g_{r,z})_{z\in G^m}:\mathcal X\to\{+1,-1\}^N\), including its
    single empty-string coordinate when \(m=0\), without quotienting repeated
    coordinates.
  - Proposition~\ref{prop:step-002-preinstance-law} supplies the measurable
    map \(T:r\mapsto\phi_r\), the pre-instance law
    \(\mathsf P_A=T_{\#}\mu\), measurability of
    \(Z_{\mathcal D,h}(r)=z^{\mathcal D,h,r}\), and measurability of the
    tape-side selected-basis loss. These interfaces remain valid on
    noninjective fibers of \(T\).
- Local conditional hypotheses: None.
- Accepted dependency step proof/review artifacts:
  - `perspective_1/idea_2/proof_steps/step_001/proof.md`, sketch
    attempt 1, unit attempt 1, with current SHA-256
    `30d2b34a459400227c70179b068b366aee5aff266c34c5560c52eab637c37869`.
  - `perspective_1/idea_2/proof_steps/step_001/review.md`, matching
    sketch attempt 1 and unit attempt 1, with
    `Step-Review Status = ACCEPTED`.
  - `perspective_1/idea_2/proof_steps/step_002/proof.md`, sketch
    attempt 1, unit attempt 2, with SHA-256
    `04991f3a26b765f4f6903fad47c91a8ec96f76a5772deeaf5982be234f1d1f83`.
  - `perspective_1/idea_2/proof_steps/step_002/review.md`, matching
    sketch attempt 1 and unit attempt 2, with
    `Step-Review Status = ACCEPTED` and SHA-256
    `ac6001c71e6a628eea53150aaa8d26e52c6d93385b817e533375a650b7cb3442`.

The primitive parameter condition
`assump:sq-parameter-regime` is not used afresh in this step. Its
grid, horizon, and boundary consequences enter only through the accepted
dependency conclusions listed above, exactly as required by the accepted
sketch row.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | invariant | Under Assumption~\ref{assump:universal-adversarial-sq}, Proposition~\ref{prop:step-001-padded-path}, and Proposition~\ref{prop:step-002-total-replay}, for every fixed \((\mathcal D,h,r)\), the actual taped canonical interaction and the synthetic replay indexed by \(z^{\mathcal D,h,r}\) have identical configurations after every reply actually read; before stopping they issue the same next query and receive the same next reply, and at stopping they have the same terminal output. | Exposes and proves the zero-defect finite-prefix induction that handles arbitrary adaptivity and stopping. |
| `unit_002` | proposition | Under Assumption~\ref{assump:universal-adversarial-sq}, Invariant~\ref{inv:step-003-prefix-synchronization}, and Proposition~\ref{prop:step-002-total-replay}, for every \((\mathcal D,h,r)\), \(g_{r,z^{\mathcal D,h,r}}=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\) as functions on \(\mathcal X\); the fixed padded suffix is unread, including at root stopping and \(m=0\). | Converts prefix synchronization into the exact replayed-predictor/actual-output identity. |
| `unit_003` | proposition | Under Assumption~\ref{assump:universal-adversarial-sq}, Proposition~\ref{prop:step-002-feature-map}, and Proposition~\ref{prop:step-003-terminal-replay}, the standard basis vector \(e_{z^{\mathcal D,h,r}}\) selects, for every \(x\in\mathcal X\), exactly the replayed and actual terminal prediction, and the selected score lies in \(\{+1,-1\}\). Repeated coordinates and the \(m=0\) coordinate do not change the identity. | Proves the pointwise one-hot score equality and excludes score zero without a margin premise. |
| `unit_004` | proposition | Under Assumption~\ref{assump:universal-adversarial-sq}, Proposition~\ref{prop:step-002-preinstance-law}, and Proposition~\ref{prop:step-003-one-hot-score}, for every fixed \((\mathcal D,h)\), tape \(r\), and point \(x\), the selected-score tie-error event equals the binary-error event exactly; hence the selected tie loss equals the actual learner's binary loss. The resulting tape-side loss is measurable, and no selector from a feature-map fiber to a tape or basis vector is asserted or needed. | Proves the exact loss-event and loss identities while preserving the downstream measurable interface and duplicate-fiber handling. |

Atomic step = no. Adaptive prefix synchronization, terminal replay,
coordinate selection, and the tie-free loss transfer are distinct
nontrivial claims, so they are exposed as four local units.

## Cited Result Applications

No external paper result or standard theorem is used.

- **Proposition~\ref{prop:step-001-canonical-oracle} (accepted dependency
  result).** Under the two setting assumptions, the rule
  \[
  \mathcal O^\rho_{\mathcal D,h}(q)
  =\rho\!\left(\mathbb E_{x\sim\mathcal D}q(x,h(x))\right)
  \]
  is a deterministic tolerance-valid policy at every adaptively reached
  query. This step uses its fixed reply rule, not its validity proof or any
  risk conclusion.
- **Proposition~\ref{prop:step-001-padded-path} (accepted dependency
  result).** For each \((\mathcal D,h,r)\), the actual interaction has a
  unique reply prefix of length at most \(m\); appending the fixed value
  \(-1\in G\) gives \(z^{\mathcal D,h,r}\in G^m\), with no appended value
  read by the learner and with \(z^{\mathcal D,h,r}=\emptyset\) when
  \(m=0\). This supplies the exact reply string instantiated in
  Invariant~\ref{inv:step-003-prefix-synchronization}.
- **Proposition~\ref{prop:step-002-total-replay} (accepted dependency
  result).** For every tape \(r\) and \(z\in G^m\), prescribed-reply replay
  defines a terminal binary predictor \(g_{r,z}\). If it stops after a
  prefix, all continuations of that prefix give the same predictor and no
  suffix symbol is read. Complete-tape determinism, finite horizon, and
  binary output discharge its assumptions. It supplies the synthetic
  execution used by Invariant~\ref{inv:step-003-prefix-synchronization} and
  the suffix conclusion used by
  Proposition~\ref{prop:step-003-terminal-replay}.
- **Proposition~\ref{prop:step-002-feature-map} (accepted dependency
  result).** The fixed lexicographic order on \(G^m\) defines
  \[
  \phi_r(x)=\bigl(g_{r,z}(x)\bigr)_{z\in G^m}
  \in\{+1,-1\}^N
  \]
  for every tape and point, retaining separately indexed equal coordinates
  and reducing to the sole empty-string coordinate when \(m=0\). It
  supplies the exact coordinate definition used by
  Proposition~\ref{prop:step-003-one-hot-score}.
- **Proposition~\ref{prop:step-002-preinstance-law} (accepted dependency
  result).** The construction \(T(r)=\phi_r\) is measurable into its final
  feature-map sigma algebra, \(\mathsf P_A=T_{\#}\mu\) is fixed before the
  instance, \(Z_{\mathcal D,h}(r)=z^{\mathcal D,h,r}\) is measurable for
  each fixed instance, and the selected-basis tie loss
  \[
  r\longmapsto
  L_{\mathrm{tie}}\!\left(
  \mathcal D,h,
  x\mapsto
  \left\langle e_{Z_{\mathcal D,h}(r)},T(r)(x)\right\rangle
  \right)
  \]
  is measurable even when \(T\) is noninjective. This exact accepted
  interface is used by Proposition~\ref{prop:step-003-tie-free-transfer};
  none of its measure-theoretic conclusions is reproved or strengthened.
- **Invariant~\ref{inv:step-003-prefix-synchronization} (local result).**
  Under the primitive taped-determinism condition and the accepted actual
  path and total replay, equality of the prefixes read through a round
  forces equality of the next action and reply. It is used by
  Proposition~\ref{prop:step-003-terminal-replay}.
- **Proposition~\ref{prop:step-003-terminal-replay} (local result).** The
  canonical full-string replay and actual canonical interaction return the
  same binary predictor as a function on \(\mathcal X\), including every
  early-stop and zero-query boundary. It is used by
  Proposition~\ref{prop:step-003-one-hot-score}.
- **Proposition~\ref{prop:step-003-one-hot-score} (local result).** The
  selected basis score equals both the replayed predictor and actual terminal
  predictor pointwise and is always \(+1\) or \(-1\). It is used by
  Proposition~\ref{prop:step-003-tie-free-transfer}.
- **Proposition~\ref{prop:step-003-tie-free-transfer} (local result).**
  Binary range makes the selected-score events with product at most zero
  and below zero identical, so the selected tie loss equals the replayed
  and actual binary losses for each tape. The accepted tape-side
  selected-basis measurability interface discharges its measurability
  premise without a selector on duplicate map fibers. It is used in the
  target-step assembly.

## Local Derivation

### unit_001: invariant

**Invariant (Canonical-prefix synchronization).**
\label{inv:step-003-prefix-synchronization}
Under Assumption~\ref{assump:universal-adversarial-sq},
Proposition~\ref{prop:step-001-padded-path}, and
Proposition~\ref{prop:step-002-total-replay}, fix a distribution
\(\mathcal D\), target \(h\in\mathcal H\), and complete tape \(r\). Let
\(s\in\{0,\ldots,m\}\) be the number of replies actually read before
\(A_r\) terminates against \(\mathcal O^\rho_{\mathcal D,h}\). Compare:

1. the actual taped interaction with
   \(\mathcal O^\rho_{\mathcal D,h}\); and
2. the synthetic taped replay defining
   \(g_{r,z^{\mathcal D,h,r}}\), which supplies the entries of
   \(z^{\mathcal D,h,r}\) in order whenever a reply is requested.

For every \(t\in\{0,\ldots,s\}\), after exactly \(t\) replies have been
read, the two executions have read the same prefix
\(z^{\mathcal D,h,r}_{1:t}\) and occupy the same taped protocol
configuration. If \(t<s\), their next action is the same query and the next
reply in both executions is \(z^{\mathcal D,h,r}_{t+1}\). At \(t=s\),
their stopping decision and terminal binary predictor coincide. This
statement also holds when \(s=0\), and in particular when \(m=0\).

**Proof.** We induct on the number \(t\) of replies already read. At
\(t=0\), both executions use the same complete tape \(r\), the same fixed
deterministic protocol \(A_r\), and the empty reply history. They therefore
occupy the same initial configuration and take the same first action. If
that action is terminal, then \(s=0\), and taped determinism gives the same
terminal predictor in both executions.

Suppose \(0\le t<s\) and that the two configurations and read prefixes agree
after \(t\) replies. Because \(A_r\) is deterministic, the next action is
determined by this common configuration. Since the actual execution has not
stopped before reply \(s\), this action is a query, say \(q_{t+1}\), and
the synthetic replay issues the identical query. In the actual interaction
the reply is
\[
\mathcal O^\rho_{\mathcal D,h}(q_{t+1})
=
\rho\!\left(
\mathbb E_{x\sim\mathcal D}q_{t+1}(x,h(x))
\right).
\tag{1}
\]
By the defining recursion of the canonical path in
Proposition~\ref{prop:step-001-padded-path}, (1) is exactly
\(z^{\mathcal D,h,r}_{t+1}\). By the definition of prescribed-string
replay in Proposition~\ref{prop:step-002-total-replay}, the synthetic
execution also receives exactly \(z^{\mathcal D,h,r}_{t+1}\). Both
executions therefore apply the same deterministic transition to the same
configuration and reply. Their configurations after \(t+1\) replies
coincide, and both have read
\(z^{\mathcal D,h,r}_{1:t+1}\). This closes the induction.

At \(t=s\), equality of configurations forces the same next action. The
actual run terminates there by the definition of \(s\); therefore the replay
also terminates there and returns the same terminal binary predictor. If
\(s=m\), the at-most-\(m\) query condition ensures termination no later than
the configuration after reply \(m\). If \(s=0\), the base case applies. If
\(m=0\), necessarily \(s=0\) and the unique accepted path is
\(\emptyset\), so the same base case applies.

The induction uses the actual canonical replies themselves, not merely two
replies within tolerance. Consequently midpoint choices and the regime
\(\tau\ge1\) create no discrepancy: the same fixed map \(\rho\) defines
both (1) and the corresponding path entry. Arbitrary dependence of later
queries on all earlier replies is preserved because the complete taped
configuration is equal at every induction stage. \(\square\)

### unit_002: proposition

**Proposition (Exact terminal replay on the canonical path).**
\label{prop:step-003-terminal-replay}
Under Assumption~\ref{assump:universal-adversarial-sq},
Invariant~\ref{inv:step-003-prefix-synchronization}, and
Proposition~\ref{prop:step-002-total-replay}, for every distribution
\(\mathcal D\), target \(h\in\mathcal H\), and complete tape \(r\),
\[
g_{r,z^{\mathcal D,h,r}}
=
A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
\quad\text{as functions }\mathcal X\to\{+1,-1\}.
\tag{2}
\]
If the actual interaction stops after \(s<m\) queries, the entries
\(z^{\mathcal D,h,r}_{s+1:m}=-1\) are unread by the replay and every other
full continuation of the same actual prefix gives the same terminal
predictor. If \(m=0\), (2) is the equality of the two no-query root
predictors.

**Proof.** Fix \((\mathcal D,h,r)\). By
Invariant~\ref{inv:step-003-prefix-synchronization}, the actual interaction
and the replay indexed by \(z^{\mathcal D,h,r}\) reach the same terminal
configuration after the same number \(s\) of replies and return the same
binary predictor. The left side of (2) is, by definition, the predictor
returned by that synthetic replay, while the right side is the predictor
returned by the actual canonical interaction. Their equality as terminal
predictor objects implies equality at every \(x\in\mathcal X\).

When \(s<m\), Proposition~\ref{prop:step-001-padded-path} says that the
canonical string is completed with the fixed \(-1\) suffix only after the
actual run stops. The synchronized replay stops at the same prefix, so it
does not request any of those entries.
Proposition~\ref{prop:step-002-total-replay} also proves that all full
strings sharing the replies actually read through the terminal prefix have
the same predictor. Thus padding selects an index in the complete response
tree but does not change either execution. This includes \(s=0\). At
\(m=0\), the accepted path and response-tree index set both contain only
\(\emptyset\), and the synchronization base case gives equality of the root
outputs. \(\square\)

### unit_003: proposition

**Proposition (One-hot selection of the actual binary output).**
\label{prop:step-003-one-hot-score}
Under Assumption~\ref{assump:universal-adversarial-sq},
Proposition~\ref{prop:step-002-feature-map}, and
Proposition~\ref{prop:step-003-terminal-replay}, for every
\((\mathcal D,h,r)\) and every \(x\in\mathcal X\),
\[
\begin{aligned}
\left\langle
e_{z^{\mathcal D,h,r}},\phi_r(x)
\right\rangle
&=g_{r,z^{\mathcal D,h,r}}(x)\\
&=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)(x)
\in\{+1,-1\}.
\end{aligned}
\tag{3}
\]
The identity holds without requiring distinct coordinate functions or an
injective tape-to-map construction. When \(m=0\), it is the scalar identity
for \(e_{\emptyset}=(1)\in\mathbb R^1\).

**Proof.** Proposition~\ref{prop:step-002-feature-map} fixes a common
lexicographic coordinate for every \(z\in G^m\) and defines
\[
\phi_r(x)=\bigl(g_{r,z'}(x)\bigr)_{z'\in G^m}.
\]
The standard basis vector \(e_{z^{\mathcal D,h,r}}\) has coefficient one at
the coordinate labeled by \(z^{\mathcal D,h,r}\) and zero at every other
coordinate. Direct finite-dimensional multiplication gives
\[
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle
=g_{r,z^{\mathcal D,h,r}}(x).
\tag{4}
\]
Proposition~\ref{prop:step-003-terminal-replay} supplies the second equality
in (3). Both the accepted replay proposition and
Assumption~\ref{assump:universal-adversarial-sq} give binary terminal
outputs, so the common value is always \(+1\) or \(-1\), never zero.

If two response strings label equal predictor functions, (4) remains the
definition of either separately indexed coordinate; no coordinate
distinctness is needed. If two tapes induce the same map, (4) is still a
separate pointwise identity for each tape and its canonical index; no
inverse of \(T:r\mapsto\phi_r\) is invoked. For \(m=0\), the accepted
feature-map construction has \(N=1\), \(G^0=\{\emptyset\}\), and
\(\phi_r(x)=(g_{r,\emptyset}(x))\), so multiplication by
\(e_{\emptyset}=(1)\) gives the same identity.

The basis vector in (3) is selected only after fixing
\((\mathcal D,h,r)\). This selection does not alter the already constructed
map \(T(r)=\phi_r\), its final sigma algebra, or the pre-instance law
\(\mathsf P_A=T_{\#}\mu\). \(\square\)

### unit_004: proposition

**Proposition (Exact tie-free loss transfer along the canonical coordinate).**
\label{prop:step-003-tie-free-transfer}
Under Assumption~\ref{assump:universal-adversarial-sq},
Proposition~\ref{prop:step-002-preinstance-law}, and
Proposition~\ref{prop:step-003-one-hot-score}, fix a distribution
\(\mathcal D\) and target \(h\in\mathcal H\). Then for every tape \(r\) and
every \(x\in\mathcal X\),
\[
\begin{aligned}
&\mathbf 1\!\left\{
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle h(x)
\le0\right\}\\
&\qquad=
\mathbf 1\!\left\{
g_{r,z^{\mathcal D,h,r}}(x)h(x)<0\right\}\\
&\qquad=
\mathbf 1\!\left\{
A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)(x)h(x)<0
\right\}.
\end{aligned}
\tag{5}
\]
Consequently,
\[
\begin{aligned}
&L_{\mathrm{tie}}\!\left(
\mathcal D,h,
x\mapsto
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle
\right)\\
&\qquad=
L_{\mathrm{tie}}\!\left(
\mathcal D,h,g_{r,z^{\mathcal D,h,r}}
\right)\\
&\qquad=
L_{\mathrm{bin}}\!\left(
\mathcal D,h,g_{r,z^{\mathcal D,h,r}}
\right)\\
&\qquad=
L_{\mathrm{bin}}\!\left(
\mathcal D,h,
A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
\right).
\end{aligned}
\tag{6}
\]
The left side of (6), as a function of \(r\), is the measurable tape-side
selected-basis loss supplied by
Proposition~\ref{prop:step-002-preinstance-law}. Thus the equal binary-loss
function is measurable as well. These conclusions hold without a
map-fiber-to-tape or map-fiber-to-basis selector.

**Proof.** Proposition~\ref{prop:step-003-one-hot-score} shows that the
selected score, \(g_{r,z^{\mathcal D,h,r}}(x)\), and the actual terminal
prediction are one common element of \(\{+1,-1\}\). Since
\(h(x)\in\{+1,-1\}\), their product with \(h(x)\) belongs to
\(\{+1,-1\}\). In particular, zero is impossible, and pointwise
\[
\begin{aligned}
\left\{
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle h(x)
\le0
\right\}
&=
\left\{
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle h(x)
=-1
\right\}\\
&=
\left\{
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle h(x)
<0
\right\}.
\end{aligned}
\tag{7}
\]
Substitution of the two pointwise equal predictors from (3) into (7) gives
the exact event identity (5). Taking \(\mathcal D\)-probabilities and using
the definitions of \(L_{\mathrm{tie}}\) and \(L_{\mathrm{bin}}\) gives
(6). No margin lower bound is assumed: the nonzero score follows exactly
from binary coordinate selection.

For the measurable interface, the accepted
Proposition~\ref{prop:step-002-preinstance-law} already proves that
\(Z_{\mathcal D,h}(r)=z^{\mathcal D,h,r}\) is a measurable finite-valued
tape statistic and that
\[
r\longmapsto
L_{\mathrm{tie}}\!\left(
\mathcal D,h,
x\mapsto
\left\langle e_{Z_{\mathcal D,h}(r)},T(r)(x)\right\rangle
\right)
\tag{8}
\]
is \(\Sigma_R\)-measurable. Since \(T(r)=\phi_r\), (6) identifies (8)
pointwise with the actual binary loss. Equality with a measurable
real-valued function proves measurability of that binary-loss function
without adding a new execution or integration assumption.

If \(T(r)=T(r')\) but
\(Z_{\mathcal D,h}(r)\ne Z_{\mathcal D,h}(r')\), formula (6) is applied
separately at \(r\) and \(r'\). The selected-basis loss remains a tape-side
quantity, exactly as in the accepted dependency; the proposition does not
claim that the basis vector is a function of the feature map. Repeated
coordinates are equally harmless because each selected coordinate remains
binary and satisfies (3). At \(m=0\), the unique basis vector selects the
binary root output, so (5)--(8) remain unchanged. \(\square\)

## Target-Step Assembly

Fix arbitrary \((\mathcal D,h,r)\). The accepted canonical-path and total
replay results meet the primitive taped-determinism condition in
Invariant~\ref{inv:step-003-prefix-synchronization}. Its finite induction
shows that agreement of the reply prefix forces the same adaptive query and
the same canonical reply at the next round, with zero mismatch at every
round. It also handles root stopping and \(m=0\) before any transition.

Proposition~\ref{prop:step-003-terminal-replay} applies that invariant and
the accepted suffix-invariance result to obtain
\[
g_{r,z^{\mathcal D,h,r}}
=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
\quad\text{as functions on }\mathcal X,
\]
with the fixed padded suffix unread.
Proposition~\ref{prop:step-003-one-hot-score} then applies the accepted
coordinate definition to obtain, for every \(x\in\mathcal X\),
\[
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle
=g_{r,z^{\mathcal D,h,r}}(x)
=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)(x)
\in\{+1,-1\}.
\]
This is the exact pointwise agreement among the selected coordinate,
replayed predictor, and actual learner output required by the sketch row.

Finally, Proposition~\ref{prop:step-003-tie-free-transfer} uses the binary
range to prove the pointwise event identity
\(\{sh\le0\}=\{sh<0\}\) for this score and hence the exact
tie-loss/binary-loss identity (6). The same proposition preserves the
accepted tape-side measurability needed for expectation in the downstream
proof, while the pre-instance map law remains untouched and no selector on
duplicate map fibers is introduced. Midpoint rounding and \(\tau\ge1\) are
already part of the same fixed canonical path and hence cannot create a
replay mismatch; arbitrary adaptivity, every stopping depth, repeated
coordinates, duplicate map fibers, and \(m=0\) are all covered explicitly
by the named results. Together these results prove the exact target-step
claim and export its zero-residual comparison certificate.

## Explicit Rate Audit

None.

## Blockers

None.

## Notation And Assumption Notes

- All theorem-facing symbols in the conclusion --
  \(z^{\mathcal D,h,r}\), \(g_{r,z}\), \(\phi_r\), \(e_z\),
  \(\mathcal O^\rho_{\mathcal D,h}\), and
  \(A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\) -- are
  setting-defined or accepted dependency objects. No new public-facing
  helper is introduced.
- The number \(s\in\{0,\ldots,m\}\), reply-prefix index \(t\), current
  query \(q_{t+1}\), and the two compared taped configurations are
  proof-local objects. The stopping count and configurations are generated
  by the two executions and their required equality is proved by
  Invariant~\ref{inv:step-003-prefix-synchronization}; it is not assumed as
  a primitive condition or local conditional hypothesis.
- The selected vector \(e_{z^{\mathcal D,h,r}}\) is an appendix-local,
  downstream-facing instantiation of the setting-defined standard basis.
  Its coefficient one and all zero coefficients are definitional, not new
  constants or margin parameters. The vector may depend on
  \((\mathcal D,h,r)\) because the downstream use compares a pointwise
  infimum separately for each tape; it is not exported as one shared weight
  or as a function of \(\phi_r\).
- The measurable objects \((\Omega_R,\Sigma_R,\mu)\), \(T\),
  \(\mathscr A_T\), \(Z_{\mathcal D,h}\), and the selected-basis loss are
  appendix-local objects inherited from
  Proposition~\ref{prop:step-002-preinstance-law}. This proof neither
  rebuilds nor enlarges their sigma algebras. It proves only the new exact
  pointwise equality identifying the inherited measurable candidate loss
  with the actual binary loss.
- The pre-instance law \(\mathsf P_A=T_{\#}\mu\) is an accepted
  public-facing dependency object and is not modified after
  \((\mathcal D,h)\) is fixed. Equal coordinates remain separately indexed.
  When \(T\) has duplicate fibers, the selected basis remains tape-side; no
  inverse of \(T\), common fiberwise basis vector, or measurable selection
  is used.
- The only generated conditions consumed by the target assembly are the
  canonical path, total replay/map/law, and measurable selected-basis
  interface supplied by accepted dependencies, plus prefix synchronization,
  terminal equality, coordinate equality, and the tie-free event identity
  proved in this step. There are no local conditional hypotheses, stability
  events, or hidden invariants.
- There are no new constants, radii, thresholds, rates, tolerances, or
  probability conversions. The step's residual is exactly zero. Its
  baseline obligation is preserved pointwise: because the selected score is
  binary, \(L_{\mathrm{tie}}=L_{\mathrm{bin}}\) exactly, including the
  zero-error specialization used downstream. The zero weight is not used.
- At \(m=0\), the accepted dependencies give the unique empty path, the root
  predictor, \(N=1\), and \(e_{\emptyset}=(1)\); every local equality
  reduces to its one-coordinate form. For every allowed \(\tau>0\),
  including \(\tau\ge1\) and midpoint rounding ties, both executions use
  the same fixed canonical path, so the induction has no rounding residual.
- `global_proof.md` was not read or used for this proof. The
  artifact relies only on the live setting, accepted sketch and review,
  accepted dependency proof/review pairs, and the local derivations above.
