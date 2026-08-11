# Proof Sketch

## Formalized Setting

This is exact-goal mode. Fix (N\geq1), (q\geq0), (c\in\mathbb R), and (h>0), and write
\[
\Theta=[c-h,c+h],\qquad x(\theta)=\frac{\theta-c}{h}\in[-1,1].
\]
Use the exact Balcan--Nguyen--Sharma one-variable convention: a common triangular chain (\eta=(\eta_1,\ldots,\eta_q)) satisfies
\[
\eta_j'(x)=P_j(x,\eta_1(x),\ldots,\eta_j(x)),
\]
where (M=\max_j\deg P_j) for (q\geq1) and (M=0) for (q=0), and
\[
G_i(x)=Q_i(x,\eta_1(x),\ldots,\eta_q(x)),\qquad
F_i(\theta)=G_i(x(\theta)),
\]
with (\Delta=\max_i\deg Q_i). Define
\[
B_P=\max_j\|\operatorname{coeff}(P_j)\|_1\quad(q\geq1),\qquad
B_P=0\quad(q=0),
\]
and (B_Q=\max_i\|\operatorname{coeff}(Q_i)\|_1). The chain remains in the unit box on ([-1,1]), and (Q_1\equiv1), so (F_1\equiv1) and (\|F(\theta)\|_2\geq1). Hence
\[
\gamma_F(\theta)=\frac{F(\theta)}{\|F(\theta)\|_2},\qquad
\Gamma_{\mathrm{proj}}(F)=\operatorname*{ess\,sup}_{\theta\in\Theta}
\|\gamma_F'(\theta)\|_2
\]
are defined, but their finiteness and quantitative bound are conclusions, not assumptions.

For (R>0) and (0<\kappa<\infty), let (\mathcal D_{N,R,\kappa}) contain every Borel probability law on (\mathbb R^N) with a Lebesgue density supported on ([-R,R]^N) and bounded by (\kappa). Coordinates may be arbitrarily correlated. Assume the class is nonempty, set
\[
A=(2R)^N\kappa,
\]
and define
\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
=\sup_{\mu\in\mathcal D_{N,R,\kappa}}
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]}{|I|}.
\]

For the affine interface, (F_0\in C^1(\Theta)). Given an interval (I\subseteq\Theta) and a measurable partition (I=\bigsqcup_{j=1}^N E_j) with (F_j\ne0) on (E_j), index (\beta\in[-R,R]^{N-1}) by (i\ne j) and set
\[
T_j(\theta,\beta)=-\frac{F_0(\theta)}{F_j(\theta)}
-\sum_{i\ne j}\beta_i\frac{F_i(\theta)}{F_j(\theta)},
\]
with (\partial_\theta T_j) exactly as displayed in `setting.md`, and use (E_{j,m}=\{\theta\in E_j:|F_j(\theta)|\geq1/m\}). No pivot margin, transversality, simple-root condition, or independence is available.

The primitive assumption interface is exactly:

- `assump:parameter-regime` (primitive): (N,q,h,R,\kappa), nonempty (\mathcal D_{N,R,\kappa}), the compact interval, and finite presentation data.
- `assump:balcan-common-chain` (primitive): the displayed common-chain representation with chain length (q), chain degree (M), output degree (\Delta), and ambient dimension (p=1).
- `assump:anchored-unit-range` (primitive): (|\eta_j|\leq1) and (Q_1\equiv1), with no separate norm margin or projective-speed hypothesis.
- `assump:cube-density-laws` (primitive): arbitrary correlated cube-supported full joint densities bounded by (\kappa).
- `assump:affine-chart-data` (primitive when the affine clause is invoked): (F_0\in C^1) and the measurable nonzero-pivot cover; (E_1=I) is always a legal fallback because (F_1\equiv1).

## Formalized Goal

Prove one anchored coefficient-normalized Pfaffian hyperplane-sweep theorem, without weakening or separating any of the following clauses.

**Primitive-presentation bridge.** Under `assump:balcan-common-chain` and `assump:anchored-unit-range`, prove pointwise for every (x\in[-1,1]) and (1\leq i\leq N) that
\[
|G_i'(x)|\leq \Delta B_Q(1+qB_P).
\]
Using
\[
\frac{d}{dx}\frac{G}{\|G\|_2}
=\frac{(I_N-\gamma_G\gamma_G^{\mathsf T})G'}{\|G\|_2},
\qquad \gamma_G=G/\|G\|_2,
\]
derive, rather than assume,
\[
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
\]

**Central swept-hyperplane bound.** Under `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, and `assump:cube-density-laws`, prove simultaneously for every (\mu\in\mathcal D_{N,R,\kappa}) and every positive-length interval (I\subseteq\Theta) that
\[
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
\langle\alpha,F(\theta)\rangle=0\right]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq \frac{A N\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|,
\]
and hence
\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
\leq\frac{A N\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\]
The first inequality must come from the area formula for the union of the central sections (\gamma_F(\theta)^\perp) and Ball's sharp cube-section bound, with union-area multiplicity handling tangent and multiple roots. Coefficients for which the linear combination is identically zero form a proper linear subspace and therefore have zero probability under every admissible law.

**Affine chart bound.** Under `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:cube-density-laws`, and `assump:affine-chart-data`, for every (\mu\in\mathcal D_{N,R,\kappa}) and every interval (I\subseteq\Theta), prove
\[
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
F_0(\theta)+\langle\alpha,F(\theta)\rangle=0\right]
\leq
\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
|\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta.
\]
The inequality is understood in the extended-real sense if an integral diverges. It must follow from the area formula for ((\theta,\beta)\mapsto(\beta,T_j(\theta,\beta))), with (T_j) inserted in coordinate (j), on (E_{j,m}), followed by (m\to\infty); it may not assume transversality, simple roots, a uniform pivot margin, or coordinate independence. Coefficients for which the affine combination is identically zero form a proper affine subspace (or the set is empty) and have zero admissible-law probability.

**Exact affine-monic baseline specialization.** For every integer (d\geq1), every bounded interval (J\subset\mathbb R), and every possibly correlated (\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d) with joint density at most (\kappa), choose a nondegenerate (\Theta=[c-h,c+h]) containing (J) and specialize the affine clause to
\[
F_0(\theta)=\theta^d,\qquad F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),\qquad
p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
\]
In normalized coordinates these outputs are (Q_0(x)=(c+hx)^d) and (Q_{k+1}(x)=(c+hx)^k). For (d\geq2), use
\[
E_1=J\cap\{|\theta|\leq1\},\qquad
E_d=J\cap\{|\theta|>1\},\qquad E_j=\varnothing\quad(j\notin\{1,d\});
\]
for (d=1), use (E_1=J). Prove
\[
|\partial_\theta T_1|
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2
\quad(|\theta|\leq1),
\]
\[
|\partial_\theta T_d|
\leq1+R\sum_{k=0}^{d-2}(d-1-k)
=1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2
\quad(|\theta|>1),
\]
with the second display replaced by (|\partial_\theta T_1|=1) when (d=1). The same affine theorem must then yield, without an independent citation or a singular random leading-coordinate construction, exactly
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
\leq\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|J|.
\]
In Balcan--Nguyen--Sharma notation this specialization has (q=0), (M=0), (N=d), (A=(2R)^d\kappa), and augmented output degree
\[
\Delta_{\mathrm{aug}}=\max\{\deg F_0,\deg F_1,\ldots,\deg F_d\}=d;
\]
the deterministic monic coefficient remains outside the (d)-dimensional random vector.

**Counter-example 1 scale audit.** For (\Theta=[-1,1]), (G(x)=(1,x/\delta)), and (0<\delta\leq1), record (h=1), (q=0), (M=0), (\Delta=1), (N=2), and (B_Q=1/\delta). Thus the theorem's explicit upper constant has order (1/\delta). For the uniform law on ([-1,1]^2), for which (\kappa=1/4) and (A=1), also verify
\[
\Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}\qquad(0<\epsilon\leq\delta),
\]
so (C^{\mathrm{Pf}}_{\mathcal D}\geq1/(4\delta)) and the declared presentation data register the necessary metric scale.

All displayed constants are literal: there are no hidden constants and no confidence parameter. The probability mode is ordinary probability for each fixed law, the interval mode is uniform over all positive-length subintervals, the feature presentation is deterministic, and the projective norm is Euclidean. The full presentation tuple is fixed while (\mu) and (I) range over their suprema. The exposed central-instance tuple is
\[
(q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1});
\]
(M) has explicit degree-zero dependence because the unit-box coefficient envelope bounds a degree-(M) chain polynomial by its coefficient (\ell_1)-budget.

## Sketch Identity

- Sketch attempt: 1
- Attempt type: Initial sketch
- Search mode: `OPEN`
- Run mode: `interactive`
- Target mode: Exact-goal, unconditional, full-progress theorem

## Proof Roadmap

Use the selected framework `Coefficient-space incidence sweep with central and affine charts` from `technical_survey.md`, with source provenance Edelman--Kostlan (Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9), Ball (main cube-slicing theorem, DOI:10.1090/S0002-9939-1986-0840631-0), Balcan--Dick--Pegden (Theorem 18, arXiv:1904.09014), and the Balcan--Nguyen--Sharma convention (Definitions 2--4, arXiv:2409.04367).

The proof has four dependency branches that rejoin in final assembly. First, a direct unit-box coefficient calculation gives the Pfaffian derivative envelope, and the anchor turns it into the projective-speed certificate. Second, the central root event is the coefficient projection of the regular incidence hypersurface
\[
\mathcal S_I=\{(\theta,a)\in I\times[-R,R]^N:\langle a,\gamma_F(\theta)\rangle=0\};
\]
the area and coarea formulas expose the local factor (|\langle\gamma_F'(\theta),a\rangle|), and Ball plus the density cap gives the central probability bound. Third, each affine root event is covered by the images of the exhausted pivot maps (\Psi_{j,m}(\theta,\beta)), whose determinant is (|\partial_\theta T_j|); monotone exhaustion gives the general affine inequality. Fourth, the monic presentation is inserted into that same affine result, its two velocities are calculated directly, and Counter-example 1 is calculated directly. A final step combines only these earlier interfaces into the exact theorem.

## Rate Objectives

### Rate objective R1: Primitive presentation to projective speed

- Objective type: structural-parameter explicit and regularity-explicit deterministic bound.
- Exposed variables: (q,M,\Delta,N,B_P,B_Q,h^{-1}), with (M) explicitly of degree zero.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: Any presentation parameter, (\mu), (I), (R), or (\kappa).
- Fixed quantities: The full deterministic common-chain presentation and (\Theta).
- Probability mode: Deterministic; no probability or confidence parameter.
- Horizon mode: Pointwise on all of (\Theta), hence interval-uniform when consumed downstream.
- Norm mode: Euclidean vector norm and Euclidean operator norm.
- Required bridge or simplification obligations: Prove (D_*=\Delta B_Q(1+qB_P)), (\|G'\|_2\leq\sqrt N D_*), (\|G\|_2\geq1), and (d/d\theta=h^{-1}d/dx), with no dropped term.
- Baseline invariance obligations: Counter-example 1 must give (B_Q=1/\delta), so R1 must retain the (1/\delta) scale.

### Rate objective R2: Central all-law/all-interval bound

- Objective type: interval-uniform, structural-parameter explicit probability bound.
- Exposed variables: (A=(2R)^N\kappa), (N), (\Gamma_{\mathrm{proj}}(F)), then (q,M,\Delta,B_P,B_Q,h^{-1}) through R1.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: (\mu), (I), any exposed parameter, or an unrecorded section orientation.
- Fixed quantities: The deterministic feature presentation and (N,R,\kappa) while (\mu) and (I) range.
- Probability mode: Ordinary probability for each fixed arbitrary correlated (\mu); no union bound or confidence conversion.
- Horizon mode: Simultaneously uniform over every positive-length interval, followed by the defining supremum for (C^{\mathrm{Pf}}_{\mathcal D}).
- Norm mode: Euclidean projective speed, Lebesgue (N)-volume, and ((N-1))-dimensional Hausdorff measure on sections.
- Required bridge or simplification obligations: Establish
  \[
  \kappa R\sqrt N\,\sqrt2(2R)^{N-1}=A\sqrt{N/2}
  \]
  exactly, then substitute R1 without hiding (M) or any scale.
- Baseline invariance obligations: The central theorem is not used as a substitute for the affine-monic theorem; exact affine recovery remains a separate inseparable clause.

### Rate objective R3: General affine chart bound

- Objective type: interval-uniform, arbitrary-law, chart-velocity-explicit probability bound.
- Exposed variables: (\kappa,R,N,F_0,F,(E_j)_j), and the exact integrals of (|\partial_\theta T_j|).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: (\mu), (I), pivot margins, transversality constants, root multiplicities, or coordinate dependence.
- Fixed quantities: The deterministic affine presentation and the chosen measurable pivot partition while (\mu) ranges.
- Probability mode: Ordinary probability under an arbitrary correlated full joint density capped by (\kappa).
- Horizon mode: Every interval (I\subseteq\Theta); extended-real validity is retained when a chart integral diverges.
- Norm mode: Lebesgue coefficient volume and the absolute Jacobian determinant.
- Required bridge or simplification obligations: Restrict the chart domain to (|T_j|\leq R), apply the area formula on each (E_{j,m}), dominate by the full (\beta)-cube integral, and pass (m\to\infty) by monotone convergence.
- Baseline invariance obligations: The deterministic affine offset must remain outside the random vector so that the exact (d)-dimensional monic law is legal.

### Rate objective R4: Exact affine-monic baseline

- Objective type: exact baseline-specialization and structural-parameter explicit bound.
- Exposed variables: (d,R,\kappa,|J|), with (q=M=0), (N=d), (A=(2R)^d\kappa), and (\Delta_{\mathrm{aug}}=d).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: (J,c,h), coefficient correlations, a random leading-coordinate approximation, or auxiliary thresholds.
- Fixed quantities: (d,R,\kappa) and a deterministic nondegenerate (\Theta\supseteq J).
- Probability mode: Ordinary probability for every possibly correlated lower-coefficient law with density cap (\kappa).
- Horizon mode: Uniform over every bounded interval (J).
- Norm mode: Scalar absolute chart velocity and Lebesgue coefficient volume.
- Required bridge or simplification obligations: Verify the normalized polynomial presentation, both pivot derivatives, the (d=1) branch, (1+Rd(d-1)/2\leq d+Rd(d-1)/2), the (\beta)-volume ((2R)^{d-1}), and the partition-length identity before stating the final rate.
- Baseline invariance obligations: Recover exactly
  \[
  \kappa(2R)^{d-1}\left(d+\frac{Rd(d-1)}2\right)|J|
  \]
  from R3 itself, with the monic coefficient deterministic and no weaker remainder, stopped scope, or independent citation.

### Rate objective R5: Counter-example 1 scale

- Objective type: exact lower-bound and scale-matching audit.
- Exposed variables: (\delta,\epsilon), with (0<\epsilon\leq\delta\leq1), and the specialized tuple (h=1,q=M=0,\Delta=1,N=2,B_Q=1/\delta,R=1,\kappa=1/4,A=1).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: (\delta) or (\epsilon).
- Fixed quantities: The uniform law on ([-1,1]^2) and the displayed feature vector.
- Probability mode: Exact ordinary probability.
- Horizon mode: Intervals ([0,\epsilon]) in the stated range.
- Norm mode: Euclidean projective norm and planar Lebesgue area.
- Required bridge or simplification obligations: Calculate the opposite-sign coefficient wedge exactly and divide its area by (4); compare the resulting (1/(4\delta)) lower scale with the explicit R1--R2 upper scale.
- Baseline invariance obligations: The presentation must expose, not suppress, (B_Q=1/\delta).

## Assumption Provenance Objectives

No generated event, trajectory condition, or recurrence is promoted to a theorem-facing assumption. The needed derived controls are:

| Derived control | Primitive source | Producer step | Legal consumers / conditional use |
| --------------- | ---------------- | ------------- | --------------------------------- |
| (D_*=\Delta B_Q(1+qB_P)) and (|G_i'|\leq D_*) | `assump:balcan-common-chain`, `assump:anchored-unit-range` | `step_001` | `step_002`, `step_006`, `step_010` |
| Global nonvanishing and (\Gamma_{\mathrm{proj}}(F)\leq\sqrt N D_*/h) | `assump:parameter-regime`, `assump:anchored-unit-range`, `step_001` | `step_002` | `step_003`, `step_004`, `step_005`, `step_010` |
| Central incidence projection bound, including null exceptional coefficient sets | `assump:parameter-regime`, `assump:anchored-unit-range`, `step_002` | `step_003` | `step_004` |
| Central all-law/all-interval probability interface | `assump:cube-density-laws`, `step_003` | `step_004` | `step_005`, `step_010` |
| Fully explicit central specialization and (C^{\mathrm{Pf}}_{\mathcal D}) bound | `step_002`, `step_004` | `step_005` | `step_010` |
| Exhausted affine chart coverage and area bound | `assump:affine-chart-data`, the primitive regularity assumptions, `step_001` | `step_006` | `step_008`, `step_010` |
| Exact monic presentation, pivot partition, and velocity certificates | Primitive scalar choices (d,R,J,\Theta) together with the q=0 specialization of the setting | `step_007` | `step_008` |
| Exact affine-monic probability bound | `step_006`, `step_007` | `step_008` | `step_010` |
| Counter-example 1 tuple and exact wedge probability | The displayed deterministic example and uniform density | `step_009` | `step_010` |

Local area-formula lemmas may condition on a fixed interval, fixed chart index, or fixed exhaustion level only inside their local statements. Each such condition is discharged inside `step_003` or `step_006` before its output is used. There is no missing derived invariant and no conditional final theorem.

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`
- Claim class: Primitive-source quantitative derivative upper bound.
- Theorem role: Produces the complexity-sensitive analytic control from which projective speed is derived.
- Mechanism source: Direct primitive-source derivation in the exact Balcan--Nguyen--Sharma (p=1) convention. At (z=(x,\eta(x))\in[-1,1]^{q+1}), the monomial-basis coefficient budget gives (|P_j(z)|\leq B_P), (|\partial_xQ_i(z)|\leq\Delta B_Q), and (|\partial_{y_j}Q_i(z)|\leq\Delta B_Q). The raw path is `assump:balcan-common-chain` plus `assump:anchored-unit-range`, followed by the ordinary chain rule; no cited theorem supplies a stronger interface.
- Source-to-claim adequacy: The source controls every term in (G_i'=\partial_xQ_i+\sum_j(\partial_{y_j}Q_i)P_j) in the same monomial convention and on the actual chain values. Summing the one (x)-term and (q) chain terms gives exactly (\Delta B_Q(1+qB_P)). Degree (M) affects no extra factor because the coefficient envelope is evaluated on the unit box.
- Residual-to-target adequacy: The produced object is the derivative of the actual (G_i) consumed by `step_002`, in the same (x)-coordinate and absolute-value norm. There is no transformed or surrogate target and the residual is zero.
- Key positive/control term or structural source: The unit-box bounds and the coefficient (\ell_1)-budgets.
- Opposing defect terms: The (q) chain-rule contributions and their (P_j) factors; all are controlled by (q\Delta B_QB_P). There is no unbounded evaluation or omitted (M)-dependent term.
- Closure/dominance/absorption relation: (\Delta B_Q+\sum_{j=1}^q\Delta B_QB_P=\Delta B_Q(1+qB_P)), with the empty sum when (q=0).
- Accumulation behavior / scope compatibility: Pointwise, non-iterated control on every (x\in[-1,1]); no forcing term accumulates. Taking a supremum later preserves the same bound.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The derivative bound is produced directly from primitive data before `step_002`; it does not assume projective speed or the final anti-concentration result. Dependency path: primitive assumptions -> `step_001` -> `step_002`.
- Entry-state / first-update stress result: N/A because this is a static pointwise differentiation claim, not an iterative or recursive mechanism.
- Baseline conclusion preserved: For Counter-example 1, (Q_2(x)=x/\delta) has (B_Q=1/\delta), so the bound retains the required scale rather than treating (B_Q) as fixed independently of (\delta).
- Producer-consumer provenance: Producer `step_001`; consumers `step_002`, `step_006` (regularity interface), and final assembly through `step_002`.
- Null or boundary regime tested: (q=0), (\Delta=0), (B_P=0), and endpoints (x=\pm1). The empty-chain convention and polynomial coefficient envelope remain valid.
- Target conclusion false or theorem-critical obstruction present if source vanishes: No. If (\Delta B_Q(1+qB_P)=0), the direct formula forces all (G_i') to vanish, so the asserted upper bound remains true.
- Repair route if source is unsupported: None; all source terms are primitive and convention-matched.

### `step_002`

- Step ID: `step_002`
- Claim class: Nonvanishing, normalized-derivative, and global projective-speed bridge.
- Theorem role: Supplies the theorem-critical conditioning quantity with the required raw-parameter bound.
- Mechanism source: Primitive anchor `assump:anchored-unit-range` gives (G_1\equiv1) and (\|G\|_2\geq1); `step_001` gives (\|G'\|_2\leq\sqrt N D_*). The current-notation standard differentiation identity for (G/\|G\|_2) uses the Euclidean projector (I_N-\gamma_G\gamma_G^{\mathsf T}), whose operator norm is at most one. The coordinate relation (d/d\theta=h^{-1}d/dx) is from `assump:parameter-regime`.
- Source-to-claim adequacy: The anchor is a lower source, not merely an upper regularity bound, and prevents the normalization denominator from vanishing. The projector identity acts on the actual (G), and the exact coordinate change yields (\Gamma_{\mathrm{proj}}(F)\leq\sqrt N D_*/h).
- Residual-to-target adequacy: The produced normalized curve is exactly (\gamma_F(\theta)=\gamma_G(x(\theta))); the transfer relation is (\gamma_F'(\theta)=h^{-1}\gamma_G'(x(\theta))). Thus the same-target residual is zero and the only scale transfer is the explicit (h^{-1}).
- Key positive/control term or structural source: The literal coordinate (G_1=1), which gives the uniform denominator margin one.
- Opposing defect terms: Possible smallness of the other coordinates, normalization differentiation, and coordinate compression. They are controlled respectively by the anchor, the orthogonal projector, and (h^{-1}).
- Closure/dominance/absorption relation: (\|\gamma_G'\|_2\leq\|G'\|_2/\|G\|_2\leq\sqrt N D_*), followed by the exact (h^{-1}) rescaling.
- Accumulation behavior / scope compatibility: The inequality is pointwise and uniform on compact (\Theta); taking the essential supremum introduces no additive defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Nonvanishing is produced by the primitive anchor before normalization; projective speed is then produced from `step_001`. Consumers `step_003`--`step_005` do not feed back into the bridge.
- Entry-state / first-update stress result: At every allowed entry point, including (\theta=c\pm h), the first coordinate is already one before normalization, so the normalization mechanism is active before any central incidence set is formed. No update is required.
- Baseline conclusion preserved: For (G=(1,x/\delta)), the bridge gives the explicit (1/\delta) dependence. It does not replace the affine-monic baseline, which is preserved separately in `step_008`.
- Producer-consumer provenance: Primitive anchor plus `step_001` -> `step_002`; consumers `step_003`, `step_004`, `step_005`, and `step_010`.
- Null or boundary regime tested: (N=1), (q=0), constant (G), (h>0) arbitrary, and the interval endpoints. For (N=1) with (G_1=1), (\gamma_F'\equiv0).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes in general: without nonvanishing, (F/\|F\|_2) may be undefined. The primitive anchor excludes that regime everywhere.
- Repair route if source is unsupported: None; the needed lower source is exactly `assump:anchored-unit-range`.

### `step_003`

- Step ID: `step_003`
- Claim class: Central root-incidence union-area inequality with multiplicity and degeneracy handling.
- Theorem role: Converts motion of the normalized evaluation hyperplanes into coefficient-space volume before any density or cube estimate is applied.
- Mechanism source: Standard Euclidean area/coarea formula in a current-notation wrapper, with Edelman--Kostlan, *How Many Zeros of a Random Polynomial Are Real?*, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9, as an integrand and arbitrary-density convention cross-check. The current object is the regular incidence hypersurface (\mathcal S_I\) because the (a)-gradient of (g(\theta,a)=\langle a,\gamma_F(\theta)\rangle) is the unit vector (\gamma_F(\theta)). Projection is (\pi(\theta,a)=a). Coarea on (g=0) and area for (\pi|_{\mathcal S_I}) give the exact product interface (J_{\mathcal S_I}\pi\,d\mathcal H^N=|\langle\gamma_F'(\theta),a\rangle|,d\mathcal H^{N-1}(a)d\theta). Edelman--Kostlan does not supply Ball's bound, the Pfaffian derivative bridge, or the affine chart.
- Source-to-claim adequacy: The standard tool applies to this (C^1), hence countably rectifiable, hypersurface and the Lipschitz projection. The area formula counts every preimage of a coefficient; therefore the indicator of at least one root is bounded by projection multiplicity. Critical/tangent images have zero (N)-volume under the same formula, and multiple roots only increase multiplicity. Endpoint slices are hyperplanes of zero (N)-volume. The identically-zero coefficients lie in (\bigcap_{\theta\in I}\gamma_F(\theta)^\perp), a proper linear subspace because (F_1=1), and hence are null under every admissible law.
- Residual-to-target adequacy: The produced coefficient set is the projection of the root incidence for the same (F), same interval (I), and same cube. It equals the consumed central root event in coefficient space; endpoint and identically-zero exceptional sets have Lebesgue volume zero, so the measure residual is zero for every absolutely continuous admissible law.
- Key positive/control term or structural source: The projection tangential Jacobian, whose coarea form is (|\langle\gamma_F',a\rangle|).
- Opposing defect terms: Projection multiplicity, tangent roots, multiple roots, endpoint roots, and identically-zero combinations. Multiplicity is favorable for an upper bound; critical images, endpoints, and the proper subspace are coefficient-null.
- Closure/dominance/absorption relation: 
  \[
  \operatorname{Leb}^N\{a\in[-R,R]^N:\exists\theta\in I,\langle a,F(\theta)\rangle=0\}
  \leq\int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
  |\langle\gamma_F'(\theta),a\rangle|,d\mathcal H^{N-1}(a)d\theta.
  \]
- Accumulation behavior / scope compatibility: Root multiplicity is integrated as a nonnegative counting function over coefficient space; local sweep densities add by Lebesgue integration over arbitrary (I). There is no signed or adversarial forcing term and no iterative horizon.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The regular incidence source is available from `step_002` before the event-volume conclusion. Dependency path: `step_002` -> `step_003` -> `step_004`; the final probability bound is not assumed in the incidence argument.
- Entry-state / first-update stress result: N/A because no recursive or iterative state is generated. At a stationary segment with (\gamma_F'=0), the projection Jacobian is zero and the swept coefficient set is one fixed hyperplane of zero volume, so the stationary boundary case is already consistent.
- Baseline conclusion preserved: N/A for the affine-monic conclusion because this step is used only for the homogeneous central clause; it does not claim polynomial recovery.
- Producer-consumer provenance: Producer `step_003`; consumer `step_004`; final use is the first central inequality through `step_005`.
- Null or boundary regime tested: (\gamma_F'=0), tangent roots (langle\gamma_F',a\rangle=0), multiple roots, interval endpoints, identically-zero combinations, and (N=1). In (N=1), the anchor makes (\gamma_F) constant and the root event is the null set (a=0).
- Target conclusion false or theorem-critical obstruction present if source vanishes: No for a stationary normalized curve: its root event remains a fixed null hyperplane. For nonstationary curves the area-formula Jacobian is the required active source.
- Repair route if source is unsupported: None; the current-notation incidence calculation fixes the object mapping and conclusion interface rather than deferring them.

### `step_004`

- Step ID: `step_004`
- Claim class: Central cube-section and density-cap quantitative bound.
- Theorem role: Converts the incidence-volume interface into the all-law probability estimate (A\sqrt{N/2}\int_I\|\gamma_F'\|_2).
- Mechanism source: Ball, *Cube Slicing in \(\mathbb R^n\)*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0. Its source object is a central hyperplane section of a unit-volume Euclidean cube; scaling maps it to (\gamma_F(\theta)^\perp\cap[-R,R]^N) and gives (\mathcal H^{N-1}\leq\sqrt2(2R)^{N-1}). Source convention matches the Euclidean normal and Hausdorff measure in `step_003`. `assump:cube-density-laws` supplies (f_\mu\leq\kappa), with no product structure. Ball's theorem does not control hyperplane motion; `step_003` supplies that missing interface. The (N=1) case is handled directly.
- Source-to-claim adequacy: On each section, (|\langle\gamma_F',a\rangle|\leq\|\gamma_F'\|_2\|a\|_2\leq R\sqrt N\|\gamma_F'\|_2). Ball controls the remaining section measure uniformly in orientation. Multiplying by (\kappa) controls every arbitrary correlated density because only the full joint cap is used.
- Residual-to-target adequacy: The section, coefficient cube, Euclidean metric, and law are exactly those in the root event from `step_003`. There is no population, surrogate, or changed target. The only conversion is coefficient volume to probability via (\int_E f_\mu\leq\kappa\operatorname{Leb}(E)), with zero residual.
- Key positive/control term or structural source: Ball's orientation-uniform (\sqrt2) section-volume cap and the cube radius bound (\|a\|_2\leq R\sqrt N).
- Opposing defect terms: Arbitrary section orientation, arbitrary coordinate correlation, and coefficient magnitude. They are controlled respectively by Ball, the full joint density cap, and cube support.
- Closure/dominance/absorption relation: 
  \[
  \kappa R\sqrt N\,\sqrt2(2R)^{N-1}
  =\kappa(2R)^N\sqrt{N/2}=A\sqrt{N/2}.
  \]
- Accumulation behavior / scope compatibility: The nonnegative local bound integrates to (A\sqrt{N/2}\int_I\|\gamma_F'\|_2d\theta). The same deterministic coefficient applies to every (I) and (\mu); no law-wise or interval-wise union bound accumulates.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Ball and the density cap are primitive/external controls available before probability is bounded; `step_003` legally produces the incidence interface. Dependency path: `step_003` -> `step_004` -> `step_005`.
- Entry-state / first-update stress result: N/A because this is a static section estimate. When (\gamma_F'=0), the local integrand and the target event volume are both zero as certified in `step_003`.
- Baseline conclusion preserved: N/A for exact affine-monic recovery; this central cube result is not substituted for `step_006`--`step_008`.
- Producer-consumer provenance: Ball plus `assump:cube-density-laws` and `step_003` -> `step_004`; consumers `step_005` and final assembly.
- Null or boundary regime tested: (N=1) is direct, (R>0) is primitive, (A\geq1) follows from nonempty law class but is not needed for algebra, and all hyperplane orientations are covered.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If the cube-section control were absent, orientation could not be bounded uniformly. Ball supplies it for every allowed central section.
- Repair route if source is unsupported: None; source identity, scaling, convention, hypothesis, conclusion, and nonoutputs are fixed.

### `step_005`

- Step ID: `step_005`
- Claim class: Explicit central rate specialization and supremum closure.
- Theorem role: Produces both displayed central inequalities and the literal (C^{\mathrm{Pf}}_{\mathcal D}) bound.
- Mechanism source: Accepted-derived outputs `step_002` and `step_004`, followed by exact algebra and the definition of (C^{\mathrm{Pf}}_{\mathcal D}). No new theorem or hidden regularity source is introduced.
- Source-to-claim adequacy: `step_004` gives the exact projective-speed coefficient for each (\mu,I); `step_002` gives the exact raw-presentation upper bound. Both have the same Euclidean norm, interval, and deterministic (F), so substitution is convention-compatible.
- Residual-to-target adequacy: The technical rate and public rate concern the same probability event. Substitution leaves no residual term. The supremum divides by the same positive (|I|), so the target-side comparison is equality followed by a supremum.
- Key positive/control term or structural source: The pointwise uniformity of `step_004` and the primitive-data certificate from `step_002`.
- Opposing defect terms: Possible dependence on (\mu,I), (M), or hidden constants. The earlier interfaces have none; (M) is explicitly recorded with degree-zero dependence.
- Closure/dominance/absorption relation: 
  \[
  A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}(F)
  \leq A\sqrt{N/2}\frac{\sqrt N\Delta B_Q(1+qB_P)}h
  =\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2h}.
  \]
- Accumulation behavior / scope compatibility: Uniformity is inherited pointwise over every law and interval; taking two suprema adds no error and does not change probability mode.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Both rate inputs are produced earlier and independently of (C^{\mathrm{Pf}}_{\mathcal D}); dependency paths `step_002` -> `step_005` and `step_003` -> `step_004` -> `step_005` are acyclic.
- Entry-state / first-update stress result: N/A because this is an algebraic specialization and supremum operation, not a recursive mode conversion.
- Baseline conclusion preserved: The (1/\delta) dependence remains through (B_Q); the affine-monic baseline is explicitly not inferred here and remains assigned to `step_008`.
- Producer-consumer provenance: Producer `step_005`; consumer `step_010`; final use is the central clause and (C^{\mathrm{Pf}}_{\mathcal D}) conclusion.
- Null or boundary regime tested: Positive-length intervals only in the quotient, (\Gamma_{\mathrm{proj}}=0), and (q=0). All algebra remains literal.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If either earlier output were missing, the explicit target would not close. Both are legal accepted dependencies in the sketch.
- Repair route if source is unsupported: None.

### `step_006`

- Step ID: `step_006`
- Claim class: General affine chart union-area inequality with measurable pivot exhaustion.
- Theorem role: Supplies the exact affine theorem that must later generate, not merely resemble, the monic baseline.
- Mechanism source: Standard Euclidean area formula for the current-notation maps. For each (j,m), use
  \[
  D_{j,m}=\{(\theta,\beta):\theta\in E_{j,m},\ \beta\in[-R,R]^{N-1},\ |T_j(\theta,\beta)|\leq R\}
  \]
  and let (\Psi_j(\theta,\beta)) insert (T_j) in coordinate (j). On a neighborhood of (E_{j,m}\), (|F_j|\geq1/m) makes the (C^1) formula locally Lipschitz, and (|\det D\Psi_j|=|\partial_\theta T_j|). Balcan--Dick--Pegden, Theorem 18, arXiv:1904.09014, supplies affine-coefficient lineage but is not invoked for this general conclusion. Its known nonoutput is the present exact chart-integral theorem for arbitrary (F_0,F).
- Source-to-claim adequacy: If (\alpha\in[-R,R]^N) has a root (\theta\in E_{j,m}), then (\beta=\alpha_{-j}) and (T_j(\theta,\beta)=\alpha_j), so (\alpha\in\Psi_j(D_{j,m})). The area formula bounds image volume by the integral of (|\partial_\theta T_j|), regardless of multiple preimages; tangent roots have zero determinant and critical image volume zero. Summing charts, applying the density cap, enlarging from (D_{j,m}) to (E_{j,m}\times[-R,R]^{N-1}), and passing to (m\to\infty) yields exactly R3. The affine-identically-zero coefficient set is empty or contained in the proper affine hyperplane obtained at any fixed (\theta), because (F_1=1); it is law-null.
- Residual-to-target adequacy: The produced coefficient is exactly (\Psi_j(\theta,\beta)=\alpha), and the identity (F_0(\theta)+\langle\Psi_j(\theta,\beta),F(\theta)\rangle=0) is exact. The consumed target is the same affine root event in the same coefficient cube. Exhaustion covers every (\theta\in E_j) because (F_j(\theta)\ne0), so the uncovered residual is empty; enlarging the integration domain only increases the upper bound.
- Key positive/control term or structural source: The nonzero selected pivot, converted into a locally bounded denominator on each (E_{j,m}), and the exact chart Jacobian (|\partial_\theta T_j|).
- Opposing defect terms: Vanishing pivots near the boundary of (E_j), arbitrary measurable partitions, tangent/multiple roots, arbitrary coefficient correlation, possible divergent velocity, and identically-zero combinations. Exhaustion handles the first two, area multiplicity handles roots, the full density cap handles correlation, extended-real interpretation handles divergence, and the proper affine subspace is null.
- Closure/dominance/absorption relation: 
  \[
  \Pr(E_{\mathrm{root}})\leq\kappa\sum_j\lim_{m\to\infty}
  \int_{E_{j,m}}\int_{[-R,R]^{N-1}}|\partial_\theta T_j|,d\beta d\theta
  =\kappa\sum_j\int_{E_j}\int_{[-R,R]^{N-1}}|\partial_\theta T_j|,d\beta d\theta.
  \]
- Accumulation behavior / scope compatibility: The accumulated object is the nonnegative chart Jacobian over (E_{j,m}\uparrow E_j). Monotone convergence is the concrete control relation; if the limit is infinite, the target explicitly permits the extended-real bound. Finite monic control is supplied later by `step_007`, not assumed here.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The pivot cover is primitive `assump:affine-chart-data`; each exhaustion level is defined before its image is consumed, and monotone convergence proves full coverage. Dependency path: primitives plus `step_001` regularity -> `step_006` -> `step_008` and `step_010`.
- Entry-state / first-update stress result: At any allowed root (\theta\in E_j), (F_j(\theta)\ne0), so there exists a first finite (m\geq1/|F_j(\theta)|) at which the root enters (E_{j,m}); the chart is active before the coefficient event is consumed. If (F_j) tends to zero along other points, those points enter at later levels without requiring a uniform margin.
- Baseline conclusion preserved: The output is an affine theorem on the original (N)-dimensional random vector with deterministic (F_0); it does not homogenize the offset or weaken the baseline to a singular-law surrogate.
- Producer-consumer provenance: Producer `step_006`; consumers `step_008` and `step_010`; final use is both the general affine clause and exact monic recovery.
- Null or boundary regime tested: (N=1), empty chart sets, pivots approaching zero, zero chart derivative, divergent integrals, tangent/multiple roots, interval endpoints, and affine-identically-zero coefficients.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If every available pivot vanished at a root, chart coverage would fail, but `assump:affine-chart-data` excludes this and (F_1=1) supplies a global fallback.
- Repair route if source is unsupported: None; the exact domain, determinant, coverage, exhaustion, and density interfaces are fixed.

### `step_007`

- Step ID: `step_007`
- Claim class: Exact monic object mapping, pivot support, and chart-velocity certificate.
- Theorem role: Supplies every algebraic input needed to specialize `step_006` without a new probability theorem.
- Mechanism source: Direct current-notation derivation under the (q=0) polynomial specialization. Choose any nondegenerate (\Theta=[c-h,c+h]\supseteq J), set (F_0(\theta)=\theta^d), (F_{k+1}(\theta)=\theta^k), and use the prescribed (E_1,E_d). On (E_1), (F_1=1). On (E_d), (F_d=\theta^{d-1}\ne0). The normalized-coordinate polynomials are exactly ((c+hx)^k), so the source convention matches Balcan--Nguyen--Sharma with (q=M=0) and augmented degree (d).
- Source-to-claim adequacy: Solving for (\alpha_0) gives (T_1=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k), hence (|T_1'|\leq d+R\sum_{k=1}^{d-1}k) on (|\theta|\leq1). Solving for (\alpha_{d-1}) gives (T_d=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}), hence (|T_d'|\leq1+R\sum_{k=0}^{d-2}(d-1-k)) on (|\theta|>1). For (d=1), (T_1=-\theta) and (|T_1'|=1). These are direct derivatives of the exact charts, not an invocation of the polynomial baseline.
- Residual-to-target adequacy: The produced affine combination equals the consumed polynomial pointwise:
  (F_0+\langle\alpha,F\rangle=p_\alpha). The random vector consists exactly of ((\alpha_0,\ldots,\alpha_{d-1})); the monic coefficient is not transformed into a random coordinate. Object-target residual is identically zero in the scalar absolute-value interface.
- Key positive/control term or structural source: The constant pivot on (|\theta|\leq1) and the nonzero high-degree pivot (\theta^{d-1}) on (|\theta|>1), where all negative powers in (T_d') have magnitude at most one.
- Opposing defect terms: The (d-1) lower-coefficient derivative terms, large (|\theta|), the transition at (|\theta|=1), and the (d=1) empty-sum branch. The two pivots allocate these regimes so every term has the displayed bound.
- Closure/dominance/absorption relation: 
  \[
  \sum_{k=1}^{d-1}k=\sum_{k=0}^{d-2}(d-1-k)=\frac{d(d-1)}2,
  \qquad 1+\frac{Rd(d-1)}2\leq d+\frac{Rd(d-1)}2.
  \]
- Accumulation behavior / scope compatibility: The velocity bounds are pointwise on the two measurable partition sets. Their later integrals accumulate only as constant times the disjoint total length (|E_1|+|E_d|=|J|).
- Obligation locality classification: `step-local`.
- Noncircular closure status: Pivot nonvanishing and velocity control follow directly from the explicit monomial presentation before `step_008` invokes the affine theorem. Dependency path: primitive monic data -> `step_007` -> `step_008`.
- Entry-state / first-update stress result: At (\theta=0), the constant pivot is active; at (|\theta|=1), the point belongs to (E_1) and the constant pivot is active; for (|\theta|>1), (\theta^{d-1}\ne0) before the chart is consumed. For (d=1), the constant pivot is active on all (J).
- Baseline conclusion preserved: The exact monic polynomial and exact prescribed two-pivot velocities are produced with no random leading coordinate, auxiliary remainder, or narrower interval class.
- Producer-consumer provenance: Producer `step_007`; consumer `step_008`; final use is the exact baseline clause in `step_010`.
- Null or boundary regime tested: (d=1), (d=2), (\theta=0), (|\theta|=1), unbounded location of a bounded interval (J), and empty pieces of the partition.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If the selected pivot vanished, the chart could be undefined; the partition ensures a nonzero pivot in every branch.
- Repair route if source is unsupported: None; all identities are direct and on the consumed polynomial.

### `step_008`

- Step ID: `step_008`
- Claim class: Exact affine-monic Rate Specialization Bridge.
- Theorem role: Recovers the mandatory polynomial baseline from the same affine theorem with literal constants.
- Mechanism source: Accepted-derived affine inequality `step_006` and exact velocity/presentation certificate `step_007`. No independent polynomial-root citation is used.
- Source-to-claim adequacy: `step_006` applies because the vector has dimension (N=d), the lower-coefficient law has the required full (d)-dimensional density cap, and `step_007` supplies a legal pivot partition. Integrating over each ((d-1))-dimensional (\beta)-cube gives exactly ((2R)^{d-1}).
- Residual-to-target adequacy: The producer event from `step_006` is exactly ({\exists\theta\in J:p_\alpha(\theta)=0}) by `step_007`. The produced object, consumed target, interval, law dimension, and scalar metric agree; residual zero. The deterministic leading coefficient remains outside the probability space.
- Key positive/control term or structural source: Uniform two-chart velocity (V_d=d+Rd(d-1)/2) and disjoint partition length (|E_1|+|E_d|=|J|).
- Opposing defect terms: The smaller high-pivot constant (1+Rd(d-1)/2), possible coefficient correlation, (J)'s location, and the (d=1) branch. The literal inequality to (V_d), full joint density cap, pivot split, and zero-dimensional cube convention control them.
- Closure/dominance/absorption relation: 
  \[
  \kappa\sum_{j\in\{1,d\}}\int_{E_j}\int_{[-R,R]^{d-1}}|T_j'|,d\beta d\theta
  \leq\kappa(2R)^{d-1}V_d(|E_1|+|E_d|)
  =\kappa(2R)^{d-1}V_d|J|.
  \]
- Accumulation behavior / scope compatibility: Nonnegative chart contributions add over a disjoint finite partition; there is no repeated-time defect. The bound is independent of (J)'s location and hence valid for every bounded (J).
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_006` proves the general affine interface before the monic specialization, and `step_007` independently proves all specialization conditions. Dependency paths merge only at `step_008`; the baseline result is not an assumption of either producer.
- Entry-state / first-update stress result: At the first chart application for any (\theta\in J), `step_007` already supplies a nonzero pivot and exact polynomial equality. There is no limiting or singular leading-coordinate construction whose activation could fail.
- Baseline conclusion preserved: Exactly the source baseline (kappa(2R)^{d-1}(d+Rd(d-1)/2)|J|), for every (d\geq1), bounded (J), and arbitrary correlated lower-coefficient law. No constant, mode, dimension, or conclusion is weakened.
- Producer-consumer provenance: `step_006` and `step_007` -> `step_008` -> `step_010`.
- Null or boundary regime tested: (d=1) gives (kappa|J|) under the (0)-dimensional volume convention ((2R)^0=1); empty chart pieces and (|\theta|=1) are covered.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without either exact chart coverage or exact velocity control, the source baseline would not follow. Both sources are already assigned and convention-matched.
- Repair route if source is unsupported: None.

### `step_009`

- Step ID: `step_009`
- Claim class: Counter-example 1 exact lower-bound and presentation-scale audit.
- Theorem role: Verifies that the new static normalization data quantitatively register the source obstruction.
- Mechanism source: Direct current-notation monomial and planar-area calculation. For (G=(1,x/\delta)), (Q_1=1), (Q_2=x/\delta), so (B_Q=\max(1,1/\delta)=1/\delta). For (t=\epsilon/\delta\leq1), a root in ([0,\epsilon]) is equivalent off a null coordinate set to opposite coefficient signs and (|\alpha_1|\leq t|\alpha_2|). The two triangular wedges in ([-1,1]^2) have total area (t). The uniform density is (1/4).
- Source-to-claim adequacy: The coefficient wedge is exactly the root event for the displayed family; dividing its exact area by four gives (\epsilon/(4\delta)). The presentation calculation uses the same monomial coefficient norm and normalized coordinate as the theorem.
- Residual-to-target adequacy: The produced event and consumed Counter-example 1 event are identical, with (h=1) and (x=\theta). Boundary sets (alpha_2=0) or equality on wedge edges have planar measure zero. There is no surrogate metric or asymptotic residual.
- Key positive/control term or structural source: The slope scale (1/\delta), present both in (B_Q) and in the wedge width (t=\epsilon/\delta).
- Opposing defect terms: The restriction (0<\epsilon\leq\delta), zero coefficients, and sign cases. The restriction keeps each wedge inside the square; null axes do not affect probability; the two opposite-sign quadrants exhaust the event.
- Closure/dominance/absorption relation: Total wedge area (2\int_0^1 t u\,du=t), so probability (t/4=\epsilon/(4\delta)); dividing by (|I|=\epsilon) gives (1/(4\delta)).
- Accumulation behavior / scope compatibility: One exact interval calculation; no iterative or limiting accumulation. The ratio is constant throughout the declared (\epsilon)-range.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The tuple and lower probability are derived directly from the example, independently of the theorem upper bound; `step_010` only compares already produced quantities.
- Entry-state / first-update stress result: At (\theta=0), (\gamma_F=(1,0)) and (|\gamma_F'(0)|_2=1/\delta), so the projective mechanism is already active at the left endpoint before the interval event is consumed.
- Baseline conclusion preserved: The required (1/\delta) lower scale is exact and `step_002` retains it through (B_Q). N/A to the separate affine-monic baseline.
- Producer-consumer provenance: Direct example -> `step_009` -> `step_010`; final use is the scale-audit clause.
- Null or boundary regime tested: (epsilon=\delta), (epsilon\downarrow0), (delta=1), coefficient axes, and wedge boundaries.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If (B_Q) did not scale as (1/\delta), the theorem would contradict this exact lower bound. The coefficient budget excludes that failure.
- Repair route if source is unsupported: None.

### `step_010`

- Step ID: `step_010`
- Claim class: Full exact-goal theorem assembly and mode/dependence closure.
- Theorem role: States all inseparable clauses together and checks that no interface, parameter, law, interval, or baseline conclusion is lost.
- Mechanism source: Accepted-derived outputs `step_001`--`step_009` only. Central outputs come from `step_005`, the general affine output from `step_006`, exact monic recovery from `step_008`, and the scale audit from `step_009`.
- Source-to-claim adequacy: Each final clause is identical to a producer output in the same convention. Assembly introduces no new cited result, lemma, assumption, simplification, or mechanism source.
- Residual-to-target adequacy: Every produced object is consumed on the same (F,F_0,p_\alpha), coefficient dimension, law class, interval, and metric. All transfer residuals are zero; the only domination is the explicitly proved central rate substitution and the explicitly proved monic high-pivot inequality.
- Key positive/control term or structural source: The complete dependency-closed set of earlier interfaces.
- Opposing defect terms: Hidden dependence, changed probability mode, lost arbitrary correlation, weakened interval scope, singular monic augmentation, unhandled tangent/multiple roots, and suppressed Counter-example scale. Each is excluded by a named earlier output.
- Closure/dominance/absorption relation: Conjoin, without further algebra, the outputs of `step_005`, `step_006`, `step_008`, and `step_009`, retaining the primitive bridge from `step_001`--`step_002`.
- Accumulation behavior / scope compatibility: There is no recursive scope. Uniform central quantifiers follow from the same deterministic bound for each (\mu,I); affine scope follows from chart integration and monotone exhaustion; monic scope follows from finite partition integration. No persistent defect is carried into assembly.
- Obligation locality classification: `step-local`.
- Noncircular closure status: All consumers depend only on earlier producers. No assembly clause is used to establish a producer premise. The dependency graph is explicitly listed below and is acyclic.
- Entry-state / first-update stress result: The central normalization is active at every (\theta) by `step_002`; each affine root enters a finite exhaustion level by `step_006`; each monic pivot is active at first chart use by `step_007`; and the Counter-example projective speed is active at (\theta=0) by `step_009`.
- Baseline conclusion preserved: The exact affine-monic constant and arbitrary-correlated-law scope from `step_008` are included verbatim, not replaced by the homogeneous central theorem or a weaker surrogate.
- Producer-consumer provenance: `step_005`, `step_006`, `step_008`, `step_009` -> `step_010` -> final theorem.
- Null or boundary regime tested: (N=1), (q=0), (d=1), stationary normalized curves, tangent/multiple roots, divergent general affine integrals, interval endpoints, and the exact (\delta,epsilon) boundaries.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Any missing producer would remove an inseparable goal clause; the roadmap assigns and exposes every producer before assembly.
- Repair route if source is unsupported: None under the current sketch; any later local failure must be routed to its producing step unless it exposes a genuine sketch or theorem-contract defect.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| (D_*=\Delta B_Q(1+qB_P)) and (\lvert G_i'\rvert\leq D_*) | `step_001`, direct primitive-source derivation | `assump:balcan-common-chain`; unit-box evaluations and coefficient budgets from `assump:anchored-unit-range` | The (x)-partial is controlled by (\Delta B_Q); each of (q) chain terms is controlled by (\Delta B_QB_P); no empirical or uncontrolled term | Produced and consumed object is the same (G_i') in normalized (x)-coordinates; residual zero | Exact chain-rule sum (\Delta B_Q+q\Delta B_QB_P=D_*) | Unit-box coefficient envelope; no chosen threshold | `step_002`, regularity use in `step_006`, `step_010` transitively | None |
| Global nonvanishing and (\Gamma_{\mathrm{proj}}(F)\leq\sqrt N D_*/h) | `step_002` | (G_1=1), `step_001`, projector norm one, exact (x\)-to-(\theta) derivative relation | Normalization denominator controlled by anchor; vector derivative by `step_001`; coordinate scale by (h^{-1}); no uncontrolled residual | (\gamma_F(\theta)=\gamma_G(x(\theta))) exactly in the Euclidean metric; transfer residual zero | (\|\gamma_G'\|\leq\|G'\|/\|G\|\leq\sqrt ND_*), then multiply by (h^{-1}) | Primitive margin (G_1=1), hence (\|G\|\geq1) | `step_003`, `step_005`, `step_010` | None |
| Central incidence projection volume $\operatorname{Leb}(\mathrm{root\ coefficient\ set})\leq\int_I\int_{\gamma^\perp\cap K}\lvert\langle\gamma',a\rangle\rvert$ | `step_003`, standard area/coarea formula in current notation | `step_002` gives a $C^1$ unit normalized curve; incidence has unit $a$-gradient; coefficient projection is Lipschitz | Tangencies and multiple roots controlled by projection multiplicity/critical-image nullity; endpoints and identically-zero proper subspace are null; no positive-measure uncovered class | Incidence projection is the same coefficient root set for the same $F,I,K$; exceptional-set measure residual zero under all admissible laws | Area formula indicator $\leq$ multiplicity, plus coarea identity for the exact Jacobian | Regular incidence margin $\|\nabla_a g\|=\|\gamma\|=1$ | `step_004` | None |
| (\Pr_\mu(\mathrm{central\ root\ in\ }I)\leq A\sqrt{N/2}\int_I\|\gamma_F'\|_2) | `step_004`; Ball's main theorem plus density cap and `step_003` | Central volume interface, (\|a\|\leq R\sqrt N), Ball section cap, (f_\mu\leq\kappa) | Section orientation controlled by Ball; coefficient magnitude by cube support; arbitrary correlation by full joint cap; no uncontrolled law term | Same cube, section, law, event, and Euclidean norm; volume-to-probability residual zero | (\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}) exactly | Ball's orientation-uniform section cap; no auxiliary threshold | `step_005`, `step_010` transitively | None |
| Central public rate and $C^{\mathrm{Pf}}_{\mathcal D}$ bound | `step_005` | `step_002` and `step_004`, both literal and uniform | No dropped term; $M$ is controlled with explicit degree-zero dependence; no $\mu,I$ dependence | Technical and public rates bound the same event; substitution residual zero; quotient uses the same positive $\lvert I\rvert$ | $A\sqrt{N/2}(\sqrt N D_*/h)=AND_*/(\sqrt2h)$, followed by the defining suprema | Anchor margin and Ball cap already exported; no new slack | `step_010` | None |
| General affine chart inequality | `step_006`, standard area formula for $\Psi_j$ | Primitive pivot cover; $C^1$ data; finite-level lower pivot $1/m$; density cap; exact determinant | Near-zero pivots controlled by exhaustion; tangent/multiple roots by area multiplicity; correlation by joint cap; divergent integral remains an explicitly permitted extended-real class | $\Psi_j(\theta,\beta)$ is exactly the consumed coefficient vector and satisfies the same affine root equation; every root enters some finite $m$; residual empty | Restrict $\lvert T_j\rvert\leq R$, bound image measure by Jacobian integral, enlarge domain, sum charts, use monotone convergence | Finite-level margin $1/m$, sourced by the nonzero primitive pivot; no uniform margin is asserted | `step_008`, direct general-affine use in `step_010` | None |
| Exact monic presentation, pivot partition, and velocity cap $V_d=d+Rd(d-1)/2$ | `step_007`, direct current-notation derivation | Explicit monomial $F_0,F$; constant pivot on $\lvert\theta\rvert\leq1$; $\theta^{d-1}$ pivot on $\lvert\theta\rvert>1$; coefficient cube | Lower-term derivatives controlled by $R$; negative powers controlled by $\lvert\theta\rvert>1$; transition and $d=1$ handled explicitly; no uncontrolled location term | Produced affine expression equals $p_\alpha$ pointwise; random vector and target lower coefficients are identical; deterministic leading coefficient stays external; residual zero | Direct chart derivatives and $1+Rd(d-1)/2\leq V_d$ | Constant pivot one or high pivot with $\lvert\theta\rvert^{d-1}>1$ | `step_008` | None |
| Exact baseline $\kappa(2R)^{d-1}V_d\lvert J\rvert$ | `step_008` | `step_006`, `step_007`, $(d-1)$-cube volume, disjoint partition length | Correlation controlled by full density cap; smaller high-pivot constant explicitly dominated; no singular-coordinate or auxiliary error | Same polynomial event, $d$-dimensional lower-coefficient law, interval, and scalar metric; residual zero | $\kappa(2R)^{d-1}V_d(\lvert E_1\rvert+\lvert E_d\rvert)=\kappa(2R)^{d-1}V_d\lvert J\rvert$ | Velocity source `step_007`; no new margin | `step_010` | None |
| Counter-example tuple, exact probability (epsilon/(4\delta)), and (C\geq1/(4\delta)) | `step_009`, direct planar calculation | Explicit (Q_1,Q_2), uniform square density, (0<\epsilon\leq\delta\) | Axes and wedge boundaries are null; both sign branches included; no asymptotic remainder | Same feature, coefficient law, interval, and Euclidean scale; (x=\theta); residual zero | Two wedges have total area (\epsilon/\delta); multiply by density (1/4) | Slope/coefficient scale (1/\delta) | `step_010` | None |
| Full exact-goal theorem | `step_010` | All earlier exported interfaces | Every defect class is allocated to its producer; no new or uncontrolled class enters assembly | Same objects and modes clause by clause; all transfer residuals already zero | Conjunction of `step_005`, `step_006`, `step_008`, and `step_009` with primitive bridge `step_001`--`step_002` | Earlier anchor, section, pivot, and velocity sources; no assembly-only slack | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Pfaffian derivative envelope (D_*) | `step_001`; direct from `assump:balcan-common-chain`, `assump:anchored-unit-range` in the exact (x)-coordinate convention | `step_002`; regularity interface of `step_006`; `step_010` transitively | Primitive-presentation clause | primitives -> `step_001` -> `step_002` -> `step_005` -> `step_010` | derived | None |
| Global nonvanishing and projective-speed certificate | `step_002`; exact object relation (\gamma_F=\gamma_G\circ x), source-compatible with Euclidean normalization | `step_003`, `step_005`, `step_010` | Conditioning and central explicit rate | `step_001` -> `step_002` -> (`step_003`, `step_005`) -> `step_010` | derived | None |
| Central incidence event-volume interface | `step_003`; current-notation area/coarea wrapper, with Edelman--Kostlan Theorem 5.1 as convention cross-check | `step_004` | Tangent/multiple-root-safe central sweep | `step_002` -> `step_003` -> `step_004` -> `step_005` -> `step_010` | derived | None |
| Central all-law probability interface | `step_004`; Ball main theorem plus primitive joint-density cap | `step_005` | First central inequality | `step_003` -> `step_004` -> `step_005` -> `step_010` | derived | None |
| Literal central rate and (C^{\mathrm{Pf}}_{\mathcal D}) bound | `step_005` | `step_010` | Central theorem and supremum conclusion | (`step_002`, `step_004`) -> `step_005` -> `step_010` | derived | None |
| Exhausted affine chart bound | `step_006`; current-notation area formula, exact coefficient-object mapping, monotone exhaustion | `step_008`, `step_010` | General affine clause and baseline generator | primitives plus `step_001` -> `step_006` -> (`step_008`, `step_010`) | derived | None |
| Exact monic object/pivot/velocity certificate | `step_007`; direct monomial calculation, same lower-coefficient target, residual zero | `step_008` | Baseline specialization conditions | primitive monic data -> `step_007` -> `step_008` -> `step_010` | derived | None |
| Exact affine-monic probability bound | `step_008` | `step_010` | Baseline invariance conclusion | (`step_006`, `step_007`) -> `step_008` -> `step_010` | derived | None |
| Counter-example 1 exact scale certificate | `step_009`; direct coefficient-budget and wedge calculation | `step_010` | Required lower-scale audit | `step_005` and direct example -> `step_009` -> `step_010` | derived | None |
| Full assembled theorem | `step_010` | Final theorem statement | Every inseparable formalized-goal clause | (`step_005`, `step_006`, `step_008`, `step_009`) -> `step_010` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | For every $x\in[-1,1]$ and $i\leq N$, prove $\lvert G_i'(x)\rvert\leq D_*:=\Delta B_Q(1+qB_P)$, including the $q=0$ convention and explicit degree-zero $M$-dependence. | None | Primitive: `assump:balcan-common-chain`, `assump:anchored-unit-range` | Bound every partial derivative of $Q_i$ and every $P_j$ from monomial coefficient budgets on the actual unit-box chain, without inserting a degree-count factor or an unrecorded range constant. | Direct coefficient-envelope calculation and chain rule in the exact Balcan--Nguyen--Sharma $p=1$ convention; no external theorem. | Literal coordinate derivative envelope $D_*$. | R1: all $q,M,\Delta,B_P,B_Q$ dependence explicit; no hidden constant. | PENDING |
| `step_002` | Prove (G_1=1\Rightarrow\|G\|_2\geq1), the exact normalized-derivative identity, and (\Gamma_{\mathrm{proj}}(F)\leq\sqrt N D_*/h) on all (\Theta). | `step_001` | Primitive: `assump:parameter-regime`, `assump:anchored-unit-range`; derived: `step_001` derivative envelope | Establish a source-adequate nonvanishing denominator and preserve the exact (h^{-1}) transfer on the same normalized target. | Direct differentiation of (G/\|G\|_2), Euclidean projector norm, and exact affine coordinate change. | Global nonvanishing and projective-speed certificate. | R1 and R5: exact (\sqrt N/h) factor and retained (B_Q=1/\delta) specialization. | PENDING |
| `step_003` | For every interval (I), prove the central root-set coefficient-volume inequality given in the `step_003` witness, with tangent, multiple, endpoint, and identically-zero cases handled measure-theoretically. | `step_002` | Primitive: `assump:parameter-regime`, `assump:anchored-unit-range`; derived: `step_002` (C^1) normalized curve and nonvanishing | Compute the projection/coarea Jacobian on the incidence hypersurface and ensure union volume is controlled without simple roots or transversality. | Standard Euclidean area/coarea formula in current notation; Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9, as source-convention and integrand cross-check. | Central incidence projection interface. | R2: exact local sweep integrand, before quantitative section bounding. | PENDING |
| `step_004` | For every arbitrary correlated (\mu\) and interval (I), prove (\Pr(\exists\mathrm{root})\leq A\sqrt{N/2}\int_I\|\gamma_F'(\theta)\|_2d\theta\). | `step_003` | Primitive: `assump:parameter-regime`, `assump:cube-density-laws`; derived: `step_003` incidence-volume interface | Map Ball's source convention exactly, handle (N=1), and expose the algebra converting cube support, section area, and density cap to (A\sqrt{N/2}). | Ball, *Cube Slicing in \(\mathbb R^n\)*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0; Cauchy--Schwarz and density integration. | Central all-law local-length interface. | R2: exact (A,N,R,\kappa) dependence; ordinary probability; interval-uniform. | PENDING |
| `step_005` | Derive both displayed central inequalities and (C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq A\sqrt{N/2}\Gamma_{\mathrm{proj}}(F)\leq AN\Delta B_Q(1+qB_P)/(\sqrt2h)). | `step_002`, `step_004` | Derived only: `step_002`, `step_004`; primitive parameter meanings from `assump:parameter-regime` | Preserve every exposed variable, degree-zero (M)-dependence, law/interval uniformity, and literal constants through substitution and two suprema. | Exact algebra and the definition of (C^{\mathrm{Pf}}_{\mathcal D}). | Complete central theorem clause. | R2, with the R1 Rate Specialization Bridge and R5 scale retention. | PENDING |
| `step_006` | Prove the exact general affine chart inequality by applying the area formula to (D_{j,m}) and (\Psi_j), summing charts, and passing (m\to\infty), including extended-real, tangent/multiple-root, and affine-identically-zero cases. | `step_001` | Primitive: `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:cube-density-laws`, `assump:affine-chart-data`; derived: `step_001` regularity interface | Obtain full root-event coverage without a uniform pivot margin, ensure the chart output remains in the coefficient cube, and use only the full joint density cap. | Standard Euclidean area formula for (\Psi_j), exact determinant calculation, monotone convergence; Balcan--Dick--Pegden Theorem 18, arXiv:1904.09014, as affine lineage rather than a black-box conclusion. | General affine theorem clause, suitable for direct monic consumption. | R3: exact chart integrals, no hidden constant, arbitrary correlation, extended-real scope. | PENDING |
| `step_007` | For every $d,J$, verify the exact q=0 normalized monic presentation and prescribed pivot sets, derive both displayed velocity bounds and the $d=1$ identity, and record $N=d,A=(2R)^d\kappa,\Delta_{\mathrm{aug}}=d$. | None | Primitive specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:affine-chart-data`; deterministic monic data | Preserve the lower-coefficient object exactly, control negative powers on $\lvert\theta\rvert>1$, and handle the transition and empty-sum branch without a singular leading coordinate. | Direct current-notation chart differentiation and finite-sum identities; no independent polynomial root theorem. | Exact monic object/pivot/velocity certificate. | R4: all specialization conditions and literal $V_d$ bound. | PENDING |
| `step_008` | Apply `step_006` using `step_007` to prove exactly $\Pr[\exists\theta\in J:p_\alpha(\theta)=0]\leq\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert$ for arbitrary correlated lower coefficients. | `step_006`, `step_007` | Primitive: `assump:cube-density-laws` in dimension $d$; derived: `step_006`, `step_007` | Verify the $(d-1)$-cube volume, partition lengths, $d=1$ convention, and exact object/law dimension while introducing no auxiliary loss. | Direct specialization of the already proved affine chart theorem and exact integration. | Exact affine-monic baseline conclusion. | R4: complete baseline Rate Specialization Bridge; no hidden constants or probability conversion. | PENDING |
| `step_009` | For Counter-example 1, prove the specialized tuple and (B_Q=1/\delta), compute the exact probability (\epsilon/(4\delta)), conclude (C\geq1/(4\delta)), and compare it with the theorem's (1/\delta) upper scale. | `step_005` | Primitive specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:cube-density-laws`; derived central upper rate from `step_005` | Identify the exact coefficient wedge, include both sign branches, and ensure presentation normalization records rather than hides the metric scale. | Direct planar Lebesgue-area calculation and monomial coefficient audit. | Counter-example 1 scale-audit clause. | R5 and consistency with R1--R2. | PENDING |
| `step_010` | Assemble one unconditional theorem containing verbatim the primitive bridge, both central bounds and (C) bound, the general affine inequality, exact affine-monic recovery, Counter-example 1 audit, and the declared modes/dependence, with no new lemma or assumption. | `step_005`, `step_006`, `step_008`, `step_009` | Primitive assumptions exactly as allocated above; derived outputs from all dependencies | Prevent clause loss, target switching, hidden dependence, mode changes, a homogeneous replacement of the affine baseline, or an untracked generated output. | Dependency-checked theorem assembly only. | Full exact formalized goal. | R1--R5, including both specialization bridges and all baseline obligations. | PENDING |

## Dependency Notes

The graph is acyclic because every edge points to an earlier stable ID:
\[
\begin{aligned}
&\texttt{step\_001}\to\texttt{step\_002}\to\texttt{step\_003}\to\texttt{step\_004},\\
&\{\texttt{step\_002},\texttt{step\_004}\}\to\texttt{step\_005}\to\texttt{step\_009},\\
&\texttt{step\_001}\to\texttt{step\_006},\\
&\{\texttt{step\_006},\texttt{step\_007}\}\to\texttt{step\_008},\\
&\{\texttt{step\_005},\texttt{step\_006},\texttt{step\_008},\texttt{step\_009}\}\to\texttt{step\_010}.
\end{aligned}
\]
`step_007` is an independent direct specialization unit and therefore has no dependency; it is placed before its only consumer `step_008`. If accepted, the central analytic branch (`step_001`--`step_005`), the general affine branch (`step_006`), the direct monic certificate (`step_007`), and the scale audit (`step_009`) expose separate review boundaries. `step_008` may consume the affine theorem only after both the general chart and exact monic certificate are accepted. `step_010` introduces no mathematical content; it may assemble only accepted outputs and retains the exact formalized goal.

## Blockers

None.
