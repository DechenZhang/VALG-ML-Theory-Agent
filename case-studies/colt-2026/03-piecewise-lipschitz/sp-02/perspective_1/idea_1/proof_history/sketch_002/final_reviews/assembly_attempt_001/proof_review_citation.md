# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The regular-level-set citation does not discharge the regularity actually established in the public proof. At `latex_template/5_appendix.tex:374`, the proof invokes the regular-level-set theorem from Lee's *Introduction to Smooth Manifolds* after proving only that \(\gamma\in C^1\), hence that \(g(\theta,a)=\langle a,\gamma(\theta)\rangle\) is \(C^1\). Lee's Regular Level Set Theorem (commonly Theorem 5.12 in the cited second edition) is stated for smooth maps in the smooth-manifold category. The accepted `step_003` application instead states and correctly uses the Euclidean \(C^1\) regular-level-set theorem. The appendix must either cite a source whose theorem has the required \(C^1\) hypotheses or publicly derive the additional smoothness before using Lee; the present citation does not by itself yield the claimed \(C^1\), countably rectifiable incidence hypersurface under the declared assumptions.

2. The Bogachev BibTeX record does not faithfully identify all of the cited authorities. `latex_template/reference.bib` declares `volume = {2}`, and the rendered bibliography consequently identifies volume 2, while the six public uses include Volume I facts (Fubini/Tonelli, completion decomposition, continuity from below, and monotone convergence) as well as Volume II material (analytic sets and universal measurability). The DOI `10.1007/978-3-540-34514-5` identifies the combined 2007 work rather than curing the false volume restriction in the rendered record. The assembly must remove the inaccurate volume field or use correctly separated Volume I and Volume II records with locators; as written, several proof-authority citations point to the wrong volume.

3. The public translation of the accepted `step_006` Lipschitz argument is malformed at `latex_template/5_appendix.tex:1012`. The accepted proof has the product
   \[
   m^2|H_j(s,\zeta)|\,|F_j(\theta)-F_j(s)|,
   \]
   whereas display (A.29) prints a comma between the factors. The resulting line is not a valid scalar inequality and does not establish the finite-level Lipschitz property used to discharge the equal-dimensional area formula's hypothesis. This is an assembly transcription defect: the accepted cited-result application and local derivation are valid, but the public Federer application is not fully supported until the product is restored.

## Nonblocking Concerns

1. The broad book citations omit useful result locators. A repaired assembly should identify Federer's area and coarea results (in particular, the relevant statements in Sections 3.2.3 and 3.2.22), the replacement \(C^1\) regular-level-set theorem, and the specific Bogachev chapters or sections used. The current appendix otherwise restates the Federer and elementary Rudin applications in current notation and visibly checks their hypotheses.

2. The BNS BibTeX record contains `eprint = {2409.04367}` and `archivePrefix = {arXiv}`, but `ims.bst` suppresses that locator in the rendered bibliography. The key resolves and the source identity is recoverable from `reference.bib`, so this is a presentation concern rather than a false proof authority.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: Eighteen public citation commands were checked against six BibTeX-backed source classes. Ball's central-section theorem, Federer's area/coarea formulas, the BNS convention, and Rudin's elementary analysis facts support the conclusions attributed to them. Lee's cited smooth theorem does not match the publicly established \(C^1\) regime, as recorded in Blocking Issue 1.
- Source fidelity: Ball's source cube is \([-1/2,1/2]^N\), the section is central and Euclidean, and the source conclusion is \(\sqrt2\) for \(N\geq2\). The dilation by \(2R\) gives exactly \(\sqrt2(2R)^{N-1}\); \(N=1\) is handled internally. BNS supplies only the \(p=1\), chain-length \(q\), chain-degree \(M\), and output-degree \(\Delta\) convention. The Bogachev facts are mathematically standard, but their public record has the volume mismatch in Blocking Issue 2.
- Instantiation and object mapping: The central Federer maps are the incidence projection \(\pi(\theta,a)=a\) and parameter projection \(\tau(\theta,a)=\theta\) on the \(N\)-rectifiable incidence hypersurface; the affine Federer map is \(\Psi_j(\theta,\beta)\) on the measurable finite-level domain. Their dimensions, Euclidean Hausdorff/Lebesgue measures, multiplicities, and Jacobians are mapped correctly. The affine Lipschitz discharge is interrupted only by Blocking Issue 3.
- Quantitative regime fidelity: The public theorem preserves all five primitive assumptions and R1--R5, ordinary probability, arbitrary correlation under one capped full-joint density, presentation-then-law-then-interval quantification, the interval-then-law supremum order, and all literal constants. The monic specialization keeps the leading coefficient deterministic and outside the random \(d\)-vector. Counter-example 1 retains the three distinct scales \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\). No citation is used to claim a normalization theorem for every raw Pfaffian presentation.
- Assumption discharge: Ball, Federer, BNS, and Rudin have the required dimension, norm, measure, domain, and boundary hypotheses discharged in the appendix. The central \(N=1\), stationary, tangent, multiple-root, endpoint, infinite-fiber, and identically-zero regimes are handled internally. The affine proof handles measurable pivot partitions, near-zero pivots by finite-level exhaustion, endpoints, completed measurability, multiple preimages, and extended-real monotone limits, subject to Blocking Issues 2 and 3. Lee's smoothness premise is not discharged.
- Main theorem internal references: `latex_template/3_main.tex` uses only the five numbered assumptions and preliminary notation; it does not cite appendix-local results, workflow artifacts, step IDs, or review status as authority. The final proof consumes named public propositions and lemmas.
- Appendix cited-result traceability: Every substantive Cited Result Application, Local Derivation, and Target-Step Assembly in all ten accepted step proofs was compared with its public appendix statement and proof. The accepted source has 28 local units; assembly exposes 29 named theorem-style blocks because the `step_008` target conclusion is separated from its three local producer blocks. Apart from the Lee source mismatch and the corrupted `step_006` product, the accepted statements, mappings, hypotheses, and conclusions are preserved.
- External BibTeX entries: All six citation keys are unique and resolve to one of six records. Citation-command multiplicities are BNS 1, Ball 2, Federer 4, Lee 1, Bogachev 6, and Rudin 4. No public prose-only external source is asked to supply a conclusion. Edelman--Kostlan and Balcan--Dick--Pegden occur only in workflow provenance as convention cross-check and lineage, respectively, and supply no public proof conclusion.
- Internal label/ref pairs: The bundle has 46 unique labels, no duplicate labels, and all 228 internal reference uses resolve. An isolated Tectonic build completed TeX, BibTeX, and the required reruns with no undefined citation or reference in the converged output.
- Unsupported standard facts: None beyond the three blocking applications above. Hausdorff-measure scaling, compact projection, extreme-value/compactness uses, box volume including the zero-dimensional convention, finite additivity, density domination, and elementary algebra/calculus facts are either proved inline, restated in current notation, or used in their standard finite-dimensional form with all needed hypotheses visible.

## External Citation And Evidence-Use Map

| Public key/source | Public uses | Authority and conclusion used | Current-object mapping and regime | Audit result |
| --- | ---: | --- | --- | --- |
| `balcan2025pfaffian` (Balcan--Nguyen--Sharma, arXiv:2409.04367v4) | 1 | Convention only: ambient parameter dimension \(p=1\), chain length \(q\), total chain degree \(M\), and total output degree \(\Delta\). It supplies no derivative, anti-concentration, or normalization conclusion. | Definitions 2--4 are specialized to the displayed common triangular chain and output polynomials. The anchor, unit-range certificate, and coefficient budgets are separate primitive assumptions. | PASS for the limited convention use. |
| `ball1986cube` (Ball, main cube-slicing theorem) | 2 | Every central hyperplane section of the unit-volume cube \([-1/2,1/2]^N\) has intrinsic \((N-1)\)-volume at most \(\sqrt2\) for \(N\geq2\). | Set the source hyperplane to \(v^\perp\), use Euclidean Hausdorff measure, and dilate by \(2R\). The appendix does not apply Ball to an affine section, motion bound, probability statement, or \(N=1\). | PASS. |
| `federer1969gmt` (Federer, area/coarea formulas) | 4 | Central projection multiplicity, central slicing by \(\tau\), and equal-dimensional affine image volume. One proof-sketch use summarizes the same applications. | Central dimensions are \(N\to N\) for area and \(N\to1\) for coarea on a countably \(N\)-rectifiable hypersurface. The affine map is \(N\to N\) on each finite measurable chart domain. Nonnegative extended multiplicities and Euclidean measure conventions agree. | Source and mapping PASS; affine hypothesis discharge is BLOCKING under Issue 3. |
| `lee2013smooth` (Lee, Regular Level Set Theorem) | 1 | Intended to make \(g^{-1}(0)\) an embedded hypersurface with tangent kernel and normalized gradient normal. | The public proof establishes \(g\in C^1\) and \(\|\nabla g\|_2\geq1\), but the cited smooth-manifold theorem assumes a smooth map. | BLOCKING under Issue 1. |
| `bogachev2007measure` (Bogachev, *Measure Theory*) | 6 | Fubini/Tonelli null-section arguments; completion decomposition; analytic-image/projection and universal measurability; continuity from below; monotone convergence. | All applications are to Euclidean Borel or completed Lebesgue spaces, nonnegative functions, increasing events/functions, and Borel maps between Polish spaces. The mathematical hypotheses are met. | Applications PASS mathematically; source record is BLOCKING under Issue 2. |
| `rudin1976principles` (Rudin, *Principles of Mathematical Analysis*) | 4 | Multivariable and vector chain rules, scalar mean-value theorem, and Euclidean Cauchy--Schwarz. Compactness and extreme-value consequences are also audited as elementary facts. | Polynomial/common-chain compositions are \(C^1\); normalization has a nonzero denominator; stationary-curve reasoning is coordinatewise; coefficient norms are Euclidean. Compact domains and continuous functions are explicit where maxima are used. | PASS. |

The Edelman--Kostlan zero-intensity theorem was checked only as a convention and integrand cross-check for accepted `step_003`; no part of its expected-zero conclusion is consumed. Balcan--Dick--Pegden Theorem 18 was checked only as affine lineage for accepted `step_006`; it supplies neither the chart map nor the arbitrary-correlation bound. Neither source is silently promoted to public proof authority.

## Accepted Dependency And Local-Unit Map

| Accepted step | Accepted dependencies and local units | Public theorem-style evidence | Citation/dependency conclusion |
| --- | --- | --- | --- |
| `step_001` | No dependency; 2 local units. | `lem:unit-box-envelope`, `prop:coordinate-envelope`. | The coefficient envelope and chain-rule derivative bound are derived directly in the BNS convention; no quantitative source conclusion is imported. |
| `step_002` | `step_001`; 2 local units. | `lem:normalized-curve`, `prop:projective-speed`. | The accepted derivative envelope is applied to the identical \(G,F\) objects; the anchor proves nonvanishing before normalization and the exact \(h^{-1}\) coordinate factor is retained. |
| `step_003` | `step_002`; 3 local units. | `lem:incidence-jacobians`, `lem:central-null-classes`, `prop:central-volume`. | The accepted \(C^1\) unit curve is the only dependency interface. Area/coarea mappings and null regimes are preserved, but the public Lee citation is invalid under the available regularity (Issue 1). |
| `step_004` | `step_003`; 2 local units. | `lem:scaled-cube-section`, `prop:central-sweep`. | The exact central coefficient-volume interface is combined with Ball scaling, Cauchy--Schwarz, and one full-joint density cap; no independence or coordinate conditioning is introduced. |
| `step_005` | `step_002`, `step_004`; 2 local units. | `lem:speed-length`, `prop:central-rate`. | The projective-speed and sweep interfaces are substituted literally; positive-length division and the interval-then-law suprema retain their order and ordinary-probability mode. |
| `step_006` | `step_001`; 6 local units. | `lem:finite-chart-legality`, `lem:affine-chart-jacobian`, `lem:affine-null-classes`, `prop:finite-chart-area`, `lem:affine-exhaustion`, `prop:affine-bound`. | The dependency supplies the same \(F_i\) regularity and derivative bound. The area, measurability, and monotone-limit applications match the accepted proof, except for the public product corruption and Bogachev source record (Issues 2--3). |
| `step_007` | No dependency; 4 local units. | `prop:monic-presentation`, `lem:monic-pivot-partition`, `lem:monic-low-chart`, `lem:monic-high-chart`. | The monic object, deterministic leading term, lower-coefficient vector, two cells, negative high-chart domain, velocities, transitions, and \(d=1\) convention are directly derived without an external root theorem. |
| `step_008` | `step_006`, `step_007`; 3 accepted local units translated into 4 named public blocks. | `prop:monic-affine-transfer`, `lem:monic-two-cell-ledger`, `prop:monic-linear-branch`, `prop:monic-probability`. | The general affine event is exactly the monic event in dimension \(d\); the beta-cube volume, disjoint cell ledger, \(d=1\) empty-product convention, and final probability assembly add no chart-count or leading-coordinate loss. |
| `step_009` | `step_005`; 3 local units. | `prop:counter-presentation`, `lem:counter-wedges`, `prop:counter-scale`. | The exact tuple, normalized speed, both closed wedges, density conversion, lower certificate, and the three distinct scales are preserved. |
| `step_010` | `step_001`, `step_002`, and `step_005`--`step_009`; 1 local unit. | `prop:full-conjunction`, followed by the proof of the main theorem. | The conjunction consumes exactly seven accepted producer interfaces. `step_003` and `step_004` enter transitively through `step_005`; no diagnostic artifact or review status discharges a theorem obligation. |

All ten proof/review pairs bind accepted sketch attempt 2, their matching Step ID and unit attempt (`step_003` attempt 2; all others attempt 1), the supplied proof digest, and `ACCEPTED` status. The accepted global diagnostic pair and `assembly_report.md` were used only to locate audit targets and were not treated as mathematical evidence.

## Binding And Build Audit

- Before writing this review, all 35 controller-supplied SHA-256 bindings matched: six controller artifacts, twenty proof/review artifacts, and nine public-bundle files.
- The exact public bundle was compiled in an isolated temporary directory. Tectonic completed BibTeX and all required TeX reruns; all six citation keys and every internal reference resolved, with no duplicate label.
- No workflow file, proof artifact, review artifact, support file, or public TeX file was modified during this citation review. Only `proof_review_citation.md` is the review output.
