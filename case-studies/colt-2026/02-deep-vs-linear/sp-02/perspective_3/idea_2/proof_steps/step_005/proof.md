# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1

## Target Step Claim

- Intended claim: With the primitive coordinate map \(\phi_G\), show
  \(h(x)\langle w_h,\phi_G(x)\rangle\ge\rho>1/2\) and hence exact strict
  signs for every \(h,x\); audit \(L=1\), \(\varepsilon=0\), empty \(X\),
  and the excluded-but-vacuous empty-\(H\) extension.
- Depends on: `step_004`.
- Assumptions used: Primitive basic setup,
  `assump:source-parameter-regime`, `assump:finite-terminal-catalog`; derived
  \(w_h\)/margin from `step_004`.
- Technical challenge: Verify common-map independence and same-target
  identity; exclude sign ties without changing the deterministic exact
  metric.
- Intended proof tool or cited result: Direct coordinate identity and
  two-case binary sign algebra.
- Output target: One deterministic exact \(L\)-dimensional sign
  representation.
- Rate objective: Pointwise margin target: expose \(\rho>1/2\), retain
  margin \(1\) at \(\varepsilon=0\), and use no hidden constants.
- Row-local review status: `PENDING`; sketch-level acceptance is supplied by
  the accepted `proof_sketch_review.md` for sketch attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- Basic-setting conditions: \(X\) is an arbitrary domain,
  \(H\subseteq\{+1,-1\}^X\) is nonempty, and every \(h\in H\) and catalog
  function \(g_i\) takes values in \(\{+1,-1\}\). The score and coordinate
  map are the setting-defined expressions
  \[
  s_w(x)=\sum_{i=1}^L w_i g_i(x),
  \qquad
  \phi_G(x)=(g_1(x),\ldots,g_L(x)).
  \tag{1}
  \]
- `assump:source-parameter-regime`: \(0\le\varepsilon<1/4\) and
  \[
  \rho=1-2\varepsilon>\frac12>0.
  \tag{2}
  \]
- `assump:finite-terminal-catalog`: the finite catalog
  \(G=\{g_1,\ldots,g_L\}\), with \(L\ge1\), is fixed before the
  distribution, target, reply policy, replies, and learner tape. Thus (1)
  defines one deterministic map for the whole target class.

Accepted dependency artifacts:

- `proof_steps/step_004/proof.md`, SHA-256
  `374f3a46da7176fd12932ea80b28e3bc014d024a71c47550a2cb35131c93de70`.
- `proof_steps/step_004/review.md`, SHA-256
  `2e7cf2abba72c14ebc00fd8b96955829a460b533d40cc6c71bcb5fca0affc3a5`,
  with controlled status `ACCEPTED` for sketch attempt 1, step `step_004`,
  unit attempt 1, and the proof hash above.

Derived invariant supplied by the accepted dependency:

- Proposition~\ref{prop:step-004-global-weight}: for every \(h\in H\),
  there exists a weight \(w_h\in\Delta_L\) such that
  \[
  \forall x\in X,\qquad h(x)s_{w_h}(x)\ge\rho.
  \tag{3}
  \]
  The proposition constructs \(w_h\) from the fixed catalog, the fixed target
  \(h\), and \(\rho\); it requires no distribution, reply policy, transcript,
  learner-tape realization, or point-dependent choice. This step consumes the
  same weight and the exact margin (3), with no replacement or slack.

Local conditional hypotheses:

- Lemma~\ref{lem:step-005-binary-sign} takes local scalars
  \(a\in\{+1,-1\}\) and \(z\in\mathbb R\) satisfying
  \(az\ge\rho\). In the representation proposition this local condition is
  discharged by setting \(a=h(x)\),
  \(z=\langle w_h,\phi_G(x)\rangle\), and using (3) together with the exact
  coordinate identity. It is not a theorem-facing assumption.

Assumption-provenance classification:

- The catalog, its finiteness, the binary value convention, and the parameter
  range are primitive conditions.
- The weight \(w_h\) and its all-domain score margin are derived outputs of
  the accepted dependency.
- The coordinate identity, common-map independence, and strict-sign
  implication are proved in this step. No generated object, event, invariant,
  or representation property is treated as primitive.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:finite-terminal-catalog} and the basic-setting definitions, \(\phi_G:X\to\mathbb R^L\) is determined solely by the fixed catalog and, for every \(w\in\Delta_L\) and \(x\in X\), \(\langle w,\phi_G(x)\rangle=s_w(x)\) and \(|\langle w,\phi_G(x)\rangle|\le1\). | Establishes common-map independence, the zero-residual same-target identity, and the elementary score range used to audit exact margin one. |
| `unit_002` | lemma | Under Assumption~\ref{assump:source-parameter-regime}, if \(a\in\{+1,-1\}\), \(z\in\mathbb R\), and \(az\ge\rho\), then \(a=+1\) implies \(z\ge\rho>1/2>0\), while \(a=-1\) implies \(z\le-\rho<-1/2<0\); consequently \(az>0\) and \(z\) has the exact strict sign prescribed by \(a\). | Exposes the nontrivial binary signed-margin implication and rules out a hidden tie convention. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:source-parameter-regime} and \ref{assump:finite-terminal-catalog}, the basic-setting binary convention, Proposition~\ref{prop:step-004-global-weight}, Lemma~\ref{lem:step-005-coordinate-identity}, and Lemma~\ref{lem:step-005-binary-sign}, the single map \(\phi_G\) satisfies \(\forall h\in H\,\exists w_h\in\Delta_L\,\forall x\in X\), \(h(x)\langle w_h,\phi_G(x)\rangle\ge\rho>1/2\), with exact strict signs. The conclusion retains margin one at \(\varepsilon=0\), the unique weight at \(L=1\), and vacuous pointwise truth for empty \(X\); dropping the live nonempty-\(H\) condition makes the target quantifier vacuous. | Composes the accepted global weight with the two local bridges and audits every required boundary regime. |

Atomic step = no. The coordinate/same-target bridge and the binary
signed-margin implication are logically distinct. In particular, the latter
is exposed as its own named local unit rather than hidden in the final
assembly.

## Cited Result Applications

No external paper result or unproved standard theorem is used.

Accepted dependency result application:

- **Proposition~\ref{prop:step-004-global-weight} (Exact arbitrary-domain
  catalog weight).** Source: the accepted `step_004` proof/review pair with
  the hashes listed above. Restated in current notation: under the primitive
  finite-catalog condition and the accepted finite-feasibility chain, for
  every \(h\in H\) there is one \(w_h\in\Delta_L\) satisfying (3) for all
  \(x\in X\). When \(X=\varnothing\), a weight still exists and (3) is
  vacuous. The produced family of constraints, and hence the selected weight,
  uses only \(h\), the fixed catalog, and
  \(\rho=1-2\varepsilon\); it imports no distribution, policy, transcript,
  learner tape, or topology on \(X\). The only dependency conclusions used
  here are the existence of that same \(w_h\), its simplex membership, its
  independence properties, and its exact all-point margin.

Local result applications:

- **Lemma~\ref{lem:step-005-coordinate-identity} (Fixed catalog coordinates
  are the game score).** It identifies the dependency score with the inner
  product for the primitive map and records that the map is common to all
  targets and protocol instances. It also records the unit score bound for a
  simplex mixture of binary coordinates.
- **Lemma~\ref{lem:step-005-binary-sign} (Strict binary signed-margin
  conversion).** It converts the positive signed margin into the two exact
  strict score signs and explicitly eliminates the zero-score case.
- **Proposition~\ref{prop:step-005-exact-representation} (Exact common-map
  catalog representation).** It applies both lemmas to the accepted global
  weight and records the required boundary regimes.

## Local Derivation

### unit_001: lemma

**Lemma (Fixed catalog coordinates are the game score).**
\(\label{lem:step-005-coordinate-identity}\)

Statement: Under Assumption~\ref{assump:finite-terminal-catalog} and the
basic-setting definitions, the map
\[
\phi_G:X\longrightarrow\mathbb R^L,
\qquad
\phi_G(x)=(g_1(x),\ldots,g_L(x))
\tag{4}
\]
is a single deterministic function determined solely by the primitive fixed
catalog \(G\). In particular it is independent of \(D\), \(h\), every valid
reply policy and reply transcript, and the learner tape. For every
\(w=(w_1,\ldots,w_L)\in\Delta_L\) and every \(x\in X\),
\[
\langle w,\phi_G(x)\rangle
=\sum_{i=1}^L w_i g_i(x)
=s_w(x).
\tag{5}
\]
Moreover,
\[
\bigl|\langle w,\phi_G(x)\rangle\bigr|\le1.
\tag{6}
\]

Proof / justification:

Assumption~\ref{assump:finite-terminal-catalog} fixes the functions
\(g_1,\ldots,g_L\) before any of \(D,h,\pi\), the replies, or the learner
tape is selected. Formula (4) applies the deterministic operation of listing
these fixed function values, so none of those later objects enters the
definition of \(\phi_G\). The basic setting gives
\(g_i(x)\in\{+1,-1\}\subset\mathbb R\), hence (4) indeed takes values in
\(\mathbb R^L\).

For \(w\in\Delta_L\), the Euclidean inner product with the vector in (4) is,
by its finite coordinate definition,
\(\sum_{i=1}^Lw_i g_i(x)\). The right side is exactly the setting definition
of \(s_w(x)\), proving (5). Thus the score produced upstream and the score
consumed here are the same mathematical object in the same coordinates; no
transform, approximation, residual, or target change occurs. Finally, because
\(w_i\ge0\), \(\sum_iw_i=1\), and \(|g_i(x)|=1\), the triangle inequality
gives
\[
\bigl|\langle w,\phi_G(x)\rangle\bigr|
\le\sum_{i=1}^L w_i|g_i(x)|
=\sum_{i=1}^Lw_i
=1,
\]
which proves (6). \(\square\)

### unit_002: lemma

**Lemma (Strict binary signed-margin conversion).**
\(\label{lem:step-005-binary-sign}\)

Statement: Under Assumption~\ref{assump:source-parameter-regime}, let
\(a\in\{+1,-1\}\) and \(z\in\mathbb R\). If
\[
az\ge\rho,
\tag{7}
\]
then
\[
\begin{cases}
z\ge\rho>\frac12>0, & a=+1,\\[2mm]
z\le-\rho<-\frac12<0, & a=-1.
\end{cases}
\tag{8}
\]
Consequently \(az>0\), \(z\ne0\), and the strict sign of \(z\) is exactly
the binary value \(a\).

Proof / justification:

Assumption~\ref{assump:source-parameter-regime} gives
\(0\le\varepsilon<1/4\). Therefore
\[
2\varepsilon<\frac12,
\qquad
\rho=1-2\varepsilon>\frac12>0.
\tag{9}
\]
If \(a=+1\), (7) is \(z\ge\rho\), and the first line of (8) follows from
(9). If \(a=-1\), (7) is \(-z\ge\rho\); multiplying by \(-1\) reverses the
inequality and gives \(z\le-\rho<-1/2<0\), the second line of (8). These two
values exhaust \(\{+1,-1\}\). In either case (7) and (9) give
\(az\ge\rho>0\), so a zero score and any tie-breaking convention are
excluded. \(\square\)

### unit_003: proposition

**Proposition (Exact common-map catalog representation).**
\(\label{prop:step-005-exact-representation}\)

Statement: Under Assumptions~\ref{assump:source-parameter-regime} and
\ref{assump:finite-terminal-catalog}, the basic-setting binary convention,
the accepted conclusion of
Proposition~\ref{prop:step-004-global-weight},
Lemma~\ref{lem:step-005-coordinate-identity}, and
Lemma~\ref{lem:step-005-binary-sign}, the one deterministic map \(\phi_G\)
in (4) satisfies
\[
\forall h\in H\ \exists w_h\in\Delta_L\ \forall x\in X,
\qquad
h(x)\langle w_h,\phi_G(x)\rangle
\ge\rho=1-2\varepsilon>\frac12.
\tag{10}
\]
For the same \(w_h\),
\[
\begin{aligned}
h(x)=+1&\quad\Longrightarrow\quad
\langle w_h,\phi_G(x)\rangle\ge\rho>0,\\
h(x)=-1&\quad\Longrightarrow\quad
\langle w_h,\phi_G(x)\rangle\le-\rho<0,
\end{aligned}
\qquad x\in X.
\tag{11}
\]
Hence \(h(x)\langle w_h,\phi_G(x)\rangle>0\) for every \(h,x\), with no
zero-score convention. The conclusions retain the stated boundary meanings
at \(\varepsilon=0\), \(L=1\), and \(X=\varnothing\). If the live setting's
nonempty-\(H\) restriction is dropped, the universally quantified
representation claim is vacuous.

Proof / justification:

Fix an arbitrary \(h\in H\). The accepted
Proposition~\ref{prop:step-004-global-weight} supplies one
\(w_h\in\Delta_L\) such that (3) holds simultaneously for every
\(x\in X\). For any such \(x\),
Lemma~\ref{lem:step-005-coordinate-identity} gives the exact same-target
identity
\[
h(x)\langle w_h,\phi_G(x)\rangle
=h(x)s_{w_h}(x)
\ge\rho.
\tag{12}
\]
Equation (9) appends the strict inequality \(\rho>1/2\), proving (10) with no
loss. Apply Lemma~\ref{lem:step-005-binary-sign} to
\[
a=h(x)\in\{+1,-1\},
\qquad
z=\langle w_h,\phi_G(x)\rangle.
\tag{13}
\]
Its hypothesis is exactly (12), and its two conclusions are precisely (11).
In particular the product in the deterministic representation definition is
strictly positive.

Lemma~\ref{lem:step-005-coordinate-identity} shows that \(\phi_G\) is fixed
once the primitive catalog is fixed and is therefore the same map for every
\(h\), distribution, valid policy, transcript, and learner-tape realization.
The accepted dependency shows that \(w_h\) may be chosen from the constraint
family determined by \(h,G,\rho\) and has no dependence on \(D,\pi\), replies,
the transcript, the learner tape, or the queried point \(x\). Thus the
quantifier order in (10) is exactly
\(\forall h\,\exists w_h\,\forall x\), not a distributionwise or pointwise
choice of weights.

The required boundary cases follow without modifying the argument:

- If \(\varepsilon=0\), then \(\rho=1\), and (10) gives
  \(h(x)\langle w_h,\phi_G(x)\rangle\ge1\). Since \(|h(x)|=1\), the score
  bound (6) also gives
  \(h(x)\langle w_h,\phi_G(x)\rangle\le1\). Hence the signed margin equals
  \(1\) pointwise; no positive-margin surrogate or approximation replaces
  this baseline.
- If \(L=1\), then \(\Delta_1=\{(1)\}\), so the accepted weight is the
  unique simplex weight and
  \(\phi_G(x)=(g_1(x))\). Equations (10)-(11) apply in this one coordinate
  without a separate selection or a dimension-dependent exception.
- If \(X=\varnothing\), the accepted dependency still supplies a weight in
  \(\Delta_L\), the map (4) is the unique function from the empty domain to
  \(\mathbb R^L\), and both universal pointwise assertions (10)-(11) are
  vacuous. No distribution on the empty domain is formed.
- The live basic setting assumes \(H\ne\varnothing\). Under the
  excluded extension \(H=\varnothing\), the quantifier
  \(\forall h\in H\,\exists w_h\,\forall x\in X\) has no target instance and
  is therefore vacuously true; no weight or sign conversion must be produced.
  Consistently, the definition of dimension complexity would admit the
  zero-dimensional map and give \(\operatorname{dc}(\varnothing)=0\). This
  observation is only a boundary audit and is not an added premise of the live
  theorem.

These cases preserve, rather than weaken, the exact deterministic
representation conclusion. \(\square\)

## Target-Step Assembly

The accepted Proposition~\ref{prop:step-004-global-weight} provides, for each
\(h\in H\), one \(w_h\in\Delta_L\) satisfying the exact all-domain score
margin (3). Lemma~\ref{lem:step-005-coordinate-identity} proves that the
score in that accepted conclusion is identically the inner product for the
one primitive catalog map:
\[
s_{w_h}(x)=\langle w_h,\phi_G(x)\rangle.
\]
It also proves that \(\phi_G\) is independent of the target and every
distribution, policy, reply, transcript, and random-tape realization. Hence
the dependency margin transfers with zero residual to
\[
h(x)\langle w_h,\phi_G(x)\rangle\ge\rho>\frac12
\]
for every \(x\).

Lemma~\ref{lem:step-005-binary-sign} then performs the required two-case
binary implication and gives the exact strict inequalities in (11), so no tie
or sign convention remains hidden. Proposition~\ref{prop:step-005-exact-representation}
composes these results with the accepted dependency in the exact quantifier
order and verifies \(L=1\), \(\varepsilon=0\), empty \(X\), and the
excluded empty-\(H\) extension. These named results prove every clause of the
accepted `step_005` row and export one deterministic exact
\(L\)-dimensional sign representation to `step_006`.

## Explicit Rate Audit

- Exposed variables: \(\varepsilon\),
  \(\rho=1-2\varepsilon\), and the finite catalog dimension \(L\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(X,H,D,h,\pi\), replies, transcripts,
  learner coins, \(m,\tau,\varepsilon,L,B\), or \(k\).
- Fixed quantities: the learner specification, its primitive catalog \(G\),
  and the family constants \(B,k\). A target \(h\) is fixed only during
  construction of its own accepted weight \(w_h\).
- Probability mode: deterministic. Learner randomness and policy dependence
  have already been eliminated by the accepted dependency; this step adds no
  random object, event, expectation, or probability conversion.
- Horizon mode: fixed finite horizon as inherited through the dependency,
  including \(m=0\). This algebraic step performs no temporal or all-time
  upgrade.
- Norm mode: exact pointwise signed scalar margin
  \(h(x)\langle w_h,\phi_G(x)\rangle\) and strict pointwise sign. No average,
  norm surrogate, or probabilistic representation metric is introduced.
- Admissibility conditions and auxiliary tolerances: finite \(L\ge1\),
  \(0\le\varepsilon<1/4\), and the accepted all-domain weight. There is no
  auxiliary tolerance or slack parameter.
- Term absorption or simplification inequalities: None. The only quantitative
  steps are the exact identity (12), the score bound (6), and
  \[
  \varepsilon<\frac14
  \quad\Longrightarrow\quad
  \rho=1-2\varepsilon>\frac12>0.
  \]
  No term is dropped, dominated, or absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The step exports the exact
  pointwise margin and strict-sign certificate to `step_006`; it performs no
  public-rate simplification.
- Baseline-reduction check: At \(\varepsilon=0\), the displayed margin is
  \(1\) exactly; at \(L=1\), the same theorem uses the unique simplex weight;
  for \(X=\varnothing\), pointwise claims are vacuous rather than approximate;
  and the excluded \(H=\varnothing\) extension is vacuous. No baseline is
  replaced by a weaker surrogate.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** The map \(\phi_G\) is already setting-defined
  and is determined solely by the primitive catalog. The weight \(w_h\) is
  the public-facing accepted dependency object. The exact inner-product
  margin and strict-sign certificate are the only new public-facing output;
  no new public helper symbol is introduced.
- **Appendix-local objects.** None. The score \(s_w\), simplex \(\Delta_L\),
  catalog, and margin \(\rho\) are setting-defined rather than new local
  aliases.
- **Proof-local objects.** The scalars \(a\) and \(z\) in
  Lemma~\ref{lem:step-005-binary-sign} are proof-local quantified variables.
  They are instantiated directly by \(h(x)\) and the displayed inner product
  and are not exported.
- **Constant and threshold provenance.** The only margin constant is the
  setting-defined \(\rho=1-2\varepsilon\). The threshold \(1/2\) follows
  directly from the primitive condition \(\varepsilon<1/4\), and zero is the
  strict-sign boundary. No new constant, radius, rate, tolerance, or hidden
  bounded quantity is introduced.
- **Assumption provenance.** Binary target and catalog values, finite
  \(L\ge1\), catalog independence, and the parameter range are primitive.
  The generated weight and its all-domain score margin are supplied by the
  accepted dependency. The same-target coordinate identity and strict-sign
  conversion are proved by the named local lemmas. The local hypothesis
  \(az\ge\rho\) is discharged by (12) before it contributes to the
  unconditional representation proposition.
- **Common-map independence audit.** The coordinate list in \(\phi_G\)
  contains only the primitive functions \(g_i\), all fixed before any
  instance, policy, reply, or coin realization. The target appears only in
  the weight subscript \(w_h\), never in the map.
- **Same-target and residual audit.** The accepted dependency uses
  \(s_{w_h}(x)=\sum_iw_{h,i}g_i(x)\), and the primitive coordinate inner
  product is exactly that same finite sum. Produced and consumed objects,
  coordinates, target, and metric coincide; the transfer residual is zero.
- **Producer-consumer path.** Accepted
  Proposition~\ref{prop:step-004-global-weight} ->
  Lemma~\ref{lem:step-005-coordinate-identity} ->
  Lemma~\ref{lem:step-005-binary-sign} ->
  Proposition~\ref{prop:step-005-exact-representation} -> `step_006`. There
  is no consumer-before-producer edge and no representation property is
  assumed before it is proved.
- **Boundary audit.** The one-coordinate simplex has its unique member;
  \(\varepsilon=0\) gives \(\rho=1\); empty \(X\) has no point constraint;
  and the out-of-setting empty-\(H\) extension has no target instance. None
  requires a favorable distribution, policy, transcript, or tie rule.
- **Diagnostic boundary.** `global_proof.md` and
  `global_proof_review.md` were not read or used. No diagnostic statement is
  evidence, a cited result, an assumption source, or authority for this target
  claim.
