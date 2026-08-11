# Proof Sketch

## Formalized Setting

Fix the compact source domain \(\Theta\subseteq\mathbb R\). For every integer \(d\geq1\), radius \(R\geq1\), and coefficient vector \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\), let
\[
\phi_\alpha(\theta)=\theta^d+\sum_{j=0}^{d-1}\alpha_j\theta^j.
\]
For every interval \(I\subseteq\Theta\) with \(0<|I|<\infty\), with any endpoint convention, let \(H_{d,I}\) be the event that \(\phi_\alpha\) has a root in \(I\). Split \(I\) exactly into
\[
I_0=I\cap[-1,1],\qquad I_+=I\cap(1,\infty),\qquad I_-=I\cap(-\infty,-1).
\]
The pieces are disjoint, their union is \(I\), and their Lebesgue lengths sum to \(|I|\), including when one or more pieces are empty or singletons.

Fix once and for all a finite \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\), independently of \(d,R\). The class \(\mathcal D_{d,R,\eta}\) consists exactly of the Borel laws \(\mu\) supported on \([-R,R]^d\) for which both endpoint regular conditional laws have Lebesgue densities almost surely and
\[
\mathbb E_\mu K_0^\mu\leq\bar\kappa_0,\qquad
\mathbb E_\mu K_\infty^\mu\leq\bar\kappa_\infty,
\]
where the random caps are the essential suprema of the densities of \(\alpha_0\) given \(\alpha_{1:d-1}\) and of \(\alpha_{d-1}\) given \(\alpha_{0:d-2}\). For \(d=1\), both conditioning tuples are empty and both caps refer to the density of the sole coefficient. No joint density, independence, root statistic, or almost-sure uniform slice cap is assumed.

Define
\[
\begin{aligned}
s_0(\theta;\alpha_{1:d-1})
&=-\theta^d-\sum_{j=1}^{d-1}\alpha_j\theta^j,\\
s_\infty(\theta;\alpha_{0:d-2})
&=-\theta-\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1},\\
B_0(d,R)&=d+\frac{Rd(d-1)}2,\\
B_\infty(d,R)&=1+\frac{Rd(d-1)}2,\\
M_\eta(d,R)&=\max\{\bar\kappa_0B_0(d,R),
                         \bar\kappa_\infty B_\infty(d,R)\},\\
\bar\kappa_*&=\max\{\bar\kappa_0,\bar\kappa_\infty\},\\
P_\eta(d,R)&=\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2.
\end{aligned}
\]
All empty sums are zero. The class constant is
\[
C_{\mathcal D_{d,R,\eta}}
=\sup_{\mu\in\mathcal D_{d,R,\eta}}
  \sup_{\substack{I\subseteq\Theta\text{ interval}\\ |I|>0}}
  \frac{\mu(H_{d,I})}{|I|},
\]
with value \(0\) if either indexing set is empty.

The primitive assumptions are exactly assump:compact-parameter-domain, assump:indexed-regime, assump:compact-cube-support, and assump:mean-endpoint-conditional-caps from setting.md.

## Formalized Goal

For the single fixed \(\eta\), prove simultaneously for every \(d\geq1\), \(R\geq1\), \(\mu\in\mathcal D_{d,R,\eta}\), and positive-length interval \(I\subseteq\Theta\) that
\[
\mu(H_{d,I})
\leq \bar\kappa_0B_0(d,R)|I_0|
 +\bar\kappa_\infty B_\infty(d,R)(|I_+|+|I_-|)
\leq M_\eta(d,R)|I|.
\]
Then prove
\[
C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R)
\leq P_\eta(d,R)
=\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2
\]
with no hidden constants. The displayed polynomial has total degree three in \((d,R)\), and its degree and coefficients are independent of \(d,R\) apart from the fixed displayed \(\eta\).

Separately, and only under the theorem-clause hypothesis
\(\bar\kappa_0,\bar\kappa_\infty\geq1/2\), prove that the indexed witness law \(\mu^{\mathrm{wit}}_{d,R}\) from setting.md belongs to \(\mathcal D_{d,R,\eta}\) for every \(d\geq1,R\geq1\). The three constructions \(d=1\), \(d=2\), and \(d\geq3\) must be checked separately. This threshold is not an assumption of the root-hitting bound.

The progress type is material_partial. The theorem proves an independently verifiable sufficient condition and an explicit indexed polynomial rate only for \(R\geq1\). It does not claim necessity, cover laws lacking both endpoint mean caps, or address \(0<R<1\).

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

Use the selected framework "Two coefficient-pivot sweeps with conditional disintegration" from technical_survey.md. Its proof-mechanism provenance is the fixed-root coefficient sweep in *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Appendix Theorem 18, while the source convention and target are fixed by *Invited Open Problem: Online Optimization of Piecewise-Lipschitz Functions with Applications to Data-Driven Algorithm Design*, https://proceedings.mlr.press/v336/balcan26a.html.

No theorem from either paper is used as a black box for the claimed constants. The current proof directly calculates the two derivatives, directly proves the interval image-length controls, and supplies a current-notation measurable conditional-kernel argument. Steps step_001 and step_002 produce the deterministic chart controls. Step step_003 builds the measurable essential-supremum and event-fiber interface. Step step_004 combines those inputs by disintegration and the tower property. Step step_005 performs the finite interval-piece union and obtains the exact maximum. Step step_006 performs the class supremum and the no-hidden-constant polynomial specialization. Step step_007 independently proves the indexed witness membership.

## Rate Objectives

### Root-hitting and class-supremum target

- Objective type: structural-parameter explicit, uniform indexed-family bound.
- Exposed variables: \(d\), \(R\), \(\bar\kappa_0\), \(\bar\kappa_\infty\), the exact chart lengths \(|I_0|,|I_+|,|I_-|\), and \(|I|\). The public class bound exposes \(d,R,\eta\).
- Hidden constants may depend on: None. Every numerical coefficient is displayed.
- Hidden constants may not depend on: \(d,R,\mu,I,\Theta\), conditioning values, conditional-density versions, or any undisplayed law parameter.
- Fixed quantities: \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\) and the source domain \(\Theta\) are fixed before \(d,R\) vary. The final constant is independent of \(\Theta\).
- Probability mode: A deterministic inequality for each \(\mu\)-probability, followed by deterministic suprema over all laws and intervals. There is no confidence parameter, exceptional theorem event, or probability conversion.
- Horizon mode: Static and uniform over all positive-length intervals; there is no time horizon, iteration, stopping time, or limiting upgrade.
- Norm mode: Lebesgue interval length in the ratio \(\mu(H_{d,I})/|I|\), and conditional \(L^\infty(\mathbb R)\) density norms inside the primitive mean caps.
- Required bridge or simplification obligations: Prove the exact weighted three-piece estimate; use \(Ax+C(y+z)\leq\max\{A,C\}(x+y+z)\) for nonnegative lengths; then prove, for every \(d\geq1,R\geq1\),
  \[
  \max\{\bar\kappa_0B_0,\bar\kappa_\infty B_\infty\}
  \leq \bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2.
  \]
  No term may be dropped by asymptotic notation.
- Baseline invariance obligations: No recovery, zero-defect, noiseless, or exact-limit conclusion from the 2020 baseline is part of the formalized theorem contract. The required baseline comparison is expository: the new rate is explicit under a different, weaker coefficient-side package. The \(d=1\) boundary is nevertheless preserved exactly: \(B_0=B_\infty=1\), both pivots are the same sole coefficient, and the same proof yields the degree-one case without a surrogate remainder.

### Indexed nonemptiness target

- Objective type: structural-parameter explicit exact membership certificate.
- Exposed variables: \(d,R,\bar\kappa_0,\bar\kappa_\infty\), with the separate threshold \(\min\{\bar\kappa_0,\bar\kappa_\infty\}\geq1/2\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R\), a choice of conditional version, or the middle-block realization.
- Fixed quantities: \(\eta\) is fixed; \(d\geq1,R\geq1\) range over the indexed regime.
- Probability mode: Exact computation under each explicitly constructed witness law.
- Horizon mode: Static; there is no accumulated or limiting scope.
- Norm mode: Conditional \(L^\infty(\mathbb R)\) density norms.
- Required bridge or simplification obligations: Compute both caps as \(1/(2R)\), then use exactly
  \[
  \frac1{2R}\leq\frac12\leq
  \min\{\bar\kappa_0,\bar\kappa_\infty\}.
  \]
  Check \(d=1\), \(d=2\), and \(d\geq3\) separately.
- Baseline invariance obligations: N/A. This is a new static nonemptiness certificate, not a specialization of a prior recovery theorem.

## Assumption Provenance Objectives

No generated invariant, stability event, recurrence, support-maintenance condition, or local-validity condition is assumed theorem-facing. The needed interfaces have the following provenance.

| Needed fact or interface | Provenance class | Primitive source | Producer | Consumers |
| --- | --- | --- | --- | --- |
| Bounded coefficients and monic endpoint-pivot identities | primitive | assump:compact-cube-support and assump:indexed-regime | setting.md definitions | step_001, step_002 |
| Existence of endpoint conditional kernels with a.s. densities and finite mean caps | primitive | assump:mean-endpoint-conditional-caps | setting.md | step_003, step_004 |
| A measurable, version-independent representative of each random essential supremum | derived wrapper, not a new theorem assumption | endpoint conditional kernels from assump:mean-endpoint-conditional-caps | step_003 | step_004 |
| Inner and outer image-length controls | derived deterministic controls | assump:indexed-regime and assump:compact-cube-support | step_001, step_002 | step_004 |
| Mean-cap chart probability estimates | derived event controls | previous three rows | step_004 | step_005 |
| Exact two-chart maximum and public polynomial bound | derived quantitative specialization | chart probability controls and elementary scalar inequalities | step_005, step_006 | final theorem |
| Witness membership in the indexed class | derived static certificate | explicit witness construction, assump:indexed-regime, and the separate \(1/2\) theorem-clause threshold | step_007 | final nonemptiness clause |

The witness membership row does not use assump:mean-endpoint-conditional-caps as a premise: it proves that the constructed law satisfies that membership condition.

## Mechanism-Source And Boundary Stress

This theorem is static. It has no recursive algorithm, generated trajectory, repeated update, all-time invariant, limiting passage, or convergence-mode conversion. Consequently, the Scope-Accumulation Compatibility Gate and Entry-State / Activation Trace Gate do not apply to any row: the only combination across parameter pieces is one finite three-piece union, with no defect reused or accumulated. Universal quantification over \(d,R\) is discharged by the same pointwise algebraic inequality at each index, not by a limit or recurrence. The Noncircular Closure Gate also does not apply because no generated condition is assumed to maintain itself; every derived control has a direct earlier producer. The Residual-To-Target Adequacy Gate has no transformed or surrogate object to compare. Where an image or scalar bridge is used below, the exact event-fiber equality or direct scalar inequality gives zero residual in the consumed interface.

### step_001

- Step ID: step_001
- Claim class: Deterministic inner-chart derivative and image-length upper bound.
- Theorem role: Produces the geometric control consumed by inner conditional disintegration.
- Mechanism source: Direct current-notation differentiation under assump:indexed-regime and assump:compact-cube-support:
  \[
  s_0'(\theta)=-d\theta^{d-1}-\sum_{j=1}^{d-1}j\alpha_j\theta^{j-1}.
  \]
  The setting convention is exactly the monic coefficient ordering used by the theorem. No external result changes objects, coordinates, metric, normalization, or target.
- Source-to-claim adequacy: On \(|\theta|\leq1\), the triangle inequality, \(|\alpha_j|\leq R\), and \(\sum_{j=1}^{d-1}j=d(d-1)/2\) give
  \[
  |s_0'(\theta)|\leq d+\frac{Rd(d-1)}2=B_0(d,R).
  \]
  The mean-value theorem then makes \(s_0\) \(B_0\)-Lipschitz. Its image of any interval piece is an interval and has Lebesgue length at most \(B_0\) times the piece length, regardless of open, closed, or half-open endpoints.
- Residual-to-target adequacy: The produced set is exactly \(s_0(I_0;\alpha_{1:d-1})\), and the consumed fiber event is exactly \(\{\alpha_0\in s_0(I_0;\alpha_{1:d-1})\}\). Thus the event-object bridge is equality and has zero residual in Lebesgue measure; no surrogate metric or transformed target occurs.
- Key positive/control term or structural source: The finite derivative bound \(d+R\sum_{j=1}^{d-1}j\).
- Opposing defect terms: The coefficient derivative terms \(j\alpha_j\theta^{j-1}\); each is controlled by cube support and \(|\theta|\leq1\).
- Closure/dominance/absorption relation: Direct termwise domination and summation; no term is absorbed asymptotically.
- Accumulation behavior / scope compatibility: N/A because this is one static derivative bound on one interval, with no repeated forcing or accumulated defect.
- Obligation locality classification: step-local.
- Noncircular closure status: N/A because no closure, invariant, or maintained condition is claimed; the bound follows directly from primitive support.
- Entry-state / first-update stress result: N/A because there is no state or update. The relevant boundary stress is handled in the next fields.
- Baseline conclusion preserved: N/A; no inherited recovery or zero-defect conclusion touches this step.
- Producer-consumer provenance: assump:indexed-regime and assump:compact-cube-support -> step_001 -> step_004 -> step_005 -> step_006 -> final root-hitting theorem.
- Null or boundary regime tested: \(d=1\) makes the sum empty and gives \(s_0(\theta)=-\theta\), \(|s_0'|=B_0=1\). The points \(\theta=\pm1\), empty pieces, singleton pieces, tangencies, and multiple roots do not change the equality or length bound.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the cube bound on the nonpivot coefficients, the derivative need not admit the displayed \(d,R\) control, so the claimed polynomial interface would be unsupported.
- Repair route if source is unsupported: The source is a primitive setting condition and the direct calculation is adequate; no repair is needed.

### step_002

- Step ID: step_002
- Claim class: Deterministic positive- and negative-outer-chart derivative and image-length upper bounds.
- Theorem role: Produces the geometric controls consumed by both outer conditional disintegrations.
- Mechanism source: For \(|\theta|\geq1\), division of the root equation by the nonzero quantity \(\theta^{d-1}\) gives exactly \(\alpha_{d-1}=s_\infty(\theta;\alpha_{0:d-2})\), with
  \[
  s_\infty'(\theta)
  =-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d}.
  \]
  This is a direct derivation in the theorem's monic convention, valid on both signs of \(\theta\); division of an equality introduces no inequality-direction issue.
- Source-to-claim adequacy: Since \(|\theta|^{j-d}\leq1\) for \(|\theta|\geq1\), \(|\alpha_j|\leq R\), and
  \[
  \sum_{j=0}^{d-2}(d-1-j)=1+\cdots+(d-1)=\frac{d(d-1)}2,
  \]
  one has
  \[
  |s_\infty'(\theta)|\leq1+\frac{Rd(d-1)}2=B_\infty(d,R).
  \]
  Apply the interval image-length argument separately on \(I_+\) and \(I_-\); their union must not be treated as one interval across zero.
- Residual-to-target adequacy: On each outer component the produced image set is exactly the consumed root-event fiber for the same coefficient \(\alpha_{d-1}\). Equality gives zero residual; neither sign uses a surrogate object.
- Key positive/control term or structural source: The leading \(-\theta\) derivative contributes \(1\), and cube support controls the weighted inverse-power terms.
- Opposing defect terms: Negative-\(\theta\) signs, inverse powers, the excluded endpoints \(\pm1\), and the coefficient sum. Absolute values and separate connected components control all of them.
- Closure/dominance/absorption relation: Direct termwise domination by \(R(d-1-j)\) and exact summation to \(Rd(d-1)/2\).
- Accumulation behavior / scope compatibility: N/A because the two outer bounds are two finite static applications, not an iterative or limiting scope.
- Obligation locality classification: step-local.
- Noncircular closure status: N/A because no closure or generated condition is assumed.
- Entry-state / first-update stress result: N/A because there is no update. The sign and endpoint boundary states are checked directly.
- Baseline conclusion preserved: N/A; no inherited recovery conclusion touches this step.
- Producer-consumer provenance: assump:indexed-regime and assump:compact-cube-support -> step_002 -> step_004 -> step_005 -> step_006 -> final root-hitting theorem.
- Null or boundary regime tested: For \(d=1\), the sum is empty, division is by \(\theta^0=1\), \(s_\infty=-\theta\), and \(B_\infty=1\). The bound remains valid as \(\theta\downarrow1\) or \(\theta\uparrow-1\), while the actual points \(\pm1\) belong only to \(I_0\). Empty and singleton pieces have zero image length.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without monicity or cube support, the exact pivot identity or displayed derivative bound can fail, leaving the outer rate unsupported.
- Repair route if source is unsupported: The primitive sources and direct calculation already support the claim; no repair is needed.

### step_003

- Step ID: step_003
- Claim class: Measurable conditional-density cap and root-event disintegration interface.
- Theorem role: Ensures that the random essential suprema can be integrated and that the fiberwise chart bounds legally disintegrate the Borel root events.
- Mechanism source: Standard Borel regular conditional kernels and the measurable Radon--Nikodym theorem for a kernel absolutely continuous with respect to Lebesgue measure, plus the Lebesgue differentiation theorem, all restated in current notation. If \(Q_y\) is either endpoint conditional kernel, define on a common measurable version
  \[
  \widehat K(y)=\sup_{J\in\mathcal J_\mathbb Q}\frac{Q_y(J)}{|J|},
  \]
  where \(\mathcal J_\mathbb Q\) is the countable family of bounded intervals with rational endpoints. Then \(y\mapsto\widehat K(y)\) is measurable and, on every conditioning fiber having density \(q_y\), \(\widehat K(y)=\|q_y\|_\infty\) by differentiation. The displayed countable formula defines \(\widehat K\) everywhere; its values on the conditioning-null set of fibers without a density do not change expectations.
- Source-to-claim adequacy: The source convention is Borel Euclidean conditioning spaces and Lebesgue measure on the pivot coordinate, exactly as in setting.md. For every good fiber and every Borel set \(A\), \(Q_y(A)\leq\widehat K(y)\lambda(A)\). An arbitrary bounded interval is sigma-compact. Exhaust it by compact subintervals; for a compact piece, the projection onto the coefficient cube of the compact zero set is compact. Therefore each \(H_{d,J}\), including the three chart events, is Borel, and standard disintegration applies. This proves the required current-object-to-interface map without citing a theorem about a different process or metric.
- Residual-to-target adequacy: \(\widehat K\) equals the setting's essential-supremum cap almost surely, not merely up to an uncontrolled approximation. The only discrepancy is on conditioning-null fibers and integrates to zero. The consumed interface is the same conditional kernel probability, so there is no transformed-object residual.
- Key positive/control term or structural source: Countability of \(\mathcal J_\mathbb Q\), a.s. conditional absolute continuity from assump:mean-endpoint-conditional-caps, and the exact density domination \(Q_y(A)\leq K(y)\lambda(A)\).
- Opposing defect terms: Nonunique density versions, conditioning-null fibers, conditioning-dependent image sets, and arbitrary interval endpoint conventions.
- Closure/dominance/absorption relation: The countable formula supplies measurability; a.s. equality to the essential supremum makes the primitive mean bound apply; Borel event fibers then permit exact disintegration.
- Accumulation behavior / scope compatibility: N/A because there is one static integral for each event; no defect is iterated or accumulated.
- Obligation locality classification: step-local.
- Noncircular closure status: N/A because the cap is produced directly from a primitive conditional kernel before step_004 consumes it; it is not assumed as a generated closure property.
- Entry-state / first-update stress result: N/A because conditional disintegration is static and has no entry state.
- Baseline conclusion preserved: N/A; there is no inherited baseline specialization.
- Producer-consumer provenance: assump:mean-endpoint-conditional-caps and the Borel Euclidean setup -> step_003 -> step_004 -> all later bound steps.
- Null or boundary regime tested: Null conditioning fibers do not affect the integral; even an extended value on that null set contributes zero and does not alter any a.s. interface. Empty and singleton interval pieces give Borel events and zero image length. Open and half-open intervals are handled by sigma-compact exhaustion.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without conditional absolute continuity, a pivot atom can charge a zero-length image and the desired linear interval estimate can fail; without cap measurability, the tower step would be ill-posed.
- Repair route if source is unsupported: The primitive conditional-density assumption and standard current-notation kernel facts support the interface; no new theorem assumption is needed.

### step_004

- Step ID: step_004
- Claim class: Conditional chart probability bounds using only mean random slice caps.
- Theorem role: Converts deterministic image lengths into the three per-piece probability estimates.
- Mechanism source: Exact event-fiber identities from step_001 and step_002, measurable density domination from step_003, and the tower property under assump:mean-endpoint-conditional-caps.
- Source-to-claim adequacy: For the inner conditioning variable \(Y_0=\alpha_{1:d-1}\),
  \[
  Q^0_{Y_0}(H_{d,I_0}(Y_0))
  \leq K_0^\mu B_0(d,R)|I_0|
  \quad\text{a.s.}
  \]
  Integration gives
  \[
  \mu(H_{d,I_0})\leq
  \mathbb E K_0^\mu\,B_0|I_0|
  \leq\bar\kappa_0B_0|I_0|.
  \]
  Using the distinct outer conditioning variable \(Y_\infty=\alpha_{0:d-2}\), the same argument separately gives
  \[
  \mu(H_{d,I_\pm})\leq
  \bar\kappa_\infty B_\infty|I_\pm|.
  \]
  This exact path uses the means of the random caps and never replaces them by an a.s. uniform bound.
- Residual-to-target adequacy: Fiber root hitting is exactly pivot membership in the chart image, and the conditional density inequality directly controls that same event. There is zero event-transfer residual and no population, reference, or surrogate target.
- Key positive/control term or structural source: The primitive integrable caps \(\mathbb E K_0^\mu\) and \(\mathbb E K_\infty^\mu\), multiplied by the accepted deterministic image lengths.
- Opposing defect terms: Random, potentially unbounded slice caps and two different conditioning sigma-fields. The tower property handles randomness in expectation; each chart uses only its matching kernel, so no unjustified joint conditioning is needed.
- Closure/dominance/absorption relation: Exact fiberwise density domination followed by expectation and the two primitive mean inequalities.
- Accumulation behavior / scope compatibility: N/A because each chart event is integrated once. The two outer estimates are finite parallel applications, with no recurrent forcing term.
- Obligation locality classification: step-local.
- Noncircular closure status: N/A because the conditional event estimates are derived from earlier deterministic and measurable producers, not assumed.
- Entry-state / first-update stress result: N/A because there is no iteration or generated trajectory.
- Baseline conclusion preserved: N/A; no baseline recovery conclusion is claimed.
- Producer-consumer provenance: step_001 + step_003 -> inner estimate; step_002 + step_003 -> two outer estimates; all three -> step_005.
- Null or boundary regime tested: For \(d=1\), both conditionings are empty and both caps are norms of the same sole density, but each mean inequality remains legal. Zero-length pieces produce probability zero because their pivot images have Lebesgue measure zero. Tangencies and multiple roots require no transversality.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If either required mean cap is unavailable, its corresponding chart estimate has no finite class-uniform coefficient and the full two-regime theorem is unsupported.
- Repair route if source is unsupported: Both caps are primitive members of the exact class definition, so no repair is needed.

### step_005

- Step ID: step_005
- Claim class: Finite chart union, endpoint audit, and exact maximum interface.
- Theorem role: Closes the per-interval root-hitting bound without summing the two chart constants.
- Mechanism source: The exact disjoint partition \(I=I_0\mathbin{\dot\cup}I_+\mathbin{\dot\cup}I_-\), finite event subadditivity, the three controls from step_004, and the elementary weighted-maximum inequality.
- Source-to-claim adequacy: Although a polynomial may have roots in multiple pieces and the events need not be disjoint,
  \[
  H_{d,I}=H_{d,I_0}\cup H_{d,I_+}\cup H_{d,I_-}.
  \]
  Hence step_004 gives the exact weighted upper bound. For
  \(A=\bar\kappa_0B_0\), \(C=\bar\kappa_\infty B_\infty\), and nonnegative \(x=|I_0|,y=|I_+|,z=|I_-|\),
  \[
  Ax+C(y+z)\leq\max\{A,C\}(x+y+z)=M_\eta(d,R)|I|.
  \]
  This is the maximum of the chart constants, not their sum.
- Residual-to-target adequacy: The domain partition is exact and the event identity is exact. Finite subadditivity is the only loss; the scalar target \(M_\eta|I|\) is consumed directly, with no surrogate object or residual term.
- Key positive/control term or structural source: Disjoint parameter-piece lengths summing exactly to \(|I|\).
- Opposing defect terms: Overlap among the three root events and point roots at \(\pm1\). Event overlap is handled by one union bound; both boundary points are assigned only to \(I_0\).
- Closure/dominance/absorption relation: The displayed weighted-maximum inequality, with no asymptotic absorption.
- Accumulation behavior / scope compatibility: N/A because the union contains exactly three fixed pieces. There is no repeated scope and no accumulated defect beyond one finite subadditivity inequality.
- Obligation locality classification: step-local.
- Noncircular closure status: N/A because this is direct finite theorem assembly from earlier outputs, not maintenance of a generated condition.
- Entry-state / first-update stress result: N/A because no process is updated.
- Baseline conclusion preserved: N/A; no inherited recovery statement is involved.
- Producer-consumer provenance: step_004 -> step_005 -> step_006 -> final theorem.
- Null or boundary regime tested: Empty pieces and singleton boundary pieces have length zero and zero probability under the matching conditional-density argument. Arbitrary inclusion or exclusion of the endpoints of \(I\) is respected. At \(d=1\), both chart constants equal their respective caps and the same maximum algebra applies.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the exact partition and weighted maximum relation, the proof would at best expose the invalid larger sum of chart constants or omit boundary roots.
- Repair route if source is unsupported: The static partition and algebra already support the interface; no repair is needed.

### step_006

- Step ID: step_006
- Claim class: Theorem-critical quantitative specialization and class-supremum closure.
- Theorem role: Exports the uniform explicit polynomial \(P_\eta(d,R)\) and the claimed value of the class constant.
- Mechanism source: Direct scalar inequalities under assump:indexed-regime and the definition of \(\bar\kappa_*\):
  \[
  \bar\kappa_0,\bar\kappa_\infty\leq\bar\kappa_*,
  \quad 1\leq d,\quad d(d-1)\leq d^2.
  \]
  Together with step_005, these give
  \[
  M_\eta(d,R)
  \leq\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2=P_\eta(d,R).
  \]
- Source-to-claim adequacy: The exact source convention is the same \(d,R,\eta\) as in setting.md. The inequality is valid pointwise for every \(d\geq1,R\geq1\), with no asymptotic threshold and no coefficient omitted. Dividing step_005 by \(|I|>0\), then taking both suprema, proves the class bound. If either the law class or the positive-length interval indexing set is empty, the setting's convention gives \(C=0\), so the same bound holds without any nonemptiness premise.
- Residual-to-target adequacy: The produced control \(M_\eta\) and consumed public interface \(P_\eta\) are scalars in the same root-hitting ratio. The displayed exact dominance has no residual or wrong-scale term and introduces no transformed or surrogate target.
- Key positive/control term or structural source: Fixed \(\eta\) and the exact inequalities \(1\leq d\), \(d(d-1)\leq d^2\).
- Opposing defect terms: Potential hidden dependence on \(d,R\), the smaller outer constant \(1\), and an empty law class. The direct formula exposes all dependence, \(1\leq d\) handles the outer constant, and the explicit empty-supremum convention handles emptiness.
- Closure/dominance/absorption relation: Each of \(\bar\kappa_0B_0\) and \(\bar\kappa_\infty B_\infty\) is bounded term by term by \(P_\eta\); taking their maximum preserves the bound. No term is described as lower order.
- Accumulation behavior / scope compatibility: N/A. Uniformity over all indexed pairs follows from one pointwise inequality with fixed coefficients; there is no sum, limit, recurrence, or persistent forcing across \(d,R\).
- Obligation locality classification: step-local.
- Noncircular closure status: N/A because the class supremum consumes an already proved per-law estimate and does not assume finiteness of \(C\).
- Entry-state / first-update stress result: N/A because there is no recursive construction or mode conversion.
- Baseline conclusion preserved: N/A because no inherited recovery, exact-limit, or noiseless conclusion is part of this theorem contract. The \(d=1\) boundary remains valid and is audited separately; the public polynomial is a conservative upper bound, not a replacement for an inherited baseline theorem.
- Producer-consumer provenance: step_005 -> step_006 -> final class-uniform polynomial theorem.
- Null or boundary regime tested: \(d=1\), \(R=1\), \(\bar\kappa_*=0\), and an empty \(\mathcal D_{d,R,\eta}\). If \(\bar\kappa_*=0\), any nonempty class would contradict the existence of a probability density with zero \(L^\infty\) norm; regardless, the empty-class convention makes the exported inequality valid.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If \(\eta\) were allowed to hide \(d,R\) dependence, the same displayed formula would no longer be a uniform polynomial family statement. assump:indexed-regime explicitly excludes that failure.
- Repair route if source is unsupported: The primitive fixed-\(\eta\) convention and direct algebra support the export; no repair is needed.

### step_007

- Step ID: step_007
- Claim class: Theorem-critical indexed nonemptiness and exact membership certificate.
- Theorem role: Shows that the sufficient condition is nonvacuous for every claimed \(d,R\) under the separately stated threshold, including singular and dependent-middle-block witnesses.
- Mechanism source: The explicit independent uniform endpoint innovations in setting.md. For \(d=1\), the sole coefficient is uniform. For \(d=2\), the two coefficients are independent uniform variables. For \(d\geq3\), \(U_0,U_\infty\) are independent uniform variables and are independent of the Rademacher-driven middle block \((RS,\ldots,RS)\).
- Source-to-claim adequacy: In the \(d=1\) case both empty-conditioning kernels have density \((2R)^{-1}{\bf1}_{[-R,R]}\). In the \(d=2\) case, independence makes each endpoint conditional law uniform after conditioning on the other. In the \(d\geq3\) case, conditioning on all nonpivot coordinates reveals at most the other endpoint and \(S\), while the pivot endpoint remains an independent uniform innovation. Thus in every case both random slice caps are exactly \(1/(2R)\) almost surely. Support is visibly inside the cube. The relation
  \[
  \frac1{2R}\leq\frac12\leq
  \bar\kappa_0,\bar\kappa_\infty
  \]
  proves membership only under the separate nonemptiness threshold.
- Residual-to-target adequacy: The produced object is exactly \(\mu^{\mathrm{wit}}_{d,R}\), the law consumed by the nonemptiness clause. Its support and conditional kernels are checked directly; there is no transformed, population, reference, or surrogate law and hence zero object-target residual.
- Key positive/control term or structural source: An independent \(\mathrm{Unif}[-R,R]\) innovation at each endpoint, with exact density height \(1/(2R)\).
- Opposing defect terms: Conditioning could reveal the pivot, and ambient singularity could be mistaken for failure of a conditional density. Independence prevents revelation of each endpoint; singularity is confined to the middle block and is irrelevant to the two one-dimensional conditional kernels.
- Closure/dominance/absorption relation: Exact kernel computation followed by the explicit threshold chain \(1/(2R)\leq1/2\leq\bar\kappa_i\).
- Accumulation behavior / scope compatibility: N/A. The witness is constructed separately at each index by one formula; no error, forcing term, or membership defect accumulates across \(d\) or \(R\).
- Obligation locality classification: step-local.
- Noncircular closure status: N/A because static class membership is proved directly from the constructed primitive random variables and is not assumed as its own premise.
- Entry-state / first-update stress result: N/A because there is no iterative generator. The lowest-degree cases are explicit case branches, not entry states.
- Baseline conclusion preserved: N/A; this is not a recovery or zero-error specialization.
- Producer-consumer provenance: explicit witness random variables + assump:indexed-regime + separate cap-threshold hypothesis -> step_007 -> final nonemptiness clause. There is no dependency from step_007 into step_001 through step_006.
- Null or boundary regime tested: \(d=1\), \(d=2\), \(d=3\), \(d\geq4\), \(R=1\), and cap equality at \(1/2\). For \(d\geq3\), the law is ambiently singular; for \(d\geq4\), the middle coordinates are dependent. Both properties leave the endpoint kernels unchanged.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without the independent endpoint innovations, the displayed witness membership need not hold. That would block only the nonemptiness clause, not the general root-hitting bound.
- Repair route if source is unsupported: The explicit constructions support all cases. No threshold is moved into the general theorem assumptions.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| \(\lambda(s_0(J;y))\leq B_0(d,R)\lvert J\rvert\) for every inner interval piece and support-compatible \(y\) | step_001, direct current-notation derivative calculation | Exact setting convention: monic coefficient order, assump:indexed-regime, assump:compact-cube-support, and the inner \(\alpha_0\) pivot | All coefficient terms are controlled by \(\lvert\alpha_j\rvert\leq R\); endpoint and singleton cases are controlled directly; there is no empirical or persistent defect | The image is exactly the fiber target set for \(\alpha_0\), so the event bridge has residual zero in Lebesgue measure | \(\lvert s_0'\rvert\leq d+R\sum_{j=1}^{d-1}j=B_0\), then Lipschitz image length | N/A: this is an upper bound requiring no positive margin | step_004 | None |
| \(\lambda(s_\infty(J;y))\leq B_\infty(d,R)\lvert J\rvert\) separately on each outer side | step_002, direct current-notation derivative calculation | Exact setting convention: monic coefficient order, assump:indexed-regime, assump:compact-cube-support, nonzero \(\lvert\theta\rvert\geq1\) pivot division, and separate signs | Coefficient terms and inverse powers are controlled; sign and open-endpoint branches are explicit; no uncontrolled term remains | Each side's image is exactly the fiber target for \(\alpha_{d-1}\), with zero residual and no surrogate | \(\lvert s_\infty'\rvert\leq1+R\sum_{j=0}^{d-2}(d-1-j)=B_\infty\) | N/A: no positive margin or threshold is used | step_004 | None |
| Measurable random cap \(K_i\) satisfying \(Q_y(A)\leq K_i(y)\lambda(A)\) for every Borel \(A\) on a full-measure set | step_003, standard Borel kernel Radon--Nikodym and Lebesgue differentiation facts in current notation | Exact source-compatible convention: Borel Euclidean conditioning spaces, Lebesgue pivot measure, a.s. conditional absolute continuity in assump:mean-endpoint-conditional-caps, and countable rational intervals | Density-version and null-fiber defects are controlled by the countable kernel formula and a harmless null-set definition; there is no uncontrolled event-level defect | The measurable cap equals the setting's essential supremum a.s.; only conditioning-null fibers differ, giving zero integrated residual | \(K_i(y)=\sup_{J\in\mathcal J_\mathbb Q}Q_y(J)/\lvert J\rvert=\lVert q_y\rVert_\infty\) a.s. | N/A: no threshold is introduced | step_004 | None |
| Three chart probability bounds with mean caps | step_004 | step_001, step_002, step_003, and the two primitive expectation bounds | Random cap size is controlled only in expectation, exactly as allowed; the inner and outer conditioning fields are kept separate; no a.s. cap is asserted | Root-event fibers equal pivot-image membership and are controlled in the same conditional probability interface, so residual is zero | \(Q_y(H_y)\leq K_i(y)\lambda(s_i(J;y))\), then the tower property and \(\mathbb EK_i\leq\bar\kappa_i\) | N/A: the cap bounds are primitive upper controls, not margins | step_005 | None |
| Exact per-interval two-chart maximum \(\mu(H_{d,I})\leq M_\eta(d,R)\lvert I\rvert\) | step_005 | Exact theorem convention: three chart probability controls, the stated \([-1,1],(1,\infty),(-\infty,-1)\) partition, and its endpoint allocation | Event overlap is the only loss and is controlled by finite subadditivity; boundary points belong only to the inner piece; no chart coefficient is uncontrolled | The three events union exactly to the target event; after finite subadditivity the weighted scalar bound maps directly to \(M_\eta\lvert I\rvert\) | \(Ax+C(y+z)\leq\max\{A,C\}(x+y+z)\) | N/A: nonnegative lengths and exact maximum need no margin | step_006 and final theorem | None |
| Public class bound \(C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R)\leq P_\eta(d,R)\) with no hidden constant | step_006 | Exact setting convention: step_005 for the same root-hitting ratio; fixed \(\eta\); \(1\leq d\); \(d(d-1)\leq d^2\); both empty-index conventions | All \(d,R,\eta\) terms remain displayed; no probability, horizon, norm, empirical, or asymptotic defect exists | \(M_\eta\) and \(P_\eta\) are controls of the same scalar target; exact termwise dominance leaves zero residual | Divide by \(\lvert I\rvert>0\), take suprema, then bound both chart constants by \(\bar\kappa_*d+(\bar\kappa_*/2)Rd^2\) | The nonnegative fixed cap \(\bar\kappa_*\) is explicit; no unstated slack | final theorem | None |
| Indexed membership \(\mu^{\mathrm{wit}}_{d,R}\in\mathcal D_{d,R,\eta}\) for all \(d,R\) under the separate threshold | step_007 | Exact setting witness convention: the same \(\mu^{\mathrm{wit}}_{d,R}\), uniform endpoint innovations, cube support, \(R\geq1\), and theorem-clause caps at least \(1/2\) | Conditioning-revelation risk is excluded by independence; middle-block singularity and dependence do not affect endpoint kernels; no uncontrolled membership condition remains | Produced and consumed law are identical; support and both conditional caps are verified on that same law, so residual is zero | \(K_0=K_\infty=1/(2R)\leq1/2\leq\bar\kappa_i\) in each of the three degree regimes | Exact density height \(1/(2R)\) and the separately stated \(1/2\) threshold | final nonemptiness clause only | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Inner image-length certificate | step_001, direct derivative proof in the exact theorem convention | step_004 | Inner term \(\bar\kappa_0B_0\lvert I_0\rvert\) | step_001 -> step_004 -> step_005 -> step_006 -> final theorem | derived | None |
| Two separate outer image-length certificates | step_002, direct derivative proof in the exact theorem convention | step_004 | Outer terms \(\bar\kappa_\infty B_\infty(\lvert I_+\rvert+\lvert I_-\rvert)\) | step_002 -> step_004 -> step_005 -> step_006 -> final theorem | derived | None |
| Measurable essential-supremum and Borel disintegration interface | step_003, from primitive endpoint kernels | step_004 | Legal tower-property conversion from random slice caps to their means | step_003 -> step_004 -> step_005 -> step_006 -> final theorem | derived | None |
| Three chart probability controls | step_004 | step_005 | Exact weighted first line of the formalized goal | step_004 -> step_005 -> step_006 -> final theorem | derived | None |
| Exact maximum control \(M_\eta(d,R)\lvert I\rvert\) | step_005 | step_006 | Per-law, per-interval root-hitting bound | step_005 -> step_006 -> final theorem | derived | None |
| Class-supremum and no-hidden-constant polynomial control \(P_\eta\) | step_006 | final theorem | Part (b) material-partial conclusion | step_006 -> final theorem | derived | None |
| Exact indexed witness membership | step_007 | final nonemptiness clause | Nonvacuity for every \(d\geq1,R\geq1\) when both caps are at least \(1/2\) | step_007 -> final theorem; independent of steps step_001 through step_006 | derived | None |

No generated output is transformed, weighted, preconditioned, whitened, reference-modified, or otherwise surrogate relative to its consumer. The image-set interfaces are exact event fibers, the quantitative bridge compares the same scalar root-hitting control, and the witness law is the exact law asserted to be a class member.

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | For every \(d\geq1,R\geq1\), support-compatible \(\alpha_{1:d-1}\), and interval \(J\subseteq[-1,1]\) with any endpoint convention, prove \(\lvert s_0'\rvert\leq d+Rd(d-1)/2\) and \(\lambda(s_0(J))\leq B_0(d,R)\lvert J\rvert\), including empty/singleton \(J\), \(\theta=\pm1\), and \(d=1\). | None | assump:indexed-regime; assump:compact-cube-support | Keep the empty sum and arbitrary endpoint conventions exact; show continuous interval image length rather than merely image diameter prose. | Direct differentiation, triangle inequality, \(\sum_{j=1}^{d-1}j=d(d-1)/2\), mean-value theorem, and connectedness of continuous interval images; no cited result is theorem-critical. | Inner deterministic image-length certificate. | Root-hitting structural-rate objective: preserve exact \(B_0(d,R)\). | PENDING |
| step_002 | For each of \(J\subseteq(1,\infty)\) and \(J\subseteq(-\infty,-1)\), prove the exact pivot equivalence after division by \(\theta^{d-1}\), compute \(s_\infty'=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d}\), derive \(\lvert s_\infty'\rvert\leq1+Rd(d-1)/2\), and prove the corresponding image-length bound, including signs, approach to \(\pm1\), and \(d=1\). | None | assump:indexed-regime; assump:compact-cube-support | Treat the two signs as separate connected charts, justify division for negative \(\theta\), and use the exact triangular sum \(\sum_{j=0}^{d-2}(d-1-j)=d(d-1)/2\). | Direct algebra and differentiation, absolute-power bounds for \(\lvert\theta\rvert\geq1\), mean-value theorem, and interval-image connectedness. | Positive- and negative-outer deterministic image-length certificates. | Root-hitting structural-rate objective: preserve exact \(B_\infty(d,R)\). | PENDING |
| step_003 | Construct measurable versions of the two random slice caps, prove a.s. equality with the stated conditional \(L^\infty\) norms and \(Q_y(A)\leq K(y)\lambda(A)\) for every Borel pivot set, and prove all chart root-hitting events are Borel for arbitrary interval endpoint conventions. | None | assump:compact-parameter-domain; assump:indexed-regime; assump:compact-cube-support; assump:mean-endpoint-conditional-caps | Essential suprema of nonunique conditional-density versions must be measurable, and conditioning-dependent fiber images must enter a legal disintegration. | Current-notation measurable Radon--Nikodym theorem for kernels, rational-interval cap formula plus Lebesgue differentiation, sigma-compact exhaustion of intervals, and compact projection of compact zero sets. | Version-independent measurable cap and Borel event-fiber interface. | Root-hitting objective: preserve exactly the primitive mean caps, with no a.s. cap or hidden version dependence. | PENDING |
| step_004 | Using the matching conditioning kernel for each chart, prove \(\mu(H_{d,I_0})\leq\bar\kappa_0B_0\lvert I_0\rvert\) and \(\mu(H_{d,I_\pm})\leq\bar\kappa_\infty B_\infty\lvert I_\pm\rvert\) by fiberwise image control and the tower property, including \(d=1\) and zero-length pieces. | step_001, step_002, step_003 | assump:indexed-regime; assump:compact-cube-support; assump:mean-endpoint-conditional-caps | Use only mean random caps, not almost-sure uniform caps, and do not conflate the two conditioning sigma-fields. | Conditional disintegration, density domination on each fiber, and the tower property. | Three class-compatible chart probability controls. | Root-hitting objective: exact dependence \(\bar\kappa_0B_0\) and \(\bar\kappa_\infty B_\infty\), deterministic probability mode. | PENDING |
| step_005 | Prove the exact event union over the three domain pieces, apply finite subadditivity, and derive the weighted bound followed by \(M_\eta(d,R)\lvert I\rvert\) via the maximum rather than the sum; audit \(\pm1\), empty pieces, singleton pieces, and arbitrary endpoints. | step_004 | assump:compact-parameter-domain; assump:indexed-regime | The interval pieces are disjoint but the events are not; endpoint roots must be included once, and the chart coefficients must be combined by a weighted maximum. | Exact set identity, finite union bound, length additivity, and \(Ax+C(y+z)\leq\max\{A,C\}(x+y+z)\). | Exact per-law, per-interval two-chart maximum bound. | Root-hitting objective: exact \(M_\eta(d,R)\) interface with no summed chart constant. | PENDING |
| step_006 | Divide by \(\lvert I\rvert\), take the interval and law suprema with the empty-class convention, and prove for every \(d\geq1,R\geq1\) that \(M_\eta(d,R)\leq\bar\kappa_*d+(\bar\kappa_*/2)Rd^2\), with fixed \(\eta\), no hidden constants, and no threshold imported from nonemptiness. | step_005 | assump:indexed-regime | Preserve every exposed parameter, handle the empty class, and prove rather than narrate each simplification. | Direct supremum monotonicity and the exact inequalities \(\bar\kappa_i\leq\bar\kappa_*\), \(1\leq d\), and \(d(d-1)\leq d^2\). | Public class-uniform degree-three polynomial bound. | Root-hitting structural-rate objective and its full Rate Specialization Bridge: no auxiliary choice, no probability conversion, exact termwise domination. | PENDING |
| step_007 | Under only the separate theorem-clause threshold \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\), prove the witness law belongs to \(\mathcal D_{d,R,\eta}\) separately for \(d=1\), \(d=2\), and \(d\geq3\); compute both caps as \(1/(2R)\), verify cube support, singularity for \(d\geq3\), and middle-coordinate dependence for \(d\geq4\). | None | assump:indexed-regime; separate theorem-clause hypothesis \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\); the class definition, but not assump:mean-endpoint-conditional-caps as a premise | Compute the conditional kernels after conditioning on all complementary coordinates and keep the threshold isolated from steps step_001 through step_006. | Independence and exact uniform-density calculation, followed by \(1/(2R)\leq1/2\). | Indexed nonemptiness membership certificate. | Indexed nonemptiness objective: exact cap height and threshold, no hidden dependence. | PENDING |

## Dependency Notes

The graph is acyclic. Steps step_001, step_002, and step_003 are independent producers. Step step_004 depends only on those earlier producers. Step step_005 depends only on step_004, and step step_006 depends only on step_005. Step step_007 is an independent static witness proof and depends on no proof-generated output; placing it last does not create a backward dependency.

The bound assembles along
\[
(\text{step_001},\text{step_002},\text{step_003})
\longrightarrow\text{step_004}
\longrightarrow\text{step_005}
\longrightarrow\text{step_006}.
\]
The final theorem consumes step_006 for the root-hitting and polynomial claims and step_007 for the separate nonemptiness clause. No consumer uses a generated output before its producer. In particular, the witness threshold has no path into the general probability-bound chain.

## Blockers

None.
