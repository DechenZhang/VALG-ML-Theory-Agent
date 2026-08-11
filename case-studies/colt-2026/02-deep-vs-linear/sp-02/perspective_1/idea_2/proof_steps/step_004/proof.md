# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Compare the infimum with the basis weight, transfer
  pushforward expectation, invoke the valid-oracle learner guarantee, and
  apply the definition to obtain expected tie risk at most \(\varepsilon\)
  and dimension at most \(N\).
- Depends on: `step_001`, `step_002`, `step_003`.
- Assumptions used: `assump:sq-parameter-regime` and
  `assump:universal-adversarial-sq`.
- Technical challenge: Preserve pre-instance law, pointwise weight choice,
  expectation mode, universality, tie handling, and exact count.
- Intended proof tool or cited result: Infimum comparison, pushforward
  identity, primitive guarantee, and definition; no cited theorem.
- Output target: Exact formalized theorem, including \(m=0\) and
  \(\varepsilon=0\).
- Rate objective: Assemble exact risk \(\varepsilon\) and dimension
  \((\lceil1/\tau\rceil+1)^m\), with no simplification or additive term.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:sq-parameter-regime`: \(m\in\mathbb N_0\), \(\tau>0\), and
    \(\varepsilon\in[0,1/4)\). In particular,
    \(K=\lceil1/\tau\rceil\) and
    \(N=(K+1)^m=(\lceil1/\tau\rceil+1)^m\) are the setting-defined
    quantities used in the final certificate.
  - `assump:universal-adversarial-sq`: the single learner \(A\) and tape
    law \(\mu\) are fixed independently of the instance, and for every
    distribution \(\mathcal D\), every \(h\in\mathcal H\), and every
    tolerance-valid adaptive oracle policy \(\mathcal O\),
    \[
    \mathbb E_{R\sim\mu}
    L_{\mathrm{bin}}\bigl(\mathcal D,h,
    A_R^{\mathcal O}(\mathcal D,h)\bigr)\le\varepsilon.
    \]
    This outer expectation is only over the learner tape.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-001-canonical-oracle} supplies, for every
    \((\mathcal D,h)\), the tolerance-valid canonical policy
    \(\mathcal O^\rho_{\mathcal D,h}\).
  - Proposition~\ref{prop:step-001-padded-path} supplies the unique
    tape-dependent canonical path
    \(z^{\mathcal D,h,r}\in G^m\), including its unread fixed padding and
    the unique empty path at \(m=0\).
  - Lemma~\ref{lem:step-002-response-count} supplies the exact count
    \(N=|G^m|=(K+1)^m\), including \(N=1\) at \(m=0\).
  - Proposition~\ref{prop:step-002-feature-map} supplies the total binary
    map \(\phi_r:\mathcal X\to\{+1,-1\}^N\subset\mathbb R^N\) for every
    tape, on arbitrary domains and without quotienting repeated
    coordinates.
  - Proposition~\ref{prop:step-002-preinstance-law} supplies the measurable
    map \(T:r\mapsto\phi_r\), the single pre-instance law
    \(\mathsf P_A=T_{\#}\mu\), the pushforward expectation identity,
    measurability of the exact pointwise optimal tie-loss functional, and
    measurability of the tape-side canonical basis loss. These conclusions
    include noninjective fibers of \(T\).
  - Proposition~\ref{prop:step-003-tie-free-transfer} supplies, for every
    \((\mathcal D,h,r)\), the exact equality among the canonical basis-score
    tie loss, the replayed predictor's tie and binary losses, and the actual
    canonical-run binary loss. In particular, the selected score is binary
    and the events with product \(\le0\) and \(<0\) coincide exactly.
- Local conditional hypotheses: None.
- Accepted dependency step proof/review artifacts:
  - `perspective_1/idea_2/proof_steps/step_001/proof.md`, sketch attempt 1,
    unit attempt 1, SHA-256
    `30d2b34a459400227c70179b068b366aee5aff266c34c5560c52eab637c37869`.
  - `perspective_1/idea_2/proof_steps/step_001/review.md`, matching and
    `ACCEPTED`, SHA-256
    `fa54fce4696d938e176497c9dab65403d0fdc5a0d929dac9cb384cac01525f70`.
  - `perspective_1/idea_2/proof_steps/step_002/proof.md`, sketch attempt 1,
    unit attempt 2, SHA-256
    `04991f3a26b765f4f6903fad47c91a8ec96f76a5772deeaf5982be234f1d1f83`.
  - `perspective_1/idea_2/proof_steps/step_002/review.md`, matching and
    `ACCEPTED`, SHA-256
    `ac6001c71e6a628eea53150aaa8d26e52c6d93385b817e533375a650b7cb3442`.
  - `perspective_1/idea_2/proof_steps/step_003/proof.md`, sketch attempt 1,
    unit attempt 1, SHA-256
    `707b100fe708afd2cb547b8b9002dc6ae2b5cc72f57862a48b7ad49e9f906f2f`.
  - `perspective_1/idea_2/proof_steps/step_003/review.md`, matching and
    `ACCEPTED`, SHA-256
    `9c731aa08fcf2c3f6fa86b542b4b0af275cfe24db3ffd4dc64ca734a4ecff078`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq}, Proposition~\ref{prop:step-001-padded-path}, Proposition~\ref{prop:step-002-feature-map}, and Proposition~\ref{prop:step-002-preinstance-law}, for every fixed \((\mathcal D,h)\), the mapwise optimal tie-loss functional satisfies the exact pushforward identity and is tape-wise bounded by loss at \(e_{z^{\mathcal D,h,r}}\). The weight is chosen only after fixing the tape occurrence; no weight or tape selector on a feature-map fiber is required, even when \(r\mapsto\phi_r\) is noninjective. | Proves the pointwise-infimum and expectation-transfer part with the required quantifier placement. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq}, Proposition~\ref{prop:step-001-canonical-oracle}, and Proposition~\ref{prop:step-003-tie-free-transfer}, for every fixed \((\mathcal D,h)\), the expected canonical basis-score tie loss equals the expected replay tie loss and the expected actual binary loss, which is at most \(\varepsilon\). | Applies the every-valid-oracle premise in tape-only expectation mode and preserves the exact tie/binary bridge. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and~\ref{assump:universal-adversarial-sq}, Lemma~\ref{lem:step-002-response-count}, Proposition~\ref{prop:step-002-preinstance-law}, Proposition~\ref{prop:step-004-infimum-pushforward}, and Proposition~\ref{prop:step-004-canonical-risk}, the same pre-instance law \(\mathsf P_A\) works simultaneously for every \((\mathcal D,h)\), has expected pointwise optimal tie risk at most \(\varepsilon\), and witnesses \(\operatorname{dc}^{\mathrm{tie}}_\varepsilon(\mathcal H)\le N=(\lceil1/\tau\rceil+1)^m\). The conclusion remains exact at \(m=0\), \(\varepsilon=0\), and \(\tau\ge1\). | Applies the formal definition and closes the exact risk and dimension theorem. |

Atomic step = no. The mapwise infimum/pushforward comparison, invocation of
the universal valid-oracle guarantee, and simultaneous dimension-definition
closure are separate nontrivial obligations and are exposed as three local
units.

## Cited Result Applications

No external paper result or standard theorem is used. The proof uses only
the following accepted dependency results, local results, and definitions.

- **Proposition~\ref{prop:step-001-canonical-oracle} (accepted dependency
  result).** Under the two setting assumptions, for each fixed
  \((\mathcal D,h)\),
  \[
  \mathcal O^\rho_{\mathcal D,h}(q)
  =\rho\!\left(\mathbb E_{x\sim\mathcal D}q(x,h(x))\right)
  \]
  is tolerance-valid at every adaptively reached query. The primitive query
  range, grid regime, and absolute-tolerance convention discharge its
  assumptions in the accepted `step_001` pair. It is instantiated in
  Proposition~\ref{prop:step-004-canonical-risk} as one policy covered by
  the every-valid-policy quantifier.
- **Proposition~\ref{prop:step-001-padded-path} (accepted dependency
  result).** Under the two setting assumptions and the canonical-oracle
  proposition, each taped canonical run has a unique fixed-padded path
  \(z^{\mathcal D,h,r}\in G^m\), with padding unread and with the empty
  string at \(m=0\). Its assumptions are discharged in accepted
  `step_001`. It supplies the legal basis index used in
  Proposition~\ref{prop:step-004-infimum-pushforward}.
- **Lemma~\ref{lem:step-002-response-count} (accepted dependency result).**
  Under Assumption~\ref{assump:sq-parameter-regime} and the accepted grid
  convention, the grid has \(K+1\) distinct points and
  \[
  |G^m|=(K+1)^m=(\lceil1/\tau\rceil+1)^m,
  \]
  with \(G^0=\{\emptyset\}\) and count one. The primitive \(m,\tau\)
  regime discharges its assumptions. It is used in
  Proposition~\ref{prop:step-004-dimension-certificate}.
- **Proposition~\ref{prop:step-002-feature-map} (accepted dependency
  result).** Under the two setting assumptions and the accepted replay and
  counting results, every tape gives
  \(\phi_r=(g_{r,z})_{z\in G^m}:\mathcal X\to\{+1,-1\}^N\). The
  construction is pre-instance, works on arbitrary domains, retains
  repeated coordinates, and has the unique empty coordinate at \(m=0\).
  It supplies the exact \(\mathbb R^N\) weight space and coordinate used in
  Proposition~\ref{prop:step-004-infimum-pushforward}.
- **Proposition~\ref{prop:step-002-preinstance-law} (accepted dependency
  result).** Under the two setting assumptions and the feature-map
  proposition, \(T(r)=\phi_r\) is measurable into the accepted final
  feature-map sigma algebra and
  \(\mathsf P_A=T_{\#}\mu\) is a probability law constructed without an
  instance. For every fixed \((\mathcal D,h)\), the exact mapwise infimum
  and the tape-selected basis loss are measurable, bounded in \([0,1]\),
  and the pushforward integral identity applies. The accepted proof checks
  this on arbitrary domains and on noninjective fibers. These conclusions
  discharge all measurability assumptions in
  Proposition~\ref{prop:step-004-infimum-pushforward}; the present proof
  does not rebuild or enlarge the sigma algebra.
- **Proposition~\ref{prop:step-003-tie-free-transfer} (accepted dependency
  result).** Under Assumption~\ref{assump:universal-adversarial-sq} and the
  accepted map, law, and one-hot replay interfaces, for every
  \((\mathcal D,h,r)\),
  \[
  \begin{aligned}
  &L_{\mathrm{tie}}\!\left(\mathcal D,h,
  x\mapsto\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\rangle\right)\\
  &\quad=L_{\mathrm{tie}}(\mathcal D,h,g_{r,z^{\mathcal D,h,r}})
  =L_{\mathrm{bin}}(\mathcal D,h,g_{r,z^{\mathcal D,h,r}})\\
  &\quad=L_{\mathrm{bin}}\!\left(\mathcal D,h,
  A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\right).
  \end{aligned}
  \]
  Binary target and output ranges discharge the no-tie premise in accepted
  `step_003`; selected-loss measurability comes from accepted `step_002`.
  This exact equality is used in
  Proposition~\ref{prop:step-004-canonical-risk}.
- **Proposition~\ref{prop:step-004-infimum-pushforward} (local result).**
  Under the two setting assumptions and the accepted path, map, and law
  interfaces, it gives the target pushforward equality followed by the
  tape-wise canonical-basis upper bound, without a fiberwise selector. It is
  used by Proposition~\ref{prop:step-004-dimension-certificate} and the
  target-step assembly.
- **Proposition~\ref{prop:step-004-canonical-risk} (local result).** Under
  Assumptions~\ref{assump:sq-parameter-regime}
  and~\ref{assump:universal-adversarial-sq} and the accepted valid canonical
  policy and exact loss bridge, it bounds the expected canonical basis loss
  by \(\varepsilon\). It is used by
  Proposition~\ref{prop:step-004-dimension-certificate} and the target-step
  assembly.
- **Proposition~\ref{prop:step-004-dimension-certificate} (local result).**
  Under both setting assumptions and the two preceding local propositions,
  it proves the simultaneous risk certificate for the single pre-instance
  law and applies the setting definition of
  \(\operatorname{dc}^{\mathrm{tie}}_\varepsilon\). It is used in the
  target-step assembly.

The remaining tools are definitions: an infimum is at most its value at any
admissible candidate, expectation is monotone for measurable bounded
functions, and the defining property of a pushforward law is the integral
identity already proved in the accepted pre-instance-law proposition. No
unchecked cited result is invoked.

## Local Derivation

### unit_001: proposition

**Proposition (Tape-wise infimum comparison under the pre-instance
pushforward).**
\label{prop:step-004-infimum-pushforward}
Under Assumptions~\ref{assump:sq-parameter-regime}
and~\ref{assump:universal-adversarial-sq},
Proposition~\ref{prop:step-001-padded-path},
Proposition~\ref{prop:step-002-feature-map}, and
Proposition~\ref{prop:step-002-preinstance-law}, fix a distribution
\(\mathcal D\) on \(\mathcal X\) and \(h\in\mathcal H\). Define
\[
F_{\mathcal D,h}(\Phi)
:=\inf_{w\in\mathbb R^N}
L_{\mathrm{tie}}\bigl(\mathcal D,h,
x\mapsto\langle w,\Phi(x)\rangle\bigr).
\tag{1}
\]
Then
\[
\begin{aligned}
\mathbb E_{\Phi\sim\mathsf P_A}F_{\mathcal D,h}(\Phi)
&=\mathbb E_{R\sim\mu}F_{\mathcal D,h}(\phi_R)\\
&\le
\mathbb E_{R\sim\mu}
L_{\mathrm{tie}}\!\left(
\mathcal D,h,
x\mapsto
\left\langle e_{z^{\mathcal D,h,R}},\phi_R(x)\right\rangle
\right).
\end{aligned}
\tag{2}
\]
The comparison is made separately for each tape occurrence. It neither
asserts nor requires that
\(e_{z^{\mathcal D,h,r}}\) be a function of \(\phi_r\), and (2) remains
valid when distinct tapes induce the same feature map.

**Proof.** Fix a tape \(r\). The accepted padded-path result gives
\(z^{\mathcal D,h,r}\in G^m\), and the accepted feature-map construction
uses the common coordinate set \(G^m\) in \(\mathbb R^N\). Hence
\(e_{z^{\mathcal D,h,r}}\in\mathbb R^N\) is an admissible candidate in
the exact infimum (1). Direct evaluation of that infimum gives the
tape-wise inequality
\[
F_{\mathcal D,h}(\phi_r)
\le
L_{\mathrm{tie}}\!\left(
\mathcal D,h,
x\mapsto
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle
\right).
\tag{3}
\]
No minimizer is asserted: (3) uses only that an infimum over all weights is
no larger than the loss at this one available weight.

The accepted pre-instance-law proposition proves that
\(F_{\mathcal D,h}\) is measurable for the already fixed feature-map law,
that both sides of (3) are measurable functions of the tape, and that they
take values in \([0,1]\). It also proves the defining pushforward identity
\[
\mathbb E_{\Phi\sim\mathsf P_A}F_{\mathcal D,h}(\Phi)
=\mathbb E_{R\sim\mu}F_{\mathcal D,h}(\phi_R).
\tag{4}
\]
Integrating (3) and using monotonicity of the integral, then substituting
(4), proves (2).

For completeness, suppose \(T(r)=\phi_r=\phi_{r'}=T(r')\), while
\(z^{\mathcal D,h,r}\ne z^{\mathcal D,h,r'}\). The left side of (3) is
the same number at \(r\) and \(r'\), but it is separately no larger than
the loss at each of the two admissible basis vectors. The right side of
(2) integrates those tape-side bounds on their original tapes. Therefore
the proof never chooses a common weight on the fiber, never recovers a tape
from a map, and never invokes a measurable selection. The law
\(\mathsf P_A\) remains the pre-instance pushforward constructed before
\((\mathcal D,h)\). \(\square\)

### unit_002: proposition

**Proposition (Risk closure at the valid canonical oracle).**
\label{prop:step-004-canonical-risk}
Under Assumptions~\ref{assump:sq-parameter-regime}
and~\ref{assump:universal-adversarial-sq},
Proposition~\ref{prop:step-001-canonical-oracle}, and
Proposition~\ref{prop:step-003-tie-free-transfer}, for every distribution
\(\mathcal D\) on \(\mathcal X\) and every \(h\in\mathcal H\),
\[
\begin{aligned}
&\mathbb E_{R\sim\mu}
L_{\mathrm{tie}}\!\left(
\mathcal D,h,
x\mapsto
\left\langle e_{z^{\mathcal D,h,R}},\phi_R(x)\right\rangle
\right)\\
&\quad=
\mathbb E_{R\sim\mu}
L_{\mathrm{tie}}\bigl(
\mathcal D,h,g_{R,z^{\mathcal D,h,R}}\bigr)\\
&\quad=
\mathbb E_{R\sim\mu}
L_{\mathrm{bin}}\bigl(
\mathcal D,h,
A_R^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr)
\le\varepsilon.
\end{aligned}
\tag{5}
\]
The only outer randomness in (5) is the learner tape. The first two
relations are exact, so rounding contributes no tie-risk term.

**Proof.** Fix an arbitrary \((\mathcal D,h)\). By the accepted
canonical-oracle proposition,
\(\mathcal O^\rho_{\mathcal D,h}\) is a tolerance-valid adaptive policy
for this instance. Assumption~\ref{assump:universal-adversarial-sq} is
pointwise over every instance and every valid policy, so it applies to this
particular policy and yields
\[
\mathbb E_{R\sim\mu}
L_{\mathrm{bin}}\bigl(
\mathcal D,h,
A_R^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr)
\le\varepsilon.
\tag{6}
\]
This is not a favorable-oracle assumption: the canonical policy is merely
one member of the universal valid-policy quantifier.

For every tape \(r\), the accepted exact tie-free transfer gives
\[
\begin{aligned}
&L_{\mathrm{tie}}\!\left(
\mathcal D,h,
x\mapsto
\left\langle e_{z^{\mathcal D,h,r}},\phi_r(x)\right\rangle
\right)\\
&\quad=L_{\mathrm{tie}}\bigl(
\mathcal D,h,g_{r,z^{\mathcal D,h,r}}\bigr)
=L_{\mathrm{bin}}\bigl(
\mathcal D,h,
A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr).
\end{aligned}
\tag{7}
\]
The equality in (7) retains the exact event convention: the selected score
and \(h(x)\) are signs, so their product is never zero and
\(\{sh\le0\}=\{sh<0\}\) pointwise. The accepted dependency also supplies
measurability of these tape-side losses. Integrating (7) only over
\(R\sim\mu\) and using (6) proves (5). The population risks still contain
their defining integration over \(x\sim\mathcal D\); no distribution,
target, oracle, or additional random variable is averaged in the outer
expectation. \(\square\)

### unit_003: proposition

**Proposition (Simultaneous tie-risk and dimension certificate).**
\label{prop:step-004-dimension-certificate}
Under Assumptions~\ref{assump:sq-parameter-regime}
and~\ref{assump:universal-adversarial-sq},
Lemma~\ref{lem:step-002-response-count},
Proposition~\ref{prop:step-002-preinstance-law},
Proposition~\ref{prop:step-004-infimum-pushforward}, and
Proposition~\ref{prop:step-004-canonical-risk}, the single pre-instance law
\(\mathsf P_A\) satisfies
\[
\sup_{\mathcal D}\sup_{h\in\mathcal H}
\mathbb E_{\Phi\sim\mathsf P_A}
\left[
\inf_{w\in\mathbb R^N}
L_{\mathrm{tie}}\bigl(
\mathcal D,h,
x\mapsto\langle w,\Phi(x)\rangle
\bigr)
\right]
\le\varepsilon.
\tag{8}
\]
Consequently,
\[
\operatorname{dc}^{\mathrm{tie}}_\varepsilon(\mathcal H)
\le N
=\bigl(\lceil1/\tau\rceil+1\bigr)^m.
\tag{9}
\]
At \(m=0\), (9) has \(N=1\); at \(\varepsilon=0\), the expected
tie risk in (8) is exactly zero; and when \(\tau\ge1\), the exact count
specializes to \(N=2^m\).

**Proof.** Fix an arbitrary distribution \(\mathcal D\) and arbitrary
\(h\in\mathcal H\). Proposition~\ref{prop:step-004-infimum-pushforward}
and Proposition~\ref{prop:step-004-canonical-risk} compose to give the
exact chain
\[
\begin{aligned}
&\mathbb E_{\Phi\sim\mathsf P_A}
\left[
\inf_{w\in\mathbb R^N}
L_{\mathrm{tie}}\bigl(
\mathcal D,h,
x\mapsto\langle w,\Phi(x)\rangle
\bigr)
\right]\\
&\quad\le
\mathbb E_{R\sim\mu}
L_{\mathrm{tie}}\!\left(
\mathcal D,h,
x\mapsto
\left\langle e_{z^{\mathcal D,h,R}},\phi_R(x)\right\rangle
\right)\\
&\quad=
\mathbb E_{R\sim\mu}
L_{\mathrm{tie}}\bigl(
\mathcal D,h,g_{R,z^{\mathcal D,h,R}}\bigr)\\
&\quad=
\mathbb E_{R\sim\mu}
L_{\mathrm{bin}}\bigl(
\mathcal D,h,
A_R^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr)
\le\varepsilon.
\end{aligned}
\tag{10}
\]
There is no additive term in (10): the first relation is evaluation of a
mapwise infimum, the middle relations are exact pointwise loss identities,
and the last inequality is the primitive guarantee at a valid oracle.

Proposition~\ref{prop:step-002-preinstance-law} proves that
\(\mathsf P_A\), its feature-map measurable space, and its ambient
dimension are constructed solely from the fixed learner, tape law, grid,
ordering, and padding convention before \((\mathcal D,h)\) is chosen.
Thus the law in (10) is the same for every instance. Since the fixed pair
was arbitrary, taking the two suprema gives (8); this changes no
probability mode and introduces no union bound.

Lemma~\ref{lem:step-002-response-count} gives exactly
\[
N=|G^m|=(K+1)^m
=\bigl(\lceil1/\tau\rceil+1\bigr)^m.
\tag{11}
\]
The definition of
\(\operatorname{dc}^{\mathrm{tie}}_\varepsilon(\mathcal H)\) asks for one
pre-instance probability law on maps into \(\mathbb R^d\) whose expected
mapwise optimal tie loss, uniformly over \((\mathcal D,h)\), is at most
\(\varepsilon\). Equations (8) and (11) exhibit precisely such a law with
\(d=N\), proving (9).

If \(m=0\), the accepted count gives \(G^0=\{\emptyset\}\) and \(N=1\),
the accepted canonical path and map have their unique empty coordinate,
and (10) applies to the learner's no-query terminal predictor. If
\(\varepsilon=0\), the left side of (8) is nonnegative and at most zero,
so it equals zero; every bridge remains exact and rounding contributes no
risk remainder. If \(\tau\ge1\), then \(K=\lceil1/\tau\rceil=1\), so
(11) gives \(N=2^m\) without changing oracle validity or the risk chain.
The arbitrary-domain and noninjective-fiber cases were already retained by
the accepted map-law result and
Proposition~\ref{prop:step-004-infimum-pushforward}. \(\square\)

## Target-Step Assembly

Fix arbitrary \((\mathcal D,h)\). Proposition~\ref{prop:step-004-infimum-pushforward}
first uses the accepted pre-instance pushforward identity and then evaluates
the mapwise infimum at the tape-specific canonical basis weight. This order
keeps the weight inside the pointwise optimization: it does not require a
single weight across tapes or instances, and it does not require a selector
when several tapes induce the same map.

Proposition~\ref{prop:step-004-canonical-risk} next uses the accepted exact
one-hot and tie/binary certificate and invokes
Assumption~\ref{assump:universal-adversarial-sq} at the valid canonical
oracle supplied by Proposition~\ref{prop:step-001-canonical-oracle}. It
therefore yields, in expectation only over the learner tape,
\[
\mathbb E_R
L_{\mathrm{tie}}(\mathcal D,h,g_{R,z^{\mathcal D,h,R}})
=\mathbb E_R
L_{\mathrm{bin}}\bigl(
\mathcal D,h,A_R^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\bigr)
\le\varepsilon.
\]
The exact binary range makes the tie bridge equality, not an inequality or
margin approximation.

Proposition~\ref{prop:step-004-dimension-certificate} composes those two
named results, observes that the same accepted law \(\mathsf P_A\) was fixed
before the arbitrary instance, takes the universal suprema, and applies the
formal definition with the exact accepted count
\(N=(\lceil1/\tau\rceil+1)^m\). It explicitly preserves \(m=0\),
\(\varepsilon=0\), \(\tau\ge1\), arbitrary domains, and noninjective
tape-to-map fibers. These results prove exactly the accepted `step_004`
claim with no additive term, target drift, probability conversion, or hidden
dependence.

## Explicit Rate Audit

- Exposed variables: \(m\in\mathbb N_0\), \(\tau>0\),
  \(\varepsilon\in[0,1/4)\), \(K=\lceil1/\tau\rceil\), and
  \(N=(K+1)^m=(\lceil1/\tau\rceil+1)^m\).
- Hidden constants may depend on: None; the risk and dimension bounds are
  exact.
- Hidden constants may not depend on: \(\mathcal X\),
  \(|\mathcal X|\), \(\mathcal H\), \(\mathcal D\), \(h\), the tape,
  the response string, \(m\), \(\tau\), or \(\varepsilon\). There are no
  hidden constants.
- Fixed quantities: \(\mathcal X\), \(\mathcal H\), the learner \(A\),
  tape space and law \(\mu\), grid rule \(\rho\), coordinate order, and
  padding convention are fixed before the instance. The proof then fixes an
  arbitrary \((\mathcal D,h)\), derives the bound, and uses the same law for
  all pairs.
- Probability mode: The outer expectation is only over \(R\sim\mu\),
  equivalently \(\Phi\sim\mathsf P_A\). Population loss retains its defining
  integration over \(x\sim\mathcal D\). There is no oracle randomness,
  confidence parameter, high-probability event, conditioning event, or
  union bound.
- Horizon mode: Fixed finite horizon of at most \(m\) adaptive queries,
  with a depth-\(m\) padded response index and the empty path at \(m=0\).
  No all-time or asymptotic upgrade is claimed.
- Norm mode: Tie-penalized \(0\)-\(1\) risk for real scores and binary
  \(0\)-\(1\) risk for the selected binary output. No vector norm, margin,
  surrogate loss, or excess-risk conversion is used.
- Admissibility conditions and auxiliary tolerances: Exactly
  `assump:sq-parameter-regime` and
  `assump:universal-adversarial-sq`; there is no auxiliary tolerance or
  generated theorem-facing condition.
- Term absorption or simplification inequalities: None. The complete
  comparison is displayed in (10), and the complete dimension identity is
  displayed in (11). No term is dropped, dominated, or absorbed.
- Probability conversion: None. The equality between feature-map and tape
  expectations is the defining measurable pushforward identity from the
  accepted dependency, not a change of mode.
- Contribution to any Rate Specialization Bridge: This step supplies the
  exact theorem-facing bridge from the response-tree construction to risk
  \(\varepsilon\) and dimension
  \((\lceil1/\tau\rceil+1)^m\); no later simplification is needed.
- Baseline-reduction check: The accepted binary coordinate preserves
  \(L_{\mathrm{tie}}=L_{\mathrm{bin}}\) exactly. At
  \(\varepsilon=0\), the expected tie loss is exactly zero with no rounding
  remainder. At \(m=0\), \(N=1\) and the no-query root output gives the
  same chain. At \(\tau\ge1\), \(K=1\) and the exact count is \(2^m\).

## Blockers

None.

## Notation And Assumption Notes

- The public-facing objects \(K\), \(G\), \(N\), \(g_{r,z}\),
  \(\phi_r\), \(\mathsf P_A\),
  \(\mathcal O^\rho_{\mathcal D,h}\), and
  \(z^{\mathcal D,h,r}\) are setting-defined or accepted dependency
  objects. The only public-facing output newly certified by this step is the
  expected-risk and dimension conclusion; no helper dictionary is exported.
- The functional \(F_{\mathcal D,h}\) in (1) is an appendix-local
  abbreviation for the exact setting-defined expression inside the
  feature-map expectation. It is introduced because it is reused in the
  pushforward and fiber argument, and it is expanded again in the final
  certificate. It hides no bound or parameter dependence.
- The complete-tape space \((\Omega_R,\Sigma_R,\mu)\), map
  \(T(r)=\phi_r\), final feature-map sigma algebra, and measurable
  selected-basis loss are appendix-local objects inherited from
  Proposition~\ref{prop:step-002-preinstance-law}. This step does not add a
  sigma algebra, topology, separability assumption, or finite-domain
  premise.
- The vector \(e_{z^{\mathcal D,h,r}}\) is an appendix-local instantiation
  of the setting-defined standard basis in \(\mathbb R^N\). Its entries zero
  and one are definitional; it introduces no constant or margin. It is
  permitted to depend on \((\mathcal D,h,r)\) only because it is used to
  upper-bound the infimum separately at each tape occurrence. It is not a
  public shared weight and is not asserted to factor through \(T\).
- The fixed instance \((\mathcal D,h)\), tape \(r\), and a possible second
  tape \(r'\) in the same fiber are proof-local universal instantiations,
  not conditional hypotheses. The feature map, law, canonical path, valid
  policy, score/output equality, loss equality, and measurability facts used
  in the proof are all supplied by accepted dependencies; the final risk
  and dimension certificate is proved here. No generated condition is
  treated as primitive.
- The exact constant \(N\) is public-facing and inherited from
  Lemma~\ref{lem:step-002-response-count}; it is directly determined by the
  setting quantities \(m\) and \(\tau\). The only threshold is the primitive
  \(\varepsilon\), used without slack in the learner guarantee. No new
  constant, radius, event, tolerance, bounded quantity, or probability mode
  is introduced.
- Noninjective tape-to-map fibers are handled by the tape-wise inequalities
  (3), not by selecting a tape or basis vector from a feature map. Arbitrary
  or infinite domains are handled by the accepted total-map and measurable
  pre-instance-law constructions. These are derived interfaces, not extra
  assumptions.
- The current `global_proof.md`, SHA-256
  `6cbb736e04c3bc29e497165678c55371bf047ca8282bf3284bfd141862218e0e`,
  was read only after its paired current `global_proof_review.md`, SHA-256
  `aa45f761bd335a64da66877823de219400c1cc605649653875425a986f55d2b2`,
  was confirmed `ACCEPTED`. Its step-relevant planning guidance was to keep
  the pushforward equality before the tape-wise candidate comparison, make
  duplicate-fiber handling explicit, and separate that comparison from the
  universal-oracle and definition closure. It was not used as proof
  evidence, a cited result, an assumption source, or authority to change the
  accepted target claim.
