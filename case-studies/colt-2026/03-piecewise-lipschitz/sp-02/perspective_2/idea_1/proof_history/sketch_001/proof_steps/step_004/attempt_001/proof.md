# Proof Step

## Step Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Binding setting: `perspective_2/idea_1/setting.md`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Accepted proof sketch: `perspective_2/idea_1/proof_sketch.md`
- Accepted proof sketch SHA-256: `8b5b22e5000e1c5641e2b5baf0c4d48244ce3389941b0cc9857b47510bbf6c93`
- Accepted sketch review: `perspective_2/idea_1/proof_sketch_review.md`
- Accepted sketch review SHA-256: `4288579fa3b8583b31faa2c220f5071879da72f06ac3a1dd3d1889cb1096cb7c`
- Accepted sketch review status: `ACCEPTED`
- Run mode: `interactive`
- Progress type: `full`

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: Prove the fixed-section identity
  \(\lvert T_j'\rvert d\beta=\lvert F_0'+\langle a,F'\rangle\rvert
  d\mathcal H^{N-1}/\|F\|\), sum it over the partition, and derive the coordinate-free first affine
  swept-area inequality.
- Depends on: `step_003`.
- Assumptions used: Derived: `step_003`; primitive feature definitions from
  `assump:anchored-derivative-closure`.
- Technical challenge: Match the chart and Hausdorff Jacobians exactly so pivot denominators cancel and no
  second root theorem is introduced.
- Intended proof tool or cited result: Direct differentiation of the chart equation and Euclidean graph/section
  Jacobian calculation.
- Output target: Coordinate-free affine normal-velocity interface.
- Rate objective: R2 and R3: exact first sweep integral.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the current accepted
  `proof_sketch_review.md`.

Here and below, \(T_j'\) in the target identity means \(\partial_\theta T_j\) with \(\beta\) fixed.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(N\geq1\), \(R>0\), and the interval and Euclidean cube data are fixed. This
    supplies the dimensions and measure conventions used in the fixed-section calculation.
  - `assump:balcan-common-chain`: the setting features are \(C^1\) on the open interval \(U\). This is used only
    to make the displayed fixed-\(\beta\) derivative an ordinary derivative in the original parameter
    coordinate.
  - `assump:anchored-derivative-closure`: the original feature tuple and its derivatives are the setting
    objects, and \(F_{j_*}=1\). No chart Jacobian, section Jacobian, normal-velocity identity, transversality, or
    swept-area bound is assumed.
  - `assump:cube-density-laws`: the actual coefficient vector has one possibly correlated joint density on
    \([-R,R]^N\) capped by \(\kappa\). This condition has already been used inside the accepted dependency; the
    deterministic coordinate conversion below does not factor, condition, or otherwise alter that density.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_003` proof at
    `perspective_2/idea_1/proof_steps/step_003/proof.md`, SHA-256
    `637b6b01d6041dc9b797a04e4a387713dff823f5ee51bd1e872801a5ee119312`, proves
    Proposition~\ref{prop:step-003-pivot-sweep}. For every admissible law, every positive-length interval with
    any endpoint convention, and every measurable legal pivot partition, it gives the exact indicator and
    indicator-dropped chart inequalities in the original coefficient space. It retains arbitrary joint
    correlation, tangent and multiple roots, endpoint roots, persistent roots, pivots approaching zero, and the
    \(N=1\) convention.
  - The corresponding accepted review at
    `perspective_2/idea_1/proof_steps/step_003/review.md`, SHA-256
    `253d7c4f469580dafd08647358cff7696bcc1e31a8da63ad7e54d8e6451c421a`, has status `ACCEPTED` and certifies
    that the displayed dependency interface is valid in the extended nonnegative reals with literal coefficient
    \(\kappa\).
- Local conditional hypotheses: None. Fixing \(\theta\in E_j\), a legal pivot \(j\), or
  \(\beta\in[-R,R]^{N-1}\) only instantiates quantifiers in the target-defined partition and charts. In
  particular, \(F_j(\theta)\neq0\) is the legality condition already present in the universally quantified
  partition, not a new theorem assumption or a uniform pivot margin.

The accepted dependency transitively discharges its own earlier nonvanishing and persistent-root inputs. This
proof does not read or invoke those earlier artifacts separately.

For a fixed \(\theta\) and legal pivot \(j\), the sole appendix-local domain abbreviation used below is

\[
\mathcal B_{j,\theta}
:=\{\beta\in[-R,R]^{N-1}:\lvert T_j(\theta,\beta)\rvert\leq R\}.
\]

It is defined entirely from setting notation and does not add a condition to the theorem.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, if \(\theta\in\Theta\) and \(F_j(\theta)\neq0\), then the fixed-section chart \(\beta\mapsto\Psi_j(\theta,\beta)\) bijects its legal beta domain with \(H_\theta\cap[-R,R]^N\), has exact Euclidean Hausdorff Jacobian \(\|F(\theta)\|_2/\lvert F_j(\theta)\rvert\), and obeys the corresponding nonnegative change-of-variables formula, including \(N=1\). | Identifies the exact section and supplies the first pivot factor. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Lemma~\ref{lem:step-004-section-chart}, if \(F_j(\theta)\neq0\), then differentiating the chart equation at fixed beta gives \(\partial_\theta T_j=-(F_0'+\langle\Psi_j,F'\rangle)/F_j\), and the chart and section Jacobians cancel to give both the target pullback identity and its exact fixed-section integral form, including empty sections, zero velocity, and \(N=1\). | Supplies the second pivot factor and proves its exact cancellation. |
| `unit_003` | lemma | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, and Lemma~\ref{lem:step-004-pivot-cancellation}, every positive-length interval and measurable legal pivot partition has a measurable coordinate-free section integrand, and the sum of the indicator chart integrals over its cells equals exactly the integral of that section integrand over the whole interval. | Removes the pivot partition without any inequality, residual, or chart-count factor. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, the accepted Exhausted Affine Pivot-Sweep Proposition~\ref{prop:step-003-pivot-sweep}, and Lemma~\ref{lem:step-004-partition-sum}, every admissible correlated law and positive-length interval satisfy the coordinate-free first affine swept-area inequality with literal coefficient \(\kappa\), all inherited root and endpoint conventions, and the \(N=1\) convention. | Combines the sole root-event dependency with the exact deterministic conversion to prove the target. |

Atomic step = no. Fixed-section geometry, velocity differentiation and cancellation, measurable partition
summation, and root-event assembly are distinct nontrivial obligations.

## Cited Result Applications

### Accepted dependency: exhausted affine pivot sweep

- Source or name: Accepted Proposition~\ref{prop:step-003-pivot-sweep} from `step_003`, with the proof and review
  identities and hashes recorded in `## Allowed Assumptions And Dependencies`.
- Restated statement in current notation: Under the four setting assumptions, for every
  \(\mu\in\mathcal D_{N,R,\kappa}\), every positive-length interval \(I\subseteq\Theta\), and every measurable
  partition
  \[
  I=\bigsqcup_{j=1}^N E_j,
  \qquad F_j(\theta)\neq0\quad(\theta\in E_j),
  \]
  one has
  \[
  \begin{aligned}
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  &\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  \mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
  &\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta.
  \end{aligned}
  \]
- Instantiated objects: The original deterministic offset \(F_0\), original feature vector \(F\), original
  \(N\)-dimensional coefficient vector, same joint law, same interval, and same target-defined charts.
- Required assumptions and discharge: The accepted proof/review pair certifies all four stable setting
  assumptions and its own earlier accepted dependencies. Its density use is the full joint cap
  \(f_\mu\leq\kappa\); no independence or conditional-density hypothesis is present.
- Conclusion used: Only the first, indicator-retaining inequality is used in this step. It already covers
  arbitrary correlation, tangent and multiple roots, endpoints, persistent roots, near-zero pivots, and
  \(N=1\).

### Standard result: Euclidean affine parametrization formula

- Source or name: Standard linear area formula for an injective affine parametrization, equivalently the
  Euclidean Hausdorff scaling formula for an injective linear map.
- Restated statement in current notation: Fix \(\theta\) and a legal pivot \(j\). If the affine map
  \(\beta\mapsto\Psi_j(\theta,\beta)\) is injective on the measurable set
  \(\mathcal B_{j,\theta}\), then for every nonnegative measurable test function \(g\) on its image,
  \[
  \int_{\Psi_j(\theta,\mathcal B_{j,\theta})}g(a)\,d\mathcal H^{N-1}(a)
  =\int_{\mathcal B_{j,\theta}}g(\Psi_j(\theta,\beta))
  \sqrt{\det\!\left((D_\beta\Psi_j)^{\mathsf T}D_\beta\Psi_j\right)}\,d\beta.
  \]
  For \(N=1\), \(\mathbb R^0=\{()\}\), \(\lambda_0\) and \(\mathcal H^0\) assign mass one to a singleton,
  and the determinant of the \(0\)-by-\(0\) Gram matrix is one.
- Instantiated objects: The formula is already written for the current fixed-section chart. The nonpivot
  coordinate block of \(D_\beta\Psi_j\) is the identity, so the map is injective.
- Required assumptions and discharge: Lemma~\ref{lem:step-004-section-chart} proves that
  \(\mathcal B_{j,\theta}\) is measurable, computes the full Gram determinant, and proves that the image is
  exactly the consumed cube section.
- Conclusion used: Hausdorff measure on the section pulls back with the literal factor
  \(\|F(\theta)\|_2/\lvert F_j(\theta)\rvert\).

### Standard result: nonnegative parameter integration and finite partition additivity

- Source or name: Tonelli's theorem and finite additivity of the nonnegative Lebesgue integral over disjoint
  measurable sets.
- Restated statement in current notation: If \(h(\theta,\beta)\geq0\) is completed-product-measurable, then
  \(\theta\mapsto\int h(\theta,\beta)\,d\beta\) is completed-measurable and the two iterated integrals agree,
  with value in \([0,\infty]\). If \(I=\bigsqcup_{j=1}^N E_j\) is a finite measurable partition and
  \(v:I\to[0,\infty]\) is measurable, then
  \(\int_Iv=\sum_j\int_{E_j}v\).
- Instantiated objects: The nonnegative indicator-Jacobian chart functions and the target section integral.
- Required assumptions and discharge: The chart functions are continuous on the open nonzero-pivot set and the
  cells are completed-Lebesgue measurable; Lemma~\ref{lem:step-004-partition-sum} verifies the exact
  instantiation.
- Conclusion used: The fixed-section equalities can be integrated and summed over arbitrary measurable legal
  cells without an integrability assumption or an extra factor.

### Local result application map

- Lemma~\ref{lem:step-004-section-chart} states, under the named primitive assumptions and a local legal pivot,
  the exact section bijection, Jacobian, and affine Hausdorff change of variables. It is used by
  Lemma~\ref{lem:step-004-pivot-cancellation}.
- Lemma~\ref{lem:step-004-pivot-cancellation} states, under the same assumptions and the preceding section
  lemma, the exact fixed-beta derivative and fixed-section integral equality. It is used by
  Lemma~\ref{lem:step-004-partition-sum}.
- Lemma~\ref{lem:step-004-partition-sum} states, under the named assumptions and the cancellation lemma, the
  measurability and exact partition-sum identity. It is used by
  Proposition~\ref{prop:step-004-coordinate-free-sweep}.
- Proposition~\ref{prop:step-004-coordinate-free-sweep} states, under all four setting assumptions, the accepted
  pivot-sweep dependency, and the partition-sum lemma, the exact coordinate-free first affine inequality. It is
  the public-facing local result used in `## Target-Step Assembly`.

No external root-count, Kac--Rice, coarea, or polynomial-root theorem is invoked. The only root-event theorem
used here is the accepted dependency.

## Local Derivation

### unit_001: lemma

**Lemma (Exact affine-section chart and Hausdorff Jacobian).**
\(\label{lem:step-004-section-chart}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, fix \(\theta\in\Theta\) and
\(j\in\{1,\ldots,N\}\) such that \(F_j(\theta)\neq0\). Define the appendix-local beta domain

\[
\mathcal B_{j,\theta}
:=\{\beta\in[-R,R]^{N-1}:
\lvert T_j(\theta,\beta)\rvert\leq R\}.
\]

Then \(\beta\mapsto\Psi_j(\theta,\beta)\) is an affine bijection from
\(\mathcal B_{j,\theta}\) onto \(H_\theta\cap[-R,R]^N\). Its exact
\((N-1)\)-dimensional Euclidean Jacobian is

\[
J_{N-1}\Psi_j(\theta,\cdot)
=\frac{\|F(\theta)\|_2}{\lvert F_j(\theta)\rvert}.
\]

Consequently, for every nonnegative measurable \(g\) on the section,

\[
\int_{H_\theta\cap[-R,R]^N}g(a)\,d\mathcal H^{N-1}(a)
=\frac{\|F(\theta)\|_2}{\lvert F_j(\theta)\rvert}
\int_{\mathcal B_{j,\theta}}g(\Psi_j(\theta,\beta))\,d\beta.
\]

All statements remain exact for \(N=1\) under the zero-dimensional convention.

**Proof / justification.** Fix \(\theta\) throughout this proof. The chart definition gives, identically in
\(\beta\),

\[
F_0(\theta)+F_j(\theta)T_j(\theta,\beta)
+\sum_{i\neq j}\beta_iF_i(\theta)=0.
\]

If \(\beta\in\mathcal B_{j,\theta}\), the nonpivot coordinates of
\(\Psi_j(\theta,\beta)\) lie in \([-R,R]\), its pivot coordinate also lies in that interval, and the displayed
identity puts it in \(H_\theta\). Hence the chart image is contained in the claimed cube section.

Conversely, take \(a\in H_\theta\cap[-R,R]^N\) and set \(\beta=a_{-j}\). Since
\(F_j(\theta)\neq0\), the affine section equation has the unique solution

\[
a_j=-\frac{F_0(\theta)}{F_j(\theta)}
-\sum_{i\neq j}a_i\frac{F_i(\theta)}{F_j(\theta)}
=T_j(\theta,\beta).
\]

Thus \(\beta\in\mathcal B_{j,\theta}\) and \(a=\Psi_j(\theta,\beta)\). Since the chart preserves every
nonpivot coordinate, it is injective. This proves the bijection. It also shows that
\(\mathcal B_{j,\theta}\) is closed in the beta cube, because \(T_j(\theta,\cdot)\) is affine and continuous.

For the Jacobian, first suppose \(N\geq2\) and order the nonpivot indices as
\(i_1,\ldots,i_{N-1}\). Let \(e_i\) be the standard coordinate vectors in \(\mathbb R^N\). Differentiation
with respect to a nonpivot coordinate gives the proof-local column

\[
c_r
:=\partial_{\beta_{i_r}}\Psi_j(\theta,\beta)
=e_{i_r}-\frac{F_{i_r}(\theta)}{F_j(\theta)}e_j,
\qquad 1\leq r\leq N-1.
\]

Therefore the Gram matrix has entries

\[
\langle c_r,c_s\rangle
=\mathbf 1\{r=s\}
+\frac{F_{i_r}(\theta)F_{i_s}(\theta)}{F_j(\theta)^2}.
\]

With the proof-local vector
\(v=(F_{i_1}/F_j,\ldots,F_{i_{N-1}}/F_j)^{\mathsf T}\), this matrix is
\(I_{N-1}+vv^{\mathsf T}\). If \(v=0\), its determinant is one. If \(v\neq0\), it has eigenvalue
\(1+\|v\|_2^2\) in the direction of \(v\) and eigenvalue one on \(v^\perp\). Hence in both cases

\[
\begin{aligned}
\det(I_{N-1}+vv^{\mathsf T})
&=1+\|v\|_2^2\\
&=1+\sum_{i\neq j}\frac{F_i(\theta)^2}{F_j(\theta)^2}
=\frac{\|F(\theta)\|_2^2}{F_j(\theta)^2}.
\end{aligned}
\]

Taking the nonnegative square root gives the claimed Jacobian. Applying the checked affine parametrization
formula to the proved bijection gives the displayed integral identity.

If \(N=1\), then necessarily \(j=1\), beta is the unique empty tuple, and
\(\|F(\theta)\|_2/\lvert F_1(\theta)\rvert=1\). The beta domain is empty when the unique chart value lies
outside \([-R,R]\), and otherwise it is one singleton mapped bijectively to the one-point section. The empty
Gram determinant is one, while \(\lambda_0\) and \(\mathcal H^0\) give that singleton mass one. Thus the same
formula holds exactly. \(\square\)

### unit_002: lemma

**Lemma (Exact cancellation of pivot and section Jacobians).**
\(\label{lem:step-004-pivot-cancellation}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, and Lemma~\ref{lem:step-004-section-chart}, fix
\(\theta\in\Theta\) and \(j\) with \(F_j(\theta)\neq0\). Then, for every
\(\beta\in\mathcal B_{j,\theta}\),

\[
\partial_\theta T_j(\theta,\beta)
=-\frac{F_0'(\theta)
+\langle\Psi_j(\theta,\beta),F'(\theta)\rangle}{F_j(\theta)}.
\]

Under the bijection \(a=\Psi_j(\theta,\beta)\), the exact pullback identity is

\[
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta
=\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\|F(\theta)\|_2}\,d\mathcal H^{N-1}(a).
\]

Equivalently, its rigorous nonnegative integral form is

\[
\begin{aligned}
&\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\\
&\qquad=
\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\|F(\theta)\|_2}\,d\mathcal H^{N-1}(a).
\end{aligned}
\]

The statements include empty sections, zero normal velocity, and \(N=1\).

**Proof / justification.** Continuity of \(F_j\) and \(F_j(\theta)\neq0\) give an open neighborhood of the
fixed parameter point on which the same quotient chart is defined. At fixed beta, differentiate the identity

\[
F_0(\vartheta)+F_j(\vartheta)T_j(\vartheta,\beta)
+\sum_{i\neq j}\beta_iF_i(\vartheta)=0
\]

at \(\vartheta=\theta\). This gives

\[
F_0'(\theta)+F_j'(\theta)T_j(\theta,\beta)
+F_j(\theta)\partial_\theta T_j(\theta,\beta)
+\sum_{i\neq j}\beta_iF_i'(\theta)=0.
\]

The terms other than \(F_0'\) and \(F_j\partial_\theta T_j\) combine as

\[
F_j'(\theta)T_j(\theta,\beta)
+\sum_{i\neq j}\beta_iF_i'(\theta)
=\langle\Psi_j(\theta,\beta),F'(\theta)\rangle.
\]

Division by the nonzero pivot proves the derivative identity. In particular,

\[
\lvert\partial_\theta T_j(\theta,\beta)\rvert
=\frac{\lvert F_0'(\theta)
+\langle\Psi_j(\theta,\beta),F'(\theta)\rangle\rvert}
{\lvert F_j(\theta)\rvert}.
\]

By Lemma~\ref{lem:step-004-section-chart}, the Hausdorff differential pulls back as

\[
d\mathcal H^{N-1}(a)
=\frac{\|F(\theta)\|_2}{\lvert F_j(\theta)\rvert}\,d\beta.
\]

The same pivot denominator therefore appears once in the chart velocity and once in the section Jacobian.
Solving the latter relation for \(d\beta\) and substituting gives

\[
\frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\lvert F_j\rvert}
\frac{\lvert F_j\rvert}{\|F\|_2}\,d\mathcal H^{N-1}(a)
=\frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\|F\|_2}
\,d\mathcal H^{N-1}(a),
\]

which is the target pullback identity. Applying the integral formula from
Lemma~\ref{lem:step-004-section-chart} to the nonnegative continuous function

\[
a\longmapsto
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\|F(\theta)\|_2}
\]

proves the displayed integral equality. The denominator \(\|F(\theta)\|_2\) is positive because the locally
legal pivot is nonzero. If the section is empty, its beta preimage is empty and both sides vanish. If the
normal-velocity numerator is zero, both integrands vanish. For \(N=1\), the Jacobian factor from
Lemma~\ref{lem:step-004-section-chart} is one because \(\|F\|_2=\lvert F_1\rvert\), so the same cancellation
and the \(\mathcal H^0\) counting convention give the formula without alteration. \(\square\)

### unit_003: lemma

**Lemma (Measurable summation over a legal pivot partition).**
\(\label{lem:step-004-partition-sum}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
\ref{assump:anchored-derivative-closure}, and Lemma~\ref{lem:step-004-pivot-cancellation}, fix a positive-length
interval \(I\subseteq\Theta\) with any endpoint convention and a Lebesgue-measurable legal partition

\[
I=\bigsqcup_{j=1}^N E_j,
\qquad F_j(\theta)\neq0\quad(\theta\in E_j).
\]

Define the proof-local section mass

\[
\mathcal V(\theta)
:=\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\|F(\theta)\|_2}\,d\mathcal H^{N-1}(a),
\qquad \theta\in I.
\]

Then \(\mathcal V\) is completed-Lebesgue measurable on \(I\), and

\[
\begin{aligned}
&\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
&\qquad=
\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\|F(\theta)\|_2}\,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\]

The equality is valid in \([0,\infty]\), has no chart-count factor, and remains exact for \(N=1\).

**Proof / justification.** For each \(j\), let

\[
\Omega_j:=\{\theta\in U:F_j(\theta)\neq0\}.
\]

This proof-local set is open. On
\(\Omega_j\times\mathbb R^{N-1}\), the quotient defining \(T_j\) and the derivative just computed in
Lemma~\ref{lem:step-004-pivot-cancellation} are continuous. Hence the nonnegative function

\[
(\theta,\beta)\longmapsto
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\]

is Borel measurable on that open pivot domain. Since \(E_j\subseteq\Omega_j\) is Lebesgue measurable, its
restriction to \(E_j\times[-R,R]^{N-1}\) is measurable for the completed product measure. Tonelli's theorem
therefore shows that the proof-local function

\[
\mathcal W_j(\theta)
:=\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta,
\qquad\theta\in E_j,
\]

is completed-Lebesgue measurable on \(E_j\).

Lemma~\ref{lem:step-004-pivot-cancellation} gives the pointwise equality

\[
\mathcal W_j(\theta)=\mathcal V(\theta),
\qquad\theta\in E_j.
\]

Because the cells form a finite disjoint partition,

\[
\mathcal V(\theta)
=\sum_{j=1}^N\mathbf 1_{E_j}(\theta)\mathcal W_j(\theta)
\quad(\theta\in I),
\]

where each summand is understood to be zero off its cell. This proves the asserted measurability. Nonnegative
finite-partition additivity and the same pointwise equality now give

\[
\begin{aligned}
\sum_{j=1}^N\int_{E_j}\mathcal W_j(\theta)\,d\theta
&=\sum_{j=1}^N\int_{E_j}\mathcal V(\theta)\,d\theta\\
&=\int_I\mathcal V(\theta)\,d\theta,
\end{aligned}
\]

which is the claimed identity after expanding \(\mathcal W_j\) and \(\mathcal V\). No interchange involving a signed
integrand is used, so infinite values would cause no defect. For \(N=1\), the beta integral is evaluation at
the empty tuple with \(\lambda_0\)-mass one, while the section integral uses \(\mathcal H^0\); the equality from
Lemma~\ref{lem:step-004-pivot-cancellation} and the partition argument are unchanged. \(\square\)

### unit_004: proposition

**Proposition (Coordinate-free affine swept-area interface).**
\(\label{prop:step-004-coordinate-free-sweep}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain},
\ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, the accepted Exhausted Affine
Pivot-Sweep Proposition~\ref{prop:step-003-pivot-sweep}, and
Lemma~\ref{lem:step-004-partition-sum}, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length
interval \(I\subseteq\Theta\),

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\|F(\theta)\|_2}\,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\]

The inequality uses ordinary probability for the original possibly correlated joint coefficient law, has
literal coefficient \(\kappa\), is independent of the legal measurable pivot partition, and retains every
interval endpoint convention, tangent or multiple root, persistent-root convention, and the \(N=1\)
zero-dimensional convention already covered by the accepted dependency.

**Proof / justification.** The anchor \(F_{j_*}=1\) guarantees that at least one measurable legal partition
exists; for example, take \(E_{j_*}=I\) and all other cells empty. More strongly, fix any measurable legal
partition. The accepted Proposition~\ref{prop:step-003-pivot-sweep} gives

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
\lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta.
\end{aligned}
\]

Lemma~\ref{lem:step-004-partition-sum} identifies the entire sum, with equality and no additional factor, as

\[
\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\|F(\theta)\|_2}\,d\mathcal H^{N-1}(a)\,d\theta.
\]

Substitution proves the displayed coordinate-free inequality. Since every legal partition gives the same
section integral, no pivot choice remains in the conclusion.

The only probability-to-volume step is the one already certified in the dependency from the full joint bound
\(f_\mu\leq\kappa\); this proof performs no marginalization and therefore retains arbitrary correlation. The
accepted dependency already covers roots at included interval endpoints, tangent and multiple roots,
persistent affine combinations, coefficients on cube faces, and pivots approaching zero. The deterministic
fixed-section equality neither removes nor reclassifies any such coefficient. In dimension \(N=1\), both the
dependency and Lemma~\ref{lem:step-004-partition-sum} use beta mass one and \(\mathcal H^0\) counting measure,
so the displayed inequality remains literal. No second root theorem has been introduced. \(\square\)

## Target-Step Assembly

Fix the arbitrary law, interval, and measurable legal pivot partition quantified by the accepted sketch.
Lemma~\ref{lem:step-004-section-chart} proves that the fixed-theta beta graph is exactly
\(H_\theta\cap[-R,R]^N\) and computes its Hausdorff Jacobian as

\[
\frac{\|F(\theta)\|_2}{\lvert F_j(\theta)\rvert}.
\]

Lemma~\ref{lem:step-004-pivot-cancellation} differentiates the same setting chart at fixed beta and obtains

\[
\partial_\theta T_j
=-\frac{F_0'+\langle\Psi_j,F'\rangle}{F_j}.
\]

Combining these two exact formulas cancels the only pivot denominator and proves, under
\(a=\Psi_j(\theta,\beta)\),

\[
\lvert T_j'\rvert\,d\beta
=\frac{\lvert F_0'+\langle a,F'\rangle\rvert}{\|F\|_2}
\,d\mathcal H^{N-1}(a).
\]

Lemma~\ref{lem:step-004-partition-sum} proves that the resulting section mass is measurable and that summing
the fixed-section equalities over the disjoint cells gives exactly the coordinate-free integral on \(I\), with
no residual and no chart-count factor. Finally,
Proposition~\ref{prop:step-004-coordinate-free-sweep} inserts that equality into the sole root-event authority,
the accepted Proposition~\ref{prop:step-003-pivot-sweep}, and obtains

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
{\|F(\theta)\|_2}\,d\mathcal H^{N-1}(a)\,d\theta.
\]

These named results jointly prove the exact `step_004` claim. The conversion is deterministic and same-target,
so the dependency's arbitrary correlation, interval conventions, tangent and multiple roots, persistent-root
nullity, cube boundaries, near-zero pivots, and \(N=1\) convention pass through unchanged. No statement from
`global_proof.md` is used as proof evidence, and no second root theorem or changed assumption is present.

## Explicit Rate Audit

- Exposed variables: \(N,R,\kappa\), the arbitrary law \(\mu\), the positive-length interval \(I\), the
  original features \(F_0,F\), and the literal coordinate-free section integral. The probability coefficient is
  exactly \(\kappa\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mu\), \(I\), coefficient correlation, a pivot choice or margin, root
  multiplicity, interval endpoint convention, section orientation, \(q,M,\Delta\), or \(N\).
- Fixed quantities: The deterministic presentation and
  \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B)\) are fixed before \(\mu\), \(I\), and a legal partition are
  selected.
- Probability mode: Ordinary probability for each arbitrary full joint law. There is no confidence parameter,
  conditional event, independence reduction, or new probability conversion.
- Horizon mode: Pairwise for every positive-length interval with every endpoint convention. The law and interval
  suprema are later consumers and are not taken in this step.
- Norm mode: Euclidean vector norm, \((N-1)\)-dimensional Euclidean Hausdorff measure on the actual affine
  section, and \((N-1)\)-dimensional Lebesgue measure in beta coordinates. For \(N=1\), both zero-dimensional
  measures give a singleton mass one.
- Admissibility conditions and auxiliary tolerances: Exactly the inherited four setting assumptions and the
  accepted `step_003` conclusion. A legal partition is universally quantified and disappears by exact
  summation. There is no auxiliary tolerance or surviving pivot lower bound.
- Term absorption or simplification inequalities: None. The chart-to-section transfer and partition summation
  are exact equalities; no term is dropped or dominated.
- Probability conversion: None in this step. The accepted dependency already used
  \(\mu(A)\leq\kappa\lambda_N(A)\) for the one full joint density.
- Contribution to any Rate Specialization Bridge: This is the exact common first swept-area integral required
  by R2 and R3. Later steps may bound its section measure and velocity or specialize \(F_0=0\), but this step
  introduces no constant or loss.
- Baseline-reduction check: The deterministic offset \(F_0\) remains outside the random vector, and the accepted
  indicator chart theorem remains available unchanged for the monic branch. The coordinate-free interface is an
  exact additional representation of the same sweep, not a weaker replacement. In \(N=1\), it reduces exactly
  to the one-dimensional chart formula with beta mass one.

## Blockers

None

## Notation And Assumption Notes

- `public-facing`: The only new exported result is
  Proposition~\ref{prop:step-004-coordinate-free-sweep}, namely the coordinate-free first affine swept-area
  inequality. The objects \(F_0,F,H_\theta,T_j,\Psi_j,E_j\), the cube, and the measures are inherited directly
  from the setting or accepted dependency and retain their original meanings.
- `appendix-local`: \(\mathcal B_{j,\theta}\) is the fixed-section legal beta domain, defined directly from the
  setting chart and cube. It is used only to state the exact graph parametrization and does not appear in the
  exported conclusion.
- `proof-local`: The ordered nonpivot indices \(i_1,\ldots,i_{N-1}\), standard basis vectors \(e_i\), derivative
  columns \(c_r\), rank-one vector \(v\), and its Gram matrix are direct linear-algebra objects used only to compute the Jacobian in
  Lemma~\ref{lem:step-004-section-chart}.
- `checked cited-result notation`: \(g\) is only the nonnegative test function in the restated Euclidean affine
  parametrization formula and is not a branch-facing helper.
- `proof-local`: \(\Omega_j=\{F_j\neq0\}\) records the open chart domain;
  \(\mathcal W_j(\theta)\) records one cell's beta integral; and \(\mathcal V(\theta)\) records the same coordinate-free
  section mass during the measurability and partition calculation. All are explicitly derived from setting
  objects and disappear after target assembly.
- Helper and constant provenance: No new constant, radius, threshold, rate, margin, admissibility parameter, or
  bounded quantity is introduced. The Jacobian factor \(\|F\|_2/\lvert F_j\rvert\) is proved by
  Lemma~\ref{lem:step-004-section-chart}; the velocity factor
  \(\lvert F_0'+\langle\Psi_j,F'\rangle\rvert/\lvert F_j\rvert\) is proved by
  Lemma~\ref{lem:step-004-pivot-cancellation}; and their cancellation is equality.
- Assumption provenance: The full joint density condition is primitive and was consumed by the accepted
  dependency. The pivot-sweep probability inequality, including its root-event coverage and boundary cases, is
  an accepted derived output. Fixed-section bijectivity, the Hausdorff Jacobian, the velocity identity,
  cancellation, section-integral measurability, and partition independence are proved in the four named local
  units. No generated event, section bound, velocity bound, transversality condition, or root simplicity is
  promoted to an assumption.
- Boundary provenance: An empty section has an empty beta preimage. Zero normal velocity makes both integrands
  zero. A zero pivot is never used on its cell, but no uniform lower margin is required. For \(N=1\), the empty
  Gram determinant, \(\lambda_0\), and \(\mathcal H^0\) conventions all equal one on a singleton. Tangent,
  multiple, endpoint, persistent, and cube-boundary roots are inherited from the accepted dependency and are not
  altered by the deterministic coordinate change.
- Diagnostic boundary: `global_proof.md`, SHA-256
  `c7529eb3ef73cdb215c7ecfb9bad5fdfee639d9eea3c0d91060b4a0aaac03fb0`, was read only after verifying that its
  paired `global_proof_review.md`, SHA-256
  `cd76bd4102c0e811947104173dcc29cd325f2082ae53865d6c8bb25b20b9bb4e`, has status `ACCEPTED`. Its only
  step-relevant planning reminder was to compute the fixed graph Jacobian and differentiated chart identity so
  the two pivot factors cancel. The diagnostic was not used as evidence, a cited result, an assumption source,
  or authority to change the accepted claim, dependency, rate objective, probability mode, norm, or progress
  type.
