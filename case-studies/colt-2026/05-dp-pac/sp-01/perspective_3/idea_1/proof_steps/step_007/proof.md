# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For arbitrary \(h\), define \(D_Jh(x)=h(J,x)\), prove it is a legal improper threshold-learner output and that its risk is exactly block error \(e_J\).
- Depends on: None
- Assumptions used: Primitive output-space definition
- Technical challenge: No proper projection or monotonicity assumption
- Intended proof tool or cited result: Direct restriction/postprocessing
- Output target: Improper one-block output interface
- Rate objective: None
- Review status: PENDING

For precise local notation, fix any block vector
\((\boldsymbol t,\boldsymbol Q)=((t_i,Q_i))_{i=1}^k\), where
\(t_i\in[N+1]\) and each \(Q_i\) is a probability distribution on
\([N]\). For \(j\in[k]\) and \(h\in\mathcal H_{k,N}\), define

\[
  (D_jh)(x):=h(j,x),\qquad x\in[N],
\]

and define the block error appearing in the sketch by

\[
  e_j(h;\boldsymbol t,\boldsymbol Q)
  :=\sum_{x\in[N]}Q_j(x)
       \mathbf 1\!\left\{h(j,x)\ne c_{\boldsymbol t}(j,x)\right\}
  =\sum_{x\in[N]}Q_j(x)
       \mathbf 1\!\left\{h(j,x)\ne\tau_{t_j}(x)\right\}.
\]

Thus the row's \(D_Jh\) and \(e_J\) are the same objects evaluated at an
arbitrary, possibly random, tag \(J\in[k]\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting definitions \(X_{k,N}=[k]\times[N]\),
    \(\mathcal H_{k,N}=\{0,1\}^{X_{k,N}}\),
    \(c_{\boldsymbol t}(j,x)=\tau_{t_j}(x)\), and population 0-1 risk.
  - The one-block improper output convention: a legal hypothesis for the
    threshold targets on \([N]\) is an arbitrary member of
    \(\{0,1\}^{[N]}\). This is an output-space definition, not a properness
    or monotonicity assumption.
  - The locally fixed objects \(h\in\mathcal H_{k,N}\), \(j\in[k]\),
    \(t_i\in[N+1]\), and probability distributions \(Q_i\) on \([N]\)
    are universally quantified inputs, not assumptions about generated
    objects.
- Technical setting assumptions by stable id: None. In particular, this
  step does not use `assump:candidate-regime`, `assump:central-dp`, or
  `assump:distribution-free-realizable-pac`.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts: None; the sketch row has no
  dependencies.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | **Legality of arbitrary block restriction** (`lem:step-007-restriction-legality`). Under the primitive tagged-domain and output-space definitions, if \(h\in\mathcal H_{k,N}\) and \(j\in[k]\), then \(D_jh\in\{0,1\}^{[N]}\), with no threshold-representation or monotonicity condition. | Establishes that restriction of every arbitrary improper product output is a legal improper one-block output. |
| `unit_002` | proposition | **Exact restriction-risk identity** (`prop:step-007-risk-identity`). Under the primitive threshold and population-risk definitions and Lemma~\ref{lem:step-007-restriction-legality}, if \(h\in\mathcal H_{k,N}\), \(j\in[k]\), \(t_i\in[N+1]\), and \(Q_i\) is a probability distribution on \([N]\) for every \(i\in[k]\), then the one-block population risk of \(D_jh\) against \(\tau_{t_j}\) under \(Q_j\) equals \(e_j(h;\boldsymbol t,\boldsymbol Q)\) exactly. | Establishes the target's exact block-error identity, including arbitrary improper outputs and every endpoint or degenerate block instance. |

Atomic step = no. The legality of the restricted codomain and the exact
risk identity are both elementary, but they are separated so that neither
the improper-output interface nor the loss calculation is hidden inside the
other.

## Cited Result Applications

External paper results, standard theorems, and accepted dependency results:
None.

The local results used in the target-step assembly are restated here in
current notation:

| Result | Restated statement | Instantiated objects | Required conditions and discharge | Conclusion used |
| ------ | ------------------- | -------------------- | --------------------------------- | --------------- |
| Lemma~\ref{lem:step-007-restriction-legality} | For every \(h\in\{0,1\}^{[k]\times[N]}\) and \(j\in[k]\), the map \(x\mapsto h(j,x)\) lies in \(\{0,1\}^{[N]}\). | The arbitrary product hypothesis \(h\) and selected tag \(j\). | Membership of \(h\) and \(j\) is imposed in the lemma statement; the domain and codomain are primitive setting definitions. | \(D_jh\) is a legal unrestricted improper one-block output. |
| Proposition~\ref{prop:step-007-risk-identity} | If \(h\in\mathcal H_{k,N}\), \(j\in[k]\), \(t_i\in[N+1]\), and each \(Q_i\) is a probability distribution on \([N]\), then \(\sum_{x\in[N]}Q_j(x)\mathbf1\{(D_jh)(x)\ne\tau_{t_j}(x)\}=e_j(h;\boldsymbol t,\boldsymbol Q)\). | The arbitrary product hypothesis \(h\), tag \(j\), endpoint-inclusive threshold vector \(\boldsymbol t\), and arbitrary block-distribution vector \(\boldsymbol Q\). | Legality is supplied by Lemma~\ref{lem:step-007-restriction-legality}; \(c_{\boldsymbol t}(j,x)=\tau_{t_j}(x)\) and the 0-1 risk convention are primitive definitions. | The one-block risk is exactly the block error, with zero transfer residual. |

## Local Derivation

### unit_001: lemma

**Lemma (Legality of arbitrary block restriction).**
\(\label{lem:step-007-restriction-legality}\)
Under the primitive tagged-domain and output-space definitions in the
Formalized Setting, if \(h\in\mathcal H_{k,N}\) and \(j\in[k]\), then the map
\(D_jh:[N]\to\{0,1\}\) defined by \((D_jh)(x)=h(j,x)\) belongs to the full
one-block improper output space \(\{0,1\}^{[N]}\). No monotonicity or
threshold-representation condition on \(h\) or \(D_jh\) is required.

**Proof / justification.**
Fix arbitrary \(h\in\mathcal H_{k,N}\), \(j\in[k]\), and \(x\in[N]\).
Then \((j,x)\in X_{k,N}\). Because
\(h\in\{0,1\}^{X_{k,N}}\), its value \(h(j,x)\) lies in \(\{0,1\}\).
Consequently \(x\mapsto h(j,x)\) is a binary-valued function on all of
\([N]\), hence an element of \(\{0,1\}^{[N]}\).

An improper learner of the threshold targets \(\{\tau_t:t\in[N+1]\}\)
may output any element of this full binary-function space. Thus legality
does not require \(D_jh\) to equal any threshold \(\tau_s\), and the argument
applies unchanged to constant, oscillating, or otherwise nonmonotone \(h\).
\(\square\)

### unit_002: proposition

**Proposition (Exact restriction-risk identity).**
\(\label{prop:step-007-risk-identity}\)
Under the primitive threshold and population 0-1 risk definitions and
Lemma~\ref{lem:step-007-restriction-legality}, if
\(h\in\mathcal H_{k,N}\), \(j\in[k]\), and
\((\boldsymbol t,\boldsymbol Q)=((t_i,Q_i))_{i=1}^k\) has
\(t_i\in[N+1]\) and each \(Q_i\) a probability distribution on \([N]\),
then

\[
  \Pr_{Y\sim Q_j}\!\left[(D_jh)(Y)\ne\tau_{t_j}(Y)\right]
  =e_j(h;\boldsymbol t,\boldsymbol Q).
\]

This equality remains valid for \(t_j=1\), for \(t_j=N+1\), and for every
degenerate or non-full-support \(Q_j\).

**Proof / justification.**
For every \(x\in[N]\), the restriction definition and the target definition
give the pointwise identity

\[
  \mathbf1\!\left\{(D_jh)(x)\ne\tau_{t_j}(x)\right\}
  =\mathbf1\!\left\{h(j,x)\ne\tau_{t_j}(x)\right\}
  =\mathbf1\!\left\{h(j,x)\ne c_{\boldsymbol t}(j,x)\right\}.
\]

Taking the finite \(Q_j\)-weighted sum of this pointwise equality yields

\[
\begin{aligned}
  \Pr_{Y\sim Q_j}\!\left[(D_jh)(Y)\ne\tau_{t_j}(Y)\right]
  &=\sum_{x\in[N]}Q_j(x)
       \mathbf1\!\left\{(D_jh)(x)\ne\tau_{t_j}(x)\right\}\\
  &=\sum_{x\in[N]}Q_j(x)
       \mathbf1\!\left\{h(j,x)\ne c_{\boldsymbol t}(j,x)\right\}\\
  &=e_j(h;\boldsymbol t,\boldsymbol Q).
\end{aligned}
\]

There is no inequality or approximation in this calculation. When
\(t_j=1\), the target is the all-one function; when \(t_j=N+1\), it is the
all-zero function. The same pointwise equality still holds. If \(Q_j\) is a
point mass, or has zero mass on part of \([N]\), the finite weighted sum
simply discards the zero-mass coordinates and remains exact.

Finally, let \(J\) be any \([k]\)-valued random variable and let \(H\) be any
random element of \(\mathcal H_{k,N}\), with arbitrary dependence between
them. Lemma~\ref{lem:step-007-restriction-legality} and the displayed risk
identity apply separately to every realization \((J,H)=(j,h)\). Therefore
\(D_JH\) is almost surely a legal improper one-block output and

\[
  \sum_{x\in[N]}Q_J(x)
    \mathbf1\!\left\{(D_JH)(x)\ne\tau_{t_J}(x)\right\}
  =e_J(H;\boldsymbol t,\boldsymbol Q)
\]

holds pathwise. No independence, learner symmetry, or monotonicity premise
is used. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-007-restriction-legality} proves, for every arbitrary
\(h\in\mathcal H_{k,N}\) and every tag \(j\), that the direct restriction
\(D_jh\) is a legal output in the full improper one-block space.
Proposition~\ref{prop:step-007-risk-identity} then identifies its one-block population
0-1 risk with the exact block error \(e_j\) by a pointwise indicator equality.
Applying these two results at the realized tag \(j=J\) proves the exact
sketch-row claim for arbitrary deterministic or randomized product outputs.
The construction performs no proper projection, uses no monotonicity or
symmetry, and loses no error term; endpoint thresholds and degenerate block
distributions are already included in the quantified statement.

## Explicit Rate Audit

None.

## Blockers

None.

## Notation And Assumption Notes

- \(D_jh\) is a `public-facing` step interface. It is defined directly from
  the primitive product hypothesis \(h\) and tagged coordinate \(j\); its
  legality is proved by Lemma~\ref{lem:step-007-restriction-legality}.
- \(e_j(h;\boldsymbol t,\boldsymbol Q)\) is a `public-facing` step interface.
  It is the block population 0-1 error defined directly from setting objects,
  and Proposition~\ref{prop:step-007-risk-identity} proves that it is exactly
  the risk of the restricted output. The shorter sketch notation \(e_j\) or
  \(e_J\) means this same expression when the remaining arguments are fixed.
- The finite-sum variable \(x\) and the draw \(Y\sim Q_j\) are `proof-local`
  dummy variables. They introduce no generated object or condition.
- The arbitrary selected tag \(J\) is `public-facing` because the target and
  downstream hidden-coordinate experiment consume the restriction at that
  tag. The random hypothesis symbol \(H\) in the pathwise scope check is
  `proof-local`; it only verifies that the deterministic interface applies to
  every randomized learner output. No independence between \(J\) and \(H\) is
  needed.
- No `appendix-local` helper object is introduced. No new constant, radius,
  threshold, rate, margin, event, bounded quantity, or finite-tube quantity is
  introduced.
- Assumption provenance: the domain, target, output-space, and risk objects
  are primitive setting definitions. There is no generated-object,
  local-validity, stability, boundedness, recurrence, event, or invariant
  premise. No technical `assump:*` condition and no dependency conclusion is
  used.
- Boundary provenance: \(t_j=1\) and \(t_j=N+1\) are allowed by the primitive
  set \([N+1]\), and every point-mass or non-full-support \(Q_j\) is included
  among probability distributions on \([N]\). No boundary exclusion is made.
- The optional `global_proof.md` diagnostic was not read for proof content and
  was not used as evidence, a cited result, an assumption source, or authority
  to change the target claim.
