# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_1`
- Global unit attempt: 1
- Sketch attempt: 2
- Goal mode: exact-goal, unconditional, ordinary-probability mode
- Reviewed setting artifact: `perspective_2/idea_1/setting.md`
- Reviewed setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Reviewed sketch artifact: `perspective_2/idea_1/proof_sketch.md`
- Reviewed sketch SHA-256: `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Reviewed sketch-review artifact: `perspective_2/idea_1/proof_sketch_review.md`
- Reviewed sketch-review SHA-256: `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Sketch review status: `ACCEPTED`
- Sketch viability score: 9
- Smallest retry target / retry mode: `None` / `none`
- Evidence boundary: only the three bound current artifacts above are upstream authority for this diagnostic. Attempt-1 global artifacts, archived `proof_history/`, and all attempt-1 step artifacts are stale and were not consumed as current evidence.

## Status

PARTIAL_BLOCKED

The accepted twelve-step architecture closes at theorem level, and every unresolved obligation below is classified `step-local` under unchanged claims, dependencies, assumptions, outputs, constants, modes, and generated-output flows. Fresh attempt-2 step proofs and reviews are still required; this diagnostic is not proof evidence.

## Attempted Theorem Claim

**Exact-goal mode and primitive basis.** Fix precisely the data and conventions of `setting.md`: integers \(N\geq1\), \(q,m\geq0\), \(T,R>0\), \(0<\kappa<\infty\), a nondegenerate compact interval \(\Theta\subseteq[-T,T]\), a common triangular Pfaffian chain of length \(q\) and degree at most \(M\), outputs of degree at most \(\Delta\), and the augmented tuple \(\widetilde F=(F_0,F_1,\ldots,F_N)\). Assume exactly `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-derivative-closure`, and `assump:cube-density-laws`. Thus \(F_{j_*}\equiv1\), \(\widetilde F'=B\widetilde F\), and the random coefficient vector has an arbitrary, possibly fully correlated density supported on \([-R,R]^N\) and bounded by \(\kappa\). Set

\[
T_*:=\max\{1,T\},\qquad
\widehat\Lambda_{B,T}:=
\left(\sum_{r,s=0}^N
\left(\sum_{\ell=0}^m |b_{rs,\ell}|T_*^\ell\right)^2\right)^{1/2},
\qquad A:=(2R)^N\kappa.
\]

No transversality, root simplicity, uniform pivot margin, coordinate independence, projective-speed bound, or extra lower norm is assumed.

**Attempted conclusion.** Prove all of the following as one unconditional theorem.

1. The supplied static coefficient list gives
   \[
   \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
   \leq\widehat\Lambda_{B,T}.
   \]
   If \(F_0\equiv0\), then \(F'=B_FF\),
   \[
   \gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
   \qquad
   \Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
   \]

2. For every admissible law \(\mu\) and every positive-length interval \(I\subseteq\Theta\), with \(\phi_\alpha=F_0+\langle\alpha,F\rangle\),
   \[
   \begin{aligned}
   \Pr_\mu[\exists\theta\in I:\phi_\alpha(\theta)=0]
   &\leq \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
   \frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
   \,d\mathcal H^{N-1}(a)\,d\theta\\
   &\leq \kappa\sqrt2(2R)^{N-1}(1+NR^2)
   \widehat\Lambda_{B,T}|I|\\
   &=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
   \end{aligned}
   \]
   Consequently
   \[
   C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
   \leq\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
   \]
   For every measurable legal pivot partition \(I=\bigsqcup_jE_j\), the same theorem also gives both the indicator and indicator-dropped chart bounds with \(T_j\) and \(\lvert \partial_\theta T_j\rvert \), by exhaustion through \(E_{j,n}=\{\theta\in E_j:\lvert F_j(\theta)\rvert \geq1/n\}\). Tangent roots, multiple roots, endpoints, and persistent zero combinations are included through multiplicity and law-null exceptional-set arguments, not excluded by assumption.

3. In the homogeneous specialization \(F_0\equiv0\),
   \[
   \Pr_\mu[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
   \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
   \]
   and hence
   \[
   C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
   \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
   \]

4. For every \(d\geq1\), every bounded interval \(J\), and every arbitrary correlated lower-coefficient law on \([-R,R]^d\) with density at most \(\kappa\), specialize the same affine sweep to
   \[
   p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k,
   \qquad
   \widetilde F(\theta)=(\theta^d,1,\theta,\ldots,\theta^{d-1}).
   \]
   The specialization must retain
   \[
   q=M=m=0,\quad \Delta=N=d,\quad A=(2R)^d\kappa,
   \quad
   \widehat\Lambda_{B,T}=\left(\sum_{k=1}^d k^2\right)^{1/2},
   \]
   with constant derivative-shift matrix
   \[
   B_{0,d}=d,\qquad B_{k+1,k}=k\quad(1\leq k\leq d-1),
   \]
   and all other entries zero. The leading coefficient remains deterministic. The prescribed inner and outer pivots and their exact maps and velocity caps must yield
   \[
   \Pr_\mu[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq\kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)|J|.
   \]
   This is an exact baseline recovery from the common chart theorem, not an independent polynomial-root theorem or a singular random-leading-coordinate construction.

5. For Counter-example 1, with \(0<\delta\leq1\), \(\Theta=[-1,1]\), \(F_0=0\), \(F=(1,\theta/\delta)\), \(R=1\), \(\kappa=1/4\), and \(A=1\), prove
   \[
   q=M=m=0,\quad\Delta=1,\quad N=2,
   \quad\widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta,
   \]
   the upper certificate \(C^{\mathrm{Pf}}_{\mathcal D}\leq1/\delta\), and, for the uniform square law,
   \[
   \Pr[\exists\theta\in[0,\epsilon]:
   \alpha_1+\alpha_2\theta/\delta=0]
   =\frac{\epsilon}{4\delta}
   \qquad(0<\epsilon\leq\delta).
   \]

Every displayed constant is literal. There are no hidden constants or confidence parameters. Probability is ordinary probability for each fixed law; law and interval suprema are taken only after establishing the deterministic bound for each pair. All vector, operator, Frobenius, and Hausdorff conventions are Euclidean. Once \(B\) and its displayed certificate are fixed, the additional dependence on \(q,M,\Delta\) is exactly degree zero.

## Whole-Proof Draft

The theorem-level proof has twelve dependency-ordered blocks. The theorem-style names below are required exported interfaces for the future step artifacts; they are diagnostic names, not already-proved authorities.

### Block G1: Static Derivative-Closure And Projective Certificate (`step_001`)

For \(0\leq r,s\leq N\), define the deterministic entry height

\[
c_{rs}:=\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell.
\]

Since \(\lvert \theta\rvert \leq T\leq T_*\) on \(\Theta\), coefficient evaluation gives

\[
|B_{rs}(\theta)|
\leq\sum_{\ell=0}^m|b_{rs,\ell}||\theta|^\ell
\leq c_{rs}.
\]

Thus, pointwise and with the exact Euclidean conventions,

\[
\|B(\theta)\|_{\mathrm{op}}
\leq\|B(\theta)\|_{\mathrm F}
\leq\left(\sum_{r,s=0}^Nc_{rs}^2\right)^{1/2}
=\widehat\Lambda_{B,T}.
\]

The anchor gives \(F_{j_*}\equiv1\), hence \(\lVert F(\theta)\rVert _2\geq1\) and all normalizations and pivot covers used later are defined before consumption. If \(F_0\equiv0\), the lower \(N\) coordinates of \(\widetilde F'=B\widetilde F\) read \(F'=B_FF\): any first-column contribution is multiplied by \(F_0=0\). Differentiating \(r^{-1}F\), \(r=\lVert F\rVert _2\), gives the exact identity

\[
\gamma_F'
=\frac{F'}r-\frac{F\langle F,F'\rangle}{r^3}
=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F.
\]

Because the orthogonal projector has operator norm at most one and \(B_F\) is a principal block,

\[
\|\gamma_F'(\theta)\|_2
\leq\|B_F(\theta)\|_{\mathrm{op}}
\leq\|B(\theta)\|_{\mathrm{op}}
\leq\widehat\Lambda_{B,T}.
\]

Taking the supremum produces \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda_{B,T}\) without accumulation. Required named outputs are **Static Coefficient-Height Certificate Proposition** and **Homogeneous Projective Certificate Proposition**. The remaining proof work is step-local verification of block extraction, differentiability, and the exact named statements.

### Block G2: Persistent-Root Nullity (`step_002`)

For a nondegenerate interval \(I\subseteq\Theta\), let

\[
Z_\infty(I):=\{a\in\mathbb R^N:
F_0(\theta)+\langle a,F(\theta)\rangle=0
\text{ for every }\theta\in I\}.
\]

This is an intersection of affine hyperplanes, hence is empty or affine. It is proper: if both \(a\) and \(a+e_{j_*}\) belonged to it, subtracting their identities would give \(F_{j_*}\equiv0\) on \(I\), contradicting \(F_{j_*}\equiv1\). Every proper affine subspace has zero \(N\)-dimensional Lebesgue measure, so the full joint density condition, without independence, gives

\[
\mu(Z_\infty(I))=\int_{Z_\infty(I)}f_\mu(a)\,da=0.
\]

The required named output is **Persistent-Root Nullity Lemma**. It applies to the actual coefficient space and retains the deterministic \(F_0\); it is not an exclusion assumption. The local proof must state measurability/properness and the \(N=1\) case explicitly.

### Block G3: Exhausted Affine Pivot Sweep (`step_003`)

Fix a measurable partition \(I=\bigsqcup_{j=1}^NE_j\) with \(F_j\neq0\) on \(E_j\), and put

\[
E_{j,n}:=\{\theta\in E_j:|F_j(\theta)|\geq1/n\},
\]

\[
D_{j,n}:=\{(\theta,\beta):\theta\in E_{j,n},
\ \beta\in[-R,R]^{N-1},\ |T_j(\theta,\beta)|\leq R\}.
\]

On \(E_{j,n}\times[-R,R]^{N-1}\), the numerator and denominator in the quotient defining \(T_j\) are restrictions of bounded Lipschitz functions on the compact ambient set \(\Theta\times[-R,R]^{N-1}\), while both denominator values in a quotient-difference estimate have magnitude at least \(1/n\). Thus \(T_j\), and hence the map

\[
\Psi_j(\theta,\beta)
=(\beta_1,\ldots,\beta_{j-1},T_j(\theta,\beta),
\beta_{j+1},\ldots,\beta_N)
\]

is Lipschitz on its measurable domain; a coordinatewise Lipschitz extension supplies the ambient representative required by the area formula. Its determinant almost everywhere on the domain is

\[
|\det D\Psi_j(\theta,\beta)|=|\partial_\theta T_j(\theta,\beta)|.
\]

The measurable-domain Euclidean area formula therefore yields

\[
\lambda^N(\Psi_j(D_{j,n}))
\leq\int_{D_{j,n}}|\partial_\theta T_j|\,d\beta\,d\theta.
\]

This direction is favorable under repeated preimages: tangencies and multiple roots do not require simplicity because multiplicity can only enlarge the area-formula integral. If a coefficient \(\alpha\notin Z_\infty(I)\) has a root at \(\theta\in E_{j,n}\), taking \(\beta=\alpha_{-j}\) gives \(T_j(\theta,\beta)=\alpha_j\), so \(\alpha=\Psi_j(\theta,\beta)\). The root event is analytic as a projection of the Borel incidence set and is measurable after completion under the absolutely continuous law. Endpoint-only coefficient slices and \(Z_\infty(I)\) are law-null. Hence density domination gives the finite-level probability bound.

As \(E_{j,n}\uparrow E_j\), every legal root activates a finite exhaustion level before being consumed. The integrands are nonnegative, so monotone convergence, not a signed or recursive budget, gives

\[
\Pr_\mu[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf1\{|T_j|\leq R\}|\partial_\theta T_j|\,d\beta\,d\theta.
\]

Dropping the indicator gives the second chart form. This block must export a named **Exhausted Affine Pivot-Sweep Theorem**, including the indicator form, indicator-dropped form, arbitrary correlation, exhaustion, multiplicity, endpoint handling, and persistent-root nullity. The theorem-critical local burden is the exact measurable/Lipschitz area-formula wrapper; the accepted sketch already fixes its source, objects, determinant, and limit interface.

### Block G4: Chart-To-Section Normal-Velocity Identity (`step_004`)

Fix \(\theta\in E_j\). The map \(\beta\mapsto\Psi_j(\theta,\beta)\) is a bijection from \(\{\lvert T_j\rvert \leq R\}\) onto \(H_\theta\cap[-R,R]^N\). Its graph Jacobian is

\[
J_{N-1}\Psi_j(\theta,\cdot)
=\left(1+\sum_{i\neq j}\frac{F_i(\theta)^2}{F_j(\theta)^2}\right)^{1/2}
=\frac{\|F(\theta)\|_2}{|F_j(\theta)|}.
\]

Differentiating the exact chart equation

\[
F_0(\theta)+\langle\Psi_j(\theta,\beta),F(\theta)\rangle=0
\]

at fixed \(\beta\) gives

\[
\partial_\theta T_j
=-\frac{F_0'+\langle\Psi_j,F'\rangle}{F_j}.
\]

Consequently the pivot factors cancel exactly:

\[
|\partial_\theta T_j|\,d\beta
=\frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
\,d\mathcal H^{N-1}(a).
\]

Summing this equality over the disjoint pivot cells and inserting G3 gives the first coordinate-free affine swept-area inequality. The required named output is **Chart-To-Section Normal-Velocity Proposition**. It transfers the actual section to the actual target integrand with zero residual and must include the \(N=1\), empty-section, and zero-velocity conventions.

### Block G5: Translated Cube-Section Geometry (`step_005`)

For a Euclidean unit normal \(u\), define

\[
v_u(t):=\mathcal H^{N-1}([-R,R]^N\cap(u^\perp+tu)).
\]

For \(N\geq2\), Brunn--Minkowski makes \(v_u(t)^{1/(N-1)}\) concave on its support. The cube is centrally symmetric, so \(v_u\) is even and its maximum is at \(t=0\). Ball's central cube-slicing theorem, applied to the unit-volume Euclidean cube and scaled by \(2R\), gives

\[
v_u(t)\leq v_u(0)\leq\sqrt2(2R)^{N-1}.
\]

For \(N=1\), the result follows directly from the \(\mathcal H^0\) convention. Taking \(u=F(\theta)/\lVert F(\theta)\rVert _2\) and the offset determined by \(F_0\) yields

\[
\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1}.
\]

The required named output is **Translated Cube-Section Proposition**. Ball supplies only the central orientation-uniform cap; central maximality, scaling, translation, \(N=1\), and empty sections remain in the current-notation proof. Ball supplies neither normal velocity nor density control.

### Block G6: Affine Root-Section Velocity (`step_006`)

On \(a\in H_\theta\cap[-R,R]^N\), the root identity and cube support give

\[
|F_0|=|\langle a,F\rangle|
\leq\|a\|_2\|F\|_2
\leq R\sqrt N\|F\|_2.
\]

Therefore

\[
\|\widetilde F\|_2\leq\sqrt{1+NR^2}\|F\|_2,
\qquad
\|(1,a)\|_2\leq\sqrt{1+NR^2}.
\]

Using the actual closure identity and the G1 certificate,

\[
\begin{aligned}
\frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
&=\frac{|\langle(1,a),B\widetilde F\rangle|}{\|F\|_2}\\
&\leq\frac{\|(1,a)\|_2\|B\|_{\mathrm{op}}
\|\widetilde F\|_2}{\|F\|_2}\\
&\leq(1+NR^2)\widehat\Lambda_{B,T}.
\end{aligned}
\]

The two square-root factors are both exposed; no free amplitude control is inserted. The required named output is **Affine Root-Section Velocity Lemma**. At \(\widehat\Lambda_{B,T}=0\), the coefficient list forces \(B=0\), the augmented tuple is constant, and the root event is a fixed proper affine hyperplane, so the zero source does not leave a false conclusion.

### Block G7: General Affine Rate And Zero Certificate (`step_007`)

Insert G5 and G6 into G4. For each fixed admissible \(\mu\) and positive-length \(I\),

\[
\begin{aligned}
\Pr_\mu[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq\kappa\sqrt2(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}|I|\\
&=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|,
\end{aligned}
\]

where the equality uses \(A=(2R)^N\kappa\) and no hidden constant. Dividing by \(\lvert I\rvert >0\) and then taking the law and interval suprema proves the \(C^{\mathrm{aff}}_{\mathcal D}\) bound without changing probability mode. This block must export two named theorem-style results: **General Affine Swept-Area Theorem**, containing both displayed affine inequalities and the capacity bound, and **Affine Zero-Certificate Corollary**, stating that \(\widehat\Lambda_{B,T}=0\) makes every tested affine root event law-null because the tuple is constant and the coefficient locus is a proper affine hyperplane. The latter must be a named output consumed explicitly in G12; it may not be replaced by a bare reference to `step_007`.

### Block G8: Homogeneous Radial Cancellation And Projective Rate (`step_008`)

In the homogeneous branch write \(F=r\gamma_F\), \(r=\lVert F\rVert _2\). On the actual central root section \(H_\theta=F(\theta)^\perp=\gamma_F(\theta)^\perp\),

\[
F'=r'\gamma_F+r\gamma_F',
\qquad
\frac{|\langle a,F'\rangle|}{\|F\|_2}
=|\langle a,\gamma_F'\rangle|.
\]

The equality is exact because \(\langle a,\gamma_F\rangle=0\); it is not a comparison with a surrogate feature curve. Cube support then gives

\[
|\langle a,\gamma_F'\rangle|
\leq R\sqrt N\|\gamma_F'\|_2.
\]

Using the central section cap and G1,

\[
\begin{aligned}
\Pr_\mu[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
&\leq\kappa R\sqrt N\sqrt2(2R)^{N-1}
\int_I\|\gamma_F'(\theta)\|_2\,d\theta\\
&\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|\\
&\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|.
\end{aligned}
\]

The algebraic equality in the coefficient is

\[
\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}.
\]

The required named outputs are **Homogeneous Radial-Cancellation Lemma** and **Homogeneous Projective Sweep Theorem**. If \(\Gamma_{\mathrm{proj}}=0\) on connected \(\Theta\), then \(\gamma_F\) is constant and the event is one fixed law-null hyperplane, so the exact zero bound is activated before use. G12 must consume the named radial-cancellation result as well as the named theorem, not the step identifier.

### Block G9: Monic Presentation, Shift Certificate, And Legal Velocities (`step_009`)

For \(d\geq1\), set

\[
\widetilde F(\theta)=(\theta^d,1,\theta,\ldots,\theta^{d-1}),
\qquad
F_0=\theta^d,
\qquad
F_{k+1}=\theta^k.
\]

This is the \(q=0\) presentation with \(M=m=0\), \(\Delta=N=d\), and \(A=(2R)^d\kappa\). The exact constant derivative-shift matrix is

\[
B_{0,d}=d,\qquad B_{k+1,k}=k\quad(1\leq k\leq d-1),
\qquad B_{rs}=0\text{ otherwise}.
\]

Indeed row \(0\) produces \(d\theta^{d-1}\), row \(k+1\) produces \(k\theta^{k-1}\), and the row of the anchor \(F_1=1\) is zero. Therefore

\[
\widetilde F'=B\widetilde F,
\qquad
\widehat\Lambda_{B,T}=\|B\|_{\mathrm F}
=\left(\sum_{k=1}^d k^2\right)^{1/2}.
\]

For \(d\geq2\), use the measurable disjoint partition

\[
E_1:=J\cap\{|\theta|\leq1\},
\qquad
E_d:=J\cap\{|\theta|>1\}.
\]

The inner pivot is the constant \(F_1=1\), corresponding to \(\alpha_0\), and

\[
T_1(\theta,\beta)
=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\]

so, on \(\lvert \theta\rvert \leq1\),

\[
|\partial_\theta T_1|
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2.
\]

The outer pivot is \(F_d=\theta^{d-1}\neq0\), corresponding to \(\alpha_{d-1}\), and

\[
T_d(\theta,\beta)
=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
\]

Because \(\lvert \theta\rvert ^{k-d}\leq1\) on \(\lvert \theta\rvert >1\),

\[
|\partial_\theta T_d|
\leq1+R\sum_{k=0}^{d-2}(d-1-k)
=1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2.
\]

For \(d=1\), the sole global pivot is \(\alpha_0\), \(T_1=-\theta\), and \(\lvert T_1'\rvert =1\). The required named outputs are **Augmented Monomial Presentation And Shift-Certificate Proposition** and **Monic Pivot-Velocity Proposition**. Together they must state the tuple, all format parameters, \(A\), exact matrix, height, deterministic leading coefficient, partitions, pivots, maps, velocities, \(d=1\), and boundary \(\lvert \theta\rvert =1\). Their sole full-package consumer is G10.

### Block G10: Complete Current-Notation Affine-Monic Wrapper (`step_010`)

This is the repaired legal baseline path. The required named theorem-style output, **Complete Affine-Monic Sweep Wrapper**, must have one conclusion that explicitly re-exports, rather than merely cites by ancestry, all of the following G9 outputs:

- \(\widetilde F=(\theta^d,1,\theta,\ldots,\theta^{d-1})\) and \(p_\alpha=F_0+\langle\alpha,F\rangle\);
- \(q=M=m=0\), \(\Delta=N=d\), and \(A=(2R)^d\kappa\);
- \(B_{0,d}=d\), \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\), all other entries zero, and \(\widetilde F'=B\widetilde F\);
- \(\widehat\Lambda_{B,T}=(\sum_{k=1}^dk^2)^{1/2}\);
- the deterministic leading coefficient outside the \(d\)-dimensional random vector;
- the exact inner and outer pivot partition, both maps, both velocity bounds, and the \(d=1\) branch.

The wrapper then applies the named **Exhausted Affine Pivot-Sweep Theorem** from G3 to the actual \(d\)-dimensional lower-coefficient law. Dropping the indicator, integrating each remaining \(d-1\)-dimensional beta cube, and writing

\[
V_d:=d+\frac{Rd(d-1)}2
\]

give

\[
\begin{aligned}
\Pr_\mu[\exists\theta\in J:p_\alpha(\theta)=0]
&\leq\kappa(2R)^{d-1}V_d(|E_1|+|E_d|)\\
&=\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|J|.
\end{aligned}
\]

For \(d=1\), the beta cube has dimension zero and volume one, so this is \(\kappa\lvert J\rvert \). No coefficient independence, location restriction on \(J\), singular leading-coordinate law, or independent polynomial theorem enters. Produced and consumed objects, laws, dimensions, norms, and intervals coincide, so every transfer residual is zero. G12 must cite the actual named G10 wrapper as authority for both the deterministic presentation/certificate package and the probability inequality. G9 names and bare IDs alone are insufficient at final assembly.

### Block G11: Counter-Example 1 Scale Audit (`step_011`)

Take

\[
\widetilde F=(0,1,\theta/\delta).
\]

The only nonzero derivative-shift entry is \(B_{2,1}=1/\delta\), hence \(q=M=m=0\), \(\Delta=1\), \(N=2\), and

\[
\widehat\Lambda_{B,T}=\frac1\delta.
\]

Writing \(x=\theta/\delta\), direct normalized differentiation gives

\[
\|\gamma_F'(\theta)\|_2
=\frac{1}{\delta(1+x^2)},
\qquad
\Gamma_{\mathrm{proj}}(F)=\frac1\delta.
\]

With \(R=1\), \(\kappa=1/4\), and \(A=1\), G8 gives \(C^{\mathrm{Pf}}_{\mathcal D}\leq1/\delta\). For \(t=\epsilon/\delta\leq1\), away from null coordinate axes a root in \([0,\epsilon]\) is equivalent to opposite signs and \(\lvert \alpha_1\rvert \leq t\lvert \alpha_2\rvert \). The two opposite-sign wedges have total area

\[
2\int_0^1tu\,du=t=\frac\epsilon\delta.
\]

Multiplying by the uniform density \(1/4\) gives the exact probability \(\epsilon/(4\delta)\), and division by \(\epsilon\) gives the necessary lower scale \(1/(4\delta)\). The required named output is **Counter-Example 1 Scale Proposition**, including both wedges, null axes/boundaries, \(\epsilon=\delta\), and the active speed at \(\theta=0\).

### Block G12: Named-Output Exact-Goal Assembly (`step_012`)

The required final **Anchored Derivative-Closure Coefficient-Sweep Theorem** is a dependency-only conjunction. Its proof basis must name and invoke the actual theorem-style outputs established upstream, including at least:

- **Static Coefficient-Height Certificate Proposition** and **Homogeneous Projective Certificate Proposition**;
- **Exhausted Affine Pivot-Sweep Theorem**;
- **General Affine Swept-Area Theorem** and the separately named **Affine Zero-Certificate Corollary** from G7;
- **Homogeneous Radial-Cancellation Lemma** and **Homogeneous Projective Sweep Theorem** from G8;
- the full **Complete Affine-Monic Sweep Wrapper** from G10, whose own conclusion directly contains every presentation, certificate, pivot, velocity, deterministic-leading-coefficient, and probability clause produced through G9;
- **Counter-Example 1 Scale Proposition**.

The assembly must reproduce the four stable primitive assumptions, exact quantifier order, ordinary-probability mode, arbitrary correlation, all positive-length intervals, Euclidean conventions, literal constants, \(A\)-identities, degree-zero additional \(q,M,\Delta\) dependence after fixing the certificate, exact monic baseline, and Counter-example 1 scales. It adds no lemma, bridge, assumption, absorption, or new output. Bare strings such as `step_007`, `step_008`, or `step_010` are audit metadata only and cannot serve as mathematical authority. The complete legal baseline flow is

\[
\text{primitive monic data}
\longrightarrow
\text{named G9 presentation/certificate outputs}
\longrightarrow
\text{named complete G10 wrapper}
\longrightarrow
\text{named G12 theorem}.
\]

The general affine, homogeneous, monic, and scale clauses then compose without residuals or circularity. The only unresolved issue at global level is that each named producer must still be proved and accepted in fresh attempt-2 step artifacts.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1: Static Derivative-Closure And Projective Certificate | Produces nonvanishing, the literal static matrix bound, the homogeneous block identity, projector identity, and projective-speed cap | `step_001` | Primitive coefficient list and closure identity | `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-derivative-closure` | Step-local proof of coefficient evaluation, block extraction, normalized differentiation, and two named propositions |
| G2: Persistent-Root Nullity | Removes identically zero affine combinations by a law-null conclusion rather than an exclusion | `step_002` | G1 anchor | `assump:anchored-derivative-closure`, `assump:cube-density-laws` | Step-local affine-subspace properness and absolute-continuity proof, including \(N=1\) |
| G3: Exhausted Affine Pivot Sweep | Supplies both chart probability inequalities for arbitrary measurable legal pivot partitions, without simple roots or a uniform pivot margin | `step_003` | G1 nonvanishing and regularity; G2 nullity | All four stable primitive assumptions | Step-local current-notation area-formula theorem: measurability, Lipschitz exhaustion, determinant, event coverage, multiplicity, endpoints, and monotone limit |
| G4: Chart-To-Section Normal-Velocity Identity | Converts the chart Jacobian exactly into the first coordinate-free affine swept-area integral | `step_004` | Named G3 chart theorem | Primitive feature definitions; no new theorem-facing condition | Step-local graph Jacobian, chart differentiation, \(N=1\) convention, and named proposition |
| G5: Translated Cube-Section Geometry | Gives the literal \(\sqrt2(2R)^{N-1}\) section factor uniformly in offset and orientation | `step_005` | Primitive cube geometry | `assump:parameter-regime` | Step-local Brunn--Minkowski current-notation proof, exact Ball instantiation/scaling, and \(N=1\) branch |
| G6: Affine Root-Section Velocity | Transfers derivative closure to the exact G4 integrand with factor \((1+NR^2)\widehat\Lambda_{B,T}\) | `step_006` | G1 matrix certificate and actual root equation | `assump:parameter-regime`, `assump:anchored-derivative-closure` | Step-local two-factor Cauchy--Schwarz derivation and zero-height boundary statement |
| G7: General Affine Rate And Zero Certificate | Produces both affine inequalities, \(C^{\mathrm{aff}}\), and a separately named zero-certificate result | `step_007` | Named G4, G5, and G6 outputs | `assump:cube-density-laws` plus primitive parameter definitions | Step-local exact constant algebra, all-law/all-interval supremum closure, and two named theorem-style outputs |
| G8: Homogeneous Radial Cancellation And Projective Rate | Removes radial motion exactly and gives the sharper \(A\sqrt{N/2}\) probability and capacity bounds | `step_008` | Named G1 projective certificate, G4 sweep identity, and G5 section bound | `assump:cube-density-laws`; homogeneous specialization under `assump:anchored-derivative-closure` | Step-local radial-cancellation lemma, exact coefficient algebra, stationary branch, and named homogeneous theorem |
| G9: Monic Presentation, Shift Certificate, And Legal Velocities | Produces the complete deterministic monic specialization package used by G10 | `step_009` | Primitive monic data | Direct \(q=0\) specialization of `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-derivative-closure` | Step-local exact shift multiplication, certificate, two chart derivatives, negative-power bound, \(d=1\), and two named propositions |
| G10: Complete Current-Notation Affine-Monic Wrapper | Re-exports the whole G9 package and derives the exact baseline probability from G3 in one named conclusion | `step_010` | Named G3 theorem and named G9 propositions | `assump:cube-density-laws` in coefficient dimension \(d\) | Step-local complete wrapper statement/proof, beta volume, partition length, arbitrary-correlation scope, and no-loss re-export |
| G11: Counter-Example 1 Scale Audit | Gives the exact \(1/\delta\) certificate/speed, theorem upper scale, wedge probability, and lower ratio | `step_011` | Named G1 and G8 outputs plus direct example | Displayed specialization of all four stable assumptions | Step-local matrix, normalized derivative, both-wedge area, null-boundary, and endpoint calculations |
| G12: Named-Output Exact-Goal Assembly | Conjoins all inseparable clauses using named theorem-style authorities only | `step_012` assembly role | Named outputs from G1, G3, G7, G8, G10, and G11, explicitly including zero certificate, radial cancellation, and complete monic wrapper | Exactly the four stable primitive assumptions as allocated; no new condition | Step-local clause-by-clause theorem statement and proof-basis audit; no bare-ID authority, transitive interface, hidden dependence, or missing clause |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Root source for G2; nonvanishing/regularity for G3; matrix source for G6; projective source for G8/G11; named source for G12 | Prove the literal coefficient-height and projector interfaces in exact current notation | Must export named static and homogeneous projective propositions; \(\widehat\Lambda=0\), \(q=0\), \(m=0\), and \(N=1\) are explicit boundaries |
| `step_002` | G2 | Consumed by G3 and degenerate-zero handling in final theorem lineage | Prove the persistent-root locus is empty or proper affine and law-null | Uses full joint absolute continuity only; no independence and no exclusion assumption |
| `step_003` | G3 | Consumed by G4, G10, and chart clause of G12 | Prove current-notation area formula on \(E_{j,n}\), determinant, root coverage, multiplicity treatment, probability domination, and monotone limit | This is a highest-risk local unit; it retains the actual \(N\)-dimensional law and deterministic \(F_0\) |
| `step_004` | G4 | Consumed by G7/G8 and final affine-integral lineage | Prove fixed-section bijection, Hausdorff Jacobian, derivative identity, and exact cancellation | No second root theorem and zero residual between chart and target section |
| `step_005` | G5 | Independent source consumed by G7/G8 | Prove translated central maximality and instantiate/scale Ball's theorem, including \(N=1\) | Ball's theorem supplies only the central cap; motion and density are explicit nonoutputs |
| `step_006` | G6 | Consumed by G7 | Prove root-section offset control and both \(\sqrt{1+NR^2}\) factors | No global amplitude assumption; the root equation supplies the needed coupling |
| `step_007` | G7 | Direct named producer for G12 | Prove literal affine rate and capacity closure; separately state the zero-certificate corollary | G12 must consume the named zero certificate, not only the general bound or the step ID |
| `step_008` | G8 | Consumed by G11 and direct named producer for G12 | Prove exact radial cancellation, homogeneous rate/capacity, and stationary branch | G12 must consume the named radial-cancellation lemma and named homogeneous theorem |
| `step_009` | G9 | Full-package producer consumed only by G10 | Prove exact monomial presentation, matrix, height, pivots, velocities, boundary branches, and named results | No direct transitive use by G12; its complete package must be re-exported by G10 |
| `step_010` | G10 | Direct named producer for G12 | State one complete wrapper and prove exact probability inequality from G3 plus G9 | Must explicitly re-export \(q=M=m=0\), \(\Delta=N=d\), \(A\), matrix, height, pivots, velocities, deterministic leader, law scope, and probability inequality |
| `step_011` | G11 | Direct named producer for G12 | Prove exact shear certificate, projective speed, wedge area, probability, and upper/lower comparison | Retains both \(1/\delta\) and \(1/(4\delta)\) scales |
| `step_012` | G12 | Final theorem assembly | Consume actual named theorem-style outputs clause by clause and reproduce all modes/constants | Bare step IDs are audit metadata only; no proof-history or transitive G9 authority is legal |

All twelve accepted steps are covered exactly once as a primary block and at every declared downstream use. The dependency order is acyclic:

\[
\begin{aligned}
&G1\to G2\to G3\to G4,\qquad G1\to G6,\\
&\{G4,G5,G6\}\to G7,\qquad \{G1,G4,G5\}\to G8,\\
&\{G3,G9\}\to G10,\qquad \{G1,G8\}\to G11,\\
&\{G1,G3,G7,G8,G10,G11\}\to G12.
\end{aligned}
\]

## Dependency And Assumption Audit

### Stable primitive assumptions

| Stable assumption ID | Classification | Exact theorem-facing content | Principal consumers | Audit result |
| -------------------- | -------------- | ---------------------------- | ------------------- | ------------ |
| `assump:parameter-regime` | primitive condition | Finite static dimensions/degrees/data, compact one-dimensional parameter interval, \(R>0\), \(\kappa>0\), and nonempty law class | G1, G3, G5, G6, G7, G9-G12 | Stable ID exists; no generated fact is hidden in it |
| `assump:balcan-common-chain` | primitive condition | Exact Balcan--Nguyen--Sharma \(p=1\) common-chain convention with \(q,M,\Delta\) | G1, regularity input to G3, G9 specialization, G12 statement | Convention only; it does not supply sweep speed or a root bound |
| `assump:anchored-derivative-closure` | primitive condition | \(F_{j_*}\equiv1\), supplied polynomial \(B\), and exact identity \(\widetilde F'=B\widetilde F\) | G1-G4, G6-G9, G11-G12 as allocated | Genuine nonvanishing and derivative mechanism source; no assumed projective or area bound |
| `assump:cube-density-laws` | primitive condition | Arbitrary correlated full joint density on \([-R,R]^N\), capped by \(\kappa\) | G2, G3, G7, G8, G10-G12 | Supplies absolute continuity and density domination, not independence |

### Derived and local conditions

| Condition | Provenance class | Legal producer | Consumers | Closure status |
| --------- | ---------------- | -------------- | --------- | -------------- |
| \(F\neq0\), \(\lVert F\rVert _2\geq1\) | accepted-future derived conclusion | Named G1 proposition from the primitive anchor | G3 pivot cover; G4 normalization; G8 projective curve | Noncircular: produced before every consumer |
| \(\sup_\Theta\lVert B\rVert _{\mathrm{op}}\leq\widehat\Lambda_{B,T}\) | accepted-future derived conclusion | Named G1 proposition from the coefficient list | G6-G8 and specializations | Pointwise certificate; no accumulated condition |
| \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda_{B,T}\) when \(F_0=0\) | accepted-future derived conclusion | Named G1 homogeneous proposition | G8, G11, G12 | Exact normalized-object bridge; no surrogate residual |
| \(Z_\infty(I)\) is law-null | accepted-future derived conclusion | Named G2 lemma | G3 and final degenerate-zero handling | Same coefficient space and law; probability residual zero |
| \(F_j\neq0\) on \(E_j\) | local conditional hypothesis inside G3 | Arbitrary legal partition; a global legal partition exists from the anchor | G3 local charts only | Discharged by summing the partition; not a final theorem assumption |
| \(\lvert F_j\rvert \geq1/n\) on \(E_{j,n}\) | local conditional hypothesis generated by exhaustion | Definition inside G3 | Finite-level area formula only | Removed by \(E_{j,n}\uparrow E_j\) and monotone convergence |
| Chart probability inequalities | accepted-future derived conclusion | Named G3 theorem | G4, G10, G12 | Producer precedes every consumer |
| Coordinate-free sweep identity | accepted-future derived conclusion | Named G4 proposition | G7, G8, G12 | Equality on the actual target section |
| Translated section cap | accepted-future derived conclusion | Named G5 proposition | G7, G8 | Independent geometry source; not an admissibility assumption |
| Affine velocity cap | accepted-future derived conclusion | Named G6 lemma | G7 | Root-section coupling precedes integration |
| Affine, homogeneous, monic, and scale outputs | accepted-future derived conclusions | Named G7, G8, G10, and G11 results | G12 | All direct named dependencies, with zero residual transfers |

There is no missing derived-condition bridge and no conditional final theorem. The conditions \(F_0=0\), the monic tuple, and Counter-example 1 are explicit specialization antecedents inside corresponding theorem clauses, not hidden restrictions on the general affine theorem. The compact \(\Theta\supseteq J\) used for a bounded monic interval is allowed by the goal, and the exact monic bound is independent of its location and of \(T\). All local pivot and exhaustion conditions are discharged before public consumption.

## Citation And Tool Audit

| Source or tool | Identity / stable locator | Current-branch role and objects | Assumptions and source-object mapping | Conclusion used | Convention compatibility and known nonoutputs | Affected block / Step ID | Discharge status |
| -------------- | ------------------------- | ------------------------------- | ------------------------------------- | --------------- | --------------------------------------------- | ------------------------ | ---------------- |
| Balcan--Nguyen--Sharma Pfaffian convention | *Algorithm Configuration for Structured Pfaffian Settings*, Definitions 2--4, arXiv:2409.04367 | Fixes the common triangular chain, total degrees, \(p=1\), and meanings of \(q,M,\Delta\) | Setting already instantiates one scalar parameter, a common chain, and output polynomials | Notation/convention only | Exact convention match; does not output derivative closure, projective speed, area, probability, or the monic bound | G1, G3, G9, G12 / `step_001`, `step_003`, `step_009`, `step_012` | Interface preflight complete; no theorem-critical conclusion delegated to it |
| Euclidean area formula | Standard measurable-domain/Lipschitz area formula, stated in the current-notation G3 wrapper; Azais--Wschebor, DOI:10.1002/9780470434642, is regularity context | Map \(\Psi_j:D_{j,n}\subset\mathbb R^N\to\mathbb R^N\), actual coefficient vector, determinant \(\lvert \partial_\theta T_j\rvert \) | G1 gives a nonzero pivot; the \(1/n\) level gives a Lipschitz quotient on compact data; \(D_{j,n}\) is measurable | \(\lambda^N(\Psi_j(D_{j,n}))\leq\int_{D_{j,n}}\lvert \det D\Psi_j\rvert \) with multiplicity | Same Euclidean coordinates, dimension, volume, and determinant as target. It does not supply density domination, event coverage, exhaustion, endpoint handling, or persistent-root nullity | G3 / `step_003` | Step-local current-notation statement and proof/check still required; source shape and raw-assumption path are fixed |
| Balcan--Dick--Pegden affine lineage | *Semi-bandit Optimization in the Dispersed Setting*, Theorem 18, arXiv:1904.09014 | Confirms affine lower-coefficient lineage | No black-box mapping is used for arbitrary \(F_0,F\) | None theorem-critical | Does not output the present chart theorem, arbitrary-correlation wrapper, exhaustion, exact monic package, or constants | G3 / `step_003` | Nonoutput explicitly recorded; proof rests on the current area-formula wrapper |
| Brunn--Minkowski section concavity | Standard Euclidean convex-geometry fact, proved/restated in current notation | Section function \(v_u(t)\) of the symmetric cube | \(N\geq2\), convexity, symmetry, fixed unit normal | \(v_u(t)\leq v_u(0)\) | Same cube, offset direction, Euclidean Hausdorff measure, and scale; it does not control orientation-uniform central size | G5 / `step_005` | Step-local current-notation derivation; \(N=1\) handled separately |
| Ball central cube slicing | K. Ball, *Cube Slicing in R^n*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0 | Central hyperplane section of the coefficient cube | Unit-volume Euclidean cube maps by scale \(2R\) to \([-R,R]^N\); normal \(u=F/\lVert F\rVert \) is Euclidean unit | \(v_u(0)\leq\sqrt2(2R)^{N-1}\) | Exact measure and orientation match after scaling. It does not give translated maximality, normal velocity, density control, root-event probability, or \(N=1\) | G5, consumed in G7/G8 / `step_005` | Exact theorem label role, scaling, mapping, and nonoutputs fixed; local source check remains |
| Edelman--Kostlan homogeneous geometry cross-check | *How Many Zeros of a Random Polynomial Are Real?*, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9 | Cross-checks the normalized homogeneous integrand | Current proof uses the actual \(F/\lVert F\rVert \) and coefficient hyperplane directly | No black-box probability conclusion; only convention corroboration | Does not supply G3 affine area sweep, Ball factor, arbitrary bounded-density union bound, derivative certificate, or exact monic recovery | G8 / `step_008` | Nonessential citation; theorem-critical radial cancellation is directly derived |
| Coefficient evaluation and Frobenius/operator comparison | Direct primitive-source derivation in the exact setting convention | Actual polynomial matrix \(B(\theta)\) | \(\lvert \theta\rvert \leq T_*\), displayed coefficient list | Actual \(\lVert B\rVert _{\mathrm{op}}\) bounded by actual \(\widehat\Lambda_{B,T}\) | Exact coordinate and Euclidean norms; no source-side surrogate or hidden term | G1 / `step_001` | Raw-assumption path displayed; step-local formalization remains |
| Normalized-vector differentiation | Direct standard calculus in current notation | \(F/\lVert F\rVert _2\), actual lower block \(B_F\) | Anchor gives \(\lVert F\rVert \geq1\); \(F_0=0\); closure gives \(F'=B_FF\) | Projector identity and speed cap | Exact target object and Euclidean norm; boundary \(\Gamma=0\) explicitly handled | G1 and G8 / `step_001`, `step_008` | Raw-assumption path displayed; no external theorem needed |
| Fixed-section graph Jacobian and chart differentiation | Direct Euclidean change of variables | Actual \(T_j,\Psi_j,H_\theta\) | \(F_j\neq0\) locally | Exact equality between chart and normal-velocity densities | Same target section and \(\mathcal H^{N-1}\); pivot denominator cancels, residual zero | G4 / `step_004` | Step-local calculation fixed at obstruction-level granularity |
| Root-section Cauchy--Schwarz | Direct Euclidean derivation | Actual \(a\in H_\theta\), \(B\), \(\widetilde F\) | Cube support, root equation, G1 certificate | Literal \((1+NR^2)\widehat\Lambda\) velocity | Same target integrand; no global \(F_0\) bound or persistent defect | G6 / `step_006` | Raw controls and exact dominance relation displayed |
| Monomial shift and pivot differentiation | Direct current-notation derivation | \((\theta^d,1,\theta,\ldots,\theta^{d-1})\), actual lower coefficients | \(d\geq1\), prescribed two-region split | Exact matrix, certificate, pivots, maps, and velocities | Same scalar coordinate, \(d\)-vector, deterministic leader, and Euclidean/Frobenius conventions; no independent root theorem | G9-G10 / `step_009`, `step_010` | Raw-assumption path and all boundary branches fixed; local proof remains |
| Planar wedge calculation | Direct Lebesgue-area calculation | Uniform law on \([-1,1]^2\), same Counter-example event | \(0<\epsilon\leq\delta\leq1\) | Exact area \(\epsilon/\delta\) and probability \(\epsilon/(4\delta)\) | Same law, interval, coordinate, and metric; axes and boundaries are null | G11 / `step_011` | Direct local proof remains; no citation needed |

No cited source is treated as producing a claim outside its statement. In particular, Ball is not a sweep theorem, Edelman--Kostlan is not the affine or arbitrary-density proof authority, Balcan--Dick--Pegden is lineage rather than the current chart theorem, and Azais--Wschebor is regularity context rather than a substitute for the exact G3 wrapper.

## Quantitative Dependence Audit

| Objective / theorem clause | Exposed variables and literal dependence | Hidden constants | Fixed quantities | Probability and horizon mode | Norm / measure mode | Auxiliary choices and bridge | Baseline obligation | Audit result |
| -------------------------- | ---------------------------------------- | ---------------- | ---------------- | ---------------------------- | ------------------- | ---------------------------- | ------------------- | ------------ |
| R1 static certificate | \(T,m,N,(b_{rs,\ell}),T_*,\widehat\Lambda_{B,T}\); additional dependence on fixed \(q,M,\Delta\) is degree zero | None | Full presentation, \(B\), and \(\Theta\) | Deterministic, pointwise then uniform supremum | Euclidean operator and Frobenius norms | No tolerance; entrywise coefficient sum -> Frobenius -> operator; homogeneous projector exact | Must give \((\sum_{k=1}^dk^2)^{1/2}\) and \(1/\delta\) in the two specializations | Preserved literally |
| R2 general affine | \(N,R,\kappa,A,\widehat\Lambda_{B,T},\lvert I\rvert \) with coefficient \(A(1+NR^2)/(\sqrt2R)\) | None | Deterministic feature/certificate and support data | Ordinary probability for each fixed arbitrary correlated law; every positive-length interval; then double supremum | Euclidean vectors/operators, \(\lambda^N\), and \(\mathcal H^{N-1}\) | Exhaustion index \(n\) is local and removed; exact identity \(\kappa\sqrt2(2R)^{N-1}=A/(\sqrt2R)\) | Deterministic affine offset and chart theorem must remain the exact monic producer | Preserved; no confidence or independence term |
| R3 homogeneous | \(A,N,\Gamma_{\mathrm{proj}},\widehat\Lambda_{B,T},\lvert I\rvert \) with coefficient \(A\sqrt{N/2}\) | None | Homogeneous feature tuple and support/density data | Ordinary probability, all admissible laws and positive-length intervals, then capacity supremum | Euclidean normalized speed and central-section geometry | Exact radial cancellation; \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\); no probability conversion | Must retain \(1/\delta\) and must not replace affine-monic baseline | Preserved literally |
| R4 exact monic baseline | \(d,R,\kappa,\lvert J\rvert \), \(q=M=m=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), exact shift height, and \(V_d=d+Rd(d-1)/2\) | None | \(d,R,\kappa\), a compact \(\Theta\supseteq J\), deterministic leading coefficient | Ordinary probability for every possibly correlated lower-coefficient law; every bounded interval \(J\) | Scalar chart velocity and Lebesgue coefficient volume | Exact two pivots, negative-power bound, \((2R)^{d-1}\) beta volume, finite partition identity, separate \(d=1\); no threshold | Exact \(\kappa(2R)^{d-1}V_d\lvert J\rvert \), full presentation/certificate re-export, no singular leader | Preserved by named G9 -> complete named G10 -> G12 flow |
| R5 Counter-example 1 | \(0<\epsilon\leq\delta\leq1\), with \(R=1,\kappa=1/4,A=1,N=2,\Delta=1\); exact upper \(1/\delta\), probability \(\epsilon/(4\delta)\), ratio \(1/(4\delta)\) | None | Uniform square law and displayed feature tuple | Exact ordinary probability on \([0,\epsilon]\); no asymptotic conversion | Euclidean projective norm and planar Lebesgue area | Both wedges included; axes/boundaries null; no auxiliary tolerance | Coefficient height must expose the necessary \(1/\delta\) scale | Preserved literally |

Quantifier order is fixed data -> arbitrary law and interval -> ordinary probability -> optional supremum. There is no interchange of expectation, limits, or suprema beyond monotone convergence of nonnegative G3 integrals and deterministic division by positive interval length. The monic zero-length observation is a boundary audit, not a change to the positive-length capacity definition. No term is called lower order, absorbed, or hidden; every simplification is one of the displayed equalities or pointwise inequalities above.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------------------------------ | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| G1 anchor nonvanishing and static matrix certificate | Structural nonvanishing and deterministic scale source | Pointwise for every \(\theta\in\Theta\), then uniform supremum | \(\lvert B_{rs}(\theta)\rvert \leq c_{rs}\), \(\lVert B\rVert _{\mathrm{op}}\leq\lVert B\rVert _{\mathrm F}\leq\widehat\Lambda\), and \(\lVert F\rVert _2\geq1\) | Literal primitive anchor and displayed coefficient list | Polynomial growth, matrix off-diagonal entries, and normalization denominator | No accumulated defect: one pointwise inequality holds on all \(\Theta\); taking a supremum preserves it | Structural lower/upper comparison | Direct primitive-source derivation in exact \(p=1\), scalar-coordinate, Euclidean convention; \(q=0,m=0,N=1\) allowed | Anchor has the required positive lower content; coefficient evaluation controls the actual matrix, not a surrogate | Produced \(B,F,\theta\), and norms equal consumed objects; residual zero at target scale \(\widehat\Lambda\) | `step-local` | Primitive anchor/coefficient list -> G1 before G2/G3/G6/G8 | Anchor is active at every allowed \(\theta\) before normalization or pivoting | \(\lVert F\rVert \geq1\) and \(\lVert B\rVert _{\mathrm{op}}\leq(\sum c_{rs}^2)^{1/2}\) | `assump:parameter-regime`, `assump:anchored-derivative-closure` | None before G1 | At \(\widehat\Lambda=0\), every matrix coefficient is zero and \(B=0\); endpoints and constant matrices pass | Without anchor, normalization/pivots can fail; without coefficient control, every quantitative rate loses its scale source |
| G1 homogeneous projective certificate | Structural normalized-curve bridge and rate source | Every \(\theta\in\Theta\) under \(F_0=0\), then \(\Gamma_{\mathrm{proj}}\) supremum | \(F'=B_FF\), \(\gamma_F'=(I-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F\), \(\lVert \gamma_F'\rVert \leq\widehat\Lambda\) | Anchor-backed normalization and orthogonal projector | Radial derivative, first-column/off-block terms, possible stationary motion | Pointwise bound; the supremum has no additive forcing | Algebraic coupling and structural upper comparison | Direct normalized-vector differentiation in the actual Euclidean convention; \(F_0=0\) removes the first-column contribution | Projector identity supplies the exact tangent/projective claim, not a generic feature upper bound | Produced normalized curve is the target-defined \(\gamma_F\); radial residual is projected exactly and target residual is zero | `step-local` | Primitive closure -> G1 -> G8/G11; no homogeneous conclusion assumed | At \(\Gamma=0\), \(\gamma_F\) is constant on connected \(\Theta\) before G8 consumes a zero bound | Projector norm one and \(\lVert B_F\rVert _{\mathrm{op}}\leq\lVert B\rVert _{\mathrm{op}}\) | Anchor, closure identity, \(F_0=0\) | Static matrix certificate from G1 | \(N=1\), constant radial rescaling, \(\widehat\Lambda=0\), and endpoints pass | Without the exact projector bridge, static \(B\) would not control projective sweep speed |
| G2 persistent-root nullity | Generated exceptional-set certificate | Each fixed admissible law and each tested interval | \(a\in Z_\infty\) and \(a+e_{j_*}\in Z_\infty\) would imply \(F_{j_*}=0\); proper affine set has law measure zero | Translation by anchored coordinate and full joint absolute continuity | Feature dependence can make the locus nonempty; a singular law could charge it | Static set, no repeated defect; law-nullity holds separately for every law and interval | Algebraic coupling | Primitive anchor plus `assump:cube-density-laws`; singular laws are excluded by the declared law class | Anchor supplies the exact direction proving properness; density supplies nullity without independence | Exact persistent-root set in exact coefficient space and law; probability residual zero | `step-local` | G1 anchor -> G2 -> G3; nullity is proved before chart event coverage | N/A: static exceptional-set claim, and persistent coefficients are tested directly | \(\lambda^N(Z_\infty)=0\Rightarrow\mu(Z_\infty)=0\) | Anchor and full joint density | G1 nonvanishing | Empty/nonempty proper locus, \(N=1\), and constant dictionary pass | Without absolute continuity, a proper affine subspace could carry mass and a zero-remainder theorem could fail |
| G3 exhausted affine pivot sweep | Generated coefficient-volume/probability interface | Every law, interval, measurable legal partition, and all exhaustion levels followed by \(n\to\infty\) | \(\lambda^N(\Psi_j(D_{j,n}))\leq\int_{D_{j,n}}\lvert \partial_\theta T_j\rvert \); \(E_{j,n}\uparrow E_j\) | Actual nonzero pivot and exact full-dimensional determinant | Near-zero pivots, tangencies, multiple/repeated preimages, endpoints, persistent roots, correlation | Accumulated quantity \(J_{j,n}:=\int_{E_{j,n}}\int\mathbf1\{\lvert T_j\rvert \leq R\}\lvert T_j'\rvert \) is nonnegative and increases to \(J_j\); sign is nonnegative, each root activates finite \(n\), and monotone convergence gives a valid all-partition limit | Stopping/conditioning argument and monotone potential | G1 anchor/nonvanishing, G2 nullity, standard Euclidean area formula with checked Lipschitz current-notation wrapper, and joint density cap; no uniform margin required | Area formula controls actual image volume with favorable multiplicity; density cap controls actual law | \(\Psi_j\) outputs exact \(\alpha\), solves exact affine equation, and covers every nonpersistent root; endpoint/persistent residuals are law zero | `step-local` | G1/G2 and primitives -> finite G3 charts -> monotone limit -> G4/G10; no final probability claim assumed | Any root in \(E_j\) has \(\lvert F_j\rvert >0\), so some finite \(n\geq1/\lvert F_j\rvert \) activates its chart before event consumption | \(\Pr(E)\leq\kappa\sum_j\lim_nJ_{j,n}=\kappa\sum_jJ_j\); indicator dropping is pointwise | Four stable assumptions | G1 nonvanishing and G2 nullity | \(N=1\), empty cells, vanishing Jacobian, pivots tending to zero, tangencies, multiplicities, endpoints pass | Without a nonzero pivot or valid area wrapper, root-event coverage or the union-volume bound would fail |
| G4 chart-to-section equality | Exact exported-interface bridge | Pointwise in \(\theta\) on each legal pivot cell, then finite partition integration | \(d\mathcal H^{N-1}=(\lVert F\rVert /\lvert F_j\rvert )d\beta\) and \(T_j'=-(F_0'+\langle\Psi_j,F'\rangle)/F_j\) | Same nonzero pivot appears in both Jacobians | Pivot denominators and translated offset | Exact pointwise equality; finite disjoint summation introduces no accumulation | Algebraic coupling | Direct Euclidean graph Jacobian and differentiation in exact chart convention | Same-object identities supply exact normal-velocity density | Chart section bijects to actual \(H_\theta\cap[-R,R]^N\); equality gives residual zero in \(\mathcal H^{N-1}\) metric | `step-local` | Named G3 theorem -> G4 identity -> G7/G8 | Legal pivot is active at first chart use; no delayed mechanism | \(\lvert T_j'\rvert d\beta=\lvert F_0'+\langle a,F'\rangle\rvert d\mathcal H^{N-1}/\lVert F\rVert \) | Feature definitions and Euclidean geometry | G3 chart theorem | \(N=1\), empty section, \(F_0=0\), and zero velocity pass | Without exact cancellation, pivot-dependent denominators would contaminate the public constant |
| G5 translated cube-section cap | Structural upper comparison for every affine section | Pointwise for every \(\theta\), offset, and orientation; uniform in interval | \(v_u(t)\leq v_u(0)\leq\sqrt2(2R)^{N-1}\) | Cube symmetry/convexity and Ball's central cap | Translation, orientation, empty sections, \(N=1\) | Pointwise uniform cap; integration creates only constant times interval length | Structural lower/upper comparison | Brunn--Minkowski current-notation derivation plus Ball main theorem with exact scale \(2R\); \(N=1\) direct | Even concavity controls offset and Ball supplies orientation-uniform central size, the exact needed claim classes | Source cube scales to same target cube and measure; translated comparison keeps same normal; residual zero | `step-local` | Primitive cube -> G5 -> G7/G8, independent of root probability | N/A: static geometric estimate, no generated trajectory | \(\mathcal H^{N-1}(H_\theta\cap[-R,R]^N)\leq\sqrt2(2R)^{N-1}\) | `assump:parameter-regime` | None before G5 | Empty, central, coordinate, diagonal, and \(N=1\) sections pass | Without translated maximality plus Ball, literal affine/homogeneous section constants are unsupported |
| G6 affine root-section velocity | Structural transfer to actual sweep integrand | Pointwise on every \(a\in H_\theta\cap[-R,R]^N\) | \(\lvert F_0\rvert \leq R\sqrt N\lVert F\rVert \), \(\lVert \widetilde F\rVert \leq\sqrt{1+NR^2}\lVert F\rVert \), then velocity cap | Root equation, cube support, closure identity, G1 certificate | Affine offset, coefficient magnitude, all entries of \(B\) | Pointwise nonnegative domination; no accumulated forcing under section/interval integration | Algebraic coupling and structural upper comparison | Direct primitive-source derivation in exact augmented-vector convention; root section is the boundary on which coupling applies | Root equation supplies actual offset control and closure supplies actual derivative numerator | Produced velocity is exactly G4 integrand; both square-root factors are target-side and residual zero | `step-local` | G1 plus primitive root identity -> G6 -> G7 | At any first root, the coupling is already active; for \(\widehat\Lambda=0\), tuple is constant | \(\lVert (1,a)\rVert \lVert B\rVert \lVert \widetilde F\rVert /\lVert F\rVert \leq(1+NR^2)\widehat\Lambda\) | Cube support and closure | G1 matrix certificate | \(N=1\), \(F_0=0\), \(a=0\), empty sections, and zero height pass | Without root-section coupling, an uncontrolled deterministic offset could defeat the declared velocity rate |
| G7 general affine rate and capacity closure | Quantitative specialization and all-law/all-interval theorem closure | Each law and positive-length interval, then defining suprema | \(\Pr(E)\leq\kappa\lvert I\rvert \sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda\) | Product of exact G4 sweep, G5 section cap, and G6 velocity cap | Law, interval, offset, orientation, correlation, hidden degree dependence | Nonnegative interval integral has budget \(C\lvert I\rvert \); the same deterministic \(C\) holds for each law/interval, so suprema do not accumulate probability | Summable control and structural upper comparison | Accepted-future named G4-G6 outputs plus primitive density definition | Inputs control the exact event, section, and velocity in matching conventions | Technical integral and public event are identical; exact \(A\)-algebra leaves residual zero | `step-local` | G4/G5/G6 -> G7 -> G12; no G7 conclusion used upstream | At \(\widehat\Lambda=0\), G6 gives zero velocity and G2 identifies a fixed law-null hyperplane before zero bound use | \(\kappa\sqrt2(2R)^{N-1}=A/(\sqrt2R)\), then divide by positive \(\lvert I\rvert \) | Density cap and parameter definitions | G4 sweep, G5 section, G6 velocity | \(N=1\), empty sections, zero height, arbitrarily short positive intervals pass | Missing any of G4-G6 would leave the literal affine coefficient unsupported |
| G7 affine zero certificate | Exact zero-source baseline conclusion and named G12 input | Every law and interval when \(\widehat\Lambda_{B,T}=0\) | Coefficient height zero -> \(B=0\) -> \(\widetilde F\) constant -> root coefficients form a proper affine hyperplane | Zero coefficient list plus anchor | Risk that a vanishing rate source leaves a nonzero event | Source-excluded: no accumulated defect; event is one static law-null set | Algebraic coupling | G1 coefficient identity, primitive closure/anchor, and full joint absolute continuity | Zero height forces actual dynamics to vanish; anchor makes actual coefficient equation proper | Same constant tuple and event as target; probability residual zero | `step-local` | G1/G2 -> named G7 zero corollary -> G12 | Stationary behavior is traced before final consumption: no update, constant tuple, law-null event | \(\widehat\Lambda=0\Rightarrow B=0\Rightarrow\widetilde F'=0\Rightarrow\Pr(E)=0\) | Anchor, coefficient list, density | G1 and G2 | \(N=1\), affine offset, and every interval pass | Without named zero handling, a zero RHS could conceal an inactive mechanism and false event |
| G8 homogeneous radial cancellation and rate | Signed cancellation, projective quantitative specialization, and capacity closure | Each law/interval under \(F_0=0\), then suprema | \(F'=r'\gamma+r\gamma'\), \(a\perp\gamma\), so \(\lvert \langle a,F'\rangle\rvert /r=\lvert \langle a,\gamma'\rangle\rvert \) | Root-section orthogonality and G1 projective certificate | Radial derivative, coefficient norm, orientation, correlation, stationary curve | Radial defect cancels with exact sign zero; remaining nonnegative speed has interval budget \(\int_I\lVert \gamma'\rVert \leq\Gamma\lvert I\rvert \); no union accumulation | Signed cancellation and summable control | Direct current-notation decomposition plus G4/G5/G1; Edelman--Kostlan is cross-check only | Orthogonality has exact signed content needed to remove radial motion; G1 controls actual projective speed | Same \(\gamma_F\), central section, event, and Euclidean norm; radial residual exactly zero | `step-local` | G1/G4/G5 -> named G8 outputs -> G11/G12 | If \(\Gamma=0\), \(\gamma\) is constant and event is a fixed law-null hyperplane before the zero bound is used | \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\) and \(\int_I\lVert \gamma'\rVert \leq\Gamma\lvert I\rvert \) | Homogeneous root equation, cube/density | G1 projective, G4 sweep, G5 section | \(N=1\), stationary motion, radial rescaling, \(a=0\), zero height pass | Without orthogonality cancellation, projective speed alone would not control radial sweep motion |
| G9 exact monic presentation/certificate/pivots | Baseline object mapping and deterministic mechanism package | Every \(d\geq1\), bounded \(J\), and every \(\theta\in J\) | Exact shift multiplication; inner and outer chart derivatives bounded by \(V_d\) | Anchor \(1\), outer \(\theta^{d-1}\neq0\), and explicit monomial algebra | Monomial growth, outer negative powers, transition \(\lvert \theta\rvert =1\), \(d=1\), interval location | Two disjoint pointwise regions charge each \(\theta\) once; finite ledger \(\lvert E_1\rvert +\lvert E_d\rvert =\lvert J\rvert \); no iterative defect | Algebraic coupling and reserve/ledger under declared scope | Direct \(q=0\) primitive-source derivation in exact augmented-tuple and Euclidean/Frobenius convention | Explicit nonzero pivots give support; direct matrix identity gives exact structural/certificate claims | \(F_0+\langle\alpha,F\rangle=p_\alpha\) for same \(d\)-vector; deterministic leader remains external; residual zero | `step-local` | Primitive monic data -> named G9 propositions -> G10 only | At \(0\) and \(\lvert \theta\rvert =1\), inner pivot is active; outside, outer pivot is active; \(d=1\) pivot global | \(\lvert T_1'\rvert \leq V_d\), \(\lvert T_d'\rvert \leq1+Rd(d-1)/2\leq V_d\), exact \(\widehat\Lambda^2=\sum k^2\) | Direct monic specialization of first three assumptions | None before G9 | \(d=1,d=2,\theta=0,\lvert \theta\rvert =1\), empty cells, arbitrary bounded location pass | Without exact pivots or shift identity, the baseline chart or static certificate would not be legal |
| G10 complete affine-monic wrapper | Baseline invariance and exact public Rate Specialization Bridge | Every \(d\geq1\), bounded \(J\), arbitrary correlated capped lower-coefficient law | Re-export complete G9 package; apply G3; beta volume \((2R)^{d-1}\); finite partition sum | Named G3 theorem plus named G9 propositions and \(V_d\) | Correlation, smaller outer cap, \(d=1\), interval location, possible transitive-interface loss | Two nonnegative chart integrals; finite ledger \(\kappa(2R)^{d-1}V_d(\lvert E_1\rvert +\lvert E_d\rvert )\); no persistent term | Summable control and algebraic coupling | Accepted-future G3/G9 named outputs in same object convention; no external polynomial theorem | G3 controls actual coefficient event and G9 supplies exact lower-coefficient pivots/certificate | Produced and consumed polynomial, vector, law, interval, matrix, and metrics coincide; all residuals zero at exact target scale | `step-local` | Named G3 + named G9 -> one complete named G10 wrapper -> G12 | Every first chart use has a G9 pivot; \(d=1\) uses zero-dimensional volume one | \(\Pr(E)\leq\kappa(2R)^{d-1}V_d(\lvert E_1\rvert +\lvert E_d\rvert )=\kappa(2R)^{d-1}V_d\lvert J\rvert \) | Density cap in dimension \(d\) | G3 and complete G9 package | \(d=1\), \(\lvert \theta\rvert =1\), empty cells, zero-length boundary audit, arbitrary correlation pass | Without full re-export, G12 would again lack a legal presentation/certificate producer; without G3, exact probability recovery fails |
| G11 Counter-example 1 scale | Exact scale audit and lower/upper comparison | \(0<\epsilon\leq\delta\leq1\) for displayed uniform law | \(B_{2,1}=1/\delta\), \(\lVert \gamma'\rVert =1/(\delta(1+x^2))\), wedge area \(2\int_0^1tu\,du=t\) | Literal derivative entry \(1/\delta\) and both opposite-sign wedges | Axes, wedge boundaries, endpoint cases, risk of degree-only scale suppression | One exact interval calculation; ratio is constant, no limiting or recursive defect | Signed cancellation and structural lower/upper comparison | Direct current-notation matrix/curve/area calculation plus named G8 upper theorem | Literal slope supplies both upper mechanism and lower-event geometry at correct scale | Same feature, law, interval, and Euclidean metric; axes/boundaries have zero residual probability | `step-local` | Direct example and G8 -> named G11 proposition -> G12 | At \(\theta=0\), speed \(1/\delta\) is active before event consumption | Probability \(=(\epsilon/\delta)/4\); upper coefficient \(=A\sqrt{N/2}\widehat\Lambda=1/\delta\) | Displayed specialization and uniform density | G8 homogeneous theorem | \(\epsilon=\delta\), \(\epsilon\downarrow0\), \(\delta=1\), axes and boundaries pass | If certificate omitted \(1/\delta\), exact lower ratio would contradict the theorem scale |
| G12 named-output exact-goal closure | Final unconditional theorem assembly and mode/dependence preservation | Entire exact theorem, all stated laws, intervals, and specializations | Conjunction of actual named outputs; no new inequality or recurrence | Dependency-closed theorem-style producer set, including named zero certificate, radial cancellation, and complete monic wrapper | Clause loss, transitive G9 use, bare-ID authority, changed dimension/mode/metric, hidden constants | No new accumulation: G3 monotone exhaustion, interval budgets, and G10 finite ledger are already closed upstream | Algebraic coupling | Named accepted-future outputs from G1, G3, G7, G8, G10, G11; no proof-history source | Each named output has the exact claim class consumed by its final clause | Clause-by-clause same-object transfer; every residual zero | `step-local` | Acyclic named producers -> G12; no producer assumes final theorem | Anchor/pivots activate upstream; zero, stationary, monic, and counterexample boundary traces all precede assembly | Literal conjunction with exact quantifier, constant, and mode audit | Exactly four stable assumptions | Every named direct dependency output | \(N=1,q=0,m=0,\widehat\Lambda=0,d=1,\lvert \theta\rvert =1,\epsilon=\delta\), tangencies and persistent null sets pass | Any missing named producer removes an inseparable clause or recreates an illegal interface |

Every certificate row is `step-local`; no row requires a changed assumption, dependency, output target, mechanism source, residual bridge, probability mode, metric, or conclusion. The repeated-scope rows expose concrete controls: G3 has the monotone nonnegative integral \(J_{j,n}\uparrow J_j\); G7 and G8 have finite interval budgets \(C\lvert I\rvert \) and \(\Gamma\lvert I\rvert \); G9-G10 have the finite two-cell ledger \(\lvert E_1\rvert +\lvert E_d\rvert =\lvert J\rvert \). There is no persistent adversarial-sign forcing.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| \(F\neq0\), static matrix certificate, and homogeneous projective certificate | G1 / `step_001`, direct primitive-source derivation | Anchor, coefficient list, \(\lvert \theta\rvert \leq T_*\), closure identity, \(F_0=0\) for homogeneous output | Polynomial growth controlled by \(T_*^\ell\); denominator by anchor; first column by \(F_0=0\); no uncontrolled class | Actual \(B,F,\gamma_F,\theta\), and Euclidean norms; residual zero at scale \(\widehat\Lambda\) | Entrywise -> Frobenius -> operator; projector norm one | Literal anchor \(1\), not a chosen threshold | G2, G3, G6, G8, G11, G12 | valid; step-local proof pending |
| Persistent-root law-null certificate | G2 / `step_002` | Anchor direction and full joint absolute continuity | Feature dependence may make locus nonempty but not full-dimensional; singular-law defect excluded by primitive class | Exact persistent-root locus under exact law; probability residual zero | Translation by \(e_{j_*}\) proves properness; density makes proper affine set null | Anchor and absolute continuity | G3 and G12 lineage | valid; step-local proof pending |
| Indicator and indicator-dropped chart inequalities | G3 / `step_003`, Euclidean area formula wrapper | Nonzero pivot cover, \(C^1\) data, generated \(1/n\) margin, determinant, density cap, G2 nullity | Near-zero pivots by monotone exhaustion; tangencies/multiplicity by area formula; endpoints/persistence law-null; correlation by joint cap; none uncontrolled | \(\Psi_j\) produces exact coefficient and exact root equation; exhaustive coverage, zero residual | Image volume bounded by determinant integral; \(E_{j,n}\uparrow E_j\); indicator at most one | Generated finite-level margin only; no theorem threshold | G4, G10, G12 | valid; exact current-notation proof pending |
| Coordinate-free affine normal-velocity integral | G4 / `step_004` | Named G3 theorem, section bijection, graph and chart Jacobians | Pivot denominators cancel; translated offset retained; none uncontrolled | Actual section and \(\mathcal H^{N-1}\) measure; equality gives zero residual | \(\lvert T_j'\rvert d\beta=\lvert F_0'+\langle a,F'\rangle\rvert d\mathcal H^{N-1}/\lVert F\rVert \) | Legal pivot already provided by partition | G7, G8, G12 | valid; direct identity proof pending |
| Translated cube-section cap | G5 / `step_005`, Brunn--Minkowski plus Ball | Symmetric convex cube, Euclidean normal, central theorem | Offset by even concavity; orientation by Ball; empty/\(N=1\) direct; none uncontrolled | Ball cube scales to exact target cube and measure; translated same-normal comparison; residual zero | \(v(t)\leq v(0)\leq\sqrt2(2R)^{N-1}\) | Symmetry/convexity and Ball cap | G7, G8 | valid; source instantiation proof pending |
| Affine root-section velocity cap | G6 / `step_006` | Root equation, cube support, closure, G1 certificate | \(F_0\), \(a\), and \(B\) each controlled by a named source; no persistent/unrelated defect | Exact G4 integrand on exact section; residual zero | Two factors \(\sqrt{1+NR^2}\) multiply to \(1+NR^2\) | Root equation and anchor-backed denominator | G7 | valid; direct proof pending |
| General affine rate, capacity, and zero certificate | G7 / `step_007` | G4-G6 and parameter/density definitions; G1/G2 for zero branch | Law, interval, offset, orientation, correlation controlled; no hidden \(q,M,\Delta\) or confidence term | Same event/law/interval/cube; exact constant conversion, zero residual | \(\kappa\sqrt2(2R)^{N-1}=A/(\sqrt2R)\); zero height -> constant tuple -> null hyperplane | Earlier geometry/velocity; literal zero coefficient source | G12 | valid; two named theorem-style outputs pending |
| Homogeneous radial cancellation and \(A\sqrt{N/2}\) rates | G8 / `step_008` | G1, G4, G5, cube support, density cap, root orthogonality | Radial term exactly cancelled; magnitude/orientation/correlation controlled; stationary branch null | Same normalized curve and root section; radial residual exactly zero | \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\), then \(\Gamma\leq\widehat\Lambda\) | Orthogonality and primitive anchor | G11, G12 | valid; named lemma/theorem pending |
| Exact monic deterministic package | G9 / `step_009`, direct \(q=0\) derivation | Explicit tuple, constant shift identity, two pivots, cube coefficients | Monomial growth, negative powers, transition, \(d=1\), interval location controlled; none uncontrolled | Exact \(p_\alpha\), same \(d\)-vector and scalar coordinate; deterministic leader external; residual zero | Direct matrix multiplication, \(\widehat\Lambda^2=\sum k^2\), and velocity sums | Anchor \(1\) or nonzero \(\theta^{d-1}\); no auxiliary threshold | G10 only | valid; two named propositions pending |
| Complete named affine-monic wrapper | G10 / `step_010`, named G3 plus named G9 | Entire G9 tuple/format/matrix/height/pivots/velocities plus G3 chart theorem, beta volume, density cap | Correlation, smaller outer cap, \(d=1\), empty cells controlled; no presentation or leading-coordinate defect | Wrapper re-exports exact tuple, matrix, law, interval, coefficient dimension, and scalar target; every residual zero | \(\kappa(2R)^{d-1}V_d(\lvert E_1\rvert +\lvert E_d\rvert )=\kappa(2R)^{d-1}V_d\lvert J\rvert \) | Exact G9 shift/pivots and G3 sweep; no extra slack | G12 as direct theorem-style authority | valid; complete named wrapper pending |
| Counter-example exact scales | G11 / `step_011`, direct example plus G8 | Shear entry, normalized curve, uniform density, \(0<\epsilon\leq\delta\) | Both wedges included; axes/boundaries null; no asymptotic or degree-only defect | Same feature, law, interval, and Euclidean metric; residual zero | Wedge area \(\epsilon/\delta\), density \(1/4\), G8 upper coefficient one | Literal slope \(1/\delta\) | G12 | valid; named proposition pending |
| Full exact-goal theorem | G12 / `step_012` | Actual named outputs of G1, G3, G7, G8, G10, G11, including zero certificate and radial cancellation | Every defect class already closed; no transitive G9, bare-ID, proof-history, hidden-dependence, or mode defect allowed | Clause-by-clause exact-object transfer; all residuals zero | Dependency-checked conjunction, no new absorption | Earlier named mechanisms and exact wrappers | Final theorem statement | valid architecture; named assembly proof pending |

No exported interface relies on a transformed, weighted, preconditioned, whitened, population, or surrogate object. The only normalization is the target-defined \(\gamma_F=F/\lVert F\rVert _2\), and G8 proves exact same-target radial cancellation. Every feasibility row has a literal raw-control path and no uncontrolled residual class.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Named **Static Coefficient-Height Certificate Proposition**: anchor nonvanishing and \(\sup_\Theta\lVert B\rVert _{\mathrm{op}}\leq\widehat\Lambda_{B,T}\) | G1 / `step_001`, direct primitive coefficient evaluation | G2 / `step_002`; G3 / `step_003`; G6 / `step_006`; named final assembly in G12 / `step_012` | Four stable primitives -> named G1 proposition -> each named consumer | derived | valid architecture; source convention, raw path, boundaries, and consumers exposed; fresh proof pending |
| Named **Homogeneous Projective Certificate Proposition**: exact projector identity and \(\Gamma_{\mathrm{proj}}\leq\widehat\Lambda\) | G1 / `step_001`, direct normalized-vector derivation | G8 / `step_008`; G11 / `step_011`; G12 / `step_012` | Primitive closure plus G1 static certificate -> named homogeneous proposition -> named G8/G11/G12 consumers | derived | valid; target normalization is exact and radial/object residual is zero |
| Named **Persistent-Root Nullity Lemma** | G2 / `step_002`, anchor plus full joint absolute continuity | G3 / `step_003`; final degenerate-zero clause lineage in G12 | Named G1 anchor output -> named G2 lemma -> named G3 theorem -> G12 | derived | valid; properness and probability-zero transfer use the same coefficient space and law |
| Named **Exhausted Affine Pivot-Sweep Theorem**, including indicator and dropped-indicator forms | G3 / `step_003`, current-notation area formula, G1, G2 | G4 / `step_004`; complete named G10 wrapper / `step_010`; equivalent chart clause in G12 / `step_012` | Named G1/G2 outputs -> finite exhausted charts -> monotone G3 theorem -> named consumers | derived | valid; no missing dependency, pivot margin, or persistent-root bridge |
| Named **Chart-To-Section Normal-Velocity Proposition** and first coordinate-free swept-area inequality | G4 / `step_004`, exact chart/section identities plus named G3 theorem | G7 / `step_007`; G8 / `step_008`; affine integral clause in G12 | Named G3 theorem -> named G4 proposition -> named G7/G8 outputs -> G12 | derived | valid; fixed-section target, Hausdorff metric, and density are identical; residual zero |
| Named **Translated Cube-Section Proposition** | G5 / `step_005`, Brunn--Minkowski wrapper plus Ball | G7 / `step_007`; G8 / `step_008` | Primitive cube geometry -> named G5 proposition -> named G7/G8 results | derived | valid; Ball scaling and translated same-normal bridge are explicit; Ball nonoutputs recorded |
| Named **Affine Root-Section Velocity Lemma** | G6 / `step_006`, root equation plus G1 matrix certificate | G7 / `step_007` | Primitive root coupling plus named G1 certificate -> named G6 lemma -> named G7 theorem | derived | valid; actual target integrand, exact \((1+NR^2)\) scale, residual zero |
| Named **General Affine Swept-Area Theorem** | G7 / `step_007`, named G4-G6 outputs | G12 / `step_012` final affine probability and \(C^{\mathrm{aff}}\) clauses | Named G4/G5/G6 -> named G7 theorem -> named G12 theorem | derived | valid; arbitrary correlation, all-law/all-interval mode, and literal constants travel in the conclusion |
| Named **Affine Zero-Certificate Corollary** | G7 / `step_007`, G1/G2 stationary-source chain | G12 / `step_012`, explicitly by theorem-style name | Named G1 static certificate + named G2 nullity -> named G7 zero corollary -> G12 | derived | valid; zero-height entry trace and law-null conclusion exposed; bare `step_007` is insufficient authority |
| Named **Homogeneous Radial-Cancellation Lemma** | G8 / `step_008`, direct exact orthogonality calculation | Named homogeneous theorem inside G8; G12 / `step_012`, explicitly by theorem-style name | Named G4 sweep interface plus homogeneous root orthogonality -> named cancellation lemma -> named G8 theorem and G12 | derived | valid; exact same-target radial residual zero; bare `step_008` is insufficient authority |
| Named **Homogeneous Projective Sweep Theorem** | G8 / `step_008`, named G1/G4/G5 outputs and cancellation lemma | G11 / `step_011`; G12 / `step_012` final homogeneous/capacity clauses | Named G1/G4/G5 + named radial lemma -> named G8 theorem -> named G11/G12 | derived | valid; literal \(A\sqrt{N/2}\) coefficient and stationary branch included |
| Named **Augmented Monomial Presentation And Shift-Certificate Proposition** | G9 / `step_009`, direct \(q=0\) monomial derivation | Complete named G10 wrapper / `step_010` only | Primitive monic data -> named G9 presentation proposition -> named G10 wrapper | derived | valid; exact tuple, \(q=M=m=0\), \(\Delta=N=d\), \(A\), matrix, height, and deterministic leader exposed |
| Named **Monic Pivot-Velocity Proposition** | G9 / `step_009`, direct chart solution/differentiation | Complete named G10 wrapper / `step_010` only | Primitive monic data -> named G9 pivot proposition -> named G10 wrapper | derived | valid; both pivots/maps/velocities, negative-power control, \(d=1\), and boundaries exposed |
| Named **Complete Affine-Monic Sweep Wrapper**: full deterministic package plus exact probability inequality | G10 / `step_010`, named G3 theorem plus both named G9 propositions | G12 / `step_012` for every monic presentation, certificate, pivot, deterministic-leading-coefficient, law-scope, and probability clause | Named G3 theorem + named G9 propositions -> one complete named G10 wrapper -> named G12 theorem | derived | valid repaired flow; G10 directly re-exports every required clause, and G12 has no transitive G9 consumption |
| Named **Counter-Example 1 Scale Proposition** | G11 / `step_011`, direct example plus named G8 theorem | G12 / `step_012` final scale audit | Named G8 theorem plus direct matrix/curve/wedge calculation -> named G11 proposition -> G12 | derived | valid; upper \(1/\delta\), exact probability \(\epsilon/(4\delta)\), and lower \(1/(4\delta)\) retained |
| Named **Anchored Derivative-Closure Coefficient-Sweep Theorem** | G12 / `step_012`, named outputs from G1, G3, G7, G8, G10, G11 | Final theorem statement and later proof assembly after accepted step reviews | Actual named direct dependencies -> named G12 theorem; no bare-ID or proof-history authority | derived | valid dependency architecture; proof pending, and every consumed named result must appear in statement/proof basis |

Every theorem-facing generated output has a legal earlier producer and a dependency path to every consumer. The repaired monic flow is specifically named G9 propositions -> one complete named G10 wrapper -> named G12 theorem. G12 directly consumes the named G7 zero-certificate result, the named G8 radial-cancellation result, and the complete named G10 wrapper. Step IDs in this table are audit metadata; only the future theorem-style statements and proofs can be proof authority.

## Early Obstruction And Repair Plausibility

- **Contract contradiction screen:** None found. The attempted claim reproduces the unconditional exact goal, all four stable primitive assumptions, arbitrary coefficient correlation, deterministic affine offset, ordinary probability, Euclidean conventions, all-law/all-positive-length-interval scope, literal constants, deterministic monic leading coefficient, and Counter-example 1 scale. No clause requires a new primitive assumption or a weakened conclusion.
- **Theorem-critical mechanism screen:** Passed at diagnostic granularity for G1-G12. Nonvanishing comes from the literal anchor; matrix/projective rates come from the exact derivative-closure identity; persistent roots are controlled by properness plus absolute continuity; G3 has the actual determinant and a monotone exhaustion; G4 is an equality; G5 has a source-adequate central cap and proved translated bridge; G6 uses the root equation on the actual section; G8 has exact radial cancellation; G9 has two explicit nonzero pivots; G10 has a finite partition ledger; G11 has an exact wedge. No mechanism is only a future-step label.
- **Residual-to-target screen:** Passed. No population, reference, baseline surrogate, transformed metric, weighted object, or singular coefficient vector is substituted. The chart outputs the actual coefficient vector; G4 maps bijectively to the actual section; \(\gamma_F\) is the target-defined normalization and radial motion cancels exactly; the monic tuple equals the actual polynomial with the deterministic leader external; Counter-example 1 uses the exact law and interval. All residuals are zero at the required target scales.
- **Exported-interface screen:** Passed. Every output row states raw controls, defect split, exact dominance/equality, margin source, and consumers. In particular, no parameter is asked to control an unrelated fixed or persistent defect. G10's conclusion, rather than transitive ancestry, contains all format, matrix, certificate, pivot, velocity, law, dimension, deterministic-leading-coefficient, and probability clauses needed by G12.
- **Generated-condition provenance screen:** Passed. Nonvanishing, nullity, chart coverage, coordinate-free sweep, section size, velocity, rates, monic package, and scale audit are derived outputs. The finite pivot margin \(1/n\) is a local exhaustion condition removed before downstream consumption. No final theorem assumes an event, regularity regime, or generated invariant.
- **Scope-accumulation screen:** Passed. G3 uses the nonnegative monotone relation \(J_{j,n}\uparrow J_j\); G7 and G8 use deterministic interval budgets; G9-G10 use a two-cell finite ledger. There is no persistent, one-sided, nondecaying, or adversarial-sign additive defect. The law and interval suprema consume a deterministic bound already valid for each pair.
- **Noncircularity screen:** Passed. The anchor/coefficient list precede G1; G1 precedes G2/G3/G6/G8; G2 precedes G3; G3 precedes G4 and G10; G5 and G9 are independent earlier sources; every specialization precedes G12. Neither a root-probability conclusion nor final theorem is used to establish a producer.
- **Entry and boundary screen:** Passed for \(N=1\), \(q=0\), \(m=0\), \(\widehat\Lambda=0\), empty sections/cells, near-zero pivots, tangent and multiple roots, endpoints, stationary projective curves, \(d=1\), \(d=2\), \(\theta=0\), \(\lvert \theta\rvert =1\), arbitrary bounded monic interval location, \(\epsilon=\delta\), \(\epsilon\downarrow0\), and coefficient axes/wedge boundaries. The anchor or prescribed monic pivot is active before first chart consumption; zero-height/stationary cases reduce to fixed law-null hyperplanes; Counter-example speed is active at \(\theta=0\).
- **Citation/source screen:** No theorem-critical unknown label or source-shape mismatch remains. Ball's theorem has a stable paper/DOI and a limited central-section role; the Euclidean area formula is restated in current notation; Edelman--Kostlan and Balcan--Dick--Pegden are cross-check/lineage sources with explicit nonoutputs. Local proofs must still verify the exact source statements and hypotheses, which is `step-local` work under unchanged interfaces.
- **Dependence and mode screen:** Passed. There is no hidden constant, confidence parameter, probability conversion, independence assumption, or scope upgrade. Each public constant follows from a displayed equality or inequality. The additional \(q,M,\Delta\) dependence is degree zero only after fixing the supplied certificate, exactly as the goal requires.
- **Baseline invariance screen:** Passed. The complete G10 wrapper retains \(q=M=m=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), the exact shift entries, exact height, both pivots and velocities, deterministic leader, arbitrary correlation, and exact probability coefficient. G11 retains both the \(1/\delta\) upper scale and exact \(1/(4\delta)\) lower ratio. Neither is replaced by a coarse affine, homogeneous, stopped, conditional, or remainder-only surrogate.
- **Same-setting repair plausibility:** No repair is presently indicated. If a local derivation later fails despite the exposed interfaces, its fresh step review must identify whether the failure is genuinely local or reveals new sketch evidence. This global diagnostic itself finds no `sketch/interface defect` and no `idea/theorem-contract defect`; it therefore does not route to sketch repair.
- **Candidate idea-level evidence:** None. No allowed null or boundary regime leaves an inactive mechanism while an inseparable target conclusion remains false, and no current obligation requires changing a primitive assumption, procedure, theorem scope/mode/metric, exposed dependence, success criterion, mechanism source, or conclusion.

## Global Gaps And Hard Steps

There is no global dependency, interface, assumption-provenance, baseline, quantitative, scope, or theorem-contract blocker. The status is nevertheless `PARTIAL_BLOCKED` because the following fresh attempt-2 step-local proofs and named outputs do not yet exist as accepted proof evidence.

| Step ID | Locality | Required local proof units | Existing mechanism witness and source | Boundary/null burden | Smallest proof-stage action |
| ------- | -------- | -------------------------- | ------------------------------------- | -------------------- | --------------------------- |
| `step_001` | `step-local` | Lemma: entrywise coefficient evaluation; proposition: operator/Frobenius certificate; proposition: homogeneous block and projector identity | Primitive anchor, coefficient list, and exact closure identity; structural lower/upper comparison | \(q=0,m=0,N=1,\widehat\Lambda=0\), endpoints | Fresh `/proof-step step_001`, then review |
| `step_002` | `step-local` | Lemma: affine-locus structure/properness; corollary: full-density nullity | Anchor translation and full joint absolute continuity; algebraic coupling | Empty/nonempty proper locus, \(N=1\), constant features | Fresh `/proof-step step_002`, then review |
| `step_003` | `step-local` | Lemma: incidence-event measurability; lemma: Lipschitz chart on each exhaustion; current-notation area-formula proposition; lemma: determinant/event coverage; proposition: density/multiplicity bound; monotone-limit assembly | Nonzero pivot, exact determinant, G2 nullity, density cap, nonnegative monotone integral; stopping/conditioning plus monotone potential | Near-zero pivots, tangencies, multiple roots, endpoints, persistent roots, \(N=1\), empty cells | Prioritize fresh `/proof-step step_003`, then review, after accepted dependencies |
| `step_004` | `step-local` | Lemma: fixed-section bijection/Jacobian; lemma: chart derivative; proposition: exact density equality and first affine integral | Same pivot cancels both Jacobians; direct Euclidean algebraic coupling | \(N=1\), empty section, zero velocity, \(F_0=0\) | Fresh `/proof-step step_004`, then review |
| `step_005` | `step-local` | Lemma: even-concavity translated maximality; cited-result application: Ball with scaling; proposition: combined translated cap | Symmetry/convexity plus Ball central cap; structural comparison | \(N=1\), empty/central/coordinate/diagonal sections | Fresh `/proof-step step_005`, then review |
| `step_006` | `step-local` | Lemma: root-section offset/amplitude coupling; lemma: augmented derivative Cauchy--Schwarz; proposition: exact velocity factor | Root equation, cube support, closure, G1 certificate; algebraic coupling | \(N=1,F_0=0,a=0\), empty section, zero height | Fresh `/proof-step step_006`, then review |
| `step_007` | `step-local` | Theorem: general affine sweep/rate/capacity; separately named corollary: zero certificate; exact constant/mode audit | G4-G6 and G1/G2 zero chain; interval budget | \(N=1\), zero height, arbitrarily short positive intervals | Fresh `/proof-step step_007`, then review |
| `step_008` | `step-local` | Lemma: exact radial cancellation; theorem: homogeneous probability/capacity rate; stationary-curve corollary | Root-section orthogonality, G1/G4/G5; signed cancellation and interval budget | \(N=1,\Gamma=0\), radial rescaling, \(a=0\), zero height | Fresh `/proof-step step_008`, then review |
| `step_009` | `step-local` | Proposition: monomial presentation/shift certificate; proposition: two legal pivots/maps/velocities; finite-sum and negative-power lemmas | Explicit monomial algebra, anchor/outer pivot, finite two-cell ledger | \(d=1,d=2,\theta=0,\lvert \theta\rvert =1\), empty cells, arbitrary interval location | Fresh `/proof-step step_009`, then review |
| `step_010` | `step-local` | One theorem: complete current-notation affine-monic wrapper; proof must re-export all G9 clauses and apply named G3 theorem; beta-volume/partition assembly | Named G3 and G9 outputs, exact \(V_d\), finite two-cell ledger | \(d=1\), zero-dimensional beta volume, empty cells, \(\lvert \theta\rvert =1\), arbitrary correlation | Fresh `/proof-step step_010`, then review |
| `step_011` | `step-local` | Proposition: matrix/height and projective speed; lemma: two-wedge event equivalence/area; proposition: exact upper/lower scale audit | Literal \(1/\delta\) entry, direct curve differentiation, named G8 theorem | \(\epsilon=\delta\), \(\epsilon\downarrow0\), \(\delta=1\), axes/boundaries | Fresh `/proof-step step_011`, then review |
| `step_012` | `step-local` | Theorem statement and proof-basis table; clause-by-clause conjunction of named results; constant, quantifier, mode, and baseline audit | Acyclic named outputs from G1, G3, G7, G8, G10, G11 | All prior boundaries, especially zero certificate, stationary cancellation, \(d=1\), and Counter-example scale | Fresh `/proof-step step_012`, then review, only after all direct named dependencies are accepted |

The highest-risk local bottleneck is `step_003`, because it carries the exact measurable-domain area-formula wrapper, exhaustion, multiplicity, and event-coverage logic. The most interface-sensitive later unit is `step_010`, whose named conclusion must contain the complete monic package, and the most assembly-sensitive unit is `step_012`, which must cite actual theorem-style names, including the G7 zero certificate, G8 radial cancellation, and full G10 wrapper. These are proof burdens under fixed interfaces, not current sketch blockers.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, generated-output flow, constant, mode, metric, or conclusion. Every provisional theorem-style name and derivation above must be independently proved in a fresh attempt-2 `/proof-step` artifact and accepted by a matching `/proof-step-review` before downstream proof assembly may use it. The controller must also obtain a current accepted `/global-proof-review` before this diagnostic may guide downstream step work.

## Suggested Routing

None

Continue to fresh attempt-2 step proofs in accepted dependency order. As diagnostic guidance, prioritize `/proof-step step_003` once its named G1/G2 dependencies are accepted, then prioritize the repaired presentation flow `/proof-step step_009` -> `/proof-step step_010`; run `/proof-step step_012` only after all six direct named producer interfaces are accepted.
