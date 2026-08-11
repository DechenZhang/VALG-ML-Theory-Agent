# Proof Step

## Step Identity

- Sketch attempt: 2
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
    \(x(\theta)=(\theta-c)/h\). These static data give the Euclidean
    dimension and the nondegenerate affine coordinate change
    \(x'(\theta)=h^{-1}\).
  - `assump:anchored-unit-range`: \(Q_1\equiv1\). Its unit-range
    clause is not used directly here; it was used by the accepted dependency
    to prove the coordinate derivative envelope. No separate norm margin is
    assumed.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-001-coordinate-envelope} gives
    \(G\in C^1([-1,1];\mathbb R^N)\) and, for
    \[
    D_*:=\Delta B_Q(1+qB_P),
    \]
    the simultaneous pointwise estimate
    \[
    |G_i'(x)|\leq D_*
    \qquad
    (x\in[-1,1],\ 1\leq i\leq N).
    \]
    The accepted dependency artifacts are
    `perspective_1/idea_1/proof_steps/step_001/proof.md`, SHA-256
    `6c4e3048df8a590bd8c24f6f6b1d6be157c7fe8895af38bd8736ea1c419ac939`,
    and `perspective_1/idea_1/proof_steps/step_001/review.md`,
    SHA-256
    `cd4bc2cee3dabe3638d749cf6996ab6a3bcf6d2a69743bfafcf78b44ad88c3a7`,
    whose status is `ACCEPTED` and whose reviewed proof digest is the
    preceding proof digest.
- Local conditional hypotheses:
  - Lemma~\ref{lem:step-002-normalized-curve} conditionally assumes that its
    generic \(C^1\) curve \(v\) is pointwise nonzero. This hypothesis is local
    to that lemma. Proposition~\ref{prop:step-002-projective-speed} proves it
    for \(v=G\) from the primitive anchor before applying the lemma.

No generated event, probability assumption, local-validity condition,
stability condition, recurrence, or theorem-facing invariant is assumed.
The current step uses no primitive assumption other than the two listed above.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | With no setting assumption, if \(v\in C^1(J;\mathbb R^N)\) is pointwise nonzero on a closed interval \(J\), then \(\gamma=v/\|v\|_2\) is \(C^1\), \(\gamma'=(I_N-\gamma\gamma^{\mathsf T})v'/\|v\|_2\), and \(I_N-\gamma\gamma^{\mathsf T}\) is a Euclidean orthogonal projector with operator norm at most one. | Proves the exact normalized-derivative identity and contraction estimate without assuming nonvanishing or projective speed for the branch curve. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-unit-range}, accepted Proposition~\ref{prop:step-001-coordinate-envelope}, and Lemma~\ref{lem:step-002-normalized-curve}, one has \(G_1=F_1=1\), \(\|G\|_2,\|F\|_2\geq1\), the exact normalized-derivative identity, \(\gamma_F(\theta)=\gamma_G((\theta-c)/h)\), and \(\Gamma_{\mathrm{proj}}(F)\leq\sqrt N D_*/h\) on all \(\Theta\). | Discharges the local nonvanishing condition, consumes the accepted derivative envelope, performs the exact coordinate transfer, and exports the complete target certificate. |

Atomic step = no. Euclidean normalization of an arbitrary nonvanishing curve
is an independent reusable calculus claim, so it is exposed separately from
the anchored branch application.

## Cited Result Applications

External paper results: None.

1. **Accepted coordinate derivative envelope.** The source is
   Proposition~\ref{prop:step-001-coordinate-envelope} in the accepted
   dependency proof identified above. In current notation its usable
   statement is: \(G\in C^1([-1,1];\mathbb R^N)\), and with
   \(D_*=\Delta B_Q(1+qB_P)\),
   \[
   |G_i'(x)|\leq D_*
   \quad\text{for every }x\in[-1,1]\text{ and }1\leq i\leq N.
   \]
   Its primitive hypotheses were discharged in the accepted dependency and
   independently certified by the matching accepted review. The current
   objects \(G_i,q,\Delta,B_P,B_Q\) are the same setting objects, so no
   notation or coordinate translation is needed. The only conclusions used
   below are \(C^1\) regularity and the displayed coordinatewise bound.

2. **One-variable product, scalar chain, and reciprocal rules (standard
   differentiation tools).** If scalar functions \(a,b\) are differentiable,
   then \((ab)'=a'b+ab'\). If \(\varphi\) is differentiable on the range of
   \(a\), then \((\varphi\circ a)'=(\varphi'\circ a)a'\). If \(a\neq0\), then
   \((a^{-1})'=-a'/a^2\). Componentwise, these rules imply
   \[
   \frac{d}{dt}\bigl(v(t)^{\mathsf T}v(t)\bigr)
   =2v(t)^{\mathsf T}v'(t)
   \]
   for differentiable \(v:J\to\mathbb R^N\). On a closed interval the same
   formulas hold at the endpoints with the corresponding one-sided
   derivative convention. In Lemma~\ref{lem:step-002-normalized-curve},
   \(a=v^{\mathsf T}v>0\) and
   \(\varphi(s)=\sqrt{s}\); pointwise nonvanishing discharges positivity
   before any division.

3. **Vector-valued one-variable chain rule (standard differentiation tool).**
   If \(u:J\to\mathbb R^N\) is \(C^1\) and \(y:K\to J\) is \(C^1\), then
   \[
   \frac{d}{dt}u(y(t))=u'(y(t))y'(t)
   \]
   componentwise, with one-sided endpoint derivatives on closed intervals.
   In Proposition~\ref{prop:step-002-projective-speed},
   \(u=\gamma_G\), \(y=x\), and \(x'(\theta)=h^{-1}\).
   Lemma~\ref{lem:step-002-normalized-curve} and the proved anchor supply
   \(\gamma_G\in C^1\); Assumption~\ref{assump:parameter-regime} supplies
   \(h>0\) and the affine map.

4. **Lemma~\ref{lem:step-002-normalized-curve} (local normalized-curve
   calculus).** For a pointwise nonzero Euclidean \(C^1\) curve, this lemma
   gives the exact projector identity and the induced Euclidean contraction.
   It is proved below and instantiated only after the anchor proves
   \(G(x)\neq0\) for every \(x\).

5. **Proposition~\ref{prop:step-002-projective-speed} (local target
   proposition).** Under exactly the two allowed primitive assumptions and
   the accepted derivative envelope, this proposition proves global
   nonvanishing, both exact normalized identities, the exact \(h^{-1}\)
   transfer, and the stated projective-speed rate. It is proved below and is
   the sole public-facing result used in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Derivative and contraction for a normalized Euclidean curve).**
\label{lem:step-002-normalized-curve}
With no setting assumption, let \(N\geq1\), let \(J=[a,b]\) be a nondegenerate
closed interval, and let \(v\in C^1(J;\mathbb R^N)\) satisfy
\[
v(t)\neq0\qquad(t\in J).
\]
Define
\[
r(t):=\|v(t)\|_2,
\qquad
\gamma(t):=\frac{v(t)}{r(t)}.
\]
Then \(r>0\), \(r,\gamma\in C^1(J)\) under the one-sided endpoint convention,
and for every \(t\in J\),
\[
r'(t)=\gamma(t)^{\mathsf T}v'(t)
\]
and
\[
\gamma'(t)
=\frac{\bigl(I_N-\gamma(t)\gamma(t)^{\mathsf T}\bigr)v'(t)}
       {\|v(t)\|_2}.
\]
Moreover,
\[
P(t):=I_N-\gamma(t)\gamma(t)^{\mathsf T}
\]
is the Euclidean orthogonal projector onto \(\gamma(t)^\perp\), so
\[
\|P(t)\|_{2\to2}\leq1
\quad\text{and}\quad
\|\gamma'(t)\|_2\leq\frac{\|v'(t)\|_2}{\|v(t)\|_2}.
\]
For \(N=1\), \(P(t)=0\) and \(\gamma\) is constant on \(J\).

**Proof / justification.** Pointwise nonvanishing gives
\(v(t)^{\mathsf T}v(t)>0\), hence \(r(t)>0\). The standard differentiation
rules restated above apply without a zero denominator. Differentiating
\(r(t)^2=v(t)^{\mathsf T}v(t)\) gives
\[
2r(t)r'(t)=2v(t)^{\mathsf T}v'(t),
\]
and therefore
\[
r'(t)
=\frac{v(t)^{\mathsf T}v'(t)}{r(t)}
=\gamma(t)^{\mathsf T}v'(t).
\]
Using \(v=r\gamma\), or equivalently differentiating \(v/r\), now yields
\[
\begin{aligned}
\gamma'(t)
&=\frac{v'(t)}{r(t)}
  -\frac{v(t)r'(t)}{r(t)^2}\\
&=\frac{v'(t)-\gamma(t)\gamma(t)^{\mathsf T}v'(t)}{r(t)}\\
&=\frac{\bigl(I_N-\gamma(t)\gamma(t)^{\mathsf T}\bigr)v'(t)}
        {\|v(t)\|_2}.
\end{aligned}
\]
Every right-hand side is continuous on \(J\). Thus the interior identities
extend to \(a\) and \(b\) by the corresponding one-sided limits, establishing
the claimed closed-interval \(C^1\) convention.

Because \(\|\gamma(t)\|_2=1\),
\[
P(t)^{\mathsf T}=P(t)
\]
and
\[
\begin{aligned}
P(t)^2
&=I_N-2\gamma(t)\gamma(t)^{\mathsf T}
  +\gamma(t)
   \bigl(\gamma(t)^{\mathsf T}\gamma(t)\bigr)
   \gamma(t)^{\mathsf T}\\
&=I_N-\gamma(t)\gamma(t)^{\mathsf T}
=P(t).
\end{aligned}
\]
Also \(P(t)\gamma(t)=0\), while \(P(t)z=z\) whenever
\(\gamma(t)^{\mathsf T}z=0\). Hence \(P(t)\) is precisely the orthogonal
projector onto \(\gamma(t)^\perp\). Directly, for every \(z\in\mathbb R^N\),
\[
\begin{aligned}
\|P(t)z\|_2^2
&=z^{\mathsf T}P(t)^2z\\
&=z^{\mathsf T}P(t)z\\
&=\|z\|_2^2-\bigl(\gamma(t)^{\mathsf T}z\bigr)^2\\
&\leq\|z\|_2^2.
\end{aligned}
\]
Thus \(\|P(t)\|_{2\to2}\leq1\), and the exact derivative identity gives
\[
\|\gamma'(t)\|_2
\leq\frac{\|v'(t)\|_2}{\|v(t)\|_2}.
\]
If \(N=1\), the unit scalar \(\gamma(t)\) has value \(1\) or \(-1\).
Continuity and nonvanishing prevent a sign change, and algebraically
\(P(t)=1-\gamma(t)^2=0\). Hence \(\gamma'=0\). This proves the lemma.
\(\square\)

### unit_002: proposition

**Proposition (Anchored global projective-speed certificate).**
\label{prop:step-002-projective-speed}
Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-unit-range}, accepted
Proposition~\ref{prop:step-001-coordinate-envelope}, and
Lemma~\ref{lem:step-002-normalized-curve}, define
\[
D_*:=\Delta B_Q(1+qB_P),
\qquad
\gamma_G(x):=\frac{G(x)}{\|G(x)\|_2}.
\]
Then, for every \(x\in[-1,1]\) and \(\theta\in\Theta\),
\[
G_1(x)=F_1(\theta)=1,
\qquad
\|G(x)\|_2\geq1,
\qquad
\|F(\theta)\|_2\geq1.
\]
Consequently both normalized curves are globally well defined and \(C^1\).
They satisfy the exact identities
\[
\gamma_G'(x)
=\frac{\bigl(I_N-\gamma_G(x)\gamma_G(x)^{\mathsf T}\bigr)G'(x)}
       {\|G(x)\|_2},
\]
\[
\gamma_F(\theta)
=\gamma_G(x(\theta))
=\gamma_G\!\left(\frac{\theta-c}{h}\right),
\]
and
\[
\gamma_F'(\theta)
=\frac1h\,\gamma_G'\!\left(\frac{\theta-c}{h}\right),
\]
including the corresponding one-sided identities at the endpoints. Pointwise
on all of \(\Theta\),
\[
\|\gamma_F'(\theta)\|_2\leq\frac{\sqrt N\,D_*}{h},
\]
and therefore
\[
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N\,D_*}{h}
=\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
\]

**Proof / justification.** Assumption~\ref{assump:anchored-unit-range} gives
\(Q_1\equiv1\). Substitution into the setting definitions gives, before any
normalization is introduced,
\[
G_1(x)=Q_1(x,\eta_1(x),\ldots,\eta_q(x))=1
\]
for every \(x\in[-1,1]\), and then
\[
F_1(\theta)=G_1(x(\theta))=1
\]
for every \(\theta\in\Theta\). Hence
\[
\|G(x)\|_2^2
=1+\sum_{i=2}^N|G_i(x)|^2\geq1,
\qquad
\|F(\theta)\|_2^2
=1+\sum_{i=2}^N|F_i(\theta)|^2\geq1.
\]
For \(N=1\), both sums are empty, so the same conclusion holds without a
separate convention or margin. This proves the local nonvanishing hypothesis
needed to apply Lemma~\ref{lem:step-002-normalized-curve} with \(v=G\).

The accepted Proposition~\ref{prop:step-001-coordinate-envelope} gives
\(G\in C^1([-1,1];\mathbb R^N)\) and
\[
\lvert G_i'(x)\rvert\leq D_*
\quad
(x\in[-1,1],\ 1\leq i\leq N).
\]
All factors defining \(D_*\) are nonnegative, so \(D_*\geq0\). Therefore
\[
\begin{aligned}
\|G'(x)\|_2^2
&=\sum_{i=1}^N|G_i'(x)|^2\\
&\leq\sum_{i=1}^N D_*^2\\
&=N D_*^2,
\end{aligned}
\]
which gives the literal Euclidean estimate
\[
\|G'(x)\|_2\leq\sqrt N\,D_*.
\]
No coordinate is discarded and no dimension factor is hidden.

Lemma~\ref{lem:step-002-normalized-curve} now gives the exact identity
\[
\gamma_G'(x)
=\frac{\bigl(I_N-\gamma_G(x)\gamma_G(x)^{\mathsf T}\bigr)G'(x)}
       {\|G(x)\|_2}.
\]
The same lemma proves that the matrix in the numerator is a Euclidean
orthogonal projector of operator norm at most one. Combining its contraction
with the proved lower bound on the denominator and the accepted derivative
envelope yields, for every \(x\in[-1,1]\),
\[
\begin{aligned}
\|\gamma_G'(x)\|_2
&\leq
\frac{\|G'(x)\|_2}{\|G(x)\|_2}\\
&\leq\sqrt N\,D_*.
\end{aligned}
\]

By the setting definition \(F(\theta)=G(x(\theta))\). Euclidean normalization
commutes exactly with this evaluation:
\[
\begin{aligned}
\gamma_F(\theta)
&=\frac{F(\theta)}{\|F(\theta)\|_2}\\
&=\frac{G(x(\theta))}{\|G(x(\theta))\|_2}\\
&=\gamma_G(x(\theta))\\
&=\gamma_G\!\left(\frac{\theta-c}{h}\right).
\end{aligned}
\]
This is an equality of the actual normalized targets, not a comparison or a
surrogate relation. Since \(x'(\theta)=h^{-1}\), the checked vector chain rule
gives the exact pointwise derivative transfer
\[
\gamma_F'(\theta)
=\gamma_G'(x(\theta))x'(\theta)
=\frac1h\,\gamma_G'\!\left(\frac{\theta-c}{h}\right).
\]
The identity holds on the interior and, by continuity and one-sided limits,
at \(\theta=c-h\) and \(\theta=c+h\) under the closed-interval derivative
convention. Thus for every \(\theta\in\Theta\),
\[
\|\gamma_F'(\theta)\|_2
=\frac1h\|\gamma_G'(x(\theta))\|_2
\leq\frac{\sqrt N\,D_*}{h}.
\]
The bound is deterministic and pointwise with a finite constant independent
of \(\theta\). Taking the essential supremum in the setting definition
therefore gives
\[
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N\,D_*}{h}
=\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
\]

The requested degenerate and scale regimes follow from the same identities:

- If \(N=1\), the anchor forces \(G=F=(1)\). Then
  \(\gamma_G=\gamma_F=(1)\), the projector is zero, and the projective speed
  is zero. Since the sole output polynomial is \(Q_1\equiv1\), one also has
  \(\Delta=0\) and \(D_*=0\), so the displayed certificate reads \(0\leq0\).
- If \(q=0\), the setting gives \(M=B_P=0\), and hence
  \(D_*=\Delta B_Q\). The rate reduces exactly to
  \(\Gamma_{\mathrm{proj}}(F)\leq\sqrt N\,\Delta B_Q/h\), with no chain term.
- If \(G'\equiv0\), or more generally if the projector annihilates \(G'\),
  the exact normalized-derivative identity gives \(\gamma_G'\equiv0\);
  the coordinate identity then gives \(\gamma_F'\equiv0\). Thus stationary
  normalized curves require no separate case assumption.
- In Counter-example 1,
  \(G(x)=(1,x/\delta)\), \(0<\delta\leq1\), \(q=M=0\),
  \(\Delta=1\), \(N=2\), and \(h=1\). Because
  \(Q_1=1\) and \(Q_2=x/\delta\),
  \[
  B_Q=\max\{1,1/\delta\}=1/\delta,
  \qquad
  D_*=1/\delta.
  \]
  Writing \(t=x/\delta\), direct differentiation gives
  \[
  \gamma_G(x)=\frac{(1,t)}{\sqrt{1+t^2}},
  \qquad
  \|\gamma_G'(x)\|_2
  =\frac{1/\delta}{1+(x/\delta)^2}.
  \]
  Hence \(\Gamma_{\mathrm{proj}}(F)=1/\delta\), attained at \(x=0\),
  while the present general certificate is
  \(\Gamma_{\mathrm{proj}}(F)\leq\sqrt2/\delta\). Both retain the required
  \(1/\delta\) scale; no coefficient normalization suppresses it.

This proves the proposition. \(\square\)

## Target-Step Assembly

The primitive anchor is first converted into the pointwise denominator
certificate inside
Proposition~\ref{prop:step-002-projective-speed}:
\[
G_1(x)=1
\quad\Longrightarrow\quad
\|G(x)\|_2^2
=1+\sum_{i=2}^N|G_i(x)|^2
\geq1.
\]
Thus the local nonvanishing condition of
Lemma~\ref{lem:step-002-normalized-curve} is proved, rather than added as a
theorem assumption. That lemma then supplies the exact identity
\[
\frac{d}{dx}\frac{G}{\|G\|_2}
=\frac{(I_N-\gamma_G\gamma_G^{\mathsf T})G'}{\|G\|_2}
\]
and the Euclidean projector contraction. The accepted
Proposition~\ref{prop:step-001-coordinate-envelope} supplies
\[
\|G'(x)\|_2^2
\leq\sum_{i=1}^N D_*^2
=N D_*^2.
\]
Finally, Proposition~\ref{prop:step-002-projective-speed} proves the exact
same-target coordinate relations
\[
\gamma_F(\theta)
=\gamma_G\!\left(\frac{\theta-c}{h}\right),
\qquad
\gamma_F'(\theta)
=\frac1h\gamma_G'\!\left(\frac{\theta-c}{h}\right).
\]
Composing these named results gives, pointwise on all of \(\Theta\) before
taking any supremum,
\[
\|\gamma_F'(\theta)\|_2
\leq\frac{\sqrt N\,D_*}{h}.
\]
Therefore the exact accepted sketch-row conclusion is
\[
\boxed{
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N\,D_*}{h}
=\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
}
\]
The same proposition includes \(q=0\), \(N=1\), endpoints, stationary
normalized curves, and the Counter-example 1 \(B_Q=1/\delta\) specialization.
No stronger assumption, weaker conclusion, changed norm, or stochastic mode
enters the assembly.

## Explicit Rate Audit

- Exposed variables: \(q,M,\Delta,N,B_P,B_Q,h^{-1}\). Dependence on \(M\)
  is explicitly degree zero when the separate budget \(B_P\) is held fixed.
- Hidden constants may depend on: None; every numerical and dimensional
  factor is displayed.
- Hidden constants may not depend on: \(q,M,\Delta,N,B_P,B_Q,h\), the
  deterministic presentation, \(x\), \(\theta\), any law, interval, event,
  confidence parameter, or unrecorded norm margin.
- Fixed quantities: The full deterministic common-chain presentation,
  \(c,h,N\), and \(\Theta\). The bounds are simultaneous over the entire
  normalized and original coordinate intervals.
- Probability mode: Ordinary deterministic pointwise mode. No probability
  law, event, expectation, confidence parameter, or union bound occurs.
- Horizon mode: Pointwise on all of \([-1,1]\) and all of the closed interval
  \(\Theta\), followed by the setting's global essential supremum. There is no
  iterative, stopping-time, asymptotic, or almost-everywhere upgrade.
- Norm mode: Euclidean vector norm, its induced Euclidean operator norm, and
  the Euclidean projective speed from the setting.
- Admissibility conditions and auxiliary tolerances: Exactly
  Assumptions~\ref{assump:parameter-regime} and
  \ref{assump:anchored-unit-range}, plus the accepted
  Proposition~\ref{prop:step-001-coordinate-envelope}. No auxiliary
  tolerance, positive norm margin, monomial count, boundedness event, or
  generated invariant is introduced.
- Term absorption or simplification inequalities: No term is absorbed. The
  complete visible chain is
  \[
  \|G'(x)\|_2^2
  \leq N D_*^2,
  \qquad
  \|I_N-\gamma_G\gamma_G^{\mathsf T}\|_{2\to2}\leq1,
  \qquad
  \|G(x)\|_2^{-1}\leq1,
  \]
  followed by the equality
  \[
  \gamma_F'(\theta)
  =h^{-1}\gamma_G'(x(\theta))
  \]
  and the exact definition
  \(D_*=\Delta B_Q(1+qB_P)\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step supplies the full
  deterministic R1 projective bridge consumed by `step_003`,
  `step_005`, and `step_010`. It makes the pointwise
  bound available before any interval integration or probability estimate.
- Baseline-reduction check, if applicable: For \(q=0\),
  \(M=B_P=0\) and the bound reduces exactly to
  \(\sqrt N\,\Delta B_Q/h\). For \(N=1\), the anchor makes the normalized
  curve constant and both sides zero. For a stationary normalized curve, the
  projector identity gives zero speed. In Counter-example 1,
  \(B_Q=D_*=1/\delta\), and the exact speed is \(1/\delta\), so the general
  \(\sqrt2/\delta\) certificate preserves the required scale without a
  conservative change of order or an unrecorded constant.

## Blockers

None

## Notation And Assumption Notes

- \(\gamma_G=G/\|G\|_2\) is `public-facing`. It is the normalized
  curve required by the accepted target identity. Its existence and \(C^1\)
  regularity are proved in
  Proposition~\ref{prop:step-002-projective-speed}, not assumed.
- \(D_*=\Delta B_Q(1+qB_P)\) is `public-facing` and inherited from
  accepted Proposition~\ref{prop:step-001-coordinate-envelope}. Its constant
  provenance is an accepted dependency conclusion defined entirely from
  original setting quantities. The current step introduces no replacement
  constant or additional envelope.
- The affine coordinate \(x(\theta)=(\theta-c)/h\), \(\gamma_F\), and
  \(\Gamma_{\mathrm{proj}}(F)\) are original setting-defined
  `public-facing` objects. The current step proves their exact
  relation to \(\gamma_G\).
- The generic interval \(J\), curve \(v\), radius \(r=\|v\|_2\), normalized
  curve \(\gamma\), projector \(P\), and test vector \(z\) in
  Lemma~\ref{lem:step-002-normalized-curve} are `proof-local`.
  The condition \(v(t)\neq0\) is a local conditional hypothesis only. For the
  sole branch application \(v=G\), it is discharged by the anchor before the
  lemma is invoked.
- The lower bounds \(\|G\|_2,\|F\|_2\geq1\) are derived in
  Proposition~\ref{prop:step-002-projective-speed} from the primitive anchor.
  They are not primitive norm-margin assumptions or free bounded quantities.
- The Euclidean projector and its norm bound are proved in
  Lemma~\ref{lem:step-002-normalized-curve}. They are not imported from a
  cited paper and introduce no hidden constant.
- The \(\delta,t\) notation in the Counter-example audit is
  `proof-local` to that setting-required specialization.
  The equality \(B_Q=1/\delta\) is derived from the original output
  polynomials, and the speed formula is proved directly.
- There are no `appendix-local` helpers, theorem-facing events,
  auxiliary tolerances, radii, thresholds, probability parameters,
  recurrence conditions, local-validity conditions, or finite-tube
  quantities.
- Assumption~\ref{assump:parameter-regime} is used only for \(N\geq1\),
  \(h>0\), the two coordinate intervals, and \(x'(\theta)=h^{-1}\).
  Assumption~\ref{assump:anchored-unit-range} is used directly only through
  \(Q_1\equiv1\). All derivative control is consumed from the accepted
  dependency rather than re-assumed or rederived from another primitive
  assumption.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified current, digest-matched, and
  `ACCEPTED`. Its step-relevant planning idea was the two-part
  decomposition into Euclidean normalization and exact anchored coordinate
  transfer. Both parts are independently proved above. The diagnostic was not
  used as evidence, a cited result, an assumption source, or authority to
  change the target claim, dependencies, mode, norm, or constants.
- The stale attempt-1 same-step artifact was inspected only as permitted
  diagnostic material to preserve the stable local-unit handles. No stale
  statement, dependency digest, or review is used as evidence. Every claim in
  this artifact is reproved against the attempt-2 setting, sketch, and accepted
  dependency identified above.
