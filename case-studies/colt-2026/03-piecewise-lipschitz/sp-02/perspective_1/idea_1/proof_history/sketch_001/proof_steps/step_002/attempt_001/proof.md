# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_002` | Prove (G_1=1\Rightarrow\|G\|_2\geq1), the exact normalized-derivative identity, and (\Gamma_{\mathrm{proj}}(F)\leq\sqrt N D_*/h) on all (\Theta). | `step_001` | Primitive: `assump:parameter-regime`, `assump:anchored-unit-range`; derived: `step_001` derivative envelope | Establish a source-adequate nonvanishing denominator and preserve the exact (h^{-1}) transfer on the same normalized target. | Direct differentiation of (G/\|G\|_2), Euclidean projector norm, and exact affine coordinate change. | Global nonvanishing and projective-speed certificate. | R1 and R5: exact (\sqrt N/h) factor and retained (B_Q=1/\delta) specialization. | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(N\geq1\), \(h>0\),
    \(\Theta=[c-h,c+h]\), and
    \(x(\theta)=(\theta-c)/h\). This supplies the dimension, the
    nondegenerate affine coordinate change, and its derivative \(x'=h^{-1}\).
  - `assump:anchored-unit-range`: \(Q_1\equiv1\). The unit-range
    clause for the chain is part of this primitive assumption but is not used
    directly in the present step; it was used upstream to prove the accepted
    coordinate derivative envelope.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-001-coordinate-envelope} from the accepted
    `step_001` dependency gives \(G\in C^1([-1,1];\mathbb R^N)\)
    and, with
    \[
    D_*:=\Delta B_Q(1+qB_P),
    \]
    the simultaneous bound
    \[
    \lvert G_i'(x)\rvert\leq D_*
    \quad
    (x\in[-1,1],\ 1\leq i\leq N).
    \]
    The accepted artifacts are
    `perspective_1/idea_1/proof_steps/step_001/proof.md` with
    SHA-256
    `b846300f0428d90bf5fd1d418223567a34baf7d1c39d6ef5d5e62dab911cc46f`
    and
    `perspective_1/idea_1/proof_steps/step_001/review.md` with
    status `ACCEPTED` and SHA-256
    `cbffa6c670710873223b51cafa6a8eded4d3bb4a4ae45517dd2c30f9f1fafb97`.
- Local conditional hypotheses: None.

The common-chain presentation is not promoted to a new premise of this step.
Its only quantitative output used here is the accepted derived invariant from
Proposition~\ref{prop:step-001-coordinate-envelope}, exactly as allocated by
the sketch row. No generated event, trajectory condition, recurrence,
transversality condition, or additional norm margin is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | With no setting assumption, a nonvanishing Euclidean \(C^1\) curve \(v\) has a \(C^1\) normalization \(\gamma=v/\lVert v\rVert_2\) satisfying \(\gamma'=(I_N-\gamma\gamma^{\mathsf T})v'/\lVert v\rVert_2\); the displayed matrix is an orthogonal projector and hence a contraction. | Proves the exact normalized-derivative identity and the norm inequality without assuming a projective-speed bound. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-unit-range} and accepted Proposition~\ref{prop:step-001-coordinate-envelope}, one has \(G_1\equiv F_1\equiv1\), global nonvanishing, the exact normalized-derivative and coordinate-transfer identities, and \(\Gamma_{\mathrm{proj}}(F)\leq\sqrt N D_*/h\). | Applies the normalization lemma to the actual branch curve, uses the accepted coordinate envelope, and exports the exact target certificate. |

Atomic step = no. The normalized-curve identity and projector contraction are
an independent reusable subclaim, while their application to the branch also
requires the anchor, the accepted derivative envelope, and the affine
coordinate transfer.

## Cited Result Applications

External paper results: None.

1. **Proposition~\ref{prop:step-001-coordinate-envelope} (accepted dependency:
   coordinate derivative envelope).** Under
   Assumptions~\ref{assump:balcan-common-chain} and
   \ref{assump:anchored-unit-range}, the accepted proposition defines
   \(D_*=\Delta B_Q(1+qB_P)\), proves
   \(G\in C^1([-1,1];\mathbb R^N)\), and concludes
   \[
   \lvert G_i'(x)\rvert\leq D_*
   \quad
   \text{for every }x\in[-1,1]\text{ and }1\leq i\leq N.
   \]
   Its proof artifact is exactly the file hash recorded in
   `## Allowed Assumptions And Dependencies`, and its accepted
   review records that same proof hash. The current sketch row authorizes this
   conclusion as a derived invariant. The present proof uses only its
   \(C^1\) conclusion and coordinatewise inequality; it does not reopen or
   strengthen the upstream assumptions.

2. **One-variable \(C^1\) differentiation rules (standard theorem).** If
   \(u,w\) are \(C^1\) scalar or finite-dimensional vector functions on a
   closed interval, then inner products, products, and compositions with
   \(C^1\) functions obey the ordinary product and chain rules at interior
   points. If a scalar denominator is nowhere zero, its reciprocal and the
   corresponding quotient are \(C^1\). At an endpoint, the same identities
   hold with the appropriate one-sided derivative; equivalently, they follow
   by taking the one-sided limit of the continuous interior identities. In
   particular, for a nonvanishing vector curve \(v\),
   \[
   \frac{d}{dt}\langle v(t),v(t)\rangle
   =2\langle v(t),v'(t)\rangle,
   \]
   and the positive square-root chain rule is applicable to
   \(\langle v,v\rangle>0\). For the branch coordinate map,
   \(x(\theta)=(\theta-c)/h\), the vector chain rule gives
   \((u\circ x)'(\theta)=u'(x(\theta))/h\). The hypotheses for the first use
   are checked in Lemma~\ref{lem:step-002-normalized-curve}. For the second
   use, Assumption~\ref{assump:parameter-regime} supplies the \(C^1\) affine
   map \(x\), while the accepted dependency, the anchor, and that lemma
   establish that \(\gamma_G\) is \(C^1\) before the composition rule is
   invoked in the branch proposition.

3. **Lemma~\ref{lem:step-002-normalized-curve} (local normalized-curve
   lemma).** For any nonvanishing Euclidean \(C^1\) curve, the lemma proves
   the exact derivative identity
   \[
   \gamma'
   =\frac{(I_N-\gamma\gamma^{\mathsf T})v'}{\lVert v\rVert_2}
   \]
   and proves directly that the projector has Euclidean operator norm at most
   one. It is proved in `unit_001` and instantiated with \(v=G\)
   in Proposition~\ref{prop:step-002-projective-speed}.

4. **Proposition~\ref{prop:step-002-projective-speed} (local target
   proposition).** Under exactly the primitive assumptions and accepted
   dependency allocated by the sketch row, the proposition proves global
   nonvanishing, identifies the actual normalized \(F\)-curve as
   \(\gamma_G\circ x\), and concludes
   \[
   \Gamma_{\mathrm{proj}}(F)
   \leq\frac{\sqrt N D_*}{h}.
   \]
   It is proved in `unit_002` and is the sole branch-specific
   mathematical result exported in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Derivative and contraction for a normalized Euclidean curve).**
\label{lem:step-002-normalized-curve}
With no setting assumption, let \(N\geq1\), let \(a<b\), and let
\(v\in C^1([a,b];\mathbb R^N)\) satisfy
\(\lVert v(t)\rVert_2>0\) for every \(t\in[a,b]\). Define
\[
r(t):=\lVert v(t)\rVert_2,
\qquad
\gamma(t):=\frac{v(t)}{r(t)}.
\]
Then \(r\in C^1([a,b])\), \(\gamma\in C^1([a,b];\mathbb R^N)\), and, at every
interior point and at both endpoints under the one-sided derivative
convention,
\[
r'(t)=\gamma(t)^{\mathsf T}v'(t)
=\frac{v(t)^{\mathsf T}v'(t)}{\lVert v(t)\rVert_2},
\]
\[
\gamma'(t)
=\frac{\bigl(I_N-\gamma(t)\gamma(t)^{\mathsf T}\bigr)v'(t)}
       {\lVert v(t)\rVert_2}.
\]
Moreover, \(I_N-\gamma(t)\gamma(t)^{\mathsf T}\) is the orthogonal projector
onto \(\gamma(t)^\perp\), and therefore
\[
\left\|I_N-\gamma(t)\gamma(t)^{\mathsf T}\right\|_{2\to2}\leq1,
\qquad
\lVert\gamma'(t)\rVert_2
\leq\frac{\lVert v'(t)\rVert_2}{\lVert v(t)\rVert_2}.
\]
When \(N=1\), every such normalized curve is constant with value \(1\) or
\(-1\), so its derivative and the displayed projector are identically zero.

**Proof / justification.** Since \(v(t)\neq0\),
\[
r(t)=\bigl(v(t)^{\mathsf T}v(t)\bigr)^{1/2}
\]
is a composition through the \(C^1\) positive square-root function. The
checked differentiation rules give
\[
2r(t)r'(t)=2v(t)^{\mathsf T}v'(t),
\]
and division by \(2r(t)>0\) yields
\[
r'(t)
=\frac{v(t)^{\mathsf T}v'(t)}{r(t)}
=\gamma(t)^{\mathsf T}v'(t).
\]
Differentiating \(\gamma=v/r\) and substituting this identity gives
\[
\begin{aligned}
\gamma'
&=\frac{v'}{r}-\frac{v\,r'}{r^2}\\
&=\frac{v'}{r}
  -\frac{v}{r}\frac{\gamma^{\mathsf T}v'}{r}\\
&=\frac{v'-\gamma\gamma^{\mathsf T}v'}{r}\\
&=\frac{(I_N-\gamma\gamma^{\mathsf T})v'}{\lVert v\rVert_2}.
\end{aligned}
\]
This is the asserted identity in the same Euclidean coordinates as \(v\);
no reparameterization or surrogate curve has entered.

Because \(\gamma^{\mathsf T}\gamma=1\), the matrix
\(\Pi:=I_N-\gamma\gamma^{\mathsf T}\) satisfies
\[
\Pi^{\mathsf T}=\Pi,
\qquad
\Pi^2
=I_N-2\gamma\gamma^{\mathsf T}
  +\gamma(\gamma^{\mathsf T}\gamma)\gamma^{\mathsf T}
=\Pi.
\]
Thus \(\Pi\) is the orthogonal projector onto \(\gamma^\perp\). More
explicitly, for every \(z\in\mathbb R^N\),
\[
\begin{aligned}
\lVert\Pi z\rVert_2^2
&=z^{\mathsf T}\Pi^{\mathsf T}\Pi z
=z^{\mathsf T}\Pi z\\
&=\lVert z\rVert_2^2-(\gamma^{\mathsf T}z)^2
\leq\lVert z\rVert_2^2.
\end{aligned}
\]
Hence \(\lVert\Pi\rVert_{2\to2}\leq1\), and applying this contraction to the
derivative identity proves
\[
\lVert\gamma'\rVert_2
\leq\frac{\lVert v'\rVert_2}{\lVert v\rVert_2}.
\]

The calculations above hold directly on \((a,b)\). Their right-hand sides
are continuous on \([a,b]\) because \(r>0\), so the checked one-sided
differentiation rules give the identical formulas at \(a\) and \(b\). If
\(N=1\), continuity and nonvanishing force the scalar \(v\) to have one fixed
sign on the connected interval; hence \(\gamma=v/\lvert v\rvert\) is the
corresponding constant sign and \(I_1-\gamma^2=0\). This proves the lemma.
\(\square\)

### unit_002: proposition

**Proposition (Anchored global projective-speed certificate).**
\label{prop:step-002-projective-speed}
Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-unit-range} and the accepted dependency
Proposition~\ref{prop:step-001-coordinate-envelope}, define
\[
D_*:=\Delta B_Q(1+qB_P).
\]
Then, for every \(x\in[-1,1]\) and \(\theta\in\Theta\),
\[
G_1(x)=F_1(\theta)=1,
\qquad
\lVert G(x)\rVert_2\geq1,
\qquad
\lVert F(\theta)\rVert_2\geq1.
\]
Consequently, with
\[
\gamma_G(x):=\frac{G(x)}{\lVert G(x)\rVert_2},
\]
both \(\gamma_G\) and the setting-defined \(\gamma_F\) are \(C^1\) on their
full closed intervals and satisfy, including at endpoints in the one-sided
sense,
\[
\gamma_G'(x)
=\frac{(I_N-\gamma_G(x)\gamma_G(x)^{\mathsf T})G'(x)}
       {\lVert G(x)\rVert_2},
\]
\[
\gamma_F(\theta)=\gamma_G(x(\theta)),
\qquad
\gamma_F'(\theta)=\frac1h\gamma_G'(x(\theta)).
\]
In particular,
\[
\lVert\gamma_F'(\theta)\rVert_2
\leq\frac{\sqrt N\,D_*}{h}
\quad(\theta\in\Theta),
\qquad
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N\,D_*}{h}
=\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
\]

**Proof / justification.** Assumption~\ref{assump:anchored-unit-range} gives
\(Q_1\equiv1\). Substitution into the setting definitions, rather than an
additional norm-margin assumption, gives
\[
G_1(x)
=Q_1(x,\eta_1(x),\ldots,\eta_q(x))
=1
\quad(x\in[-1,1]),
\]
where the list of chain arguments is empty when \(q=0\). Therefore
\[
F_1(\theta)=G_1(x(\theta))=1
\quad(\theta\in\Theta).
\]
The first-coordinate contribution to the Euclidean norm now gives the
pointwise lower bounds
\[
\lVert G(x)\rVert_2^2
=1+\sum_{i=2}^N\lvert G_i(x)\rvert^2\geq1,
\qquad
\lVert F(\theta)\rVert_2^2
=1+\sum_{i=2}^N\lvert F_i(\theta)\rvert^2\geq1,
\]
with empty sums when \(N=1\). Thus both normalizations are globally defined
before any derivative or essential supremum is taken.

Proposition~\ref{prop:step-001-coordinate-envelope} supplies
\(G\in C^1([-1,1];\mathbb R^N)\) and the simultaneous coordinate bound
\(\lvert G_i'(x)\rvert\leq D_*\). The setting definitions imply \(D_*\geq0\).
Consequently, for every \(x\in[-1,1]\),
\[
\begin{aligned}
\lVert G'(x)\rVert_2
&=\left(\sum_{i=1}^N\lvert G_i'(x)\rvert^2\right)^{1/2}\\
&\leq\left(\sum_{i=1}^N D_*^2\right)^{1/2}
=\sqrt N\,D_*.
\end{aligned}
\]
Applying Lemma~\ref{lem:step-002-normalized-curve} with
\(v=G\), \(a=-1\), and \(b=1\) proves the exact target identity
\[
\boxed{
\gamma_G'(x)
=\frac{(I_N-\gamma_G(x)\gamma_G(x)^{\mathsf T})G'(x)}
       {\lVert G(x)\rVert_2}}
\]
on the full closed interval. The projector contraction and the proved anchor
margin then give, pointwise,
\[
\begin{aligned}
\lVert\gamma_G'(x)\rVert_2
&\leq\frac{\lVert G'(x)\rVert_2}{\lVert G(x)\rVert_2}\\
&\leq\frac{\sqrt N\,D_*}{1}
=\sqrt N\,D_*.
\end{aligned}
\]

The identities \(F(\theta)=G(x(\theta))\) and
\(\lVert F(\theta)\rVert_2=\lVert G(x(\theta))\rVert_2\) show directly that
\[
\gamma_F(\theta)
=\frac{G(x(\theta))}{\lVert G(x(\theta))\rVert_2}
=\gamma_G(x(\theta)).
\]
Assumption~\ref{assump:parameter-regime} gives \(h>0\) and
\(x'(\theta)=h^{-1}\). The checked vector chain rule therefore yields
\[
\gamma_F'(\theta)
=\frac1h\gamma_G'(x(\theta))
\]
at every interior point. At \(\theta=c-h\) and \(\theta=c+h\), the same
formula follows from the corresponding one-sided chain rule, mapping exactly
to \(x=-1\) and \(x=1\). Hence the pointwise bound
\[
\lVert\gamma_F'(\theta)\rVert_2
\leq\frac{\sqrt N\,D_*}{h}
\]
holds on all of \(\Theta\). Taking the essential supremum cannot increase
this uniform bound, and therefore
\[
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N\,D_*}{h}
=\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
\]

All degenerate regimes allocated to this step remain inside the proof:

- If \(N=1\), the anchor makes \(G=F=(1)\). Thus
  \(\gamma_G=\gamma_F=1\), both derivatives vanish, and
  \(I_1-\gamma_G^2=0\). In this branch the only output polynomial is the
  constant \(Q_1\), so \(\Delta=0\), \(D_*=0\), and the displayed certificate
  is the exact equality \(0\leq0\).
- If \(q=0\), the setting convention gives \(M=B_P=0\), the chain-argument
  list and all chain sums are empty, and
  \(D_*=\Delta B_Q\). The certificate reduces without loss to
  \(\Gamma_{\mathrm{proj}}(F)\leq\sqrt N\,\Delta B_Q/h\).
- If \(G'\equiv0\), including every constant-output case, the exact projector
  identity gives \(\gamma_G'\equiv\gamma_F'\equiv0\), independently of
  whether the common envelope \(D_*\) is positive. If \(D_*=0\), the accepted
  coordinate envelope itself forces \(G'\equiv0\), with the same conclusion.
- In the setting's scale-test specialization
  \(G(x)=(1,x/\delta)\), \(0<\delta\leq1\), one has
  \(N=2\), \(q=0\), \(M=B_P=0\), \(\Delta=1\), \(h=1\), and
  \[
  B_Q=\max\{1,1/\delta\}=1/\delta,
  \qquad
  D_*=1/\delta.
  \]
  Thus this proposition gives
  \(\Gamma_{\mathrm{proj}}(F)\leq\sqrt2/\delta\), retaining the required
  \(1/\delta\) scale. Indeed, the exact identity also gives
  \[
  \lVert\gamma_G'(x)\rVert_2
  =\frac{1/\delta}{1+(x/\delta)^2},
  \]
  whose value at \(x=0\) is \(1/\delta\); the scale is intrinsic rather than
  an artifact of the coordinatewise estimate.

This proves the proposition. \(\square\)

## Target-Step Assembly

The primitive anchor first yields \(G_1\equiv F_1\equiv1\) and hence the
global denominator margin one. The accepted
Proposition~\ref{prop:step-001-coordinate-envelope} then gives
\[
\lVert G'(x)\rVert_2
\leq\left(\sum_{i=1}^N D_*^2\right)^{1/2}
=\sqrt N D_*.
\]
Lemma~\ref{lem:step-002-normalized-curve} proves both the exact normalized
derivative identity and the Euclidean projector contraction.
Proposition~\ref{prop:step-002-projective-speed} applies these facts to the
actual \(G\), proves the exact same-target relation
\(\gamma_F=\gamma_G\circ x\), and uses \(x'=h^{-1}\) to obtain, on all of
\(\Theta\),
\[
\boxed{
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N D_*}{h}
=\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.}
\]
This is exactly the sketch-row claim. The named proposition also discharges
the endpoint, \(N=1\), \(q=0\), constant or zero-derivative, and
\(B_Q=1/\delta\) scale cases without changing the target, dependency
interface, or norm.

## Explicit Rate Audit

- Exposed variables: \(N,q,M,\Delta,B_P,B_Q,h^{-1}\). The displayed rate is
  \(\sqrt N\,\Delta B_Q(1+qB_P)/h\). The scale parameter \(\delta\) appears
  only in the required specialization through \(B_Q=1/\delta\).
- Hidden constants may depend on: None; every numerical factor is displayed.
- Hidden constants may not depend on: \(N,q,M,\Delta,B_P,B_Q,h\), the point
  \(x\) or \(\theta\), the deterministic presentation, or \(\delta\).
- Fixed quantities: The deterministic common-chain presentation, anchor, and
  affine coordinate map are fixed. No asymptotic limit or parameter choice is
  made.
- Probability mode: Deterministic; no random law, event, confidence
  parameter, expectation, or probability conversion occurs in this step.
- Horizon mode: Pointwise and uniform on the full closed intervals
  \([-1,1]\) and \(\Theta\), followed by the defining essential supremum over
  \(\Theta\). There is no iterative, stopping-time, or asymptotic horizon.
- Norm mode: Euclidean vector norm \(\lVert\cdot\rVert_2\), its induced
  operator norm \(\lVert\cdot\rVert_{2\to2}\), and the Euclidean
  projective-speed definition from the setting.
- Admissibility conditions and auxiliary tolerances: Exactly
  Assumptions~\ref{assump:parameter-regime} and
  \ref{assump:anchored-unit-range}, together with accepted
  Proposition~\ref{prop:step-001-coordinate-envelope}. In particular,
  \(h>0\) and the anchor margin is proved to be one. There is no auxiliary
  tolerance or separately assumed nonvanishing margin.
- Term absorption or simplification inequalities: No term is silently
  absorbed. The complete chain of inequalities is
  \[
  \lVert G'\rVert_2
  \leq\sqrt N D_*,
  \qquad
  \lVert I_N-\gamma_G\gamma_G^{\mathsf T}\rVert_{2\to2}\leq1,
  \qquad
  \lVert G\rVert_2\geq1,
  \]
  and therefore
  \[
  \lVert\gamma_F'\rVert_2
  =\frac1h\lVert\gamma_G'\rVert_2
  \leq\frac{\sqrt N D_*}{h}.
  \]
  The final substitution is the equality
  \(D_*=\Delta B_Q(1+qB_P)\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the exact
  R1 projective-speed interface consumed by the central sweep steps. It also
  preserves the R5 scale interface because \(B_Q=1/\delta\) produces an
  explicit \(1/\delta\) certificate. It performs no law or interval-probability
  specialization.
- Baseline-reduction check, if applicable: For \(q=0\), the rate reduces
  exactly to \(\sqrt N\,\Delta B_Q/h\), with \(M=B_P=0\). For \(N=1\), the
  anchor forces the exact zero-speed result. For \(G'\equiv0\), the
  normalized curve is stationary and the exact identity gives zero speed
  even if the generic envelope is conservative. For
  \(G=(1,x/\delta)\), the certificate is \(\sqrt2/\delta\) and the actual
  speed reaches \(1/\delta\), so the required metric scale is retained.

The dependence on \(M\) is explicitly degree zero: \(M\) does not occur in
the accepted \(D_*\) formula or in any normalization, projector, norm, or
coordinate-transfer factor. Holding the separately exposed \(B_P\) fixed,
no displayed or hidden factor varies with \(M\).

## Blockers

None

## Notation And Assumption Notes

- \(D_*=\Delta B_Q(1+qB_P)\) is `public-facing`. It is defined
  directly from original setting quantities and inherited with its
  coordinatewise bound from accepted
  Proposition~\ref{prop:step-001-coordinate-envelope}; no new bounded
  constant is introduced.
- \(\gamma_G=G/\lVert G\rVert_2\) is `public-facing` because the
  exact normalized-derivative identity is part of this step's target. Its
  global existence and \(C^1\) regularity are proved in
  Proposition~\ref{prop:step-002-projective-speed}, rather than assumed.
- The setting already defines \(x(\theta)\), \(F\), \(\gamma_F\),
  \(\Gamma_{\mathrm{proj}}(F)\), and \(I_N\); none is a new helper object.
- The generic interval endpoints \(a,b\), parameter \(t\), curve \(v\), norm
  \(r\), normalization \(\gamma\), test vector \(z\), and projector
  \(\Pi=I_N-\gamma\gamma^{\mathsf T}\) in
  Lemma~\ref{lem:step-002-normalized-curve} are `proof-local`.
  Their nonvanishing condition is a local hypothesis of that generic lemma;
  the unconditional branch application proves it from the primitive anchor.
- The pointwise quantities \(\lVert G'\rVert_2\) and
  \(\lVert\gamma_F'\rVert_2\) are setting-defined expressions whose bounds
  are proved in Proposition~\ref{prop:step-002-projective-speed}. They are
  not free bounded parameters or assumed invariants.
- The scale-test symbols \(\delta\) and \(G=(1,x/\delta)\) are original
  formalized-goal specialization objects and are used `proof-local`
  to the rate audit. No conclusion about the later probability calculation
  is imported or exported here.
- There are no `appendix-local` helpers, auxiliary radii,
  thresholds, events, finite-tube quantities, confidence parameters, or
  additional public constants.
- Assumption~\ref{assump:parameter-regime} is used only for \(N\geq1\), the
  interval and affine coordinate definitions, \(h>0\), and \(x'=h^{-1}\).
  Assumption~\ref{assump:anchored-unit-range} is used directly only through
  \(Q_1\equiv1\). The accepted dependency supplies \(G\in C^1\) and the
  coordinate derivative envelope. Thus every nonvanishing, boundedness, and
  regularity fact used in the unconditional assembly is primitive, proved in
  this step, or supplied by the accepted dependency.
- The cases \(x=\pm1\), \(\theta=c\pm h\), \(N=1\), \(q=0\), \(D_*=0\),
  \(G'\equiv0\), constant \(G\), and \(B_Q=1/\delta\) are proved inside the
  named proposition rather than excluded through notation or admissibility
  conditions.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified to have status
  `ACCEPTED` and to review the current global-proof hash. Its
  step-relevant planning suggestion was the anchor-to-projector-to-affine
  rescaling decomposition used to organize the two local units. Every part
  of that decomposition was independently proved above. The diagnostic was
  not used as evidence, a cited result, an assumption source, or authority to
  alter the target claim, dependencies, assumptions, scope, or constants.
