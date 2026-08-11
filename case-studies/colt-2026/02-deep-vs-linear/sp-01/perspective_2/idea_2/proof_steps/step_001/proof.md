# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: If \(\mathcal H=\varnothing\) or \(d=0\), prove the target exactly; otherwise reduce to \(\mathcal H\ne\varnothing,d\ge1\) and prove \(S\ge n\ge1\), \(T,S\ge1\).
- Depends on: None.
- Assumptions used: Primitive `assump:source-regime`, primitive `assump:tie-resolved-confident-map`; setting definitions.
- Technical challenge: Correctly interpret the deterministic success event in \(\mathbb R^0\) and preserve \(\tau\).
- Intended proof tool or cited result: Direct derivation from the zero-dimensional conventions and the first-layer parameter count.
- Output target: Boundary theorem branches and structural controls for later rate steps.
- Rate objective: Structural-parameter objective: exact null-case reduction and \(S\ge n\).
- Row-local review status: `PENDING` in the accepted sketch; the sketch-level review status is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Accepted dependency step proof/review artifacts: None; this step has no dependencies.
- Binding setting definitions and conventions: \(\operatorname{dc}(\varnothing)=0\), \(\mathbb R^0=\{0\}\), \(\langle0,0\rangle=0\), and \(\operatorname{sgn}_{\tau}(0)=\tau\).
- Primitive conditions:
  - `assump:source-regime`: in particular, \(n,L,T\in\mathbb Z_{\ge1}\), \(d\in\mathbb Z_{\ge0}\), \(n_0=n\), \(n_L=1\), all applicable widths are positive integers, and \(S=\sum_{i=1}^L n_i n_{i-1}\).
  - `assump:tie-resolved-confident-map`: one law \(\mathcal P\) on maps into \(\mathbb R^d\) gives each fixed \(h\in\mathcal H\) probability at least \(1/2\) of exact full-domain representation under \(\operatorname{sgn}_{\tau}\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: the three exhaustive case conditions \(\mathcal H=\varnothing\); \(\mathcal H\ne\varnothing,d=0\); and \(\mathcal H\ne\varnothing,d\ne0\). These are case splits, not additional theorem assumptions or generated invariants.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:source-regime} and the convention \(\operatorname{dc}(\varnothing)=0\), if \(\mathcal H=\varnothing\), then \(\operatorname{dc}(\mathcal H)=0\le 7TSd\). | Closes the empty-class branch exactly. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:source-regime} and \ref{assump:tie-resolved-confident-map} and the stated \(\mathbb R^0\) and tie conventions, if \(\mathcal H\ne\varnothing\) and \(d=0\), then every \(h\in\mathcal H\) is the constant \(\tau\) classifier and \(\operatorname{dc}(\mathcal H)=0=7TSd\). | Closes the zero-dimensional branch and audits the exact-success event. |
| `unit_003` | proposition | Under Assumption~\ref{assump:source-regime}, if \(\mathcal H\ne\varnothing\) and \(d\ne0\), then \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\); when \(L=1\), in fact \(S=n\). | Establishes the nondegenerate branch and structural controls consumed later. |

## Cited Result Applications

No external paper result, standard theorem, or dependency-step result is invoked. The target-step assembly uses only the following locally proved results.

| Result | Restated statement in current notation | Assumption discharge and use |
| ------ | --------------------------------------- | ---------------------------- |
| Proposition~\ref{prop:step-001-empty} (Exact empty-class closure) | If \(\mathcal H=\varnothing\), then \(\operatorname{dc}(\mathcal H)=0\le7TSd\). | The dimension convention is in `setting.md`; nonnegativity of the right-hand side follows from Assumption~\ref{assump:source-regime}. Used in the empty branch of the assembly. |
| Lemma~\ref{lem:step-001-zero} (Zero-dimensional tie-resolved closure) | If \(\mathcal H\ne\varnothing\) and \(d=0\), the confident-map event forces every \(h\) to equal \(\tau\) pointwise, and \(\operatorname{dc}(\mathcal H)=0=7TSd\). | The singleton \(\mathbb R^0\) and tie conventions are binding definitions; the probability lower bound is Assumption~\ref{assump:tie-resolved-confident-map}. Used in the \(d=0\) branch. |
| Proposition~\ref{prop:step-001-architecture} (First-layer structural bound) | If \(\mathcal H\ne\varnothing\) and \(d\ne0\), then \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\), with \(S=n\) when \(L=1\). | Every parameter and width fact follows from Assumption~\ref{assump:source-regime}. Used in the remaining branch and exported to later steps. |

## Local Derivation

### unit_001: proposition

**Proposition (Exact empty-class closure).** \(\label{prop:step-001-empty}\)
Under Assumption~\ref{assump:source-regime} and the setting convention \(\operatorname{dc}(\varnothing)=0\), if \(\mathcal H=\varnothing\), then
\[
\operatorname{dc}(\mathcal H)=0\le 7TSd.
\]

**Proof.** The defining convention gives \(\operatorname{dc}(\mathcal H)=\operatorname{dc}(\varnothing)=0\). Assumption~\ref{assump:source-regime} gives \(T\ge1\), \(d\ge0\), and a nonempty sum \(S=\sum_{i=1}^L n_i n_{i-1}\) of positive integer products. Hence \(7TSd\ge0\), which proves the displayed inequality. \(\square\)

### unit_002: lemma

**Lemma (Zero-dimensional tie-resolved closure).** \(\label{lem:step-001-zero}\)
Under Assumptions~\ref{assump:source-regime} and \ref{assump:tie-resolved-confident-map} and the setting conventions \(\mathbb R^0=\{0\}\), \(\langle0,0\rangle=0\), and \(\operatorname{sgn}_{\tau}(0)=\tau\), if \(\mathcal H\ne\varnothing\) and \(d=0\), then every \(h\in\mathcal H\) satisfies \(h(x)=\tau\) for all \(x\in\mathcal X\), and
\[
\operatorname{dc}(\mathcal H)=0=7TSd.
\]

**Proof.** Since \(\mathbb R^0\) is the singleton \(\{0\}\), there is exactly one map from \(\mathcal X\) to \(\mathbb R^0\), namely the map \(\phi_0\) with \(\phi_0(x)=0\) for every \(x\). Therefore every probability law on such maps, including the law \(\mathcal P\) in Assumption~\ref{assump:tie-resolved-confident-map}, assigns probability one to \(\phi_0\). There is also exactly one candidate separator \(w\in\mathbb R^0\), namely \(w=0\).

Fix any \(h\in\mathcal H\). Because \(n\ge1\), the domain \(\mathcal X=\{-1,+1\}^n\) is nonempty, so the confident-map premise may be instantiated at any distribution on \(\mathcal X\). Its success event for this fixed \(h\) is
\[
E_h
:=
\left\{\phi:\ \exists w\in\mathbb R^0\ \forall x\in\mathcal X,
\operatorname{sgn}_{\tau}(\langle w,\phi(x)\rangle)=h(x)\right\}.
\]
For the sole possible map \(\phi_0\), and using that the separator space \(\mathbb R^0\) is also a singleton,
\[
\begin{aligned}
\phi_0\in E_h
&\iff
\forall x\in\mathcal X,\
\operatorname{sgn}_{\tau}(\langle0,0\rangle)=h(x)\\
&\iff
\forall x\in\mathcal X,\ h(x)=\tau.
\end{aligned}
\]
Thus \(E_h\) is deterministic: its \(\mathcal P\)-probability is either zero or one. Assumption~\ref{assump:tie-resolved-confident-map} gives \(\mathcal P(E_h)\ge1/2\), so \(\mathcal P(E_h)=1\), and hence \(h(x)=\tau\) for every \(x\). Since \(h\) was arbitrary, this holds for every member of \(\mathcal H\).

The same map \(\phi_0\), together with the separator \(u_h=0\) for every \(h\in\mathcal H\), therefore satisfies
\[
\operatorname{sgn}_{\tau}(\langle u_h,\phi_0(x)\rangle)
=\operatorname{sgn}_{\tau}(0)
=\tau
=h(x)
\qquad\text{for all }h\in\mathcal H, x\in\mathcal X.
\]
Dimension \(q=0\) is consequently feasible in the definition of \(\operatorname{dc}(\mathcal H)\). Since that definition minimizes over \(q\in\mathbb Z_{\ge0}\), it follows that \(\operatorname{dc}(\mathcal H)=0\). Finally, \(d=0\) gives \(7TSd=0\), proving exact equality. \(\square\)

### unit_003: proposition

**Proposition (First-layer structural bound).** \(\label{prop:step-001-architecture}\)
Under Assumption~\ref{assump:source-regime}, if \(\mathcal H\ne\varnothing\) and \(d\ne0\), then
\[
d\ge1,
\qquad
S\ge n\ge1,
\qquad
T\ge1,
\qquad
S\ge1.
\]
Moreover, if \(L=1\), then \(S=n\).

**Proof.** Assumption~\ref{assump:source-regime} states that \(d\in\mathbb Z_{\ge0}\). Hence the branch condition \(d\ne0\) implies \(d\ge1\). The same assumption gives \(n,L,T\in\mathbb Z_{\ge1}\), so \(n\ge1\) and \(T\ge1\).

For every allowed depth, \(n_1\ge1\): when \(L\ge2\), it is a positive hidden width, while when \(L=1\), it is the output width \(n_1=n_L=1\). The first summand in the definition of \(S\) therefore obeys
\[
n_1n_0=n_1n\ge n.
\]
All summands in \(S=\sum_{i=1}^L n_i n_{i-1}\) are positive, so
\[
S\ge n_1n_0\ge n\ge1.
\]
This proves both \(S\ge n\) and \(S\ge1\). If \(L=1\), the sum has only its first term and \(n_1=n_L=1\); hence
\[
S=n_1n_0=1\cdot n=n.
\]
Thus the same count covers the depth-one boundary without presupposing a hidden layer. \(\square\)

## Target-Step Assembly

The case split is exhaustive. If \(\mathcal H=\varnothing\), Proposition~\ref{prop:step-001-empty} proves the target exactly. Otherwise \(\mathcal H\ne\varnothing\). In that branch, if \(d=0\), Lemma~\ref{lem:step-001-zero} proves \(\operatorname{dc}(\mathcal H)=0=7TSd\) with the fixed tie convention. If instead \(d\ne0\), Proposition~\ref{prop:step-001-architecture} gives
\[
\mathcal H\ne\varnothing,\qquad d\ge1,\qquad S\ge n\ge1,\qquad T,S\ge1,
\]
and explicitly includes the \(L=1\) case. These are exactly the boundary conclusions and remaining-branch structural controls required by the accepted `step_001` row.

## Explicit Rate Audit

- Exposed variables: \(n,L,(n_i)_{i=0}^L,S,T,d\), and the branch condition on \(\mathcal H\). The null-branch target exposes \(7TSd\), while the structural export is \(n\le S\).
- Hidden constants may depend on: Nothing. The number \(7\) is copied from the theorem target and is not a hidden constant introduced by this step.
- Hidden constants may not depend on: \(n,\mathcal H,L,(n_i),S,\eta,T,\varepsilon,d\), or \(\mathcal P\).
- Fixed quantities: This is a finite, nonasymptotic case reduction for the fixed setup in `setting.md`.
- Probability mode: The conclusions are deterministic. In the \(d=0\) branch, the premise's probability statement is converted exactly because its map sample space is a singleton and \(E_h\) has probability in \(\{0,1\}\); the lower bound \(\mathcal P(E_h)\ge1/2\) forces probability one.
- Horizon mode: Fixed finite \(T\); only \(T\ge1\) is used, and no uniform-time or asymptotic claim is made.
- Norm mode: Exact full-domain equality after \(\operatorname{sgn}_{\tau}\), measured by \(\operatorname{dc}\); no margin, approximation norm, or risk surrogate is introduced.
- Admissibility conditions and auxiliary tolerances: Only the two listed primitive assumptions and the exhaustive branch conditions are used. There are no auxiliary tolerances.
- Term absorption or simplification inequalities: \(0\le7TSd\) in the empty branch; \(7TSd=0\) when \(d=0\); and \(S\ge n_1n_0=n_1n\ge n\ge1\) in the remaining branch.
- Probability conversion: The exact singleton-event calculation in Lemma~\ref{lem:step-001-zero}; no union bound, conditioning loss, or residual occurs.
- Contribution to any Rate Specialization Bridge: Proposition~\ref{prop:step-001-architecture} exports \(n\le S\) for the later elimination of \(n\). This step performs no polynomial specialization.
- Baseline-reduction check: The inherited empty-class and \(d=0\) conclusions remain exact dimension-zero statements. At \(L=1\), the structural bound reduces to the equality \(S=n\), so no hidden-depth loss is introduced.

## Blockers

None.

## Notation And Assumption Notes

- The map \(\phi_0:\mathcal X\to\mathbb R^0\), event \(E_h\), and separator witnesses \(u_h=0\) are `proof-local`. The map and separators are uniquely determined by the binding \(\mathbb R^0\) convention; the event is the exact event from Assumption~\ref{assump:tie-resolved-confident-map} specialized to \(d=0\). No new randomness is introduced.
- The fact that \(E_h\) is deterministic is proved in Lemma~\ref{lem:step-001-zero}; it is not assumed as a primitive condition or generated invariant. The event's probability is shown explicitly to be zero or one before the premise's \(1/2\) threshold is used.
- The public-facing exported interface is minimal: exact closure of the \(\mathcal H=\varnothing\) and \(d=0\) branches, and in the remaining branch \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\). The local event and unique-map notation are not exported.
- The three theorem-style local results are `appendix-local`; their displayed conclusions supply the public-facing interface above. No new constant, radius, threshold, rate, margin, bounded quantity, or finite-tube quantity is introduced.
- `assump:source-regime` and `assump:tie-resolved-confident-map` are primitive theorem conditions. There are no dependency-supplied invariants and no unproved generated-object condition used in the target-step assembly. In particular, `assump:universal-sgd-success` is not needed for this step.
- The relevant G1 planning discussion in `global_proof.md` was read only after confirming that its paired `global_proof_review.md` is current and has status `ACCEPTED`. It suggested the singleton-event audit and the \(L=1\) count check, but it is not used as proof evidence, a cited result, an assumption source, or authority to alter the accepted target claim.
