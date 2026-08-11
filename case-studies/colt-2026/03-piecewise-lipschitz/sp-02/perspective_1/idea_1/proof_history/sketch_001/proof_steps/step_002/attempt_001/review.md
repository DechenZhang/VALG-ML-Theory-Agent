# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_002
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_002/proof.md
- Reviewed proof SHA-256: 49765e6c5b90d32376cd6d897ee38978833783a445f579e55569b01369f4db1a

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-002-normalized-curve} isolates exactly
  the standard normalized-curve interface required by the accepted sketch row.
  Its statement is self-contained: it declares $N\geq1$, the closed interval,
  $C^1$ regularity, pointwise nonvanishing, the normalization, the endpoint
  convention, both derivative identities, the projector conclusion, and the
  resulting norm inequality before the proof. Its nonvanishing premise is a
  local conditional hypothesis and is not exported as a setting assumption.
- Proof validity: Differentiating $r^2=v^{\mathsf T}v$ gives
  $r'=v^{\mathsf T}v'/r=\gamma^{\mathsf T}v'$. The quotient rule then gives
  
  \[
  \gamma'=\frac{(I_N-\gamma\gamma^{\mathsf T})v'}{\lVert v\rVert_2}.
  \]
  
  The proof verifies symmetry and idempotence of
  $I_N-\gamma\gamma^{\mathsf T}$ and directly shows
  $\lVert(I_N-\gamma\gamma^{\mathsf T})z\rVert_2^2
  =\lVert z\rVert_2^2-(\gamma^{\mathsf T}z)^2$. Thus the claimed contraction
  and derivative bound follow with the correct inequality direction and no
  missing factor.
- Cited-result and assumption audit: No paper result, setting assumption, or
  dependency is used. The one-variable product, chain, reciprocal, and quotient
  rules are restated in current notation before use, including their hypotheses,
  conclusion, positive-denominator condition, and one-sided endpoint form. All
  hypotheses are discharged by the lemma's own $C^1$ and nonvanishing premises.
- Rigor checklist: Quantifiers and dimensions are explicit. Positivity of $r$
  justifies every division and the square-root chain rule. Continuity of the
  displayed right-hand sides justifies the endpoint formulas under the stated
  one-sided convention. No interchange of limits, expectations, suprema, or
  derivatives occurs. The proof uses the Euclidean norm and induced operator
  norm consistently.
- Local adversarial test: For $N=1$, continuity and nonvanishing force a fixed
  sign, so $\gamma\in\{1,-1\}$ is constant and the projector is zero. For a
  radial curve $v(t)=s(t)u$ with fixed nonzero direction, the projector removes
  $v'$ and gives zero normalized speed. For a tangent derivative
  $\gamma^{\mathsf T}v'=0$, the formula reduces to $\gamma'=v'/\lVert v\rVert$.
  All tests agree with the statement, including at both endpoints.
- Contribution to target step: The lemma supplies the exact normalized
  derivative identity and Euclidean contraction subsequently instantiated with
  the actual curve $v=G$ in
  Proposition~\ref{prop:step-002-projective-speed}.
- Verdict: PASS
- Repair direction: None

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-002-projective-speed} states
  the exact accepted `step_002` claim under
  Assumptions~\ref{assump:parameter-regime} and
  \ref{assump:anchored-unit-range} and accepted
  Proposition~\ref{prop:step-001-coordinate-envelope}. It includes
  $G_1=F_1=1$, both global norm margins, the normalized derivative identity,
  the exact same-target relation $\gamma_F=\gamma_G\circ x$, the pointwise
  $h^{-1}$ transfer, and
  $\Gamma_{\mathrm{proj}}(F)\leq\sqrt N D_*/h$ on all of $\Theta$.
- Proof validity: Substituting $Q_1\equiv1$ gives the literal first-coordinate
  anchor and hence $\lVert G\rVert_2,\lVert F\rVert_2\geq1$ before either
  normalization is used. The accepted dependency gives the simultaneous bound
  $|G_i'|\leq D_*$, so
  $\lVert G'\rVert_2\leq(\sum_{i=1}^N D_*^2)^{1/2}=\sqrt N D_*$. Applying the
  preceding lemma is therefore legal. The identities $F=G\circ x$ and
  $x'=h^{-1}$ give $\gamma_F'=h^{-1}\gamma_G'$, and the pointwise uniform bound
  correctly passes to the essential supremum. Every equality and inequality
  has the stated literal constant.
- Cited-result and assumption audit: The accepted dependency is identified by
  theorem-style name, current proof and review hashes, hypotheses, current
  notation, and exact conclusion. Its review is current and has status
  `ACCEPTED`. The proof uses only its $C^1$ and coordinate-envelope outputs.
  The standard vector chain rule is restated and mapped to $\gamma_G$ and the
  affine map $x(\theta)$; $C^1$ regularity, nonvanishing, and $h>0$ are proved or
  supplied before use. The anchor is a primitive condition, while the derivative
  envelope is correctly classified as an accepted derived invariant. No
  generated event, additional margin, or hidden regularity assumption is used.
- Rigor checklist: The conclusions are simultaneous over every
  $x\in[-1,1]$ and $\theta\in\Theta$. Empty sums cover $N=1$ and $q=0$; the
  one-sided chain rule covers $x=\pm1$ and $\theta=c\pm h$. The proof does not
  upgrade a stochastic or convergence mode. The essential supremum step uses a
  pointwise bound with a constant independent of the point. All quantities are
  finite because $N$ and the presentation budgets are finite and $h>0$.
- Local adversarial test: If $N=1$, the anchor forces $G=F=(1)$, so
  $\Delta=D_*=0$, the normalized curves are constant, and the certificate is
  $0\leq0$. If $q=0$, then $M=B_P=0$ and the bound reduces exactly to
  $\sqrt N\,\Delta B_Q/h$. If $G'$ is identically zero, the exact projector
  identity gives zero projective speed even when the common envelope is
  conservative; if $D_*=0$, the dependency forces this stationary case. For
  $G(x)=(1,x/\delta)$ with $0<\delta\leq1$, the proof correctly obtains
  $B_Q=D_*=1/\delta$ and
  $\lVert\gamma_G'(x)\rVert_2=(1/\delta)/(1+(x/\delta)^2)$, whose value at zero
  is $1/\delta$. Thus the required scale is retained rather than hidden.
- Contribution to target step: This proposition combines the primitive anchor,
  the accepted derivative envelope, and the local normalization lemma into the
  exact global nonvanishing and projective-speed certificate consumed by later
  central-sweep steps.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The only reusable nontrivial calculus
claim is exposed as Lemma~\ref{lem:step-002-normalized-curve}. The branch
application, coordinatewise-to-Euclidean estimate, exact coordinate transfer,
essential-supremum passage, endpoint checks, and all requested degenerate and
scale specializations are contained in
Proposition~\ref{prop:step-002-projective-speed}. The one-variable calculus
rules and accepted dependency are restated before use. Local unit IDs appear
only as audit handles; the derivation and assembly use theorem-style labels.

## Target Claim Audit

The proof establishes exactly the accepted sketch-row claim, neither a weaker
nor stronger substitute. Its dependency is exactly accepted `step_001`; its
primitive inputs are exactly `assump:parameter-regime` and
`assump:anchored-unit-range`. It first proves the denominator margin from the
literal anchor, proves the displayed normalized-derivative identity for the
actual $G$, transfers the identical normalized target through
$x(\theta)=(\theta-c)/h$, and concludes on all of $\Theta$

\[
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N\,D_*}{h}
=\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
\]

The quantifier scope, Euclidean norm, endpoint convention, essential-supremum
mode, and literal constants match the setting and sketch. The `N=1`, `q=0`,
stationary-curve, and $B_Q=1/\delta$ regimes are included rather than excluded.

## Explicit Rate Audit

This is a deterministic rate-bearing step. The exposed variables are
$N,q,M,\Delta,B_P,B_Q,h^{-1}$, with no hidden constants, confidence parameter,
auxiliary tolerance, or stochastic conversion. The deterministic presentation
and affine coordinate map are fixed; the horizon mode is pointwise on both full
closed intervals followed by an essential supremum; and the norm modes are the
Euclidean vector norm, its induced operator norm, and the setting's Euclidean
projective speed. The complete visible chain is

\[
\lVert G'\rVert_2\leq\sqrt N D_*,\qquad
\lVert I_N-\gamma_G\gamma_G^{\mathsf T}\rVert_{2\to2}\leq1,
\qquad
\lVert G\rVert_2\geq1,
\]

followed by the exact factor $h^{-1}$ and the equality
$D_*=\Delta B_Q(1+qB_P)$. No term is dropped or absorbed. Dependence on $M$ is
explicitly degree zero when $B_P$ is held fixed. The $q=0$ specialization is
exact, the $N=1$ and stationary baselines give zero speed, and
$B_Q=1/\delta$ yields the required $1/\delta$ scale.

## Notation Surface Audit

The only public-facing helpers are $D_*$, inherited from the accepted
dependency, and $\gamma_G$, required by the target identity. Both have direct
provenance and proved bounds or regularity. The generic interval, curve, norm,
normalization, vector, and projector symbols in the normalization lemma are
correctly classified as proof-local. The setting already defines $x$, $F$,
$\gamma_F$, $\Gamma_{\mathrm{proj}}(F)$, and $I_N$. No unexplained constant,
radius, threshold, event, bounded quantity, or notation cascade is introduced,
and the step exports only the projective-speed interface required downstream.

## Target-Step Assembly Audit

The assembly cites the accepted
Proposition~\ref{prop:step-001-coordinate-envelope},
Lemma~\ref{lem:step-002-normalized-curve}, and
Proposition~\ref{prop:step-002-projective-speed} by theorem-style names and
labels. The primitive anchor supplies nonvanishing, the dependency supplies the
coordinate envelope, the lemma supplies the exact normalization formula and
projector contraction, and the target proposition supplies the same-target
$h^{-1}$ transfer. These inputs jointly imply the exact boxed sketch-row
certificate and all requested boundary cases without a new assumption, lemma,
or assembly-only bridge.

## Review Rationale

Acceptance is warranted because both non-atomic local units are self-contained
and valid line by line; every standard-tool and dependency instantiation is
restated, mapped, and discharged; the hidden-subclaim scan finds no omitted
independent claim; and the named assembly proves the exact target with complete
quantifier, endpoint, constant, and rate provenance. No step, dependency, or
sketch repair is needed, so `None` is the smallest retry target.
