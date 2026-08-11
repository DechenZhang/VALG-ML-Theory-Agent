# Proof Step

## Step Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Run mode: `interactive`
- Target mode: Exact-goal, unconditional, full-progress theorem on the declared derivative-closed subclass
- Progress type: `full`
- Controller prompt SHA-256: `bde6dbf8ce3c06a64b870eb5a3abc49ee756e583be2c43c25d43bdc553de1112`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding proof sketch SHA-256: `8b5b22e5000e1c5641e2b5baf0c4d48244ce3389941b0cc9857b47510bbf6c93`
- Binding proof-sketch review SHA-256: `4288579fa3b8583b31faa2c220f5071879da72f06ac3a1dd3d1889cb1096cb7c`
- Binding proof-sketch review status: `ACCEPTED`
- Rate-objective role: Complete Rate Objective R4 with the exact affine-monic baseline constant and no auxiliary loss.

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: Apply `step_003` using `step_009` to prove exactly
  \[
  \Pr[\exists\theta\in J:p_\alpha(\theta)=0]
  \leq\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert
  \]
  for every arbitrary correlated lower-coefficient law.
- Depends on: `step_003`, `step_009`.
- Assumptions used: Primitive: `assump:cube-density-laws` in dimension \(d\); derived: both dependencies.
- Technical challenge: Verify beta-volume, disjoint partition lengths, \(d=1\), and exact coefficient dimension while introducing no auxiliary loss or singular leading coordinate.
- Intended proof tool or cited result: Direct specialization and integration of the already proved chart theorem.
- Output target: Exact affine-monic baseline conclusion.
- Rate objective: R4: complete exact baseline bridge.
- Review status in the accepted sketch row: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:cube-density-laws}, specialized to \(N=d\):
    \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\) has an arbitrary Borel joint density \(f_\mu\) supported on
    \([-R,R]^d\) and satisfying \(0\leq f_\mu\leq\kappa\) almost everywhere. Coordinate independence,
    marginal-density caps, and conditional-density caps are not assumed.
- Derived invariants and controls supplied by accepted dependencies:
  - The accepted `step_003` proof, SHA-256
    `637b6b01d6041dc9b797a04e4a387713dff823f5ee51bd1e872801a5ee119312`, proves in
    Proposition~\ref{prop:step-003-pivot-sweep} the indicator and indicator-dropped affine pivot-sweep
    inequalities in the original \(N\)-dimensional coefficient coordinates. Its review, SHA-256
    `253d7c4f469580dafd08647358cff7696bcc1e31a8da63ad7e54d8e6451c421a`, has status `ACCEPTED` and verifies
    arbitrary correlation, exact coefficient dimension, no chart-count multiplier, boundary coverage, and the
    \(N=1\) convention \(\lambda_0([-R,R]^0)=1\).
  - The accepted `step_009` proof, SHA-256
    `241aff9f7902ac53f4bbfbaa561c92d077f6827911a597eb6087aca664e00e7c`, proves the exact monomial tuple,
    the identity to \(p_\alpha\), the legal cells and charts, the common speed cap, and the separate degree-one
    convention. Its review, SHA-256
    `d0c991fb67d7b8f34d718ed897982178dc4f9d1fc8596efda3482e678a6a6abc`, has status `ACCEPTED` and verifies
    the exact \(d\)-coordinate lower-coefficient object, deterministic leading coefficient, transition points,
    negative outer parameters, empty cells, and all literal constants.
- Local conditional hypotheses: None. Fixing \(d,R,\kappa,\mu\), and \(J\) only instantiates universal
  quantifiers. The case \(\lvert J\rvert=0\), which is outside the positive-length hypothesis of
  Proposition~\ref{prop:step-003-pivot-sweep}, is proved directly in
  Lemma~\ref{lem:step-010-degenerate-interval} from the same full joint-density cap.

## Local Lemma Map

Atomic step = no. Exact measure accounting, positive-length specialization, and the degenerate-interval boundary
case are independent obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the accepted Legal Two-Pivot Monomial Charts Lemma~\ref{lem:step-009-two-pivot-charts} when \(d\geq2\), and the accepted Degree-One Monic Chart Lemma~\ref{lem:step-009-degree-one} when \(d=1\), if \(d\geq1\), \(R>0\), and \(J\) is a bounded interval, then the active cells are measurable and disjoint with total Lebesgue length \(\lvert J\rvert\), and every chart's nonpivot cube has volume \((2R)^{d-1}\), including \((2R)^0=1\) for \(d=1\). | Supplies the exact beta-volume and partition-length factors without a chart-count loss. |
| `unit_002` | proposition | Under Assumption~\ref{assump:cube-density-laws}, the accepted Exhausted Affine Pivot-Sweep Proposition~\ref{prop:step-003-pivot-sweep}, Augmented Monomial Closure Certificate Proposition~\ref{prop:step-009-monomial-certificate}, Legal Two-Pivot Monomial Charts Lemma~\ref{lem:step-009-two-pivot-charts}, Inner and Outer Monomial Chart Velocity Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}, Degree-One Monic Chart Lemma~\ref{lem:step-009-degree-one}, Boundary-Complete Monic Chart Interface Proposition~\ref{prop:step-009-boundary-interface}, and Lemma~\ref{lem:step-010-measure-accounting}, if \(d\geq1\) and \(J\) is a positive-length bounded interval, then \(\Pr[\exists\theta\in J:p_\alpha(\theta)=0]\leq\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert\). | Applies the accepted chart theorem in the original coefficient coordinates and proves the exact positive-length baseline. |
| `unit_003` | lemma | Under Assumption~\ref{assump:cube-density-laws} and the accepted Augmented Monomial Closure Certificate Proposition~\ref{prop:step-009-monomial-certificate}, if \(d\geq1\) and \(J\) is a bounded interval with \(\lvert J\rvert=0\), then the polynomial-root event has probability zero and hence satisfies the same displayed bound. | Closes the degenerate bounded-interval case without an independent root theorem or singular augmentation. |

## Cited Result Applications

### Accepted dependency: exhausted affine pivot-sweep inequality

- Source or name: Accepted Proposition~\ref{prop:step-003-pivot-sweep} from `step_003`.
- Restated statement in current notation: For an admissible full joint law in \(\mathbb R^N\), a positive-length
  interval \(I\), and any measurable legal partition
  \[
  I=\bigsqcup_{j=1}^N E_j,
  \qquad F_j\neq0\text{ on }E_j,
  \]
  one has
  \[
  \begin{aligned}
  \Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
  &\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  \mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
  &\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta.
  \end{aligned}
  \]
  These are the accepted indicator and indicator-dropped conclusions; their coefficient is exactly \(\kappa\).
- Instantiated objects: \(N=d\), \(I=J\),
  \(F_0(\theta)=\theta^d\), \(F_{k+1}(\theta)=\theta^k\), and the original coefficient vector
  \((\alpha_0,\ldots,\alpha_{d-1})\). Dependency coordinate \(j\) is precisely lower-coefficient coordinate
  \(\alpha_{j-1}\).
- Required assumptions and discharge: The accepted `step_009` outputs verify the deterministic monomial
  presentation, anchor, legal pivots, and chart identities required for this specialization. Assumption~\ref{assump:cube-density-laws}
  supplies the one full joint density cap. The internal area-formula, exhaustion, persistent-root, endpoint, and
  multiplicity obligations have already been discharged and accepted inside `step_003`; they are not reproved or
  replaced here.
- Conclusion used: Both displayed chart integral inequalities for the exact polynomial-root event, with no
  independence reduction, conditional density, or extra factor for the number of charts.

### Accepted dependency: exact monic object and chart package

- Source or name: Accepted Proposition~\ref{prop:step-009-monomial-certificate},
  Lemma~\ref{lem:step-009-two-pivot-charts}, Lemma~\ref{lem:step-009-inner-velocity},
  Lemma~\ref{lem:step-009-outer-velocity}, Lemma~\ref{lem:step-009-degree-one}, and
  Proposition~\ref{prop:step-009-boundary-interface} from `step_009`.
- Restated statements in current notation:
  \[
  F_0(\theta)=\theta^d,
  \qquad
  F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
  \]
  \[
  F_0(\theta)+\langle\alpha,F(\theta)\rangle
  =p_\alpha(\theta)
  \]
  for the same \(d\)-dimensional vector \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\), while the coefficient of
  \(F_0=\theta^d\) remains the deterministic number one. For \(d\geq2\), the only active cells are
  \[
  E_1=J\cap\{\lvert\theta\rvert\leq1\},
  \qquad
  E_d=J\cap\{\lvert\theta\rvert>1\},
  \]
  with intermediate cells empty, and the charts are
  \[
  T_1(\theta,\beta)
  =-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
  \qquad
  T_d(\theta,\beta)
  =-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
  \]
  Their accepted velocities satisfy
  \[
  \lvert\partial_\theta T_1\rvert
  \leq d+\frac{Rd(d-1)}2,
  \]
  \[
  \lvert\partial_\theta T_d\rvert
  \leq1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2.
  \]
  For \(d=1\), the sole cell is \(E_1=J\), the beta coordinate is absent,
  \(T_1(\theta)=-\theta\), and \(\lvert\partial_\theta T_1\rvert=1\).
- Required assumptions and discharge: These are accepted deterministic dependency conclusions. Their proof and
  review verify \(q=M=m=0\), \(\Delta=N=d\), the legal inner and outer pivots, \(\theta=0\),
  \(\lvert\theta\rvert=1\), negative outer \(\theta\), empty cells, and arbitrary location of bounded \(J\).
- Conclusion used: Exact same-polynomial object mapping, measurable legal cells, and the common inherited speed
  cap
  \[
  V_d=d+\frac{Rd(d-1)}2.
  \]

### Standard measure facts

- Source or name: Product volume of rectangles, zero-dimensional Lebesgue measure, finite additivity, and
  Tonelli's theorem.
- Restated statements in current notation: The \((d-1)\)-dimensional cube is a Cartesian product of
  \(d-1\) intervals of length \(2R\), so its volume is \((2R)^{d-1}\). For \(d=1\), the empty product is
  \([-R,R]^0=\{()\}\) and has \(\lambda_0\)-mass one. If measurable sets are disjoint, their Lebesgue lengths
  add. For a nonnegative measurable function, iterated integration is valid, including the calculation that the
  graph of the displayed continuous affine scalar-valued function over \(\mathbb R^{d-1}\) has
  \(d\)-dimensional Lebesgue measure zero because every one-dimensional fiber is a singleton.
- Instantiated objects: The two beta cubes, the cells \(E_1,E_d\), and the coefficient set associated with a
  root at one fixed parameter value.
- Assumption discharge: All cubes and cells are measurable by the accepted `step_009` package; all integrands
  used below are nonnegative and measurable.
- Conclusion used: Exact beta-volume, exact partition length, and the probability-zero degenerate-interval
  boundary case.

### Local result application map

- Lemma~\ref{lem:step-010-measure-accounting} supplies the beta-volume and partition-length equalities to
  Proposition~\ref{prop:step-010-positive-length}.
- Proposition~\ref{prop:step-010-positive-length} proves the target bound for \(\lvert J\rvert>0\).
- Lemma~\ref{lem:step-010-degenerate-interval} proves the target bound for \(\lvert J\rvert=0\).

No independent polynomial-root theorem, new area-formula invocation, marginal-density theorem, or random
leading-coordinate construction is used.

## Local Derivation

### unit_001: lemma

**Lemma (Exact monic chart measure accounting).**
\(\label{lem:step-010-measure-accounting}\)

Statement:
Under the accepted Legal Two-Pivot Monomial Charts Lemma~\ref{lem:step-009-two-pivot-charts} when \(d\geq2\),
and the accepted Degree-One Monic Chart Lemma~\ref{lem:step-009-degree-one} when \(d=1\), if \(d\geq1\),
\(R>0\), and \(J\subset\mathbb R\) is a bounded interval, then every chart's nonpivot cube has exact volume

\[
\lambda_{d-1}([-R,R]^{d-1})=(2R)^{d-1},
\]

where \((2R)^0=1\) when \(d=1\). Moreover, the active monic cells are measurable and disjoint and their total
Lebesgue length is exactly \(\lvert J\rvert\): for \(d\geq2\),

\[
\lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert,
\]

while for \(d=1\), \(E_1=J\) and \(\lvert E_1\rvert=\lvert J\rvert\).

Proof / justification:

For \(d\geq2\), the nonpivot coordinates in either accepted chart form a Cartesian product of exactly
\(d-1\) copies of \([-R,R]\). Each factor has length \(2R\), so product measure gives

\[
\lambda_{d-1}([-R,R]^{d-1})
=\prod_{r=1}^{d-1}\lambda_1([-R,R])
=\prod_{r=1}^{d-1}2R
=(2R)^{d-1}.
\]

The accepted cells are

\[
E_1=J\cap\{\lvert\theta\rvert\leq1\},
\qquad
E_d=J\cap\{\lvert\theta\rvert>1\}.
\]

They are measurable, disjoint, and their union is \(J\). The transition points \(\theta=\pm1\) belong to
\(E_1\) only. Finite additivity of Lebesgue measure therefore gives

\[
\lvert E_1\rvert+\lvert E_d\rvert
=\lvert E_1\sqcup E_d\rvert
=\lvert J\rvert.
\]

The identity remains true when either cell is empty, including intervals wholly inside \([-1,1]\), wholly to
the right of one, or wholly to the left of minus one. All intermediate accepted cells are empty and contribute
zero length.

For \(d=1\), there is no nonpivot coordinate. By the accepted convention,

\[
[-R,R]^0=\{()\},
\qquad
\lambda_0(\{()\})=1=(2R)^0.
\]

The sole accepted cell is \(E_1=J\), so its length is exactly \(\lvert J\rvert\). Thus neither the two-chart
case nor the degree-one case introduces a chart-count factor. \(\square\)

### unit_002: proposition

**Proposition (Exact positive-length affine-monic sweep).**
\(\label{prop:step-010-positive-length}\)

Statement:
Under Assumption~\ref{assump:cube-density-laws}, the accepted Exhausted Affine Pivot-Sweep
Proposition~\ref{prop:step-003-pivot-sweep}, the accepted Augmented Monomial Closure Certificate
Proposition~\ref{prop:step-009-monomial-certificate}, the accepted Legal Two-Pivot Monomial Charts
Lemma~\ref{lem:step-009-two-pivot-charts}, the accepted Inner and Outer Monomial Chart Velocity
Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity}, the accepted Degree-One Monic
Chart Lemma~\ref{lem:step-009-degree-one}, the accepted Boundary-Complete Monic Chart Interface
Proposition~\ref{prop:step-009-boundary-interface}, and Lemma~\ref{lem:step-010-measure-accounting}, if
\(d\geq1\), \(J\subset\mathbb R\) is a bounded interval with \(\lvert J\rvert>0\), and
\(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\) has any admissible joint law, then

\[
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]
\leq\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.
\]

Proof / justification:

The accepted Augmented Monomial Closure Certificate Proposition gives the exact object ordering

\[
F_0(\theta)=\theta^d,
\qquad
F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
\]

with \(N=d\), and the exact identity

\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\]

Thus the event produced by Proposition~\ref{prop:step-003-pivot-sweep} is the event in the statement. The random
vector has exactly \(d\) coordinates, all of them lower coefficients. The coefficient of \(\theta^d\) is the
deterministic number one and is not added to the random vector.

Assumption~\ref{assump:cube-density-laws} supplies one full joint density
\(f_\mu\leq\kappa\) on \([-R,R]^d\). Proposition~\ref{prop:step-003-pivot-sweep} already converts that exact
joint-density cap directly into its indicator-dropped chart inequality. No product factorization, marginal
density, or conditional density is used in this specialization.

Suppose first that \(d\geq2\). The accepted Legal Two-Pivot Monomial Charts Lemma gives the measurable legal
partition with active cells

\[
E_1=J\cap\{\lvert\theta\rvert\leq1\},
\qquad
E_d=J\cap\{\lvert\theta\rvert>1\},
\]

and empty cells for \(2\leq j\leq d-1\). Applying both inequalities of the accepted sweep interface with this
literal partition yields

\[
\begin{aligned}
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]
&\leq\kappa
\int_{E_1}\int_{[-R,R]^{d-1}}
\mathbf 1\{\lvert T_1(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_1(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\quad+\kappa
\int_{E_d}\int_{[-R,R]^{d-1}}
\mathbf 1\{\lvert T_d(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_d(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\leq\kappa
\int_{E_1}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_1(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\quad+\kappa
\int_{E_d}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_d(\theta,\beta)\rvert\,d\beta\,d\theta.
\end{aligned}
\]

Use the inherited common-cap notation

\[
V_d=d+\frac{Rd(d-1)}2.
\]

The accepted velocity lemmas give, pointwise on the full corresponding beta cubes,

\[
\lvert\partial_\theta T_1(\theta,\beta)\rvert\leq V_d
\qquad(\theta\in E_1),
\]

and

\[
\lvert\partial_\theta T_d(\theta,\beta)\rvert
\leq1+\frac{Rd(d-1)}2
\leq V_d
\qquad(\theta\in E_d).
\]

The second display applies equally to negative outer \(\theta\), while \(\theta=0\) and
\(\lvert\theta\rvert=1\) lie in the constant-pivot inner cell. Using
Lemma~\ref{lem:step-010-measure-accounting} in each integral gives

\[
\begin{aligned}
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]
&\leq\kappa V_d(2R)^{d-1}\lvert E_1\rvert
  +\kappa V_d(2R)^{d-1}\lvert E_d\rvert\\
&=\kappa(2R)^{d-1}V_d
  (\lvert E_1\rvert+\lvert E_d\rvert)\\
&=\kappa(2R)^{d-1}V_d\lvert J\rvert.
\end{aligned}
\]

This is a sum over disjoint parameter cells, not a multiplication by the number of pivot charts. Empty cells
have zero integrals.

Now suppose that \(d=1\). The accepted Degree-One Monic Chart Lemma gives the sole legal cell \(E_1=J\),
the sole chart \(T_1(\theta)=-\theta\), and

\[
\lvert\partial_\theta T_1\rvert=1
=d+\frac{Rd(d-1)}2.
\]

The \(N=1\) instance of both accepted sweep inequalities and the zero-dimensional convention from
Lemma~\ref{lem:step-010-measure-accounting} give

\[
\begin{aligned}
\Pr[\exists\theta\in J:p_{\alpha_0}(\theta)=0]
&\leq\kappa\int_J\int_{[-R,R]^0}
\mathbf 1\{\lvert T_1(\theta)\rvert\leq R\}
\lvert\partial_\theta T_1(\theta)\rvert\,d\lambda_0\,d\theta\\
&\leq\kappa\int_J\int_{[-R,R]^0}1\,d\lambda_0\,d\theta\\
&=\kappa\lvert J\rvert\\
&=\kappa(2R)^0
\left(1+\frac{R\cdot1\cdot0}{2}\right)\lvert J\rvert.
\end{aligned}
\]

Both cases are exactly the claimed formula. The accepted chart identities ensure that every chart-produced vector
is the original lower-coefficient vector for \(p_\alpha\), so the producer-to-target residual is zero. \(\square\)

### unit_003: lemma

**Lemma (Degenerate bounded intervals are law-null).**
\(\label{lem:step-010-degenerate-interval}\)

Statement:
Under Assumption~\ref{assump:cube-density-laws} and the accepted Augmented Monomial Closure Certificate
Proposition~\ref{prop:step-009-monomial-certificate}, if \(d\geq1\) and \(J\subset\mathbb R\) is a bounded
interval with \(\lvert J\rvert=0\), then

\[
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]=0.
\]

Consequently the exact target inequality holds because its right-hand side is zero.

Proof / justification:

If \(J=\varnothing\), the event is empty. Otherwise, a real interval of Lebesgue length zero is a singleton;
write \(J=\{\theta_0\}\). The accepted monomial identity shows that the event is the coefficient set

\[
\left\{\alpha\in[-R,R]^d:
\alpha_0=-\theta_0^d-\sum_{k=1}^{d-1}\alpha_k\theta_0^k\right\}.
\]

For every fixed nonpivot tuple
\((\alpha_1,\ldots,\alpha_{d-1})\in[-R,R]^{d-1}\), the section in the
\(\alpha_0\)-coordinate is either empty or one singleton. Its one-dimensional Lebesgue measure is zero.
The displayed coefficient set is closed, hence measurable, because it is the zero set of a continuous affine
function of \(\alpha\). Tonelli's theorem therefore gives zero \(d\)-dimensional Lebesgue measure for the
displayed set. This argument
also covers \(d=1\): the nonpivot tuple is empty and the event is the singleton
\(\{\alpha_0=-\theta_0\}\cap[-R,R]\).

Using the full joint density directly,

\[
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]
=\int_{\{\alpha:p_\alpha(\theta_0)=0\}}f_\mu(\alpha)\,d\alpha
\leq\kappa\,\lambda_d(\{\alpha:p_\alpha(\theta_0)=0\})
=0.
\]

No coordinate independence, root theorem, or leading-coordinate randomization enters this boundary argument.
Since \(\lvert J\rvert=0\), the target right-hand side is also zero. \(\square\)

## Target-Step Assembly

Fix any integer \(d\geq1\), any bounded interval \(J\subset\mathbb R\), and any arbitrary correlated joint law
of \((\alpha_0,\ldots,\alpha_{d-1})\) satisfying Assumption~\ref{assump:cube-density-laws} in dimension \(d\).
The accepted Augmented Monomial Closure Certificate Proposition~\ref{prop:step-009-monomial-certificate}
identifies

\[
F_0+\langle\alpha,F\rangle=p_\alpha
\]

in the same \(d\)-dimensional lower-coefficient coordinates, with deterministic leading coefficient one.

If \(\lvert J\rvert>0\), Proposition~\ref{prop:step-010-positive-length} instantiates the accepted Exhausted
Affine Pivot-Sweep Proposition~\ref{prop:step-003-pivot-sweep} on the exact accepted monic cells and charts. The
accepted inner and outer velocity lemmas bound both chart speeds by

\[
d+\frac{Rd(d-1)}2,
\]

while Lemma~\ref{lem:step-010-measure-accounting} contributes exactly the beta-volume \((2R)^{d-1}\) and the
disjoint partition identity. If \(\lvert J\rvert=0\), Lemma~\ref{lem:step-010-degenerate-interval} proves the
same conclusion with both sides zero. Therefore, in every case,

\[
\boxed{
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]
\leq\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.}
\]

The probability is ordinary probability under the original full joint law. The interval size is ordinary
Lebesgue length, and chart velocity is scalar absolute value. The result has no hidden constant, no confidence
parameter, no auxiliary tolerance, no dependence on the location of \(J\), no independence assumption, no
factor for the number of active charts, no independent polynomial-root theorem, and no random or singular
leading coordinate. This is exactly the accepted `step_010` row and the complete R4 baseline bridge.

## Explicit Rate Audit

- Exposed variables: \(d\geq1\), \(R>0\), \(0<\kappa<\infty\), and \(\lvert J\rvert\), together with the
  disclosed specialization metadata \(q=M=m=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), and the original
  \(d\)-dimensional coefficient vector. The exact rate is
  \[
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.
  \]
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\kappa\), the law, coefficient correlations, the location or endpoint
  convention of \(J\), a containing \(T\), a pivot threshold, a chart count, a leading-coordinate approximation,
  or any unrecorded quantity.
- Fixed quantities: For each application, \(d,R,\kappa\) and the deterministic augmented monomial presentation
  are fixed before the law and bounded interval are selected. A compact interval containing \(J\) is a
  deterministic realization device supplied by the accepted monomial package; no final constant depends on it.
- Probability mode: Ordinary probability for every fixed arbitrary correlated full joint law. There is no
  conditioning event, confidence parameter, expectation, union bound, or almost-sure upgrade.
- Horizon mode: Every bounded interval \(J\), uniformly in its location and endpoint convention. Positive-length
  intervals use the accepted chart theorem; empty or singleton intervals are handled directly. There is no
  recursive, asymptotic, stopping-time, or all-time mode.
- Norm mode: Scalar absolute value for \(\partial_\theta T_j\), \(d\)-dimensional Lebesgue measure in the original
  coefficient coordinates, \((d-1)\)-dimensional Lebesgue measure in beta coordinates, and one-dimensional
  Lebesgue length \(\lvert J\rvert\). For \(d=1\), beta measure is \(\lambda_0\) with mass one.
- Admissibility conditions and auxiliary tolerances: Exactly \(d\geq1\), \(R>0\), finite positive \(\kappa\),
  a density supported on \([-R,R]^d\) with full joint cap \(\kappa\), and bounded interval \(J\). There is no
  auxiliary tolerance, pivot margin, simple-root condition, transversality condition, or independence condition.
- Term absorption or simplification inequalities:
  \[
  \lvert\partial_\theta T_1\rvert
  \leq d+\frac{Rd(d-1)}2,
  \]
  \[
  \lvert\partial_\theta T_d\rvert
  \leq1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2
  \quad(d\geq2),
  \]
  \[
  \lambda_{d-1}([-R,R]^{d-1})=(2R)^{d-1},
  \qquad
  \lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert,
  \]
  with \((2R)^0=1\) and sole cell \(E_1=J\) when \(d=1\). No term is hidden, asymptotically dropped, or
  absorbed by prose.
- Probability conversion: For positive-length intervals, the accepted pivot-sweep proposition applies the full
  joint-density domination \(\mu(A)\leq\kappa\lambda_d(A)\) directly. For zero-length intervals, the same
  domination is applied directly to one affine graph of \(d\)-dimensional Lebesgue measure zero. Correlations are
  preserved in both cases.
- Contribution to any Rate Specialization Bridge: This step is the complete R4 bridge. It combines the accepted
  chart theorem, the accepted exact monic velocity package, the exact beta-volume, and exact partition length to
  obtain the public baseline formula with literal coefficient one.
- Baseline-reduction check: The produced event is exactly the consumed polynomial event. The random vector is
  exactly \((\alpha_0,\ldots,\alpha_{d-1})\), the leading coefficient remains deterministic, and no residual,
  remainder, mode change, dimension change, or conservative loss appears. At \(d=1\), the formula reduces
  exactly to \(\kappa\lvert J\rvert\).

## Blockers

None

## Notation And Assumption Notes

- `public-facing inherited dependency objects`: \(F_0,F_1,\ldots,F_d\), \(p_\alpha\), the active cells
  \(E_1,E_d\), the charts \(T_1,T_d\), and
  \(V_d=d+Rd(d-1)/2\) retain exactly their accepted `step_009` meanings. This step introduces no new public
  helper object; its only exported interface is the target probability inequality.
- `appendix-local inherited dependency objects`: The beta tuples
  \((\beta_1,\ldots,\beta_{d-1})\) and \((\beta_0,\ldots,\beta_{d-2})\), and the corresponding insertion maps,
  remain the accepted original-coordinate chart objects. They are used only inside the integrals and exact
  object-mapping checks.
- `proof-local`: The Lebesgue-measure notation \(\lambda_{d-1}\) and \(\lambda_d\) records the dimensions of
  the beta and coefficient spaces. The fixed-parameter coefficient graph in
  Lemma~\ref{lem:step-010-degenerate-interval} is used only to discharge the zero-length boundary case and is not
  exported.
- Coefficient ordering and dimension: Dependency coordinate \(j\in\{1,\ldots,d\}\) multiplies
  \(F_j(\theta)=\theta^{j-1}\) and is the original coefficient \(\alpha_{j-1}\). Hence the pivot coordinates are
  exactly \(\alpha_0\) and \(\alpha_{d-1}\), every beta cube has dimension \(d-1\), and the full law has dimension
  \(d\). The coefficient of \(\theta^d\) is not a random coordinate.
- Constant provenance: \(R\) and \(\kappa\) are primitive setting quantities. The speed cap \(V_d\) is inherited
  from accepted `step_009`. The factor \((2R)^{d-1}\) is proved by
  Lemma~\ref{lem:step-010-measure-accounting}; the interval factor is proved by the same lemma. There is no hidden
  constant or finite-chart multiplier.
- Assumption provenance: The full joint-density law is the sole primitive condition in this step. The chart
  inequality is supplied by accepted `step_003`; the monomial object, legal pivots, chart formulas, velocity
  bounds, and boundary validity are supplied by accepted `step_009`. Exact measure accounting and the
  zero-length nullity statement are proved locally. No generated event, pivot margin, boundedness fact,
  independence property, or leading-coordinate law is assumed.
- Object-target and residual audit: Each chart inserts the solved pivot into the original lower-coefficient vector
  and satisfies \(p_\alpha(\theta)=0\) exactly. The producer and consumer use the same polynomial, coefficient
  cube, law, interval, and scalar velocity. The residual is identically zero.
- Boundary audit: \(\theta=0\) and \(\lvert\theta\rvert=1\) are in the inner constant-pivot cell; negative outer
  \(\theta\) uses the accepted absolute negative-power bound; empty cells integrate to zero; \(d=1\) has no beta
  coordinate; and empty or singleton intervals are law-null as proved above.
- Diagnostic boundary: `global_proof.md` was not read or used. No diagnostic statement serves as proof evidence,
  a cited result, an assumption source, or authority to change the accepted target.
