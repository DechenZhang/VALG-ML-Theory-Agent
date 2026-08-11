# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each of \(J\subseteq(1,\infty)\) and
  \(J\subseteq(-\infty,-1)\), prove the exact pivot equivalence after division
  by \(\theta^{d-1}\), compute
  \[
  s_\infty'(\theta;\alpha_{0:d-2})
  =-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d},
  \]
  derive
  \[
  \lvert s_\infty'(\theta;\alpha_{0:d-2})\rvert
  \leq 1+\frac{Rd(d-1)}2,
  \]
  and prove the corresponding image-length bound, including signs, approach
  to \(\pm1\), and \(d=1\).
- Depends on: None.
- Assumptions used: `assump:indexed-regime`;
  `assump:compact-cube-support`.
- Technical challenge: Treat the two signs as separate connected charts,
  justify division for negative \(\theta\), and use the exact triangular sum
  \(\sum_{j=0}^{d-2}(d-1-j)=d(d-1)/2\).
- Intended proof tool or cited result: Direct algebra and differentiation,
  absolute-power bounds for \(\lvert\theta\rvert\geq1\), the mean-value
  theorem, and interval-image connectedness.
- Output target: Positive- and negative-outer deterministic image-length
  certificates.
- Rate objective: Preserve exactly
  \(B_\infty(d,R)=1+Rd(d-1)/2\).

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:indexed-regime`: \(d\in\mathbb N\), \(d\geq1\), and \(R\geq1\).
    The fixed cap parameter \(\eta\) is not used in this deterministic step.
  - `assump:compact-cube-support`: the polynomial is exactly monic in the
    convention
    \(\phi_\alpha(\theta)=\theta^d+\sum_{j=0}^{d-1}\alpha_j\theta^j\),
    and a support-compatible coefficient vector satisfies
    \(\alpha\in[-R,R]^d\). In particular,
    \(\lvert\alpha_j\rvert\leq R\) for \(0\leq j\leq d-2\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency step proof/review artifacts: None.

No condition on a generated or realized object is assumed. The proof fixes an
arbitrary support-compatible coefficient vector and derives both certificates
directly from the two primitive conditions above.

## Local Lemma Map

Atomic step = no. The positive and negative connected components require
separate algebraic and endpoint audits, so they are exposed as two independent
local propositions.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:indexed-regime} and~\ref{assump:compact-cube-support}, for every support-compatible \(\alpha\) and every interval \(J\subseteq(1,\infty)\), including an empty or singleton piece and any endpoint convention, the positive-chart root equation is equivalent to the \(\alpha_{d-1}\)-pivot identity, the displayed exact derivative obeys the \(B_\infty(d,R)\) bound, and \(\lambda(s_\infty(J;\alpha_{0:d-2}))\leq B_\infty(d,R)\lvert J\rvert\), with the approach to \(1\) and \(d=1\) handled exactly. | Positive-outer deterministic certificate. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:indexed-regime} and~\ref{assump:compact-cube-support}, for every support-compatible \(\alpha\) and every interval \(J\subseteq(-\infty,-1)\), including an empty or singleton piece and any endpoint convention, the negative-chart root equation is equivalent to the \(\alpha_{d-1}\)-pivot identity, the displayed exact derivative obeys the \(B_\infty(d,R)\) bound, and \(\lambda(s_\infty(J;\alpha_{0:d-2}))\leq B_\infty(d,R)\lvert J\rvert\), with all negative-\(\theta\) signs, the approach to \(-1\), and \(d=1\) handled exactly. | Negative-outer deterministic certificate. |

## Cited Result Applications

No paper theorem and no dependency result is used. The historical coefficient
sweep cited by the sketch is provenance only; every algebraic and quantitative
claim needed here is derived below. The following elementary results are
restated in the current notation before use.

1. **Mean-value theorem, Lipschitz form.** If a real-valued function \(f\) is
   continuous on the closed segment joining \(x\) and \(y\), differentiable
   between them, and \(\lvert f'(t)\rvert\leq L\) there, then
   \(\lvert f(x)-f(y)\rvert\leq L\lvert x-y\rvert\). In each application,
   \(f(\theta)=s_\infty(\theta;\alpha_{0:d-2})\); the two points and their
   joining segment lie wholly in one of the open connected charts
   \((1,\infty)\) or \((-\infty,-1)\). Polynomial inverse powers are smooth
   on each such chart, and the required derivative bound is proved in the
   corresponding local proposition.

2. **Continuous interval images and their Lebesgue length.** The continuous
   image of a real interval is a real interval. If \(A\) is a nonempty bounded
   real interval, with any open, closed, or half-open endpoint convention, then
   \(\lambda(A)=\operatorname{diam}(A)\); the same equality gives zero for a
   singleton. Thus, if a continuous map \(f\) is \(L\)-Lipschitz on a bounded
   interval \(J\), then
   \[
   \lambda(f(J))=\operatorname{diam}(f(J))
   \leq L\operatorname{diam}(J)=L\lambda(J).
   \]
   Empty images are handled separately and also have length zero. Here the
   hypotheses are discharged by the same-side Lipschitz conclusions proved in
   the corresponding local propositions.

3. **Proposition~\ref{prop:step-002-positive-outer-certificate}
   (Positive outer pivot and image certificate).** Under
   Assumptions~\ref{assump:indexed-regime} and
   ~\ref{assump:compact-cube-support}, its instantiated objects are a fixed
   support-compatible \(\alpha\) and an interval
   \(J\subseteq(1,\infty)\). Its conclusion is the positive pivot equivalence,
   exact derivative, \(B_\infty\) derivative bound, and positive image-length
   certificate stated in `unit_001`. Both primitive assumptions and every
   boundary case are discharged in the proof of that proposition below.

4. **Proposition~\ref{prop:step-002-negative-outer-certificate}
   (Negative outer pivot and image certificate).** Under
   Assumptions~\ref{assump:indexed-regime} and
   ~\ref{assump:compact-cube-support}, its instantiated objects are a fixed
   support-compatible \(\alpha\) and an interval
   \(J\subseteq(-\infty,-1)\). Its conclusion is the negative pivot
   equivalence, exact direct and oriented derivatives, \(B_\infty\) derivative
   bound, and negative image-length certificate stated in `unit_002`. Both
   primitive assumptions and every sign and boundary case are discharged in
   the proof of that proposition below.

## Local Derivation

### unit_001: proposition

**Proposition (Positive outer pivot and image certificate).**
\(\label{prop:step-002-positive-outer-certificate}\)
Under Assumptions~\ref{assump:indexed-regime} and
~\ref{assump:compact-cube-support}, fix any support-compatible
\(\alpha\in[-R,R]^d\). If \(J\subseteq(1,\infty)\) is an interval
with arbitrary endpoint convention, allowing an empty or singleton chart
piece, then for every \(\theta\in J\),
\[
\phi_\alpha(\theta)=0
\quad\Longleftrightarrow\quad
\alpha_{d-1}=s_\infty(\theta;\alpha_{0:d-2})
:=-\theta-\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1}.
\]
On the positive chart the exact derivative is
\[
\partial_\theta s_\infty(\theta;\alpha_{0:d-2})
=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d},
\]
and, for every \(\theta\in J\), it satisfies
\[
\lvert\partial_\theta s_\infty(\theta;\alpha_{0:d-2})\rvert
\leq B_\infty(d,R):=1+\frac{Rd(d-1)}2.
\]
Consequently, the same bound holds for the supremum over every nonempty
\(J\).
Moreover,
\[
\lambda\!\left(s_\infty(J;\alpha_{0:d-2})\right)
\leq B_\infty(d,R)\lvert J\rvert.
\]
These conclusions remain valid for intervals approaching \(1\) from above,
and at \(d=1\) they specialize to the exact identities
\(s_\infty(\theta)=-\theta\),
\(\lvert s_\infty'(\theta)\rvert=B_\infty(1,R)=1\), and
\(\lambda(s_\infty(J))=\lvert J\rvert\).

Proof / justification:
For \(\theta>1\), the divisor \(\theta^{d-1}\) is nonzero. Expanding the
coefficient with index \(d-1\) separately gives
\[
\begin{aligned}
\phi_\alpha(\theta)=0
&\quad\Longleftrightarrow\quad
\frac{\phi_\alpha(\theta)}{\theta^{d-1}}=0\\
&\quad\Longleftrightarrow\quad
\theta+\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1}
   +\alpha_{d-1}=0\\
&\quad\Longleftrightarrow\quad
\alpha_{d-1}
=-\theta-\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1}.
\end{aligned}
\]
Every arrow is reversible: multiplying the last equality by the same nonzero
\(\theta^{d-1}\) recovers the original root equation. This proves the exact
pivot equivalence rather than only one implication.

Termwise differentiation of the finite sum yields
\[
\begin{aligned}
\partial_\theta s_\infty(\theta;\alpha_{0:d-2})
&=-1-\sum_{j=0}^{d-2}(j-d+1)\alpha_j\theta^{j-d}\\
&=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d}.
\end{aligned}
\]
If \(d=1\), this sum is empty. If \(d\geq2\), then for every index in the
sum, \(j-d\leq-2\), and \(\theta>1\) gives
\(\lvert\theta^{j-d}\rvert=\theta^{-(d-j)}\leq1\). Using
\(\lvert\alpha_j\rvert\leq R\) from
Assumption~\ref{assump:compact-cube-support},
\[
\begin{aligned}
\lvert\partial_\theta s_\infty(\theta;\alpha_{0:d-2})\rvert
&\leq1+\sum_{j=0}^{d-2}(d-1-j)\lvert\alpha_j\rvert\,
                  \lvert\theta^{j-d}\rvert\\
&\leq1+R\sum_{j=0}^{d-2}(d-1-j)\\
&=1+R\sum_{k=1}^{d-1}k
=1+\frac{Rd(d-1)}2
=B_\infty(d,R).
\end{aligned}
\]
The final equality also holds at \(d=1\), when both sums are empty and
\(d(d-1)/2=0\).

If \(\lvert J\rvert=\infty\), the image-length claim holds immediately in the
extended nonnegative reals because its right-hand side is infinite. Suppose
therefore that \(\lvert J\rvert<\infty\). If \(J=\varnothing\), both \(J\) and
its image have Lebesgue length zero. If
\(J\) is a singleton, so is its image, and again both sides of the requested
inequality are zero. Otherwise, for arbitrary \(x,y\in J\), the closed segment
joining them stays inside \((1,\infty)\). The checked mean-value theorem gives
\[
\left\lvert s_\infty(x;\alpha_{0:d-2})
             -s_\infty(y;\alpha_{0:d-2})\right\rvert
\leq B_\infty(d,R)\lvert x-y\rvert.
\]
The map is continuous and \(J\) is connected, so its image is an interval.
Taking suprema over \(x,y\in J\), and using the checked interval-length fact,
\[
\begin{aligned}
\lambda\!\left(s_\infty(J;\alpha_{0:d-2})\right)
&=\operatorname{diam}\!\left(s_\infty(J;\alpha_{0:d-2})\right)\\
&\leq B_\infty(d,R)\operatorname{diam}(J)\\
&=B_\infty(d,R)\lvert J\rvert.
\end{aligned}
\]
This proof depends only on points of \(J\), so it is unchanged when either
finite endpoint of \(J\) is included or excluded.

For the boundary approach, the outer formula has finite one-sided limits
\[
\begin{aligned}
\lim_{\theta\downarrow1}s_\infty(\theta;\alpha_{0:d-2})
&=-1-\sum_{j=0}^{d-2}\alpha_j,\\
\lim_{\theta\downarrow1}\partial_\theta s_\infty(\theta;\alpha_{0:d-2})
&=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j.
\end{aligned}
\]
The same \(B_\infty(d,R)\) domination holds in the limit. Thus an interval
whose excluded endpoint approaches or equals \(1\) causes no blow-up and no
extra length term. The point \(1\) itself is assigned to the inner chart
\([-1,1]\), so it is not silently added to this positive certificate. Finally,
when \(d=1\), division is by \(\theta^0=1\), the nonpivot tuple and both sums
are empty, \(\phi_\alpha(\theta)=\theta+\alpha_0\), and every displayed
degree-one conclusion follows exactly.

### unit_002: proposition

**Proposition (Negative outer pivot and image certificate).**
\(\label{prop:step-002-negative-outer-certificate}\)
Under Assumptions~\ref{assump:indexed-regime} and
~\ref{assump:compact-cube-support}, fix any support-compatible
\(\alpha\in[-R,R]^d\). If \(J\subseteq(-\infty,-1)\) is an
interval with arbitrary endpoint convention, allowing an empty or singleton
chart piece, then for every \(\theta\in J\),
\[
\phi_\alpha(\theta)=0
\quad\Longleftrightarrow\quad
\alpha_{d-1}=s_\infty(\theta;\alpha_{0:d-2})
:=-\theta-\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1}.
\]
On the negative chart the exact derivative is
\[
\partial_\theta s_\infty(\theta;\alpha_{0:d-2})
=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d},
\]
and, for every \(\theta\in J\), it satisfies
\[
\lvert\partial_\theta s_\infty(\theta;\alpha_{0:d-2})\rvert
\leq B_\infty(d,R):=1+\frac{Rd(d-1)}2.
\]
Consequently, the same bound holds for the supremum over every nonempty
\(J\).
Moreover,
\[
\lambda\!\left(s_\infty(J;\alpha_{0:d-2})\right)
\leq B_\infty(d,R)\lvert J\rvert.
\]
These conclusions retain the exact negative-\(\theta\) parity signs, remain
valid for intervals approaching \(-1\) from below, and at \(d=1\) specialize
to \(s_\infty(\theta)=-\theta\),
\(\lvert s_\infty'(\theta)\rvert=B_\infty(1,R)=1\), and
\(\lambda(s_\infty(J))=\lvert J\rvert\).

Proof / justification:
For \(\theta<-1\), \(\theta^{d-1}\neq0\). It may be positive or negative,
depending on the parity of \(d-1\), but division is applied to an equality,
not to an inequality, so no order or sign convention is changed. Directly,
\[
\begin{aligned}
\phi_\alpha(\theta)=0
&\quad\Longleftrightarrow\quad
\frac{\phi_\alpha(\theta)}{\theta^{d-1}}=0\\
&\quad\Longleftrightarrow\quad
\theta+\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1}
   +\alpha_{d-1}=0\\
&\quad\Longleftrightarrow\quad
\alpha_{d-1}
=-\theta-\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1}.
\end{aligned}
\]
Multiplication by the same nonzero, possibly negative,
\(\theta^{d-1}\) proves the converse and hence the exact negative-chart pivot
equivalence. Differentiation in the original \(\theta\)-coordinate gives
\[
\begin{aligned}
\partial_\theta s_\infty(\theta;\alpha_{0:d-2})
&=-1-\sum_{j=0}^{d-2}(j-d+1)\alpha_j\theta^{j-d}\\
&=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d}.
\end{aligned}
\]

To expose rather than suppress the negative-\(\theta\) signs, orient this
connected chart by \(u=-\theta>1\) and define only within this proof
\[
g(u):=s_\infty(-u;\alpha_{0:d-2})
=u-\sum_{j=0}^{d-2}\alpha_j(-u)^{j-d+1}.
\]
The chain rule and the preceding exact derivative give
\[
\begin{aligned}
g'(u)
&=-\partial_\theta s_\infty(-u;\alpha_{0:d-2})\\
&=1-\sum_{j=0}^{d-2}(d-1-j)\alpha_j(-u)^{j-d}\\
&=1-\sum_{j=0}^{d-2}(d-1-j)\alpha_j
       (-1)^{d-j}u^{j-d}.
\end{aligned}
\]
Here \((-u)^{j-d}=(-1)^{j-d}u^{j-d}=(-1)^{d-j}u^{j-d}\) because all
exponents are integers. This displays every parity sign explicitly and also
shows that \(g'(u)=-s_\infty'(-u)\), as required by orientation reversal.
No coefficient term has been assigned a favorable sign.

If \(d=1\), the sum is empty. If \(d\geq2\), then \(j-d\leq-2\), and for
\(\theta<-1\),
\[
\lvert\theta^{j-d}\rvert
=\lvert\theta\rvert^{-(d-j)}\leq1.
\]
Consequently, using the same primitive cube bound but retaining no parity
assumption,
\[
\begin{aligned}
\lvert\partial_\theta s_\infty(\theta;\alpha_{0:d-2})\rvert
&\leq1+\sum_{j=0}^{d-2}(d-1-j)\lvert\alpha_j\rvert
                         \lvert\theta^{j-d}\rvert\\
&\leq1+R\sum_{j=0}^{d-2}(d-1-j)\\
&=1+R\sum_{k=1}^{d-1}k
=1+\frac{Rd(d-1)}2
=B_\infty(d,R).
\end{aligned}
\]
Equivalently, the identical bound holds for \(\lvert g'(u)\rvert\). The
triangular sum is exact, and the equality remains valid for the empty
\(d=1\) sum.

If \(\lvert J\rvert=\infty\), the image-length claim holds immediately in the
extended nonnegative reals because its right-hand side is infinite. Suppose
therefore that \(\lvert J\rvert<\infty\). If \(J=\varnothing\), its image is
empty; if \(J\) is a singleton, its image
is a singleton. In either case the requested image-length inequality reads
\(0\leq0\). Otherwise, for any \(x,y\in J\), the segment joining them remains
inside the single negative chart \((-\infty,-1)\); it never crosses \(-1\),
zero, or the positive chart. The checked mean-value theorem therefore gives
\[
\left\lvert s_\infty(x;\alpha_{0:d-2})
             -s_\infty(y;\alpha_{0:d-2})\right\rvert
\leq B_\infty(d,R)\lvert x-y\rvert.
\]
Continuity and interval connectedness imply that the image is an interval.
Hence, independently of whether either finite endpoint of \(J\) is included,
\[
\begin{aligned}
\lambda\!\left(s_\infty(J;\alpha_{0:d-2})\right)
&=\operatorname{diam}\!\left(s_\infty(J;\alpha_{0:d-2})\right)\\
&\leq B_\infty(d,R)\operatorname{diam}(J)\\
&=B_\infty(d,R)\lvert J\rvert.
\end{aligned}
\]

Finally, as \(\theta\uparrow-1\), equivalently \(u\downarrow1\), all inverse
powers have finite one-sided limits. In the direct and oriented coordinates,
respectively,
\[
\begin{aligned}
\lim_{\theta\uparrow-1}s_\infty(\theta;\alpha_{0:d-2})
&=1-\sum_{j=0}^{d-2}\alpha_j(-1)^{j-d+1},\\
\lim_{\theta\uparrow-1}\partial_\theta s_\infty(\theta;\alpha_{0:d-2})
&=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j(-1)^{j-d},\\
\lim_{u\downarrow1}g'(u)
&=1-\sum_{j=0}^{d-2}(d-1-j)\alpha_j(-1)^{j-d}.
\end{aligned}
\]
The last two limits are negatives of each other and both have absolute value
at most \(B_\infty(d,R)\). Thus approaching the excluded endpoint \(-1\)
does not change the uniform constant or add an endpoint-length term. The point
\(-1\) itself belongs to the inner chart. At \(d=1\), division is by
\(\theta^0=1\), all sums and the nonpivot tuple are empty,
\(\phi_\alpha(\theta)=\theta+\alpha_0\), and the claimed degree-one identities
and exact image length follow on this negative chart as well.

## Target-Step Assembly

Fix \(d\geq1\), \(R\geq1\), and an arbitrary support-compatible coefficient
vector under Assumptions~\ref{assump:indexed-regime} and
~\ref{assump:compact-cube-support}.
Proposition~\ref{prop:step-002-positive-outer-certificate} (`unit_001`) proves,
on the connected chart \((1,\infty)\), the exact root-to-\(\alpha_{d-1}\) pivot
equivalence, the required exact derivative, the exact
\(B_\infty(d,R)=1+Rd(d-1)/2\) upper bound, and the positive same-side
image-length certificate. It also covers arbitrary endpoint conventions, an
endpoint approaching \(1\), empty or singleton pieces, and \(d=1\).

Proposition~\ref{prop:step-002-negative-outer-certificate} (`unit_002`) proves
the four corresponding conclusions independently on the connected chart
\((-\infty,-1)\). Its oriented formula
\[
\frac{d}{du}s_\infty(-u;\alpha_{0:d-2})
=1-\sum_{j=0}^{d-2}(d-1-j)\alpha_j(-u)^{j-d}
\]
checks the negative-\(\theta\) signs explicitly, while its direct
\(\theta\)-derivative is exactly the derivative required by the sketch. It
also covers arbitrary endpoint conventions, approach to \(-1\), empty or
singleton pieces, and \(d=1\).

The two propositions never join points from different outer components and do
not add either \(1\) or \(-1\) to an outer interval. Together they therefore
give exactly the positive- and negative-outer deterministic image-length
certificates requested by `step_002`, with no dependency claim, additional
assumption, changed constant, or cross-zero argument.

## Explicit Rate Audit

- Exposed variables: \(d\), \(R\), the chart length \(\lvert J\rvert\), and
  the exact deterministic coefficient
  \(B_\infty(d,R)=1+Rd(d-1)/2\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d\), \(R\), \(J\), the chart sign,
  \(\alpha\), \(\mu\), \(I\), \(\Theta\), conditioning values, or any
  undisplayed quantity.
- Fixed quantities: Within each certificate, the support-compatible
  coefficient vector and one chart sign are fixed. The proof is uniform over
  all such choices.
- Probability mode: Deterministic; no probability, expectation, exceptional
  event, or confidence parameter is used.
- Horizon mode: Static and pointwise in the chosen chart interval; there is no
  time horizon, limit upgrade, stopping rule, or accumulated error.
- Norm mode: Absolute value for the scalar derivative and one-dimensional
  Lebesgue length for the interval and its image.
- Admissibility conditions and auxiliary tolerances: Exactly \(d\geq1\),
  \(R\geq1\), \(\alpha\in[-R,R]^d\), and an interval contained wholly in one
  outer connected chart. Infinite-length intervals satisfy the length
  inequality in the extended nonnegative reals; all theorem-consumed chart
  pieces are finite because \(\Theta\) is compact. There is no auxiliary
  tolerance.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. Separately on both signs, the complete calculation is
  \[
  \begin{aligned}
  \lvert s_\infty'(\theta)\rvert
  &\leq1+\sum_{j=0}^{d-2}(d-1-j)\lvert\alpha_j\rvert
                    \lvert\theta\rvert^{j-d}\\
  &\leq1+R\sum_{j=0}^{d-2}(d-1-j)
  =1+\frac{Rd(d-1)}2.
  \end{aligned}
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The step exports the exact
  two outer image controls
  \(\lambda(s_\infty(J))\leq B_\infty(d,R)\lvert J\rvert\) consumed by the
  positive and negative parts of `step_004`; it performs no later probability
  or polynomial specialization.
- Baseline-reduction check, if applicable: At \(d=1\), both outer pivots are
  the sole coefficient \(\alpha_0\),
  \(s_\infty=-\theta\), and \(B_\infty(1,R)=1\). Each certificate reduces
  exactly to \(\lambda(-J)=\lvert J\rvert\), with no remainder or conservative
  loss.

## Blockers

None.

## Notation And Assumption Notes

- \(s_\infty\), \(B_\infty(d,R)\), the coefficient slices
  \(\alpha_{0:d-2}\), and the empty-sum convention are `public-facing`
  objects already defined in `setting.md`. No cited-paper notation is imported.
- \(J\) is the `public-facing` local input interval for one same-side
  certificate. It may inherit any open, closed, or half-open endpoint
  convention and may be empty, a singleton, bounded, or unbounded. The
  theorem-consumed chart pieces have finite length because they lie in the
  compact source domain; the local propositions also cover an infinite-length
  \(J\) through the extended-valued inequality.
- \(\lambda\) denotes one-dimensional Lebesgue measure, the same length denoted
  by \(\lvert\cdot\rvert\) for source intervals in `setting.md`. This is a
  `public-facing` notation for the exported image-length certificate, not a new
  measure or norm.
- \(g(u)=s_\infty(-u;\alpha_{0:d-2})\) is a `proof-local` orientation of
  only the negative chart. It is derived explicitly in
  Proposition~\ref{prop:step-002-negative-outer-certificate}, is not exported,
  and introduces no assumption or constant.
- The variables \(x,y,\theta,t,u,j,k\) are `proof-local` bound or dummy
  variables. In particular, \(u=-\theta\) is the negative-chart orientation,
  and \(k=d-1-j\) is only the displayed reindexing of the triangular sum.
  The symbols \(A,f,L\) in the two restated elementary facts are
  `proof-local` generic placeholders; in both chart applications,
  \(f=s_\infty(\,\cdot\,;\alpha_{0:d-2})\) and
  \(L=B_\infty(d,R)\). None is exported.
- \(\operatorname{diam}\) is a `proof-local` standard set operation used to
  expose the image-length derivation; it is not part of the downstream
  interface.
- Constant provenance: \(B_\infty(d,R)\) is directly defined in `setting.md`,
  and both local propositions independently prove its bound using only
  \(\lvert\alpha_j\rvert\leq R\),
  \(\lvert\theta\rvert^{j-d}\leq1\), and the exact triangular sum. No other
  constant, radius, threshold, margin, or bounded quantity is introduced.
- Assumption provenance: `assump:indexed-regime` and
  `assump:compact-cube-support` are primitive setting conditions. The pivot
  images, derivative controls, and image-length controls are locally derived
  objects proved by the two named propositions. There is no generated event,
  local-validity condition, stability condition, recurrence, invariant, or
  conditional hypothesis.
- Assumption scope: `assump:compact-parameter-domain` and
  `assump:mean-endpoint-conditional-caps` are not used. In particular, this
  deterministic step assumes neither a density nor any pointwise or mean slice
  cap. The phrase `support-compatible` is not a new condition: it means
  exactly \(\alpha\in[-R,R]^d\) under
  Assumption~\ref{assump:compact-cube-support}. No proof line requires
  \(R>1\), so the primitive boundary \(R=1\) is included.
- Diagnostic boundary: `global_proof.md` was read only after confirming that
  its paired `global_proof_review.md` has status `ACCEPTED`. Its G2
  diagnostic suggested making the orientation identity
  \(d[s_\infty(-u)]/du=-s_\infty'(-u)\) explicit. That idea was independently
  derived above and the global proof was not used as evidence, a cited result,
  an assumption source, or authority to change the target claim, dependencies,
  constant, or output interface.
