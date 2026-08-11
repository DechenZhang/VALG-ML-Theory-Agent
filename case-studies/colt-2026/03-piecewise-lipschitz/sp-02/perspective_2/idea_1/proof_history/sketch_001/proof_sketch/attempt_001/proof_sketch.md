# Proof Sketch

## Formalized Setting

This branch is in exact-goal mode. Fix integers \(N\geq1\), \(q\geq0\), and \(m\geq0\), numbers \(T,R,\kappa>0\), a nondegenerate compact interval \(\Theta\subseteq[-T,T]\), and an open interval \(U\supseteq\Theta\). In the exact Balcan--Nguyen--Sharma convention at ambient parameter dimension \(p=1\), a common triangular Pfaffian chain satisfies

\[
\eta_j'(\theta)=P_j(\theta,\eta_1(\theta),\ldots,\eta_j(\theta)),
\qquad 1\leq j\leq q,
\]

with chain length \(q\), chain degree \(M=\max_j\deg P_j\) (and \(M=0\) for \(q=0\)), and output polynomials \(Q_i\) of total degree at most

\[
\Delta=\max_{0\leq i\leq N}\deg Q_i.
\]

Set

\[
F_i(\theta)=Q_i(\theta,\eta(\theta)),\qquad
\widetilde F=(F_0,F_1,\ldots,F_N),\qquad F=(F_1,\ldots,F_N).
\]

Only the coefficients multiplying \(F_1,\ldots,F_N\) are random. A supplied polynomial matrix \(B:U\to\mathbb R^{(N+1)\times(N+1)}\) has entries

\[
B_{rs}(\theta)=\sum_{\ell=0}^{m}b_{rs,\ell}\theta^\ell,
\]

and, with \(T_*=\max\{1,T\}\), its static coefficient-height certificate is

\[
\widehat\Lambda_{B,T}
=\left(\sum_{r,s=0}^{N}
\left(\sum_{\ell=0}^{m}|b_{rs,\ell}|T_*^\ell\right)^2\right)^{1/2}.
\]

The identity \(\widetilde F'=B\widetilde F\) and an anchor \(F_{j_*}\equiv1\) are primitive. The bounds on \(B\), affine sweep velocity, projective speed, and root probabilities are not primitive assumptions.

Let \(\mathcal D=\mathcal D_{N,R,\kappa}\) be all Borel probability laws with a Lebesgue density supported on \([-R,R]^N\) and bounded by \(\kappa\), with arbitrary coordinate dependence, and set

\[
A=(2R)^N\kappa.
\]

For \(\alpha\sim\mu\in\mathcal D\), define

\[
\phi_\alpha(\theta)=F_0(\theta)+\langle\alpha,F(\theta)\rangle,
\qquad
H_\theta=\{a:F_0(\theta)+\langle a,F(\theta)\rangle=0\}.
\]

The homogeneous root constant \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\) and affine root constant \(C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)\) are the law- and positive-length-interval suprema in `setting.md`. The anchor makes \(F\neq0\), so

\[
\gamma_F=\frac{F}{\|F\|_2},\qquad
\Gamma_{\mathrm{proj}}(F)=\sup_{\theta\in\Theta}\|\gamma_F'(\theta)\|_2
\]

are well-defined derived objects.

Whenever \(F_j(\theta)\neq0\), let \(\beta=(\beta_i)_{i\neq j}\) and define

\[
T_j(\theta,\beta)
=-\frac{F_0(\theta)}{F_j(\theta)}
-\sum_{i\neq j}\beta_i\frac{F_i(\theta)}{F_j(\theta)}.
\]

The map \(\Psi_j(\theta,\beta)\) inserts \(T_j\) in coordinate \(j\) and \(\beta_i\) elsewhere. Its full-dimensional Jacobian is \(|\det D\Psi_j|=|\partial_\theta T_j|\).

The primitive assumption interface is exactly:

- `assump:parameter-regime`: the static scalar, interval, chain-domain, support, density, and finite-presentation conditions above, including nonempty \(\mathcal D\).
- `assump:balcan-common-chain`: the exact \(p=1\) Balcan--Nguyen--Sharma common-chain presentation with parameters \(q,M,\Delta\).
- `assump:anchored-derivative-closure`: \(F_{j_*}\equiv1\), the supplied polynomial \(B\), and the identity \(\widetilde F'=B\widetilde F\) on \(U\).
- `assump:cube-density-laws`: arbitrary correlated full joint densities on \([-R,R]^N\) capped by \(\kappa\).

No generated event, pivot margin, transversality condition, root simplicity, projective-speed bound, section bound, or sweep bound is assumed.

## Formalized Goal

Prove one unconditional anchored derivative-closure coefficient-sweep theorem containing all of the following clauses.

1. Derive the static certificate

   \[
   \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
   \leq\widehat\Lambda_{B,T}.
   \]

   When \(F_0\equiv0\), derive \(F'=B_FF\),

   \[
   \gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
   \qquad
   \Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
   \]

2. For every \(\mu\in\mathcal D\) and every positive-length interval \(I\subseteq\Theta\), prove the single affine swept-area inequality and its explicit certificate bound

   \[
   \begin{aligned}
   \Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
   &\leq \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
   \frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
   \,d\mathcal H^{N-1}(a)\,d\theta\\
   &\leq \kappa\sqrt2(2R)^{N-1}(1+NR^2)
   \widehat\Lambda_{B,T}|I|\\
   &=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
   \end{aligned}
   \]

   Consequently,

   \[
   C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
   \leq\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
   \]

   The proof must derive the root-section controls, the translated-section estimate, and the velocity bound. It must also prove, for every measurable partition \(I=\bigsqcup_jE_j\) with \(F_j\neq0\) on \(E_j\),

   \[
   \Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
   \leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
   \mathbf1\{|T_j(\theta,\beta)|\leq R\}
   |\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta,
   \]

   and the version obtained by dropping the indicator. The area formula is first applied on \(E_{j,n}=\{\theta\in E_j:|F_j(\theta)|\geq1/n\}\) and then \(n\to\infty\). Tangent and multiple roots are allowed. The coefficients making \(\phi_a\equiv0\) must be proved law-null.

3. In the homogeneous specialization \(F_0\equiv0\), prove from the same sweep formula

   \[
   \Pr[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
   \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
   \]

   and hence \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq A\sqrt{N/2}\widehat\Lambda_{B,T}\).

4. For every \(d\geq1\), bounded interval \(J\subset\mathbb R\), and arbitrary correlated lower-coefficient law with density at most \(\kappa\), specialize the same affine theorem to

   \[
   F_0(\theta)=\theta^d,\qquad F_{k+1}(\theta)=\theta^k,
   \qquad p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
   \]

   Verify

   \[
   q=M=0,\quad \Delta=d,\quad N=d,\quad m=0,\quad
   A=(2R)^d\kappa,\quad
   \widehat\Lambda_{B,T}=\left(\sum_{k=1}^dk^2\right)^{1/2},
   \]

   derive the two pivot formulas and bounds prescribed in `setting.md`, handle \(d=1\), and recover exactly

   \[
   \Pr[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq\kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)|J|.
   \]

   The leading coefficient remains deterministic; no independent polynomial theorem or singular random-coordinate representation is allowed.

5. For \(F_0=0\), \(F=(1,\theta/\delta)\), \(0<\delta\leq1\), verify

   \[
   q=M=0,\quad\Delta=1,\quad N=2,\quad m=0,\qquad
   \widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta.
   \]

   With \(R=1\), \(\kappa=1/4\), \(A=1\), derive the theorem upper bound \(C^{\mathrm{Pf}}_{\mathcal D}\leq1/\delta\) and directly verify

   \[
   \Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
   =\frac{\epsilon}{4\delta},\qquad0<\epsilon\leq\delta.
   \]

Every constant is literal. The fixed instance data are \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B)\); \(\mu\) and \(I\) range over their suprema. Probability is ordinary probability, interval mode is uniform over all positive-length subintervals, all norms are Euclidean, and the additional dependence on \(q,M,\Delta\) after fixing the certificate is exactly degree zero.

## Sketch Identity

- Sketch attempt: 1
- Attempt type: Initial sketch
- Search mode: `OPEN`
- Run mode: `interactive`
- Target mode: Exact-goal, unconditional, full-progress theorem on the declared derivative-closed subclass

## Proof Roadmap

Use the selected framework `Affine coefficient-incidence sweep with derivative-closure certification` from `technical_survey.md`. Its source provenance is Edelman--Kostlan (Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9), Ball (main cube-slicing theorem, DOI:10.1090/S0002-9939-1986-0840631-0), Balcan--Dick--Pegden (Theorem 18, arXiv:1904.09014), and the Balcan--Nguyen--Sharma convention (Definitions 2--4, arXiv:2409.04367).

The roadmap has a common static/sweep trunk and three specialization branches. `step_001` derives the coefficient-height and homogeneous projective certificates. `step_002` proves the persistent-root coefficient locus is null. `step_003` proves the pivot-chart area inequality on finite exhaustion levels and passes to arbitrary measurable pivot partitions. `step_004` converts the chart integrand exactly into the coordinate-free affine normal-velocity integral. Independently, `step_005` proves translated cube sections are no larger than central ones and invokes Ball's sharp bound, while `step_006` bounds affine normal velocity using derivative closure and the root-section identity. `step_007` assembles the general affine rate. The homogeneous branch `step_008` sharpens it through the projective identity. The monic branch `step_009` verifies the augmented monomial certificate and two pivot velocities, and `step_010` applies the already proved chart theorem to recover the exact source constant. `step_011` audits Counter-example 1. `step_012` performs dependency-only theorem assembly.

## Rate Objectives

### Rate objective R1: Static derivative-closure certificate

- Objective type: structural-parameter explicit deterministic bound.
- Exposed variables: \(T,m,N\), the coefficient list \((b_{rs,\ell})\), and \(\widehat\Lambda_{B,T}\); the presentation parameters \(q,M,\Delta\) remain disclosed with additional degree-zero dependence once \(B\) is fixed.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: Any instance parameter, law, or interval.
- Fixed quantities: The full deterministic Pfaffian presentation, \(B\), and \(\Theta\).
- Probability mode: Deterministic.
- Horizon mode: Pointwise on \(\Theta\), then uniform by taking a supremum.
- Norm mode: Euclidean operator and Frobenius norms.
- Required bridge or simplification obligations: Prove entrywise coefficient evaluation, Frobenius aggregation, operator domination, the exact homogeneous block identity, and the normalized-derivative projector identity.
- Baseline invariance obligations: The certificate must specialize to \((\sum_{k=1}^dk^2)^{1/2}\) for the augmented monomial tuple and to \(1/\delta\) for Counter-example 1.

### Rate objective R2: General affine all-law/all-interval bound

- Objective type: interval-uniform and structural-parameter explicit probability bound.
- Exposed variables: \(N,R,\kappa,A,\widehat\Lambda_{B,T},|I|\), with exact coefficient \(A(1+NR^2)/(\sqrt2R)\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mu\), \(I\), pivot margins, root multiplicity, section orientation, coordinate dependence, or \(q,M,\Delta\).
- Fixed quantities: The deterministic presentation and support/density parameters while \(\mu\) and \(I\) range.
- Probability mode: Ordinary probability for each arbitrary correlated law; no confidence conversion.
- Horizon mode: Simultaneously uniform over every positive-length interval, followed by the defining supremum for \(C^{\mathrm{aff}}_{\mathcal D}\).
- Norm mode: Euclidean vector/operator norms, Lebesgue \(N\)-volume, and \((N-1)\)-dimensional Hausdorff measure.
- Required bridge or simplification obligations: Prove the chart area inequality, exact chart-to-section Jacobian identity, translated-section bound, root-section velocity bound, and the literal algebra \(\kappa\sqrt2(2R)^{N-1}=A/(\sqrt2R)\).
- Baseline invariance obligations: The affine offset remains deterministic and the resulting chart theorem must be the producer of the exact monic baseline.

### Rate objective R3: Sharper homogeneous projective bound

- Objective type: interval-uniform, structural-parameter explicit, and regularity-explicit probability bound.
- Exposed variables: \(A,N,\Gamma_{\mathrm{proj}}(F),\widehat\Lambda_{B,T},|I|\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mu\), \(I\), an unrecorded norm margin, or a section orientation.
- Fixed quantities: The homogeneous feature presentation and support/density data.
- Probability mode: Ordinary probability for each admissible law.
- Horizon mode: Every positive-length interval and the final double supremum.
- Norm mode: Euclidean projective speed and Euclidean section geometry.
- Required bridge or simplification obligations: On \(H_\theta=\gamma_F(\theta)^\perp\), prove the normal velocity equals \(|\langle a,\gamma_F'\rangle|\), then use \(\|a\|_2\leq R\sqrt N\), Ball's bound, and \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda_{B,T}\) with the exact identity \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\).
- Baseline invariance obligations: The homogeneous theorem does not replace the affine-monic theorem; it must also retain the \(1/\delta\) scale.

### Rate objective R4: Exact affine-monic baseline

- Objective type: exact baseline specialization and structural-parameter explicit bound.
- Exposed variables: \(d,R,\kappa,|J|\), with \(q=M=0\), \(\Delta=N=d\), \(m=0\), \(A=(2R)^d\kappa\), and the displayed exact certificate height.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: The location of \(J\), coefficient correlations, \(T\), an auxiliary threshold, or a random leading-coordinate approximation.
- Fixed quantities: \(d,R,\kappa\) and a compact \(\Theta\supseteq J\).
- Probability mode: Ordinary probability for every possibly correlated lower-coefficient law.
- Horizon mode: Uniform over every bounded interval \(J\).
- Norm mode: Scalar chart velocity and Lebesgue coefficient volume.
- Required bridge or simplification obligations: Verify the constant shift matrix, both pivot formulas and derivatives, negative-power bounds on \(|\theta|>1\), the \(d=1\) branch, \((2R)^{d-1}\) beta-volume, and disjoint partition-length identity.
- Baseline invariance obligations: Recover exactly \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)|J|\) from `step_003`, with no independent root theorem or weakened remainder.

### Rate objective R5: Counter-example 1 scale audit

- Objective type: exact lower-bound and scale-matching audit.
- Exposed variables: \(\delta,\epsilon\), with \(0<\epsilon\leq\delta\leq1\), and the tuple \(q=M=0,\Delta=1,N=2,m=0,R=1,\kappa=1/4,A=1\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\delta\) or \(\epsilon\).
- Fixed quantities: The uniform law on \([-1,1]^2\) and the displayed feature tuple.
- Probability mode: Exact ordinary probability.
- Horizon mode: Intervals \([0,\epsilon]\) in the stated range.
- Norm mode: Euclidean projective norm and planar Lebesgue area.
- Required bridge or simplification obligations: Calculate \(\widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}=1/\delta\), integrate both opposite-sign wedges exactly, divide by square area four, and compare the \(1/(4\delta)\) lower scale with the \(1/\delta\) upper scale.
- Baseline invariance obligations: The certificate must expose, not suppress, the \(1/\delta\) scale.

## Assumption Provenance Objectives

No generated event, trajectory condition, recurrence, regularity condition, or swept-area bound is promoted to a theorem-facing assumption. The required derived outputs are:

| Derived output or control | Primitive source | Producer step | Legal consumers |
| ------------------------- | ---------------- | ------------- | --------------- |
| Anchor-induced \(F\neq0\), coefficient-height bound, and homogeneous projective certificate | `assump:parameter-regime`, `assump:anchored-derivative-closure` | `step_001` | `step_002`--`step_008`, `step_011`, `step_012` as allocated |
| Law-null persistent-root coefficient locus | `assump:anchored-derivative-closure`, `assump:cube-density-laws` | `step_002` | `step_003`, `step_012` |
| Exhausted pivot-chart probability inequality, including tangent/multiple-root coverage | All four primitive assumptions plus `step_001`, `step_002` | `step_003` | `step_004`, `step_010`, `step_012` |
| Coordinate-free affine swept-area interface | `step_003` and direct fixed-section Jacobian identities | `step_004` | `step_007`, `step_008`, `step_012` |
| Translated cube-section certificate | `assump:parameter-regime`; Brunn--Minkowski and Ball's theorem | `step_005` | `step_007`, `step_008` |
| Root-section affine normal-velocity certificate | `assump:anchored-derivative-closure`, `step_001` | `step_006` | `step_007` |
| General affine probability and \(C^{\mathrm{aff}}\) bounds | `step_004`, `step_005`, `step_006`, `assump:cube-density-laws` | `step_007` | `step_012` |
| Sharper homogeneous probability and \(C^{\mathrm{Pf}}\) bounds | `step_001`, `step_004`, `step_005` | `step_008` | `step_011`, `step_012` |
| Exact monomial instance, shift matrix, pivots, and velocity caps | Direct \(q=0\) specialization of the primitive setting | `step_009` | `step_010` |
| Exact affine-monic probability bound | `step_003`, `step_009` | `step_010` | `step_012` |
| Counter-example certificate, projective speed, and exact wedge probability | Direct displayed specialization and uniform density | `step_011` | `step_012` |

Local area-formula statements may fix \(j,n,I\), or a measurable pivot set only inside the local lemma. `step_003` discharges these local conditions before any downstream theorem uses the full chart output. There is no conditional final theorem and no missing derived invariant.

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`
- Claim class: Anchor nonvanishing, static matrix upper bound, and homogeneous projective-speed bridge.
- Theorem role: Produces the raw instance-scale certificate used by every quantitative sweep bound.
- Mechanism source: Direct primitive-source derivation in the exact setting convention. For \(|\theta|\leq T\leq T_*\), set \(c_{rs}=\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell\); coefficient evaluation gives \(|B_{rs}(\theta)|\leq c_{rs}\), hence \(\|B(\theta)\|_{\mathrm{op}}\leq\|B(\theta)\|_{\mathrm F}\leq(\sum c_{rs}^2)^{1/2}=\widehat\Lambda_{B,T}\). The primitive anchor in `assump:anchored-derivative-closure` gives \(F_{j_*}=1\). When \(F_0=0\), the lower block of \(\widetilde F'=B\widetilde F\) is exactly \(F'=B_FF\), and direct differentiation of \(F/\|F\|_2\) gives the Euclidean projector formula.
- Source-to-claim adequacy: Entrywise coefficient height controls the actual matrix \(B\) in the actual \(\theta\)-coordinate and Euclidean operator norm. The anchor is a genuine lower/nonvanishing source. The projector \(I-\gamma_F\gamma_F^{\mathsf T}\) has operator norm one, and \(\|B_F\|_{\mathrm{op}}\leq\|B\|_{\mathrm{op}}\), so the primitive identity yields \(\|\gamma_F'\|_2\leq\widehat\Lambda_{B,T}\) without assuming projective regularity.
- Residual-to-target adequacy: The produced matrix, feature vector, normalized curve, coordinate, and Euclidean norm are exactly those consumed downstream. No transform or surrogate target is introduced; residual zero.
- Key positive/control term or structural source: The literal anchor \(F_{j_*}=1\) and the static coefficient list of \(B\).
- Opposing defect terms: Polynomial growth in \(\theta\), normalization denominators, and possible off-block entries of \(B\). They are controlled by \(T_*^\ell\), the anchor, and the fact that the \(F_0\) column is multiplied by \(F_0=0\) in the homogeneous branch.
- Closure/dominance/absorption relation: \(\|B\|_{\mathrm{op}}\leq\|B\|_{\mathrm F}\leq\widehat\Lambda_{B,T}\) and \(\|\gamma_F'\|_2\leq\|B_F\|_{\mathrm{op}}\leq\widehat\Lambda_{B,T}\), with no omitted term.
- Accumulation behavior / scope compatibility: Pointwise static control on all of \(\Theta\); taking a supremum creates no additive defect or iterative accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The anchor and coefficient list are primitive and available before any sweep or root conclusion. Dependency path: primitives -> `step_001` -> all certificate consumers.
- Entry-state / first-update stress result: N/A because this is a static algebraic/differential certificate, not a recursive process. At every allowed \(\theta\), the anchor is already active before normalization is consumed.
- Baseline conclusion preserved: The same calculation must give \((\sum_{k=1}^dk^2)^{1/2}\) for the monic tuple and \(1/\delta\) for Counter-example 1; neither scale may be absorbed into a hidden constant.
- Producer-consumer provenance: Producer `step_001`; consumers `step_002`, `step_003` (regularity and pivot coverage), `step_006`, `step_008`, `step_011`, and `step_012` transitively.
- Null or boundary regime tested: \(q=0\), \(m=0\), \(N=1\), interval endpoints, constant \(B\), and \(\widehat\Lambda_{B,T}=0\). If the certificate is zero, \(B\equiv0\) on \(\Theta\), so the asserted derivative bounds are zero.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the anchor, normalization and pivot coverage can fail. The primitive setting excludes that regime. If the coefficient height vanishes, the target upper bounds correctly collapse to zero because the feature tuple is constant under the closure identity.
- Repair route if source is unsupported: None; all inputs are primitive and convention-matched.

### `step_002`

- Step ID: `step_002`
- Claim class: Proper-affine-subspace and absolute-continuity nullity certificate.
- Theorem role: Removes persistent affine zero combinations without adding a theorem-facing exclusion or simple-root assumption.
- Mechanism source: Direct linear-algebra derivation. For every nondegenerate interval \(I\subseteq\Theta\), the set
  
  \[
  Z_\infty(I)=\{a\in\mathbb R^N:F_0+\langle a,F\rangle\equiv0\text{ on }I\}
  \]
  
  is an intersection of affine hyperplanes and hence is empty or affine. It is proper: if both \(a\) and \(a+e_{j_*}\) belonged to it, their associated functions would differ by \(F_{j_*}\equiv1\). `assump:cube-density-laws` then gives \(\mu(Z_\infty(I))=0\) for every admissible law.
- Source-to-claim adequacy: The anchor supplies the exact direction that proves properness; absolute continuity of the full joint law, not independence, makes every proper affine subspace null.
- Residual-to-target adequacy: \(Z_\infty(I)\) is exactly the persistent-root coefficient class for the tested interval; taking \(I=\Theta\) also gives the global class mentioned in the formalized goal. It is removed only modulo zero probability under the same law and coefficient space; residual zero in probability.
- Key positive/control term or structural source: Translation by the anchored coefficient changes the function identically by one.
- Opposing defect terms: Possible linear dependence among the remaining features and possible nonemptiness of \(Z_\infty(I)\). Neither matters: properness, not emptiness, is sufficient.
- Closure/dominance/absorption relation: \(\operatorname{Leb}^N(Z_\infty(I))=0\), hence \(\mu(Z_\infty(I))=\int_{Z_\infty(I)}f_\mu=0\).
- Accumulation behavior / scope compatibility: The same static set works for every interval and law; there is no repeated-scope defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Properness follows from the primitive anchor before the area formula is used. Dependency path: `step_001` anchor certificate -> `step_002` -> `step_003` and final assembly.
- Entry-state / first-update stress result: N/A because this is a static exceptional-set calculation. A persistent root is tested directly rather than through a first transition.
- Baseline conclusion preserved: In the monic specialization the deterministic leading term remains outside the random vector; any persistent polynomial-zero coefficient class is law-null rather than represented by a singular augmented law.
- Producer-consumer provenance: Producer `step_002`; consumers `step_003` and `step_012`.
- Null or boundary regime tested: \(N=1\), empty \(Z_\infty(I)\), nonempty but proper \(Z_\infty(I)\), and constant feature dictionaries.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If the full joint law were not absolutely continuous, a proper affine subspace could carry mass. `assump:cube-density-laws` excludes that regime.
- Repair route if source is unsupported: None.

### `step_003`

- Step ID: `step_003`
- Claim class: General affine pivot-chart union-area inequality with measurable exhaustion and multiplicity.
- Theorem role: Produces the common coefficient-space sweep interface used by the coordinate-free, monic, and final affine clauses.
- Mechanism source: Standard Euclidean area formula in a current-notation wrapper. For each partition cell and exhaustion level define
  
  \[
  D_{j,n}=\{(\theta,\beta):\theta\in E_{j,n},\ \beta\in[-R,R]^{N-1},\ |T_j(\theta,\beta)|\leq R\}.
  \]
  
  The root coefficient event is analytic as the projection of the Borel incidence set and therefore is Lebesgue measurable. On \(E_{j,n}\times[-R,R]^{N-1}\), the quotient formula is Lipschitz because the endpoint denominators have magnitude at least \(1/n\) and all \(C^1\) numerators and derivatives are bounded on compact \(\Theta\). Use the measurable-domain area formula, equivalently a Lipschitz extension followed by restriction; its outer-measure form also controls each chart image before measurability completion. The map \(\Psi_j\) outputs the actual coefficient vector and satisfies \(|\det D\Psi_j|=|\partial_\theta T_j|\). Azais--Wschebor, *Level Sets and Extrema of Random Processes and Fields*, DOI:10.1002/9780470434642, supplies area/coarea regularity context; Balcan--Dick--Pegden, Theorem 18, arXiv:1904.09014, supplies affine-coefficient lineage. Neither is invoked as a black-box result for arbitrary \(F_0,F\).
- Source-to-claim adequacy: If \(\alpha\in[-R,R]^N\setminus Z_\infty(I)\) has a root at \(\theta\in E_{j,n}\), then \(\beta=\alpha_{-j}\), \(T_j(\theta,\beta)=\alpha_j\), and \(\alpha=\Psi_j(\theta,\beta)\). The area formula gives image volume at most \(\int_{D_{j,n}}|\partial_\theta T_j|\); multiple roots only increase the counting multiplicity, and tangent roots are handled by the same critical-image formula. Since \(E_{j,n}\uparrow E_j\), every nonzero pivot enters at a finite level. Density domination and monotone convergence give the indicator form, and enlarging the beta domain gives the form without the indicator.
- Residual-to-target adequacy: The produced coefficient is exactly \(\alpha\), and \(F_0(\theta)+\langle\Psi_j(\theta,\beta),F(\theta)\rangle=0\) identically on the chart. The consumed event uses the same law, cube, interval, and affine function. Exhaustion leaves no uncovered root; \(Z_\infty(I)\) and endpoint-only hyperplane slices are law-null by `step_002` and absolute continuity.
- Key positive/control term or structural source: The selected nonzero pivot and exact full-dimensional Jacobian \(|\partial_\theta T_j|\).
- Opposing defect terms: Pivots approaching zero, arbitrary measurable cells, tangent and multiple roots, repeated chart preimages, interval endpoints, arbitrary coefficient correlation, and persistent roots. Exhaustion, area multiplicity, coefficient-null boundary slices, the joint density cap, and `step_002` control them.
- Closure/dominance/absorption relation: For the root event \(E_{\mathrm{root}}\),
  
  \[
  \Pr(E_{\mathrm{root}})
  \leq\kappa\sum_j\int_{E_j}\int_{[-R,R]^{N-1}}
  \mathbf1\{|T_j|\leq R\}|\partial_\theta T_j|\,d\beta d\theta,
  \]
  
  followed by the pointwise domination \(\mathbf1\{|T_j|\leq R\}\leq1\).
- Accumulation behavior / scope compatibility: The accumulated quantity is a nonnegative Jacobian on \(E_{j,n}\uparrow E_j\). Monotone convergence is the concrete control relation; no signed forcing occurs. The general chart integral is finite in all later consumers (`step_004` through compact section bounds and `step_010` through explicit velocities); an extended-real intermediate inequality would still be valid.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The pivot cover comes from \(F\neq0\), already produced by `step_001`; finite-level domains are defined before their images are consumed, and `step_002` handles the only persistent-root class. Dependency path: (`step_001`, `step_002`, primitives) -> `step_003` -> (`step_004`, `step_010`).
- Entry-state / first-update stress result: At any root with \(\theta\in E_j\), \(F_j(\theta)\neq0\), so a first finite \(n\geq1/|F_j(\theta)|\) activates the chart before the coefficient event is consumed. No uniform pivot margin is needed.
- Baseline conclusion preserved: The chart acts on the original \(N\)-dimensional random vector and leaves \(F_0\) deterministic, which is exactly the object interface needed for monic recovery.
- Producer-consumer provenance: Producer `step_003`; consumers `step_004`, `step_010`, and `step_012`.
- Null or boundary regime tested: \(N=1\) (zero-dimensional beta cube), empty cells, pivots tending to zero, zero Jacobian, tangent or multiple roots, endpoint roots, and persistent affine zeros.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If no pivot were nonzero at a root, coverage would fail. The anchor makes \(F\neq0\) everywhere and permits, for example, the global fallback partition \(E_{j_*}=I\).
- Repair route if source is unsupported: None; object mapping, determinant, exhaustion, exceptional set, and density interfaces are fixed.

### `step_004`

- Step ID: `step_004`
- Claim class: Exact chart-to-coordinate-free affine swept-area conversion.
- Theorem role: Exports the first displayed affine area integral from the common pivot sweep without introducing a second root theorem.
- Mechanism source: Direct fixed-section change of variables in the exact Euclidean convention. For fixed \(\theta\in E_j\), \(\beta\mapsto\Psi_j(\theta,\beta)\) bijects \(\{|T_j|\leq R\}\) with \(H_\theta\cap[-R,R]^N\), its \((N-1)\)-Jacobian is \(\|F(\theta)\|_2/|F_j(\theta)|\), and differentiating the chart identity gives
  
  \[
  \partial_\theta T_j
  =-\frac{F_0'+\langle\Psi_j,F'\rangle}{F_j}.
  \]
  
  Therefore
  
  \[
  |\partial_\theta T_j|\,d\beta
  =\frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
  \,d\mathcal H^{N-1}(a).
  \]
- Source-to-claim adequacy: All objects are the actual affine hyperplane, coefficient cube, and Euclidean Hausdorff measure in the target. The identity holds for every legal pivot and exactly matches the normal-velocity integrand; no cited source is asked to supply a stronger affine statement.
- Residual-to-target adequacy: The chart image is exactly the consumed translated section, with a bijective object map for fixed \(\theta\). The transfer relation is equality, so there is no residual or wrong-metric term.
- Key positive/control term or structural source: The nonzero \(F_j\) supplies both chart solvability and the matching Jacobian factors that cancel.
- Opposing defect terms: Pivot-dependent denominators and translated offsets. Both cancel algebraically in the section measure/velocity product; there is no uncontrolled defect.
- Closure/dominance/absorption relation: Sum the fixed-\(\theta\) equality over the disjoint partition \(E_j\), then insert it into `step_003` to obtain exactly the coordinate-free first inequality.
- Accumulation behavior / scope compatibility: Equality is pointwise in \(\theta\); integrating over a finite-measure interval introduces no accumulation defect, and partition dependence disappears after summation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The chart inequality is already produced by `step_003`; the fixed-section identity uses only primitive \(F_0,F\). Dependency path: `step_003` -> `step_004` -> `step_007`, `step_008`.
- Entry-state / first-update stress result: N/A because this is a static coordinate conversion. At the first chart use, the pivot is already nonzero by the partition definition.
- Baseline conclusion preserved: The coordinate-free theorem and monic chart theorem are two interfaces of the same area formula; neither replaces the other.
- Producer-consumer provenance: Producer `step_004`; consumers `step_007`, `step_008`, and final assembly.
- Null or boundary regime tested: \(N=1\), translated section empty, \(F_0=0\), and zero normal velocity. The \(0\)-dimensional Jacobian convention gives the same identity in \(N=1\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: If \(F_j=0\), that chart is not used. The partition/anchor guarantees another legal pivot.
- Repair route if source is unsupported: None.

### `step_005`

- Step ID: `step_005`
- Claim class: Translated cube-section upper bound with orientation-uniform constant.
- Theorem role: Supplies the geometric section factor used in both general affine and homogeneous estimates.
- Mechanism source: A direct Brunn--Minkowski current-notation wrapper followed by Ball, *Cube Slicing in \(\mathbb R^n\)*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0. For a unit normal \(u\), let \(v(t)=\mathcal H^{N-1}([-R,R]^N\cap(u^\perp+tu))\). Convexity and Brunn--Minkowski make \(v(t)^{1/(N-1)}\) concave on its support for \(N\geq2\); cube symmetry makes \(v\) even, hence \(v(t)\leq v(0)\). Ball's source object is a central section of a unit-volume Euclidean cube; scaling by \(2R\) gives \(v(0)\leq\sqrt2(2R)^{N-1}\). The \(N=1\) case is direct using \(\mathcal H^0\).
- Source-to-claim adequacy: The translated affine section \(H_\theta\cap[-R,R]^N\) is exactly a parallel section with Euclidean unit normal \(F/\|F\|_2\). Central maximality handles the offset, and Ball controls every central orientation. Ball does not control motion or density; those nonoutputs are supplied by `step_004` and `assump:cube-density-laws`.
- Residual-to-target adequacy: The source cube scales exactly to the consumed cube and uses the same Hausdorff measure. Translation is removed by a proved inequality on the same normal direction, not by replacing the target section; no residual remains.
- Key positive/control term or structural source: Symmetry and convexity of the coefficient cube, followed by Ball's sharp \(\sqrt2\) central-section cap.
- Opposing defect terms: Arbitrary affine offset, arbitrary orientation, empty sections, and dimension \(N=1\). Even concavity controls the offset, Ball controls orientation, empty sections are trivial, and \(N=1\) is handled directly.
- Closure/dominance/absorption relation:
  
  \[
  \mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
  \leq\mathcal H^{N-1}(F(\theta)^\perp\cap[-R,R]^N)
  \leq\sqrt2(2R)^{N-1}.
  \]
- Accumulation behavior / scope compatibility: The bound is pointwise in \(\theta\), uniform in orientation and offset, and integrates over any interval with the same constant. There is no cumulative defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Convex geometry is independent of the root-probability target and available before `step_007` or `step_008` consumes it. Dependency path: primitive cube -> `step_005` -> probability branches.
- Entry-state / first-update stress result: N/A because this is a static section estimate, not an iterative mechanism.
- Baseline conclusion preserved: The same section theorem supports the affine sweep, while exact monic recovery is still generated through the chart interface in `step_010` rather than replaced by this coarser section bound.
- Producer-consumer provenance: Producer `step_005`; consumers `step_007` and `step_008`.
- Null or boundary regime tested: Empty translated section, central section, \(N=1\), coordinate-aligned normal, and extremal diagonal orientations.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without an orientation-uniform section cap, the declared literal affine and homogeneous constants would not follow. Ball supplies the required source for every allowed orientation.
- Repair route if source is unsupported: None; source identity, convention, scaling, exact conclusion, and nonoutputs are fixed.

### `step_006`

- Step ID: `step_006`
- Claim class: Root-section affine normal-velocity upper bound.
- Theorem role: Transfers the static derivative certificate into the exact integrand exported by `step_004`.
- Mechanism source: Direct primitive-source derivation using `assump:anchored-derivative-closure` and `step_001`. For \(a\in H_\theta\cap[-R,R]^N\),
  
  \[
  |F_0|=|\langle a,F\rangle|
  \leq\|a\|_2\|F\|_2\leq R\sqrt N\|F\|_2.
  \]
  
  Hence \(\|\widetilde F\|_2\leq\sqrt{1+NR^2}\|F\|_2\), while \(\|(1,a)\|_2\leq\sqrt{1+NR^2}\). Since
  
  \[
  F_0'+\langle a,F'\rangle
  =\langle(1,a),B\widetilde F\rangle,
  \]
  
  Cauchy--Schwarz and `step_001` give
  
  \[
  \frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
  \leq(1+NR^2)\widehat\Lambda_{B,T}.
  \]
- Source-to-claim adequacy: The root equation supplies the needed control of the deterministic offset on the actual section; it is not an assumed amplitude bound. The closure identity controls the exact derivative numerator in the exact Euclidean norm, and the coefficient-height certificate controls the actual \(B\).
- Residual-to-target adequacy: The produced velocity is exactly the integrand consumed by `step_007` on the same \(a,\theta,F_0,F\). Every factor is target-side and no surrogate residual exists.
- Key positive/control term or structural source: Algebraic coupling of \(F_0\) to \(F\) on the root section, together with \(\widetilde F'=B\widetilde F\).
- Opposing defect terms: The affine offset \(F_0\), coefficient magnitude \(a\), and all entries of \(B\). Root-section coupling controls \(F_0\), cube support controls \(a\), and `step_001` controls \(B\).
- Closure/dominance/absorption relation: The two factors \(\sqrt{1+NR^2}\) multiply exactly to \(1+NR^2\); no term is dropped or absorbed.
- Accumulation behavior / scope compatibility: Pointwise deterministic domination of a nonnegative integrand. Integrating over a section and interval introduces no forcing or iterative accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The root equation and derivative closure precede the velocity claim; neither assumes the final swept-area bound. Dependency path: `step_001` plus primitive root-section identity -> `step_006` -> `step_007`.
- Entry-state / first-update stress result: N/A because this is a static sectionwise inequality. At any first root point the coupling \(|F_0|=|\langle a,F\rangle|\) is already active.
- Baseline conclusion preserved: For a constant certificate \(\widehat\Lambda=0\), the entire affine tuple is constant and the root event is a fixed affine hyperplane of law measure zero, so the zero bound is exact rather than a false vanishing mechanism.
- Producer-consumer provenance: Producer `step_006`; consumer `step_007` and final assembly transitively.
- Null or boundary regime tested: \(R\downarrow0\) is outside the strict primitive regime but the algebra has the correct limit; \(N=1\), \(F_0=0\), empty sections, \(a=0\), and \(\widehat\Lambda=0\) are covered.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without root-section coupling, a large unconstrained \(F_0\) could defeat the velocity transfer. The exact root equation supplies the coupling on every consumed section.
- Repair route if source is unsupported: None.

### `step_007`

- Step ID: `step_007`
- Claim class: General affine explicit-rate specialization and all-law/all-interval closure.
- Theorem role: Produces the displayed affine probability bound and \(C^{\mathrm{aff}}_{\mathcal D}\) certificate.
- Mechanism source: Accepted-derived interfaces `step_004`, `step_005`, and `step_006`, plus the primitive density cap. No new theorem, regularity condition, or hidden simplification is introduced.
- Source-to-claim adequacy: `step_004` gives the exact coefficient-volume/probability integral; `step_006` bounds its actual velocity pointwise; `step_005` bounds its actual translated section. All conventions, objects, and norms match.
- Residual-to-target adequacy: The technical integral and public probability bound concern the same affine root event and same coefficient law. The transfer residual is zero; the only conversion is exact multiplication of literal factors.
- Key positive/control term or structural source: The pointwise product of the velocity certificate and the uniform section-area certificate.
- Opposing defect terms: Dependence on \(\mu\), \(I\), section offset/orientation, coefficient correlations, and hidden Pfaffian degrees. Earlier outputs are uniform in all of these; \(q,M,\Delta\) have explicitly degree-zero additional dependence after \(B\) is fixed.
- Closure/dominance/absorption relation:
  
  \[
  \begin{aligned}
  \Pr(E_{\mathrm{root}})
  &\leq\kappa|I|\,\sqrt2(2R)^{N-1}
  (1+NR^2)\widehat\Lambda_{B,T}\\
  &=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
  \end{aligned}
  \]
  
  Division by positive \(|I|\) and the two defining suprema give the stated \(C^{\mathrm{aff}}_{\mathcal D}\) bound.
- Accumulation behavior / scope compatibility: The local nonnegative bound integrates as a constant times \(|I|\). The same deterministic constant holds separately for every law and interval, so the suprema add no probability or horizon defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Each quantitative input is produced independently before the affine rate is formed. Dependency path: `step_003` -> `step_004`; `step_005`; `step_001` -> `step_006`; all merge at `step_007`.
- Entry-state / first-update stress result: N/A because the all-interval conclusion is a static integration and supremum closure, not a recursive mode conversion. For \(\widehat\Lambda=0\), `step_006` and `step_002` show the event is a fixed law-null hyperplane.
- Baseline conclusion preserved: The affine chart output remains separately available to `step_010`, so the coarse section constant is not substituted for the exact monic constant.
- Producer-consumer provenance: Producer `step_007`; consumer `step_012`; final use is the general affine clause and \(C^{\mathrm{aff}}\) conclusion.
- Null or boundary regime tested: \(N=1\), \(\widehat\Lambda=0\), empty sections, and arbitrarily short positive-length intervals.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Missing either section geometry or velocity control would leave the explicit constant unsupported. Both are earlier legal producers.
- Repair route if source is unsupported: None.

### `step_008`

- Step ID: `step_008`
- Claim class: Sharper homogeneous projective specialization and \(C^{\mathrm{Pf}}_{\mathcal D}\) closure.
- Theorem role: Produces the source-facing homogeneous bound with the exact \(A\sqrt{N/2}\) coefficient and then substitutes the static certificate.
- Mechanism source: `step_004` specialized to \(F_0=0\), `step_005` for central sections, and the projective identity from `step_001`. On \(H_\theta=F(\theta)^\perp=\gamma_F(\theta)^\perp\), write \(F=r\gamma_F\); since \(\langle a,\gamma_F\rangle=0\),
  
  \[
  \frac{|\langle a,F'\rangle|}{\|F\|_2}
  =|\langle a,\gamma_F'\rangle|
  \leq R\sqrt N\,\|\gamma_F'\|_2.
  \]
  
  Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9, supplies a source-convention cross-check for this arbitrary-density homogeneous integrand; it does not supply the affine chart, Ball factor, or derivative certificate.
- Source-to-claim adequacy: The normal-velocity identity acts on the actual normalized feature curve and actual central coefficient section. Ball's theorem maps exactly as recorded in `step_005`, and `step_001` supplies \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda\) in the same norm and coordinate.
- Residual-to-target adequacy: The produced normalized curve is \(F/\|F\|_2\) for the same homogeneous root event. The scalar factor \(r=\|F\|_2\) cancels exactly; no transformed-object or scale residual remains.
- Key positive/control term or structural source: Orthogonality \(a\perp\gamma_F\), which removes radial motion and leaves only projective motion.
- Opposing defect terms: Radial derivative \(r'\), coefficient magnitude, section orientation, arbitrary correlation, and possible stationary projective motion. Orthogonality cancels \(r'\), cube support and Ball control the next two, the full density cap controls correlation, and stationary motion produces only a fixed hyperplane.
- Closure/dominance/absorption relation:
  
  \[
  \kappa R\sqrt N\,\sqrt2(2R)^{N-1}
  =A\sqrt{\frac N2},
  \]
  
  followed by \(\int_I\|\gamma_F'\|\leq\Gamma_{\mathrm{proj}}|I|\leq\widehat\Lambda_{B,T}|I|\) and the defining suprema.
- Accumulation behavior / scope compatibility: Nonnegative projective speed integrates over each interval. The same \(\Gamma_{\mathrm{proj}}\) controls all intervals; no law-wise union bound, temporal recurrence, or persistent defect is accumulated.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Nonvanishing and projective speed are produced by `step_001` before the homogeneous root event is bounded; the section and area interfaces are earlier independent outputs. Dependency path: (`step_001`, `step_004`, `step_005`) -> `step_008`.
- Entry-state / first-update stress result: This is a static specialization, but the exact/no-motion boundary is traced: if \(\Gamma_{\mathrm{proj}}=0\) on connected \(\Theta\), \(\gamma_F\) is constant, every root section is one fixed hyperplane, and absolute continuity makes the root event probability zero before the zero upper bound is consumed.
- Baseline conclusion preserved: Counter-example 1 retains \(\Gamma_{\mathrm{proj}}=\widehat\Lambda=1/\delta\). Exact affine-monic recovery remains assigned to `step_010` and is not weakened to this homogeneous result.
- Producer-consumer provenance: Producer `step_008`; consumers `step_011` and `step_012`.
- Null or boundary regime tested: \(N=1\), \(\Gamma_{\mathrm{proj}}=0\), constant radial rescalings, \(a=0\), interval endpoints, and \(\widehat\Lambda=0\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: If orthogonality did not remove radial motion, projective speed would not control the sweep. The root-section equation supplies exact orthogonality.
- Repair route if source is unsupported: None.

### `step_009`

- Step ID: `step_009`
- Claim class: Exact monic object mapping, derivative-certificate calculation, pivot support, and chart-velocity caps.
- Theorem role: Supplies every deterministic specialization input needed for `step_010` to recover the source baseline from the common affine sweep.
- Mechanism source: Direct \(q=0\) current-notation calculation. For \(\widetilde F=(\theta^d,1,\theta,\ldots,\theta^{d-1})\), the constant matrix has nonzero entries \(B_{0,d}=d\) and \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\). Thus \(\widetilde F'=B\widetilde F\) and
  
  \[
  \widehat\Lambda_{B,T}=\|B\|_{\mathrm F}
  =\left(\sum_{k=1}^dk^2\right)^{1/2}.
  \]
  
  The chain is empty, \(q=M=0\), the augmented output degree is \(\Delta=d\), \(N=d\), \(m=0\), \(A=(2R)^d\kappa\), and \(F_1=1\). On \(E_1=J\cap\{|\theta|\leq1\}\), solve for \(\alpha_0\); on \(E_d=J\cap\{|\theta|>1\}\), solve for \(\alpha_{d-1}\).
- Source-to-claim adequacy: The two exact maps are
  
  \[
  T_1=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,\qquad
  T_d=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
  \]
  
  Direct differentiation gives
  
  \[
  |T_1'|\leq d+R\sum_{k=1}^{d-1}k,\qquad
  |T_d'|\leq1+R\sum_{k=0}^{d-2}(d-1-k)
  \]
  
  in their respective regimes. For the second inequality, every factor \(|\theta|^{k-d}\leq1\) on \(|\theta|>1\). For \(d=1\), \(T_1=-\theta\) and \(|T_1'|=1\).
- Residual-to-target adequacy: \(F_0+\langle\alpha,F\rangle\) is exactly \(p_\alpha\), and the produced random vector is exactly the \(d\) lower coefficients consumed by the baseline theorem. The leading coefficient remains deterministic; object, dimension, interval, and scalar metric residuals are zero.
- Key positive/control term or structural source: The constant pivot \(F_1=1\) on the inner region and the nonzero pivot \(F_d=\theta^{d-1}\) on the outer region.
- Opposing defect terms: Growth of lower monomials, negative powers after the outer pivot, the transition \(|\theta|=1\), unbounded location of a bounded \(J\), and the \(d=1\) empty-sum case. The two-region split and separate \(d=1\) calculation control all of them.
- Closure/dominance/absorption relation:
  
  \[
  \sum_{k=1}^{d-1}k=\sum_{k=0}^{d-2}(d-1-k)=\frac{d(d-1)}2,
  \qquad
  1+\frac{Rd(d-1)}2\leq d+\frac{Rd(d-1)}2.
  \]
- Accumulation behavior / scope compatibility: Pointwise velocity caps on a disjoint two-set partition; later integration charges each point of \(J\) once and has total budget \(|E_1|+|E_d|=|J|\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: The explicit monomial tuple independently produces its certificate, legal pivots, and velocities before the affine chart theorem is specialized. Dependency path: primitive monic data -> `step_009` -> `step_010`.
- Entry-state / first-update stress result: At \(\theta=0\) and \(|\theta|=1\), the inner constant pivot is active; for \(|\theta|>1\), \(F_d\neq0\) before the chart is consumed. For \(d=1\), the constant pivot is active everywhere.
- Baseline conclusion preserved: The exact monic polynomial, exact coefficient dimension, and exact two-pivot velocity constant are produced with no singular random augmentation or auxiliary remainder.
- Producer-consumer provenance: Producer `step_009`; consumer `step_010` and final assembly transitively.
- Null or boundary regime tested: \(d=1\), \(d=2\), \(\theta=0\), \(|\theta|=1\), empty partition pieces, a zero-length \(J\), and \(J\) lying wholly in either region.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If the chosen pivot vanished, the chart would be undefined. The explicit partition guarantees a nonzero pivot in every branch.
- Repair route if source is unsupported: None.

### `step_010`

- Step ID: `step_010`
- Claim class: Exact affine-monic Rate Specialization Bridge.
- Theorem role: Recovers the mandatory polynomial baseline from `step_003` itself with literal constants.
- Mechanism source: Accepted-derived chart inequality `step_003` and exact monic certificate `step_009`. No independent polynomial-root theorem is used.
- Source-to-claim adequacy: `step_003` applies with \(N=d\) to the actual \(d\)-dimensional lower-coefficient law, and `step_009` supplies the measurable legal pivot partition. Dropping the chart indicator is allowed by `step_003`; integrating each remaining beta cube gives exactly \((2R)^{d-1}\).
- Residual-to-target adequacy: The producer event is exactly \(\{\exists\theta\in J:p_\alpha(\theta)=0\}\). The produced and consumed coefficient vector, interval, law, and scalar target coincide, so the residual is zero.
- Key positive/control term or structural source: Uniform velocity cap \(V_d=d+Rd(d-1)/2\), beta-volume \((2R)^{d-1}\), and disjoint partition length.
- Opposing defect terms: The smaller outer-chart constant, coefficient correlation, the location of \(J\), and \(d=1\). The explicit domination by \(V_d\), full joint density cap, two-region split, and zero-dimensional beta-volume convention handle them.
- Closure/dominance/absorption relation:
  
  \[
  \begin{aligned}
  \Pr[\exists\theta\in J:p_\alpha(\theta)=0]
  &\leq\kappa(2R)^{d-1}V_d(|E_1|+|E_d|)\\
  &=\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)|J|.
  \end{aligned}
  \]
- Accumulation behavior / scope compatibility: Two nonnegative chart integrals add over a finite disjoint partition. There is no repeated-time defect, and the bound is independent of \(J\)'s location.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The general chart theorem is proved before specialization, and the monic calculations are independent of the desired baseline probability. Dependency paths merge only at `step_010`.
- Entry-state / first-update stress result: At the first chart use for every \(\theta\in J\), `step_009` already supplies a nonzero pivot and exact polynomial equality; no limiting singular-law construction must activate.
- Baseline conclusion preserved: Exactly \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)|J|\) for every \(d\geq1\), bounded \(J\), and arbitrary correlated lower-coefficient law. No mode, dimension, constant, or conclusion is weakened.
- Producer-consumer provenance: (`step_003`, `step_009`) -> `step_010` -> `step_012`.
- Null or boundary regime tested: \(d=1\) gives \(\kappa|J|\), using \((2R)^0=1\); \(|\theta|=1\) is in the inner chart; empty chart pieces cause zero contribution. If \(J\) has zero length, its root event is one affine hyperplane and is law-null, matching the zero right-hand side.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without either the actual affine chart theorem or exact velocity certificate, the baseline would not follow. Both sources are earlier and object-compatible.
- Repair route if source is unsupported: None.

### `step_011`

- Step ID: `step_011`
- Claim class: Counter-example 1 exact upper/lower scale audit.
- Theorem role: Verifies that the new static coefficient-height normalization quantitatively records the source obstruction.
- Mechanism source: Direct current-notation matrix, normalized-curve, and planar-area calculation. The presentation has \(q=M=0\), \(\Delta=1\), \(N=2\), and \(m=0\). For \(\widetilde F=(0,1,\theta/\delta)\), take the single nonzero matrix entry \(B_{2,1}=1/\delta\), so \(\widehat\Lambda=1/\delta\). Writing \(x=\theta/\delta\),
  
  \[
  \|\gamma_F'(\theta)\|_2=\frac{1}{\delta(1+x^2)},
  \]
  
  hence \(\Gamma_{\mathrm{proj}}=1/\delta\). For \(t=\epsilon/\delta\leq1\), a root in \([0,\epsilon]\), off null coordinate axes, is equivalent to opposite coefficient signs and \(|\alpha_1|\leq t|\alpha_2|\).
- Source-to-claim adequacy: The two opposite-sign triangular wedges have total square area
  
  \[
  2\int_0^1tu\,du=t.
  \]
  
  The uniform density is \(1/4\), yielding \(\epsilon/(4\delta)\). `step_008` with \(A=1,N=2\) gives the matching-order upper bound \(1/\delta\).
- Residual-to-target adequacy: The produced event, feature tuple, law, interval, coordinate, and Euclidean norm are exactly the source counterexample. Axes and wedge boundaries have planar measure zero; there is no asymptotic residual.
- Key positive/control term or structural source: The literal slope/certificate entry \(1/\delta\), which is active at \(\theta=0\).
- Opposing defect terms: Coefficient axes, both sign cases, the range restriction \(\epsilon\leq\delta\), and possible suppression of \(\delta\) by formal degree data. Null axes do not affect probability, both sign quadrants are included, the restriction keeps wedges inside the square, and the coefficient height explicitly records \(\delta\).
- Closure/dominance/absorption relation: Probability \(=(\epsilon/\delta)/4\), so dividing by \(|I|=\epsilon\) gives \(1/(4\delta)\), while the theorem gives \(A\sqrt{N/2}\widehat\Lambda=1/\delta\).
- Accumulation behavior / scope compatibility: One exact interval calculation; the ratio is constant for every \(0<\epsilon\leq\delta\). No iterative or limiting defect is accumulated.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The lower probability and certificate are derived directly from the example, independently of the theorem upper bound; `step_011` only compares it with the earlier output `step_008`.
- Entry-state / first-update stress result: At the interval entry \(\theta=0\), \(\gamma_F=(1,0)\) and \(\|\gamma_F'(0)\|=1/\delta\), so the projective mechanism is active before the root event is consumed.
- Baseline conclusion preserved: The required \(1/\delta\) scale is exact. The separate affine-monic baseline from `step_010` is unaffected.
- Producer-consumer provenance: Direct example and `step_008` -> `step_011` -> `step_012`.
- Null or boundary regime tested: \(\epsilon=\delta\), \(\epsilon\downarrow0\), \(\delta=1\), coefficient axes, and wedge boundaries.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If \(\widehat\Lambda\) failed to scale as \(1/\delta\), the upper theorem would contradict the exact lower ratio. The supplied certificate excludes that failure.
- Repair route if source is unsupported: None.

### `step_012`

- Step ID: `step_012`
- Claim class: Full exact-goal theorem assembly and quantitative-mode closure.
- Theorem role: States every inseparable formalized-goal clause together without adding a lemma, assumption, or new mechanism.
- Mechanism source: Accepted-derived outputs `step_001`--`step_011` only. The general affine output is `step_007`, the sharper homogeneous output is `step_008`, exact monic recovery is `step_010`, and the scale audit is `step_011`; `step_003` supplies the required equivalent chart statement.
- Source-to-claim adequacy: Each final clause is identical to an earlier producer output in the same Balcan convention, coefficient dimension, probability mode, interval mode, and norm. Assembly introduces no external theorem or hidden simplification.
- Residual-to-target adequacy: All produced objects are consumed on the same \(F_0,F,p_\alpha\), law class, coefficient cube, interval, and Euclidean metric. Every transfer residual is zero; only the explicit inequalities already recorded in the producer steps remain.
- Key positive/control term or structural source: The dependency-closed set of static certificate, sweep, section, specialization, and exact-audit outputs.
- Opposing defect terms: Clause loss, hidden \(q,M,\Delta\) dependence, changed law or interval scope, a singular leading-coordinate representation, unhandled tangent/multiple roots, and suppressed \(1/\delta\) scale. Each is excluded by a named producer.
- Closure/dominance/absorption relation: Conjoin `step_001`, `step_003`, `step_007`, `step_008`, `step_010`, and `step_011` verbatim, including all stated parameter and mode audits.
- Accumulation behavior / scope compatibility: No recursive scope is introduced. All-interval and all-law uniformity comes from one deterministic constant valid for each pair; pivot exhaustion is already closed by monotone convergence; monic integration uses a finite partition.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Every assembly input has an earlier producer, and no producer assumes the final theorem. The dependency graph below is acyclic.
- Entry-state / first-update stress result: The anchor is active before every normalization and chart; every affine root enters a finite exhaustion level; every monic point has an active prescribed pivot; Counter-example projective motion is active at \(\theta=0\).
- Baseline conclusion preserved: The exact affine-monic constant and arbitrary-correlated-law scope from `step_010` appear verbatim, not as a homogeneous or coarser affine surrogate.
- Producer-consumer provenance: All earlier required producers -> `step_012` -> final theorem statement.
- Null or boundary regime tested: \(N=1\), \(q=0\), \(m=0\), \(\widehat\Lambda=0\), tangent/multiple roots, persistent-root null sets, \(d=1\), \(|\theta|=1\), and \(\epsilon=\delta\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Any missing producer removes an inseparable goal clause; every producer is explicitly allocated before assembly.
- Repair route if source is unsupported: None under the current sketch; a later local failure routes to its producer unless review finds a genuine sketch or theorem-contract defect.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| \(F\neq0\), \(\sup_\Theta\|B\|_{\mathrm{op}}\leq\widehat\Lambda_{B,T}\), and, for \(F_0=0\), \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda_{B,T}\) | `step_001`, direct primitive-source derivation | Anchor \(F_{j_*}=1\); polynomial coefficient list; \(\lvert\theta\rvert\leq T_*\); exact closure identity | Polynomial evaluation controlled entrywise by \(T_*^\ell\); normalization by anchor; homogeneous block by \(F_0=0\); no uncontrolled term | Actual \(B,F,\gamma_F\), same \(\theta\)-coordinate and Euclidean norm; residual zero | Operator \(\leq\) Frobenius \(\leq\) coefficient height; projector norm one | Literal anchor one; no chosen threshold | `step_002`, `step_003`, `step_006`, `step_008`, `step_011`, `step_012` | None |
| Law-null persistent-root locus \(Z_\infty(I)\) | `step_002` | Anchor direction and full joint absolute continuity | Feature dependence may make the locus nonempty but cannot make it full-dimensional; no uncontrolled mass under density cap | Exact persistent-root set in the consumed coefficient space; probability residual zero | Translation by \(e_{j_*}\) changes the function by one, proving properness; proper affine subspace has zero Lebesgue measure | Anchor one and absolute continuity | `step_003`, `step_012` | None |
| Indicator and indicator-dropped affine chart inequalities | `step_003`, standard Euclidean area formula in current notation | Nonzero pivot cover from anchor; \(C^1\) features; finite \(1/n\) pivot margin; exact determinant; density cap; `step_002` | Near-zero pivots controlled by monotone exhaustion; tangent/multiple roots by area multiplicity; endpoints and persistent roots are null; arbitrary correlation by joint cap | \(\Psi_j\) outputs the actual coefficient vector and solves the actual affine equation; exhaustion residual empty | Image volume \(\leq\int\lvert\det D\Psi_j\rvert\); \(E_{j,n}\uparrow E_j\); indicator \(\leq1\) | Finite-level \(1/n\) is generated by exhaustion, not a theorem assumption | `step_004`, `step_010`, `step_012` | None |
| Coordinate-free affine normal-velocity integral | `step_004` | `step_003`; fixed-section bijection; exact section and chart Jacobians | Pivot denominators appear in both Jacobians and cancel; translated offset is retained exactly | Produced chart section equals \(H_\theta\cap[-R,R]^N\); same Hausdorff measure and velocity target; residual zero | \(\lvert T_j'\rvert d\beta=\lvert F_0'+\langle a,F'\rangle\rvert\,d\mathcal H^{N-1}/\|F\|\) | Legal nonzero pivot on each partition cell | `step_007`, `step_008`, `step_012` | None |
| \(\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)\leq\sqrt2(2R)^{N-1}\) | `step_005`; Brunn--Minkowski wrapper and Ball's main theorem | Symmetric convex cube; Euclidean normal; central cube-section theorem | Translation controlled by even concavity; orientation by Ball; empty and \(N=1\) cases direct | Ball's unit cube scales exactly to the consumed cube; translated target compared on the same normal; residual zero | \(v(t)\leq v(0)\leq\sqrt2(2R)^{N-1}\) | Symmetry/convexity and Ball's sharp cap | `step_007`, `step_008` | None |
| Affine velocity \(\leq(1+NR^2)\widehat\Lambda_{B,T}\) on each root section | `step_006` | Root equation; cube support; closure identity; `step_001` | \(F_0\) controlled only on the root section; \(a\) by cube support; \(B\) by certificate; no unrelated persistent term | Produced quantity is exactly the coordinate-free integrand numerator divided by \(\|F\|\); residual zero | \(\|(1,a)\|\|B\|\|\widetilde F\|/\|F\|\leq(1+NR^2)\widehat\Lambda\) | Root-section equality and anchor-backed nonzero denominator | `step_007` | None |
| General affine probability rate and \(C^{\mathrm{aff}}_{\mathcal D}\) bound | `step_007` | `step_004`, `step_005`, `step_006`, density cap | Offset, orientation, law, interval, and correlations all controlled by named inputs; no hidden \(q,M,\Delta\) term | Same affine event, law, interval, cube, and metric; residual zero | \(\kappa\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda=A(1+NR^2)\widehat\Lambda/(\sqrt2R)\) | Earlier section and velocity sources; no new slack | `step_012` | None |
| Homogeneous \(A\sqrt{N/2}\Gamma_{\mathrm{proj}}\) and certificate rates | `step_008` | `step_001`, `step_004`, `step_005`, cube support, density cap | Radial motion cancels by section orthogonality; magnitude/orientation/correlation controlled; stationary curve gives fixed null hyperplane | Same homogeneous event and same normalized target; radial-factor transfer is exact; residual zero | \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\), then \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda\) | Orthogonality and primitive anchor | `step_011`, `step_012` | None |
| Monic shift matrix, certificate, legal pivots, and \(V_d=d+Rd(d-1)/2\) velocity cap | `step_009`, direct \(q=0\) derivation | Explicit monomial tuple; constant inner pivot; outer \(\theta^{d-1}\) pivot; coefficient cube | Inner monomial derivatives, outer negative powers, transition, and \(d=1\) are separately controlled; no location residual | Produced affine expression is exactly \(p_\alpha\) on the same \(d\) lower coefficients; deterministic leading coefficient stays external | Direct derivatives; \(\lvert\theta\rvert^{k-d}\leq1\); two finite-sum identities; outer constant \(\leq V_d\) | Constant pivot one or \(\lvert\theta\rvert^{d-1}>1\) | `step_010` | None |
| Exact baseline \(\kappa(2R)^{d-1}V_d\lvert J\rvert\) | `step_010` | `step_003`, `step_009`, beta-volume and partition length | Correlation by full density cap; smaller outer rate explicitly dominated; \(d=1\) by zero-dimensional convention | Same polynomial event, coefficient dimension, law, interval, and scalar metric; residual zero | \(\kappa(2R)^{d-1}V_d(\lvert E_1\rvert+\lvert E_d\rvert)=\kappa(2R)^{d-1}V_d\lvert J\rvert\) | Velocity cap from `step_009`; no auxiliary margin | `step_012` | None |
| Counter-example \(\widehat\Lambda=\Gamma_{\mathrm{proj}}=1/\delta\), upper \(1/\delta\), and exact probability \(\epsilon/(4\delta)\) | `step_011` | Explicit constant matrix, normalized curve, uniform square density, \(0<\epsilon\leq\delta\) | Axes and boundaries null; both sign branches included; no asymptotic or degree-only residual | Same feature, law, interval, and Euclidean target; residual zero | Total wedge area \(\epsilon/\delta\), density \(1/4\); `step_008` upper coefficient equals one | Literal derivative entry \(1/\delta\) | `step_012` | None |
| Full exact-goal theorem | `step_012` | All earlier exported interfaces | Every defect class is assigned to a producer; assembly introduces none | Clause-by-clause same-object consumption with zero residuals | Conjunction of literal producer outputs, with no new absorption | Earlier anchor, area, section, velocity, and pivot sources | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Anchor nonvanishing, matrix certificate, and projective certificate | `step_001`; direct from primitive coefficient list and closure identity | `step_002`, `step_003`, `step_006`, `step_008`, `step_011`, `step_012` | Static certificate and homogeneous conditioning clauses | primitives -> `step_001` -> named consumers | derived | None |
| Persistent-root nullity | `step_002`; anchor plus joint absolute continuity | `step_003`, `step_012` | Degenerate-zero handling | `step_001` -> `step_002` -> `step_003` -> `step_012` | derived | None |
| Exhausted affine chart sweep | `step_003`; current-notation area formula and monotone convergence | `step_004`, `step_010`, `step_012` | Equivalent chart clause and monic baseline generator | (`step_001`, `step_002`) -> `step_003` -> consumers | derived | None |
| Coordinate-free affine sweep | `step_004`; exact chart-to-section Jacobian identity | `step_007`, `step_008`, `step_012` | First affine swept-area inequality and homogeneous interface | `step_003` -> `step_004` -> consumers | derived | None |
| Translated cube-section certificate | `step_005`; Brunn--Minkowski plus Ball | `step_007`, `step_008` | Affine and homogeneous section factors | primitive cube -> `step_005` -> consumers | derived | None |
| Affine normal-velocity certificate | `step_006`; root-section coupling plus `step_001` | `step_007` | General affine explicit rate | `step_001` -> `step_006` -> `step_007` | derived | None |
| General affine rate and \(C^{\mathrm{aff}}\) bound | `step_007` | `step_012` | Full affine theorem clause | (`step_004`, `step_005`, `step_006`) -> `step_007` -> `step_012` | derived | None |
| Sharper homogeneous rate and \(C^{\mathrm{Pf}}\) bound | `step_008` | `step_011`, `step_012` | Source homogeneous clause and scale upper audit | (`step_001`, `step_004`, `step_005`) -> `step_008` -> consumers | derived | None |
| Monic instance and pivot/velocity certificate | `step_009`; direct monomial calculation | `step_010` | Exact baseline specialization inputs | primitive monic data -> `step_009` -> `step_010` | derived | None |
| Exact affine-monic probability bound | `step_010` | `step_012` | Baseline invariance conclusion | (`step_003`, `step_009`) -> `step_010` -> `step_012` | derived | None |
| Counter-example exact scale certificate | `step_011`; direct example plus `step_008` upper interface | `step_012` | Required \(\delta\)-scale audit | `step_008` and direct example -> `step_011` -> `step_012` | derived | None |
| Full assembled theorem | `step_012` | Final theorem statement | Every inseparable formalized-goal clause | all named producer paths -> `step_012` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Prove \(F_{j_*}=1\Rightarrow F\neq0\), \(\sup_\Theta\|B\|_{\mathrm{op}}\leq\widehat\Lambda_{B,T}\), and, when \(F_0=0\), \(F'=B_FF\), \(\gamma_F'=(I-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F\), and \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda_{B,T}\). | None | Primitive: `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-derivative-closure` | Preserve the exact \(T,m,N\) coefficient-height dependence and obtain a genuine normalization denominator from the anchor without assuming projective regularity. | Direct coefficient evaluation, Frobenius/operator comparison, homogeneous block extraction, and normalized-vector differentiation in the exact Balcan \(p=1\) convention. | Static certificate, nonvanishing, and homogeneous projective interface. | R1 and R5: literal certificate; degree-zero additional \(q,M,\Delta\) dependence; exact monic and \(1/\delta\) specializations retained. | PENDING |
| `step_002` | For every tested nondegenerate interval \(I\), prove that \(\{a:F_0+\langle a,F\rangle\equiv0\text{ on }I\}\) is empty or a proper affine subspace and has zero probability under every admissible law. | `step_001` | Primitive: `assump:anchored-derivative-closure`, `assump:cube-density-laws`; derived: anchor from `step_001` | Handle persistent zero combinations without adding an exclusion assumption and without independence. | Direct affine-linear algebra using translation by \(e_{j_*}\), followed by absolute continuity. | Law-null persistent-root certificate. | R2 and R4: no exceptional probability remainder. | PENDING |
| `step_003` | For every measurable legal pivot partition, prove the indicator and indicator-dropped affine chart inequalities by applying the area formula on \(E_{j,n}\), summing charts, and taking \(n\to\infty\), with tangent, multiple, endpoint, and persistent roots handled. | `step_001`, `step_002` | Primitive: all four setting assumptions; derived: nonvanishing/regularity from `step_001` and nullity from `step_002` | Establish Lipschitz chart restrictions and complete root-event coverage without a uniform pivot margin or simple roots while retaining the actual \(N\)-dimensional coefficient law. | Standard Euclidean area formula for \(\Psi_j\), exact determinant, image-multiplicity inequality, density domination, and monotone convergence; Balcan--Dick--Pegden Theorem 18 as affine lineage only. | Common affine pivot-sweep theorem. | R2 and R4: exact chart integrals, arbitrary correlation, no hidden constants. | PENDING |
| `step_004` | Prove the fixed-section identity \(\lvert T_j'\rvert d\beta=\lvert F_0'+\langle a,F'\rangle\rvert d\mathcal H^{N-1}/\|F\|\), sum it over the partition, and derive the coordinate-free first affine swept-area inequality. | `step_003` | Derived: `step_003`; primitive feature definitions from `assump:anchored-derivative-closure` | Match the chart and Hausdorff Jacobians exactly so pivot denominators cancel and no second root theorem is introduced. | Direct differentiation of the chart equation and Euclidean graph/section Jacobian calculation. | Coordinate-free affine normal-velocity interface. | R2 and R3: exact first sweep integral. | PENDING |
| `step_005` | Prove every translated section of \([-R,R]^N\) has \((N-1)\)-measure at most its parallel central section and hence at most \(\sqrt2(2R)^{N-1}\), including \(N=1\). | None | Primitive: `assump:parameter-regime` | Supply a source-adequate translated-section bound, not merely Ball's central result, with exact scaling and dimension boundary. | Direct Brunn--Minkowski concavity/evenness argument; Ball, *Cube Slicing in \(\mathbb R^n\)*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0. | Uniform translated cube-section certificate. | R2 and R3: literal \(\sqrt2(2R)^{N-1}\) factor. | PENDING |
| `step_006` | On every affine root section prove \(\lvert F_0\rvert\leq R\sqrt N\|F\|\), \(\|\widetilde F\|\leq\sqrt{1+NR^2}\|F\|\), and normal velocity at most \((1+NR^2)\widehat\Lambda_{B,T}\). | `step_001` | Primitive: `assump:parameter-regime`, `assump:anchored-derivative-closure`; derived matrix bound from `step_001` | Control the deterministic offset only from the actual root equation and expose both \(\sqrt{1+NR^2}\) factors with no free amplitude bound. | Root-section Cauchy--Schwarz, closure identity, Euclidean operator bound. | Affine normal-velocity certificate. | R2: exact \((1+NR^2)\widehat\Lambda\) dependence. | PENDING |
| `step_007` | Combine `step_004`--`step_006` to prove both displayed general affine inequalities and \(C^{\mathrm{aff}}_{\mathcal D}\leq A(1+NR^2)\widehat\Lambda/(\sqrt2R)\), uniformly over laws and intervals. | `step_004`, `step_005`, `step_006` | Primitive: `assump:cube-density-laws` and parameter definitions; derived: all dependencies | Preserve literal factors, full law/interval uniformity, arbitrary correlation, and degree-zero additional Pfaffian-format dependence through integration and suprema. | Exact multiplication, \(\kappa\)-density domination already in `step_004`, and definitions of \(A\) and \(C^{\mathrm{aff}}\). | Complete general affine theorem clause. | R2: full Rate Specialization Bridge with no hidden constant. | PENDING |
| `step_008` | In the specialization \(F_0=0\), prove the integrand is \(\lvert\langle a,\gamma_F'\rangle\rvert\), derive the exact \(A\sqrt{N/2}\Gamma_{\mathrm{proj}}\) bound, substitute \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda\), and take the \(C^{\mathrm{Pf}}\) supremum. | `step_001`, `step_004`, `step_005` | Primitive: `assump:cube-density-laws`, `assump:anchored-derivative-closure`; derived: all dependencies | Cancel radial motion exactly, handle stationary projective curves and \(N=1\), and expose the literal \(A\sqrt{N/2}\) algebra. | Direct \(F=r\gamma_F\) differentiation and orthogonality; Ball section bound; Edelman--Kostlan Theorem 5.1 as integrand/convention cross-check. | Sharper homogeneous theorem and \(C^{\mathrm{Pf}}\) clause. | R3 and R5: exact projective/certificate rates and \(\delta\)-scale retention. | PENDING |
| `step_009` | For every \(d,J\), verify the augmented monomial \(q=0\) presentation, constant derivative-shift matrix and exact certificate, prescribed pivot partition, both chart formulas and velocity bounds, and the \(d=1\) branch. | None | Primitive specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-derivative-closure` | Preserve the actual lower-coefficient object, control negative powers on \(\lvert\theta\rvert>1\), and audit \(q,M,\Delta,N,m,A,\widehat\Lambda\) without invoking the baseline theorem. | Direct matrix multiplication, chart solving/differentiation, and finite-sum identities. | Exact monic object/certificate/pivot/velocity package. | R1 and R4: exact specialization data and \(V_d\). | PENDING |
| `step_010` | Apply `step_003` using `step_009` to prove exactly \(\Pr[\exists\theta\in J:p_\alpha(\theta)=0]\leq\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert\) for every arbitrary correlated lower-coefficient law. | `step_003`, `step_009` | Primitive: `assump:cube-density-laws` in dimension \(d\); derived: both dependencies | Verify beta-volume, disjoint partition lengths, \(d=1\), and exact coefficient dimension while introducing no auxiliary loss or singular leading coordinate. | Direct specialization and integration of the already proved chart theorem. | Exact affine-monic baseline conclusion. | R4: complete exact baseline bridge. | PENDING |
| `step_011` | For \(F=(1,\theta/\delta)\), prove the exact matrix certificate and projective speed, use `step_008` for the \(1/\delta\) upper bound, compute the exact \(\epsilon/(4\delta)\) probability, and record the lower ratio. | `step_001`, `step_008` | Primitive specialization of all four assumptions; derived: both dependencies | Include both sign wedges, coefficient-axis null sets, and the endpoint cases while ensuring the static annotation records the metric rescaling. | Direct normalized-curve derivative and planar Lebesgue-area calculation. | Counter-example 1 scale-audit clause. | R5 and consistency with R1/R3. | PENDING |
| `step_012` | Assemble one unconditional theorem containing the static bridge, equivalent chart form, coordinate-free affine rate and \(C^{\mathrm{aff}}\), sharper homogeneous rate and \(C^{\mathrm{Pf}}\), exact monic recovery, Counter-example audit, and all dependence/mode statements, with no new claim. | `step_001`, `step_003`, `step_007`, `step_008`, `step_010`, `step_011` | Primitive assumptions exactly as allocated; derived outputs from every dependency | Prevent clause loss, target switching, hidden dependence, mode changes, or untracked generated outputs at theorem assembly. | Dependency-checked theorem assembly only. | Full exact formalized goal. | R1--R5, including both baseline invariance obligations. | PENDING |

## Dependency Notes

The graph is acyclic because every edge points to an earlier stable ID:

\[
\begin{aligned}
&\texttt{step\_001}\to\texttt{step\_002}
\to\texttt{step\_003}\to\texttt{step\_004},\\
&\texttt{step\_001}\to\texttt{step\_006},\\
&\{\texttt{step\_004},\texttt{step\_005},\texttt{step\_006}\}
\to\texttt{step\_007},\\
&\{\texttt{step\_001},\texttt{step\_004},\texttt{step\_005}\}
\to\texttt{step\_008},\\
&\{\texttt{step\_003},\texttt{step\_009}\}\to\texttt{step\_010},\\
&\{\texttt{step\_001},\texttt{step\_008}\}\to\texttt{step\_011},\\
&\{\texttt{step\_001},\texttt{step\_003},\texttt{step\_007},
\texttt{step\_008},\texttt{step\_010},\texttt{step\_011}\}
\to\texttt{step\_012}.
\end{aligned}
\]

`step_005` and `step_009` are independent direct units and therefore have no dependencies; each is placed before all consumers. The common affine-sweep branch ends at `step_007`, the sharper homogeneous branch ends at `step_008`, and the exact baseline branch ends at `step_010`. `step_012` introduces no mathematical content and may consume only accepted earlier outputs. This decomposition localizes the area-formula, translated-section, derivative-closure, monic-pivot, and scale-audit obligations without allowing a later specialization or assembly label to act as a missing producer.

## Blockers

None.
