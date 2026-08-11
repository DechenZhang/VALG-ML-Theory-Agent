# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every realized trajectory, prove
  \(A_\omega(x)=\langle v_\omega,x\rangle\) for all \(x\in\mathcal X\).
- Depends on: None.
- Assumptions used: The primitive bias-free depth-two architecture and the
  definitions of \(G_\omega,A_\omega,v_\omega\) in `setting.md`; no generated
  invariant or SGD-stability condition.
- Technical challenge: Preserve exactly the latter-half index range
  \(t=\lceil T/2\rceil,\ldots,T\), and cover arbitrary parameter states,
  ReLU kinks, and zero parameters without using the update recurrence.
- Intended proof tool or cited result: Direct current-notation derivation from
  \(\sigma(r)-\sigma(-r)=r\), followed by finite linear summation.
- Output target: The exact homogeneous identity-coordinate score interface
  consumed by `step_002` and `step_003`.
- Rate objective: Structural exactness with zero residual over the fixed finite
  horizon \(T\).
- Row-local review status: `PENDING` in the accepted sketch; the sketch-level
  review status is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Accepted dependency step proof/review artifacts: None; this step has no
  dependencies.
- Binding setting definitions: \(f_{a,W}(x)=a^\top\sigma(Wx)\), coordinatewise
  \(\sigma(r)=\max\{0,r\}\), the finite latter-half aggregate
  \(G_\omega\), and the definitions of \(A_\omega\) and \(v_\omega\).
- Primitive conditions:
  - The basic setup fixes \(n,m,T\ge 1\), so all displayed matrix products
    and the index range \(\lceil T/2\rceil\le t\le T\) are well-defined and
    finite.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: Fix an arbitrary realized trajectory \(\omega\),
  whose listed states are finite matrices \(W^{(t)}\in\mathbb R^{m\times n}\)
  and vectors \(a^{(t)}\in\mathbb R^m\), an arbitrary listed time \(t\), and an
  arbitrary \(x\in\mathcal X\). These are universal quantifiers for the step,
  not additional theorem conditions or generated stability assumptions.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the binding depth-two architecture, for any finite matrices \(W\), vector \(a\), and \(x\in\mathcal X\), \(f_{a,W}(x)-f_{a,W}(-x)=\langle W^\top a,x\rangle\), including zero coordinates and zero parameters. | Establishes the exact per-iterate antisymmetric score identity. |
| `unit_002` | proposition | Under the same architecture and the finite index range \(I_T=\{t:\lceil T/2\rceil\le t\le T\}\), for every realized trajectory and every \(x\), \(A_\omega(x)=\left\langle\sum_{t\in I_T}(W^{(t)})^\top a^{(t)},x\right\rangle=\langle v_\omega,x\rangle\). | Assembles the exact latter-half aggregate and exports the target interface. |

The local units are non-atomic only because the finite-sum step uses the
per-iterate identity as an independently checkable algebraic input.

## Cited Result Applications

No external paper result, standard theorem, or accepted dependency artifact is
invoked. The scalar identity used below is proved directly in Lemma~\ref{lem:step-001-per-iterate}; it is not imported as a cited result. The only
subsequent proof authority is Proposition~\ref{prop:step-001-aggregate}, whose
assumptions and conclusion are restated in the local lemma map and derivation.

| Result | Restated current-notation claim | Assumption discharge and use |
| ------ | ------------------------------ | ---------------------------- |
| Lemma~\ref{lem:step-001-per-iterate} | For arbitrary finite \(W\), \(a\), and \(x\), the bias-free depth-two score satisfies \(f_{a,W}(x)-f_{a,W}(-x)=\langle W^\top a,x\rangle\). | The network definition and coordinatewise ReLU value are binding setting definitions; the proof checks positive, negative, and zero scalar inputs directly. |
| Proposition~\ref{prop:step-001-aggregate} | For every realized trajectory and \(x\), summing the preceding equality over \(I_T\) gives \(A_\omega(x)=\langle v_\omega,x\rangle\). | The finite index range and definitions of \(G_\omega,A_\omega,v_\omega\) are in `setting.md`; no update, probability, or trajectory invariant is invoked. |

## Local Derivation

### unit_001: lemma

**Lemma (Per-iterate ReLU antisymmetrization).**\label{lem:step-001-per-iterate}

Under the bias-free depth-two architecture specified in `setting.md`, if
\(W\in\mathbb R^{m\times n}\), \(a\in\mathbb R^m\), and
\(x\in\mathcal X\), then
\[
f_{a,W}(x)-f_{a,W}(-x)=\langle W^\top a,x\rangle .
\]
This statement is pointwise for arbitrary finite \(a,W,x\); it does not
assume that they came from a stable, bounded, or otherwise regular trajectory.

**Proof.** Let \(r_j=(Wx)_j\) for \(j=1,\ldots,m\). Linearity of the matrix
map gives \(W(-x)=-Wx\), and hence
\[
\begin{aligned}
f_{a,W}(x)-f_{a,W}(-x)
 &=\sum_{j=1}^m a_j\bigl(\sigma(r_j)-\sigma(-r_j)\bigr).
\end{aligned}
\]
For every real \(r\), the ReLU definition gives
\[
\sigma(r)-\sigma(-r)=\max\{0,r\}-\max\{0,-r\}=r.
\]
Indeed, if \(r>0\) the two terms are \(r\) and \(0\), if \(r<0\) they are
\(0\) and \(-r\), and if \(r=0\) both are zero. Therefore
\[
\sum_{j=1}^m a_j\bigl(\sigma(r_j)-\sigma(-r_j)\bigr)
 =\sum_{j=1}^m a_j r_j
 =a^\top Wx
 =\langle W^\top a,x\rangle,
\]
which proves the claim. The argument is valid when any \(r_j=0\), when
\(a=0\), or when \(W=0\); no derivative or choice of subgradient at a kink
is used. \(\square\)

### unit_002: proposition

**Proposition (Exact latter-half aggregate linearization).**\label{prop:step-001-aggregate}

Under the binding definitions of `setting.md`, let
\[
I_T:=\{t\in\mathbb Z:\lceil T/2\rceil\le t\le T\}.
\]
For every realized trajectory \(\omega\) and every \(x\in\mathcal X\),
\[
A_\omega(x)=G_\omega(x)-G_\omega(-x)
=\left\langle\sum_{t\in I_T}(W^{(t)})^\top a^{(t)},x\right\rangle
=\langle v_\omega,x\rangle .
\]

**Proof.** Since \(T\ge1\), \(I_T\) is a finite nonempty integer interval,
and the definition of the aggregate gives
\[
\begin{aligned}
A_\omega(x)
 &=\sum_{t\in I_T}f_{a^{(t)},W^{(t)}}(x)
   -\sum_{t\in I_T}f_{a^{(t)},W^{(t)}}(-x)\\
 &=\sum_{t\in I_T}
   \bigl(f_{a^{(t)},W^{(t)}}(x)-f_{a^{(t)},W^{(t)}}(-x)\bigr).
\end{aligned}
\]
Applying Lemma~\ref{lem:step-001-per-iterate} separately at each listed time
and using finite linearity of the inner product yields
\[
A_\omega(x)
 =\sum_{t\in I_T}\langle (W^{(t)})^\top a^{(t)},x\rangle
 =\left\langle\sum_{t\in I_T}(W^{(t)})^\top a^{(t)},x\right\rangle.
\]
The vector inside the last inner product is exactly the setting definition of
\(v_\omega\), so the displayed identity follows. Every time state is treated
as an arbitrary realized pair \((a^{(t)},W^{(t)})\); consequently the result
applies at initialization, after the first update, and after any later update,
without invoking the SGD gradient convention or any trajectory invariant.
For \(T=1\), \(I_T=\{1\}\), so the same calculation contains exactly the one
returned latter-half iterate. \(\square\)

## Target-Step Assembly

Fix an arbitrary realized trajectory \(\omega\) and arbitrary
\(x\in\mathcal X\). Lemma~\ref{lem:step-001-per-iterate} proves the exact
antisymmetrization of each state in the specified architecture, including all
ReLU-kink and zero-parameter cases. Proposition~\ref{prop:step-001-aggregate}
then sums precisely over \(t=\lceil T/2\rceil,\ldots,T\), and its final vector
is the setting-defined \(v_\omega\). Hence
\[
A_\omega(x)=\langle v_\omega,x\rangle
\qquad\text{for every realized }\omega\text{ and every }x\in\mathcal X,
\]
which is exactly the accepted `step_001` claim. The proof is pathwise and
deterministic; it makes no statement about, and needs no upgrade of, the law
\(\mathbb Q_{\mathcal D,h}\). The empty-class case \(\mathcal H=\varnothing\)
does not alter this algebraic identity (and is vacuous for later target
quantifiers), while the exact/noiseless case \(\varepsilon=0\) preserves the
same zero-residual equality.

## Explicit Rate Audit

- Exposed variables: The structural setup exposes \(n,m,T,\eta\), the finite
  index set \(I_T\), and the realized quantities \(a^{(t)},W^{(t)},x\). The
  exported score relation has exact residual zero and no asymptotic factor.
- Hidden constants may depend on: Nothing; no hidden constant is introduced.
- Hidden constants may not depend on: \(n,m,T,\eta,\varepsilon,\mathcal H,\mathcal D,h\),
  the initialization, the sample path, or any parameter state.
- Fixed quantities: The architecture, width, stepsize, and finite horizon are
  fixed as in `setting.md`; the identity is checked for each realized path and
  each finite index in \(I_T\).
- Probability mode: Deterministic, pathwise, for every realization. No
  expectation, high-probability assertion, conditioning, or probability
  conversion is used.
- Horizon mode: Fixed finite horizon; the exact stated latter-half range is
  retained, with no all-time, asymptotic, or stopping-time upgrade.
- Norm mode: Pointwise equality of real-valued scores under the Euclidean inner
  product; no norm, margin, or classification-loss relaxation is introduced.
- Admissibility conditions and auxiliary tolerances: Only the basic setup
  conditions \(n,m,T\ge1\) and finite real parameter states; no auxiliary
  tolerance is used.
- Term absorption or simplification inequalities: None are needed. Each
  per-iterate residual is exactly zero, and a finite sum of zeros is zero.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: Supplies the exact
  zero-residual score interface used by the loss-transfer and
  expectation-to-existence steps; it performs no numerical specialization.
- Baseline-reduction check: At \(T=1\), the identity reduces to the single
  \(t=1\) term. At \(\varepsilon=0\), it remains exact rather than becoming a
  limiting statement. Zero \(a^{(t)}\), zero \(W^{(t)}\), zero coordinates,
  and a resulting \(v_\omega=0\) all give both sides equal to zero.

## Blockers

None.

## Notation And Assumption Notes

- \(I_T\) and \(r_j=(Wx)_j\) are `proof-local` abbreviations. They are
  directly defined from the original setting quantities and are not exported
  as theorem-facing notation. The only public-facing output is
  \(A_\omega=\langle v_\omega,\cdot\rangle\).
- The matrices and vectors at a realized trajectory are generated objects,
  but no property of them beyond being finite real arrays is assumed. The
  identity is proved for arbitrary arrays in Lemma~\ref{lem:step-001-per-iterate},
  so no stability, boundedness, gate pattern, local validity, recurrence, or
  invariant is hidden in the proof.
- The direct mechanism source is the exact scalar ReLU identity together with
  bias-freeness and depth two. The produced score and consumed linear score
  have pointwise residual zero, and the finite latter-half accumulation retains
  that zero residual. If biases or a deeper composition were allowed, the same
  algebra would not generally supply this interface; those regimes are outside
  the accepted setting, not omitted assumptions.
- The ReLU value at a kink is \(\sigma(0)=0\). The source gradient convention
  used by SGD is irrelevant because this step compares function values only.
  The entry and boundary traces (initialization, first update, later updates,
  \(W=0\), \(a=0\), \(v_\omega=0\), and \(T=1\)) are therefore covered by
  the same direct derivation.
- No source-direction or progress-type change is made. The branch remains the
  accepted `material_partial` exact specialized theorem, and this step neither
  claims the unrestricted general-depth result nor weakens the exact score
  interface.
- The paired `global_proof_review.md` was read and is marked `ACCEPTED`. Its
  step-relevant diagnostic observation was that the ReLU identity is active at
  initialization, updates, kinks, and zero parameters. That observation was
  used only to plan boundary checks; `global_proof.md` is not proof evidence,
  a cited result, an assumption source, or authority to change the target.
