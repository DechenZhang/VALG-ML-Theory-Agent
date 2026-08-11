# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 1
- Reviewed `proof_sketch.md`: SHA-256 `8b5b22e5000e1c5641e2b5baf0c4d48244ce3389941b0cc9857b47510bbf6c93`
- Reviewed `proof_sketch_review.md`: SHA-256 `4288579fa3b8583b31faa2c220f5071879da72f06ac3a1dd3d1889cb1096cb7c`
- Binding `setting.md`: SHA-256 `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Sketch review status: `ACCEPTED`
- Optional tracker identity: sketch attempt 1, global unit attempt 1
- Diagnostic identity check: the accepted roadmap has exactly `step_001` through `step_012`, with no prior `global_proof.md` or triggering `global_proof_review.md` in this branch.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

Goal mode: exact-goal, unconditional, `full` progress on the declared anchored derivative-closed Pfaffian normalization class.

Under `assump:parameter-regime`, `assump:balcan-common-chain`, and `assump:anchored-derivative-closure`, the attempted theorem first proves

\[
\sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
\leq \widehat\Lambda_{B,T}.
\]

When \(F_0\equiv0\), it also proves

\[
F'=B_FF,\qquad
\gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
\qquad
\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
\]

Under all four primitive assumptions, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with \(|I|>0\), the attempted theorem proves

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\leq \kappa\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}|I|\\
&=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|,
\end{aligned}
\]

and consequently

\[
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
\leq \frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\]

The same theorem includes, for every measurable legal pivot partition \(I=\bigsqcup_{j=1}^N E_j\), the indicator and indicator-dropped chart bounds

\[
\Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1\{|T_j(\theta,\beta)|\leq R\}
|\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta,
\]

with the indicator-dropped version obtained by pointwise domination. These bounds permit tangent and multiple roots, use the exhaustion \(E_{j,n}=E_j\cap\{|F_j|\geq1/n\}\), and prove rather than assume that persistent-root coefficients have zero law mass.

In the homogeneous specialization, the attempted theorem proves

\[
\Pr[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
\]

and hence

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

For every \(d\geq1\), bounded interval \(J\), and arbitrary correlated capped density on the \(d\) lower coefficients, the same chart theorem is specialized to the deterministic-leading-coefficient monic polynomial and proves exactly

\[
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]
\leq \kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|J|.
\]

Finally, for \(F=(1,\theta/\delta)\), it proves

\[
\widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta,
\qquad
C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\leq\frac1\delta,
\]

and, under the uniform law on \([-1,1]^2\),

\[
\Pr[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}
\quad(0<\epsilon\leq\delta\leq1).
\]

All constants are literal. There is no hidden dependence or confidence parameter. The probability mode is ordinary probability for each fixed law, the interval mode is uniform over all positive-length subintervals, and the norm mode is Euclidean. Once the supplied certificate is fixed, the additional dependence on \(q,M,\Delta\) is exactly degree zero.

## Whole-Proof Draft

### Block G1: Static coefficient and projective certificates

For each matrix entry set

\[
c_{rs}:=\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell.
\]

Because \(|\theta|\leq T\leq T_*\) on \(\Theta\),

\[
|B_{rs}(\theta)|
\leq\sum_{\ell=0}^m|b_{rs,\ell}||\theta|^\ell
\leq c_{rs}.
\]

Therefore

\[
\|B(\theta)\|_{\mathrm{op}}
\leq\|B(\theta)\|_{\mathrm F}
\leq\left(\sum_{r,s=0}^Nc_{rs}^2\right)^{1/2}
=\widehat\Lambda_{B,T}.
\]

The primitive anchor gives \(F_{j_*}\equiv1\), hence \(\|F(\theta)\|_2\geq1\) before any normalization or chart is used. If \(F_0=0\), the lower \(N\) rows of \(\widetilde F'=B\widetilde F\) reduce to \(F'=B_FF\). Direct differentiation of \(\gamma_F=F/\|F\|_2\) then gives

\[
\gamma_F'
=\frac{F'}{\|F\|_2}
-\frac{F\langle F,F'\rangle}{\|F\|_2^3}
=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F.
\]

The orthogonal projector has operator norm at most one, and the row/column restriction defining \(B_F\) cannot increase the Euclidean operator norm. Thus \(\|\gamma_F'\|_2\leq\widehat\Lambda_{B,T}\) pointwise and the same bound holds for \(\Gamma_{\mathrm{proj}}(F)\).

### Block G2: Persistent-root coefficients are law-null

For a positive-length interval \(I\), define

\[
Z_\infty(I)
:=\{a\in\mathbb R^N:
F_0(\theta)+\langle a,F(\theta)\rangle=0
\text{ for every }\theta\in I\}.
\]

This is empty or an affine subspace, because it is an intersection of affine hyperplanes in coefficient space. It is proper: if both \(a\) and \(a+e_{j_*}\) belonged to it, subtracting their identities would give \(F_{j_*}\equiv0\), contrary to the anchor \(F_{j_*}\equiv1\). A proper affine subspace has \(N\)-dimensional Lebesgue measure zero, and every admissible law is absolutely continuous. Hence \(\mu(Z_\infty(I))=0\). This removes the persistent-root class without changing the theorem assumptions or random coefficient dimension.

### Block G3: Exhausted pivot-chart area inequality

Fix a measurable partition \(I=\bigsqcup_{j=1}^N E_j\) with \(F_j\neq0\) on \(E_j\), and define

\[
E_{j,n}:=E_j\cap\{|F_j|\geq1/n\},
\]

\[
D_{j,n}:=\{(\theta,\beta):
\theta\in E_{j,n},\ \beta\in[-R,R]^{N-1},\
|T_j(\theta,\beta)|\leq R\}.
\]

On each finite level, the numerator functions and their derivatives are bounded on compact \(\Theta\), while the pivot is bounded away from zero at both endpoints of any quotient difference. If \(g/f\) denotes one chart quotient, then on \(|f(x)|,|f(y)|\geq1/n\),

\[
\left|\frac{g(x)}{f(x)}-\frac{g(y)}{f(y)}\right|
\leq n|g(x)-g(y)|+n^2\|g\|_\infty|f(x)-f(y)|.
\]

This proves the required Lipschitz property even when \(E_{j,n}\) is disconnected. The measurable-domain Euclidean area formula applies to \(\Psi_j\) on \(D_{j,n}\). Since the nonpivot output coordinates are the beta coordinates,

\[
|\det D\Psi_j(\theta,\beta)|
=|\partial_\theta T_j(\theta,\beta)|.
\]

Consequently,

\[
\lambda_N(\Psi_j(D_{j,n}))
\leq\int_{D_{j,n}}|\partial_\theta T_j|\,d\beta\,d\theta.
\]

The inequality is in the correct direction for existence of a root: the area formula counts preimages with multiplicity, so noninjectivity and multiple roots only enlarge the parameter-side integral. Critical or tangent preimages are also covered by the area formula; their critical-value contribution cannot create positive target volume without a corresponding Jacobian contribution.

If a nonpersistent coefficient \(a\in[-R,R]^N\) has a root at \(\theta\in E_j\), then \(\beta=a_{-j}\), \(a_j=T_j(\theta,\beta)\), and \(a=\Psi_j(\theta,\beta)\). Since \(F_j(\theta)\neq0\), this root enters some finite level \(n\). Thus the coefficient root set, outside the null set \(Z_\infty(I)\), is covered by the increasing finite-level chart images. Endpoint slices, when present, are affine hyperplane images and are law-null; equivalently they are already harmless in the measurable-domain area formula.

Let

\[
V_n:=\sum_{j=1}^N\int_{E_{j,n}}\int_{[-R,R]^{N-1}}
\mathbf1\{|T_j|\leq R\}|\partial_\theta T_j|\,d\beta\,d\theta.
\]

The sets \(E_{j,n}\) and the nonnegative integrals increase with \(n\), so continuity from below for the root images, density domination, and monotone convergence give

\[
\Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq\kappa\lim_{n\to\infty}V_n
=\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf1\{|T_j|\leq R\}|\partial_\theta T_j|\,d\beta\,d\theta.
\]

Dropping the indicator gives the second chart form. There is no uniform pivot margin in the theorem-facing interface. The accumulated object is the nonnegative Jacobian mass, with the concrete monotone relation \(V_n\uparrow V\); later blocks give the finite target-specific budget.

### Block G4: Exact chart-to-section conversion

For fixed \(\theta\in E_j\), the map \(\beta\mapsto\Psi_j(\theta,\beta)\) is a bijection from \(\{|T_j|\leq R\}\) onto \(H_\theta\cap[-R,R]^N\). Its Euclidean graph Jacobian is

\[
J_{N-1}\Psi_j(\theta,\cdot)
=\left(1+\sum_{i\neq j}\frac{F_i(\theta)^2}{F_j(\theta)^2}\right)^{1/2}
=\frac{\|F(\theta)\|_2}{|F_j(\theta)|}.
\]

Differentiating

\[
F_0(\theta)+\langle\Psi_j(\theta,\beta),F(\theta)\rangle=0
\]

at fixed \(\beta\) gives

\[
\partial_\theta T_j(\theta,\beta)
=-\frac{F_0'(\theta)+\langle\Psi_j(\theta,\beta),F'(\theta)\rangle}{F_j(\theta)}.
\]

The pivot factors therefore cancel exactly:

\[
|\partial_\theta T_j|\,d\beta
=\frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
\,d\mathcal H^{N-1}(a).
\]

Summing over the disjoint cells \(E_j\) converts Block G3 into the first coordinate-free affine swept-area inequality. This is an equality of integrands for the same hyperplane section and not a second root theorem.

### Block G5: Uniform translated cube-section certificate

Let \(u\in\mathbb S^{N-1}\) and

\[
v_u(t):=\mathcal H^{N-1}([-R,R]^N\cap(u^\perp+tu)).
\]

For \(N\geq2\), Brunn's concavity consequence of Brunn--Minkowski says that \(v_u(t)^{1/(N-1)}\) is concave on its support. Cube symmetry makes \(v_u\) even, so its maximum is at zero. Ball's central cube-section theorem, in the unit-volume cube convention and then scaled by \(2R\), gives

\[
v_u(t)\leq v_u(0)\leq\sqrt2(2R)^{N-1}.
\]

For \(N=1\), a nonempty hyperplane section is one point and has \(\mathcal H^0\)-measure one, which is bounded by \(\sqrt2\). Taking \(u=F(\theta)/\|F(\theta)\|_2\) and \(t=-F_0(\theta)/\|F(\theta)\|_2\) proves

\[
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1}.
\]

### Block G6: Affine normal-velocity certificate

For \(a\in H_\theta\cap[-R,R]^N\), the root equation gives

\[
|F_0(\theta)|=|\langle a,F(\theta)\rangle|
\leq\|a\|_2\|F(\theta)\|_2
\leq R\sqrt N\|F(\theta)\|_2.
\]

Hence

\[
\|\widetilde F(\theta)\|_2
\leq\sqrt{1+NR^2}\|F(\theta)\|_2,
\qquad
\|(1,a)\|_2\leq\sqrt{1+NR^2}.
\]

Using the exact closure identity and Block G1,

\[
\begin{aligned}
\frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
&=\frac{|\langle(1,a),B\widetilde F\rangle|}{\|F\|_2}\\
&\leq\frac{\|(1,a)\|_2\|B\|_{\mathrm{op}}\|\widetilde F\|_2}{\|F\|_2}\\
&\leq(1+NR^2)\widehat\Lambda_{B,T}.
\end{aligned}
\]

The deterministic offset is controlled only on the actual root section, so this block does not introduce an amplitude assumption.

### Block G7: General affine rate and interval/law closure

Insert Blocks G5 and G6 into the integral from Block G4:

\[
\Pr(E_{\mathrm{root}})
\leq\kappa\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}|I|.
\]

Since \(A=(2R)^N\kappa\),

\[
\kappa\sqrt2(2R)^{N-1}
=\frac{A}{\sqrt2R}.
\]

This yields the literal affine coefficient. The bound holds separately with the same deterministic constant for every admissible \(\mu\) and every positive-length \(I\). Dividing by \(|I|\) and taking the two defining suprema therefore introduces no union bound, confidence loss, or horizon conversion.

### Block G8: Sharper homogeneous projective rate

When \(F_0=0\), write \(F=r\gamma_F\), where \(r=\|F\|_2\). On the central section \(H_\theta=\gamma_F(\theta)^\perp\),

\[
\frac{|\langle a,F'\rangle|}{\|F\|_2}
=\left|\left\langle a,\frac{r'}r\gamma_F+\gamma_F'\right\rangle\right|
=|\langle a,\gamma_F'\rangle|.
\]

Thus radial motion cancels exactly, and cube support gives

\[
|\langle a,\gamma_F'\rangle|
\leq R\sqrt N\|\gamma_F'\|_2.
\]

Blocks G4 and G5 now imply

\[
\Pr(E_{\mathrm{root}})
\leq\kappa R\sqrt N\sqrt2(2R)^{N-1}
\int_I\|\gamma_F'(\theta)\|_2\,d\theta.
\]

The exact scalar identity

\[
\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}
\]

and Block G1 give both homogeneous inequalities and the bound for \(C^{\mathrm{Pf}}_{\mathcal D}\). If \(\Gamma_{\mathrm{proj}}=0\), connectedness of \(\Theta\) makes \(\gamma_F\) constant, so the root event is one fixed law-null hyperplane; the zero-bound boundary is therefore consistent.

### Block G9: Exact augmented-monomial certificate and pivots

For the monic specialization,

\[
\widetilde F=(\theta^d,1,\theta,\ldots,\theta^{d-1}).
\]

The constant derivative-shift matrix has nonzero entries \(B_{0,d}=d\) and \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\). Therefore

\[
\widetilde F'=B\widetilde F,
\qquad
\widehat\Lambda_{B,T}=\|B\|_{\mathrm F}
=\left(\sum_{k=1}^dk^2\right)^{1/2}.
\]

The presentation has \(q=M=0\), \(\Delta=N=d\), \(m=0\), \(A=(2R)^d\kappa\), and anchor \(F_1=1\). For \(d\geq2\), use

\[
E_1=J\cap\{|\theta|\leq1\},
\qquad
E_d=J\cap\{|\theta|>1\}.
\]

Solving for the constant coefficient on \(E_1\) and the top random coefficient on \(E_d\) gives

\[
T_1=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\qquad
T_d=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
\]

On the inner region,

\[
|\partial_\theta T_1|
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2.
\]

On the outer region, \(|\theta|^{k-d}\leq1\), hence

\[
|\partial_\theta T_d|
\leq1+R\sum_{k=0}^{d-2}(d-1-k)
=1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2.
\]

For \(d=1\), the only chart is \(T_1=-\theta\) and its velocity is one. Every chart acts on the actual \(d\)-dimensional lower-coefficient vector; the leading coefficient remains deterministic.

### Block G10: Exact affine-monic baseline

Apply Block G3, drop the chart indicator, and integrate each beta cube. Its volume is exactly \((2R)^{d-1}\). With

\[
V_d:=d+\frac{Rd(d-1)}2,
\]

the disjoint partition satisfies \(|E_1|+|E_d|=|J|\), so

\[
\begin{aligned}
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]
&\leq\kappa(2R)^{d-1}V_d(|E_1|+|E_d|)\\
&=\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|J|.
\end{aligned}
\]

For \(d=1\), the zero-dimensional beta volume is one and the formula becomes \(\kappa|J|\). This is the required baseline from the common affine chart theorem, not an independent root theorem or a singular random leading-coordinate construction.

### Block G11: Counter-example 1 scale audit

For \(\widetilde F=(0,1,\theta/\delta)\), the constant matrix has the sole nonzero entry \(B_{2,1}=1/\delta\). Thus \(\widehat\Lambda_{B,T}=1/\delta\). With \(x=\theta/\delta\), direct differentiation gives

\[
\|\gamma_F'(\theta)\|_2
=\frac1{\delta(1+x^2)},
\]

whose supremum on \([-1,1]\) is \(1/\delta\). For \(R=1\), \(\kappa=1/4\), \(A=1\), and \(N=2\), Block G8 gives the upper constant \(1/\delta\).

Let \(t=\epsilon/\delta\leq1\). Away from the coordinate axes, a root in \([0,\epsilon]\) exists exactly when the coefficients have opposite signs and \(|\alpha_1|\leq t|\alpha_2|\). The two opposite-sign wedges have total area

\[
2\int_0^1tu\,du=t.
\]

Multiplication by the uniform density \(1/4\) gives \(t/4=\epsilon/(4\delta)\). Axes and wedge boundaries are planar-null, so there is no omitted probability remainder.

### Block G12: Final theorem assembly

Blocks G1, G3, G7, G8, G10, and G11 are already exactly the six theorem-facing producers required by the goal; Blocks G2, G4, G5, G6, and G9 discharge their internal generated-output interfaces. Conjoining those outputs preserves the same feature tuple, random coefficient dimension, law class, interval quantifiers, norms, literal constants, and deterministic affine offset. No new lemma, assumption, rate simplification, probability conversion, or theorem mode is introduced at assembly. This closes every inseparable clause of the exact formalized goal at theorem-diagnostic granularity.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1 | Static coefficient bound, anchor nonvanishing, homogeneous projective bridge | `step_001` | Primitive coefficient list and closure identity | `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-derivative-closure` | None diagnostically; local proof must formalize the projector calculation and block-norm comparison |
| G2 | Remove persistent affine zeros without an exclusion assumption | `step_002` | G1 anchor | `assump:anchored-derivative-closure`, `assump:cube-density-laws` | None diagnostically; local proof must state the affine-subspace nullity argument |
| G3 | Produce both pivot-chart probability inequalities with multiplicity and exhaustion | `step_003` | G1 nonvanishing, G2 nullity | All four primitive IDs | None diagnostically; this is the highest-risk local measure-theoretic execution block |
| G4 | Convert chart Jacobian exactly to the Hausdorff normal-velocity integral | `step_004` | G3 | Primitive feature definitions | None diagnostically; local proof must verify both Jacobians, including `N=1` |
| G5 | Bound every translated cube section | `step_005` | Independent direct geometry | `assump:parameter-regime` | None diagnostically; local proof must restate Brunn concavity and Ball with exact scaling |
| G6 | Bound the affine normal velocity on the actual root section | `step_006` | G1 matrix bound | `assump:parameter-regime`, `assump:anchored-derivative-closure` | None diagnostically; all amplitude factors are exposed |
| G7 | Close the general affine rate and both suprema | `step_007` | G4, G5, G6 | `assump:cube-density-laws` and parameter definitions | None; literal factor multiplication only |
| G8 | Close the sharper homogeneous rate | `step_008` | G1, G4, G5 | `assump:cube-density-laws`, homogeneous specialization | None diagnostically; radial cancellation is explicit |
| G9 | Produce the monic shift matrix, exact certificate, pivots, and velocity caps | `step_009` | Independent direct specialization | Primitive `q=0` specialization | None; local finite-sum and negative-power checks remain |
| G10 | Recover the exact deterministic-leading-coefficient baseline | `step_010` | G3, G9 | Dimension-`d` cube-density law | None; beta volume and partition budget are explicit |
| G11 | Verify the `1/delta` upper/lower scale | `step_011` | G1, G8 and direct example | Direct specialization of all four IDs | None; exact wedge integration is explicit |
| G12 | Assemble every exact-goal clause without new content | `step_012` assembly role | G1, G3, G7, G8, G10, G11 | No new assumption | None; dependency-only assembly |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Produces nonvanishing and static controls for G2, G3, G6, G8, G11, G12 | Coefficient evaluation, norm comparison, homogeneous block extraction, normalized derivative | Exact R1 and R5 scales retained |
| `step_002` | G2 | Supplies the null exceptional set to G3 and G12 | Properness of `Z_infty(I)` and absolute-continuity nullity | No independence or exclusion assumption |
| `step_003` | G3 | Supplies G4, G10, and the chart clause in G12 | Measurability, finite-level Lipschitz maps, area formula, multiplicity, monotone exhaustion | Highest-risk local proof, but interface and source are complete |
| `step_004` | G4 | Supplies the coordinate-free interface to G7 and G8 | Graph Jacobian, differentiated chart identity, partition summation | Same-target equality, zero residual |
| `step_005` | G5 | Supplies section geometry to G7 and G8 | Brunn central maximality, Ball theorem preflight/scaling, `N=1` | Independent of root probability |
| `step_006` | G6 | Supplies the velocity factor to G7 | Root-section amplitude coupling and closure-based Cauchy--Schwarz | No free bound on `F_0` |
| `step_007` | G7 | Supplies the affine clause to G12 | Literal algebra, interval division, law/interval suprema | R2 closes with no hidden constant |
| `step_008` | G8 | Supplies the homogeneous clause to G11 and G12 | Radial cancellation, support norm, exact scalar factor | R3 and R5 close in the same metric |
| `step_009` | G9 | Supplies monic data to G10 | Shift matrix, exact height, pivot formulas, derivative bounds, `d=1` | Deterministic leading coefficient retained |
| `step_010` | G10 | Supplies exact baseline to G12 | Specialize G3, integrate beta cube, sum partition lengths | R4 baseline invariance is exact |
| `step_011` | G11 | Supplies scale audit to G12 | Projective derivative and two-wedge area | Exact `epsilon/(4 delta)` probability |
| `step_012` | G12 | Final assembly | Conjoin accepted dependencies only | No theorem-facing output is first produced here |

## Dependency And Assumption Audit

| Condition or interface | Provenance classification | Producer or source | Consumer(s) | Audit result |
| ---------------------- | ------------------------- | ------------------ | ----------- | ------------ |
| Static parameter, interval, support, density, and finite-presentation regime | primitive condition | `assump:parameter-regime` | All relevant blocks | Valid and fixed before laws/intervals are selected |
| Common-chain Pfaffian convention and degrees | primitive condition | `assump:balcan-common-chain` | G1, G9, final dependence statement | Convention only; no root bound is imported from it |
| Anchor, supplied `B`, and exact derivative closure | primitive condition | `assump:anchored-derivative-closure` | G1, G2, G3, G6, specializations | Valid primitive mechanism; it does not assume a sweep conclusion |
| Correlated cube law with full density cap | primitive condition | `assump:cube-density-laws` | G2, G3, G7, G8, G10, G11 | Absolute continuity and density domination only; no independence used |
| `F != 0`, matrix bound, and projective bound | accepted derived conclusion in the roadmap | G1 / `step_001` | All normalization and sweep consumers | Legal producer precedes all consumers |
| Persistent-root law-nullity | accepted derived conclusion in the roadmap | G2 / `step_002` | G3, G12 | Legal producer; not a theorem assumption |
| Finite `1/n` pivot margin | local conditional proof device | G3 / `step_003` | Finite-level area formula only | Discharged as `E_{j,n}` increases to `E_j`; absent from final theorem |
| Legal pivot partition | local selection interface; globally available through the anchor | G1 and theorem's arbitrary-partition clause | G3, G4 | Every stated legal partition works; fallback `E_{j_*}=I` always exists |
| Chart sweep, section integral, section cap, and velocity cap | accepted derived conclusions in the roadmap | G3--G6 | G7, G8, G10 | Each has an earlier noncircular producer |
| Monic pivots and velocity cap | accepted derived conclusion in the roadmap | G9 | G10 | Same random object and coefficient dimension |
| Affine, homogeneous, monic, and scale conclusions | accepted derived conclusions in the roadmap | G7, G8, G10, G11 | G12 | Clause-by-clause same-target consumption |
| Missing derived-condition bridges | missing derived-condition bridge | None | None | None |

The attempted theorem is unconditional. No generated event, transversality condition, simple-root property, pivot margin, section bound, projective-speed bound, or sweep bound is moved into its assumptions.

## Citation And Tool Audit

| Source or tool | Current-branch objects and role | Assumptions to discharge | Conclusion needed | Source-convention and object-target compatibility | Affected block / Step ID | Audit status |
| -------------- | ------------------------------- | ------------------------ | ----------------- | ------------------------------------------------- | ------------------------ | ------------ |
| Standard Euclidean area formula for Lipschitz maps between equal-dimensional Euclidean spaces | `Psi_j:D_{j,n} subset R x R^{N-1} -> R^N`; bounds image volume by the integral of `abs(det D Psi_j)` with multiplicity | Measurable domain, finite-level Lipschitz restriction or extension, a.e. Jacobian, measurable/analytic image | `lambda_N(Psi_j(D)) <= integral_D abs(partial_theta T_j)` without injectivity or simple roots | Exact Euclidean source and target dimensions; output is the original coefficient vector. The quotient estimate gives raw-assumption feasibility. Tangent and multiple roots lie within the theorem's multiplicity interface | G3 / `step_003` | Valid diagnostic discharge path; local proof must state the theorem precisely |
| Azais--Wschebor, *Level Sets and Extrema of Random Processes and Fields*, DOI:10.1002/9780470434642 | Regularity context for area/coarea | None consumed as a black-box branch theorem | No unique affine sweep conclusion is taken from this source | Context only; the current-notation area formula above is the proof authority | G3 / `step_003` | Non-authoritative context; no open source claim |
| Brunn--Minkowski / Brunn section-concavity theorem | Parallel sections of the symmetric cube | Convex cube, `N>=2`, Euclidean parallel sections; `N=1` handled directly | Even section-volume profile is maximized at the central section | Same cube, normal, translation coordinate, and Hausdorff measure; direct wrapper supplies translation, which Ball alone does not | G5 / `step_005` | Valid standard-tool interface; local proof must write the concavity-to-central-maximality implication |
| Ball, *Cube Slicing in R^n*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0 | Central hyperplane section of a unit-volume cube | Central section, Euclidean hyperplane, unit-volume cube | Section measure at most `sqrt(2)` | Scaling by `2R` produces exactly `sqrt(2)(2R)^{N-1}`. Translation, velocity, and density are known nonoutputs and have separate producers | G5 / `step_005` | Valid source identity, role, scaling, and nonoutput boundary |
| Direct fixed-section graph Jacobian and normalized-vector differentiation | Actual chart graph, actual `F/norm(F)`, Euclidean norms | Nonzero pivot for the graph; anchor for normalization | Exact G4 equality and G1 projector identity | Current-notation direct derivations; raw assumptions imply denominators are nonzero and all objects use the consumed metric | G1, G4 / `step_001`, `step_004` | Valid direct-derivation path |
| Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9 | Homogeneous normal-velocity convention cross-check | Not consumed for the affine chart, section cap, or derivative certificate | No theorem-critical conclusion beyond the independently derived homogeneous integrand | Same normalized feature curve at the level of the cross-check; branch proof derives the equality directly | G8 / `step_008` | Context/cross-check only; no open discharge |
| Balcan--Dick--Pegden, Theorem 18, arXiv:1904.09014 | Affine-coefficient lineage | Not consumed for arbitrary `F_0,F` | No branch sweep theorem imported | Known nonoutput boundary is explicit; G3 proves the actual current-object result | G3 / `step_003` | Lineage only |
| Balcan--Nguyen--Sharma, Definitions 2--4, arXiv:2409.04367 | Fixes `p=1`, `q,M,Delta` common-chain convention | The setting already instantiates that convention | Not a root or area conclusion | Exact convention is primitive in `setting.md`; no cross-object bridge is required | G1, final dependence audit | Convention source only |
| Proper affine subspaces are Lebesgue-null; Cauchy--Schwarz; operator/Frobenius comparison; monotone convergence | Direct standard facts on the actual coefficient and feature spaces | Finite-dimensional Euclidean space, absolute continuity, nonnegative integrands | G1--G3 and G6 comparisons | Exact branch objects and modes; raw hypotheses are displayed where each fact is used | G1--G3, G6 | Valid direct/standard paths |

No cited result is being asked to supply a stronger claim than its statement. The theorem-critical external source is Ball's central-section theorem; translation, area sweep, normal velocity, arbitrary-density domination, and derivative certification are separately discharged in current notation.

## Quantitative Dependence Audit

| Objective | Exposed variables | Hidden constants | Fixed quantities | Probability / horizon mode | Norm or metric mode | Auxiliary tolerances | Public specialization and baseline obligations | Audit result |
| --------- | ----------------- | ---------------- | ---------------- | -------------------------- | ------------------- | -------------------- | ---------------------------------------------- | ------------ |
| R1 static certificate | `T,m,N`, all `b_{rs,l}`, `widehat Lambda`; disclosed `q,M,Delta` with degree-zero additional dependence | None | Presentation, `B`, `Theta` | Deterministic; pointwise then supremum on `Theta` | Euclidean operator/Frobenius/vector norms | None | Exact monic height and `1/delta` height must be retained | G1 and G9/G11 preserve both exactly |
| R2 affine rate | `N,R,kappa,A,widehat Lambda,length(I)` | None | Deterministic presentation and support/density parameters | Ordinary probability for each law; every positive-length interval; then double supremum | Euclidean norms, Lebesgue volume, Hausdorff measure | Exhaustion `1/n` is local and disappears | Exact chart interface, literal `A/(sqrt(2)R)` conversion, deterministic offset retained | G3--G7 expose every factor; no term is dropped |
| R3 homogeneous rate | `A,N,Gamma_proj,widehat Lambda,length(I)` | None | Homogeneous presentation and law-class parameters | Ordinary probability; interval-uniform and supremum | Euclidean projective derivative and section measure | None | Radial cancellation must be exact; `1/delta` baseline retained | G8 and G11 satisfy both |
| R4 monic baseline | `d,R,kappa,length(J)`, plus exact `q=M=0`, `Delta=N=d`, `m=0`, `A`, and certificate | None | `d,R,kappa` and a compact `Theta` containing `J` | Ordinary probability for every correlated law; every bounded interval | Scalar chart velocity and coefficient Lebesgue measure | None | Must recover exactly `kappa(2R)^{d-1}(d+Rd(d-1)/2) length(J)` with deterministic leading coefficient | G9--G10 give the exact same-object bridge |
| R5 scale audit | `delta,epsilon` and the fixed example tuple | None | Uniform square law | Exact ordinary probability for `0<epsilon<=delta<=1` | Euclidean projective norm and planar area | None | Upper `1/delta` and lower ratio `1/(4 delta)` both exposed | G11 is exact |

There is no confidence parameter, asymptotic limit, stochastic-mode conversion, hidden regularity tolerance, or suppressed dependence. The only limiting operation is the monotone pivot exhaustion, which changes neither the theorem mode nor the constant.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ---------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Static `B` bound, `F!=0`, projective bound | Structural upper bound plus lower/nonvanishing source; initializes all sweeps | Pointwise on all `Theta`, then supremum | `abs(B_rs)<=c_rs`; `gamma'=(I-gamma gamma^T)B_F gamma` | Coefficient list and literal anchor `F_j*=1` | Polynomial growth, normalization denominator, off-block entries | Pointwise; no repeated or additive defect | structural lower/upper comparison | Primitive coefficient data and anchor; `q=0,m=0,N=1,Lambda=0` handled | Height is an upper source for `B`; the anchor separately supplies lower/nonvanishing content | Produced and consumed `B,F,gamma` are identical in the Euclidean metric; residual zero | `step-local` | Primitives -> G1 before any consumer | Anchor active at every theta; no update required | `norm_op(B)<=norm_F(B)<=Lambda`, projector norm <=1 | `assump:parameter-regime`, `assump:anchored-derivative-closure` | None before G1 | If `Lambda=0`, closure makes the tuple constant and zero rates are valid | Without anchor normalization/pivots can fail; excluded primitively |
| Persistent-root nullity | Structural properness and law-null exceptional set | Every tested positive-length interval and every admissible law | `Z_infty(I)` affine; translation by `e_j*` leaves it | Anchor direction plus full absolute continuity | Feature linear dependence can make the set nonempty | Static null set; no accumulated mass | structural lower/upper comparison | Primitive anchor and density; singular laws excluded by declared law class | Anchor proves properness, density proves nullity; neither is merely an upper-size source | Exact persistent coefficient set and same law; probability residual zero | `step-local` | G1 anchor -> G2 -> G3/G12 | Static test; persistent identity checked directly | `lambda_N(Z)=0`, hence `mu(Z)=0` | Anchor, density cap | G1 nonvanishing | `N=1`, empty/nonempty proper sets, constant dictionaries pass | Without full absolute continuity a proper subspace could carry mass |
| Pivot exhaustion and chart image control | Generated coefficient-volume interface and limiting closure | Every legal measurable partition, every law and interval | `S_n=union_j Psi_j(D_jn)`; `V_n=sum_j integral_Djn abs(T_j')`; `mu(S_n)<=kappa V_n` | Nonzero pivots, exact determinant, nonnegative Jacobian | Near-zero pivots, multiplicity, tangency, endpoints, persistent roots | `S_n` and `V_n` increase; uncovered-root defect decreases to zero. Sign is nonnegative. Final affine budget comes from G4--G6; monic budget from G9 | monotone potential and structural upper comparison | G1 pivot cover, G2 nullity, standard area formula; no uniform margin assumed | Area formula controls existence-image volume in the exact equal-dimensional spaces | `Psi_j` is the original coefficient, solves the original equation, and every root enters a finite level; residual zero | `step-local` | (G1,G2,primitives) -> G3 before G4/G10 | At a root in `E_j`, choose finite `n>=1/abs(F_j(theta))`; chart active before consumption | `lambda(Psi(D))<=integral_D J`; `V_n up V` by monotone convergence | Four primitive IDs | G1 nonvanishing, G2 nullity | Disconnected cells, `N=1`, zero Jacobian, tangent/multiple/endpoint roots pass | Without a nonzero pivot or area formula interface, root coefficients need not be covered |
| Chart-to-section normal-velocity equality | Same-target exported-interface bridge | Pointwise in theta, then integrate on any interval | `J_graph=norm(F)/abs(F_j)`; `T_j'=-(F_0'+<Psi,F'>)/F_j` | Same nonzero pivot appears in both factors | Pivot denominators and affine translation | Pointwise equality; partition integration adds no defect | algebraic coupling | Direct current-notation graph calculation; illegal zero pivots excluded cellwise | Exact differential/measure identities have the required interface content | Chart graph equals the consumed `H_theta` section in the same Hausdorff metric; residual zero | `step-local` | G3 -> G4 -> G7/G8 | Pivot already nonzero at first use | Denominator cancellation gives exact equality | Feature definitions and anchor-backed pivot cover | G3 chart inequality | Empty sections, zero velocity, `N=1` pass | Without matching graph Jacobian the coordinate-free theorem would need a new bridge |
| Translated cube-section cap | Structural orientation/offset-uniform upper comparison | Every theta, normal, and offset | `v_u(t)<=v_u(0)<=sqrt(2)(2R)^{N-1}` | Symmetry, convexity, Ball central-section bound | Translation, orientation, empty sections, `N=1` | Pointwise uniform bound; interval integration has budget `length(I)` | structural lower/upper comparison | Brunn wrapper plus Ball; `N=1` direct, empty sections included | Even concavity supplies translation control; Ball supplies orientation control | Same cube, normal, and Hausdorff measure after exact scaling; residual zero | `step-local` | Primitive cube -> G5 before G7/G8 | Static geometry; no activation required | Parallel-section maximum plus exact scale change | `assump:parameter-regime` | None before G5 | Central, translated, coordinate, diagonal, empty, `N=1` cases pass | Without an orientation-uniform cap the literal public constants do not follow |
| Affine normal velocity | Root-section amplitude and derivative-control bridge | Every root-section point on every theta | `abs(F_0)<=R sqrt(N) norm(F)`; numerator `=< (1,a),B Ftilde >` | Root equation, cube support, derivative closure | Offset amplitude, coefficient norm, matrix entries | Pointwise nonnegative domination; interval integration budget is section measure times `length(I)` | algebraic coupling and structural upper comparison | Root equation plus G1; empty sections vacuous, `Lambda=0` handled | Root equality supplies amplitude coupling; closure controls the exact derivative numerator | Exact G4 integrand on same `(theta,a)`; residual zero | `step-local` | G1 + primitive root equation -> G6 -> G7 | Coupling active at the first root point | Two `sqrt(1+NR^2)` factors multiply to `1+NR^2` | Support, closure identity | G1 matrix bound | `F_0=0`, `a=0`, `N=1`, empty section, `Lambda=0` pass | Without root coupling an uncontrolled `F_0` can defeat the transfer |
| General affine rate and `C_aff` | Quantitative specialization and scope closure | Each law and positive-length interval, then both suprema | G4 integral bounded by G5 area times G6 velocity | Exact section and velocity factors | Law, interval, offset, orientation, correlations | Nonnegative integral bounded by constant times `length(I)`; no union or recursive defect | summable control and structural upper comparison | Accepted-derived G4--G6; positive `R` permits literal algebra | Sources match the two exact factors in the integral | Same event, law, interval, cube, metric; residual zero | `step-local` | G4,G5,G6 -> G7 -> G12 | Pairwise bound valid before suprema | `kappa sqrt(2)(2R)^{N-1}(1+NR^2)Lambda=A(1+NR^2)Lambda/(sqrt(2)R)` | Density cap and parameter definitions | G4--G6 | Arbitrarily short intervals, correlated laws, `Lambda=0` pass | Missing either factor leaves the public constant unsupported |
| Homogeneous projective rate and `C_Pf` | Signed radial cancellation and quantitative specialization | Every homogeneous law/interval, then supremum | On `a perpendicular gamma`, `abs(<a,F'>)/norm(F)=abs(<a,gamma'>)` | Orthogonality and G1 projective control | Radial motion, coefficient magnitude, orientation | Nonnegative speed integrates with budget `Gamma_proj length(I)`; radial term cancels exactly | signed cancellation and summable control | Root-section orthogonality, G1, G5; stationary boundary handled | Orthogonality supplies the exact cancellation needed for a projective claim | Actual normalized curve and central section; residual zero | `step-local` | G1,G4,G5 -> G8 before G11/G12 | If speed is zero, section is already fixed and law-null | `abs(<a,gamma'>)<=R sqrt(N) norm(gamma')`; exact scalar factor `A sqrt(N/2)` | Homogeneous specialization, support, density | G1, G4, G5 | `Gamma=0`, radial rescaling, `N=1`, endpoints pass | Without orthogonality radial motion would be an uncontrolled residual |
| Monic certificate and pivots | Object compatibility, nonvanishing pivots, velocity caps | Every `d>=1` and bounded `J` | Constant shift matrix; two-set pivot partition; explicit `T_1,T_d` derivatives | Constant inner pivot and top outer pivot | Monomial growth, negative powers, transition, `d=1` | Finite disjoint partition; each theta charged once, budget `length(J)` | summable control and structural upper comparison | Direct `q=0` derivation; boundary `abs(theta)=1` assigned inner | Pivots supply exact nonvanishing and derivative control in each branch | Produced affine expression is the actual monic polynomial on the same lower coefficients; residual zero | `step-local` | Primitive monic data -> G9 -> G10 | Constant pivot active at `0` and `abs(theta)=1`; outer pivot active before use; `d=1` direct | Inner/outer derivative sums equal `d(d-1)/2`; outer cap <= `V_d` | Primitive monic tuple and cube | None before G9 | `d=1,d=2`, negative outer theta, empty pieces pass | Without the split, a chosen pivot or uniform velocity cap can fail |
| Exact monic baseline | Baseline invariance and public Rate Specialization Bridge | Every `d`, correlated law, bounded interval | G3 chart inequality + G9 cap; beta volume and partition length | `V_d`, `(2R)^{d-1}`, disjoint budget | Correlation, location of `J`, smaller outer constant | Two nonnegative integrals; finite partition sum exactly `length(J)` | summable control | G3 and G9; no singular leading-coordinate regime | Existing sources give the exact baseline claim class and constant | Same polynomial event, law, coefficient dimension, interval; residual zero | `step-local` | (G3,G9) -> G10 -> G12 | Every theta has an active pivot before chart consumption | `kappa(2R)^{d-1}V_d(length(E_1)+length(E_d))` | Density cap in dimension d | G3, G9 | `d=1`, point interval nullity, transition, empty pieces pass | Without either source the inherited exact baseline is lost |
| Counter-example scale | Exact baseline-scale audit and lower/upper comparison | `0<epsilon<=delta<=1` under the specified law | `norm(gamma')=1/[delta(1+x^2)]`; wedge area `2 integral_0^1 t u du` | Literal shear entry `1/delta` | Axes, boundaries, two signs, range `t<=1` | One static exact calculation; ratio constant in epsilon | structural lower/upper comparison | Direct example and G8; axes/boundaries law-null | Derivative entry has exactly the necessary projective scale | Same feature, law, interval, Euclidean metric; wedge/root events agree off null sets | `step-local` | Direct example + G8 -> G11 -> G12 | Source active at theta zero before event use | Upper `1/delta`; probability `epsilon/(4 delta)` | Example parameters and uniform density | G8 upper interface | `epsilon=delta`, `epsilon down 0`, `delta=1` pass | Suppressing `delta` would contradict the exact lower ratio |
| Full theorem assembly | Theorem closure and generated-output composition | All clauses and declared quantifiers | Conjoin G1, G3, G7, G8, G10, G11 | Complete acyclic producer set | Clause loss, hidden dependence, mode or object drift | No new accumulation; all limiting and partition budgets already closed | algebraic coupling | Accepted-derived outputs only; all declared boundaries retained | Every final claim has the matching producer claim class | Same objects clause by clause; residual zero | `step-local` | All producer paths precede G12 | Anchor/pivots/mechanisms active as recorded before assembly | Verbatim conjunction with no absorption | Four primitive IDs as allocated | G1--G11 | All listed null and boundary cases remain in scope | A missing producer would block an inseparable goal clause |

Every all-interval or accumulated row above has a concrete budget or control relation. In particular, the sole limiting row uses the increasing root-image cover and the nonnegative potential \(V_n\uparrow V\); the final affine and monic consumers then supply finite budgets from section/velocity control or explicit pivot velocities.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| `F!=0`, matrix certificate, projective certificate | G1 / `step_001` | Anchor, coefficient list, `abs(theta)<=T_*`, exact closure | Polynomial growth controlled by `T_*`; denominator by anchor; no uncontrolled term | Actual `B,F,gamma`, same coordinate/norm; zero residual | Operator <= Frobenius <= height; projector norm <=1 | Literal anchor one | G2, G3, G6, G8, G11, G12 | valid |
| Persistent-root law-nullity | G2 / `step_002` | Anchor direction and full joint absolute continuity | Feature dependence can make locus nonempty but not full-dimensional; no uncontrolled law mass | Exact persistent-root set and same law; zero probability residual | Proper affine subspace has zero Lebesgue and law measure | Anchor and density | G3, G12 | valid |
| Indicator and dropped-indicator chart inequalities | G3 / `step_003` | Nonzero pivot cover, finite-level quotient bounds, exact determinant, density cap, G2 | Near-zero pivot by exhaustion; multiplicity/tangency by area formula; endpoints/persistent roots null; no uncontrolled class | `Psi_j` outputs actual coefficient and every root enters a finite level; zero residual | Image volume <= Jacobian integral; `V_n up V`; indicator <=1 | Generated finite `1/n` margin, removed in limit | G4, G10, G12 | valid |
| Coordinate-free normal-velocity integral | G4 / `step_004` | G3, exact graph and derivative identities | Pivot denominators cancel; translation retained | Graph equals exact `H_theta` section in Euclidean Hausdorff measure; zero residual | Exact integrand equality | Cellwise nonzero pivot | G7, G8, G12 | valid |
| Translated section cap | G5 / `step_005` | Symmetric convex cube, Brunn concavity, Ball central cap | Offset by even concavity; orientation by Ball; `N=1` direct | Same cube/normal/measure after exact scaling; zero residual | `v(t)<=v(0)<=sqrt(2)(2R)^{N-1}` | Symmetry, convexity, Ball bound | G7, G8 | valid |
| Affine velocity cap | G6 / `step_006` | Root equation, cube support, closure, G1 | Offset only controlled on consumed root section; coefficient norm and `B` separately controlled | Exact G4 integrand; zero residual | Two `sqrt(1+NR^2)` factors multiply exactly | Root-section equality and anchor-backed denominator | G7 | valid |
| General affine public rate | G7 / `step_007` | G4 integral, G5 section cap, G6 velocity, density | Offset/orientation/law/interval/correlation all assigned; no hidden degree defect | Same affine event and modes; zero residual | Literal product and `A=(2R)^N kappa` | Earlier exact sources; no new slack | G12/final theorem | valid |
| Homogeneous public rate | G8 / `step_008` | G1 projective control, G4, G5, support/density | Radial component cancels; magnitude/orientation controlled; stationary case law-null | Same `gamma_F` and root section; zero residual | Exact cancellation and `kappa R sqrt(N) sqrt(2)(2R)^{N-1}=A sqrt(N/2)` | Orthogonality and anchor | G11, G12 | valid |
| Monic shift/pivot/velocity package | G9 / `step_009` | Explicit tuple, constant shift, two legal pivots | Growth/negative powers/transition/`d=1` separately controlled | Actual `p_alpha`, same d lower coefficients; zero residual | Direct derivatives and finite-sum identities | Constant inner pivot or nonzero outer pivot | G10 | valid |
| Exact monic baseline | G10 / `step_010` | G3, G9, beta volume, partition budget | Correlation by full density cap; no location or leading-coordinate defect | Same polynomial event/law/dimension; zero residual | Exact finite sum `kappa(2R)^{d-1}V_d length(J)` | G9 velocity cap | G12/final theorem | valid |
| Counter-example upper/lower scale | G11 / `step_011` | Explicit matrix, normalized curve, uniform density, G8 | Axes/boundaries null; both signs and `t<=1` controlled | Same feature/law/interval/metric; zero residual | Wedge area `epsilon/delta`, density `1/4`, upper scalar one | Literal `1/delta` entry | G12/final theorem | valid |
| Full exact-goal theorem | G12 / `step_012` | All prior exported interfaces | Every defect class already assigned; no assembly-added class | Clausewise identical objects/modes; zero residual | Verbatim conjunction | All earlier mechanism sources | Final theorem | valid |

No output relies on a transformed, weighted, preconditioned, whitened, empirical, population, or surrogate object. Every residual-to-target comparison is therefore an exact identity or same-target inequality, and no new target bridge is required.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Anchor nonvanishing, matrix bound, projective bound | G1 / `step_001` | G2, G3, G6, G8, G11, G12; static/homogeneous theorem clauses | Primitives -> G1 -> named consumers | derived | valid |
| Persistent-root nullity | G2 / `step_002` | G3 and final exceptional-set clause | G1 -> G2 -> G3/G12 | derived | valid |
| Exhausted affine chart sweep | G3 / `step_003` | G4, G10, G12; chart and monic clauses | (G1,G2,primitives) -> G3 -> consumers | derived | valid |
| Coordinate-free affine sweep | G4 / `step_004` | G7, G8, G12 | G3 -> G4 -> consumers | derived | valid |
| Translated cube-section certificate | G5 / `step_005` | G7, G8 | Primitive cube -> G5 -> consumers | derived | valid |
| Affine normal-velocity certificate | G6 / `step_006` | G7 | G1 + root identity -> G6 -> G7 | derived | valid |
| General affine rate and `C_aff` | G7 / `step_007` | G12 and final affine clause | G4,G5,G6 -> G7 -> G12 | derived | valid |
| Homogeneous rate and `C_Pf` | G8 / `step_008` | G11, G12 and final homogeneous clause | G1,G4,G5 -> G8 -> consumers | derived | valid |
| Monic instance, certificate, pivots, velocities | G9 / `step_009` | G10 | Primitive monic data -> G9 -> G10 | derived | valid |
| Exact affine-monic probability bound | G10 / `step_010` | G12 and baseline theorem clause | G3,G9 -> G10 -> G12 | derived | valid |
| Counter-example exact scale | G11 / `step_011` | G12 and scale-audit clause | G8 + direct example -> G11 -> G12 | derived | valid |
| Full theorem | G12 / `step_012` | Final theorem statement | All named producers -> G12 -> final use | derived | valid |

No generated output is consumed before production, and no closure or assembly label is used as a substitute for a missing producer.

## Early Obstruction And Repair Plausibility

- Contract contradiction check: None. The derivative-closure assumption is a declared normalization-class restriction, not a hidden conclusion, and the attempted theorem makes no claim for unrestricted Pfaffian presentations.
- Theorem-Critical Mechanism Witness Gate: Passed for every block. Upper control comes from the coefficient height; lower/nonvanishing content comes separately from the literal anchor; translation and orientation control come from Brunn and Ball; affine amplitude comes from the actual root equation; and homogeneous conditioning comes from exact orthogonality.
- Residual-To-Target Adequacy Gate: Passed. The chart outputs the original coefficient vector, the graph is the original affine section, the velocity is the consumed integrand, the normalized curve is the original `F/||F||`, and the monic branch keeps the original lower-coefficient vector and deterministic leading term.
- Exported Interface Feasibility Gate: Passed. Raw controls, every defect class, exact dominance relation, and all consumers are exposed in the feasibility table. No threshold is used to control an unrelated fixed or persistent term.
- Scope-Accumulation Compatibility Gate: Passed. The only limiting construction has the concrete nonnegative relation `S_n up S` and `V_n up V`; affine integration has budget `|I|`, and monic specialization has budget `|E_1|+|E_d|=|J|`.
- Noncircular Closure Gate: Passed. The anchor and coefficient data precede pivot use; persistent nullity precedes the area sweep; chart output precedes section conversion and monic recovery; section and velocity sources precede the rates; and all rates precede assembly.
- Entry-State / Activation Trace Gate: Passed. The anchor is active before normalization; each nonzero pivot root enters a finite exhaustion level; monic pivots are active on their assigned sets; and Counter-example projective speed is active at `theta=0`. Stationary homogeneous motion leaves a fixed law-null section rather than a false positive event.
- Boundary and null stress: `N=1`, `q=0`, `m=0`, `widehat Lambda=0`, empty sections, tangent/multiple/endpoint roots, persistent-root coefficients, `d=1`, `|theta|=1`, negative outer monic points, `epsilon=delta`, coefficient axes, and wedge boundaries all have explicit handling.
- Mode and dependence audit: No unsupported probability, interval, norm, or asymptotic upgrade occurs. Suprema are taken only after a deterministic pairwise bound, and every literal factor is retained.
- Baseline invariance: Passed. G10 reproduces the exact deterministic-leading-coefficient monic bound from G3, and G11 retains the exact `1/delta` normalization scale.
- Same-setting repair plausibility: No repair is required. The remaining work is local proof execution under unchanged claims, dependencies, assumptions, outputs, mechanisms, and theorem contract.
- Candidate idea-level obstruction: None.

## Global Gaps And Hard Steps

None.

The theorem-level interfaces, mechanism sources, dependency flow, quantitative bridges, and boundary cases close at the diagnostic granularity required before local proving. All twelve local step proofs still have to establish their accepted claims independently. The highest-risk execution item is `step_003`, followed by the exact source statement/scaling in `step_005` and the zero-dimensional convention in `step_004`; these are proof-work priorities, not unresolved global links or authority to change the sketch.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim. Every local unit and cited-tool application described here must be independently proved, restated, or discharged by the corresponding `/proof-step` and accepted by `/proof-step-review` before theorem assembly.

## Suggested Routing

None

Continue with all accepted steps. Prioritize `/proof-step step_003` as the principal measure-theoretic execution risk, while preserving the accepted dependency order and running the required `/global-proof-review` before any step proof is consumed downstream.
