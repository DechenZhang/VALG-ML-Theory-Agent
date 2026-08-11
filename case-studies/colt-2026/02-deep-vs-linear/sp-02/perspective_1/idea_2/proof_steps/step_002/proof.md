# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 2

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
| `unit_004` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq} and Proposition~\ref{prop:step-002-feature-map}, the complete-tape probability space and the final sigma algebra induced by \(T:r\mapsto\phi_r\) define a measurable \(T\) and the pre-instance pushforward law \(\mathsf P_A=T_{\#}\mu\); coordinate evaluations, the pointwise optimal tie-loss functional, and the tape-selected basis loss used downstream are measurable, including on noninjective fibers. | Establishes a well-defined, downstream-compatible pre-instance law and closes the attempt-1 measurability defect. |

Atomic step = no. Deterministic replay, finite-product counting, construction
of the vector-valued map, and construction of its probability law are
independent nontrivial claims and are exposed separately.

## Cited Result Applications

No external paper result is used. The only standard theorem used is
Dynkin's \(\pi\)-\(\lambda\) lemma, restated and instantiated below. The
accepted dependency and the local results used later are also restated here.

- **Dynkin's \(\pi\)-\(\lambda\) lemma (standard measure-theoretic
  result).** If \(\mathcal P\) is a \(\pi\)-system of subsets of a set
  \(S\), \(\mathcal L\) is a \(\lambda\)-system on \(S\), and
  \(\mathcal P\subseteq\mathcal L\), then
  \(\sigma(\mathcal P)\subseteq\mathcal L\). In the application below,
  \(S=\Omega_R\times\mathcal X\), \(\mathcal P\) is the collection of
  measurable rectangles \(E\times C\), and \(\mathcal L\) is the
  collection of product-measurable sets whose \(\mathcal D\)-measures of
  sections are measurable functions of the tape. Measurable rectangles
  generate \(\Sigma_R\otimes\mathscr X\) by definition; closure of
  \(\mathcal L\) and the inclusion
  \(\mathcal P\subseteq\mathcal L\) are checked explicitly in
  Proposition~\ref{prop:step-002-preinstance-law}. The conclusion is used
  only to justify the parameter-integral calculation (7).

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
  the final sigma algebra induced by the taped feature-map construction
  makes \(T:r\mapsto\phi_r\) measurable and its pushforward a probability
  law. The proposition proves, rather than assumes, that coordinate
  evaluations and the downstream optimal-risk and selected-basis
  quantities factor through measurable finite-execution tape statistics.
  Its construction contains no \((\mathcal D,h)\). It is used in the
  target-step assembly and exported to downstream steps.

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
Proposition~\ref{prop:step-002-feature-map}, write
\((\Omega_R,\Sigma_R,\mu)\) for the probability space of the complete
learner tape \(R\), realized as the identity map on \(\Omega_R\). Let
\[
\mathfrak F_N:=\{\Phi:\mathcal X\to\mathbb R^N\},
\qquad
T:\Omega_R\to\mathfrak F_N,\quad T(r)=\phi_r,
\]
and equip \(\mathfrak F_N\) with
\[
\mathscr A_T
:=\{B\subseteq\mathfrak F_N:T^{-1}(B)\in\Sigma_R\}. \tag{1}
\]
Then \(\mathscr A_T\) is a sigma algebra, \(T\) is
\((\Sigma_R,\mathscr A_T)\)-measurable, and
\[
\mathsf P_A:=T_{\#}\mu,\qquad
\mathsf P_A(B)=\mu(T^{-1}(B)),\quad B\in\mathscr A_T, \tag{2}
\]
is a probability law on feature maps into
\(\mathbb R^N\), with
\[
N=(K+1)^m
=\bigl(\lceil1/\tau\rceil+1\bigr)^m.
\]
The measurable space and law are fixed before and shared by every
\((\mathcal D,h)\). They support the downstream coordinate evaluations,
the functional
\[
F_{\mathcal D,h}(\Phi)
:=\inf_{w\in\mathbb R^N}
L_{\mathrm{tie}}\bigl(
\mathcal D,h,x\mapsto\langle w,\Phi(x)\rangle
\bigr), \tag{3}
\]
and the tape-selected basis loss associated with the accepted canonical
path. More precisely, for each fixed \((\mathcal D,h)\), both
\(F_{\mathcal D,h}\) and every coordinate loss are
\(\mathscr A_T\)-measurable, the selected-basis loss is
\(\Sigma_R\)-measurable, and
\[
\mathbb E_{\Phi\sim\mathsf P_A}F_{\mathcal D,h}(\Phi)
=
\mathbb E_{R\sim\mu}F_{\mathcal D,h}(\phi_R)
\le
\mathbb E_{R\sim\mu}
L_{\mathrm{tie}}\bigl(
\mathcal D,h,
x\mapsto
\langle e_{z^{\mathcal D,h,R}},\phi_R(x)\rangle
\bigr). \tag{4}
\]
Distinct tapes may induce the same map; no inverse tape selection is
required in (1)--(4).

**Proof.**

**The complete-tape measurable interface.**
The notation \(R\sim\mu\) for a randomized algorithm has a
measure-theoretic type, not merely a set-theoretic one:
\((\Omega_R,\Sigma_R,\mu)\) is the complete-tape probability space, and
finite executions of the learner's measurable transition and output maps
produce random variables. Let \(\mathscr X\) denote the measurable
structure on \(\mathcal X\) with respect to which the distributions,
queries, predictors, and losses in the setting are defined. For every
fixed full reply string \(z\in G^m\), measurable finite execution means
\[
(r,x)\longmapsto g_{r,z}(x) \tag{5}
\]
is \((\Sigma_R\otimes\mathscr X)\)-measurable. This applies to synthetic
strings whether or not they are tolerance-valid: validity controls the
learner guarantee, whereas (5) is the input-output measurability of the
fixed randomized procedure on a prescribed finite numeric input.

This is not an additional theorem-facing regularity premise. It is the
measurable-output content of the setting's terms "randomized algorithm,"
"complete random tape \(R\sim\mu\)," and
\(\mathbb E_{R\sim\mu}\) of a terminal-predictor loss. Mere determinism
after fixing \(r\) would not imply (5); the measurable execution type of
the randomized learner is the source used here. Because \(G^m\) is finite,
Proposition~\ref{prop:step-002-feature-map} and (5) imply that
\[
(r,x)\longmapsto T(r)(x)
=\bigl(g_{r,z}(x)\bigr)_{z\in G^m} \tag{6}
\]
is jointly measurable into the finite set
\(\{+1,-1\}^N\).

We will also use the following direct parameter-integral check. For a
product-measurable set \(Q\), write
\(Q_r:=\{x\in\mathcal X:(r,x)\in Q\}\). Every such section belongs to
\(\mathscr X\): the collection of subsets of
\(\Omega_R\times\mathcal X\) having an \(\mathscr X\)-measurable section
at every \(r\) is a sigma algebra containing all measurable rectangles.
Thus the following section measures are defined. Set
\[
\mathcal L_{\mathcal D}
:=\left\{Q\in\Sigma_R\otimes\mathscr X:
r\longmapsto\mathcal D(Q_r)\text{ is }\Sigma_R\text{-measurable}\right\}.
\]
This is a \(\lambda\)-system. First,
\(\Omega_R\times\mathcal X\in\mathcal L_{\mathcal D}\) because its
section measure is the constant one. If
\(Q\in\mathcal L_{\mathcal D}\), then
\((Q^{\mathsf c})_r=\mathcal X\setminus Q_r\), so its section measure is
\(1-\mathcal D(Q_r)\) and is measurable. Finally, for pairwise disjoint
\(Q_1,Q_2,\ldots\in\mathcal L_{\mathcal D}\), their sections are pairwise
disjoint and
\[
\mathcal D\!\left(\left(\bigcup_{j\ge1}Q_j\right)_r\right)
=\sum_{j\ge1}\mathcal D((Q_j)_r),
\]
the pointwise limit of measurable partial sums. Thus the union also lies
in \(\mathcal L_{\mathcal D}\).

The measurable rectangles form a \(\pi\)-system, and for
\(E\in\Sigma_R\), \(C\in\mathscr X\),
\[
\mathcal D((E\times C)_r)=\mathbf 1_E(r)\mathcal D(C),
\]
which is measurable in \(r\). Hence all measurable rectangles lie in
\(\mathcal L_{\mathcal D}\). Dynkin's \(\pi\)-\(\lambda\) lemma, as
restated above, now gives
\(\Sigma_R\otimes\mathscr X\subseteq\mathcal L_{\mathcal D}\).

If \(a:\Omega_R\times\mathcal X\to[0,1]\) is jointly measurable, choose
nonnegative product-measurable simple functions \(a_n\uparrow a\). The
preceding set calculation and finite linearity show that
\(r\mapsto\int a_n(r,x)\,d\mathcal D(x)\) is measurable for every \(n\),
and
\[
\int a_n(r,x)\,d\mathcal D(x)
\uparrow
\int a(r,x)\,d\mathcal D(x).
\]
The pointwise limit of measurable functions is measurable. Hence
\[
r\longmapsto\int a(r,x)\,d\mathcal D(x) \tag{7}
\]
is \(\Sigma_R\)-measurable. This proves the only parameter-integration fact
used below; it is not imported as an unchecked standard theorem.

**The final feature-map sigma algebra and pushforward.**
The collection in (1) is a sigma algebra. Indeed,
\(T^{-1}(\mathfrak F_N)=\Omega_R\in\Sigma_R\);
if \(B\in\mathscr A_T\), then
\[
T^{-1}(\mathfrak F_N\setminus B)
=\Omega_R\setminus T^{-1}(B)\in\Sigma_R;
\]
and if \(B_1,B_2,\ldots\in\mathscr A_T\), then
\[
T^{-1}\!\left(\bigcup_{j\ge1}B_j\right)
=\bigcup_{j\ge1}T^{-1}(B_j)\in\Sigma_R.
\]
For every \(B\in\mathscr A_T\), its preimage is therefore measurable by
definition, so \(T:(\Omega_R,\Sigma_R)\to
(\mathfrak F_N,\mathscr A_T)\) is measurable before (2) is introduced.

Formula (2) now defines a probability measure: inverse images preserve
disjoint unions,
\[
\mathsf P_A(\mathfrak F_N)
=\mu(T^{-1}(\mathfrak F_N))
=\mu(\Omega_R)=1,
\]
and countable additivity follows from that of \(\mu\).
For every nonnegative \(\mathscr A_T\)-measurable \(H\), the defining
pushforward identity
\[
\int_{\mathfrak F_N}H(\Phi)\,d\mathsf P_A(\Phi)
=\int_{\Omega_R}H(T(r))\,d\mu(r) \tag{8}
\]
holds: it is (2) for indicator functions, extends by finite linearity to
nonnegative simple functions, and then follows for \(H\) by increasing
simple approximation. Thus later expectations require no informal appeal
to \(\operatorname{Law}(\phi_R)\).

The final sigma algebra has the exact factorization property needed
downstream. For any function \(U:\mathfrak F_N\to\mathbb R\), with
\(\mathbb R\) carrying its Borel sigma algebra,
\[
U\text{ is }\mathscr A_T\text{-measurable}
\quad\Longleftrightarrow\quad
U\circ T\text{ is }\Sigma_R\text{-measurable}. \tag{9}
\]
Both directions follow by writing, for every Borel
\(C\subseteq\mathbb R\),
\[
T^{-1}(U^{-1}(C))=(U\circ T)^{-1}(C)
\]
and using (1). In particular, if a measurable tape statistic is constant
on the fibers of \(T\), it factors uniquely on \(T(\Omega_R)\) through a
measurable map statistic. This proves downstream compatibility rather than
merely naming a formal final sigma algebra.

**Coordinate and optimal-risk measurability.**
For \(x\in\mathcal X\) and \(z\in G^m\), let
\(\operatorname{ev}_{x,z}(\Phi)=\Phi_z(x)\). Its pullback is
\[
(\operatorname{ev}_{x,z}\circ T)(r)=g_{r,z}(x),
\]
which is measurable by (5); hence (9) makes every coordinate evaluation
\(\mathscr A_T\)-measurable.

Fix \((\mathcal D,h)\). For \(w\in\mathbb R^N\), put
\[
\ell_{\mathcal D,h,w}(\Phi)
:=
L_{\mathrm{tie}}\bigl(
\mathcal D,h,x\mapsto\langle w,\Phi(x)\rangle
\bigr). \tag{10}
\]
By (6), the indicator
\[
(r,x)\longmapsto
\mathbf 1\{\langle w,T(r)(x)\rangle h(x)\le0\}
\]
is jointly measurable and bounded. Applying (7) shows that
\(\ell_{\mathcal D,h,w}\circ T\) is \(\Sigma_R\)-measurable; (9) then
makes every fixed-weight loss in (10), including every standard-basis
loss, \(\mathscr A_T\)-measurable.

It remains to check the infimum in (3), because an uncountable infimum of
measurable functions need not be measurable. Let
\[
\mathcal V_N:=\{+1,-1\}^N.
\]
Two weights \(w,w'\in\mathbb R^N\) are equivalent when
\[
\mathbf 1\{\langle w,v\rangle y\le0\}
=
\mathbf 1\{\langle w',v\rangle y\le0\}
\quad
\text{for all }(v,y)\in\mathcal V_N\times\{+1,-1\}. \tag{11}
\]
There are finitely many equivalence classes because (11) is a binary
pattern on the finite set
\(\mathcal V_N\times\{+1,-1\}\). Choose one representative from every
nonempty class and adjoin all standard basis vectors \(e_z\),
\(z\in G^m\), obtaining a finite set \(W_N\subset\mathbb R^N\).
For every map in \(T(\Omega_R)\), Proposition~\ref{prop:step-002-feature-map}
gives \(\Phi(x)\in\mathcal V_N\), so equivalent weights have the same
tie-error indicator at every \(x\). Therefore
\[
F_{\mathcal D,h}(T(r))
=\min_{w\in W_N}\ell_{\mathcal D,h,w}(T(r)). \tag{12}
\]
The right side is a finite minimum of measurable tape functions. Hence
\(F_{\mathcal D,h}\circ T\) is \(\Sigma_R\)-measurable, and (9) proves
that the exact pointwise-infimum functional in (3) is
\(\mathscr A_T\)-measurable. This argument uses only the binary range of
the maps on the support of \(\mathsf P_A\); no topology, separability, or
finiteness assumption on \(\mathcal X\) is introduced.

**The selected-basis downstream interface.**
For the fixed \((\mathcal D,h)\), let
\[
Z_{\mathcal D,h}(r):=z^{\mathcal D,h,r}\in G^m.
\]
Proposition~\ref{prop:step-001-padded-path} gives this unique finite-valued
path. Its measurability follows by finite induction through the measurable
execution: the taped next-query/stopping map is measurable, the
parameter-integral calculation (7) makes each current population query
mean measurable in \(r\), the fixed nearest-grid map \(\rho\) is Borel
because it is piecewise constant on finitely many intervals with fixed
midpoint choices, and fixed post-stop padding is measurable. Thus
\(Z_{\mathcal D,h}:\Omega_R\to G^m\), with \(G^m\) discrete and finite, is
\(\Sigma_R\)-measurable.

Define the tape-side selected-basis loss
\[
C_{\mathcal D,h}(r)
:=
\ell_{\mathcal D,h,e_{Z_{\mathcal D,h}(r)}}(T(r)).
\]
Because \(G^m\) is finite,
\[
C_{\mathcal D,h}(r)
=
\sum_{z\in G^m}
\mathbf 1\{Z_{\mathcal D,h}(r)=z\}
\ell_{\mathcal D,h,e_z}(T(r)), \tag{13}
\]
which is \(\Sigma_R\)-measurable by the path measurability and the
fixed-basis loss measurability proved above. For every tape \(r\), the
definition of the infimum gives
\[
F_{\mathcal D,h}(T(r))
\le C_{\mathcal D,h}(r). \tag{14}
\]
Applying (8) to \(F_{\mathcal D,h}\), then integrating (14), proves (4).
If two tapes have the same feature map but different canonical indices,
the same left-hand infimum is separately bounded by both tape-side
candidates; no measurable inverse of \(T\) or common basis choice on a
fiber is required.

Finally, all objects in (1)--(2) are constructed from
\((\Omega_R,\Sigma_R,\mu)\), \(A\), \(m\), \(\tau\), the finite grid,
coordinate order, and padding convention before an instance is selected.
The later verification for an arbitrary fixed \((\mathcal D,h)\) only
shows that already-defined \(\mathscr A_T\) supports the required
functionals; it does not alter the sigma algebra or law. Duplicate
predictors, duplicate coordinates, duplicate maps, nondiscrete tape laws,
and arbitrary or infinite \(\mathcal X\) therefore leave the pre-instance
pushforward and exact ambient dimension unchanged. At \(m=0\), \(T(r)\)
has its single root coordinate, \(Z_{\mathcal D,h}\equiv\emptyset\), and
all constructions above reduce to the same one-coordinate formulas.
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
law through \(r\mapsto\phi_r\). It first defines the complete-tape
probability space and the final feature-map sigma algebra
\(\mathscr A_T\), proves that \(T:r\mapsto\phi_r\) is measurable, and only
then defines the probability law
\(\mathsf P_A=T_{\#}\mu=\operatorname{Law}(\phi_R)\). The same proposition
proves the exact factorization criterion for \(\mathscr A_T\), reduces the
uncountable weight infimum on binary response-tree maps to finitely many
tie-sign patterns, and verifies measurability of coordinate evaluations,
\(F_{\mathcal D,h}\), and the tape-selected basis loss. Consequently the
pushforward-expectation and selected-candidate comparison needed downstream
are well-defined. The measurable space and law use only the learner, tape
space and law, finite response grid, ordering, and padding fixed before an
instance; they are independent of and shared by all
\((\mathcal D,h)\). Duplicate tape-to-map fibers require no inverse
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
  \(\mu\) on its measurable execution space, grid ordering, and padding
  convention are fixed. The final sigma algebra \(\mathscr A_T\) and law
  \(\mathsf P_A\) are constructed before and shared by every
  \((\mathcal D,h)\).
- Probability mode: Exact measurable pushforward of \(R\sim\mu\).
  Proposition~\ref{prop:step-002-preinstance-law} proves
  \(\mathbb E_{\Phi\sim\mathsf P_A}H(\Phi)
  =\mathbb E_{R\sim\mu}H(\phi_R)\) for every nonnegative
  \(\mathscr A_T\)-measurable \(H\), and explicitly verifies this condition
  for the downstream optimal tie-loss functional. There is no
  high-probability event, conditioning event, confidence parameter, or
  averaging over \((\mathcal D,h)\).
- Horizon mode: Fixed finite response-tree depth \(m\), while each replay
  executes at most \(m\) queries. Early terminal nodes are copied to all
  full continuations. At \(m=0\), the tree has one root coordinate.
- Norm mode: The quantitative object is the exact ambient coordinate
  dimension of maps into \(\mathbb R^N\). The unit-004 compatibility audit
  uses the setting's tie-penalized loss but introduces no new risk bound.
- Admissibility conditions and auxiliary tolerances:
  \(m\in\mathbb N_0\), \(\tau>0\), complete-tape determinism, at most
  \(m\) queries, binary terminal output, and the measurable execution
  typing inherent in the setting's randomized-algorithm and
  \(\mathbb E_{R\sim\mu}\) notation. This is not an additional
  theorem-facing condition. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: No term is dropped,
  dominated, or absorbed. Pairwise grid-point separation gives
  \(\lvert G\rvert=K+1\), and the displayed finite induction gives
  \(\lvert G^m\rvert=(K+1)^m\) exactly.
- Probability conversion: None. The identity
  \(\mathsf P_A=(r\mapsto\phi_r)_{\#}\mu\) is the defining measurable
  pushforward, and its integral identity is proved directly from indicators,
  simple functions, and increasing approximation. It is not a change of
  probability mode.
- Contribution to any Rate Specialization Bridge: Supplies the exact
  downstream dimension interface
  \((\lceil1/\tau\rceil+1)^m\); no further specialization occurs in this
  step.
- Baseline-reduction check: At \(m=0\), the exact empty-product convention
  gives \(N=1\), and the sole coordinate is the no-query root predictor.
  The feature-map sigma algebra remains well-defined, the canonical path is
  the measurable constant \(\emptyset\), and the downstream comparison uses
  the unique basis vector in \(\mathbb R^1\).
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
- The complete-tape probability space
  \((\Omega_R,\Sigma_R,\mu)\) is the appendix-local measurable realization
  of the setting-defined \(R\sim\mu\); \(\mathscr X\) is proof-local
  notation for the measurable structure already needed to interpret
  distributions, queries, predictors, and losses on \(\mathcal X\).
  Joint measurability of finite executions is the measurable-output typing
  of the randomized learner, not a new statistical or theorem-facing
  assumption.
- The feature-map set
  \(\mathfrak F_N=\{\Phi:\mathcal X\to\mathbb R^N\}\), the map
  \(T(r)=\phi_r\), and its final sigma algebra
  \(\mathscr A_T=\{B:T^{-1}(B)\in\Sigma_R\}\) are appendix-local objects
  exported only to support downstream proof steps. The set \(B\) and
  simple-function approximations used to prove the measure and integral
  identities are proof-local. The product-measurable set \(Q\), its section
  \(Q_r\), the rectangle \(\pi\)-system \(\mathcal P\), and the
  \(\lambda\)-system \(\mathcal L_{\mathcal D}\) are also proof-local;
  they only discharge the parameter-integral measurability check through
  the restated Dynkin lemma. No topology, separability, finite-domain
  condition, probability-mode change, or extra measurability hypothesis is
  introduced.
- The finite binary vector set \(\mathcal V_N\), the finite
  tie-sign-pattern representative set \(W_N\), and the weight equivalence
  relation are proof-local objects derived from the public-facing finite
  integer \(N\). They are used only to prove measurability of the exact
  uncountable infimum and are not exported.
- The fixed-weight losses
  \(\ell_{\mathcal D,h,w}\), the exact target functional
  \(F_{\mathcal D,h}\), the finite-valued canonical-path map
  \(Z_{\mathcal D,h}\), and the selected-basis loss
  \(C_{\mathcal D,h}\) are appendix-local downstream-interface objects.
  Their measurability and the comparison
  \(F_{\mathcal D,h}\circ T\le C_{\mathcal D,h}\) are proved in
  Proposition~\ref{prop:step-002-preinstance-law}; they are not conditional
  hypotheses.
- The exact count \(N\) is public-facing and directly defined from the
  setting quantities \(m,\tau,K,G\); its equality to
  \((\lceil1/\tau\rceil+1)^m\) is proved by
  Lemma~\ref{lem:step-002-response-count}, not assumed. No other constant,
  radius, threshold, rate, or bounded helper quantity is introduced.
- Totality and suffix invariance of \(g_{r,z}\) are generated-object facts
  proved by Proposition~\ref{prop:step-002-total-replay}. Totality of
  \(\phi_r\), including on infinite \(\mathcal X\), is proved by
  Proposition~\ref{prop:step-002-feature-map}. Existence, probability-law
  status, \(T\)-measurability, downstream-functional measurability,
  duplicate-fiber handling, and independence of \(\mathsf P_A\) from
  \((\mathcal D,h)\) are proved by
  Proposition~\ref{prop:step-002-preinstance-law}. None is treated as a
  primitive condition or local conditional hypothesis.
- The accepted `step_001` dependency supplies the common endpoint grid
  and fixed unread-padding/empty-path conventions. The present proof does
  not consume its generated instance-dependent oracle or transcript when
  constructing \(T\), \(\mathscr A_T\), or \(\mathsf P_A\), so no
  dependence on \((\mathcal D,h)\) enters the response-tree law. It uses
  the accepted canonical path only after the law is fixed, to verify the
  selected-basis downstream measurability interface.
- Repair provenance: the live unit-attempt-1 review accepted
  `unit_001`--`unit_003` and isolated the missing feature-map sigma
  algebra and \(T\)-measurability in `unit_004`. Unit attempt 2 preserves
  the first three units and repairs only
  Proposition~\ref{prop:step-002-preinstance-law} and its corresponding
  assembly/audit interface.
- `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was confirmed current and `ACCEPTED`. Its
  step-relevant planning guidance was to construct the full taped response
  tree before choosing an instance, prove suffix invariance explicitly,
  count the empty product, and separate duplicate coordinates from
  duplicate pushforward fibers. It was not used as proof evidence, a cited
  result, an assumption source, or authority to change the accepted target
  claim.
