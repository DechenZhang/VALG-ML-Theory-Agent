# Global Proof Review

## Global-Proof Review Identity

- Branch path: `perspective_2/idea_1`
- Reviewer role: distinct Perspective 2 global-proof reviewer
- Sketch attempt: 1
- Global producer attempt: 1
- Reviewed `setting.md`: SHA-256 `9ce3b0bf46590c1e4cc47e6251325ad0e3eccbd686fd8289c2dc8dfc3a99fc0f`
- Reviewed `proof_sketch.md`: SHA-256 `4205a79c0f2979a4549473a4b3c7a6318dce534bc2205f36ce204fa2085370c7`
- Reviewed `proof_sketch_review.md`: SHA-256 `7dd722dad3c1803fd0df363b521612dcda7c0587dc027bf75142681ca8f1861f`
- Reviewed `global_proof.md`: SHA-256 `c345f7ef12e6508f4b46c0c6f73756fa78ea03687c21cca65bd6b5a7618032b1`
- Reviewed global proof status: `COMPLETE_DRAFT`
- Reviewed suggested routing: `None`
- Upstream gate provenance: sketch attempt 1 has `Sketch Review Status = ACCEPTED`. That acceptance is used only to authorize this review; every viability finding below was re-audited independently.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The reviewed hash matches the supplied final SHA-256. The artifact contains every required global-proof section: reviewed identity, one controlled status, attempted theorem claim, a dependency-ordered whole-proof draft, theorem-level block map, coverage of all seven sketch steps, dependency and assumption audit, citation and tool audit, quantitative dependence audit, scope and closure certificate, generated-output flow, early obstruction audit, hard-step section, diagnostic-boundary note, and suggested routing. Its additional exported-interface section is consistent with the shared contract.

`COMPLETE_DRAFT` and `Suggested Routing = None` are controlled and aligned. The whole-proof draft exposes the actual pivot identities, derivative formulas, conditional-kernel interface, event measurability construction, tower inequalities, weighted maximum, supremum operation, polynomial comparison, and witness kernels. It is therefore detailed enough to diagnose theorem-level composition rather than merely repeating sketch rows.

The diagnostic boundary is explicit and respected. Nothing in `global_proof.md` is treated here as proof evidence, a cited theorem, an assumption source, or authority to alter an accepted step. No silent repair, new assumption, changed dependency, changed output, or changed theorem mode is present.

## Claim And Sketch Fidelity Audit

The attempted claim is faithful to `setting.md` and sketch attempt 1. It fixes one finite (eta=(\bar\kappa_0,\bar\kappa_\infty)) before (d,R), retains every (d\geq1), (R\geq1), every law in the exactly defined class, and every positive-length interval in the fixed compact source domain. It preserves the deterministic per-law weighted estimate before taking the class and interval suprema.

The diagnostic preserves both quantitative targets without substitution:

\[
\bar\kappa_0 B_0 |I_0|+\bar\kappa_\infty B_\infty(|I_+|+|I_-|)
\leq \max\{\bar\kappa_0B_0,\bar\kappa_\infty B_\infty\}|I|,
\]

and then (M_\eta(d,R)\leq P_\eta(d,R)). The chart constants are combined by a weighted maximum, not by their sum. The separate hypothesis (\bar\kappa_0,\bar\kappa_\infty\geq1/2) is used only for witness membership and has no dependency path into the root-hitting bound.

The `material_partial` scope is unchanged: sufficiency on (R\geq1), no necessity claim, no coverage claim for laws lacking either endpoint mean cap, no claim for (0<R<1), and no full solution claim. The four stable setting assumptions are the only assumptions used by the general bound. The degree-one specialization preserves the same theorem rather than replacing it with a remainder, so the applicable boundary/baseline obligation is satisfied.

## Theorem-Level Structure Audit

The block order is coherent and covers all seven accepted interfaces.

- `step_001` / G1 derives the inner (\alpha_0)-pivot image-length certificate from the exact derivative of (s_0).
- `step_002` / G2 derives separate positive and negative (\alpha_{d-1})-pivot image-length certificates. On both signs,
  \[
  \partial_\theta s_\infty(\theta)
  =-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d}.
  \]
  If the negative chart is oriented by (u=-\theta>1), its derivative is
  \[
  \frac{d}{du}s_\infty(-u)
  =1-\sum_{j=0}^{d-2}(d-1-j)\alpha_j(-u)^{j-d},
  \]
  the negative of the preceding derivative at (-u). Thus the exact signs and the common absolute bound are both correct; no interval is taken across zero.
- `step_003` / G3 constructs measurable versions of both random conditional caps, proves Borel root events and sections, and fixes the legal disintegration interfaces.
- `step_004` / G4 uses (Y_0=\alpha_{1:d-1}) only for the inner pivot and (Y_\infty=\alpha_{0:d-2}) only for the outer pivot. The two sigma-fields are not conflated; they coincide only as the trivial conditioning field when (d=1).
- `step_005` / G5 takes one finite union bound and then the exact weighted maximum.
- `step_006` / G6 takes the two suprema, applies the explicit empty-index convention, and performs the fixed-(eta) polynomial comparison term by term.
- `step_007` / G7 independently proves membership of the exact witness in all three degree regimes and exports only the separately thresholded nonemptiness clause.

The resulting flow is acyclic:

\[
(\text{step_001},\text{step_002},\text{step_003})
\longrightarrow\text{step_004}
\longrightarrow\text{step_005}
\longrightarrow\text{step_006},
\]

with `step_007` independent. G0 and final assembly add no unproved mathematical output. Every named block and every accepted sketch step has an exact role, and no theorem-level block is missing.

## Dependency And Assumption Audit

The general bound consumes exactly four primitive conditions: compact source domain, indexed (d,R,eta) regime, monicity with cube support, and a.s. endpoint conditional absolute continuity with the two mean cap bounds. The (1/2) threshold is a local hypothesis of the nonemptiness clause only. No joint density, independence, a.s. uniform cap, root statistic, event membership, or preassigned finiteness of (C_{\mathcal D}) is assumed.

The measurable caps, Borel sections, image-length controls, chart probabilities, weighted estimate, class bound, and witness membership are all derived outputs with producers preceding consumers. In particular, for the inner chart the kernel is the conditional law of (\alpha_0) given (\alpha_{1:d-1}); for both outer charts it is the conditional law of (\alpha_{d-1}) given (\alpha_{0:d-2}). At (d=1), both are correctly interpreted as the unconditional law of the sole coefficient rather than as two independent sources.

Cube support implies that each pivot kernel is supported on ([-R,R]) for its own conditioning marginal almost surely. Consequently, replacing a section ([-R,R]\cap s_i(J;y)) by the full image (s_i(J;y)) changes conditional probability by zero and can only increase the Lebesgue-length bound. This is an explicit derived bridge, not an extra assumption.

There is no local conditional hypothesis used to complete the unconditional theorem. The cap version discrepancy is confined to conditioning-null fibers and has zero integrated contribution. The generated-output flow therefore satisfies both assumption provenance and noncircularity.

## Citation And Tool Audit

The PMLR 2026 open-problem source is used only for the problem convention and source scope. Balcan, Dick, and Pegden, arXiv:1904.09014, Appendix Theorem 18, is used only as historical mechanism provenance; none of its joint-density, affine-latent, nondegeneracy, or opaque-constant conclusions is imported. Thus no theorem-critical cited-result hypothesis or wrapper conclusion remains to discharge.

All theorem-critical tools are used in the branch's current convention. Direct differentiation uses the declared ascending monic coefficient order. The mean-value and connected-image arguments use ordinary absolute value and Lebesgue length on the same pivot images consumed downstream. Standard-Borel regular conditional probability uses exactly the Euclidean conditioning tuples and pivot coordinates in the class definition.

For `step_003`, the cap formula

\[
\widehat K_i(y)=\sup_{J\in\mathscr J_{\mathbb Q}}\frac{Q_y^i(J)}{|J|}
\]

is a countable supremum of measurable kernel evaluations. On every density fiber, Lebesgue differentiation gives equality with the conditional (L^\infty) norm, including the extended-valued case; hence Borel-set domination follows from density integration. This construction needs neither a jointly measurable density version nor an ambient density. Different kernel or density versions alter the result only on the relevant conditioning-marginal null set.

For event measurability, every allowed chart interval is bounded and sigma-compact. Exhausting it by compact sets makes each polynomial zero set compact in the coefficient cube times the compact parameter set; projecting only these compact sets gives compact coefficient events, and their countable union is exactly (H_{d,J}). This avoids the invalid shortcut that an arbitrary Borel projection must be Borel. Sections are therefore Borel and equal the matching cube-intersected pivot images. Empty and singleton pieces are handled directly.

The tower property, finite subadditivity, supremum monotonicity, elementary scalar comparisons, and uniform conditional-law calculations all have their hypotheses and same-object conclusions displayed. There is no source-convention, object-target, or citation-identity blocker.

## Quantitative Dependence Audit

The diagnostic exposes (d,R,\bar\kappa_0,\bar\kappa_\infty), all three chart lengths, and (|I|). It correctly fixes (eta) and (Theta) before (d,R) vary, while the final bound has no dependence on (Theta,mu,I), conditioning values, kernel versions, or an undisplayed law parameter. There are no hidden constants, auxiliary tolerances, confidence parameters, horizon parameters, or norm conversions.

The probability mode is a deterministic inequality for each fixed law, followed by deterministic suprema. The horizon mode is static and interval-uniform. The metric interfaces are Lebesgue length, absolute value, and conditional (L^\infty(\mathbb R)), exactly as in the setting.

The polynomial specialization is pointwise for every allowed index:

\[
\begin{aligned}
\bar\kappa_0 B_0
&\leq \bar\kappa_*d+\frac{\bar\kappa_*}{2}R d^2,\\
\bar\kappa_\infty B_\infty
&\leq \bar\kappa_*d+\frac{\bar\kappa_*}{2}R d^2,
\end{aligned}
\]

using only (\bar\kappa_i\leq\bar\kappa_*), (1\leq d), and (d(d-1)\leq d^2). Fixed (eta) contains no hidden (d) or (R) dependence. The zero-cap boundary yields the zero polynomial without a mode change. The empty-law or empty-interval cases use the setting's declared value zero. The inequality (1/(2R)\leq1/2) is confined to witness nonemptiness and is not smuggled into this specialization.

## Scope And Closure Review

Every certificate row is static. There is no recursion, repeated update, limiting passage, all-time claim, invariant, stability premise, basin premise, convergence upgrade, or accumulated defect. Accordingly, the Scope-Accumulation and Entry-State gates are inapplicable for the specific reason that each chart is bounded once, each cap is integrated once, and one finite union is taken. The certificate nevertheless gives a concrete one-shot relation, legal source, boundary test, zero or probability-neutral residual, and producer path for every row.

The inner and the two separately oriented outer sweep rows pass their exact derivative, convention, image, and boundary checks. The two cap rows pass independently on their different conditioning spaces. The Borel-event row uses compact exhaustion before projection and exports exact sections. The three chart-probability rows use only their matching caps in expectation. The union row retains length weights and hence the maximum. The class-supremum and polynomial rows control the same scalar target. The degree-one row handles every empty sum and the coincident pivot. The witness row checks the exact law and isolates its threshold.

Noncircularity holds throughout: primitive objects produce G1-G3; G1-G3 produce G4; G4 produces G5; G5 produces G6; and explicit witness variables produce G7. No output assumes itself or the final theorem. There is no transformed, weighted, population, baseline, or surrogate object. The only set transfer is from a cube-intersected pivot image to its full image under conditional support, giving zero probability residual. The only version transfer is marginal-null, and both scalar specializations are direct dominance relations at the target scale.

The applicable baseline/boundary obligation is (d=1). Both sums are empty, both conditioning tuples are (mathbb R^0), both pivots are the same (\alpha_0), (s_0=s_\infty=-\theta), and (B_0=B_\infty=1). The original bound and the witness clause remain valid with no remainder or weakened target. Every certificate obligation is therefore `step-local` under the unchanged sketch.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Inner sweep in `step_001` | Structural upper bound producing the inner image certificate | Direct differentiation, mean-value theorem, and connectedness of interval images | `assump:indexed-regime`; `assump:compact-cube-support`; current-notation calculus | Cube support controls every coefficient term and yields exactly (B_0) | Same ascending monic convention, (\alpha_0) pivot, absolute value, and Lebesgue length as the target | (s_0'=-d\theta^{d-1}-\sum_{j=1}^{d-1}j\alpha_j\theta^{j-1}); hence (\operatorname{abs}(s_0')\leq B_0) and (\lambda(s_0(J))\leq B_0\operatorname{len}(J)) | Raw controls are (\operatorname{abs}(\alpha_j)\leq R) and (\operatorname{abs}(\theta)\leq1); export is the exact inner pivot-image length used by `step_004` | The event section is the image intersected with pivot support; conditional support makes the probability residual zero | One finite coefficient sum used once; no forcing or accumulated defect | Primitive support and index assumptions -> `step_001` -> inner part of `step_004` | Producer `step_001`; consumers `step_004`, `step_005`, `step_006`, and final bound | Empty and singleton (J), arbitrary endpoints, (\theta=\pm1), and (d=1) pass; the empty sum gives derivative (-1) | step-local | None |
| Positive outer sweep in `step_002` | Structural upper bound producing the positive outer image certificate | Exact division by (\theta^{d-1}), direct differentiation, and same-side mean-value theorem | `assump:indexed-regime`; `assump:compact-cube-support`; current-notation algebra | On (\theta>1), inverse-power and cube bounds yield exactly (B_\infty) | Same monic model, (\alpha_{d-1}) pivot, positive connected chart, and Lebesgue metric | (s_\infty'=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d}); (\operatorname{abs}(s_\infty')\leq1+R d(d-1)/2) | Raw controls are monicity, coefficient support, and (\theta>1); export is the exact positive same-side image length | Positive event section is the support-intersected positive image; residual is zero under the pivot kernel | One static chart use; inverse-power terms are all controlled and do not accumulate | Primitive support and index assumptions -> positive part of `step_002` -> positive part of `step_004` | Producer `step_002`; consumers positive `step_004`, then `step_005`, `step_006`, and final bound | Limit (\theta\downarrow1), excluded endpoint (1), empty and singleton pieces, and (d=1) pass | step-local | None |
| Negative outer sweep in `step_002` | Structural upper bound producing the negative outer image certificate | Exact division on (\theta< -1), direct differentiation, and separate same-side mean-value theorem | `assump:indexed-regime`; `assump:compact-cube-support`; current-notation algebra | The exact (\theta)-derivative is the same formula evaluated at negative (\theta); orientation by (u=-\theta) negates it and preserves the bound | Same monic model, (\alpha_{d-1}) pivot, negative connected chart, and no cross-zero interval | (d s_\infty(-u)/du=1-\sum_{j=0}^{d-2}(d-1-j)\alpha_j(-u)^{j-d}); its absolute value is at most (B_\infty) | Raw controls are monicity, coefficient support, and (u>1); export is the exact negative same-side image length | Negative event section is the support-intersected negative image; residual is zero under the pivot kernel | One static chart use; parity signs remain inside the exact derivative before absolute domination | Primitive support and index assumptions -> negative part of `step_002` -> negative part of `step_004` | Producer `step_002`; consumers negative `step_004`, then `step_005`, `step_006`, and final bound | Limit (\theta\uparrow-1), excluded endpoint (-1), negative powers, empty and singleton pieces, and (d=1) pass | step-local | None |
| Measurable (\alpha_0)-kernel cap in `step_003` | Generated measurable upper-control wrapper for the inner disintegration | Standard-Borel kernel, rational-interval supremum, Lebesgue differentiation, and density integration | `assump:mean-endpoint-conditional-caps` for the law of (\alpha_0) given (Y_0=\alpha_{1:d-1}) | Produces a measurable cap equal a.s. to the exact inner conditional (L^\infty) norm and dominating every Borel pivot set | Pivot is (\alpha_0), conditioning field is exactly (\sigma(\alpha_{1:d-1})), and reference measure is Lebesgue | (\widehat K_0(y)=\sup_{J\in\mathscr J_{\mathbb Q}}Q_y^0(J)/\operatorname{len}(J)); (Q_y^0(A)\leq\widehat K_0(y)\lambda(A)) on density fibers | Raw control is an a.s. absolutely continuous RCD with finite mean cap; export is the measurable inner cap used by `step_004` | Kernel or density versions differ only on the (Y_0)-marginal null set; integrated residual is zero | One conditional integral; bad-fiber values have zero marginal mass and no accumulated effect | Primitive inner kernel -> `step_003` -> inner part of `step_004` | Producer `step_003`; consumer inner `step_004`, followed by the bound chain | Null fibers and infinite cap values on a null set are harmless; at (d=1), (Y_0) is the one-point space | step-local | None |
| Measurable (\alpha_{d-1})-kernel cap in `step_003` | Generated measurable upper-control wrapper for both outer disintegrations | Standard-Borel kernel, rational-interval supremum, Lebesgue differentiation, and density integration | `assump:mean-endpoint-conditional-caps` for the law of (\alpha_{d-1}) given (Y_\infty=\alpha_{0:d-2}) | Produces a measurable cap equal a.s. to the exact outer conditional (L^\infty) norm and dominating every Borel pivot set | Pivot is (\alpha_{d-1}), conditioning field is exactly (\sigma(\alpha_{0:d-2})), distinct from the inner field unless (d=1) | (\widehat K_\infty(y)=\sup_{J\in\mathscr J_{\mathbb Q}}Q_y^\infty(J)/\operatorname{len}(J)); (Q_y^\infty(A)\leq\widehat K_\infty(y)\lambda(A)) | Raw control is an a.s. absolutely continuous RCD with finite mean cap; export is the measurable outer cap used twice by `step_004` | Kernel or density versions differ only on the (Y_\infty)-marginal null set; integrated residual is zero | Two finite parallel chart integrals, each using the same outer mean cap once; no recurrence | Primitive outer kernel -> `step_003` -> positive and negative parts of `step_004` | Producer `step_003`; consumers both outer parts of `step_004`, followed by the bound chain | Null fibers pass; at (d=1), the outer field is the same one-point field and the pivot is the same sole coefficient | step-local | None |
| Borel root events and chart sections in `step_003` | Measurability and exact event-section interface for disintegration | Sigma-compact exhaustion, compact zero sets, compact projection, and exact pivot identities | Compact (\Theta), cube support, and continuity of the polynomial map | Produces Borel (H_{d,J}) and sections equal to matching cube-intersected pivot images | Same coefficient cube, chart interval, polynomial convention, and pivot coordinates as the theorem | (H_{d,J}=\bigcup_n\operatorname{proj}_\alpha Z_n) with compact (Z_n); each section is ([-R,R]\cap s_i(J;y)) | Raw controls are a bounded interval and compact coefficient cube; exports are the exact Borel events and sections consumed by `step_004` | Conditional support removes the cube intersection in probability; image enlargement leaves zero probability residual | Countable union is a static measurability construction; no quantitative defect accumulates | Setting topology and pivot identities -> `step_003` -> all three parts of `step_004` | Producer `step_003`; consumers all chart disintegrations and later bound blocks | Empty, singleton, open, closed, and half-open pieces, tangencies, multiple roots, and (\pm1) allocation pass | step-local | None |
| Inner chart probability in `step_004` | Derived event upper bound supplying the (\bar\kappa_0B_0\operatorname{len}(I_0)) term | Inner image certificate, inner measurable cap, Borel section, tower property, and primitive inner mean cap | `step_001`; `step_003`; `assump:mean-endpoint-conditional-caps` | The matching (\alpha_0)-kernel controls exactly the inner event with only a mean cap | Uses (Y_0=\alpha_{1:d-1}) and never substitutes the outer conditioning field | (Q_y^0(H_y)\leq\widehat K_0(y)B_0\operatorname{len}(I_0)); expectation gives the claimed coefficient | Raw controls are the exact image length and (E\widehat K_0\leq\bar\kappa_0); export is the exact inner weighted term | Event section and pivot image coincide up to support; target-side residual is zero | Random cap may be unbounded pointwise but is integrated once and controlled in mean | `step_001` plus inner `step_003` -> inner `step_004` -> `step_005` | Producer `step_004`; consumers `step_005`, `step_006`, and final weighted bound | Zero-length pieces have zero probability; at (d=1), the sole density supplies the same calculation | step-local | None |
| Positive outer chart probability in `step_004` | Derived event upper bound supplying the positive outer weighted term | Positive image certificate, outer measurable cap, Borel section, tower property, and primitive outer mean cap | `step_002`; `step_003`; `assump:mean-endpoint-conditional-caps` | The matching (\alpha_{d-1})-kernel controls exactly the positive outer event | Uses (Y_\infty=\alpha_{0:d-2}) and the positive same-side image only | (Q_y^\infty(H_y^+)\leq\widehat K_\infty(y)B_\infty\operatorname{len}(I_+)); expectation gives the claimed term | Raw controls are the positive image length and (E\widehat K_\infty\leq\bar\kappa_\infty); export is the exact positive term | Event section and positive pivot image coincide up to support; target-side residual is zero | One finite integral; no cross-chart or recurrent defect | Positive `step_002` plus outer `step_003` -> positive `step_004` -> `step_005` | Producer `step_004`; consumers `step_005`, `step_006`, and final weighted bound | Empty and singleton positive pieces, approach to (1), tangencies, multiple roots, and (d=1) pass | step-local | None |
| Negative outer chart probability in `step_004` | Derived event upper bound supplying the negative outer weighted term | Negative image certificate, outer measurable cap, Borel section, tower property, and primitive outer mean cap | `step_002`; `step_003`; `assump:mean-endpoint-conditional-caps` | The matching (\alpha_{d-1})-kernel controls exactly the negative outer event | Uses (Y_\infty=\alpha_{0:d-2}) and the negative same-side image only | (Q_y^\infty(H_y^-)\leq\widehat K_\infty(y)B_\infty\operatorname{len}(I_-)); expectation gives the claimed term | Raw controls are the negative image length and (E\widehat K_\infty\leq\bar\kappa_\infty); export is the exact negative term | Event section and negative pivot image coincide up to support; target-side residual is zero | One finite integral; negative parity is already controlled in the image certificate and does not accumulate | Negative `step_002` plus outer `step_003` -> negative `step_004` -> `step_005` | Producer `step_004`; consumers `step_005`, `step_006`, and final weighted bound | Empty and singleton negative pieces, approach to (-1), tangencies, multiple roots, and (d=1) pass | step-local | None |
| Exact union and weighted maximum in `step_005` | Theorem-closure block producing the per-law interval bound | Exact three-piece partition, three chart estimates, finite subadditivity, and weighted scalar order | `step_004`; `assump:compact-parameter-domain`; `assump:indexed-regime` | Event overlap is handled while retaining chart lengths, exactly supporting a maximum rather than a sum | Same interval, endpoint allocation, event, and Lebesgue-length convention as the setting | (H_I=H_{I_0}\cup H_{I_+}\cup H_{I_-}); (Ax+C(y+z)\leq\max\{A,C\}(x+y+z)) | Raw controls are the three chart probabilities and exact length additivity; export is (\mu(H_I)\leq M_\eta\operatorname{len}(I)) | Event union and length partition are exact; one finite union bound is the sole stated loss | One three-event union; overlap loss is not iterated or reused | `step_004` -> `step_005` -> `step_006`; no use of the final class constant | Producer `step_005`; consumers `step_006` and final per-law theorem | Roots at (\pm1) occur only in (I_0); empty and singleton pieces, event overlap, arbitrary endpoints, and (d=1) pass | step-local | None |
| Class supremum and empty-index convention in `step_006` | Scope bridge from the per-law estimate to the exact class constant | Division by positive interval length, supremum monotonicity, and declared value-zero convention | `step_005` and the exact class definition in `setting.md` | A bound independent of (\mu,I) passes through both suprema without a new condition | Same law class, interval family, probability mode, and root-hitting ratio as the target | (\mu(H_I)/\operatorname{len}(I)\leq M_\eta) for every indexed pair; otherwise the declared empty value is zero | Raw control is the exact per-law estimate; export is the exact (C_{\mathcal D}), not a surrogate statistic | Produced and consumed scalar ratio is identical; residual is zero | Pointwise application at each indexed pair; no cross-index accumulation | `step_005` -> supremum part of `step_006` -> final class claim | Producer `step_006`; consumer final class-uniform theorem | Empty law class, empty interval family, positive-length division, zero caps, and (d=1) pass | step-local | None |
| Fixed-(eta) polynomial specialization in `step_006` | Public quantitative bridge from (M_\eta) to (P_\eta) | Fixed cap parameters and elementary pointwise inequalities | `assump:indexed-regime`; maximum output of `step_005` | Each chart constant is dominated at the same scalar target scale with every coefficient displayed | Same (d,R,eta), deterministic mode, and interval-length target; no hidden parameter or mode translation | (\bar\kappa_i\leq\bar\kappa_*), (1\leq d), and (d(d-1)\leq d^2) imply (M_\eta\leq\bar\kappa_*d+(\bar\kappa_*/2)Rd^2) | Raw controls are the two exact chart constants; export is the displayed polynomial with coefficients depending only on fixed (eta) | Same-target scalar dominance leaves no residual and drops no term | One pointwise comparison for each index; no asymptotic or limiting defect | Fixed-(eta) primitive condition plus `step_005` -> polynomial part of `step_006` -> final claim | Producer `step_006`; consumer final polynomial statement | (d=1), (R=1), (\bar\kappa_*=0), and absence of the witness threshold all pass | step-local | None |
| Degree-one coincident-pivot specialization | Boundary and baseline certificate across all theorem interfaces | Empty-sum convention and the sole-coefficient density | Setting definitions and specialized outputs of `step_001` through `step_007` | Both chart mechanisms remain active and prove the original claim with no higher-degree source | Both pivots are (\alpha_0), both conditioning spaces are (\mathbb R^0), and all metrics and events coincide | (s_0=s_\infty=-\theta), (B_0=B_\infty=1), and both caps are the norm of the same sole density | Raw control is the exact linear pivot and sole density; exports are the weighted bound, class bound, and witness membership | Produced coefficient, root event, density, and consumed targets are identical; no remainder or surrogate exists | Static substitution; no vanishing source, recurrence, or accumulated defect | Degree-one setting -> all applicable numbered steps -> both final clauses | All bound producers remain legal; `step_007` separately produces witness membership | Arbitrary endpoints, (\pm1), empty chart pieces, (R=1), and threshold equality pass | step-local | None |
| Indexed witness membership and threshold isolation in `step_007` | Static support and class-membership certificate for nonemptiness | Independent uniform endpoint innovations and the explicit middle block | Witness construction in `setting.md`; `assump:indexed-regime`; separate clause hypothesis | Conditioning on every nonpivot coordinate leaves the pivot endpoint uniform and supplies both exact caps | Produced law is exactly the consumed witness; no affine, population, transformed, or reference-law substitution | (K_0=K_\infty=1/(2R)\leq1/2\leq\bar\kappa_i) | Raw controls are endpoint independence, uniform densities, cube support, and (R\geq1); export is exact membership for every indexed pair | Object-target residual is zero; singular or dependent middle coordinates do not alter endpoint kernels | One construction at each index; no membership defect accumulates and no threshold enters the bound chain | Explicit variables and separate threshold -> `step_007` -> final nonemptiness clause | Producer `step_007`; consumer only the final nonemptiness clause | Separate (d=1), (d=2), (d=3), (d\geq4), (R=1), singularity, dependence, and equality cases pass | step-local | None |
| Complete generated-output flow | Theorem-level producer-consumer closure for both final clauses | The accepted seven-step dependency graph and direct final assembly | Primitive assumptions plus each preceding derived output | Every consumed image, cap, event, probability bound, scalar bound, and membership certificate has an earlier legal producer | No source object, conditioning convention, metric, probability mode, or target changes along either path | Bound chain is `(step_001, step_002, step_003) -> step_004 -> step_005 -> step_006 -> final`; witness path is `step_007 -> final` | Each export is the exact interface named by its consumer; the threshold path is disjoint from the general-bound path | All transfers are equality, support-neutral enlargement, null-fiber equivalence, finite subadditivity, or same-target scalar dominance | Static acyclic graph; no persistent, adversarial, recursive, or limiting forcing | Every edge points from primitive or earlier derived output to a later consumer | Producers are all seven steps; consumers are their listed successors and the two final clauses | Empty indices, null fibers, both outer signs, coincident (d=1) pivot, and all witness regimes pass | step-local | None |

## Hard-Step Localization Audit

Every theorem-critical hard obligation is `step-local` under the unchanged accepted sketch.

- `step_001` and `step_002` instantiate direct derivative and interval-image arguments from monicity and cube support; both exact outer orientations are already fixed.
- `step_003` is the highest-risk local proof, but not a sketch defect. Its two RCDs, two conditioning fields, countable cap definitions, a.s. version equivalence, Borel-set domination, compact-exhaustion event proof, section identity, null-fiber treatment, and consumers are all fixed by primitive sources and current-notation standard facts.
- `step_004` performs three matching one-shot disintegrations. It does not need an a.s. cap, a common nontrivial conditioning sigma-field, or a new generated condition.
- `step_005` uses an exact event union and a fixed weighted comparison; no margin or unproduced interface is missing.
- `step_006` uses the already produced per-law bound, declared empty-index convention, and pointwise same-target polynomial inequalities. Fixed (eta) supplies the required uniform coefficient provenance.
- `step_007` computes exact conditional kernels of the already specified witness and uses only the separately declared threshold.

No alleged local step is being asked to invent a theorem-facing mechanism source, dependency, threshold, residual bridge, convention bridge, output target, scope upgrade, or boundary exclusion. `Global Gaps And Hard Steps = None` is therefore consistent with `COMPLETE_DRAFT`; downstream step workers still must prove their assigned local claims, but the theorem contract and exported interfaces are already complete.

## Early Idea-Failure Screen

- Contract contradiction: none. The fixed-(eta), all-(d), all-(R\geq1), all-class-law, all-interval claim is compatible with the four primitive assumptions and the separate nonemptiness clause.
- Missing mechanism: none. Monicity and cube support source the chart bounds; conditional absolute continuity and mean caps source probability domination; interval weights source the maximum; scalar order sources the polynomial; independent endpoint innovations source membership.
- Source-convention stress: passed. The proof-critical conclusions are direct in the branch convention; cited papers supply provenance only. Positive and negative outer derivatives, the two pivot coordinates, and the two conditioning fields match their consumers exactly.
- Residual-to-target stress: passed. Chart sections are exact up to conditional-support intersection, cap versions differ only on marginal-null fibers, scalar bridges control the same target, and the witness law is identical to the membership target.
- Persistent-defect and accumulation stress: inapplicable for a concrete static reason. Caps are integrated once, outer charts are finite parallel cases, and event overlap is charged once by finite subadditivity.
- Limiting and boundary stress: passed for (d=1), (R=1), zero cap parameters, empty index sets, null conditioning fibers, both outer signs, approach to (\pm1), exact endpoint allocation, empty and singleton pieces, arbitrary endpoint conventions, tangencies, multiple roots, and all witness degree regimes.
- Entry-state trace: inapplicable. There is no recursive algorithm, generated trajectory, stationary state, contraction, recurrence, invariant, convergence, or mode conversion. The corresponding static null and boundary regimes are explicitly covered.
- Generated-condition and output-flow stress: passed. Every derived object has an acyclic producer-consumer path, and neither final assembly nor specialization exports an unproved generated condition.
- Dependence and mode stress: passed. No hidden (d,R,mu,I,Theta), conditioning-value, probability, horizon, norm, or tolerance dependence is introduced.
- Baseline invariance: passed. No external recovery theorem is inherited; the applicable exact (d=1) boundary preserves the original target without a remainder.
- Same-setting repair plausibility: no repair is needed. No evidence requires changed primitive assumptions, procedure, theorem scope, metric, exposed dependence, success criterion, an unsupported theorem-facing source, or a weakened conclusion.

## Review Rationale

The diagnostic is contract-valid, faithful to the exact accepted sketch and setting, mathematically viable at theorem level, and complete enough to expose every acceptance-critical mechanism and interface. All seven steps have source-adequate, convention-compatible, residual-adequate, acyclic outputs; all applicable evidence rows are `step-local`; and the delicate measure-theory, conditioning, sign, maximum, degree-one, empty-index, fixed-(eta), and witness-threshold cases pass independent stress. `ACCEPTED` with no retry target is the smallest sound disposition.
