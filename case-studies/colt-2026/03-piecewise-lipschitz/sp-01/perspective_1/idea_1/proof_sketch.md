# Proof Sketch

## Formalized Setting

Fix \(d\geq1\), (R>0), a compact one-dimensional parameter domain \(\Theta\subseteq\mathbb R\), and a nonempty class \(\mathcal D\) of Borel laws on ([-R,R]^d). Write

\[
\alpha=(\alpha_0,\beta),\qquad \beta=(\alpha_1,\ldots,\alpha_{d-1}),\qquad
\phi_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k,
\]

with the empty higher-coefficient tuple used when (d=1). For every positive-length interval \(I\subseteq\Theta\), with any open, closed, or half-open endpoint convention, let \(m_I=(\inf I+\sup I)/2\), and let \(Z_\alpha=\{\theta\in\Theta:\phi_\alpha(\theta)=0\}\). Define

\[
C_{\mathcal A}=\sup_{\nu\in\mathcal A}\sup_{I\subseteq\Theta,\ |I|>0}
\frac{\Pr_\nu(Z_\alpha\cap I\neq\varnothing)}{|I|}.
\]

Put \(B=\max\{1,\sup_{\theta\in\Theta}|\theta|\}\) and

\[
L_{d,R,\Theta}=\sup_{\alpha\in[-R,R]^d,\ \theta\in\Theta}
\lvert\partial_\theta\phi_\alpha(\theta)\rvert
\leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}<\infty.
\]

The primitive technical assumption `assump:averaged-intercept-density` supplies, for every \(\mu\in\mathcal D\), a jointly measurable regular conditional density \(f_\mu(a_0\mid\beta)\), extended by zero outside ([-R,R]), a measurable slice cap \(K_\mu(\beta)=\operatorname*{ess\,sup}_{a_0\in\mathbb R}f_\mu(a_0\mid\beta)\), and the finite class envelope

\[
\bar\kappa_{\mathcal D}=\sup_{\mu\in\mathcal D}\int K_\mu(\beta)\,\pi_\mu(d\beta)<\infty.
\]

No density or independence is assumed for \(\beta\), and \(K_\mu\) need not be essentially bounded in \(\beta\). The optional primitive construction `assump:random-intercept-witness` has

\[
\alpha_0=G_\mu(\beta)+\rho_\mu(\beta)U_\mu,
\quad U_\mu\sim\operatorname{Unif}[-1,1]\ \text{independent of }\beta,
\]

where \(\rho_\mu>0\) almost surely, \(|G_\mu|+\rho_\mu\leq R\) almost surely, and \(M_{\mathrm{RI}}=\sup_\mu\int\rho_\mu^{-1}d\pi_\mu<\infty\). No root simplicity, separation, or transversality condition is available or needed.

## Formalized Goal

Prove exactly the material-partial, one-way sufficient theorem in `setting.md`:

\[
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq \bar\kappa_{\mathcal D}L_{d,R,\Theta}|I|
\quad\text{for every }\mu\in\mathcal D\text{ and every }I,
\]

and hence \(C_{\mathcal D}\leq\bar\kappa_{\mathcal D}L_{d,R,\Theta}<\infty\). Prove the random-intercept density and cap formulas and the bound \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}\leq M_{\mathrm{RI}}/2\), including fixed-width cases. For every \(d\geq3\), (R>0), and \(q\in(0,1)\), verify all claimed properties of

\[
Z\sim\operatorname{Unif}[-R/2,R/2],\quad
\rho_q(z)=\frac R2\left(\frac{2|z|}{R}\right)^q,\quad
\beta_q(z)=(z,z^2/R,0,\ldots,0),\quad
\alpha^{(q)}=(\rho_q(Z)U,\beta_q(Z)),
\]

including support, almost-sure positivity, infinite essential slice cap, exact averaged cap (1/[R(1-q)]), the resulting (C) bound, and rigorous exclusion from the full-rank bounded-density affine-latent baseline. Assert no necessity, converse, uniform polynomial-in-((d,R)) rate, root simplicity, or transversality statement.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch attempt
- Goal mode: exact-goal mode
- Run mode: interactive
- Configured producer budgets: idea 30; sketch 10; global 100; step 100; assembly 100.

## Proof Roadmap

Use the selected `Midpoint intercept-slice disintegration` framework from `technical_survey.md`, with source lineage to the 2026 open problem and Balcan--Dick--Pegden, arXiv:1904.09014. The central deterministic observation is a set inclusion: a root anywhere in (I) forces the single midpoint evaluation \(\phi_\alpha(m_I)\) into a slab of radius \(L_{d,R,\Theta}|I|/2\). Conditional on \(\beta\), this is an interval constraint on the additive intercept \(\alpha_0\) of total length at most \(L_{d,R,\Theta}|I|\). Disintegration and the averaged cap then give the all-law, all-interval result without selecting roots or assuming transversality.

The constructive part first proves a reusable conditional-uniform lemma for random intercepts, then specializes it to the explicit heteroscedastic sheet. The cap singularity is handled exactly by a nonnegative (t^{-q}) integral, not by a pointwise slice bound. Finally, the baseline comparison uses both halves of the dimension argument: the curved \((\alpha_1,\alpha_2)\) projection makes the sheet's affine hull three-dimensional, while the sheet itself has zero three-dimensional measure; therefore it is neither a two-dimensional affine image nor a full-rank three-dimensional affine image of an absolutely continuous latent law.

## Rate Objectives

### Objective R1: General averaged-envelope root-hitting bound

- Objective type: structural-parameter explicit and class-uniform/all-interval explicit dependence.
- Exposed variables: \(\bar\kappa_{\mathcal D}\), \(L_{d,R,\Theta}\), (|I|), (d), (R), \(B=\max\{1,\sup_{\Theta}|\theta|\}\), and the normalized target \(C_{\mathcal D}\).
- Hidden constants may depend on: None; the coefficient multiplying \(\bar\kappa_{\mathcal D}L_{d,R,\Theta}|I|\) is exactly one.
- Hidden constants may not depend on: \(\mu\), (I), (d), (R), \(\Theta\), \(\bar\kappa_{\mathcal D}\), or any unreported distributional parameter.
- Fixed quantities: The theorem fixes \(d,R,\Theta,\mathcal D\) while taking simultaneous suprema over every \(\mu\in\mathcal D\) and every positive-length interval \(I\subseteq\Theta\).
- Probability mode: deterministic inequality between exact probabilities under each \(\mu\); no confidence parameter, good event, or conversion between probability modes.
- Horizon mode: no temporal horizon is present; the scope is uniform over all laws and all positive-length intervals in the fixed setting.
- Norm mode: absolute-value control of polynomial evaluation/derivative and the interval-length-normalized hitting functional \(C_{\mathcal D}\).
- Required bridge or simplification obligations: `step_001` must retain the exact factor (1/2) in the midpoint radius and total slab length (L|I|); `step_002` must integrate \(K_\mu\) before the class supremum; no term may be absorbed or dropped. The displayed deterministic bound on (L) must be retained.
- Baseline invariance obligations: As a comparison specialization, a bounded joint density \(h_\mu\leq\kappa_{\mathrm{joint}}\) must imply \(\bar\kappa_{\mathcal D}\leq\kappa_{\mathrm{joint}}(2R)^{d-1}\). When (B=1), the derivative bound becomes (d+Rd(d-1)/2), recovering the source monic ambient-volume scale. This comparison does not replace the new theorem or add a joint-density assumption to it.

### Objective R2: Random-intercept specialization

- Objective type: structural-parameter and regularity-explicit specialization.
- Exposed variables: \(M_{\mathrm{RI}}\), \(\rho_\mu(\beta)\), fixed widths \(r_\mu\), \(L_{d,R,\Theta}\), and \(C_{\mathcal D_{\mathrm{RI}}}\).
- Hidden constants may depend on: None; the conditional cap is exactly \(1/(2\rho_\mu)\) and the class factor is exactly (1/2).
- Hidden constants may not depend on: \(\mu\), \(\beta\), (I), singularity or dependence of \(\pi_\mu\), or unreported width parameters.
- Fixed quantities: \(d,R,\Theta\) and the declared random-intercept class; for a fixed-width member, its declared \(r_\mu>0\).
- Probability mode: exact conditional-law identity for \(\pi_\mu\)-almost every \(\beta\), followed by an unconditional deterministic probability bound.
- Horizon mode: no temporal horizon; uniform over the class and all intervals.
- Norm mode: conditional Lebesgue-density essential supremum and the same interval-length-normalized hitting functional.
- Required bridge or simplification obligations: Verify joint measurability, support inside ([-R,R]), \(K_\mu=1/(2\rho_\mu)\), and \(\int K_\mu d\pi_\mu=(1/2)\int\rho_\mu^{-1}d\pi_\mu\) before invoking R1. For fixed widths, explicitly specialize this to \(1/(2r_\mu)\) and retain the required class-uniform reciprocal-width bound.
- Baseline invariance obligations: No inherited affine-latent conclusion is used for this specialization; the exact R1 conclusion is preserved rather than weakened to a conditional or stopped statement.

### Objective R3: Heteroscedastic witness

- Objective type: exact structural-parameter dependence and exact singular-integral evaluation.
- Exposed variables: \(d\geq3\), (R>0), \(q\in(0,1)\), \(L_{d,R,\Theta}\), \(K_{\mu_q}\), and \(C_{\{\mu_q\}}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,q,\Theta,Z,U\), or a truncation near (Z=0).
- Fixed quantities: \(d,R,q,\Theta\) during the singleton-law calculation.
- Probability mode: almost-sure positivity under (Z), an essential-supremum statement under \(\pi_{\mu_q}\), and exact expectation/integral identities.
- Horizon mode: no temporal horizon; the only limiting operation is monotone removal of an integration cutoff at (Z=0).
- Norm mode: cube-coordinate absolute values, the conditional-density essential supremum, and \(C_{\{\mu_q\}}\).
- Required bridge or simplification obligations: Prove (K(z)=1/[R(2|z|/R)^q]) for \(z\neq0\); prove every cap level is exceeded on a positive-(Z)-measure neighborhood; compute the improper integral as (1/[R(1-q)]); and substitute it into R1 without asymptotic notation.
- Baseline invariance obligations: The witness must be proved outside the cited full-rank affine-latent class using affine-hull dimension and within-hull absolute continuity, not curvature alone. The parent baseline remains valid on its own class; the new theorem strictly changes coverage rather than claiming a stronger version of the parent's affine theorem.

No polynomial-rate objective is present. In particular, neither the degree of (B^{d-1}) nor \(\bar\kappa_{\mathcal D}\)'s possible dependence on (d,R) is claimed to be uniformly polynomial over an indexed family.

## Assumption Provenance Objectives

The target is unconditional under the primitive assumptions in `setting.md`; it uses no trajectory-dependent event, recurrence, basin, or stability assumption. The static outputs that are generated and then consumed are:

| Needed fact or output | Provenance class | Primitive source | Producer | Consumers |
| --- | --- | --- | --- | --- |
| Finite deterministic derivative envelope and midpoint intercept slab | derived | Basic monic polynomial, cube support, compact \(\Theta\), and positive-length interval | `step_001` | `step_002`, `step_007` |
| Per-law bound \(\Pr_\mu(Z_\alpha\cap I\neq\varnothing)\leq L\lvert I\rvert\int K_\mu d\pi_\mu\) and class bound R1 | derived | `assump:averaged-intercept-density` plus `step_001` | `step_002` | `step_003`, `step_005`, `step_007`, final theorem |
| Random-intercept conditional density, cap, averaged envelope, and fixed-width certificate | derived | `assump:random-intercept-witness` | `step_003` | `step_004`, `step_007`, final theorem |
| Reusable conditional-uniform identity for one random-intercept construction | local conditional lemma | Measurable \(G,\rho\), independent \(U\sim\operatorname{Unif}[-1,1]\), and \(\rho>0\) on the conditioned fiber; `step_004` proves these conditions for \(\mu_q\) | `step_003` | `step_004` |
| Exact topological sheet support, cube support, almost-sure positive scale, and exact conditional law for \(\mu_q\) | derived | Explicit \(Z,U,\rho_q,\beta_q\) definition in the basic setting | `step_004` | `step_005`, `step_006`, `step_007`, final theorem |
| Infinite pointwise cap, exact finite averaged cap, and singleton (C) bound | derived | `step_004`, \(q\in(0,1)\), and R1 | `step_005` | `step_007`, final theorem |
| Three-dimensional affine hull, zero within-hull volume, and affine-baseline exclusion | derived | `step_004` support plus the cited baseline's full-rank affine convention | `step_006` | `step_007`, final theorem comparison |
| Joint-density baseline specialization | derived comparison, not a main-theorem assumption | Optional comparison premise \(h_\mu\leq\kappa_{\mathrm{joint}}\) | `step_007` | final comparison only |

The only local conditional hypothesis is the explicitly listed single-construction density lemma in `step_003`. It is not a theorem-facing assumption: `assump:random-intercept-witness` discharges it for the general class, and `step_004` separately proves it for \(\mu_q\) before use. No local conditional hypothesis survives into the unconditional final theorem.

## Mechanism-Source And Boundary Stress

### Witness for `step_001`

- Step ID: `step_001`
- Claim class: deterministic root-event localization and explicit Lipschitz upper control.
- Theorem role: Converts the continuum root-hitting event into one conditional intercept interval of controlled length.
- Mechanism source: Direct mean-value derivation in the exact setting convention \(\phi_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k\), with \(L_{d,R,\Theta}\) defined using the ordinary absolute derivative over the same coefficient cube and parameter domain. The source and branch conventions coincide; no cited theorem wrapper, transformed object, or reference metric is involved.
- Source-to-claim adequacy: If \(\theta_*\in I\) is any root, (m_I) is an interior point of every positive-length interval regardless of endpoint convention, the closed segment between \(\theta_*\) and (m_I) lies in \(I\subseteq\Theta\), and the mean-value theorem gives \(|\phi_\alpha(m_I)|\leq L|m_I-\theta_*|\leq L|I|/2\). Since \(\alpha_0\) enters additively, this is exactly an intercept interval of length (L|I|). Multiple and tangent roots do not change the implication.
- Residual-to-target adequacy: Produced control is the midpoint slab; consumed target is the root event under set inclusion. The exact residual is \(\phi_\alpha(m_I)-\phi_\alpha(\theta_*)\), controlled in absolute value by (L|I|/2), which is exactly the required slab radius. There is no uncontrolled residual or surrogate-target mismatch.
- Key positive/control term or structural source: The finite derivative envelope \(L_{d,R,\Theta}\leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}\).
- Opposing defect terms: Endpoint exclusion, a root arbitrarily close to an endpoint, and zero derivative at a multiple root. They produce no extra term because only the global derivative upper bound and \(|m_I-\theta_*|\leq|I|/2\) are used.
- Closure/dominance/absorption relation: Exact set inclusion \(\{Z_\alpha\cap I\neq\varnothing\}\subseteq\{|\phi_\alpha(m_I)|\leq L|I|/2\}\); no absorption.
- Accumulation behavior / scope compatibility: No repeated or limiting scope is present. Each law/interval/root witness is handled by one segment inequality, and the same deterministic (L) is valid simultaneously because its supremum is taken before any probability or class supremum.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The slab is produced directly from the primitive polynomial and (L) before `step_002` consumes it; dependency path `step_001 -> step_002 -> step_007` does not assume root anti-concentration.
- Entry-state / first-update stress result: The entry-state gate does not apply because there is no recursive, iterative, or initialized process. The relevant boundary trace is direct: for open, closed, and half-open (I), \(m_I\in I\), and any admitted endpoint-near root yields the same first and only mean-value segment.
- Baseline conclusion preserved: N/A because this row supplies the common deterministic localization, not a baseline specialization; the comparison is in `step_007`.
- Producer-consumer provenance: Basic setup produces (L); `step_001` exports the slab to `step_002`, and `step_002` exports the probability bound to final assembly.
- Null or boundary regime tested: (d=1) (empty higher tuple and (L=1)); arbitrary endpoint conventions; tangencies and repeated roots; positive-length intervals only.
- Target conclusion false or theorem-critical obstruction present if source vanishes: The derivative-control source cannot vanish over a positive-length interval for the monic nonconstant polynomial family. If no finite derivative envelope were available, the slab length would be unsupported, but compactness and the displayed primitive bound exclude that regime.
- Repair route if source is unsupported: None; all source quantities are primitive and finite under the setting.

### Witness for `step_002`

- Step ID: `step_002`
- Claim class: conditional-to-unconditional integration, class-uniform finite upper bound, and exact quantitative closure.
- Theorem role: Proves the main general theorem R1.
- Mechanism source: Primitive `assump:averaged-intercept-density`, the `step_001` slab, and the standard Tonelli/tower identity in the exact convention that \(f_\mu(a_0\mid\beta)\) is jointly measurable, extended by zero, and \(K_\mu\) is a Lebesgue essential supremum for \(\pi_\mu\)-almost every \(\beta\).
- Source-to-claim adequacy: For the measurable interval \(J_I(\beta)\) exported by `step_001`, disintegration gives \(\Pr(\alpha_0\in J_I(\beta))=\int\int\mathbf1\{a_0\in J_I(\beta)\}f_\mu(a_0\mid\beta)\,da_0\,\pi_\mu(d\beta)\). The inner integral is at most \(K_\mu(\beta)L|I|\), including extended-value interpretation on a null set. Tonelli applies to the nonnegative integrand, and integrability of \(K_\mu\) makes the final bound finite.
- Residual-to-target adequacy: The root target is transferred through the exact `step_001` set inclusion. The only residual is the interval width (L|I|), and every conditional slice is controlled at exactly that scale by \(K_\mu(\beta)\); no pointwise-in-\(\beta\) uniform cap is required or left over.
- Key positive/control term or structural source: The primitive finite average \(\int K_\mu d\pi_\mu\leq\bar\kappa_{\mathcal D}\).
- Opposing defect terms: \(K_\mu\) may be arbitrarily large or infinite on a \(\pi_\mu\)-null set; \(\pi_\mu\) may be singular/discrete; conditional densities are only defined almost everywhere. Measurability and nonnegative integration handle version/null-set issues, while the averaged envelope controls the only nonnull defect.
- Closure/dominance/absorption relation: \(\Pr_\mu(\text{root in }I)\leq L|I|\int K_\mu d\pi_\mu\leq L|I|\bar\kappa_{\mathcal D}\), followed by division by (|I|>0) and both suprema. No dropped term or hidden constant.
- Accumulation behavior / scope compatibility: Integration over \(\beta\) and suprema over laws/intervals are static quantifier operations, not repeated dynamics. The potentially unbounded nonnegative forcing \(K_\mu\) has the concrete finite budget \(\int K_\mu d\pi_\mu\leq\bar\kappa_{\mathcal D}\); each slice is charged \(L|I|K_\mu(\beta)\), and Tonelli sums exactly those charges once.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The budget is the coefficient-side primitive `assump:averaged-intercept-density`, defined without roots. Path `assump -> step_002 -> final theorem` is noncircular.
- Entry-state / first-update stress result: N/A because no algorithm, recursion, trajectory, or mode conversion occurs; conditioning is a one-shot disintegration of the original law.
- Baseline conclusion preserved: The exact all-law/all-interval conclusion is produced. The bounded-joint-density specialization is deferred to `step_007` and will not weaken it.
- Producer-consumer provenance: `step_001` produces \(J_I(\beta)\); the primitive assumption produces \(f_\mu,K_\mu,\bar\kappa\); `step_002` produces R1 for `step_003`, `step_005`, `step_007`, and final assembly.
- Null or boundary regime tested: \(K_\mu=\infty\) only on a null set is harmless; infinite \(K_\mu\) on positive \(\pi_\mu\)-mass would contradict the finite primitive budget. (d=1) reduces to ordinary intercept density.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without conditional intercept anti-concentration, an intercept atom can force a fixed root and make \(C_{\mathcal D}=\infty\); the proof does not claim otherwise.
- Repair route if source is unsupported: None under the formalized assumption; absence of the assumption is outside this sufficient theorem, not a hidden proof obligation.

### Witness for `step_003`

- Step ID: `step_003`
- Claim class: constructive conditional-density certificate, slice cap, class integrability, and fixed-width specialization.
- Theorem role: Verifies R1 from independently checkable random-intercept structure.
- Mechanism source: First, a local conditional lemma uses measurable \(G,\rho\), independent \(U\sim\operatorname{Unif}[-1,1]\), and \(\rho>0\) on the conditioned fiber; independence and the affine change \(u\mapsto G(\beta)+\rho(\beta)u\) give the exact conditional uniform law. Primitive `assump:random-intercept-witness` then discharges these local conditions almost surely and adds the support and reciprocal-integrability controls. Source convention matches the branch's conditional-on-\(\beta\) intercept density and cube support.
- Source-to-claim adequacy: For almost every \(\beta\) with \(\rho_\mu(\beta)>0\), the conditional density is \(\mathbf1\{|a_0-G_\mu(\beta)|\leq\rho_\mu(\beta)\}/[2\rho_\mu(\beta)]\), so its essential supremum is exactly \(1/[2\rho_\mu(\beta)]\). Measurability follows from measurable \(G_\mu,\rho_\mu\); \(|G_\mu|+\rho_\mu\leq R\) places the entire slice in ([-R,R]); and \(M_{\mathrm{RI}}<\infty\) gives the class envelope.
- Residual-to-target adequacy: Produced object and consumed object are the same conditional law of the actual intercept \(\alpha_0\); there is no surrogate. The exact identity leaves no residual, and `step_002` consumes its exact (K) at the required interval-width scale.
- Key positive/control term or structural source: Almost-sure \(\rho_\mu>0\), independence of \(U_\mu\), and the reciprocal-width budget \(M_{\mathrm{RI}}\).
- Opposing defect terms: Small \(\rho_\mu\) can make the slice cap large; singular/dependent \(\beta\) prevents any ambient joint-density argument. The exact reciprocal integral, not a pointwise width lower bound, controls the first defect; conditioning leaves the second irrelevant.
- Closure/dominance/absorption relation: \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}=\sup_\mu(1/2)\int\rho_\mu^{-1}d\pi_\mu\leq M_{\mathrm{RI}}/2\), hence R1 gives \(C_{\mathcal D_{\mathrm{RI}}}\leq L M_{\mathrm{RI}}/2\). For \(\rho_\mu\equiv r_\mu\), \(K=1/(2r_\mu)\) exactly.
- Accumulation behavior / scope compatibility: The only class accumulation is the explicitly finite reciprocal-width budget; each law contributes one nonnegative integral and the class supremum is already part of \(M_{\mathrm{RI}}\). No persistent or iterative defect exists.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `assump:random-intercept-witness` is checkable before roots are generated; `step_003` proves `assump:averaged-intercept-density` for this class and only then invokes `step_002`.
- Entry-state / first-update stress result: N/A because the construction is static. The relevant degeneracy trace is \(\rho=0\): it is excluded almost surely before the conditional density is consumed.
- Baseline conclusion preserved: R1 is inherited exactly with factor \(M_{\mathrm{RI}}/2\), not replaced by a pointwise-cap or conditional-only surrogate.
- Producer-consumer provenance: Primitive random-intercept data -> `step_003` conditional certificate -> `step_002` theorem interface -> final specialization; `step_004` reuses the conditional-uniform calculation.
- Null or boundary regime tested: Fixed \(r_\mu>0\); widths approaching zero across \(\beta\); arbitrary singular/dependent \(\pi_\mu\); null sets where a chosen version may be defined arbitrarily.
- Target conclusion false or theorem-critical obstruction present if source vanishes: If \(\rho=0\) on positive mass, the intercept acquires an atom and the density certificate fails; the primitive almost-sure positivity and finite reciprocal budget exclude this regime.
- Repair route if source is unsupported: None for the declared class; a class with positive-mass zero widths would require a different theorem contract.

### Witness for `step_004`

- Step ID: `step_004`
- Claim class: explicit support, almost-sure positivity, and conditional-law certificate for the heteroscedastic witness.
- Theorem role: Supplies the structural producer needed before the singular cap calculation and affine-baseline comparison.
- Mechanism source: Direct derivation from \(Z\sim\operatorname{Unif}[-R/2,R/2]\), independent \(U\sim\operatorname{Unif}[-1,1]\), \(\rho_q(z)=(R/2)(2|z|/R)^q\), and \(\beta_q(z)=(z,z^2/R,0,\ldots,0)\). The first \(\beta\) coordinate equals (Z), so conditioning on \(\beta\) identifies (Z) exactly; no inverse ambiguity or transformed target remains.
- Source-to-claim adequacy: \(|\alpha_0|\leq R/2\), \(|\alpha_1|\leq R/2\), \(0\leq\alpha_2\leq R/4\), and remaining coordinates vanish, proving cube support. The continuous map \((z,u)\mapsto(\rho_q(z)u,z,z^2/R,0,\ldots,0)\) maps the compact support \([-R/2,R/2]\times[-1,1]\) of \((Z,U)\) onto the displayed sheet; continuity and full support of the latent rectangle therefore show that the sheet is the exact topological support of \(\mu_q\), not merely a containing set. \(\rho_q(z)=0\) iff (z=0), a null event. Given \(\beta=\beta_q(z)\), the actual intercept is uniform on \([-\rho_q(z),\rho_q(z)]\), so `step_003`'s local density identity applies.
- Residual-to-target adequacy: Produced conditional object is exactly the law of \(\alpha_0^{(q)}\) given its actual \(\beta_q(Z)\); equality of (Z) with the first higher coefficient is the same-target bridge. There is no population/reference residual.
- Key positive/control term or structural source: (R>0), (q>0), the nonatomic uniform law of (Z), and independent uniform (U).
- Opposing defect terms: The width vanishes at (z=0), and the nonlinear (z^2/R) coordinate makes the ambient coefficient law singular. The first is confined to a null conditioning fiber; the second is allowed by both the theorem and `step_003`.
- Closure/dominance/absorption relation: Coordinatewise support inequalities plus \(\Pr(Z=0)=0\) discharge the support/positivity interface before the density formula is consumed.
- Accumulation behavior / scope compatibility: No repeated scope. Support and positivity are pointwise/a.s. statements for one explicit draw, with the sole exceptional set ({Z=0}) having exactly zero probability.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The explicit construction produces support and positivity independently of any root event; paths `step_004 -> step_005` and `step_004 -> step_006` are noncircular.
- Entry-state / first-update stress result: No iterative entry exists. At the only degenerate state (Z=0), the width is zero, but this state has zero probability and is not consumed by an almost-everywhere conditional density statement; every \(Z\neq0\) activates positive width immediately.
- Baseline conclusion preserved: N/A for this producer; affine-baseline comparison is `step_006`.
- Producer-consumer provenance: Explicit law definition -> `step_004` support/density certificate -> `step_005` quantitative integration and `step_006` support geometry.
- Null or boundary regime tested: (Z=0), (|Z|=R/2), (d=3) with no remaining coordinates, and all \(R>0,q\in(0,1)\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Positive width is false at (Z=0), but the theorem claims it only almost surely. If (Z) had an atom there, the conditional-density conclusion could fail; the uniform source excludes that regime.
- Repair route if source is unsupported: None.

### Witness for `step_005`

- Step ID: `step_005`
- Claim class: infinite essential supremum, exact finite average, and explicit singleton root-hitting bound.
- Theorem role: Demonstrates strict improvement over any pointwise conditional cap while completing the quantitative witness R3.
- Mechanism source: Direct one-dimensional integration under the uniform (Z) law, using the `step_004` identity (K(z)=1/[R(2|z|/R)^q]) for \(z\neq0\), and `step_002` for the final root bound.
- Source-to-claim adequacy: For every finite (M), a sufficiently small positive-radius neighborhood of zero has (K(z)>M) and positive (Z)-probability, proving the essential supremum is infinite. Symmetry and (t=2|z|/R) give \(\mathbb E K=(1/R)\int_0^1t^{-q}dt=1/[R(1-q)]\), finite exactly because (q<1).
- Residual-to-target adequacy: The averaged cap computed is the exact \(\bar\kappa\) consumed by R1 for the singleton law; substituting it leaves no truncation residual and yields the target (L/[R(1-q)]) scale.
- Key positive/control term or structural source: Positive uniform mass in every neighborhood of zero proves unboundedness, while the integrability margin (1-q>0) controls total singular mass.
- Opposing defect terms: The cap diverges as (|z|^{-q}). With cutoff \(\varepsilon\), the omitted central contribution is explicitly proportional to \((2\varepsilon/R)^{1-q}/[R(1-q)]\), which tends to zero; no pointwise domination is claimed.
- Closure/dominance/absorption relation: Monotone convergence of the nonnegative truncated integrals and the exact identity \(\int_0^1t^{-q}dt=1/(1-q)\), followed by `step_002`: \(C_{\{\mu_q\}}\leq L\mathbb EK=L/[R(1-q)]\).
- Accumulation behavior / scope compatibility: The limiting singular integral is monotone-potential controlled by its explicit primitive (t^{1-q}/(1-q)). The accumulated nonnegative forcing on \((0,\delta)\) is \(\delta^{1-q}/(1-q)\), finite for (q<1) and vanishing as \(\delta\downarrow0\); thus cutoff removal is valid and no adversarial-sign term exists.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_004` produces (K) from coefficients, direct integration produces its mean, and only afterward `step_002` converts it to root hitting; no root statistic defines the cap.
- Entry-state / first-update stress result: The gate does not apply to an iterative process. For the relevant limiting boundary \(Z\to0\), the cap mechanism becomes unbounded rather than inactive, while the explicit (q<1) integral remains finite; at \(q\uparrow1\) the budget diverges and the theorem intentionally excludes the endpoint.
- Baseline conclusion preserved: The exact general-theorem conclusion is retained with the computed cap; no finite pointwise-cap surrogate is inserted.
- Producer-consumer provenance: `step_004` -> `step_005` exact cap and integral -> `step_007` and final theorem.
- Null or boundary regime tested: (Z=0), every finite cap threshold, \(q\downarrow0\) (the unboundedness would disappear at the excluded endpoint (q=0)), \(q\uparrow1\) (integrability fails at the excluded endpoint), and all (R>0).
- Target conclusion false or theorem-critical obstruction present if source vanishes: If \(1-q\leq0\), the averaged cap is infinite and R1 gives no finite witness bound; the primitive range \(q\in(0,1)\) supplies the strict integrability margin.
- Repair route if source is unsupported: None within the declared range.

### Witness for `step_006`

- Step ID: `step_006`
- Claim class: support geometry and rigorous exclusion from a cited baseline class.
- Theorem role: Establishes that the heteroscedastic example is genuinely beyond the affine-latent bounded-density baseline rather than merely ambiently singular.
- Mechanism source: The support from `step_004` and Balcan--Dick--Pegden, *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Appendix Theorem 18's opening affine-transformation generalization (cached at `<TEMP_ROOT>/semibandit-audit.YWhVeD/dispersionToolAppendix.tex`, theorem and proof opening). The source assumes a bounded \(a\in\mathbb R^k\) with Lebesgue density bounded by \(\kappa\), an affine map with full column rank as used by (det(A^TA)>0) and the statement that its image has dimension (k), and a non-forced-root condition. Its output is a root-hitting bound for laws absolutely continuous in that (k)-dimensional affine image. Coordinate ordering and the fixed monic leading coordinate do not change affine dimension.
- Source-to-claim adequacy: This step does not invoke the baseline bound; it checks nonmembership in its input class. The projected points ((-R/2,R/4),(0,0),(R/2,R/4)) are noncollinear, so the curved \((\alpha_1,\alpha_2)\) projection spans two affine dimensions. At any \(z\neq0\), the two intercept endpoints differ in the \(\alpha_0\) direction, hence the sheet's affine hull has dimension three. But the sheet obeys the exact equation \(\alpha_2=\alpha_1^2/R\) and is a Lipschitz image of a subset of the ((a_0,z))-plane, so it has zero three-dimensional Lebesgue/Hausdorff measure in that affine hull. A full-rank affine image of an absolutely continuous (k)-dimensional latent probability has affine hull dimension (k) and is absolutely continuous with respect to (k)-volume there. Equality with \(\mu_q\) would force (k=3), contradicting concentration on the zero-three-volume sheet.
- Residual-to-target adequacy: The produced object is the actual support/essential support of \(\mu_q\), and the consumed baseline interface is exact equality in law under an affine pushforward. The comparison is dimension- and measure-exact; there is no approximation, transformed metric, or residual.
- Key positive/control term or structural source: Noncollinearity of the three projected support points, a nonzero intercept fiber for any \(z\neq0\), and absolute continuity of the latent law in the full-rank affine image.
- Opposing defect terms: Curvature alone only excludes a two-dimensional affine plane and leaves a possible (k=3) representation. The zero-three-volume calculation plus latent absolute continuity excludes precisely that remaining case; \(k\neq3\) is already excluded by affine-hull dimension.
- Closure/dominance/absorption relation: \(\dim\operatorname{aff}(\operatorname{supp}\mu_q)=3\), but \(\mathcal H^3(\operatorname{supp}\mu_q)=0\); full-rank affine pushforward of an (L^1) density would require dimension (3) and absolute continuity with respect to \(\mathcal H^3\), a contradiction.
- Accumulation behavior / scope compatibility: No repeated or limiting claim. The support relation holds for the full parameter rectangle/sheet, and the dimension contradiction is global and algebraic.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Support is produced in `step_004`; the baseline source fixes the comparison convention independently; `step_006` consumes both and exports nonmembership to `step_007`.
- Entry-state / first-update stress result: N/A because neither law is generated by a recursive procedure. The boundary (z=0) is included in the support, but nonzero (z) fibers and three noncollinear projected points already activate the full affine-hull argument.
- Baseline conclusion preserved: The cited affine-latent theorem is not weakened or contradicted. The step proves its hypotheses do not represent \(\mu_q\), while the new R1 conclusion supplies a finite bound for \(\mu_q\).
- Producer-consumer provenance: `step_004` support + cited baseline convention -> `step_006` exclusion -> `step_007` comparison and final materiality statement.
- Null or boundary regime tested: (d=3); fixed leading monic coordinate; (R>0); the collapsed width at (z=0); possible latent dimensions (k=1,2,3), and (k>3).
- Target conclusion false or theorem-critical obstruction present if source vanishes: Without latent absolute continuity/full rank, a singular three-dimensional latent distribution could be concentrated on a nonlinear preimage, so curvature alone would not prove exclusion. Those properties are part of the cited baseline convention and are essential to this comparison.
- Repair route if source is unsupported: None; the cached primary source exposes the required full-rank volume convention. If a broader baseline allowed singular latent laws, the present exclusion claim would have to be relabeled to that narrower cited baseline rather than strengthened.

### Witness for `step_007`

- Step ID: `step_007`
- Claim class: exact theorem closure, source-scope preservation, and baseline-reduction comparison.
- Theorem role: Assembles every general and constructive conclusion while keeping the theorem explicitly sufficient only.
- Mechanism source: Accepted outputs of `step_002`, `step_003`, `step_004`, `step_005`, and `step_006`, plus a direct joint-density disintegration comparison. If a joint coefficient density \(h(a_0,\beta)\leq\kappa_{\mathrm{joint}}\) has marginal density \(g(\beta)\), then on ({g>0}), \(f(a_0\mid\beta)=h(a_0,\beta)/g(\beta)\), hence \(g(\beta)K(\beta)\leq\kappa_{\mathrm{joint}}\); integration over ([-R,R]^{d-1}) yields \(\bar\kappa\leq\kappa_{\mathrm{joint}}(2R)^{d-1}\).
- Source-to-claim adequacy: Dependencies provide every clause of the exact goal. The direct comparison uses the same coefficient ordering and Lebesgue conventions; for (d=1), the higher-coordinate volume is ((2R)^0=1). With (B=1), \(\sum_{k=1}^{d-1}k=d(d-1)/2\), giving the source monic constant.
- Residual-to-target adequacy: Every dependency addresses the actual theorem objects. The joint-density comparison has no residual: \(gK\leq\kappa_{\mathrm{joint}}\) pointwise almost everywhere and the only integration domain has volume ((2R)^{d-1}). No affine-baseline constant is asserted for \(\mu_q\), because `step_006` proves it is outside that class.
- Key positive/control term or structural source: R1's exact class-uniform inequality, the reciprocal-width and (q<1) budgets, and the dimension/absolute-continuity contradiction.
- Opposing defect terms: Possible temptation to take a pointwise \(\sup_\beta K\), claim a converse, infer polynomial dependence, or call all singular laws new. The dependency outputs respectively show averaging, sufficient-only scope, no polynomial objective, and exact separation only for the nonlinear witness.
- Closure/dominance/absorption relation: Direct conjunction/substitution of dependency conclusions; the only simplification is the exact finite sum \(\sum_{k=1}^{d-1}k=d(d-1)/2\) under (B=1).
- Accumulation behavior / scope compatibility: Final law and interval suprema are already closed by `step_002`; no new accumulated defect is introduced in assembly. Each generated output is consumed once along the declared DAG.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Dependency order is `step_001 -> step_002 -> step_003/step_005`, `step_003 -> step_004 -> step_005/step_006`, then `step_007`; no conclusion is used to establish its producer.
- Entry-state / first-update stress result: N/A because final closure is static theorem assembly, not a recursive or exact/noiseless process. Boundary regimes were discharged in their producer steps before assembly.
- Baseline conclusion preserved: Under the additional joint-density comparison premise, the argument recovers \(\kappa_{\mathrm{joint}}(2R)^{d-1}[d+Rd(d-1)/2]\) when (B=1). The affine-latent parent conclusion remains untouched on its class, while \(\mu_q\)'s nonmembership is proved rather than assumed.
- Producer-consumer provenance: `step_002`, `step_003`, `step_004`, `step_005`, `step_006` -> `step_007` -> final theorem and comparison paragraphs.
- Null or boundary regime tested: (d=1) for the general/fixed-width theorem; (d=3) minimal witness degree; \(q\in(0,1)\); (R>0); arbitrary interval endpoints; singular \(\beta\); no necessity or polynomial-rate regime.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Omitting any dependency would remove a stated theorem clause, so assembly cannot manufacture it. All dependencies have primitive or direct sources under the unchanged theorem contract.
- Repair route if source is unsupported: None.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| \(J_I(\beta)\) intercept interval of length at most \(L\lvert I\rvert\) containing every root-hitting coefficient slice | `step_001` | Monic additive intercept, cube support, compact \(\Theta\), derivative envelope, interval midpoint | Endpoint convention and multiple roots are controlled exactly; no uncontrolled class | Root event is included in the actual midpoint slab; residual \(\phi(m)-\phi(\theta_*)\) is at most \(L\lvert I\rvert/2\), exactly the target radius | Mean-value inequality and \(\lvert m-\theta_*\rvert\leq\lvert I\rvert/2\) | Finite \(L\) from displayed primitive derivative bound; positive interval length | `step_002`, `step_007` | None |
| Per-law bound and R1 class bound \(C_{\mathcal D}\leq\bar\kappa_{\mathcal D}L\) | `step_002` | `step_001`; jointly measurable conditional density and \(K\); finite averaged envelope | Unbounded slice caps are controlled by their integral; null-set infinities are harmless; positive-mass nonintegrability is excluded by the primitive assumption | Exact actual-law disintegration; each root slice is charged at the required \(L\lvert I\rvert\) scale; no surrogate | Inner density integral is at most \(K(\beta)L\lvert I\rvert\), then \(\int Kd\pi\leq\bar\kappa\); exact division by \(\lvert I\rvert>0\) | Primitive finite averaged envelope | `step_003`, `step_005`, `step_007`, final theorem | None |
| Random-intercept density, \(K=1/(2\rho)\), \(\bar\kappa\leq M_{\mathrm{RI}}/2\), and fixed-width specialization | `step_003` | `assump:random-intercept-witness`: independence, \(\rho>0\) a.s., support inequality, reciprocal-width budget | Small widths controlled only in average; arbitrary singular/dependent \(\beta\) needs no ambient density; zero width on positive mass is excluded | Produced conditional law is the actual intercept law; exact identity, no residual | Uniform change of variables; \((1/2)\int\rho^{-1}d\pi\leq M_{\mathrm{RI}}/2\) | Positive width and finite reciprocal-width budget | `step_004`, `step_007`, final theorem | None |
| \(\mu_q\) cube support, a.s. positive width, sheet support, and exact conditional cap formula | `step_004` | Explicit \(Z,U,\rho_q,\beta_q\) and `step_003` local uniform-density calculation | Null collapse at (Z=0) is controlled by nonatomicity; ambient singularity is allowed; no uncontrolled support coordinate | First \(\beta\) coordinate equals (Z), so conditioning target is exact; no inverse or reference residual | Coordinate inequalities and \(\Pr(Z=0)=0\) | (R>0,q>0), uniform (Z) | `step_005`, `step_006` | None |
| Infinite essential slice cap, exact \(\bar\kappa=1/[R(1-q)]\), and \(C_{\{\mu_q\}}\leq L/[R(1-q)]\) | `step_005` | `step_004`, uniform (Z), \(q\in(0,1)\), R1 | Pointwise divergence is intentionally uncontrolled; its nonnegative accumulated mass is exactly finite for (q<1); (q=1) is excluded | Computed cap is exactly the R1 input for the actual singleton law; cutoff residual tends to zero as \(\delta^{1-q}\) | \(\int_0^1t^{-q}dt=1/(1-q)\), monotone cutoff removal, direct substitution into R1 | Integrability margin (1-q>0) | `step_007`, final theorem | None |
| Nonmembership of \(\mu_q\) in cited full-rank bounded-density affine-latent class | `step_006` | `step_004` sheet; cited baseline's full-rank affine map and latent absolute continuity | Curvature controls (k=2); zero three-volume controls the otherwise-uncontrolled (k=3) possibility; other (k) fail affine-hull dimension | Exact equality-in-law comparison on actual support; no metric residual | Affine hull dimension (3) plus \(\mathcal H^3(S)=0\) contradicts full-rank affine pushforward absolute continuity | Noncollinear projected points, nonzero intercept fibers, latent Lebesgue density | `step_007`, final comparison | None |
| Exact final theorem, fixed-width and heteroscedastic clauses, sufficient-only scope, and joint-density baseline reduction | `step_007` | All earlier exports; optional comparison density \(h\leq\kappa_{\mathrm{joint}}\) | Converse/polynomial/transversality claims are excluded rather than uncontrolled; joint-density comparison controls only its declared comparison class | All final objects are actual theorem targets; \(gK\leq\kappa_{\mathrm{joint}}\) has no transfer residual | Dependency conjunction; \(\bar\kappa\leq\kappa_{\mathrm{joint}}(2R)^{d-1}\); exact finite-sum specialization for (B=1) | Primitive assumptions and accepted derived outputs | Final theorem/assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Derivative envelope and midpoint intercept-slab certificate | `step_001`, direct primitive-source derivation in the exact polynomial convention | `step_002`, `step_007` | Converts root hitting to coefficient anti-concentration uniformly over endpoint conventions | Basic setup -> `step_001` -> `step_002` -> `step_007` | derived | None |
| General per-law and class root-hitting bound R1 | `step_002`, using `assump:averaged-intercept-density` and `step_001` | `step_003`, `step_005`, `step_007`, final theorem | Main sufficient finiteness conclusion and specialization engine | `assump:averaged-intercept-density` + `step_001` -> `step_002` -> consumers | derived | None |
| Random-intercept averaged-envelope and fixed-width certificate | `step_003`, using `assump:random-intercept-witness` | `step_004`, `step_007`, final theorem | Proves the constructive class satisfies the general primitive condition and receives the same conclusion | Primitive RI source -> `step_003` -> `step_007`; local formula -> `step_004` | derived | None |
| Exact heteroscedastic sheet support, positivity, and actual conditional cap | `step_004`, direct explicit-law derivation | `step_005`, `step_006`, `step_007`, final theorem | Establishes nonvacuity, supplies both quantitative and geometric witness inputs, and proves the support/positivity clauses of the final theorem | Explicit law -> `step_004` -> `step_005`/`step_006` and `step_004` -> `step_007` -> final theorem | derived | None |
| Exact finite averaged cap and singleton (C) bound despite infinite pointwise cap | `step_005` | `step_007`, final theorem | Strict pointwise-cap separation and explicit witness conclusion | `step_004` + `step_002` -> `step_005` -> `step_007` | derived | None |
| Affine-hull/within-hull-volume exclusion certificate | `step_006`, using `step_004` and the cited baseline convention | `step_007`, final comparison | Shows the witness lies beyond the affine-latent baseline in the precise cited sense | `step_004` + baseline source -> `step_006` -> `step_007` | derived | None |
| Joint-density ambient-volume comparison | `step_007`, direct comparison under an explicitly additional baseline premise | Final comparison only | Recovers the known scale without imposing the comparison premise on the new theorem | Optional joint-density premise -> `step_007` -> final comparison | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove the displayed finite bound on \(L_{d,R,\Theta}\). For every positive-length interval \(I\) of any endpoint type and every \(\alpha\), prove that a root \(\theta_*\in I\) implies \(\lvert\phi_\alpha(m_I)\rvert\leq L\lvert I\rvert/2\), equivalently \(\alpha_0\in J_I(\beta)\) for a measurably centered interval of length at most \(L\lvert I\rvert\). Prove the root event is Borel by compact exhaustion of \(I\). Cover \(d=1\), endpoint-near roots, and multiple/tangent roots. | None | Primitive basic setup only; no technical assumption | Preserve the exact factor; justify the segment/midpoint and event/slab measurability for arbitrary endpoint conventions without a measurable root-selection claim | Direct derivative triangle bound, one-dimensional mean-value theorem, and compact exhaustion/projection in current notation | Measurable deterministic midpoint intercept-slab interface | R1: exact \(L\lvert I\rvert\) width and explicit \(d,R,B\) dependence | PENDING |
| `step_002` | For each \(\mu,I\), integrate the conditional density over \(J_I(\beta)\), use Tonelli/tower property with possibly unbounded random \(K_\mu(\beta)\), and prove \(\Pr_\mu(\text{root in }I)\leq L\lvert I\rvert\int K_\mu d\pi_\mu\leq L\lvert I\rvert\bar\kappa_{\mathcal D}\); then take both suprema to obtain R1. | `step_001` | Primitive `assump:averaged-intercept-density`; derived slab from `step_001` | Joint measurability, essential-supremum versions, null-set infinities, and correct order of integration and class supremum | Regular conditional-density disintegration and Tonelli for a nonnegative integrand, restated in current notation | General all-law/all-interval theorem \(C_{\mathcal D}\leq\bar\kappa_{\mathcal D}L\) | R1: exact coefficient one; no hidden constant or pointwise-cap substitution | PENDING |
| `step_003` | First prove a reusable local lemma: measurable \(G,\rho\), independent \(U\sim\operatorname{Unif}[-1,1]\), and positive \(\rho\) give the exact conditional density and \(K=1/(2\rho)\). Then use `assump:random-intercept-witness` to prove joint measurability and cube support, \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}\leq M_{\mathrm{RI}}/2\), the R1 conclusion, and the fixed-width formula \(K=1/(2r_\mu)\) with the required class-uniform reciprocal-width condition. | `step_002` | Primitive `assump:random-intercept-witness`; explicit local conditional hypotheses for the reusable lemma; R1 from `step_002` is a derived dependency, not an assumption | Keep the density identity valid only where \(\rho>0\), discharge that a.e. condition, and avoid requiring any density for \(\beta\) | Conditional affine change of a uniform variable plus direct integration | Reusable conditional-uniform lemma and general/fixed-width random-intercept specialization | R2: exact factor \(1/2\), explicit \(M_{\mathrm{RI}}\) and \(r_\mu\) dependence | PENDING |
| `step_004` | For \(\mu_q\), prove that the displayed sheet is its exact topological support and lies in the coefficient cube, prove \(\rho_q(Z)>0\) almost surely, identify \(Z\) from the first higher coefficient, discharge the local hypotheses of `step_003`, and derive \(K_{\mu_q}(\beta_q(z))=1/[R(2\lvert z\rvert/R)^q]\) for \(z\neq0\). | `step_003` | Primitive explicit \(\mu_q\) definition and ranges \(d\geq3,R>0,q\in(0,1)\); local conditional-uniform identity from `step_003` after its hypotheses are proved in this step | Establish exact support rather than mere containment, and handle the collapsed slice at the null value \(z=0\) without treating it as a positive-mass conditional law | Continuous-image support theorem for the full-support compact latent rectangle, coordinatewise inequalities, nonatomicity of uniform \(Z\), and the current-notation conditional-uniform lemma | Exact heteroscedastic support and conditional-law certificate | R3 preliminary: exact cap formula and all coordinate dependence | PENDING |
| `step_005` | Prove \(\operatorname*{ess\,sup}_\beta K_{\mu_q}(\beta)=\infty\), compute \(\int Kd\pi=1/[R(1-q)]\) exactly by cutoff/monotone convergence, and conclude \(C_{\{\mu_q\}}\leq L/[R(1-q)]\). | `step_002`, `step_004` | Derived R1 from `step_002` and cap/support certificate from `step_004`; no new assumption | Simultaneously prove pointwise unboundedness and average integrability, with exact normalization under the uniform \(Z\) density | Positive-measure neighborhoods, substitution \(t=2\lvert z\rvert/R\), monotone convergence, exact power integral | Complete quantitative heteroscedastic witness | R3: exact \(R,q,L\) dependence and cutoff elimination | PENDING |
| `step_006` | Prove the witness sheet has affine hull dimension (3) from its curved two-dimensional projection plus a nonzero intercept direction, but zero (3)-volume inside that hull; use the cited baseline's full-rank affine-map and absolutely continuous latent-law convention to rule out every latent dimension. | `step_004` | Derived support from `step_004`; cited baseline assumptions only for comparison | Close the (k=3) loophole left by curvature alone and accurately map the baseline's coefficient/latent conventions | Noncollinearity, affine-hull dimension, Fubini or Lipschitz-image zero-volume argument; Balcan--Dick--Pegden arXiv:1904.09014 Appendix Theorem 18 opening affine generalization | Exact affine-latent nonmembership certificate | None; this is a structural coverage comparison, not a rate claim | PENDING |
| `step_007` | Assemble the exact theorem and every specialization; explicitly preserve sufficient-only/material-partial scope. As a baseline reduction, prove \(h\leq\kappa_{\mathrm{joint}}\Rightarrow\bar\kappa\leq\kappa_{\mathrm{joint}}(2R)^{d-1}\) and recover the source monic constant when (B=1). State that necessity, part (b), polynomial rates, simplicity, and transversality remain unresolved/unclaimed. | `step_002`, `step_003`, `step_004`, `step_005`, `step_006` | Derived outputs of all dependencies; optional bounded-joint-density premise used only in the comparison paragraph | Maintain every quantifier and avoid turning a comparison premise into a main-theorem assumption or overstating singular-law novelty | Direct dependency assembly, conditional-density ratio (h/g), and exact finite-sum identity | Exact formalized material-partial theorem and baseline comparison | R1, R2, R3 and the declared baseline-reduction obligation; no public simplification beyond exact identities | PENDING |

## Dependency Notes

The graph is acyclic and every edge points to an earlier step. `step_001` produces the deterministic slab before `step_002` integrates it. `step_003` uses the completed general theorem and exports a reusable conditional-uniform calculation. `step_004` specializes that calculation to the explicit law, after which `step_005` performs the singular integral and `step_006` performs the independent support-dimension comparison. `step_007` directly consumes `step_004` for the final support/positivity clauses and consumes only completed earlier outputs.

Assembly is exact: `step_002` proves the general clause; `step_003` proves the random-intercept and fixed-width clauses; `step_004` and `step_005` prove every quantitative property of \(\mu_q\); `step_006` proves the required strict affine-latent separation; and `step_007` combines them while retaining the source comparison and all explicit limitations. No derived condition is consumed before its producer, and no step relies on a root-event quantity as an assumption.

## Blockers

None. Every hard obligation has a primitive, direct, earlier-derived, or source-audited mechanism under the unchanged exact-goal setting.
