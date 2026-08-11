# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_1/idea_1`
- Sketch attempt: 1
- Global producer attempt under this sketch: 1
- Goal mode: exact-goal mode
- Reviewed setting: `setting.md`, SHA-256 `14002ecb886ea74ee06ba8f73dc2991d88e5b954eedd64a2bf51d0208570f461`
- Reviewed sketch: `proof_sketch.md`, SHA-256 `d750331496b2ab859ca04f30840452e5878b62d72dcc766bdfd239c7a0c663c1`
- Reviewed sketch review: `proof_sketch_review.md`, SHA-256 `90a8576cbd74cc52ddf906d11330294bf406b74d0289bf38f52dbed2824e17b2`
- Review confirmation: the current review records `Sketch Review Status = ACCEPTED`, viability score 9, `Smallest Retry Target = None`, and `Retry Mode = none` for sketch attempt 1.
- Tracker confirmation: `proof_tracker.md` contains the running global row with sketch attempt 1 and global unit attempt 1.

## Status

COMPLETE_DRAFT

The theorem-level architecture and all theorem-critical derivational interfaces close under the accepted sketch. No global, sketch, or theorem-contract repair is indicated. The seven independently reviewable proof artifacts assigned to `step_001` through `step_007` remain mandatory downstream evidence, but they are not unresolved theorem-level links. Every obligation below has a valid `step-local` realization under the unchanged claim, dependency, assumption, output, flow, scope, rate, mechanism, and boundary interfaces.

## Attempted Theorem Claim

**Goal mode.** Exact-goal mode.

**Progress type and source scope.** The attempted result retains the branch label `material_partial`. It is a one-way coefficient-side sufficient theorem for source part (a). The necessary direction and the indexed uniform polynomial characterization in source part (b) remain open. No converse, simplicity, root-separation, transversality, learner, online algorithm, or uniform polynomial-in-\((d,R)\) conclusion is asserted.

**Theorem-facing assumptions.** Fix \(d\geq 1\), \(R>0\), a compact \(\Theta\subseteq\mathbb R\), and a nonempty class \(\mathcal D\) of Borel laws on \([-R,R]^d\). Assume only the primitive condition `assump:averaged-intercept-density`: each law has the stated jointly measurable conditional intercept density, its measurable slice cap \(K_\mu\), and
\[
\bar\kappa_{\mathcal D}
=\sup_{\mu\in\mathcal D}\int K_\mu(\beta)\,\pi_\mu(d\beta)<\infty.
\]
The random-intercept clause separately invokes the optional primitive construction `assump:random-intercept-witness`. The bounded-joint-density premise used in the final comparison is not a main-theorem assumption.

**Attempted conclusion and scope.** With
\[
L=L_{d,R,\Theta}
=\sup_{\alpha\in[-R,R]^d,\,\theta\in\Theta}
\lvert\partial_\theta\phi_\alpha(\theta)\rvert
\le dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1},
\qquad B=\max\{1,\sup_{\theta\in\Theta}\lvert\theta\rvert\},
\]
prove simultaneously for every \(\mu\in\mathcal D\) and every positive-length interval \(I\subseteq\Theta\) that
\[
\Pr_\mu(Z_\alpha\cap I\ne\varnothing)
\le L\lvert I\rvert\int K_\mu\,d\pi_\mu
\le \bar\kappa_{\mathcal D}L\lvert I\rvert,
\qquad
C_{\mathcal D}\le \bar\kappa_{\mathcal D}L<\infty.
\]
Under `assump:random-intercept-witness`, prove the exact conditional density and cap
\[
f_\mu(a_0\mid\beta)
=\frac{\mathbf 1\{\lvert a_0-G_\mu(\beta)\rvert\le\rho_\mu(\beta)\}}
{2\rho_\mu(\beta)},
\qquad K_\mu(\beta)=\frac1{2\rho_\mu(\beta)},
\]
for \(\pi_\mu\)-almost every \(\beta\), and
\[
\bar\kappa_{\mathcal D_{\mathrm{RI}}}\le \frac12M_{\mathrm{RI}},
\qquad C_{\mathcal D_{\mathrm{RI}}}\le \frac12L M_{\mathrm{RI}},
\]
including the exact fixed-width specialization.

For every \(d\ge3\), \(R>0\), and \(q\in(0,1)\), prove all stated properties of \(\mu_q\): cube support, exact sheet support, almost-sure positive width, infinite essential slice cap, exact averaged cap, and
\[
\int K_{\mu_q}\,d\pi_{\mu_q}=\frac1{R(1-q)},
\qquad C_{\{\mu_q\}}\le\frac{L}{R(1-q)}.
\]
Also prove nonmembership in the cited full-column-rank bounded-density affine-latent input class using both required facts: the support has affine hull dimension three, and it has zero three-dimensional measure within that hull.

**Quantitative mode.** All probability bounds are deterministic inequalities between exact probabilities. There is no time horizon, confidence parameter, asymptotic probability conversion, or hidden constant. The only limit is monotone removal of a cutoff in the nonnegative integral \(\int_0^1t^{-q}dt\). The norm is ordinary absolute value for polynomial evaluation and derivatives, Lebesgue interval length for \(I\), and the induced three-dimensional Hausdorff/Lebesgue measure on the affine hull for the structural comparison.

## Whole-Proof Draft

Write
\[
c_I(\beta):=m_I^d+\sum_{k=1}^{d-1}\alpha_km_I^k,
\qquad
J_I(\beta):=
\left[-c_I(\beta)-\frac{L\lvert I\rvert}{2},
-c_I(\beta)+\frac{L\lvert I\rvert}{2}\right].
\]
For \(d=1\), the sum is empty and \(c_I=m_I\). The proof follows seven dependency-ordered blocks.

### Block G1: deterministic midpoint localization and measurable root event (`step_001`)

For every coefficient vector in the cube and every \(\theta\in\Theta\),
\[
\lvert\partial_\theta\phi_\alpha(\theta)\rvert
\le d\lvert\theta\rvert^{d-1}
+\sum_{k=1}^{d-1}k\lvert\alpha_k\rvert\lvert\theta\rvert^{k-1}
\le dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}.
\]
Thus the finite constant \(L\) is valid uniformly over every later law and interval.

Fix a positive-length interval \(I\subseteq\Theta\). If \(\theta_*\in I\) is any zero, then the segment joining \(\theta_*\) to the midpoint \(m_I\) lies in \(I\), regardless of whether either endpoint of \(I\) is included. The mean-value inequality gives
\[
\lvert\phi_\alpha(m_I)\rvert
=\lvert\phi_\alpha(m_I)-\phi_\alpha(\theta_*)\rvert
\le L\lvert m_I-\theta_*\rvert
\le \frac{L\lvert I\rvert}{2}.
\]
Since \(\phi_\alpha(m_I)=\alpha_0+c_I(\beta)\), this proves the exact set inclusion
\[
\{Z_\alpha\cap I\ne\varnothing\}
\subseteq \{\alpha_0\in J_I(\beta)\},
\qquad \lvert J_I(\beta)\rvert=L\lvert I\rvert.
\tag{G1}
\]
No root is selected measurably. The root event itself is Borel: write the bounded interval \(I\) as an increasing countable union of compact intervals \(I_n\) respecting its endpoint convention. For nonempty compact \(I_n\), the map
\(alpha\mapsto\min_{\theta\in I_n}\lvert\phi_\alpha(\theta)\rvert\)
is continuous, so the event that \(\phi_\alpha\) has a zero in \(I_n\) is closed; the event for \(I\) is their countable union. The slab event is jointly Borel because \(c_I\) is polynomial in \(\beta\). This covers tangent and multiple roots because only an upper derivative bound is used. At \(d=1\), \(\phi(\theta)=\theta+\alpha_0\) and \(L=1\).

### Block G2: conditional disintegration and the averaged-envelope theorem (`step_002`)

Fix \(\mu\in\mathcal D\) and \(I\). By (G1), the jointly measurable conditional density in `assump:averaged-intercept-density`, and Tonelli for the nonnegative integrand,
\[
\begin{aligned}
\Pr_\mu(Z_\alpha\cap I\ne\varnothing)
&\le \int\!\int
\mathbf 1\{a_0\in J_I(\beta)\}f_\mu(a_0\mid\beta)
\,da_0\,\pi_\mu(d\beta)\\
&\le \int K_\mu(\beta)\lvert J_I(\beta)\rvert\,\pi_\mu(d\beta)\\
&=L\lvert I\rvert\int K_\mu(\beta)\,\pi_\mu(d\beta)\\
&\le L\lvert I\rvert\bar\kappa_{\mathcal D}.
\end{aligned}
\tag{G2}
\]
The essential-supremum inequality is needed only for \(\pi_\mu\)-almost every fiber. A version on an exceptional fiber may be set to \(+\infty\); finite \(\int K_\mu d\pi_\mu\) makes that exception null and supplies the one-shot finite budget. No density, independence, or pointwise cap for \(\beta\) is used. Dividing (G2) by \(\lvert I\rvert>0\), then taking first the interval supremum and then the law supremum exactly as in the definition, proves
\(C_{\mathcal D}\le L\bar\kappa_{\mathcal D}\).

### Block G3: random-intercept and fixed-width certificate (`step_003`)

Condition on a fiber \(\beta\) for which \(\rho_\mu(\beta)>0\). Independence of \(U_\mu\) and \(\beta\), followed by the affine substitution
\(a_0=G_\mu(\beta)+\rho_\mu(\beta)u\), gives for every bounded Borel test function \(h\)
\[
\mathbb E[h(\alpha_0)\mid\beta]
=\frac12\int_{-1}^{1}h(G_\mu(\beta)+\rho_\mu(\beta)u)\,du
=\int h(a_0)f_\mu(a_0\mid\beta)\,da_0,
\]
with the density displayed in the attempted claim. Joint measurability follows from measurability of \(G_\mu,\rho_\mu\), and the support inequality \(\lvert G_\mu\rvert+\rho_\mu\le R\) places every conditional interval inside \([-R,R]\). Its Lebesgue essential supremum is exactly
\(K_\mu(\beta)=1/(2\rho_\mu(\beta))\). Consequently,
\[
\bar\kappa_{\mathcal D_{\mathrm{RI}}}
=\sup_{\mu\in\mathcal D_{\mathrm{RI}}}
\frac12\int\rho_\mu(\beta)^{-1}\,\pi_\mu(d\beta)
\le\frac12M_{\mathrm{RI}}.
\tag{G3}
\]
On the measurable \(\pi_\mu\)-null set where \(\rho_\mu=0\), define the conditional-density version to be any fixed measurable probability density on \([-R,R]\), for example \(\mathbf 1_{[-R,R]}/(2R)\). Changing a regular conditional kernel on this marginal-null set preserves the kernel identity and makes the displayed joint version globally defined; neither \(K\)'s beta-a.e. formula nor its integral changes.

Substitution into (G2) gives the same all-law, all-interval conclusion with factor \(M_{\mathrm{RI}}/2\). If \(\rho_\mu=r_\mu>0\) almost surely, then the cap is exactly \(1/(2r_\mu)\); a class of such members is covered precisely when the declared class-uniform reciprocal-width budget is finite. Singular or dependent \(\pi_\mu\) creates no additional term.

### Block G4: exact support and same-target conditioning for \(\mu_q\) (`step_004`)

Let
\[
F(z,u)=(\rho_q(z)u,z,z^2/R,0,\ldots,0).
\]
The product law of \((Z,U)\) has full support on the compact rectangle
\([-R/2,R/2]\times[-1,1]\), and \(F\) is continuous. Therefore the support of its pushforward is exactly
\[
S_q=F([-R/2,R/2]\times[-1,1])
=\{(a_0,z,z^2/R,0,\ldots,0):
\lvert z\rvert\le R/2,\ \lvert a_0\rvert\le\rho_q(z)\}.
\tag{G4a}
\]
Indeed, containment is immediate, and every neighborhood of any image point has a preimage containing a nonempty relatively open subset of the latent rectangle and hence positive product probability.

The coordinate bounds
\[
\lvert\alpha_0\rvert\le R/2,
\quad \lvert\alpha_1\rvert\le R/2,
\quad 0\le\alpha_2=Z^2/R\le R/4
\]
and zero remaining coordinates give \(S_q\subset[-R,R]^d\). Moreover \(\rho_q(z)=0\) exactly at \(z=0\), and the uniform \(Z\) has no atom there, so \(\rho_q(Z)>0\) almost surely. Since the first coordinate of \(\beta_q(Z)\) is \(Z\),
\(\sigma(\beta_q(Z))=\sigma(Z)\). Thus conditioning on the actual higher-coefficient vector is exactly conditioning on \(Z\), not on a surrogate or coarser reference object. For \(z\ne0\), (G3)'s conditional calculation yields
\[
K_{\mu_q}(\beta_q(z))
=\frac1{2\rho_q(z)}
=\frac1{R(2\lvert z\rvert/R)^q}.
\tag{G4b}
\]
The degenerate conditional law at \(z=0\) lies on a \(\pi_{\mu_q}\)-null fiber and is not used as a Lebesgue-density fiber.

### Block G5: unbounded slices, finite mean cap, and the exact witness rate (`step_005`)

For every finite \(M\), (G4b) exceeds \(M\) on a sufficiently small punctured neighborhood of zero, and that neighborhood has positive \(Z\)-probability. Hence
\(\operatorname*{ess\,sup}_{\beta\sim\pi_{\mu_q}}K_{\mu_q}(\beta)=\infty\).
On the other hand, using the uniform density \(1/R\), symmetry, and
\(t=2z/R\),
\[
\begin{aligned}
\int K_{\mu_q}\,d\pi_{\mu_q}
&=\frac2R\int_0^{R/2}
\frac{dz}{R(2z/R)^q}\\
&=\frac1R\int_0^1t^{-q}\,dt
=\frac1{R(1-q)}.
\end{aligned}
\tag{G5}
\]
The cutoff contribution on \(0<t<\delta\) is
\(\delta^{1-q}/[R(1-q)]\), so monotone cutoff removal has a finite budget and zero residual exactly when \(q<1\). Applying (G2) to the singleton class gives
\[
C_{\{\mu_q\}}\le\frac{L}{R(1-q)}.
\]
The exclusions \(q=0\) and \(q=1\) are substantive boundary checks: at \(q=0\) the cap is not unbounded, while at \(q=1\) its mean diverges.

### Block G6: both affine-latent exclusion arguments (`step_006`)

Embed the lower coefficient vector in the three-coordinate subspace spanned by the intercept, \(\alpha_1\), and \(\alpha_2\); adding the fixed monic leading coefficient is an affine embedding and changes neither affine dimension nor within-hull Hausdorff-nullity.

First, the projection of \(S_q\) onto \((\alpha_1,\alpha_2)\) contains
\[
(-R/2,R/4),\qquad(0,0),\qquad(R/2,R/4),
\]
which are noncollinear. Hence that projection has two-dimensional affine hull. At \(z=R/2\), the two support points with intercepts \(a_0=R/2\) and \(a_0=-R/2\) differ by \(R e_0\), a direction killed by the projection and independent of the two projected affine directions. Since all remaining coordinates vanish,
\[
\dim\operatorname{aff}(S_q)=3.
\tag{G6a}
\]
This is the first required exclusion argument: equality in law with a full-column-rank affine image of a \(k\)-dimensional Lebesgue-absolutely-continuous latent probability would force \(k=3\). A probability with a \(k\)-dimensional Lebesgue density cannot be supported on a proper affine subspace of \(\mathbb R^k\), and a full-column-rank affine map preserves that affine-hull dimension.

Second, define
\[
D_q=\{(a,z)\in\mathbb R^2:\lvert z\rvert\le R/2,
\ \lvert a\rvert\le\rho_q(z)\},
\qquad T(a,z)=(a,z,z^2/R).
\]
Although \((z,u)\mapsto\rho_q(z)u\) is only Holder at zero when \(q<1\), the map \(T\) is Lipschitz on the bounded set \(D_q\), and \(S_q=T(D_q)\) after adding zero coordinates. Therefore
\[
\mathcal H^3(S_q)=0
\quad\text{inside its three-dimensional affine hull}.
\tag{G6b}
\]
Equivalently, in affine-hull coordinates \((a,z,w)\), the sheet lies in the graph \(w=z^2/R\), so Fubini also gives zero three-dimensional volume. This is the second required exclusion argument, which closes the \(k=3\) loophole left by curvature alone.

The cited source is Balcan--Dick--Pegden, *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Appendix opening affine generalization, cached at `<TEMP_ROOT>/semibandit-audit.YWhVeD/dispersionToolAppendix.tex`. Its theorem statement is at cached lines 4--17; its proof uses
\(\sqrt{\det(A^TA)}(2R)^k\) and a \(k\)-dimensional image at lines 30--33 and 56--59, and the induced within-image density
\(\kappa/\sqrt{\det(A^TA)}\) at lines 96--101. Thus the comparison convention supplies full-column-rank affine volume and absolute continuity with respect to \(k\)-volume in the image. If \(\mu_q\) were such a pushforward, (G6a) would force \(k=3\), while within-image absolute continuity would give \(\mu_q(S_q)=0\) by (G6b), contradicting \(\mu_q(S_q)=1\). Every \(k\ne3\) is already excluded by (G6a). The source's separate no-forced-root premise is a boundary of its root-bound output; it is not needed for the antecedent input-class nonmembership just proved.

### Block G7: exact assembly and baseline reduction (`step_007`)

Blocks G1--G2 prove the general theorem; G3 proves the random-intercept and fixed-width clauses; G4--G5 prove every support, positivity, cap, and quantitative clause for \(\mu_q\); and G6 proves the stated comparison with the affine-latent baseline. Their dependency order is acyclic, and all objects consumed in the final claim are the actual coefficient law, conditional law, support, and root-hitting functional from the setting.

For the optional bounded-joint-density comparison, suppose a law has a Lebesgue density \(h(a_0,\beta)\le\kappa_{\mathrm{joint}}\), and let
\(g(\beta)=\int h(a_0,\beta)\,da_0\). On \(\{g>0\}\), use the actual conditional density \(f=h/g\). Then
\[
g(\beta)K(\beta)
=\operatorname*{ess\,sup}_{a_0}h(a_0,\beta)
\le\kappa_{\mathrm{joint}},
\]
and the set \(\{g=0\}\) is irrelevant under \(\pi(d\beta)=g(\beta)d\beta\). Hence
\[
\int K\,d\pi
=\int_{[-R,R]^{d-1}}g(\beta)K(\beta)\,d\beta
\le\kappa_{\mathrm{joint}}(2R)^{d-1}.
\tag{G7}
\]
For \(d=1\), beta is the one-point marginal, so directly \(f=h\), \(K\le\kappa_{\mathrm{joint}}\), and the exponent-zero volume \((2R)^0\) is one. If \(B=1\),
\[
L\le d+R\sum_{k=1}^{d-1}k
=d+\frac{R d(d-1)}2,
\]
so (G2) and (G7) recover exactly the source monic ambient-volume scale
\[
\kappa_{\mathrm{joint}}(2R)^{d-1}
\left(d+\frac{R d(d-1)}2\right).
\]
This is a baseline-reduction check under an explicitly additional comparison premise, not an added assumption of the new theorem. The affine-latent theorem is likewise unchanged on its own input class.

**Final assembly.** Conjoining G2--G6 and substituting the exact identities from G3 and G5 yields every clause of the attempted theorem with no hidden constant, residual, probability conversion, or quantifier change. The theorem remains `material_partial`: it establishes a broader sufficient direction that permits singular higher-coefficient marginals and unbounded pointwise slice caps, while the necessary direction and the indexed uniform polynomial characterization remain unresolved.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1: midpoint localization and measurability | Produces the exact intercept slab and makes the root event legally probabilistic | `step_001` | Primitive polynomial, cube, compact domain, interval | Basic setup only | None at theorem-diagnostic level; downstream step proof formalizes compact exhaustion and the exact midpoint factor |
| G2: averaged-cap disintegration | Proves R1 and closes the all-law/all-interval main bound | `step_002` | G1 slab; conditional density and cap | `assump:averaged-intercept-density` | None at theorem-diagnostic level; downstream step proof formalizes version/null-fiber and Tonelli details |
| G3: random intercepts | Produces exact density, cap, class envelope, and fixed-width clause | `step_003` | G2 theorem interface; primitive random-intercept data | `assump:random-intercept-witness`; local conditional lemma hypotheses discharged within the block | None at theorem-diagnostic level; downstream step proof certifies conditional-law measurability |
| G4: explicit support/conditioning | Produces exact sheet support, cube support, a.s. positive width, and actual conditional cap | `step_004` | G3 local uniform calculation | Explicit \(d,R,q,Z,U\) construction from the setting | None at theorem-diagnostic level; downstream step proof certifies support and the null fiber |
| G5: singular cap integration | Proves infinite essential cap, exact finite average, and singleton R3 bound | `step_005` | G2 and G4 | Primitive range \(q\in(0,1)\) | None at theorem-diagnostic level; downstream step proof records threshold and cutoff calculations |
| G6: affine-latent exclusion | Establishes structural novelty with both dimension-three and zero-within-hull-volume arguments | `step_006` | G4 exact support; cached affine source convention | No new branch assumption; cited class hypotheses used only for comparison | None at theorem-diagnostic level; downstream step proof formalizes geometry and source mapping |
| G7: exact assembly/baseline | Conjoins every theorem clause and proves bounded-joint-density recovery | `step_007` plus direct assembly | G2--G6; optional comparison density only in baseline paragraph | Main primitive assumptions; optional \(h\le\kappa_{\mathrm{joint}}\) is comparison-local | None at theorem-diagnostic level; downstream step proof certifies assembly and recovery |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Feeds the slab to G2 and the derivative scale to G7 | Derivative bound; Borel root event; jointly measurable slab; endpoint and multiplicity cases | Exact factor \(1/2\) in radius and exact width \(L\lvert I\rvert\) retained |
| `step_002` | G2 | Consumes G1; exports R1 to G3, G5, G7, and the theorem | Disintegration with random interval; essential-supremum fibers; finite one-shot cap budget; suprema order | No pointwise cap or beta density inserted |
| `step_003` | G3 | Consumes G2; exports conditional-uniform identity to G4 and specialization to G7 | Conditional affine substitution; measurable density version; support; fixed-width and class envelope | Exact factor \(1/2\) retained |
| `step_004` | G4 | Consumes G3; exports support/cap to G5 and G6 | Exact pushforward support; coordinate bounds; \(Z\)-from-\(\beta\) bridge; null collapsed fiber | Produced conditional object equals the consumed one |
| `step_005` | G5 | Consumes G2 and G4; exports R3 to G7 | Essential unboundedness on positive-mass neighborhoods; exact improper integral; cutoff removal | Exact \(1/[R(1-q)]\) dependence retained |
| `step_006` | G6 | Consumes G4 and cached source; exports structural comparison to G7 | Noncollinear projection; independent intercept direction; Lipschitz graph nullity; source rank/density mapping | Both affine-hull dimension three and zero \(\mathcal H^3\) are indispensable |
| `step_007` | G7 and final assembly | Consumes G2--G6 | Exact conjunction; optional joint-density ratio; \(d=1\), \(B=1\), and source-scope checks | Preserves `material_partial`; necessary direction and indexed polynomial characterization remain open |

## Dependency And Assumption Audit

The final target is unconditional under the two declared primitive interfaces; no generated condition is promoted to a theorem assumption.

| Condition or object | Provenance classification | Producer or primitive source | Consumers | Audit result |
| --- | --- | --- | --- | --- |
| Fixed \(d,R,\Theta,\mathcal D\), cube support, monic additive-intercept polynomial, and positive-length interval | Primitive condition from the basic setting | `setting.md` basic setup | G1--G2 and G7 | Available before every proof object; no hidden root regularity |
| Jointly measurable conditional density, measurable \(K_\mu\), finite \(\bar\kappa_{\mathcal D}\) | Primitive condition | `assump:averaged-intercept-density` | G2 | Checkable from the coefficient law; it contains no root-event or generated-invariant statement |
| Independent uniform intercept noise, a.s. positive \(\rho\), cube-support inequality, reciprocal-width budget | Primitive condition for the optional constructive class | `assump:random-intercept-witness` | G3 | Used only for \(\mathcal D_{\mathrm{RI}}\), not imposed on general \(\mathcal D\) |
| Positive fiber width in the reusable conditional-uniform calculation | Local conditional hypothesis | G3 local lemma | G3 and, after G4 discharge, the witness | It is discharged by `assump:random-intercept-witness` a.s.; G4 separately discharges it for \(\mu_q\). It does not survive into a public unconditional target |
| Finite derivative envelope, Borel root event, and measurable midpoint slab | Derived output | G1 / `step_001` | G2 and G7 | Legal producer precedes every consumer |
| Per-law inequality and class bound R1 | Derived output | G2 / `step_002` | G3, G5, G7, final theorem | Produced from primitive density data and G1; not assumed |
| Random-intercept density, cap, support, and averaged budget | Derived output | G3 / `step_003` | G4, G7, final theorem | Same conditional object as in the setting; no ambient beta density assumption |
| Exact support, a.s. positive witness width, and actual conditional cap | Derived output | G4 / `step_004` | G5, G6, G7, final theorem | The identity \(\beta_1=Z\) supplies the object-target bridge before consumption |
| Infinite essential cap, exact finite mean cap, and singleton bound | Derived output | G5 / `step_005` | G7, final theorem | Produced before assembly; no cutoff condition remains |
| Three-dimensional affine hull, zero within-hull three-volume, and affine-class nonmembership | Derived output | G6 / `step_006` | G7 and final comparison | Both halves have named sources and are consumed only after G4 support is available |
| Bounded joint density \(h\le\kappa_{\mathrm{joint}}\) | Local comparison premise, not a main-theorem assumption | G7 baseline paragraph | Baseline reduction only | Explicitly scoped to recovery of the old ambient-density scale |
| Exact final theorem and limitation statement | Derived assembly output | G7 / `step_007` | Final theorem | Uses only earlier producers; it does not generate a premise for itself |

No missing derived-condition bridge is visible. The only pending issue is independent proof and review of each assigned local derivation. In particular, there is no good event, recurrence applicability condition, stability condition, basin membership, root simplicity condition, or support condition assumed in the final theorem.

## Citation And Tool Audit

| Source or tool | Current-branch objects and role | Assumptions to discharge | Needed conclusion | Convention, object-target, and boundary check | Affected block / Step ID | Discharge status |
| --- | --- | --- | --- | --- | --- | --- |
| One-dimensional mean-value inequality and derivative triangle bound | \(\phi_\alpha\), root \(\theta_*\), midpoint \(m_I\) | Segment between the two points lies in \(I\subseteq\Theta\); derivative bounded by the same \(L\) | \(\lvert\phi(m_I)-\phi(\theta_*)\rvert\le L\lvert I\rvert/2\) | Exact polynomial and ordinary absolute-value convention; endpoint inclusion and zero derivative at multiple roots do not affect an upper bound | G1 / `step_001` | Direct current-notation path fixed; step proof must formalize it |
| Compact exhaustion and continuity of a parameterized minimum | Coefficient event that \(\phi_\alpha\) has a root in arbitrary interval \(I\) | Bounded interval is sigma-compact; polynomial evaluation continuous jointly; each compact piece nonempty | Borel measurability of the root event | No measurable root selection or projection theorem is consumed; open, closed, and half-open endpoints get explicit exhaustions | G1 / `step_001` | Direct standard-fact path fixed |
| Regular conditional-density disintegration, tower property, and Tonelli | Actual \((\alpha_0,\beta)\) under \(\mu\), random slab \(J_I(\beta)\) | Joint measurability of \(f\), slab indicator, and \(K\); nonnegative integrand; \(f\le K\) a.e. on almost every fiber | Exact double-integral identity and upper bound \(L\lvert I\rvert\int Kd\pi\) | Same beta marginal and actual intercept as `setting.md`; null fibers are not target objects; no probability-mode conversion | G2 / `step_002` | Primitive hypotheses expose a valid local discharge path |
| Conditional affine change of a uniform variable | \(\alpha_0=G(\beta)+\rho(\beta)U\) | \(U\) independent of beta, \(U\sim\mathrm{Unif}[-1,1]\), measurable \(G,\rho\), \(\rho>0\) on consumed fibers | Exact density and \(K=1/(2\rho)\) | Same conditional variable, Lebesgue reference measure, and actual intercept; \(\rho=0\) is excluded a.s. before use | G3 / `step_003`; reused in G4 / `step_004` | Direct current-notation path fixed |
| Support of a continuous pushforward of a full-support compact law | Product latent rectangle and continuous map \(F(z,u)\) | Product uniform law gives positive mass to every nonempty relative open neighborhood; domain compact | \(\operatorname{supp}(F_\#P)=F(\operatorname{supp}P)=S_q\) | Actual coefficient vector is produced; collapse at \(z=0\) remains part of support but is null for conditional density | G4 / `step_004` | Standard-fact path and raw assumptions fixed |
| Positive-neighborhood characterization of essential supremum; monotone convergence; elementary power integral | \(K(\beta_q(z))\) under uniform \(Z\) | Exact G4 cap, \(q\in(0,1)\), density \(1/R\) | Infinite essential cap and \(\int Kd\pi=1/[R(1-q)]\) | Same normalization \(t=2\lvert z\rvert/R\); cutoff residual is explicit; \(q=0,1\) excluded by theorem range | G5 / `step_005` | Direct derivation path fixed |
| Lipschitz images do not increase Hausdorff dimension; alternatively Fubini for a graph | \(D_q\subset\mathbb R^2\), \(T(a,z)=(a,z,z^2/R)\) | \(T\) Lipschitz on bounded \(D_q\) | \(\mathcal H^3(S_q)=0\) inside the three-coordinate affine hull | Uses \((a,z)\), not the non-Lipschitz-at-zero \((z,u)\) parametrization; actual support and actual affine-hull metric | G6 / `step_006` | Standard-tool source convention and raw path fixed |
| Balcan--Dick--Pegden, *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Appendix opening theorem/proof; cached at `<TEMP_ROOT>/semibandit-audit.YWhVeD/dispersionToolAppendix.tex`, lines 4--17, 30--33, 56--59, 96--101 | Comparison class: bounded-density latent \(a\in\mathbb R^k\), affine coefficient map; used only to identify full-rank image-volume and induced-density conventions | Latent law absolutely continuous with bounded density; the proof's \(\det(A^TA)>0\) and image-dimension-\(k\) use full column rank | Full-rank affine pushforward is absolutely continuous with respect to \(k\)-volume in its \(k\)-dimensional affine image | Fixed monic leading coordinate is an affine embedding; coefficient ordering does not alter rank. Known non-output: the source root bound also requires no forced root and supplies constants not used here. The branch uses no converse | G6 / `step_006` | Diagnostic source identity and interface preflight complete; local proof must quote the limited convention accurately |
| Affine-hull linear algebra | Projected parabola points and a nonzero intercept fiber | \(R>0\); support from G4 | \(\dim\operatorname{aff}(S_q)=3\) | Exact support, no approximating manifold or population object; all latent dimensions tested | G6 / `step_006` | Direct derivation path fixed |
| Conditional-density ratio under a bounded joint density | Optional \(h(a_0,\beta)\), marginal \(g\), actual conditional \(f=h/g\) | Joint Lebesgue density on cube; uniform cap \(h\le\kappa_{\mathrm{joint}}\) | \(gK\le\kappa_{\mathrm{joint}}\) and \(\int Kd\pi\le\kappa_{\mathrm{joint}}(2R)^{d-1}\) | Same coefficient ordering and Lebesgue convention; \(g=0\) set is beta-marginal null; \(d=1\) uses zero-dimensional volume one | G7 / `step_007` | Direct baseline bridge fixed |

No cited root-hitting inequality is used to prove the new main bound. The only external theorem-critical citation is used narrowly for the affine-latent input-class convention, and its source identity, stable locator, object mapping, hypotheses, conclusion class, and non-output boundary are exposed above.

## Quantitative Dependence Audit

| Target | Exposed variables and exact dependence | Hidden constants | Fixed quantities and quantifier order | Probability / horizon / norm mode | Auxiliary tolerances and limit handling | Public specialization and baseline obligation | Audit result |
| --- | --- | --- | --- | --- | --- | --- | --- |
| R1 general bound | \(\Pr_\mu(\text{root in }I)\le\bar\kappa_{\mathcal D}L_{d,R,\Theta}\lvert I\rvert\); \(C_{\mathcal D}\le\bar\kappa_{\mathcal D}L_{d,R,\Theta}\); \(L\le dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}\) | None; multiplicative coefficient is exactly one | Fix \(d,R,\Theta,\mathcal D\); prove per \(\mu,I\), divide by positive length, then take the two defining suprema | Exact deterministic probability inequality; no horizon; absolute value and interval-length normalization | None | Preserve bounded-joint-density recovery; no term absorption | Complete at diagnostic granularity |
| R2 random intercept | \(K=1/(2\rho)\), \(\bar\kappa\le M_{\mathrm{RI}}/2\), \(C\le LM_{\mathrm{RI}}/2\); fixed width \(K=1/(2r_\mu)\) | None; factor \(1/2\) exact | Fix the declared class and \(d,R,\Theta\); conditional identity holds beta-a.e.; class supremum occurs in \(M_{\mathrm{RI}}\) | Exact conditional and unconditional laws; no horizon; conditional Lebesgue essential supremum | Null fiber versions only; no numerical tolerance | Exact R1 conclusion, not a conditional or stopped surrogate | Complete at diagnostic granularity |
| R3 heteroscedastic witness | \(K(z)=1/[R(2\lvert z\rvert/R)^q]\), \(\mathbb EK=1/[R(1-q)]\), \(C\le L/[R(1-q)]\), for \(d\ge3,R>0,q\in(0,1)\) | None | Fix \(d,R,q,\Theta\) for singleton law; essential supremum and expectation under actual \(Z\) law | Almost-sure positivity, exact expectation, deterministic root bound; no horizon; cube-coordinate absolute value | Cutoff \(\delta\downarrow0\) is proof-local; residual \(\delta^{1-q}/[R(1-q)]\to0\) | Must retain both structural exclusion arguments; no asymptotic simplification | Complete at diagnostic granularity |
| Joint-density recovery | \(\bar\kappa\le\kappa_{\mathrm{joint}}(2R)^{d-1}\); at \(B=1\), final scale \(\kappa_{\mathrm{joint}}(2R)^{d-1}[d+Rd(d-1)/2]\) | None | Additional comparison premise only; main theorem remains under averaged cap | Exact deterministic comparison; same norm and law/interval scope | None | Recovers the original ambient-volume scale exactly; \(d=1\) gives \((2R)^0=1\) | Baseline invariance preserved |

The setting exposes no confidence parameter, sample size, temporal horizon, stochastic approximation scale, or algorithmic tolerance. No dependence is moved into big-O notation. The possible dependence of \(\bar\kappa_{\mathcal D}\) and \(B^{d-1}\) on an indexed family is left explicit, which is why no uniform polynomial-in-\((d,R)\) statement is made. The source-relevant progress remains `material_partial`, and the necessary direction plus indexed polynomial characterization remain open.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ---------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Measurable midpoint slab of width \(L\lvert I\rvert\) | Deterministic localization; G1 converts roots to an intercept event | Every cube coefficient and every positive-length interval in fixed \(\Theta\) | Root \(\theta_*\) implies \(\lvert\alpha_0+c_I(\beta)\rvert\le L\lvert I\rvert/2\); compact-piece minimum certifies measurability | Monic additive intercept and finite derivative envelope \(L\) | Endpoint exclusion, endpoint-near roots, tangent/multiple roots | One static segment; no repeated defect. The same prior supremum defining \(L\) covers all laws and intervals | Structural upper comparison | Primitive polynomial/cube/domain plus direct mean-value derivation; only positive-length intervals are in scope | Adequate upper-control source: it supplies exactly the derivative upper bound required, not a lower/sign claim | Produced event is the actual intercept slab; residual \(\phi(m_I)-\phi(\theta_*)\) is bounded by the exact consumed radius; no remainder | `step-local` | Primitive setup -> G1 -> G2; no anti-concentration conclusion is assumed | No dynamic entry. At \(d=1\), all endpoint types, and multiple roots, the first and only segment inequality remains active | \(\lvert m_I-\theta_*\rvert\le\lvert I\rvert/2\), with no absorption | \(d,R,\Theta\), cube, interval | \(J_I(\beta)\), Borel root event | Positive length excludes division by zero; arbitrary endpoint convention passes | Without finite \(L\), no target-scale slab could be exported; compactness/cube bounds exclude that case |
| Per-law R1 inequality and class-uniform \(C_{\mathcal D}\) bound | Conditional anti-concentration and theorem closure | One-shot integration for each law/interval, followed by static suprema | \(P\le L\lvert I\rvert\int K_\mu d\pi_\mu\le L\lvert I\rvert\bar\kappa\) | Primitive finite averaged cap, not a pointwise cap | Unbounded slices, null-set infinities, singular/dependent beta | Nonnegative slice charge \(L\lvert I\rvert K_\mu(\beta)\) is accumulated exactly once; its sign is nonnegative and total budget is \(L\lvert I\rvert\int Kd\pi\le L\lvert I\rvert\bar\kappa\) | Summable control and structural upper comparison | `assump:averaged-intercept-density` plus G1; positive-mass nonintegrability is source-excluded | Density upper envelope has exactly the mass-upper-bound content needed for the probability claim; no structural lower claim | Actual conditional law and actual root event; G1 set inclusion and exact interval length leave no surrogate or uncontrolled residual | `step-local` | Coefficient-side cap is defined before root hitting; primitive + G1 -> G2 -> consumers | No recursion. Null fiber may have infinite chosen cap, but has zero charge; \(d=1\) reduces to ordinary density | Inner mass \(\le K\lvert J\rvert\), then finite integral and exact suprema | Joint measurability, finite \(\bar\kappa\) | G1 slab and G2 bound | If an intercept atom or nonintegrable cap occurs on positive beta mass, the finite conclusion can fail; primitive assumption excludes it | Without averaged anti-concentration, a forced root can make \(C\) infinite |
| Random-intercept density/cap and fixed-width specialization | Generated conditional-law, support, and quantitative-specialization interface | Beta-a.e. fibers, then one integral and class supremum | \(f=\mathbf1_{[G-\rho,G+\rho]}/(2\rho)\), \(K=1/(2\rho)\), \(\bar\kappa\le M_{\mathrm{RI}}/2\) | Independence, a.s. positive width, reciprocal-width budget | Widths can approach zero; beta can be singular/dependent | Each reciprocal width is charged once; nonnegative total \((1/2)\int\rho^{-1}d\pi\) is bounded by \(M_{\mathrm{RI}}/2\); no repeated forcing | Summable control and structural upper comparison | `assump:random-intercept-witness`; zero width on positive mass is excluded a.s. and by finite reciprocal budget | Positive width and uniform latent law supply exactly a Lebesgue density and its cap; support inequality supplies cube membership | Produced conditional law is the consumed actual intercept law; affine change has zero residual | `step-local` | Primitive RI representation -> G3 -> G2 interface/final theorem; no root conclusion is assumed | No dynamic update. At a zero-width fiber the source is inactive, but such fibers are null before density consumption; fixed \(r>0\) is active immediately | Exact change of variables and \((1/2)\int\rho^{-1}\le M/2\) | Independence, measurable \(G,\rho\), support inequality, \(M\) | Conditional density, \(K\), class certificate | Positive-mass \(\rho=0\) would fail and is excluded; arbitrary singular beta passes | Without positive width/reciprocal budget, an atom or infinite average cap can invalidate R1 |
| Exact support, cube membership, a.s. positive scale, and actual witness conditional cap | Generated support/nondegeneracy and object-target bridge | Static explicit law for every \(d\ge3,R>0,q\in(0,1)\) | \(S_q=F([-R/2,R/2]\times[-1,1])\); \(\sigma(\beta_q(Z))=\sigma(Z)\); \(K(\beta_q(z))=1/[R(2\lvert z\rvert/R)^q]\) a.e. | Full-support product uniform law; \(\beta_1=Z\); \(R,q>0\) | Fiber collapses at \(z=0\); ambient law is singular | Static support and a.e. conditioning; the only exceptional fiber has exactly zero probability and is never accumulated | Structural lower/upper comparison | Primitive explicit construction; boundary \(z=0\) retained in support but excluded only from the beta-a.e. density identity | Nonatomicity supplies the needed a.s. nondegeneracy; continuous full-support pushforward supplies exact support, not mere containment | Produced beta contains \(Z\) exactly, so the conditional object equals the target; no inverse or population residual | `step-local` | Explicit law -> G4 before G5/G6; support and positivity do not depend on root bounds | No recursion. At \(z=0\), width is zero and target density is not consumed; for every \(z\ne0\), width is positive on the first conditioning step | Coordinate bounds, full-support image equality, and null exceptional fiber | Explicit \(Z,U,\rho_q,\beta_q\) | \(S_q\), positivity, cap formula | \(z=0\), \(\lvert z\rvert=R/2\), and minimal \(d=3\) pass | An atom at zero would destroy the a.e. positive-width interface; uniform \(Z\) excludes it |
| Infinite essential cap with finite exact mean and singleton R3 bound | Structural unboundedness plus quantitative specialization | One improper nonnegative integral for fixed \(d,R,q,\Theta\) | \(K(z)=1/[R(2\lvert z\rvert/R)^q]\); \(\int Kd\pi=R^{-1}\int_0^1t^{-q}dt\) | Positive mass in every neighborhood of zero and margin \(1-q>0\) | Singular forcing \(t^{-q}\) near zero | Accumulated defect is nonnegative \(t^{-q}\); cutoff mass on \((0,\delta)\) is exactly \(\delta^{1-q}/[R(1-q)]\), has controlled sign, finite primitive, and vanishes as \(\delta\downarrow0\) | Monotone potential and summable control | G4 exact cap plus primitive \(q\in(0,1)\); endpoints \(q=0,1\) excluded by declared open range | Neighborhood mass supplies unboundedness; positive integrability margin supplies finite mean at the exact required scale | Computed average is the actual singleton \(\bar\kappa\) consumed by G2; cutoff residual is explicitly zero in the limit | `step-local` | G4 -> direct integral -> G2 -> G5/G7; cap is not defined from root hitting | Static limiting trace: as \(z\to0\), cap grows while cumulative mass remains finite; as \(q\uparrow1\), the budget diverges and the theorem stops | Exact primitive \(t^{1-q}/(1-q)\), then direct substitution into R1 | Uniform \(Z\), \(q\in(0,1)\) | G4 cap, G2 R1 | Every finite threshold is exceeded on positive mass; \(q=0\) loses unboundedness and \(q=1\) loses integrability | Without \(1-q>0\), the finite witness bound is unsupported |
| Affine hull dimension three and zero three-volume in that hull | Structural support/nonmembership claim establishing comparison materiality | Full exact support \(S_q\), all candidate latent dimensions | Noncollinear parabola projection + intercept direction gives dimension 3; \(S_q=T(D_q)\) with Lipschitz \(T:\mathbb R^2\to H\) gives \(\mathcal H^3(S_q)=0\) | Curvature, nonzero intercept fibers, and source full-rank latent absolute continuity | Curvature alone leaves \(k=3\); a singular latent law would evade volume contradiction | Static algebraic/global geometry; no accumulated defect | Algebraic coupling and structural lower/upper comparison | G4 support; cached arXiv:1904.09014 source lines 30--33, 56--59, 96--101. Source no-forced-root premise is outside the consumed representability convention | Projected noncollinearity supplies two independent directions, fiber supplies the third, and latent density supplies within-image absolute continuity: exact match to dimension/nonmembership claim | Actual support is compared under equality in law; fixed monic embedding preserves affine hull and Hausdorff nullity; no approximation residual | `step-local` | G4 support + independent cited convention -> G6 -> G7; nonmembership does not assume new theorem success | No recursion. Collapsed \(z=0\) fiber does not erase nonzero fibers or projected noncollinearity; all \(k\) tested | \(\dim\operatorname{aff}S_q=3\), \(\mathcal H^3(S_q)=0\), while a rank-3 affine density pushforward is \(\mathcal H^3\)-a.c. | \(R>0,d\ge3\), source latent-density/full-rank convention | Exact G4 support | \(d=3\), \(z=0\), \(k<3\), \(k=3\), and \(k>3\) pass; without full rank/a.c. no broader exclusion is claimed | Omitting the zero-volume half leaves the \(k=3\) loophole; omitting dimension leaves other latent dimensions unresolved |
| Bounded-joint-density recovery | Baseline invariance and quantitative specialization | Optional comparison class; one static marginalization | \(gK\le\kappa_{\mathrm{joint}}\), \(\int Kd\pi\le\kappa_{\mathrm{joint}}(2R)^{d-1}\), and at \(B=1\), \(L\le d+Rd(d-1)/2\) | Joint density upper bound and exact cube volume | Zero marginal-density fibers; temptation to add premise to main theorem | One nonnegative marginal integral; exact finite volume budget, no iterative or limiting defect | Structural upper comparison and algebraic coupling | Optional baseline premise; \(g=0\) fibers are source-null; \(d=1\) uses zero-dimensional volume one | Joint density upper bound has exactly the conditional-cap upper content after multiplication by \(g\) | Produced \(f=h/g\) is actual conditional law; no transformed target; equality of scales is exact | `step-local` | Optional premise -> G7 comparison only; never feeds back into G2 main assumptions | Static baseline trace: specialize to a bounded joint density, form \(g\), then derive the original scale before claiming recovery | \(gK=\operatorname*{ess\,sup}h\le\kappa\), integrate over exact cube, evaluate finite sum | Optional \(h\le\kappa_{\mathrm{joint}}\), cube, \(B=1\) for final scale | G2 theorem and G7 comparison | \(g=0\), \(d=1\), and \(B=1\) pass | Without joint density the comparison need not hold, but the new averaged-cap theorem remains valid |
| Exact final theorem and source-scope closure | Static theorem assembly; preserves all quantifiers and limitations | Fixed setting, all laws and intervals; witness range exactly as stated | Direct conjunction of G2--G6; optional G7 recovery remains separate | Earlier generated outputs with legal dependency paths | Converse, necessity, polynomial dependence, simplicity/transversality are outside produced outputs | Finite acyclic DAG; every output consumed once, no persistent or recursive defect | Algebraic coupling | Accepted sketch dependency graph and primitive assumptions; unsupported source directions explicitly excluded | Each theorem clause has a source of the right claim class; no upper bound is used as a lower/support fact | All produced objects are the actual theorem targets; no residual survives assembly | `step-local` | G1 -> G2 -> G3/G4/G5/G6 -> G7; no final conclusion is a producer premise | No dynamic entry. General \(d=1\), witness \(d=3\), singular beta, and unbounded slices have passed producer-level traces before assembly | Exact substitution and conjunction; suprema already closed in G2 | Basic setup and stable assumptions | G2--G6 outputs | Every declared boundary regime is either handled or explicitly outside the theorem range | Omitting any producer would remove a stated clause; assembly cannot manufacture it |

Every accumulated row above gives its signed accumulated term and concrete finite-budget relation. There is no all-time trajectory, recurrence, invariant, stability, or mode-upgrade row. All eight obligations are `step-local`, their producer paths are noncircular, and no certificate row requires a new sketch bridge or theorem-contract change.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Measurable interval \(J_I(\beta)\) of exact length \(L\lvert I\rvert\) containing every root-hitting slice | G1 / `step_001`, direct mean-value derivation | Monic additive intercept, cube support, compact \(\Theta\), midpoint, derivative envelope | Endpoint conventions, endpoint-near roots, and zero derivative at multiple roots produce no extra term; no uncontrolled class | Actual root event is included in actual intercept slab; evaluation residual is at most the exact radius \(L\lvert I\rvert/2\) | Mean-value inequality plus \(\lvert m_I-\theta_*\rvert\le\lvert I\rvert/2\) | Finite primitive \(L\) and positive interval length | G2 / `step_002`; derivative scale also G7 | `valid`; exact branch convention and raw-assumption path exposed; local proof pending |
| Per-law bound and R1 class interface \(C_{\mathcal D}\le L\bar\kappa_{\mathcal D}\) | G2 / `step_002` | G1 slab; jointly measurable actual conditional density; measurable \(K\); finite averaged budget | Unbounded caps controlled by their integral; null-fiber infinities have zero charge; singular beta is irrelevant; positive-mass nonintegrability is excluded | Same law, root event, beta marginal, and interval scale; no transformed object or persistent remainder | Inner mass \(\le K(\beta)L\lvert I\rvert\), then \(\int Kd\pi\le\bar\kappa\), division by positive length, exact suprema | `assump:averaged-intercept-density` supplies the finite budget | G3, G5, G7, final theorem | `valid`; every defect class has a source or declared exclusion; local proof pending |
| Random-intercept density, \(K=1/(2\rho)\), \(\bar\kappa\le M_{\mathrm{RI}}/2\), and fixed-width clause | G3 / `step_003` | Independent uniform \(U\), measurable \(G,\rho\), a.s. positive width, support inequality, reciprocal budget | Small widths are controlled only in average; beta singularity/dependence needs no control; positive-mass zero width is source-excluded | Produced conditional distribution is the actual intercept law given actual beta; affine substitution has zero residual | Exact change of variables and \((1/2)\int\rho^{-1}d\pi\le M/2\) | Positive width and primitive finite reciprocal-width budget | G4, G7, final theorem; G2 supplies conclusion | `valid`; source convention and object-target identity exposed; local proof pending |
| Exact witness cube/sheet support, a.s. positive width, and cap formula | G4 / `step_004` | Explicit uniform \(Z,U\), continuous \(F\), \(R,q>0\), identity \(\beta_1=Z\), G3 local formula | Collapsed \(z=0\) fiber is null for density but retained in topological support; ambient singularity is permitted | Conditioning on beta equals conditioning on \(Z\); actual support is exported, not an enclosure or population surrogate | Continuous full-support pushforward, coordinate inequalities, \(P(Z=0)=0\), then exact conditional substitution | Nonatomic uniform \(Z\) and strict primitive range | G5, G6, G7, final theorem | `valid`; same-target bridge and boundary handling exposed; local proof pending |
| Infinite essential cap, exact mean \(1/[R(1-q)]\), and singleton root bound | G5 / `step_005` using G2 and G4 | Actual cap formula, uniform density \(1/R\), \(q\in(0,1)\), R1 | Pointwise blowup intentionally uncontrolled; total singular mass controlled exactly; \(q=1\) excluded, \(q=0\) outside unboundedness claim | Computed average is the exact singleton \(\bar\kappa\); cutoff residual is \(\delta^{1-q}/[R(1-q)]\to0\) | Exact power integral and direct R1 substitution | Positive integrability margin \(1-q\) | G7 and final theorem | `valid`; no empirical, fixed, or wrong-scale residual; local proof pending |
| Affine-latent nonmembership certificate | G6 / `step_006`, using G4 and cached arXiv source | Exact support points/fibers; Lipschitz graph map; source full-column-rank image and within-image density convention | Curvature controls dimensions below three; zero \(\mathcal H^3\) controls dimension three; other dimensions fail hull equality. A broader singular-latent class is not claimed | Equality-in-law comparison with actual support; fixed monic affine embedding preserves dimension and nullity; no metric residual | \(\dim\operatorname{aff}S_q=3\) and \(\mathcal H^3(S_q)=0\), whereas a matching affine density pushforward would have \(k=3\) and be \(\mathcal H^3\)-a.c. | Noncollinearity, a nonzero intercept fiber, and cited latent absolute continuity | G7 and final materiality comparison | `valid`; both dimension and within-hull-volume interfaces exposed; local source application pending |
| Exact final theorem and bounded-joint-density recovery | G7 / `step_007` | G2--G6 outputs; optional \(h\le\kappa_{\mathrm{joint}}\) only for recovery | Unsupported converse, necessity, polynomial, simplicity, and transversality classes are explicitly unclaimed; \(g=0\) fibers are beta-null | Every dependency produces the actual final object; baseline conditional density is actual \(h/g\); no residual | Direct conjunction; \(gK\le\kappa_{\mathrm{joint}}\); exact cube volume; exact finite-sum identity at \(B=1\) | Earlier primitive/derived sources; optional joint cap for comparison only | Final theorem and source comparison | `valid`; no premise is moved into the main theorem; local assembly proof pending |

All exported interfaces use controls already present in the setting or accepted sketch dependencies. No interface requires a new margin, threshold, defect split, dependency, source convention, transformed-object bridge, or theorem-target change.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Finite derivative envelope, Borel root event, and midpoint intercept slab | G1 / `step_001`, direct primitive-source derivation | G2 / `step_002`; derivative comparison in G7 | Basic setup -> G1 -> G2 -> G7/final theorem | derived | `valid`; producer precedes all consumers and uses exact branch convention |
| Per-law inequality and R1 class bound | G2 / `step_002` | G3, G5, G7, and main conclusion | `assump:averaged-intercept-density` + G1 -> G2 -> consumers | derived | `valid`; actual-law interface and static supremum order exposed |
| Random-intercept density, cap, averaged budget, fixed-width certificate | G3 / `step_003` from `assump:random-intercept-witness` | G4 local reuse; G7 and random-intercept final clause | Primitive RI source -> G3 -> G4/G7/final theorem; G2 supplies R1 | derived | `valid`; local conditional hypothesis is discharged before theorem use |
| Exact witness support, cube membership, a.s. positivity, and actual cap | G4 / `step_004` from explicit law and G3 calculation | G5 quantitative block, G6 geometry block, G7, final witness clauses | Explicit \(Z,U,\rho_q,\beta_q\) -> G4 -> G5/G6 -> G7 | derived | `valid`; \(\beta_1=Z\) supplies same-target flow |
| Infinite essential cap, exact finite average, and singleton \(C\) bound | G5 / `step_005` | G7 and final witness conclusion | G4 + G2 -> G5 -> G7/final theorem | derived | `valid`; cutoff removal is internal and leaves no generated condition |
| Affine-hull dimension, within-hull nullity, and baseline nonmembership | G6 / `step_006` from G4 and cached source convention | G7 and final materiality comparison | G4 + independent affine source -> G6 -> G7/final comparison | derived | `valid`; both structural outputs are produced before comparison use |
| Bounded-joint-density ambient-volume recovery | G7 / `step_007`, direct comparison from optional \(h\le\kappa_{\mathrm{joint}}\) | Final comparison only | Optional baseline premise -> G7 -> comparison paragraph | derived | `valid`; it does not flow into the new theorem assumptions |
| Exact `material_partial` theorem and remaining-gap statement | G7 / `step_007`, finite dependency assembly | Final theorem | G2--G6 -> G7 -> final statement | derived | `valid`; no assembly-produced premise and no scope upgrade |

There is no missing producer, consumer-before-producer edge, or unsupported assembly export. All theorem-facing generated outputs are `derived`; none is mislabeled primitive or left explicitly conditional in the final claim.

## Early Obstruction And Repair Plausibility

- **Contract contradiction screen:** none. The attempted theorem exactly matches `setting.md`, including all-law/all-positive-length-interval quantifiers, witness range \(d\ge3\), \(R>0\), \(q\in(0,1)\), and sufficient-only scope. The `material_partial` label and the statement that the necessary direction and indexed uniform polynomial characterization remain open are preserved.
- **Theorem-critical mechanism witnesses:** each named block has a nonvacuous source of the right claim type. The derivative envelope supplies an upper slab, the averaged density supplies probability mass control, positive random-intercept width supplies a density, \(1-q>0\) supplies finite singular mass, and affine dimension plus within-image absolute continuity supplies nonmembership. No upper-size bound is used as a lower/support source.
- **Residual-to-target screen:** every transfer is exact or has a displayed target-scale residual. The midpoint residual is at most \(L\lvert I\rvert/2\); conditional disintegration uses the actual law; beta identifies \(Z\) exactly; the cutoff residual tends to zero as \(\delta^{1-q}\); the affine comparison is equality-in-law with actual support; and the joint-density recovery uses the actual conditional law. No surrogate, transformed metric, empirical remainder, or fixed wrong-scale term remains.
- **Exported-interface feasibility:** all seven downstream interfaces have raw controls, defect classes, dominance relations, margin sources where relevant, consumers, and valid source conventions. No new bridge, step target, or dependency is needed.
- **Generated-condition provenance:** every nonprimitive static fact has a legal earlier producer. No good event, local-validity package, stability fact, support fact, boundedness fact, or cap fact is hidden in an unconditional theorem assumption.
- **Mode and dependence screen:** no expectation-to-high-probability, pointwise-to-uniform, finite-to-all-time, or asymptotic-to-nonasymptotic upgrade occurs. The only supremum upgrade is the exact defining supremum after a bound already simultaneous in each law and interval. All factors \(1\), \(1/2\), \(R^{-1}\), and \((1-q)^{-1}\) remain explicit.
- **Boundary screen:** \(d=1\), all interval endpoint types, endpoint-near and multiple roots, singular/discrete beta, null conditional fibers, \(\rho=0\), \(Z=0\), \(q\downarrow0\), \(q\uparrow1\), minimal \(d=3\), \(B=1\), and every affine latent dimension have explicit outcomes. The mechanism is either active, the state is null, or the state is explicitly outside the theorem range.
- **Entry-state / activation trace:** no recursive or iterative process exists. The static analogues are already traced: the G1 mechanism acts on the single root-midpoint segment; G3 excludes zero width before density use; G4's only collapsed fiber is null; G5's cutoff budget is active before its limit is consumed; and G6's nonzero fibers and projected support activate both dimension arguments before nonmembership is concluded.
- **Citation/source screen:** the cached source is used only for its proof's full-column-rank image-volume and induced-density conventions. The no-forced-root condition and the source root-bound constant are known non-outputs. The fixed monic coordinate is handled by an affine embedding. A broader affine class allowing singular latent laws is not claimed to be excluded.
- **Affine exclusion stress:** curvature alone would be inadequate because it leaves a three-dimensional affine representation possible. G6 retains the two independent obligations: (i) affine hull dimension exactly three and (ii) zero \(\mathcal H^3\) within that hull. The second uses the Lipschitz \((a,z)\)-graph parametrization, avoiding the Holder \((z,u)\) map at zero.
- **Baseline invariance:** under an additional bounded joint density, G7 recovers \(\bar\kappa\le\kappa_{\mathrm{joint}}(2R)^{d-1}\) and, when \(B=1\), the exact source monic scale. The affine-latent source theorem remains unchanged on its own class. No weaker remainder, stopped statement, or conditional surrogate replaces either baseline conclusion.
- **Same-setting repair plausibility:** no repair is presently required. The remaining work is local proof production under the accepted interfaces. No evidence supports a `sketch/interface defect` or `idea/theorem-contract defect`, and there is no candidate idea-level obstruction for `/global-proof-review`.

## Global Gaps And Hard Steps

None. The theorem-level draft resolves every global link and hard mathematical interface at the diagnostic granularity required before local proof work. Downstream `/proof-step` artifacts must still independently establish the seven accepted step claims, but that mandatory evidence-production phase does not constitute a gap in this diagnostic.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic guidance only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, generated-output flow, rate objective, theorem scope, or conclusion. Every local unit and source application described here must be independently proved and reviewed in its assigned `/proof-step` artifact.

## Suggested Routing

None

After `/global-proof-review`, continue with all seven steps in dependency order, beginning with `/proof-step step_001`. The affine-latent comparison in `step_006` should receive particular source-fidelity scrutiny after `step_004` is accepted, but it does not require a sketch repair.
