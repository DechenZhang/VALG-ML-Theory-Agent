# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | For every $x\in[-1,1]$ and $i\leq N$, prove $\lvert G_i'(x)\rvert\leq D_*:=\Delta B_Q(1+qB_P)$, including the $q=0$ convention and explicit degree-zero $M$-dependence. | None | Primitive: `assump:balcan-common-chain`, `assump:anchored-unit-range` | Bound every partial derivative of $Q_i$ and every $P_j$ from monomial coefficient budgets on the actual unit-box chain, without inserting a degree-count factor or an unrecorded range constant. | Direct coefficient-envelope calculation and chain rule in the exact Balcan--Nguyen--Sharma $p=1$ convention; no external theorem. | Literal coordinate derivative envelope $D_*$. | R1: all $q,M,\Delta,B_P,B_Q$ dependence explicit; no hidden constant. | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:balcan-common-chain`: each $\eta_j\in C^1([-1,1])$ obeys
    $\eta_j'(x)=P_j(x,\eta_1(x),\ldots,\eta_j(x))$, with
    $\deg P_j\leq M$, and
    $G_i(x)=Q_i(x,\eta_1(x),\ldots,\eta_q(x))$, with
    $\deg Q_i\leq\Delta$.
  - `assump:anchored-unit-range`: $\lvert\eta_j(x)\rvert\leq1$ for every
    $j$ and $x\in[-1,1]$. The additional anchor clause $Q_1\equiv1$ is
    part of the primitive assumption but is not needed for this derivative
    estimate.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts: None; the accepted sketch row
  lists no dependencies.

Both allowed assumptions are static primitive presentation conditions. No
generated event, trajectory property, local-validity condition, boundedness
invariant, or recurrence claim is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | With no setting assumption, if a polynomial $S$ has monomial coefficients supported on total degrees at most $d$, then on the unit box $\lvert S\rvert\leq\lVert\operatorname{coeff}(S)\rVert_1$ and every coordinate partial is at most $d\lVert\operatorname{coeff}(S)\rVert_1$ in absolute value. | Gives literal coefficient-envelope constants for every $P_j$ and every coordinate partial of $Q_i$, including $d=0$ and the zero polynomial. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:balcan-common-chain} and \ref{assump:anchored-unit-range} and Lemma~\ref{lem:step-001-unit-box-envelope}, for every $x\in[-1,1]$ and $1\leq i\leq N$, $\lvert G_i'(x)\rvert\leq D_*:=\Delta B_Q(1+qB_P)$; when $q=0$ the chain sum is empty, and the displayed bound has degree-zero dependence on $M$. | Applies the ordinary chain rule to the actual common chain and proves the exact sketch-row claim. |

Atomic step = no. The unit-box coefficient envelope is an independent
nontrivial subclaim used by the chain-rule proposition, so it is exposed as
its own lemma.

## Cited Result Applications

External paper results: None. Dependency results: None. In particular, the
Balcan--Nguyen--Sharma convention is already encoded in
Assumption~\ref{assump:balcan-common-chain}; no quantitative conclusion from
that paper is used.

1. **Ordinary multivariable chain rule (standard theorem).** If
   $H:\mathbb R^{q+1}\to\mathbb R$ is $C^1$ and
   $u=(u_0,\ldots,u_q):[-1,1]\to\mathbb R^{q+1}$ is $C^1$, then, at interior
   points,
   \[
   \frac{d}{dx}H(u(x))
   =\sum_{r=0}^q \partial_{z_r}H(u(x))u_r'(x).
   \]
   If the functions are $C^1$ on the closed interval, the same formula holds
   at the endpoints in the closed-interval derivative convention; equivalently,
   it follows there by taking the appropriate one-sided limit of the continuous
   interior identity. Here $H=Q_i$ and
   $u(x)=(x,\eta_1(x),\ldots,\eta_q(x))$. Polynomiality makes $Q_i$ $C^1$,
   and Assumption~\ref{assump:balcan-common-chain} makes every component of
   $u$ $C^1$. The conclusion is the displayed chain-rule identity in
   Proposition~\ref{prop:step-001-coordinate-envelope}.

2. **Lemma~\ref{lem:step-001-unit-box-envelope} (local coefficient
   envelope).** For a polynomial whose coefficient support has total degree at
   most $d$, the lemma bounds its value by its coefficient $\ell_1$ norm and
   each coordinate partial by $d$ times that norm on the unit box. It is proved
   in `unit_001`; it is then instantiated with $S=P_j,d=M$ for the value bound
   and with $S=Q_i,d=\Delta$ for the partial-derivative bounds.

3. **Proposition~\ref{prop:step-001-coordinate-envelope} (local target
   proposition).** Under exactly the two primitive assumptions allowed by the
   sketch row, it concludes
   $\lvert G_i'(x)\rvert\leq\Delta B_Q(1+qB_P)$ simultaneously for every
   allowed $x$ and $i$. It is proved in `unit_002` and is the sole mathematical
   result exported in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Literal unit-box coefficient envelope).**
\label{lem:step-001-unit-box-envelope}
With no setting assumption, let $m\geq1$ and $d\geq0$ be integers, and let
\[
S(z)=\sum_{\nu\in\mathcal A}a_\nu z^\nu,
\qquad
\mathcal A\subseteq\{\nu\in\mathbb N_0^m:\lvert\nu\rvert_1\leq d\}
\]
be a polynomial with finite coefficient support. Then, for every
$z\in[-1,1]^m$,
\[
\lvert S(z)\rvert
\leq\lVert\operatorname{coeff}(S)\rVert_1,
\]
and, for every coordinate $1\leq r\leq m$,
\[
\lvert\partial_{z_r}S(z)\rvert
\leq d\,\lVert\operatorname{coeff}(S)\rVert_1.
\]
These conclusions include $d=0$, constant polynomials, and the zero
polynomial without requiring a convention for the degree of the zero
polynomial.

**Proof / justification.** For every $z\in[-1,1]^m$ and every multi-index
$\nu$, one has $\lvert z^\nu\rvert\leq1$. Therefore
\[
\lvert S(z)\rvert
\leq\sum_{\nu\in\mathcal A}\lvert a_\nu\rvert
       \lvert z^\nu\rvert
\leq\sum_{\nu\in\mathcal A}\lvert a_\nu\rvert
=\lVert\operatorname{coeff}(S)\rVert_1.
\]
For a fixed coordinate $r$, termwise differentiation gives
\[
\partial_{z_r}S(z)
=\sum_{\substack{\nu\in\mathcal A\\ \nu_r\geq1}}
  \nu_r a_\nu z^{\nu-e_r},
\]
where $e_r$ is the $r$th coordinate vector. Thus differentiating the monomial
$a_\nu z^\nu$ lowers its $r$th exponent from $\nu_r$ to $\nu_r-1$ and
multiplies its coefficient by $\nu_r$. Because
$\nu_r\leq\lvert\nu\rvert_1\leq d$, the sum of the differentiated coefficient
magnitudes satisfies
\[
\sum_{\substack{\nu\in\mathcal A\\ \nu_r\geq1}}
\nu_r\lvert a_\nu\rvert
\leq d\sum_{\nu\in\mathcal A}\lvert a_\nu\rvert
=d\lVert\operatorname{coeff}(S)\rVert_1.
\]
Since also $\lvert z^{\nu-e_r}\rvert\leq1$,
\[
\begin{aligned}
\lvert\partial_{z_r}S(z)\rvert
&\leq
  \sum_{\substack{\nu\in\mathcal A\\ \nu_r\geq1}}
  \nu_r\lvert a_\nu\rvert\lvert z^{\nu-e_r}\rvert\\
&\leq
  d\sum_{\substack{\nu\in\mathcal A\\ \nu_r\geq1}}
  \lvert a_\nu\rvert
\leq d\lVert\operatorname{coeff}(S)\rVert_1.
\end{aligned}
\]
No count of monomials enters either inequality. If $d=0$, the differentiated
sum is empty. If $S$ is zero, every coefficient is zero and both inequalities
read $0\leq0$. This proves the lemma. $\square$

### unit_002: proposition

**Proposition (Coordinate derivative envelope for a bounded common chain).**
\label{prop:step-001-coordinate-envelope}
Under Assumptions~\ref{assump:balcan-common-chain} and
\ref{assump:anchored-unit-range} and
Lemma~\ref{lem:step-001-unit-box-envelope}, define the setting-derived
quantity
\[
D_*:=\Delta B_Q(1+qB_P).
\]
Then $G_i$ is $C^1$ on $[-1,1]$ and, for every $x\in[-1,1]$ and
$1\leq i\leq N$,
\[
\lvert G_i'(x)\rvert\leq D_*.
\]
For $q=0$, the chain sum below is empty, $M=B_P=0$ by the setting convention,
and the conclusion is $\lvert G_i'(x)\rvert\leq\Delta B_Q$. For all $q$, the
bound contains no factor depending on $M$, so its dependence on the exposed
chain-degree parameter $M$ is degree zero when $B_P$ is held fixed.

**Proof / justification.** Fix $x\in[-1,1]$ and $1\leq i\leq N$. Write
\[
z(x):=(x,\eta_1(x),\ldots,\eta_q(x)).
\]
When $P_j$ is evaluated at $z(x)$, it ignores the later coordinates
$\eta_{j+1}(x),\ldots,\eta_q(x)$, exactly as in its setting definition.
Assumption~\ref{assump:anchored-unit-range} and $x\in[-1,1]$ give
\[
z(x)\in[-1,1]^{q+1}.
\]
For $q=0$, this means simply $z(x)=(x)\in[-1,1]$.

Because $\deg Q_i\leq\Delta$, the derivative part of
Lemma~\ref{lem:step-001-unit-box-envelope} gives, for the $x$ coordinate and
for every $1\leq j\leq q$,
\[
\begin{aligned}
\lvert\partial_xQ_i(z(x))\rvert
&\leq\Delta\lVert\operatorname{coeff}(Q_i)\rVert_1
\leq\Delta B_Q,\\
\lvert\partial_{y_j}Q_i(z(x))\rvert
&\leq\Delta\lVert\operatorname{coeff}(Q_i)\rVert_1
\leq\Delta B_Q.
\end{aligned}
\]
For $q\geq1$, the value part of the same lemma and the definition of $B_P$
give, for every $1\leq j\leq q$,
\[
\lvert P_j(z(x))\rvert
\leq\lVert\operatorname{coeff}(P_j)\rVert_1
\leq B_P.
\]
The constant in this last coefficient envelope is exactly one: even though
$\deg P_j\leq M$, every monomial has absolute value at most one on the actual
unit box. Thus neither a monomial-count factor nor an $M$ factor is present.

The ordinary multivariable chain rule, followed by the chain equations in
Assumption~\ref{assump:balcan-common-chain}, gives the visible identity
\[
\begin{aligned}
G_i'(x)
&=\partial_xQ_i(z(x))
  +\sum_{j=1}^q\partial_{y_j}Q_i(z(x))\eta_j'(x)\\
&=\partial_xQ_i(z(x))
  +\sum_{j=1}^q\partial_{y_j}Q_i(z(x))
      P_j(z(x)).
\end{aligned}
\]
Consequently,
\[
\begin{aligned}
\lvert G_i'(x)\rvert
&\leq\lvert\partial_xQ_i(z(x))\rvert
  +\sum_{j=1}^q
    \lvert\partial_{y_j}Q_i(z(x))\rvert
    \lvert P_j(z(x))\rvert\\
&\leq\Delta B_Q
  +\sum_{j=1}^q(\Delta B_Q)B_P\\
&=\Delta B_Q+q\Delta B_QB_P\\
&=\Delta B_Q(1+qB_P)=D_*.
\end{aligned}
\]
This calculation holds directly on $(-1,1)$. Every expression in the
chain-rule identity is continuous on $[-1,1]$, so taking the appropriate
one-sided limit proves the identical formula and estimate at $x=-1$ and
$x=1$ under the setting's $C^1([-1,1])$ convention.

When $q=0$, the two sums are empty and the calculation reduces to
\[
G_i'(x)=Q_i'(x),
\qquad
\lvert G_i'(x)\rvert\leq\Delta B_Q
=\Delta B_Q(1+0\cdot B_P).
\]
If $\Delta=0$, every $Q_i$ is constant and both sides of the target inequality
are zero. If a particular $Q_i$ is constant or zero while the global
$\Delta$ is positive, its derivative is still zero and the common envelope
remains valid. If $M=0$ with $q\geq1$, each nonzero $P_j$ is constant, and its
value is bounded by its coefficient $\ell_1$ norm with the same literal
constant one. If a $P_j$ is zero, its corresponding chain contribution is
zero; if $B_P=0$, all such contributions vanish. These cases use no degree
convention for a zero polynomial and introduce no extra constant. This proves
the proposition. $\square$

## Target-Step Assembly

Lemma~\ref{lem:step-001-unit-box-envelope} supplies the literal unit-box
value bound for each $P_j$ and the literal $\Delta B_Q$ bound for each relevant
partial derivative of $Q_i$. The checked ordinary multivariable chain rule and
the chain equations then compose those envelopes in
Proposition~\ref{prop:step-001-coordinate-envelope} as
\[
\Delta B_Q+\sum_{j=1}^q\Delta B_QB_P
=\Delta B_Q(1+qB_P).
\]
Therefore Proposition~\ref{prop:step-001-coordinate-envelope} proves, under
exactly the two primitive assumptions in the accepted row and with no
dependency artifact, that for every $x\in[-1,1]$ and every $1\leq i\leq N$,
\[
\boxed{\lvert G_i'(x)\rvert\leq D_*:=\Delta B_Q(1+qB_P).}
\]
The proposition also discharges the row's required $q=0$, endpoint,
zero/constant-polynomial, literal-constant, and degree-zero $M$ clauses. No
stronger or weaker claim is substituted.

## Explicit Rate Audit

- Exposed variables: $q,M,\Delta,B_P,B_Q$. The scope parameter $N$ controls
  the index range $1\leq i\leq N$ but contributes no multiplicative factor to
  the coordinatewise envelope.
- Hidden constants may depend on: None; every numerical factor is displayed.
- Hidden constants may not depend on: $q,M,\Delta,N,B_P,B_Q$, the polynomial
  coefficients, the chosen index $i$, the point $x$, or the chain values.
- Fixed quantities: The deterministic common-chain presentation is fixed.
  The estimate is simultaneous over all $x\in[-1,1]$ and $i\leq N$; no
  asymptotic limit is taken.
- Probability mode: Deterministic; no random law, event, expectation, or
  confidence parameter occurs in this step.
- Horizon mode: Domain-uniform pointwise control on the full closed interval
  $[-1,1]$; there is no iterative, stopping-time, or asymptotic horizon.
- Norm mode: Scalar absolute value for $G_i'$ and monomial-basis coefficient
  $\ell_1$ norm for $P_j,Q_i$.
- Admissibility conditions and auxiliary tolerances: Exactly
  Assumptions~\ref{assump:balcan-common-chain} and
  \ref{assump:anchored-unit-range}; no auxiliary tolerance or additional
  range condition is introduced.
- Term absorption or simplification inequalities: No term is absorbed. The
  exact displayed calculation is
  \[
  \Delta B_Q+\sum_{j=1}^q\Delta B_QB_P
  =\Delta B_Q+q\Delta B_QB_P
  =\Delta B_Q(1+qB_P).
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the exact
  R1 primitive derivative envelope $D_*$ for its accepted downstream
  consumers. It performs no probability or public-theorem specialization.
- Baseline-reduction check, if applicable: For $q=0$, the setting fixes
  $M=B_P=0$ and the result reduces exactly to the ordinary polynomial envelope
  $\lvert Q_i'(x)\rvert\leq\Delta B_Q$. For $M=0$ with $q\geq1$, the chain
  polynomials are constant and the same coefficient-value envelope applies;
  there is no conservative loss. For $\Delta=0$, all outputs are constant and
  the bound is the identity $0\leq0$. In the setting's scale-test
  specialization $q=0$, $Q_2(x)=x/\delta$, $\Delta=1$, and
  $B_Q=1/\delta$, the derivative magnitude and $D_*$ both equal $1/\delta$;
  thus the literal coefficient budget retains rather than hides that scale.

The dependence on $M$ is explicitly degree zero: the proof uses only
$\lvert P_j(z_j(x))\rvert\leq\lVert\operatorname{coeff}(P_j)\rVert_1\leq B_P$.
Holding the separately exposed budget $B_P$ fixed, no displayed or hidden
factor varies with $M$.

## Blockers

None

## Notation And Assumption Notes

- $D_*:=\Delta B_Q(1+qB_P)$ is `public-facing`. It is defined directly from
  original setting quantities and is the minimal output interface required by
  downstream steps. Its boundedness and the derivative inequality are proved
  by Proposition~\ref{prop:step-001-coordinate-envelope}; it is not an
  assumed bounded quantity.
- $z(x)=(x,\eta_1(x),\ldots,\eta_q(x))$ is a `proof-local` abbreviation for
  a setting-defined expression. Its unit-box membership is proved in
  Proposition~\ref{prop:step-001-coordinate-envelope} from
  $x\in[-1,1]$ and Assumption~\ref{assump:anchored-unit-range}.
- The generic symbols $m,d,S,\mathcal A,\nu,e_r$ in
  Lemma~\ref{lem:step-001-unit-box-envelope} are `proof-local`. They are
  local polynomial bookkeeping objects, not new theorem parameters or
  admissibility conditions.
- The generic $H,u,u_r,z_r$ in the checked chain-rule statement are
  `proof-local` instantiation placeholders. They are immediately mapped to
  the setting objects $H=Q_i$ and
  $u=(x,\eta_1(x),\ldots,\eta_q(x))$ and are not exported.
- The $\delta$ and $Q_2(x)=x/\delta$ appearing only in the baseline-reduction
  audit are original setting-defined scale-test objects. Their use is
  `proof-local` to that audit and exports no additional conclusion from this
  step.
- There are no `appendix-local` helper objects and no other public-facing
  helper constants. In particular, no monomial count, chain-range constant,
  radius, threshold, event, or finite-tube quantity is introduced.
- Assumption~\ref{assump:balcan-common-chain} is used only for the $C^1$
  common-chain representation, the degree support bounds, and the displayed
  chain equations. Assumption~\ref{assump:anchored-unit-range} is used only
  for unit-box membership; its $Q_1\equiv1$ component is not needed here.
  Both are primitive conditions. No derived invariant or local conditional
  hypothesis is consumed.
- The cases $q=0$, $M=0$, $\Delta=0$, zero $P_j$, zero or constant $Q_i$,
  $B_P=0$, and $x=\pm1$ are proved inside the named local units rather than
  excluded by notation or admissibility conditions.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified to have status `ACCEPTED`. Its
  step-relevant planning suggestion was to expose the termwise unit-box
  coefficient envelope before the chain-rule sum. That suggestion was
  independently proved in Lemma~\ref{lem:step-001-unit-box-envelope} and
  Proposition~\ref{prop:step-001-coordinate-envelope}. The diagnostic was
  not used as evidence, a cited result, an assumption source, or authority to
  change the target claim, dependencies, scope, or constants.
