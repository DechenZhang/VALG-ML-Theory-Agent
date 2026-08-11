# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Replay and padding define every \(g_{r,z}\), hence
  \(\phi_r\) and a pre-instance pushforward law in exact dimension
  \(N=(K+1)^m\), with \(N=1\) at \(m=0\).
- Depends on: `step_001`.
- Assumptions used: `assump:sq-parameter-regime` and
  `assump:universal-adversarial-sq`.
- Technical challenge: Resolve adaptivity and stopping while preserving
  pre-instance quantifier order on arbitrary domains.
- Intended proof tool or cited result: Complete-tape determinization,
  exhaustive enumeration, padding, and pushforward; no cited theorem.
- Output target: Exact random feature map, law, and count.
- Rate objective: Exact structural rate
  \((\lceil1/\tau\rceil+1)^m\), with no hidden constant or domain
  dependence.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:sq-parameter-regime`: \(m\in\mathbb N_0\), \(\tau>0\),
    \(K=\lceil1/\tau\rceil\), and
    \(G=\{-1+2j/K:0\le j\le K\}\). The permitted range of
    \(\varepsilon\) is not used in this step.
  - `assump:universal-adversarial-sq`: the learner \(A\) and complete-tape
    law \(\mu\) are fixed independently of \((\mathcal D,h)\); conditioning
    on a complete tape \(r\) makes every query, transition, stopping
    decision, and terminal predictor deterministic; \(A_r\) makes at most
    \(m\) queries and returns a binary predictor
    \(\mathcal X\to\{+1,-1\}\). The learner's risk guarantee is not used in
    this step.
- Derived invariants supplied by accepted dependencies:
  - The current `step_001` proof, unit attempt 1, is certified by its
    matching review with status `ACCEPTED`. In particular,
    Lemma~\ref{lem:step-001-grid-rounding} certifies the same positive
    integer \(K\) and endpoint grid \(G\), and
    Proposition~\ref{prop:step-001-padded-path} certifies the fixed
    post-stop value \(-1\in G\), the unread-suffix convention, and the
    empty-string convention at \(m=0\). Its instance-dependent canonical
    oracle and path are not used to construct the pre-instance map law.
- Local conditional hypotheses: None.
- Accepted dependency step proof/review artifacts:
  - `perspective_1/idea_2/proof_steps/step_001/proof.md`, sketch attempt
    1, unit attempt 1.
  - `perspective_1/idea_2/proof_steps/step_001/review.md`, matching
    `step_001` unit attempt 1, with `Step-Review Status = ACCEPTED`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq} and the endpoint-grid convention certified by Lemma~\ref{lem:step-001-grid-rounding}, every complete tape \(r\) and every \(z\in G^m\) determine a terminal binary predictor \(g_{r,z}\); if the replay stops after reading a prefix, all continuations of that prefix have the same terminal predictor, with no suffix entry read. | Proves total deterministic replay and the exact early-stopping/padding semantics. |
| `unit_002` | lemma | Under Assumption~\ref{assump:sq-parameter-regime} and Lemma~\ref{lem:step-001-grid-rounding}, the grid values are distinct, \(\lvert G\rvert=K+1\), and \(\lvert G^m\rvert=(K+1)^m=(\lceil1/\tau\rceil+1)^m\), including \(G^0=\{\emptyset\}\) and count one at \(m=0\). | Proves the exact coordinate count without a hidden factor or an omitted empty-product case. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq}, Proposition~\ref{prop:step-002-total-replay}, and Lemma~\ref{lem:step-002-response-count}, the fixed lexicographic enumeration of \(G^m\) defines for every tape \(r\) a total map \(\phi_r:\mathcal X\to\{+1,-1\}^N\subset\mathbb R^N\), constructed without \((\mathcal D,h)\) and valid on arbitrary or infinite \(\mathcal X\); repeated terminal predictors remain separate legal coordinates. | Constructs the exact pre-instance response-tree feature map in the counted ambient dimension. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq} and Proposition~\ref{prop:step-002-feature-map}, pushing \(\mu\) forward through \(r\mapsto\phi_r\) defines \(\mathsf P_A=\operatorname{Law}(\phi_R)\), one probability law on maps into \(\mathbb R^N\) fixed before every \((\mathcal D,h)\); noninjective tape fibers do not affect the law. | Establishes the exact pre-instance pushforward law and its independence from the instance. |

Atomic step = no. Deterministic replay, finite-product counting, construction
of the vector-valued map, and construction of its probability law are
independent nontrivial claims and are exposed separately.

## Cited Result Applications

No external paper result or standard theorem is used as proof authority.
The accepted dependency and the local results used later are restated here.

- **Lemma~\ref{lem:step-001-grid-rounding} (accepted dependency result).**
  Under Assumption~\ref{assump:sq-parameter-regime}, the setting-defined
  \(K=\lceil1/\tau\rceil\) is a positive integer, \(G\) is the fixed
  endpoint grid, and the deterministic nearest-grid rule obeys
  \(\lvert\rho(u)-u\rvert\le1/K\le\tau\) on \([-1,1]\). The current step
  uses only the positive-integer and common-grid part of this result.
  Its assumption is the primitive \(\tau>0\), already present here.
- **Proposition~\ref{prop:step-001-padded-path} (accepted dependency
  result).** Under the two setting assumptions and the accepted
  canonical-oracle result, each canonical taped interaction has a unique
  prefix, fixed \(-1\) padding is appended only after stopping, and the
  path is the unique empty string when \(m=0\). The current step uses this
  only to preserve the accepted unread-padding and empty-string
  conventions. It does not use the instance-dependent oracle or path in
  constructing \(g_{r,z}\), \(\phi_r\), or \(\mathsf P_A\).
- **Proposition~\ref{prop:step-002-total-replay} (local result).** Under
  Assumptions~\ref{assump:sq-parameter-regime}
  and~\ref{assump:universal-adversarial-sq} and the accepted common-grid
  convention, every
  \((r,z)\) gives one terminal binary predictor, and every suffix below an
  early terminal prefix carries the same predictor. Complete-tape
  determinism, the at-most-\(m\) budget, and binary terminal output
  discharge its assumptions. It is used by
  Proposition~\ref{prop:step-002-feature-map}.
- **Lemma~\ref{lem:step-002-response-count} (local result).** Under the
  primitive parameter regime and the accepted positive-integer grid
  convention, \(\lvert G^m\rvert=(K+1)^m\), with value one for \(m=0\).
  It is used by Proposition~\ref{prop:step-002-feature-map} and in the
  target-step assembly.
- **Proposition~\ref{prop:step-002-feature-map} (local result).** Under
  Assumptions~\ref{assump:sq-parameter-regime}
  and~\ref{assump:universal-adversarial-sq} and the preceding replay and
  counting results,
  every tape gives a total \(N\)-coordinate binary feature map on
  \(\mathcal X\). It is used by
  Proposition~\ref{prop:step-002-preinstance-law} and in the target-step
  assembly.
- **Proposition~\ref{prop:step-002-preinstance-law} (local result).** Under
  Assumptions~\ref{assump:sq-parameter-regime}
  and~\ref{assump:universal-adversarial-sq} and the feature-map proposition,
  the
  pushforward of the complete-tape law is a probability law on exactly
  those maps, and its construction contains no \((\mathcal D,h)\). It is
  used in the target-step assembly and exported to downstream steps.

## Local Derivation

### unit_001: proposition

**Proposition (Total padded response tree).**
\label{prop:step-002-total-replay}
Under Assumptions~\ref{assump:sq-parameter-regime}
and~\ref{assump:universal-adversarial-sq} and the endpoint-grid convention
certified by Lemma~\ref{lem:step-001-grid-rounding}, for every complete tape
\(r\) and every full response string
\(z=(z_1,\ldots,z_m)\in G^m\), deterministic replay of \(A_r\) defines a
terminal binary predictor
\[
g_{r,z}:\mathcal X\longrightarrow\{+1,-1\}.
\]
If this replay stops after reading exactly \(s<m\) replies, then for every
\(\widetilde z\in G^m\) with
\(\widetilde z_t=z_t\) for \(1\le t\le s\),
\[
g_{r,\widetilde z}=g_{r,z}
\quad\text{as functions on }\mathcal X.
\]
Thus suffix symbols are unread, copying the terminal label to every
descendant gives the depth-\(m\) padded response tree, and appending the
fixed suffix value \(-1\in G\) selects one such full continuation. If
\(m=0\), \(g_{r,\emptyset}\) is the taped learner's no-query terminal
predictor.

**Proof.** Fix \(r\) and \(z\in G^m\). Complete-tape conditioning makes the
protocol deterministic. At the empty reply prefix, it therefore has one
well-defined action: stop and return a terminal predictor, or issue one
well-defined first query. More generally, after replies
\((z_1,\ldots,z_{t-1})\) have actually been supplied, its next query,
stopping decision, and terminal output, if it stops, are deterministic
functions of that prefix. If it issues query \(t\), replay supplies the
next prescribed value \(z_t\in G\). Here \(K>0\) and
\(0\le j\le K\) imply
\[
-1\le -1+\frac{2j}{K}\le1,
\]
so \(G\subseteq[-1,1]\).

Iterating this rule can execute at most \(m\) queries. By
Assumption~\ref{assump:universal-adversarial-sq}, the protocol then returns
a binary predictor. This proves that \(g_{r,z}\) exists and is a total
function on \(\mathcal X\) for every full \(z\). This synthetic replay
requires no distribution, target, population expectation, or
tolerance-validity certificate: it is the setting's response-tree
evaluation of the fixed deterministic protocol on a prescribed string of
numeric reply values.

Suppose the replay on \(z\) stops after reading \(s<m\) entries, and let
\(\widetilde z\) share its first \(s\) entries. An induction on
\(t=0,\ldots,s\) shows that the two replays have the same deterministic
state after each of the first \(t\) replies. The base case is the common
taped initial state. For the induction step, equality of states gives the
same next query and transition, while
\(\widetilde z_t=z_t\) gives the same reply. At the state reached after
\(s\) replies, both executions therefore make the same stopping decision
and return the same binary predictor. Neither execution requests entry
\(s+1\), so no later symbol can affect the output. This proves the
displayed suffix-invariance identity. It includes \(s=0\), when stopping
occurs at the root; for \(s=m\), there is no suffix claim to check.

The padded depth-\(m\) tree is therefore obtained by assigning that same
terminal predictor to every full descendant of a terminal prefix. Since
\(-1=-1+2\cdot0/K\in G\), the all-\(-1\) suffix used in the setting is one
distinguished descendant, but it is never read after stopping. When
\(m=0\), no response is supplied. The at-most-zero-query protocol returns
its root binary predictor, which is precisely
\(g_{r,\emptyset}\). \(\square\)

### unit_002: lemma

**Lemma (Exact response-string count).**
\label{lem:step-002-response-count}
Under Assumption~\ref{assump:sq-parameter-regime} and
Lemma~\ref{lem:step-001-grid-rounding}, the values
\[
-1+\frac{2j}{K},\qquad j=0,\ldots,K,
\]
are pairwise distinct. Consequently,
\[
\lvert G\rvert=K+1,
\qquad
\lvert G^m\rvert=(K+1)^m
=\bigl(\lceil1/\tau\rceil+1\bigr)^m.
\]
For \(m=0\), \(G^0=\{\emptyset\}\), so both sides equal one.

**Proof.** The accepted grid result and \(\tau>0\) give \(K\ge1\). If
\(0\le j<j'\le K\), then
\[
\left(-1+\frac{2j'}K\right)
-\left(-1+\frac{2j}K\right)
=\frac{2(j'-j)}K>0.
\]
Thus the \(K+1\) displayed values are pairwise distinct and
\(\lvert G\rvert=K+1\).

We prove the product count for every \(m\in\mathbb N_0\). By definition,
the zero-fold Cartesian product has the single element \(\emptyset\), so
\[
\lvert G^0\rvert=1=(K+1)^0.
\]
If \(\lvert G^t\rvert=(K+1)^t\) for some \(t\ge0\), every element of
\(G^{t+1}\) consists uniquely of a length-\(t\) string and one final grid
value. Hence
\[
\lvert G^{t+1}\rvert
=\lvert G^t\rvert\,\lvert G\rvert
=(K+1)^t(K+1)
=(K+1)^{t+1}.
\]
Finite induction gives the formula at the setting's \(m\). Substituting
\(K=\lceil1/\tau\rceil\) gives the final equality. \(\square\)

### unit_003: proposition

**Proposition (Finite response-tree feature map).**
\label{prop:step-002-feature-map}
Under Assumptions~\ref{assump:sq-parameter-regime}
and~\ref{assump:universal-adversarial-sq},
Proposition~\ref{prop:step-002-total-replay}, and
Lemma~\ref{lem:step-002-response-count}, fix once and for all the setting's
lexicographic order on \(G^m\), and put
\[
N=\lvert G^m\rvert=(K+1)^m.
\]
Then, for every complete tape \(r\),
\[
\phi_r(x):=\bigl(g_{r,z}(x)\bigr)_{z\in G^m}
\]
defines a total feature map
\[
\phi_r:\mathcal X\longrightarrow
\{+1,-1\}^{N}\subseteq\mathbb R^N.
\]
This remains true for arbitrary, including infinite, \(\mathcal X\), after
stopping at any prefix, and when distinct response strings yield identical
terminal predictors. The map uses only \(A_r\), \(m\), \(\tau\), the
resulting grid, its fixed order, and the padding convention, and therefore
does not depend on \((\mathcal D,h)\) or a realized canonical transcript.
At \(m=0\),
\[
\phi_r(x)=\bigl(g_{r,\emptyset}(x)\bigr)\in\mathbb R^1.
\]

**Proof.** Proposition~\ref{prop:step-002-total-replay} supplies one binary
function \(g_{r,z}\) for every member \(z\) of the finite common index set
\(G^m\). Lemma~\ref{lem:step-002-response-count} shows that this index set
has exactly \(N=(K+1)^m\) elements. The fixed lexicographic order therefore
turns the displayed family into an \(N\)-tuple. For each \(x\in\mathcal X\)
every entry \(g_{r,z}(x)\) belongs to \(\{+1,-1\}\), proving
\(\phi_r(x)\in\{+1,-1\}^N\subseteq\mathbb R^N\).

Every coordinate used here was obtained by the synthetic replay in
Proposition~\ref{prop:step-002-total-replay}. That replay fixes only the
taped protocol and a numeric string \(z\in G^m\). It never chooses an
instance, evaluates a population query, or follows a realized canonical
path. Thus \(\phi_r\) is already fixed before \((\mathcal D,h)\).

No enumeration, cardinality bound, sigma-finiteness condition, or other
structure on \(\mathcal X\) is used: the construction evaluates a finite
list of already total predictor functions at whichever \(x\) is given.
Hence an infinite domain causes no difficulty. If a replay stops early,
Proposition~\ref{prop:step-002-total-replay} assigns its terminal predictor
to every full continuation, so every corresponding coordinate remains
defined. If \(g_{r,z}=g_{r,z'}\) for distinct strings \(z\ne z'\), the two
equal functions simply occupy two differently labeled coordinates of the
\(N\)-tuple. Coordinate count concerns the common index set \(G^m\), not
the number of distinct function values, so no quotient or reduction of
\(N\) occurs.

When \(m=0\), the index set is the singleton \(\{\emptyset\}\) and
\(N=1\). Proposition~\ref{prop:step-002-total-replay} supplies the
no-query root predictor \(g_{r,\emptyset}\), giving exactly the displayed
one-coordinate map. \(\square\)

### unit_004: proposition

**Proposition (Pre-instance pushforward feature law).**
\label{prop:step-002-preinstance-law}
Under Assumptions~\ref{assump:sq-parameter-regime}
and~\ref{assump:universal-adversarial-sq} and
Proposition~\ref{prop:step-002-feature-map}, let \(R\sim\mu\) be the
complete learner tape and define
\[
\mathsf P_A:=(r\mapsto\phi_r)_{\#}\mu
=\operatorname{Law}(\phi_R).
\]
Then \(\mathsf P_A\) is a probability law on feature maps
\(\Phi:\mathcal X\to\mathbb R^N\), where
\[
N=(K+1)^m
=\bigl(\lceil1/\tau\rceil+1\bigr)^m.
\]
It is determined before and shared by every \((\mathcal D,h)\). Distinct
tapes may induce the same map without changing this conclusion.

**Proof.** Let \(\Omega_R\) denote the complete-tape sample space and let
\[
\mathfrak F_N:=\{\Phi:\mathcal X\to\mathbb R^N\}.
\]
Write \(T:\Omega_R\to\mathfrak F_N\) for the proof-local map
\(T(r)=\phi_r\). For every measurable
\(B\subseteq\mathfrak F_N\) in the setting's randomized-feature-map
convention, define
\[
\mathsf P_A(B)
:=\mu\bigl(T^{-1}(B)\bigr)
=\mu\{r:\phi_r\in B\}. \tag{1}
\]
This is precisely the definition of the pushforward
\(T_{\#}\mu\), equivalently the law of \(\phi_R\). In particular, inverse
images preserve the empty set, complements, and countable disjoint unions,
so (1) inherits nonnegativity, total mass
\[
\mathsf P_A(\mathfrak F_N)=\mu(\Omega_R)=1,
\]
and countable additivity from \(\mu\). Thus it is a probability law. The
formalized setting explicitly declares
\(\mathsf P_A=\operatorname{Law}(\phi_R)\); thus the measurability used in
(1) is part of that declared random-map object, not a new condition. No
topology or finiteness assumption on \(\mathcal X\) is added.

The construction order makes the quantifiers explicit. Before any
distribution or target is chosen, fix the learner \(A\), its tape law
\(\mu\), \(m\), \(\tau\), the resulting finite grid \(G\), the common
lexicographic coordinate order, and the post-stop padding convention.
For each tape \(r\), Proposition~\ref{prop:step-002-total-replay} uses only
this fixed data and synthetic strings \(z\in G^m\) to construct
\(g_{r,z}\); Proposition~\ref{prop:step-002-feature-map} then constructs
\(\phi_r\). Neither construction refers to \(\mathcal D\), \(h\), an
instance-specific oracle, a population expectation, or a realized
canonical transcript. Formula (1) finally uses only this fixed map \(T\)
and the fixed law \(\mu\). Therefore the resulting \(\mathsf P_A\) is one
pre-instance law that is unchanged when \((\mathcal D,h)\) is later
varied.

If \(T(r)=T(r')\) for distinct tapes, both tapes lie in the same preimage
fibers in (1); pushforward never requires \(T\) to be injective or the tape
law to be discrete. Likewise, coordinate repetitions inside a map were
already shown harmless by Proposition~\ref{prop:step-002-feature-map}.
Hence duplicate tapes, duplicate maps, and duplicate terminal predictors
do not affect existence of the law or its exact ambient dimension.
\(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-002-total-replay} proves that complete-tape
determinization and exhaustive replay define every required binary
predictor \(g_{r,z}\). Its suffix-invariance conclusion gives the exact
padding semantics: after a terminal prefix, every depth-\(m\) continuation
has the same label, and the setting's fixed \(-1\) suffix is unread. This
handles root stopping, intermediate stopping, and use of the full query
budget.

Lemma~\ref{lem:step-002-response-count} proves without approximation that
\[
\lvert G^m\rvert=(K+1)^m
=\bigl(\lceil1/\tau\rceil+1\bigr)^m=:N.
\]
Proposition~\ref{prop:step-002-feature-map} uses exactly this common
finite index set and the replayed predictors to define
\(\phi_r:\mathcal X\to\mathbb R^N\) on every arbitrary domain. Repeated
predictors are permitted because response strings, rather than distinct
function values, label coordinates.

Proposition~\ref{prop:step-002-preinstance-law} then pushes the complete-tape
law through \(r\mapsto\phi_r\), producing exactly
\(\mathsf P_A=\operatorname{Law}(\phi_R)\). Its proof verifies that this
law uses only the learner, tape law, finite response grid, ordering, and
padding fixed before an instance; it is therefore independent of and shared
by all \((\mathcal D,h)\). Duplicate tape-to-map fibers require no inverse
selection and do not alter the pushforward.

Finally, when \(m=0\), the counting lemma gives
\(G^0=\{\emptyset\}\) and \(N=(K+1)^0=1\), the replay proposition gives
the taped root predictor \(g_{r,\emptyset}\), and the feature-map
proposition gives its one-coordinate map. Thus the four named results prove
the exact accepted target claim, including all requested stopping,
duplication, domain, quantifier-order, and boundary semantics.

## Explicit Rate Audit

- Exposed variables: \(m\in\mathbb N_0\), \(\tau>0\),
  \(K=\lceil1/\tau\rceil\), and
  \(N=(K+1)^m=(\lceil1/\tau\rceil+1)^m\). The primitive
  \(\varepsilon\) is fixed but does not enter this construction.
- Hidden constants may depend on: None; the dimension identity is exact.
- Hidden constants may not depend on: \(\mathcal X\),
  \(\lvert\mathcal X\rvert\), \(\mathcal H\), \(\mathcal D\), \(h\),
  \(r\), any transcript, \(m\), or \(\tau\). There are no hidden
  constants.
- Fixed quantities: The domain and class, learner \(A\), complete-tape law
  \(\mu\), grid ordering, and padding convention are fixed. The law
  \(\mathsf P_A\) is constructed before and shared by every
  \((\mathcal D,h)\).
- Probability mode: Exact pushforward of \(R\sim\mu\). There is no
  high-probability event, conditioning event, confidence parameter, or
  averaging over \((\mathcal D,h)\).
- Horizon mode: Fixed finite response-tree depth \(m\), while each replay
  executes at most \(m\) queries. Early terminal nodes are copied to all
  full continuations. At \(m=0\), the tree has one root coordinate.
- Norm mode: No norm or risk bound is used. The quantitative object is the
  exact ambient coordinate dimension of maps into \(\mathbb R^N\).
- Admissibility conditions and auxiliary tolerances:
  \(m\in\mathbb N_0\), \(\tau>0\), complete-tape determinism, at most
  \(m\) queries, and binary terminal output. There is no auxiliary
  tolerance.
- Term absorption or simplification inequalities: No term is dropped,
  dominated, or absorbed. Pairwise grid-point separation gives
  \(\lvert G\rvert=K+1\), and the displayed finite induction gives
  \(\lvert G^m\rvert=(K+1)^m\) exactly.
- Probability conversion: None. The identity
  \(\mathsf P_A=(r\mapsto\phi_r)_{\#}\mu\) is the defining pushforward,
  not a change of probability mode.
- Contribution to any Rate Specialization Bridge: Supplies the exact
  downstream dimension interface
  \((\lceil1/\tau\rceil+1)^m\); no further specialization occurs in this
  step.
- Baseline-reduction check: At \(m=0\), the exact empty-product convention
  gives \(N=1\), and the sole coordinate is the no-query root predictor.
  For \(\tau\ge1\), the accepted dependency gives \(K=1\), so the same
  exact formula specializes to \(N=2^m\). Neither case introduces a loss
  or remainder.

## Blockers

None.

## Notation And Assumption Notes

- The public-facing objects \(K\), \(G\), \(N\), \(g_{r,z}\),
  \(\phi_r\), and \(\mathsf P_A\) are exactly the objects defined in
  `setting.md`. The minimal interface exported by this step is the family
  of response-tree predictors, the \(N\)-coordinate maps, their single
  pre-instance law, and the exact count.
- Prefixes \(z_{1:s}\), alternative continuations \(\widetilde z\), the
  stopping depth \(s\), the induction index \(t\), and the ordered grid
  indices \(j,j'\) are proof-local. They are generated by or directly
  index finite replay and are not exported.
- The tape sample space \(\Omega_R\), the set
  \(\mathfrak F_N=\{\Phi:\mathcal X\to\mathbb R^N\}\),
  \(T(r)=\phi_r\), and the measurable set \(B\) in the pushforward proof
  are proof-local notation for the setting-defined random map and its law.
  They introduce no additional topology, probability mode, or
  measurability assumption.
- The exact count \(N\) is public-facing and directly defined from the
  setting quantities \(m,\tau,K,G\); its equality to
  \((\lceil1/\tau\rceil+1)^m\) is proved by
  Lemma~\ref{lem:step-002-response-count}, not assumed. No other constant,
  radius, threshold, rate, or bounded helper quantity is introduced.
- Totality and suffix invariance of \(g_{r,z}\) are generated-object facts
  proved by Proposition~\ref{prop:step-002-total-replay}. Totality of
  \(\phi_r\), including on infinite \(\mathcal X\), is proved by
  Proposition~\ref{prop:step-002-feature-map}. Existence, probability-law
  status, duplicate-fiber handling, and independence of \(\mathsf P_A\)
  from \((\mathcal D,h)\) are proved by
  Proposition~\ref{prop:step-002-preinstance-law}. None is treated as a
  primitive condition or local conditional hypothesis.
- The accepted `step_001` dependency supplies the common endpoint grid
  and fixed unread-padding/empty-path conventions. The present proof does
  not consume its generated instance-dependent oracle or transcript, so
  no dependence on \((\mathcal D,h)\) enters the response-tree law.
- `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was confirmed current and `ACCEPTED`. Its
  step-relevant planning guidance was to construct the full taped response
  tree before choosing an instance, prove suffix invariance explicitly,
  count the empty product, and separate duplicate coordinates from
  duplicate pushforward fibers. It was not used as proof evidence, a cited
  result, an assumption source, or authority to change the accepted target
  claim.
