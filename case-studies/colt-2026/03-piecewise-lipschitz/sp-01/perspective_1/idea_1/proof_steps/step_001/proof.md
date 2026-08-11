# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove the displayed finite bound on
  \(L_{d,R,\Theta}\). For every positive-length interval \(I\) of any
  endpoint type and every \(\alpha\), prove that a root
  \(\theta_*\in I\) implies
  \(\lvert\phi_\alpha(m_I)\rvert\leq L_{d,R,\Theta}\lvert I\rvert/2\),
  equivalently \(\alpha_0\in J_I(\beta)\) for a measurably centered
  interval of length at most \(L_{d,R,\Theta}\lvert I\rvert\). Prove the
  root event is Borel by compact exhaustion of \(I\). Cover \(d=1\),
  endpoint-near roots, and multiple or tangent roots.
- Dependencies: None.
- Assumptions used: Primitive basic setup only; no technical assumption.
- Technical challenge: Preserve the exact factor and justify the
  segment/midpoint and event/slab measurability for arbitrary endpoint
  conventions without making a measurable root-selection claim.
- Intended proof tool or cited result: Direct derivative triangle bound,
  the one-dimensional mean-value theorem, and compact
  exhaustion/projection in the current notation.
- Output target: Measurable deterministic midpoint intercept-slab
  interface.
- Rate objective: Exact \(L_{d,R,\Theta}\lvert I\rvert\) width and explicit
  \(d,R,B\) dependence.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: the basic setup in `setting.md`: \(d\geq 1\) is
  an integer, \(R>0\), \(\Theta\subseteq\mathbb R\) is compact,
  \(\alpha\in[-R,R]^d\), and \(I\in\mathscr I(\Theta)\) is an interval
  with \(\lvert I\rvert>0\). The definitions of \(\phi_\alpha\),
  \(m_I\), \(B\), \(L_{d,R,\Theta}\), and \(Z_\alpha\) are also part of
  the primitive setup.
- Technical setting assumptions: None. In particular, neither
  `assump:averaged-intercept-density` nor
  `assump:random-intercept-witness` is used.
- Accepted dependency artifacts: None.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.

All event measurability, finiteness, and slab properties used in the
target conclusion are proved below rather than assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | If \(d\geq1\) is an integer, \(R>0\), \(\Theta\subseteq\mathbb R\) is compact, and \(\phi_\alpha,B,L_{d,R,\Theta}\) have their setting-defined meanings, then every \(\alpha\in[-R,R]^d\) and \(\theta\in\Theta\) satisfy \(\lvert\partial_\theta\phi_\alpha(\theta)\rvert\leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}\), so \(L_{d,R,\Theta}\) is finite and obeys the same bound. | Supplies the uniform derivative control with exact \(d,R,B\) dependence. |
| `unit_002` | proposition | If \(d\geq1\) is an integer, \(R>0\), \(\Theta\subseteq\mathbb R\) is compact, and \(\phi_\alpha,Z_\alpha\) have their setting-defined meanings, then for every positive-length interval \(I\subseteq\Theta\), the set \(\{\alpha\in[-R,R]^d:Z_\alpha\cap I\neq\varnothing\}\) is Borel for every open, closed, or half-open endpoint convention. | Makes the root-hitting event legally measurable without choosing a root measurably. |
| `unit_003` | proposition | If \(d\geq1\) is an integer, \(R>0\), \(\Theta\subseteq\mathbb R\) is compact, \(I\subseteq\Theta\) is a positive-length interval, and Lemma~\ref{lem:step-001-derivative-envelope} holds for the setting-defined polynomial family, then \(J_I(\beta)\) defined below has a Borel center and exact length \(L_{d,R,\Theta}\lvert I\rvert\), its associated slab is jointly Borel, and every root-hitting coefficient vector in \([-R,R]^d\) lies in that slab. | Exports the exact measurable midpoint intercept-slab interface. |

Atomic step = no. The derivative envelope, root-event measurability, and
root-to-slab localization are independent nontrivial claims and are
therefore separated into three named local units.

## Cited Result Applications

No external paper result and no dependency-step result is used.

1. **One-dimensional mean-value inequality.** If a real function \(g\)
   is continuous on the closed segment joining \(x\) and \(y\),
   differentiable on its interior, and \(\lvert g'(t)\rvert\leq M\) on
   that segment, then
   \[
   \lvert g(x)-g(y)\rvert\leq M\lvert x-y\rvert.
   \]
   In Proposition~\ref{prop:step-001-midpoint-slab},
   \(g=\phi_\alpha\), \(x=m_I\), \(y=\theta_*\), and
   \(M=L_{d,R,\Theta}\). Polynomiality supplies continuity and
   differentiability, the interval property gives a segment contained in
   \(I\subseteq\Theta\), and Lemma~\ref{lem:step-001-derivative-envelope}
   supplies the derivative bound.

2. **Extreme-value theorem on a compact interval.** A continuous
   real-valued function on a nonempty compact interval attains its
   minimum. In Proposition~\ref{prop:step-001-root-event-borel}, for
   fixed \(\alpha\) and compact \(K_n\), this is applied to
   \(\theta\mapsto\lvert\phi_\alpha(\theta)\rvert\). Polynomiality gives
   continuity, and the explicitly constructed \(K_n\) is nonempty and
   compact.

The continuity of the resulting minimum as a function of \(\alpha\) is
not imported from a separate theorem; it is proved directly in
Proposition~\ref{prop:step-001-root-event-borel} by a uniform
coefficient-difference bound.

3. **Local-result application map.**
   Lemma~\ref{lem:step-001-derivative-envelope} states, under the
   primitive conditions \(d\geq1\), \(R>0\), compact \(\Theta\), and
   \(\alpha\in[-R,R]^d\), the exact uniform derivative bound used in
   Proposition~\ref{prop:step-001-midpoint-slab}. Proposition~\ref{prop:step-001-root-event-borel}
   states, under the same primitive conditions and for every
   positive-length interval \(I\subseteq\Theta\), that the root-hitting
   coefficient set is Borel. Proposition~\ref{prop:step-001-midpoint-slab}
   states, under those conditions and the proved derivative lemma, the
   exact measurable-slab conclusion. The target-step assembly uses only
   these stated conclusions, with no additional hypothesis.

## Local Derivation

### unit_001: lemma

**Lemma (Uniform polynomial derivative envelope).**
\(\label{lem:step-001-derivative-envelope}\)
Fix an integer \(d\geq1\), a radius \(R>0\), and a compact set
\(\Theta\subseteq\mathbb R\), and define \(\phi_\alpha\), \(B\), and
\(L_{d,R,\Theta}\) as in the primitive basic setup. Then, for every
\(\alpha\in[-R,R]^d\) and every \(\theta\in\Theta\),
\[
\left\lvert\partial_\theta\phi_\alpha(\theta)\right\rvert
\leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}.
\]
Consequently,
\[
L_{d,R,\Theta}
\leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}<\infty.
\]
For \(d=1\), the sum is empty and \(L_{1,R,\Theta}=1\).

**Proof / justification.** Compactness of \(\Theta\) makes
\(\sup_{\theta\in\Theta}\lvert\theta\rvert\) finite, and hence the
setting-defined \(B\) is finite and at least one. Differentiating the
polynomial gives
\[
\partial_\theta\phi_\alpha(\theta)
=d\theta^{d-1}+\sum_{k=1}^{d-1}k\alpha_k\theta^{k-1}.
\]
Since \(\lvert\alpha_k\rvert\leq R\) and
\(\lvert\theta\rvert\leq B\), the triangle inequality yields, term by
term,
\[
\begin{aligned}
\left\lvert\partial_\theta\phi_\alpha(\theta)\right\rvert
&\leq d\lvert\theta\rvert^{d-1}
  +\sum_{k=1}^{d-1}k\lvert\alpha_k\rvert
    \lvert\theta\rvert^{k-1}\\
&\leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}.
\end{aligned}
\]
The right-hand side is a finite sum of finite quantities and is uniform
over the coefficient cube and \(\Theta\). Taking the defining supremum
for \(L_{d,R,\Theta}\) proves the claimed bound and finiteness. If
\(d=1\), then \(\phi_\alpha(\theta)=\theta+\alpha_0\) and
\(\partial_\theta\phi_\alpha\equiv1\), so the empty-sum convention gives
both the upper bound and the exact identity \(L_{1,R,\Theta}=1\).
\(\square\)

### unit_002: proposition

**Proposition (Borel root hitting for arbitrary interval endpoints).**
\(\label{prop:step-001-root-event-borel}\)
Fix an integer \(d\geq1\), a radius \(R>0\), and a compact set
\(\Theta\subseteq\mathbb R\), and define \(\phi_\alpha\) and
\(Z_\alpha\) as in the primitive basic setup. If
\(I\in\mathscr I(\Theta)\) has any open, closed, or half-open endpoint
convention, then
\[
\mathcal E_I
:=\{\alpha\in[-R,R]^d:Z_\alpha\cap I\neq\varnothing\}
\]
is a Borel subset of \([-R,R]^d\).

**Proof / justification.** Let \(a=\inf I\), \(b=\sup I\). Because
\(I\subseteq\Theta\) and \(\Theta\) is compact, \(a,b\) are finite; and
because \(\lvert I\rvert>0\), \(a<b\). For \(n\geq1\), set
\[
\varepsilon_n:=\frac{b-a}{2(n+1)},
\]
and define
\[
a_n:=
\begin{cases}
a,&a\in I,\\
a+\varepsilon_n,&a\notin I,
\end{cases}
\qquad
b_n:=
\begin{cases}
b,&b\in I,\\
b-\varepsilon_n,&b\notin I.
\end{cases}
\qquad K_n:=[a_n,b_n].
\]
Since \(\varepsilon_n<(b-a)/2\), every \(K_n\) is a nonempty compact
interval contained in \(I\). Moreover, \(K_n\subseteq K_{n+1}\) and
\(\bigcup_{n\geq1}K_n=I\). The last equality retains an endpoint in every
\(K_n\) exactly when that endpoint belongs to \(I\), while every interior
point is captured once \(\varepsilon_n\) is smaller than its positive
distance from each excluded endpoint. Thus this exhaustion handles all
four endpoint conventions.

For \(\alpha\in[-R,R]^d\), define
\[
F_n(\alpha):=\min_{\theta\in K_n}
\lvert\phi_\alpha(\theta)\rvert.
\]
The minimum exists by the restated extreme-value theorem. For any
\(\alpha,\gamma\in[-R,R]^d\), put
\(\delta=\sup_{\theta\in K_n}
\lvert\phi_\alpha(\theta)-\phi_\gamma(\theta)\rvert\). Pointwise on
\(K_n\),
\(\lvert\phi_\gamma(\theta)\rvert-\delta
\leq\lvert\phi_\alpha(\theta)\rvert
\leq\lvert\phi_\gamma(\theta)\rvert+\delta\). Taking minima and then
interchanging \(\alpha,\gamma\) proves the first inequality below. Since
\(K_n\subseteq\Theta\),
\[
\begin{aligned}
\lvert F_n(\alpha)-F_n(\gamma)\rvert
&\leq\sup_{\theta\in K_n}
  \lvert\phi_\alpha(\theta)-\phi_\gamma(\theta)\rvert\\
&\leq\sum_{k=0}^{d-1}
  \lvert\alpha_k-\gamma_k\rvert B^k.
\end{aligned}
\]
Hence \(F_n\) is continuous. It follows that
\[
\mathcal E_{I,n}
:=\{\alpha\in[-R,R]^d:F_n(\alpha)=0\}
\]
is closed relative to the coefficient cube. Because the minimum is
attained, \(F_n(\alpha)=0\) holds exactly when \(\phi_\alpha\) has a zero
in \(K_n\). Finally, the compact exhaustion gives the exact identity
\[
\mathcal E_I=\bigcup_{n\geq1}\mathcal E_{I,n}.
\]
This is a countable union of closed sets and is therefore Borel. The
argument concerns existence of a zero on each compact set and never
defines a root as a function of \(\alpha\).
\(\square\)

### unit_003: proposition

**Proposition (Measurable midpoint intercept slab).**
\(\label{prop:step-001-midpoint-slab}\)
Fix an integer \(d\geq1\), a radius \(R>0\), a compact set
\(\Theta\subseteq\mathbb R\), and the setting-defined polynomial family.
Under Lemma~\ref{lem:step-001-derivative-envelope}, fix any
\(I\in\mathscr I(\Theta)\) and define, with an empty sum when \(d=1\),
\[
c_I(\beta):=m_I^d+\sum_{k=1}^{d-1}\alpha_km_I^k,
\qquad \beta=(\alpha_1,\ldots,\alpha_{d-1}),
\]
and
\[
J_I(\beta):=
\left[-c_I(\beta)-\frac{L_{d,R,\Theta}\lvert I\rvert}{2},
      -c_I(\beta)+\frac{L_{d,R,\Theta}\lvert I\rvert}{2}\right].
\]
Then \(c_I\) and both endpoints of \(J_I\) are Borel measurable,
\(\lvert J_I(\beta)\rvert=L_{d,R,\Theta}\lvert I\rvert\), and the slab
\[
\{(a_0,\beta):a_0\in J_I(\beta)\}
=\left\{(a_0,\beta):
\lvert a_0+c_I(\beta)\rvert
\leq\frac{L_{d,R,\Theta}\lvert I\rvert}{2}\right\}
\]
is Borel. Moreover, for every \(\alpha=(\alpha_0,\beta)\in[-R,R]^d\),
\[
Z_\alpha\cap I\neq\varnothing
\quad\Longrightarrow\quad
\lvert\phi_\alpha(m_I)\rvert
\leq\frac{L_{d,R,\Theta}\lvert I\rvert}{2}
\]
and, for every such \(\alpha\),
\[
\lvert\phi_\alpha(m_I)\rvert
\leq\frac{L_{d,R,\Theta}\lvert I\rvert}{2}
\quad\Longleftrightarrow\quad
\alpha_0\in J_I(\beta).
\]
This conclusion holds for every endpoint convention and does not require
simple or transverse roots.

**Proof / justification.** Write again \(a=\inf I\), \(b=\sup I\).
Since \(a<b\), the midpoint \(m_I=(a+b)/2\) lies strictly between \(a\)
and \(b\), and hence belongs to \(I\) for every endpoint convention.
If \(\theta_*\in I\), the interval property implies that the closed
segment joining \(\theta_*\) and \(m_I\) is contained in
\(I\subseteq\Theta\). Also,
\[
\lvert m_I-\theta_*\rvert\leq\frac{b-a}{2}
=\frac{\lvert I\rvert}{2}.
\]

Now suppose \(\theta_*\in Z_\alpha\cap I\). If
\(\theta_*=m_I\), the desired evaluation bound holds with left-hand
side zero. Otherwise, apply the restated one-dimensional mean-value
inequality on the segment just identified. Since
\(\phi_\alpha(\theta_*)=0\) and the derivative is bounded by the
setting-defined \(L_{d,R,\Theta}\) everywhere on that segment,
\[
\begin{aligned}
\lvert\phi_\alpha(m_I)\rvert
&=\lvert\phi_\alpha(m_I)-\phi_\alpha(\theta_*)\rvert\\
&\leq L_{d,R,\Theta}\lvert m_I-\theta_*\rvert\\
&\leq\frac{L_{d,R,\Theta}\lvert I\rvert}{2}.
\end{aligned}
\]
This is the exact midpoint factor required by the sketch row.

The additive-intercept form of the polynomial gives the identity
\[
\phi_\alpha(m_I)=\alpha_0+c_I(\beta).
\]
Therefore the evaluation bound is equivalent to
\(\alpha_0\in J_I(\beta)\). The endpoint difference in the definition of
\(J_I\) is exactly \(L_{d,R,\Theta}\lvert I\rvert\), proving the length
claim. For fixed \(I\), \(c_I\) is a polynomial in \(\beta\), so it and
the interval endpoints are continuous, hence Borel. The map
\((a_0,\beta)\mapsto\lvert a_0+c_I(\beta)\rvert\) is continuous, and the
slab is its inverse image of the closed interval
\([0,L_{d,R,\Theta}\lvert I\rvert/2]\); hence the slab is Borel.

When \(d=1\), \(\beta\) is the empty tuple,
\(c_I(\beta)=m_I\), \(L_{1,R,\Theta}=1\), and
\[
J_I=[-m_I-\lvert I\rvert/2,-m_I+\lvert I\rvert/2].
\]
Thus the same formulas remain literal, with a constant measurable center
on the one-point \(\beta\)-space. If a root is included at an endpoint,
the distance bound may be an equality; if the endpoint is excluded, no
root at that endpoint is part of the event, while arbitrarily
endpoint-near roots still satisfy the same weak inequality. Finally, the
argument uses no lower bound on
\(\lvert\partial_\theta\phi_\alpha(\theta_*)\rvert\), no division by that
derivative, and no uniqueness of \(\theta_*\). It therefore applies
unchanged to tangent and multiple roots. The implication is pointwise for
each existing root and makes no measurable root selection.
\(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-001-derivative-envelope} proves the displayed finite
bound on \(L_{d,R,\Theta}\), including the exact \(d=1\) value.
Proposition~\ref{prop:step-001-root-event-borel} proves that the actual
root-hitting event is Borel for every allowed endpoint convention by an
explicit compact exhaustion, without selecting a root measurably.
Proposition~\ref{prop:step-001-midpoint-slab} then uses the derivative
envelope and the checked mean-value inequality to prove, for every
coefficient vector and positive-length interval,
\[
\{Z_\alpha\cap I\neq\varnothing\}
\subseteq
\left\{\lvert\phi_\alpha(m_I)\rvert
\leq\frac{L_{d,R,\Theta}\lvert I\rvert}{2}\right\}
=\{\alpha_0\in J_I(\beta)\}.
\]
The same proposition proves that the slab is jointly Borel, its center is
measurable, and its width is exactly
\(L_{d,R,\Theta}\lvert I\rvert\). Its proof explicitly covers \(d=1\),
included or excluded endpoints, endpoint-near roots, tangencies, and
multiplicities. These three named results therefore establish every part
of the binding `step_001` claim and export precisely the deterministic
midpoint intercept-slab interface required by the downstream step.

## Explicit Rate Audit

- Exposed variables: \(d\), \(R\), the domain \(\Theta\) through
  \(B=\max\{1,\sup_{\theta\in\Theta}\lvert\theta\rvert\}\) and
  \(L_{d,R,\Theta}\), and \(\lvert I\rvert\). The setting-defined
  envelope obeys
  \[
  L_{d,R,\Theta}
  \leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1},
  \]
  and the exported slab has exact radius
  \(L_{d,R,\Theta}\lvert I\rvert/2\) and exact width
  \(L_{d,R,\Theta}\lvert I\rvert\).
- Hidden constants may depend on: None; there are no hidden constants.
- Hidden constants may not depend on: \(d,R,\Theta,B,I,\alpha\), or a
  coefficient law; no dependence is suppressed.
- Fixed quantities: the setting fixes \(d,R,\Theta\), and hence \(B\) and
  \(L_{d,R,\Theta}\), before \(\alpha\) and \(I\) vary. No asymptotic or
  limiting operation is used.
- Probability mode: Deterministic, simultaneously for every
  \(\alpha\in[-R,R]^d\) and every \(I\in\mathscr I(\Theta)\). No
  expectation, exceptional event, or confidence parameter appears.
- Horizon mode: Static one-interval statement; no horizon or time index
  exists.
- Norm mode: Ordinary absolute value on real polynomial values and
  derivatives; \(\lvert I\rvert\) is one-dimensional Lebesgue length.
- Admissibility conditions and auxiliary tolerances: Exactly
  \(d\geq1\), \(R>0\), compact \(\Theta\), cube-supported coefficients,
  and \(I\subseteq\Theta\) with \(\lvert I\rvert>0\). There are no
  auxiliary tolerances.
- Term absorption or simplification inequalities: None. Every derivative
  term is retained through the displayed inequalities
  \(d\lvert\theta\rvert^{d-1}\leq dB^{d-1}\) and
  \(k\lvert\alpha_k\rvert\lvert\theta\rvert^{k-1}
  \leq kRB^{k-1}\). The exact radius-to-width identity is
  \(2(L_{d,R,\Theta}\lvert I\rvert/2)
  =L_{d,R,\Theta}\lvert I\rvert\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The public-facing slab
  width is the exact input used by `step_002`; this step performs no
  further public rate simplification.
- Baseline-reduction check: No inherited baseline theorem is specialized
  in this step. The required boundary specialization \(d=1\) is exact:
  \(L_{1,R,\Theta}=1\) and the slab width is \(\lvert I\rvert\), with no
  conservative loss.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined expressions: \(\phi_\alpha\), \(Z_\alpha\),
  \(\mathscr I(\Theta)\), \(m_I\), \(B\), and \(L_{d,R,\Theta}\) retain
  exactly their meanings from `setting.md`.
- `public-facing`: \(c_I(\beta)=m_I^d+\sum_{k=1}^{d-1}\alpha_km_I^k\),
  where \(\beta=(\alpha_1,\ldots,\alpha_{d-1})\), is the
  additive-intercept-free midpoint evaluation, defined directly
  from setting notation. Its finiteness and measurability are proved in
  Proposition~\ref{prop:step-001-midpoint-slab}.
- `public-facing`: \(J_I(\beta)\) is the closed intercept interval defined
  directly from \(c_I(\beta)\), the setting-defined
  \(L_{d,R,\Theta}\), and \(\lvert I\rvert\). Its measurability and exact
  width are proved in Proposition~\ref{prop:step-001-midpoint-slab}; this
  is the only new downstream interface exported by the step.
- `proof-local`: \(a,b,\varepsilon_n,a_n,b_n,K_n,F_n\), and
  \(\mathcal E_{I,n}\) are compact-exhaustion bookkeeping objects used
  only in Proposition~\ref{prop:step-001-root-event-borel}. They are
  explicitly defined from \(I\), \(\phi_\alpha\), and primitive setting
  quantities and are not exported.
- `proof-local`: \(\gamma\) is a dummy comparison coefficient vector and
  \(\delta\) is its explicitly defined uniform polynomial-value
  difference from \(\alpha\) on \(K_n\); neither is exported.
- `proof-local`: \(\mathcal E_I\) is only an abbreviation for the
  setting-defined event \(\{Z_\alpha\cap I\neq\varnothing\}\); it adds no
  assumption or mathematical object.
- Constant provenance: \(B\) and \(L_{d,R,\Theta}\) are setting-defined;
  Lemma~\ref{lem:step-001-derivative-envelope} proves the required finite
  bound on \(L_{d,R,\Theta}\). The exhaustion scale
  \(\varepsilon_n=(b-a)/(2(n+1))\) is defined directly from the interval
  endpoints and is used only locally. The proof-local quantity
  \(\delta\) is defined as an explicit supremum on \(K_n\) and bounded by
  \(\sum_{k=0}^{d-1}\lvert\alpha_k-\gamma_k\rvert B^k\) in
  Proposition~\ref{prop:step-001-root-event-borel}. No free constant,
  radius, threshold, or bounded quantity is introduced.
- Assumption provenance: all allowed conditions are primitive static
  conditions from the basic setup. Finiteness of the derivative
  envelope, Borel measurability of the root event and slab, and the
  root-to-slab inclusion are derived by the named local units. There are
  no accepted dependency conclusions, local conditional hypotheses,
  generated invariants, recurrence assumptions, or hidden boundedness
  assumptions.
- Generated-output provenance: the measurable interval
  \(J_I(\beta)\) and the root-event inclusion are produced in
  Proposition~\ref{prop:step-001-midpoint-slab} for consumption by
  `step_002`; no downstream conclusion is assumed in their proof.
- Diagnostic-boundary confirmation: `global_proof.md` was read only
  after confirming that the current paired `global_proof_review.md` is
  `ACCEPTED` and that all recorded input hashes match. Its step-relevant
  planning suggestion was to use an endpoint-aware compact exhaustion
  and a midpoint mean-value slab without measurable root selection. Both
  points are proved independently above. The diagnostic was not used as
  evidence, a cited result, an assumption source, or authority to alter
  the target claim.
