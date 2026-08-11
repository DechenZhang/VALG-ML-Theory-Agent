# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For all \(u\in[-1,1]\),
  \(\lvert\rho(u)-u\rvert\le 1/K\le\tau\). Thus the canonical policy is
  tolerance-valid and generates a unique padded path, empty when \(m=0\).
- Depends on: None.
- Assumptions used: `assump:sq-parameter-regime` and
  `assump:universal-adversarial-sq`.
- Technical challenge: Preserve adversarial adaptive semantics and handle
  \(\tau\ge 1\), endpoints, midpoint ties, and zero queries without
  accumulating error.
- Intended proof tool or cited result: Direct grid geometry and finite
  recursion; no cited theorem.
- Output target: Legal canonical oracle and transcript.
- Rate objective: Exact tolerance interface
  \(1/\lceil1/\tau\rceil\le\tau\), fixed finite horizon, and no hidden
  dependence.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:sq-parameter-regime`: \(m\in\mathbb N_0\) and \(\tau>0\).
    The permitted range of \(\varepsilon\) is not needed in this step.
  - `assump:universal-adversarial-sq`: every unrestricted query has range
    in \([-1,1]\); the learner makes at most \(m\) queries; conditioning on
    a complete tape \(r\) makes its queries, stopping decisions, and output
    deterministic; and tolerance validity means an absolute error at most
    \(\tau\) for each current query. The risk guarantee itself is not used
    in this step.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency step proof/review artifacts: None.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:sq-parameter-regime}, for the setting-defined \(K\), \(G\), and deterministic nearest-grid map \(\rho\), every \(u\in[-1,1]\) satisfies \(\lvert\rho(u)-u\rvert\le 1/K\le\tau\); endpoints, midpoint ties, and \(\tau\ge1\) obey the same bound. | Proves the exact, boundary-valid rounding inequality. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq} and Lemma~\ref{lem:step-001-grid-rounding}, for every \((\mathcal D,h)\) the canonical policy \(\mathcal O^\rho_{\mathcal D,h}\) is tolerance-valid at every adaptively selected current query. | Converts the scalar rounding bound into a legal adaptive oracle. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq} and Proposition~\ref{prop:step-001-canonical-oracle}, for every \((\mathcal D,h,r)\) the canonical interaction has a unique actual reply prefix and a unique fixed-padded path \(z^{\mathcal D,h,r}\in G^m\); the padded suffix is unread and the path is empty when \(m=0\). | Proves the exact generated-transcript output, including stopping and the zero-query boundary. |

Atomic step = no. The scalar grid-covering assertion, adaptive oracle
validity, and deterministic padded-path construction are distinct nontrivial
claims, so they are exposed as three local units.

## Cited Result Applications

No external paper result, standard theorem, or dependency-step result is
used.

- **Lemma~\ref{lem:step-001-grid-rounding} (local result).** In current
  notation, under Assumption~\ref{assump:sq-parameter-regime}, the fixed
  endpoint grid and nearest-grid rule satisfy
  \(\lvert\rho(u)-u\rvert\le1/K\le\tau\) for every \(u\in[-1,1]\).
  It is instantiated in Proposition~\ref{prop:step-001-canonical-oracle}
  with \(u=\mathbb E_{x\sim\mathcal D}q(x,h(x))\). Its sole assumption is
  discharged by the primitive conditions \(\tau>0\) and the setting
  definitions of \(K,G,\rho\).
- **Proposition~\ref{prop:step-001-canonical-oracle} (local result).** Under
  the two setting assumptions and the rounding lemma, the canonical reply
  rule is querywise tolerance-valid even for adaptively selected queries.
  Its assumptions are discharged from the primitive query-range and
  absolute-tolerance conventions. It is used by
  Proposition~\ref{prop:step-001-padded-path} and in the target-step
  assembly.
- **Proposition~\ref{prop:step-001-padded-path} (local result).** Under the
  two setting assumptions and the valid deterministic canonical policy,
  finite taped recursion gives one actual reply prefix and fixed padding
  gives one element of \(G^m\), with no padded entry supplied as an oracle
  reply and with the empty element when \(m=0\). Its assumptions are
  discharged from complete-tape determinism, the at-most-\(m\) query bound,
  Proposition~\ref{prop:step-001-canonical-oracle}, and the setting's fixed
  padding convention. This is the transcript interface used in the
  target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Endpoint-grid rounding bound).**
\label{lem:step-001-grid-rounding}
Under Assumption~\ref{assump:sq-parameter-regime}, define
\[
K=\lceil1/\tau\rceil,
\qquad
G=\{-1+2j/K:0\le j\le K\},
\]
and let \(\rho:[-1,1]\to G\) be the setting's fixed deterministic
nearest-grid map. Then, for every \(u\in[-1,1]\),
\[
\lvert\rho(u)-u\rvert\le \frac1K\le\tau.
\]
Moreover, \(\rho(-1)=-1\) and \(\rho(1)=1\); either fixed choice at an
interval midpoint has error exactly \(1/K\); and if \(\tau\ge1\), then
\(K=1\) and the displayed bound remains valid.

**Proof.** Since \(\tau>0\), the number \(1/\tau\) is positive, and hence
\(K=\lceil1/\tau\rceil\) is an integer with
\[
K\ge1
\qquad\text{and}\qquad
K\ge\frac1\tau.
\]
Both sides of the second inequality are positive, so inversion gives
\[
\frac1K\le\tau. \tag{1}
\]

For \(0\le j\le K\), write
\(\gamma_j=-1+2j/K\). These proof-local points satisfy
\[
\gamma_0=-1,
\qquad
\gamma_K=1,
\qquad
\gamma_{j+1}-\gamma_j=\frac2K
\quad(0\le j<K).
\]
The intervals \([\gamma_j,\gamma_{j+1}]\), \(0\le j<K\), cover
\([-1,1]\). If \(u\in[\gamma_j,\gamma_{j+1}]\), then
\[
\min\{u-\gamma_j,\gamma_{j+1}-u\}
\le \frac{\gamma_{j+1}-\gamma_j}{2}
=\frac1K.
\]
Every grid point outside this adjacent pair lies no closer to \(u\) than
one of the two endpoints of the interval. Because \(\rho(u)\) is a nearest
grid point, its distance from \(u\) is therefore this minimum (including
the value zero when \(u\) itself is a grid point). Thus
\(\lvert\rho(u)-u\rvert\le1/K\), and (1) proves the desired chain.

At \(u=-1=\gamma_0\) and \(u=1=\gamma_K\), the nearest-grid distance is
zero, so the endpoints are fixed. At the midpoint
\(u=(\gamma_j+\gamma_{j+1})/2\), both adjacent grid points are at distance
exactly \(1/K\); the stipulated deterministic tie rule chooses one of them,
so it preserves both the bound and uniqueness of the rounded value. Finally,
if \(\tau\ge1\), then \(0<1/\tau\le1\), whence \(K=1\). In that case
\(G=\{-1,1\}\), its covering radius is \(1\), and
\(1=1/K\le\tau\), including the midpoint tie at \(u=0\). \(\square\)

### unit_002: proposition

**Proposition (Canonical-oracle validity).**
\label{prop:step-001-canonical-oracle}
Under Assumptions~\ref{assump:sq-parameter-regime}
and~\ref{assump:universal-adversarial-sq} and
Lemma~\ref{lem:step-001-grid-rounding}, for every distribution \(\mathcal D\)
on \(\mathcal X\) and every \(h\in\mathcal H\), the deterministic policy
\[
\mathcal O^\rho_{\mathcal D,h}(q)
=\rho\!\left(\mathbb E_{x\sim\mathcal D}q(x,h(x))\right)
\]
is tolerance-valid for every current unrestricted SQ query, including when
that query is selected adaptively from the preceding transcript.

**Proof.** Fix arbitrary \((\mathcal D,h)\). For any unrestricted SQ query
\(q:\mathcal X\times\{+1,-1\}\to[-1,1]\), pointwise boundedness gives
\[
-1
\le
u_q:=\mathbb E_{x\sim\mathcal D}q(x,h(x))
\le1.
\]
The reply
\(a_q:=\mathcal O^\rho_{\mathcal D,h}(q)=\rho(u_q)\) therefore satisfies,
by Lemma~\ref{lem:step-001-grid-rounding},
\[
\left|a_q-
\mathbb E_{x\sim\mathcal D}q(x,h(x))\right|
=|\rho(u_q)-u_q|
\le\frac1K
\le\tau. \tag{2}
\]
This argument applies to every bounded query, so it remains valid when the
current query is selected adaptively from the transcript observed so far.
The tolerance condition is querywise: (2) is checked separately at every
reached query, and the oracle definition does not sum discrepancies across
rounds. In particular, no term such as \(m/K\) is needed. Endpoint-valued
expectations are rounded exactly, while a midpoint-valued expectation has a
unique reply because the tie rule is fixed and has error \(1/K\). Hence
\(\mathcal O^\rho_{\mathcal D,h}\) is a tolerance-valid policy in precisely
the setting's adversarial adaptive-oracle convention. \(\square\)

### unit_003: proposition

**Proposition (Unique canonical padded path).**
\label{prop:step-001-padded-path}
Under Assumptions~\ref{assump:sq-parameter-regime}
and~\ref{assump:universal-adversarial-sq} and
Proposition~\ref{prop:step-001-canonical-oracle}, for every distribution
\(\mathcal D\) on \(\mathcal X\), every \(h\in\mathcal H\), and every
complete tape \(r\), the interaction of \(A_r\) with
\(\mathcal O^\rho_{\mathcal D,h}\) determines a unique actual reply prefix
of length at most \(m\). Appending the fixed value \(-1\in G\) after
stopping determines a unique \(z^{\mathcal D,h,r}\in G^m\), and the
appended entries are not oracle replies. If \(m=0\), this path is the unique
empty string.

**Proof.** Fix arbitrary \((\mathcal D,h,r)\). By
Proposition~\ref{prop:step-001-canonical-oracle}, the canonical policy is a
well-defined deterministic reply rule whose replies belong to \(G\).

At the empty prefix, the deterministic
protocol \(A_r\) either stops or issues a uniquely determined first query.
Inductively, once the actually read reply prefix
\((z_1,\ldots,z_{t-1})\) is fixed, taped determinism gives a unique stopping
decision or a unique next query \(q_t\). In the latter case the fixed
canonical rule gives the unique next reply
\[
z_t=\rho\!\left(
\mathbb E_{x\sim\mathcal D}q_t(x,h(x))
\right)\in G.
\]
Because the learner makes at most \(m\) queries, this recursion produces a
unique actual prefix \((z_1,\ldots,z_s)\) for some \(0\le s\le m\).
If \(s<m\), define the remaining entries to be
\[
z_{s+1}=\cdots=z_m=-1.
\]
The padding value belongs to \(G\) because it is the grid point with index
zero. It is appended only after the protocol has stopped, so none of these
suffix entries is supplied to the oracle or requires a tolerance check.
The deterministic recursion, the deterministic midpoint convention, and
the fixed padding value together prove uniqueness of the full element
\(z^{\mathcal D,h,r}\in G^m\).

When \(m=0\), Assumption~\ref{assump:universal-adversarial-sq} permits no
query. The recursion has no round, no oracle reply is requested, and no
padding entry is added; by the zero-fold Cartesian-product convention,
\(G^0=\{\emptyset\}\), so
\(z^{\mathcal D,h,r}=\emptyset\). Thus validity along this interaction is
vacuous and its padded path is uniquely empty. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-001-grid-rounding} proves, under the declared primitive
parameter assumption, the exact first sentence of the target:
\[
\forall u\in[-1,1],
\qquad
|\rho(u)-u|\le\frac1K\le\tau.
\]
Its proof explicitly includes \(u=\pm1\), every midpoint tie, and the
regime \(\tau\ge1\).

Proposition~\ref{prop:step-001-canonical-oracle} applies that scalar bound
to every current query, including queries selected from earlier replies,
and therefore proves that \(\mathcal O^\rho_{\mathcal D,h}\) is a legal
tolerance-valid adaptive policy for every \((\mathcal D,h)\).
Proposition~\ref{prop:step-001-padded-path} then uses complete-tape
determinism and the at-most-\(m\) query bound to produce exactly one actual
reply prefix for every \(r\), and it uses only the fixed post-stop value
\(-1\in G\) to produce the unique full path
\(z^{\mathcal D,h,r}\in G^m\). It also proves that the path is
\(\emptyset\) when \(m=0\). Since each executed reply satisfies the
tolerance bound separately and padding is never executed, no error
accumulates. These three local results establish the exact target-step claim
and its legal canonical-oracle/transcript output.

## Explicit Rate Audit

- Exposed variables: \(m\in\mathbb N_0\), \(\tau>0\), and
  \(K=\lceil1/\tau\rceil\), with exact radius \(1/K\). The primitive
  \(\varepsilon\) is fixed but does not enter this step.
- Hidden constants may depend on: None; there are no hidden constants.
- Hidden constants may not depend on: \(\mathcal X\), \(\mathcal H\),
  \(\mathcal D\), \(h\), \(r\), the adaptive transcript, \(m\), \(\tau\),
  or any query.
- Fixed quantities: The learner \(A\), tape law \(\mu\), and deterministic
  nearest-grid tie rule are fixed as in the setting. The assertion is
  uniform over \((\mathcal D,h,r)\) and every reached adaptive prefix; no
  asymptotic limit is taken.
- Probability mode: Deterministic, pointwise oracle validity. The displayed
  population query expectation is evaluated exactly; there is no
  high-probability event, tape averaging, or confidence parameter.
- Horizon mode: Fixed finite horizon of at most \(m\) executed queries,
  with a length-\(m\) index after padding and the empty path at \(m=0\).
- Norm mode: Absolute scalar reply error
  \(\lvert a-\mathbb E_{\mathcal D}q\rvert\), not a risk or vector norm.
- Admissibility conditions and auxiliary tolerances: \(\tau>0\),
  \(m\in\mathbb N_0\), and \(q\in[-1,1]\) pointwise. There is no auxiliary
  tolerance.
- Term absorption or simplification inequalities: No term is absorbed or
  dropped. The complete quantitative implication is
  \[
  K=\lceil1/\tau\rceil\ge1/\tau>0
  \quad\Longrightarrow\quad
  1/K\le\tau,
  \]
  applied independently to each executed reply.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: None; this is already the
  exact target tolerance interface.
- Baseline-reduction check: At \(\tau\ge1\), \(K=1\) and the exact radius
  is \(1\le\tau\); at \(m=0\), there are no reply errors and the transcript
  is exactly empty. No remainder is introduced in either boundary regime.

## Blockers

None.

## Notation And Assumption Notes

- The public-facing objects \(K\), \(G\), \(\rho\),
  \(\mathcal O^\rho_{\mathcal D,h}\), and
  \(z^{\mathcal D,h,r}\) are exactly the objects defined in `setting.md`;
  they are not imported from another branch or source. The oracle and path
  are the minimal public-facing interface exported to downstream steps.
- The radius \(1/K\) is public-facing because it appears in the target
  claim. Its constant provenance is a direct expression in the
  setting-defined \(K=\lceil1/\tau\rceil\), and its bound is proved by
  Lemma~\ref{lem:step-001-grid-rounding}; it is not an assumed bounded
  quantity.
- The symbols \(\gamma_j=-1+2j/K\), \(u_q\), \(a_q\), the round-indexed
  queries and replies \(q_t,z_t\), the stopping-prefix length \(s\), and
  the dummy indices \(j,t\) are proof-local. They are respectively direct
  abbreviations for setting-defined grid points, the setting's population
  query expectation, the canonical reply, objects generated by the taped
  recursion, its number of actually executed queries, and finite indices.
  No one-off helper is exported.
- The fixed padding value \(-1\) is public-facing as part of the setting's
  transcript convention and has direct provenance: \(-1=-1+2\cdot0/K\in
  G\). Padding is an index construction after stopping, not a generated
  oracle reply, event, or extra assumption.
- Canonical-oracle validity is a generated-object fact proved in
  Proposition~\ref{prop:step-001-canonical-oracle}; existence and uniqueness
  of the padded path are generated-object facts proved in
  Proposition~\ref{prop:step-001-padded-path}. They are not treated as
  primitive conditions. There is no accepted dependency invariant and no
  local conditional hypothesis.
- `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was confirmed `ACCEPTED`. Its step-relevant
  planning guidance was to keep validity querywise, to separate executed
  replies from post-stop padding, and to handle the zero-query path
  directly. It was not used as proof evidence, a cited result, an assumption
  source, or authority to change the accepted target claim.
