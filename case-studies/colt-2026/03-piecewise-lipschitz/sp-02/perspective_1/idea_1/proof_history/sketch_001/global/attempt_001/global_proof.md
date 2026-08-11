# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_1/idea_1`
- Global proof attempt: 1
- Sketch attempt: 1
- Binding setting: `perspective_1/idea_1/setting.md`, SHA-256 `f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83`
- Reviewed sketch: `perspective_1/idea_1/proof_sketch.md`, SHA-256 `e7035d01ff910e55426d09e1add806b49103404582df2cf3e998000a8eebe898`
- Reviewed sketch review: `perspective_1/idea_1/proof_sketch_review.md`, SHA-256 `ccc24fd25cd6ac468831c0cd84f8aea642d7584e7cd402686da3bb6f82a86561`
- Review confirmation: `Sketch Review Status = ACCEPTED`, viability score 9, with `Smallest Retry Target = None` and `Retry Mode = none`.
- Goal mode: exact-goal, unconditional, full-progress theorem. The affine clause is invoked under its stated primitive chart-data condition; this is part of the exact goal and is not a target weakening.

## Status

COMPLETE_DRAFT

The accepted roadmap closes at theorem-diagnostic granularity. The two main measure-theoretic interfaces, the central incidence projection and the affine chart exhaustion, have explicit Jacobians, legal producer-consumer paths, null or extended-real boundary handling, and current-target-compatible area-formula arguments. Their fully formal local proofs remain obligations of their assigned proof steps, but no theorem-level bridge, source, assumption, output, or dependency is missing.

## Attempted Theorem Claim

Under `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, and `assump:cube-density-laws`, fix the deterministic presentation on

\[
\Theta=[c-h,c+h],\qquad x(\theta)=\frac{\theta-c}{h},\qquad
D_*:=\Delta B_Q(1+qB_P).
\]

The attempted theorem is exactly the conjunction below.

1. For every \(x\in[-1,1]\) and every \(i\leq N\),
   \[
   \lvert G_i'(x)\rvert\leq D_*,
   \qquad
   \Gamma_{\mathrm{proj}}(F)\leq \frac{\sqrt N D_*}{h}.
   \]
2. Simultaneously for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\),
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)\lvert I\rvert
   \leq \frac{AN\Delta B_Q(1+qB_P)}{\sqrt2 h}\lvert I\rvert,
   \]
   and therefore
   \[
   C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
   \leq \frac{AN\Delta B_Q(1+qB_P)}{\sqrt2 h}.
   \]
3. Whenever `assump:affine-chart-data` is also invoked, for every admissible \(\mu\) and every interval \(I\subseteq\Theta\),
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:F_0(\theta)+\langle\alpha,F(\theta)\rangle=0]
   \leq
   \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
   \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta,
   \]
   in the extended-real sense.
4. For every \(d\geq1\), bounded interval \(J\), and possibly correlated lower-coefficient law with density at most \(\kappa\), the same affine clause, applied to the exact monic presentation and the prescribed pivot partition, gives
   \[
   \Pr[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq \kappa(2R)^{d-1}\left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.
   \]
   The deterministic leading coefficient remains outside the \(d\)-dimensional random vector.
5. For Counter-example 1, the presentation has \(B_Q=1/\delta\), and under the uniform square law
   \[
   \Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
   =\frac{\epsilon}{4\delta},\qquad 0<\epsilon\leq\delta,
   \]
   so the explicit upper bound records the necessary \(1/\delta\) scale.

All constants are literal. There are no hidden constants or confidence parameters. The central exposed tuple is
\((q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1})\), with degree-zero dependence on \(M\). Probability is ordinary probability for each fixed law, laws may have arbitrarily correlated coordinates, interval scope is uniform, and the projective metric is Euclidean.

## Whole-Proof Draft

### Block B1: Primitive coefficient envelopes and the derivative bound (`step_001`)

Put \(z(x)=(x,\eta_1(x),\ldots,\eta_q(x))\). By `assump:anchored-unit-range`, every coordinate of \(z(x)\) lies in \([-1,1]\). If
\(Q_i(z)=\sum_\nu c_{i,\nu}z^\nu\), then for every coordinate \(r\),

\[
\left\lvert\partial_{z_r}Q_i(z)\right\rvert
\leq \sum_\nu \lvert c_{i,\nu}\rvert\nu_r
\leq \Delta\sum_\nu\lvert c_{i,\nu}\rvert
\leq \Delta B_Q.
\]

Likewise, the unit-box evaluation and the monomial coefficient convention give
\(\lvert P_j(x,\eta_1,ldots,\eta_j)\rvert\leq B_P\). The exact chain rule in the Balcan--Nguyen--Sharma \(p=1\) convention therefore yields

\[
\begin{aligned}
\lvert G_i'(x)\rvert
&=\left\lvert\partial_xQ_i(z(x))
 +\sum_{j=1}^q\partial_{y_j}Q_i(z(x))P_j(x,\eta_1(x),\ldots,\eta_j(x))\right\rvert\\
&\leq \Delta B_Q+q\Delta B_QB_P
=D_*.
\end{aligned}
\]

For \(q=0\), the sum is empty and \(B_P=0\). No degree-count or range factor involving \(M\) appears: \(M\) has degree-zero dependence because \(B_P\) already controls the value of each degree-\(M\) chain polynomial on the actual unit box.

### Block B2: Nonvanishing and projective-speed transfer (`step_002`)

The literal anchor gives \(G_1\equiv1\), hence \(\lVert G(x)\rVert_2\geq1\) everywhere. Thus normalization is defined before any root-incidence object is formed. Direct differentiation gives

\[
\gamma_G'(x)
=\frac{(I_N-\gamma_G(x)\gamma_G(x)^{\mathsf T})G'(x)}{\lVert G(x)\rVert_2}.
\]

The matrix in the numerator is an orthogonal projector and has operator norm at most one. Block B1 gives \(\lVert G'(x)\rVert_2\leq\sqrt N D_*\), so

\[
\lVert\gamma_G'(x)\rVert_2
\leq\frac{\lVert G'(x)\rVert_2}{\lVert G(x)\rVert_2}
\leq\sqrt N D_*.
\]

Because \(\gamma_F(\theta)=\gamma_G(x(\theta))\) and \(x'(\theta)=h^{-1}\),

\[
\gamma_F'(\theta)=h^{-1}\gamma_G'(x(\theta)),\qquad
\Gamma_{\mathrm{proj}}(F)\leq\frac{\sqrt N D_*}{h}.
\]

This is an exact same-target transfer; there is no surrogate normalized curve and no unexposed coordinate residual.

### Block B3: Central incidence projection (`step_003`)

Fix an interval \(I\subseteq\Theta\), let \(K=[-R,R]^N\), and abbreviate
\(\gamma=\gamma_F\). Endpoint roots lie in at most two coefficient hyperplanes and are Lebesgue-null, so it suffices to work on the interval interior and restore endpoints afterward. Define

\[
\mathcal S_I=\{(\theta,a)\in I\times K:\langle a,\gamma(\theta)\rangle=0\},
\qquad \pi(\theta,a)=a.
\]

For \(g(\theta,a)=\langle a,\gamma(\theta)\rangle\), the coefficient gradient is
\(\nabla_a g=\gamma(\theta)\), of norm one. Hence the incidence set is a \(C^1\), countably rectifiable hypersurface, independently of root transversality. The area formula for the Lipschitz projection gives

\[
\operatorname{Leb}^N(\pi(\mathcal S_I))
\leq\int_{\mathcal S_I}J_{\mathcal S_I}\pi\,d\mathcal H^N,
\]

because the indicator of a nonempty fiber is bounded by projection multiplicity. To calculate the right-hand side, set
\(u(\theta,a)=\langle a,\gamma'(\theta)\rangle\). The unit normal to \(\mathcal S_I\) is

\[
n=\frac{(u,\gamma)}{\sqrt{1+u^2}}.
\]

Consequently the tangential Jacobian of coefficient projection is
\(J_{\mathcal S_I}\pi=\lvert u\rvert/\sqrt{1+u^2}\), while the tangential Jacobian of the coordinate map \(\tau(\theta,a)=\theta\) is
\(J_{\mathcal S_I}\tau=1/\sqrt{1+u^2}\). Coarea for \(\tau\) therefore cancels the common denominator and gives the exact current-notation identity

\[
\int_{\mathcal S_I}J_{\mathcal S_I}\pi\,d\mathcal H^N
=\int_I\int_{\gamma(\theta)^\perp\cap K}
\lvert\langle\gamma'(\theta),a\rangle\rvert
\,d\mathcal H^{N-1}(a)\,d\theta.
\]

Thus

\[
\operatorname{Leb}^N\{a\in K:\exists\theta\in I,\ \langle a,F(\theta)\rangle=0\}
\leq
\int_I\int_{\gamma(\theta)^\perp\cap K}
\lvert\langle\gamma'(\theta),a\rangle\rvert
\,d\mathcal H^{N-1}(a)\,d\theta.
\tag{C1}
\]

The equality of the \(F\)-root and \(\gamma\)-root events follows from nonvanishing. Tangent roots have zero projection Jacobian; multiple roots increase multiplicity and are favorable for the upper bound. A coefficient producing an identically zero combination lies in the proper linear space
\(\bigcap_{\theta\in I}\gamma(\theta)^\perp\), hence is null. Constant normalized segments sweep only a fixed null hyperplane. For \(N=1\), the anchor forces the normalized curve to be constant and the event is \(\{a=0\}\), so (C1) also holds directly.

### Block B4: Cube sections and arbitrary-density conversion (`step_004`)

For \(N\geq2\), Ball's central cube-section theorem, scaled from the unit-volume cube to \(K\), states

\[
\mathcal H^{N-1}(\gamma(\theta)^\perp\cap K)
\leq\sqrt2(2R)^{N-1}
\]

uniformly in the Euclidean section orientation. Also, for every \(a\in K\),
\(\lVert a\rVert_2\leq R\sqrt N\), and hence

\[
\lvert\langle\gamma'(\theta),a\rangle\rvert
\leq R\sqrt N\,\lVert\gamma'(\theta)\rVert_2.
\]

If \(E_I\) is the central root coefficient set, `assump:cube-density-laws` and (C1) imply, without any independence assumption,

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}(E_I)
&\leq\kappa\operatorname{Leb}^N(E_I)\\
&\leq\kappa R\sqrt N\sqrt2(2R)^{N-1}
 \int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta\\
&=A\sqrt{\frac N2}\int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta.
\end{aligned}
\tag{C2}
\]

The algebra in the last line is literal:
\(\kappa R\sqrt N\sqrt2(2R)^{N-1}=\kappa(2R)^N\sqrt{N/2}=A\sqrt{N/2}\).
The \(N=1\) event is coefficient-null as handled in Block B3, so (C2) remains valid.

### Block B5: Uniform central closure and the public rate (`step_005`)

By definition of the essential supremum,

\[
\int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta
\leq\Gamma_{\mathrm{proj}}(F)\lvert I\rvert.
\]

Substituting Block B2 into (C2) gives

\[
A\sqrt{\frac N2}\Gamma_{\mathrm{proj}}(F)
\leq A\sqrt{\frac N2}\frac{\sqrt N D_*}{h}
=\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2h}.
\]

These inequalities hold with the same deterministic constants for every admissible \(\mu\) and every positive-length \(I\). Dividing by \(\lvert I\rvert\) and taking the two defining suprema proves the stated bound on
\(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\). No probability, horizon, or metric upgrade occurs at this stage.

### Block B6: General affine pivot charts (`step_006`)

Fix \(j\) and \(m\), and let

\[
D_{j,m}=\{(\theta,\beta):\theta\in E_{j,m},\ \beta\in[-R,R]^{N-1},\
\lvert T_j(\theta,\beta)\rvert\leq R\}.
\]

Let \(\Psi_j(\theta,\beta)\) be the coefficient vector obtained by inserting
\(T_j(\theta,\beta)\) into coordinate \(j\). Since
\(\lvert F_j\rvert\geq1/m\) on \(E_{j,m}\), the quotient defining \(T_j\) is \(C^1\) on an open neighborhood of the compact threshold set
\(\{\lvert F_j\rvert\geq1/m\}\). Restricted to the bounded chart domain, \(\Psi_j\) is therefore Lipschitz (equivalently, it admits a finite local Lipschitz cover). Its derivative matrix has the \(N-1\) identity columns from \(\beta\) and the chart-velocity column from \(\theta\), so

\[
\lvert\det D\Psi_j(\theta,\beta)\rvert
=\lvert\partial_\theta T_j(\theta,\beta)\rvert.
\tag{A1}
\]

If \(\alpha\in K\) has a root \(\theta\in E_{j,m}\), then with
\(\beta=\alpha_{-j}\), the root equation gives
\(T_j(\theta,\beta)=\alpha_j\). Hence \(\alpha\in\Psi_j(D_{j,m})\). The Euclidean area formula and image-multiplicity inequality yield

\[
\operatorname{Leb}^N(\Psi_j(D_{j,m}))
\leq\int_{D_{j,m}}\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta
\leq\int_{E_{j,m}}\int_{[-R,R]^{N-1}}
\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta.
\tag{A2}
\]

Tangent or multiple roots create zero Jacobian or additional preimages and do not invalidate this upper bound. The full joint density cap converts coefficient volume to probability. Because
\(E_{j,m}\uparrow E_j\) and every \(\theta\in E_j\) has \(F_j(\theta)\neq0\), every charted root enters some finite exhaustion level. Monotone convergence for the nonnegative integrand in (A2), followed by the finite union bound over \(j\), gives

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:F_0(\theta)+\langle\alpha,F(\theta)\rangle=0]
\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta.
\tag{A3}
\]

If a limiting integral is infinite, (A3) is still exactly the extended-real target. If \(I\) has zero length, its root event is contained in a fixed proper affine hyperplane and is law-null, matching the zero integral. An affine combination identically zero on a nontrivial interval is also contained in a proper affine hyperplane obtained at any fixed point, because \(F_1=1\), and is law-null.

### Block B7: Exact monic charts (`step_007`)

Fix \(d\geq1\), a bounded interval \(J\), and a nondegenerate
\(\Theta=[c-h,c+h]\supseteq J\). Take

\[
F_0(\theta)=\theta^d,\qquad F_{k+1}(\theta)=\theta^k,
\quad 0\leq k\leq d-1.
\]

This is the exact \(q=M=0\) polynomial presentation in normalized coordinate \(x\), with
\(Q_0(x)=(c+hx)^d\), \(Q_{k+1}(x)=(c+hx)^k\), \(N=d\),
\(A=(2R)^d\kappa\), and augmented degree \(\Delta_{\mathrm{aug}}=d\). The random vector remains
\((\alpha_0,\ldots,\alpha_{d-1})\); the leading coefficient one is deterministic.

For \(d\geq2\), on \(E_1=J\cap\{\lvert\theta\rvert\leq1\}\), solve for \(\alpha_0\):

\[
T_1(\theta,\beta)=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\]

and therefore

\[
\lvert T_1'(\theta,\beta)\rvert
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2=:V_d.
\tag{M1}
\]

On \(E_d=J\cap\{\lvert\theta\rvert>1\}\), solve for \(\alpha_{d-1}\):

\[
T_d(\theta,\beta)=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
\]

Since \(\lvert\theta\rvert^{k-d}\leq1\) for the displayed range,

\[
\lvert T_d'(\theta,\beta)\rvert
\leq1+R\sum_{k=0}^{d-2}(d-1-k)
=1+\frac{Rd(d-1)}2\leq V_d.
\tag{M2}
\]

At \(\lvert\theta\rvert=1\), the point belongs to the constant-pivot chart, so no boundary is uncovered. For \(d=1\), the sole chart has
\(T_1=-\theta\) and \(\lvert T_1'\rvert=1=V_1\).

### Block B8: Exact affine-monic baseline (`step_008`)

Block B7 verifies the primitive chart-data interface of Block B6 for exactly the polynomial

\[
p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
\]

There is no object or probability-space residual. In (A3), each inner cube has dimension
\(d-1\) and volume \((2R)^{d-1}\), with the zero-dimensional convention equal to one when \(d=1\). Equations (M1)--(M2) and the disjoint partition identity give

\[
\begin{aligned}
\Pr[\exists\theta\in J:p_\alpha(\theta)=0]
&\leq\kappa(2R)^{d-1}V_d
 (\lvert E_1\rvert+\lvert E_d\rvert)\\
&=\kappa(2R)^{d-1}
 \left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.
\end{aligned}
\]

This is the inherited Theorem 2 constant, derived from the same affine chart theorem without a separate polynomial theorem, singular augmentation, remainder, probability conversion, or restriction on coefficient correlation.

### Block B9: Counter-example 1 scale (`step_009`)

For \(G(x)=(1,x/\delta)\) on \([-1,1]\), the exact tuple is
\(h=1,q=M=0,\Delta=1,N=2\), and

\[
B_Q=\max\{1,1/\delta\}=1/\delta.
\]

Let \(t=\epsilon/\delta\leq1\). Outside coefficient-null axes, a root in
\([0,\epsilon]\) is equivalent to opposite coefficient signs and
\(\lvert\alpha_1\rvert\leq t\lvert\alpha_2\rvert\). In either relevant quadrant the region has area
\(\int_0^1 tu\,du=t/2\); the two quadrants have total area \(t\). Multiplication by the uniform density \(1/4\) gives

\[
\Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
=\frac{t}{4}=\frac{\epsilon}{4\delta}.
\]

Dividing by \(\epsilon\) gives the lower scale \(1/(4\delta)\), while Blocks B1--B5 retain \(B_Q=1/\delta\) in the upper constant. The proposed presentation therefore detects rather than hides the source counterexample.

### Block B10: Final assembly (`step_010`)

Blocks B1--B2 prove the primitive-presentation bridge. Blocks B3--B5 prove the central probability and supremum clauses under the exact law, interval, and Euclidean conventions. Block B6 proves the general affine clause. Blocks B7--B8 instantiate that same clause on the exact lower-coefficient monic object and recover the baseline constant. Block B9 supplies the required scale audit. Their dependency paths are acyclic and their output objects agree exactly with the final consumers, so conjoining these conclusions proves every inseparable clause of the attempted theorem without a new assumption, lemma, mode change, hidden constant, or target substitution.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| B1, primitive derivative envelope | Produces \(D_*\) from raw Pfaffian presentation data | `step_001` | None | `assump:balcan-common-chain`, `assump:anchored-unit-range` | No interface gap; the proof step must formalize the coefficient-envelope sums. |
| B2, projective bridge | Supplies nonvanishing and the explicit \(\Gamma_{\mathrm{proj}}\) bound | `step_002` | B1 | `assump:parameter-regime`, `assump:anchored-unit-range` | No interface gap; the proof step must formalize normalization differentiation and the exact \(h^{-1}\) transfer. |
| B3, central incidence projection | Converts the root union to coefficient volume with multiplicity | `step_003` | B2 | `assump:parameter-regime`, `assump:anchored-unit-range` | No interface gap; the proof step must state the rectifiable area/coarea wrapper and endpoint/null-set treatment. |
| B4, section and density bound | Converts coefficient volume to arbitrary-law probability | `step_004` | B3 | `assump:parameter-regime`, `assump:cube-density-laws` | No interface gap; the proof step must instantiate Ball's scaling and handle \(N=1\). |
| B5, central rate closure | Produces both public central bounds and the supremum constant | `step_005` | B2, B4 | Primitive parameter meanings only | None; exact substitution and suprema. |
| B6, affine chart theorem | Produces the general affine inequality without transversality or uniform pivot margin | `step_006` | B1 regularity | All five primitive assumptions when invoked | No interface gap; the proof step must formalize finite-level Lipschitz coverage, area formula, and monotone exhaustion. |
| B7, monic chart certificate | Supplies exact object mapping, pivots, and velocities | `step_007` | None | Primitive scalar specialization and chart data | None; direct finite algebra including \(d=1\). |
| B8, monic baseline | Recovers Theorem 2 from B6 | `step_008` | B6, B7 | `assump:cube-density-laws` in dimension \(d\) | None; exact cube-volume and partition integration. |
| B9, counterexample audit | Proves the exact lower scale and matches the presentation budget | `step_009` | B5 for comparison; direct example for lower bound | Specialized primitive assumptions | None; direct planar area calculation. |
| B10, assembly | Conjoins every exact-goal clause | `step_010` | B5, B6, B8, B9, retaining B1--B2 | No new assumptions | None; assembly adds no mathematical claim. |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | B1 | Supplies B2 and regularity for B6 | Monomial derivative envelope, chain-rule sum, \(q=0\), degree-zero \(M\) dependence | Diagnostic interface is closed. |
| `step_002` | B2 | Supplies B3 and B5 | Anchor lower bound, projector identity, vector norm, exact coordinate rescaling | Same normalized target throughout. |
| `step_003` | B3 | Supplies B4 | Regular incidence hypersurface, both tangential Jacobians, area/coarea composition, multiplicity and null residuals | Highest-risk central local unit, but source and interface are explicit. |
| `step_004` | B4 | Supplies B5 | Ball source instantiation and scaling, density integration, \(N=1\) branch, literal constant | No independence or probability conversion. |
| `step_005` | B5 | Supplies B9 comparison and B10 | Integral-to-essential-supremum bound, substitution, quotient, two suprema | Pure closure under earlier outputs. |
| `step_006` | B6 | Supplies B8 and B10 | Finite-level Lipschitz chart, determinant, image multiplicity, density cap, exhaustion and extended-real limit | Highest-risk affine local unit, but source and interface are explicit. |
| `step_007` | B7 | Supplies B8 | Exact normalized polynomial presentation, two chart derivatives, transition, \(d=1\), parameter tuple | No polynomial root theorem may be imported. |
| `step_008` | B8 | Supplies B10 | Apply B6 to B7, integrate the \((d-1)\)-cube, preserve arbitrary correlation and exact constant | Baseline invariance bridge. |
| `step_009` | B9 | Supplies B10 | Exact wedge equivalence, two sign branches, null boundaries, scale comparison | Lower calculation independent of the upper theorem. |
| `step_010` | B10 | Final theorem use | Verify clause, quantifier, mode, dimension, parameter, and baseline preservation | No new lemma or assumption is allowed. |

## Dependency And Assumption Audit

The accepted dependency graph is acyclic:

\[
\begin{gathered}
\texttt{step\_001}\to\texttt{step\_002}\to\texttt{step\_003}\to\texttt{step\_004},\\
\{\texttt{step\_002},\texttt{step\_004}\}\to\texttt{step\_005}\to\texttt{step\_009},\\
\texttt{step\_001}\to\texttt{step\_006},\qquad
\{\texttt{step\_006},\texttt{step\_007}\}\to\texttt{step\_008},\\
\{\texttt{step\_005},\texttt{step\_006},\texttt{step\_008},\texttt{step\_009}\}
\to\texttt{step\_010}.
\end{gathered}
\]

| Condition or object | Provenance classification | Producer or source | Consumers | Audit result |
| ------------------- | ------------------------- | ------------------ | --------- | ------------ |
| Parameter ranges, compact coordinate map, finite static budgets | primitive condition | `assump:parameter-regime` | B1--B10 as allocated | Checkable before all generated objects. |
| Common chain and output representation | primitive condition | `assump:balcan-common-chain` | B1, B6, B7 specialization | Exact \(p=1,q,M,\Delta\) convention. |
| Unit chain range and literal anchor | primitive condition | `assump:anchored-unit-range` | B1, B2, B3, B6 | Supplies both upper evaluation control and the required nonvanishing lower source. |
| Cube support and joint density cap | primitive condition | `assump:cube-density-laws` | B4, B6, B8, B9 | No independence is added. |
| Deterministic offset and measurable nonzero-pivot partition | primitive condition for the affine clause | `assump:affine-chart-data` | B6 | The fallback \(E_1=I\) is available from the anchor. |
| Derivative envelope \(D_*\) | accepted-derived conclusion when proved | B1 / `step_001` | B2 and B6 regularity | Not assumed theorem-facing. |
| Nonvanishing and projective speed | accepted-derived conclusion when proved | B2 / `step_002` | B3, B5 | Produced before consumption. |
| Incidence-volume inequality | accepted-derived conclusion when proved | B3 / `step_003` | B4 | Root event is the same coefficient-space target. |
| Central probability and rate interfaces | accepted-derived conclusions when proved | B4--B5 | B9 comparison, B10 | Uniformity is a conclusion, not a good-event assumption. |
| Exhausted affine coverage | accepted-derived conclusion when proved | B6 / `step_006` | B8, B10 | Pivot membership is proved by exhaustion, not assumed uniformly. |
| Monic pivots and velocities | accepted-derived conclusion when proved | B7 / `step_007` | B8 | Exact lower-coefficient object. |
| Monic baseline and counterexample scale | accepted-derived conclusions when proved | B8, B9 | B10 | Both baseline obligations are preserved exactly. |
| Fixed \(I\), \(j\), \(m\), or chart domain inside a local lemma | local conditional hypothesis | B3 or B6 local wrapper | Discharged inside the same block | Never promoted to the final theorem assumptions. |

Quantifier order is preserved. The deterministic presentation and its full parameter tuple are fixed first; the central bound then holds for every law and every positive-length interval before the suprema are taken. In the affine clause, \(F_0\), the pivot partition, a law, and an interval are arbitrary under the primitive chart interface. In the monic clause, \(d\), \(J\), and the lower-coefficient law are arbitrary, and the chosen nondegenerate \(\Theta\supseteq J\) only supplies a valid normalized presentation. There is no missing derived-condition bridge.

## Citation And Tool Audit

| Source or tool | Current-branch role and object mapping | Assumptions or hypotheses to discharge | Needed conclusion and downstream interface | Convention, target, and non-output audit | Affected block / Step ID |
| -------------- | -------------------------------------- | --------------------------------------- | ------------------------------------------ | ---------------------------------------- | ------------------------ |
| Balcan--Nguyen--Sharma, *Algorithm Configuration for Structured Pfaffian Settings*, arXiv:2409.04367, Definitions 2--4 | Fixes the common triangular-chain convention with ambient dimension \(p=1\), length \(q\), chain degree \(M\), and output degree \(\Delta\) | `assump:balcan-common-chain` states the exact specialization; normalized coordinate and total-degree convention are explicit | Only convention identity; B1 derives the quantitative bound directly | Same monomial, coordinate, and degree convention. The source does not supply the derivative envelope or anti-concentration theorem. | B1, B7 / `step_001`, `step_007` |
| Direct monomial coefficient envelope and ordinary chain rule | Acts on the actual \(Q_i,P_j,z(x)\) | Unit-box values and \(\ell_1\) coefficient budgets | \(\lvert G_i'\rvert\leq D_*\) | Exact setting convention; raw-assumption path is displayed in B1; endpoints and \(q=0\) are included | B1 / `step_001` |
| Direct Euclidean normalization identity | Acts on the actual nonzero \(G\) and exact affine coordinate map | \(G_1=1\), B1, \(h>0\) | Projective-speed certificate consumed by B3 and B5 | Same Euclidean norm and same normalized target; zero residual; no external theorem needed | B2 / `step_002` |
| Euclidean area formula for Lipschitz maps and coarea formula on a \(C^1\) rectifiable hypersurface | Current-notation incidence set \(\mathcal S_I\), projection \(\pi\), and coordinate map \(\tau\) | B2 gives \(C^1\) unit \(\gamma\); \(\nabla_a g=\gamma\) has norm one; projection is Lipschitz; measurable cube restriction | Image-volume bound and exact integrand \(\lvert\langle\gamma',a\rangle\rvert\), consumed by B4 | Source convention is Euclidean Hausdorff/Lebesgue measure. B3 computes both tangential Jacobians and treats endpoints, critical images, multiplicity, stationary segments, and \(N=1\). | B3 / `step_003` |
| Edelman--Kostlan, *How Many Zeros of a Random Polynomial Are Real?*, DOI:10.1090/S0273-0979-1995-00571-9, Theorem 5.1; published erratum DOI:10.1090/S0273-0979-96-00678-7 | Cross-checks the normalized arbitrary-density zero-intensity integrand | Differentiable nonvanishing evaluation vector and a joint coefficient density | Cross-check only; no theorem conclusion is consumed as proof authority | The source does not supply the union-area multiplicity wrapper, Ball bound, Pfaffian parameter bridge, or affine theorem. The current proof derives its own incidence interface. | B3 / `step_003` |
| Ball, *Cube Slicing in R^n*, DOI:10.1090/S0002-9939-1986-0840631-0, main theorem | Unit-volume central Euclidean cube section scales to \(\gamma(\theta)^\perp\cap[-R,R]^N\) | Central hyperplane, Euclidean Hausdorff measure; \(N\geq2\) for the cited instantiation | \(\mathcal H^{N-1}\leq\sqrt2(2R)^{N-1}\), consumed in B4 | Exact orientation and metric match. It does not control hyperplane motion, density, or \(N=1\); B3, the density cap, and a direct \(N=1\) argument supply those outputs. | B4 / `step_004` |
| Density-cap integration and Cauchy--Schwarz | Same coefficient cube, section, event, and law | `assump:cube-density-laws`, cube support | Convert B3 volume to B4 probability with literal \(A\sqrt{N/2}\) | Arbitrary correlation is allowed; no conditional density or independence is introduced | B4 / `step_004` |
| Euclidean area formula for the chart maps \(\Psi_j\) and monotone convergence | Exact affine coefficient map on \(D_{j,m}\) | \(C^1\) data, finite-level pivot margin, bounded chart domain, measurable exhaustion | Image-volume bound using \(\lvert\partial_\theta T_j\rvert\), then full affine inequality | Same coefficient ordering up to insertion/permutation, same cube and law. Tangencies, multiplicity, measurable pieces, and divergent limits are handled in B6. | B6 / `step_006` |
| Balcan--Dick--Pegden, *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Theorem 18 | Affine-coefficient lineage and baseline convention | Not used to discharge the new general chart theorem | No black-box conclusion is consumed | Known non-output is the exact arbitrary-\(F_0,F\) chart integral used here. B6 and B7--B8 derive the needed outputs directly. | B6--B8 / `step_006`--`step_008` |
| Direct monic chart differentiation and finite-sum identities | Exact \(p_\alpha\), lower-coefficient vector, and prescribed pivots | Explicit monomial presentation, coefficient cube, branch split | Velocity cap \(V_d\) and exact specialization | Same scalar target and law dimension; handles \(d=1\), \(\lvert\theta\rvert=1\), and arbitrary bounded interval location | B7--B8 / `step_007`, `step_008` |
| Direct planar Lebesgue-area calculation | Exact Counter-example 1 coefficient event | Uniform density and \(0<\epsilon\leq\delta\leq1\) | Probability \(\epsilon/(4\delta)\) and lower scale | Same feature vector, interval, coefficient law, and coordinate; axes and wedge boundaries are null | B9 / `step_009` |

No cited source is asked to supply a conclusion outside its statement class. In particular, Ball supplies section size but not motion; Edelman--Kostlan is a cross-check rather than a replacement for the area-formula union bound; and Balcan--Dick--Pegden is lineage rather than an independent proof of the required affine specialization.

## Quantitative Dependence Audit

| Clause | Exposed variables | Hidden constants | Fixed quantities and quantifier mode | Probability / horizon / metric mode | Specialization and baseline obligation | Audit result |
| ------ | ----------------- | ---------------- | ------------------------------------ | ----------------------------------- | -------------------------------------- | ------------ |
| Derivative and projective bridge | \(q,M,\Delta,N,B_P,B_Q,h^{-1}\) | None | Fixed deterministic common-chain presentation; pointwise in \(x\) and \(\theta\) | Deterministic; global pointwise/essential-supremum; Euclidean norm | Retain \(B_Q=1/\delta\); \(M\) has degree-zero dependence | Exact. |
| Central probability and \(C^{\mathrm{Pf}}\) | \(A=(2R)^N\kappa,N,\Gamma_{\mathrm{proj}}\), then all primitive bridge variables | None | Presentation and \(N,R,\kappa\) fixed while \(\mu\) and positive-length \(I\) range | Ordinary probability; interval-uniform then supremum; Euclidean/Hausdorff/Lebesgue metrics | Literal identity \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\) and exact B2 substitution | Exact; no union bound over laws or intervals. |
| General affine clause | \(\kappa,R,N,F_0,F,(E_j)_j\) and the displayed chart integrals | None | Deterministic affine presentation and pivot partition fixed while \(\mu,I\) range | Ordinary probability; every interval; coefficient Lebesgue measure and scalar Jacobian; extended-real allowed | Keep deterministic offset outside the random vector | Exact; no pivot-margin dependence. |
| Monic baseline | \(d,R,\kappa,\lvert J\rvert\), with \(q=M=0,N=d,A=(2R)^d\kappa,\Delta_{\mathrm{aug}}=d\) | None | \(d,R,\kappa\) fixed; every bounded \(J\), every possibly correlated lower-coefficient law | Ordinary probability; interval-uniform; scalar velocity | Exact Rate Specialization Bridge from B6, including both pivots, \((2R)^{d-1}\), partition length, and \(d=1\) | Exact baseline, no loss or independent citation. |
| Counter-example scale | \(\delta,\epsilon\), and the full specialized tuple | None | Uniform square law fixed | Exact ordinary probability on \([0,\epsilon]\) | Preserve both exact \(1/(4\delta)\) lower scale and \(B_Q=1/\delta\) upper scale | Exact. |

There are no auxiliary tolerances or confidence parameters. No limit, expectation, supremum, derivative, integral, or conditioning interchange changes the declared mode. The only limiting operation is the nonnegative affine exhaustion, justified by monotone convergence and allowed to have value \(+\infty\). The two inherited baseline obligations are preserved: the exact monic Theorem 2 constant and Counter-example 1's exact \(1/(4\delta)\) lower scale.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ---------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Derivative envelope \(\lvert G_i'\rvert\leq D_*\) | Primitive-source quantitative upper bound; starts the conditioning bridge | Pointwise for all \(x\in[-1,1]\), all \(i\) | \(G_i'=\partial_xQ_i+\sum_j\partial_{y_j}Q_iP_j\) | Unit-box monomial coefficient envelopes | One direct partial and \(q\) chain terms; no uncontrolled term | Static pointwise bound; no accumulated forcing | structural lower/upper comparison | Direct derivation from `assump:balcan-common-chain` and `assump:anchored-unit-range`; endpoints included | Upper coefficient budgets are exactly adequate for an upper derivative claim in the same monomial convention | Produced and consumed object is the same \(G_i'\) in \(x\); residual zero | step-local | Primitive data produce B1 before B2; no projective or probability conclusion assumed | N/A: static differentiation | \(\Delta B_Q+q\Delta B_QB_P=D_*\) | \(q,\Delta,B_P,B_Q\), unit chain box | None | \(q=0\), \(\Delta=0\), endpoints pass; zero source forces zero derivative | Without the unit-box/budget source, evaluations could be uncontrolled. |
| Nonvanishing and projective speed | Structural lower source plus normalized-target upper bridge | All \(\theta\in\Theta\), then essential supremum | \(\gamma_G'=(I-\gamma_G\gamma_G^{\mathsf T})G'/\lVert G\rVert\), \(\gamma_F'=h^{-1}\gamma_G'\) | Literal anchor \(G_1=1\) and B1 | Denominator vanishing, vector derivative, coordinate scale | Pointwise; taking a supremum adds no defect | structural lower/upper comparison | Primitive anchor supplies margin one; \(h>0\); all endpoints handled | The anchor has the lower/nonvanishing content needed, while B1 has the numerator upper content | Exact identity \(\gamma_F=\gamma_G\circ x\); residual zero, required scale \(h^{-1}\) explicit | step-local | Anchor -> B1 -> B2 before incidence consumers | At \(c\pm h\), anchor is active before normalization; \(N=1\) gives a constant curve | \(\lVert\gamma_G'\rVert\leq\lVert G'\rVert/\lVert G\rVert\leq\sqrt ND_*\) | Anchor, \(h>0\), parameter regime | B1 derivative envelope | Constant curves and \(q=0\) pass; without anchor normalization could be undefined | Missing lower source would invalidate the theorem contract. |
| Central incidence coefficient-volume interface | Theorem-closure area/coarea bridge | Every interval \(I\); static coefficient union | Image indicator \(\leq\) projection multiplicity and exact Jacobian product (C1) | Regular incidence source \(\lVert\nabla_a g\rVert=1\) | Tangencies, multiple roots, endpoints, stationary segments, identically-zero coefficients | Nonnegative multiplicity density integrates over \(I\); no adversarial sign; finite downstream under B2/B4 | algebraic coupling; structural lower/upper comparison | Standard Euclidean area/coarea tool with B2 regularity; endpoint and proper-subspace residuals excluded as null | Unit coefficient gradient is adequate for hypersurface regularity; exact projection Jacobian supplies motion | Projection is the identical root coefficient set for the same \(F,I,K\); residual consists only of null boundary/exceptional sets | step-local | B2 produces \(\gamma\) before B3; B3 does not assume the probability bound | Stationary \(\gamma\) gives zero Jacobian and one fixed null hyperplane | \(J\pi/J\tau=\lvert\langle\gamma',a\rangle\rvert\), then area multiplicity | Compact cube, B2 normalized curve | B2 nonvanishing and speed | Tangent/multiple roots, endpoints, \(N=1\), stationary pieces pass | Without the regular incidence or exact Jacobian, union volume would lack a source. |
| Central arbitrary-law probability interface | Quantitative section and density conversion | Every \(\mu\), every interval \(I\) | B3 integral bounded by \(R\sqrt N\lVert\gamma'\rVert\) times Ball section area | Ball's orientation-uniform section cap, cube radius, joint density cap | Orientation, coefficient magnitude, arbitrary correlation | Nonnegative local density integrates over \(I\); B2 makes it at most a constant times \(\lvert I\rvert\) | structural lower/upper comparison; summable control | Ball main theorem for \(N\geq2\); direct null event for \(N=1\) | Ball supplies exactly section-size upper content; density cap supplies arbitrary-law volume conversion | Same event, cube, section, law, and Euclidean metric; residual zero | step-local | Ball and primitive density source plus B3 precede B4 | N/A: static; zero speed case already certified by B3 | \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\) | \(R,\kappa,A,N\), cube support | B3 incidence volume, B2 speed | Every orientation, \(N=1\), zero speed pass | Without Ball, orientation-uniform section size is unsupported. |
| Uniform central rate and \(C^{\mathrm{Pf}}\) | Quantitative specialization and theorem closure | All laws and positive-length intervals, then two suprema | \(\int_I\lVert\gamma'\rVert\leq\Gamma\lvert I\rvert\), followed by B2 substitution | Uniform B4 coefficient and B2 primitive-data certificate | Potential hidden \(\mu,I,M\) dependence or dropped term | Suprema act on already uniform inequalities; no error accumulates | algebraic coupling | Accepted-derived B2 and B4; positive-length intervals only for division | Earlier sources match the same norm, event, and parameter convention | Same event and denominator; substitution residual zero | step-local | B2/B4 -> B5; \(C^{\mathrm{Pf}}\) not used upstream | Positive-length interval condition is active before division | \(A\sqrt{N/2}\Gamma\leq AND_*/(\sqrt2h)\) | Definition of \(C^{\mathrm{Pf}}\), parameter meanings | B2, B4 | \(\Gamma=0\), \(q=0\), arbitrarily short positive intervals pass | Missing uniformity would prevent the supremum conclusion. |
| General affine chart inequality | Theorem-closure generated coverage and coefficient-volume bridge | Every law and interval; finite chart set; \(m\to\infty\) | Root-to-chart equality, \(\lvert\det D\Psi_j\rvert=\lvert\partial_\theta T_j\rvert\), (A2), monotone exhaustion | Nonzero selected pivot and finite-level margin \(1/m\) | Near-zero pivots, measurable pieces, tangencies, multiplicity, correlation, divergent limit | Accumulated defect is nonnegative chart Jacobian over \(E_{j,m}\uparrow E_j\); monotone convergence controls it; \(+\infty\) is allowed by target | stopping/conditioning argument; algebraic coupling | Primitive pivot cover; finite threshold excludes pivot zero locally; standard area formula; no uniform margin required | Nonzero pivot has the support content needed to solve the exact root equation; area formula supplies image-volume upper content | \(\Psi_j(\theta,\beta)=\alpha\) exactly; every root enters finite \(m\); uncovered residual empty | step-local | Primitive cover -> finite charts -> B6 before B8/B10; no affine conclusion assumed | Each root enters once \(m\geq1/\lvert F_j(\theta)\rvert\); chart active before event consumption | \(\Pr\leq\kappa\sum_j\lim_m\int_{E_{j,m}}\int\lvert T_j'\rvert=\kappa\sum_j\int_{E_j}\int\lvert T_j'\rvert\) | \(F_0,F,E_j,R,\kappa\) and pivot nonvanishing | B1 regularity | \(N=1\), zero derivatives, endpoint roots, near-zero pivots, and divergent integrals pass | Without a nonzero pivot cover, some root coefficients would have no legal producer chart. |
| Exact monic pivot and velocity certificate | Structural pivot support and quantitative specialization | Every \(d\geq1\), every bounded \(J\), two static chart branches | Exact \(T_1,T_d\) formulas and (M1)--(M2) | Constant pivot on \(\lvert\theta\rvert\leq1\); high pivot on \(\lvert\theta\rvert>1\) | Lower-term derivatives, negative powers, transition, empty sum | Two pointwise bounds add over a disjoint finite partition; no repeated defect | structural lower/upper comparison; algebraic coupling | Direct monomial derivation; branches exclude their pivot-zero regimes | Pivots supply actual nonvanishing support; coefficient bound supplies upper velocity content | Produced affine expression is exactly \(p_\alpha\) with the same lower-coefficient vector; residual zero | step-local | Primitive monic data -> B7 before B8 | At \(0\) and \(\lvert\theta\rvert=1\), constant pivot active; outside, high pivot active; \(d=1\) constant pivot global | \(\lvert T_1'\rvert\leq V_d\), \(\lvert T_d'\rvert\leq1+Rd(d-1)/2\leq V_d\) | \(d,R,J\), explicit monomials | None | \(d=1,2\), empty pieces, distant bounded \(J\) pass | Without the branch split, large powers or a vanishing pivot could destroy the literal constant. |
| Exact affine-monic baseline | Baseline invariance and Rate Specialization Bridge | Every \(d,J\), every correlated lower-coefficient law | Apply B6 to B7 and integrate constant velocity over \((d-1)\)-cube and partition | B6 exact chart theorem and B7 \(V_d\) | Correlation, high-chart smaller constant, \(d=1\) volume convention | Finite nonnegative sum over disjoint pieces; no stochastic or limiting defect | algebraic coupling; structural lower/upper comparison | Accepted-derived B6/B7; no independent root theorem | The same affine theorem supplies the correct probability claim class and exact velocity scale | Exact polynomial, interval, law dimension, and scalar metric; deterministic leading coefficient unchanged; residual zero | step-local | B6 and B7 independently precede B8; baseline not used to prove either | First chart use already has exact pivot and object equality | \(\kappa(2R)^{d-1}V_d(\lvert E_1\rvert+\lvert E_d\rvert)=\kappa(2R)^{d-1}V_d\lvert J\rvert\) | Density cap in dimension \(d\), monic data | B6, B7 | \(d=1\), transition, empty chart pieces pass | Missing exact object or cube-volume bridge would violate baseline invariance. |
| Counter-example scale certificate | Baseline lower-scale and normalization nonvacuity | \(0<\epsilon\leq\delta\leq1\) | Root event equals two coefficient wedges of total area \(\epsilon/\delta\) | Slope and coefficient-budget source \(1/\delta\) | Axes, sign branches, wedge boundary | Single finite area calculation; no accumulation | algebraic coupling; structural lower/upper comparison | Direct planar derivation; range excludes wedges leaving the square | Slope source supplies both projective motion and wedge width | Same feature, law, interval, coordinate, and metric; null-edge residual only | step-local | Direct example -> B9; upper theorem used only afterward for comparison | At \(\theta=0\), projective velocity is already \(1/\delta\) | \(2\int_0^1(\epsilon/\delta)u\,du=\epsilon/\delta\), then density \(1/4\) | \(\delta,\epsilon\), uniform law | B5 only for upper comparison | \(\epsilon=\delta\), \(\epsilon\downarrow0\), \(\delta=1\), axes pass | If \(B_Q\) omitted \(1/\delta\), the upper theorem would miss an allowed lower scale. |
| Full theorem assembly | Final exact-goal closure | Static conjunction of all clauses | Consume B5, B6, B8, B9 and retain B1--B2 | Complete accepted-derived interface set | Clause loss, mode drift, hidden dependence, singular augmentation | No repeated forcing; only conjunction of closed interfaces | algebraic coupling | Earlier blocks under unchanged assumptions and scope | Each source supplies exactly its final claim class | Clause-by-clause objects and modes match; all transfer residuals already zero | step-local | Acyclic DAG; final theorem never feeds a producer | Anchor, finite chart entry, monic pivots, and counterexample activation all occur upstream | Direct conjunction, no new inequality | All primitive assumptions as allocated | B1--B9 | \(N=1,q=0,d=1\), stationary, tangent/multiple, divergent-affine cases inherited | Any missing producer would remove an inseparable target clause. |

Every obligation is `step-local` under the unchanged accepted sketch. The static interval integrations and the affine exhaustion are the only accumulated scopes. For the central branch, the accumulated quantity is a nonnegative projection-multiplicity density bounded by a uniform integrable speed constant. For the affine branch, the accumulated quantity is the nonnegative chart Jacobian over increasing pivot-threshold sets; monotone convergence is the concrete control relation, and an infinite limit is explicitly allowed. No circular invariant, persistent adversarial-sign defect, or unsupported scope upgrade is present.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| \(D_*\) and \(\lvert G_i'\rvert\leq D_*\) | B1 / `step_001`, direct primitive-source derivation | Common chain, unit box, coefficient budgets | Direct partial and all chain terms controlled; none uncontrolled | Same derivative, coordinate, and norm; residual zero | Exact chain-rule sum | Unit-box envelope; no selected threshold | B2, B6 regularity, B10 transitively | valid |
| Nonvanishing and \(\Gamma_{\mathrm{proj}}\leq\sqrt ND_*/h\) | B2 / `step_002` | Anchor, B1, projector, exact coordinate derivative | Denominator, numerator, and scale all controlled; none persistent | Exact \(\gamma_F=\gamma_G\circ x\); residual zero | Projector upper bound and exact \(h^{-1}\) transfer | Primitive margin one from \(G_1=1\) | B3, B5, B10 | valid |
| Central incidence-volume bound (C1) | B3 / `step_003`, current-notation area/coarea tool | B2 \(C^1\) unit curve; unit coefficient gradient | Tangencies/multiplicity handled by Jacobian/counting; endpoints and identically-zero sets null | Same root coefficient set, cube, and interval; null residual only | Indicator bounded by multiplicity; exact ratio of projection and coordinate Jacobians | Incidence regularity margin one | B4 | valid |
| Central probability interface (C2) | B4 / `step_004`, Ball plus density cap | B3, cube radius, Ball section cap, \(f_\mu\leq\kappa\) | Orientation, magnitude, correlation controlled; no uncontrolled law term | Same event, section, law, and Euclidean metric; residual zero | Literal constant identity | Ball section cap; no auxiliary slack | B5, B10 | valid |
| Central public rate and \(C^{\mathrm{Pf}}\) | B5 / `step_005` | B2 and B4 | No dropped term, hidden \(M\), or \(\mu,I\) dependence | Same event and positive interval length; residual zero | Integral-to-supremum bound, B2 substitution, exact suprema | Earlier anchor and Ball sources | B10, B9 comparison | valid |
| General affine inequality (A3) | B6 / `step_006`, exact chart area formula | Primitive pivot cover, \(C^1\) data, finite threshold, cube, density cap | Near-zero pivot exhausted; tangencies/multiplicity and correlation controlled; divergence explicitly allowed | Exact coefficient insertion and root equality; every root enters finite \(m\); residual empty | Restrict \(T_j\) to cube, area bound, enlarge domain, monotone convergence | Finite-level \(1/m\) from primitive nonzero pivot | B8, B10 | valid |
| Monic pivot/velocity certificate \(V_d\) | B7 / `step_007`, direct derivation | Exact monomials, constant/high pivots, coefficient cube | Negative powers, transition, \(d=1\), location controlled; none uncontrolled | Exact \(p_\alpha\) and lower-coefficient vector; residual zero | Direct derivatives and high-chart domination by \(V_d\) | Pivot one or \(\lvert\theta\rvert^{d-1}>1\) | B8 | valid |
| Exact monic baseline | B8 / `step_008` | B6, B7, cube volume, partition length | Correlation and both chart branches controlled; no singular coordinate | Same event, dimension, law, interval, metric; residual zero | Exact finite integration identity | B7 velocity source | B10 | valid |
| Counter-example tuple and lower scale | B9 / `step_009` | Explicit coefficients, uniform density, stated range | Axes and edges null; both signs included | Same event and scale; residual zero | Exact two-wedge area and density multiplication | Slope \(1/\delta\) | B10 | valid |
| Full theorem | B10 / `step_010` | All prior valid exports | No new defect class | Same objects and modes clause by clause | Conjunction only | All upstream sources | Final theorem | valid |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Derivative envelope \(D_*\) | B1 / `step_001` from primitive chain and unit-box data | B2, B6 regularity, primitive-presentation final clause | primitives -> B1 -> B2; primitives -> B1 -> B6 | derived | valid |
| Global nonvanishing and projective-speed certificate | B2 / `step_002` | B3, B5, final conditioning/rate clauses | B1 -> B2 -> (B3, B5) -> B10 | derived | valid |
| Central incidence-volume interface | B3 / `step_003` | B4; tangent/multiple-root-safe central final clause through B5 | B2 -> B3 -> B4 -> B5 -> B10 | derived | valid |
| Central arbitrary-law probability interface | B4 / `step_004` | B5, first central inequality in final theorem | B3 -> B4 -> B5 -> B10 | derived | valid |
| Literal central rate and \(C^{\mathrm{Pf}}\) bound | B5 / `step_005` | B9 comparison and B10 final central clauses | (B2, B4) -> B5 -> (B9, B10) | derived | valid |
| Exhausted affine chart bound | B6 / `step_006` | B8 and direct general-affine final clause | primitives plus B1 -> B6 -> (B8, B10) | derived | valid |
| Exact monic object, pivot, and velocity certificate | B7 / `step_007` | B8 baseline specialization | primitive monic data -> B7 -> B8 -> B10 | derived | valid |
| Exact affine-monic probability bound | B8 / `step_008` | B10 baseline clause | (B6, B7) -> B8 -> B10 | derived | valid |
| Counter-example 1 exact scale certificate | B9 / `step_009` | B10 scale-audit clause | direct example and B5 comparison -> B9 -> B10 | derived | valid |
| Full exact-goal theorem | B10 / `step_010` | Final theorem statement | (B5, B6, B8, B9) -> B10 | derived | valid |

Every theorem-facing generated output has an earlier legal producer, an explicit dependency path to each consumer, and the same target object and metric at production and consumption. No closure, specialization, or assembly label is used as a producer without a derivation from accepted inputs.

## Early Obstruction And Repair Plausibility

- Contract contradictions: None. The exact-goal clauses, primitive assumptions, law class, arbitrary-correlation scope, interval quantifiers, Euclidean metric, and literal constants agree across `setting.md`, the accepted sketch, and this diagnostic.
- Theorem-critical mechanism witnesses: Present for all ten blocks. The anchor is a genuine lower/nonvanishing source; incidence regularity comes from the unit coefficient gradient; Ball supplies only section size; finite affine pivots supply exact chart support; and the monic pivots act on the consumed lower-coefficient object.
- Residual-to-target adequacy: All transfers are exact except coefficient-null endpoint, critical-image, axis, or affine-subspace residuals. The normalized coordinate transfer has the exact \(h^{-1}\) factor. The affine map inserts the solved coordinate into the original vector. The monic leading coefficient is never made random.
- Exported-interface feasibility: Every output has raw controls, a defect-class split, a concrete dominance or transfer relation, and consumers. No parameter threshold is used to control a defect independent of that parameter.
- Scope and accumulation: The central sweep integrates a nonnegative multiplicity density and is bounded by a uniform speed constant. The affine exhaustion integrates a nonnegative Jacobian over increasing threshold sets and uses monotone convergence; an infinite result remains within the declared target. There is no recurrence, all-time invariant, or adversarial-sign forcing.
- Entry and boundary stress: The anchor is active at both endpoints before normalization. Stationary curves sweep only a null hyperplane. Tangent and multiple roots are covered by area multiplicity. Every affine root enters a finite threshold level. The monic constant pivot covers \(0\) and \(\lvert\theta\rvert=1\), the high pivot covers \(\lvert\theta\rvert>1\), and \(d=1\) uses the zero-dimensional cube convention. Counter-example projective motion is active at \(0\).
- Mode and dependence upgrades: None. Ordinary probability remains ordinary probability, no independence or confidence parameter is added, and no fixed-interval statement is silently upgraded without a uniform deterministic bound.
- Baseline invariance: The exact monic constant is derived from the same affine theorem, and the exact counterexample lower scale is retained. Neither is replaced by a remainder, conditional statement, stopped scope, or independent citation.
- Same-setting repair plausibility: No repair is currently needed. The remaining high-risk work is local formalization of B3 and B6 under their already fixed interfaces. A later failure of either exact area-formula wrapper would require reclassification at that time, but no obstruction is exposed by the present theorem-level derivation.
- Candidate idea-level evidence: None.

## Global Gaps And Hard Steps

None.

## Diagnostic Boundary Note

This `global_proof.md` artifact is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, scope, mechanism, or conclusion. Every local unit and standard or cited tool application must be independently proved or discharged by the corresponding `/proof-step` and accepted by `/proof-step-review` before theorem assembly.

## Suggested Routing

None

Continue with all accepted sketch steps in dependency order. After `step_001` and `step_002` are accepted, prioritize `/proof-step step_003` because its incidence Jacobian and null-set formalization are the highest-risk central interface; `/proof-step step_006` is the parallel high-risk affine interface once `step_001` is accepted.
