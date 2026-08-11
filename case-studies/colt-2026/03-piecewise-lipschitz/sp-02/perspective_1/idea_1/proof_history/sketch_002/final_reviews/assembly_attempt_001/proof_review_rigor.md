# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The first proof-obligation corruption is in `latex_template/5_appendix.tex:1012`.  The accepted `step_006` source at `proof_steps/step_006/proof.md:306`--`309` proves the quotient estimate with the product
   \[
   m^2|H_j(s,\zeta)|\,|F_j(\theta)-F_j(s)|.
   \]
   Equation (A.29) instead prints
   \[
   m^2|H_j(s,\zeta)|,|F_j(\theta)-F_j(s)|,
   \]
   replacing multiplication by a comma.  The resulting displayed chain is not a valid inequality and does not derive the finite-level Lipschitz estimate used by Lemma `lem:finite-chart-legality`.  That Lipschitz conclusion is the regularity input for the equal-dimensional area formula, the exhaustive affine bound, R3, and the monic R4 specialization.  This is not merely typographic spacing: one required factor has been lost from the derivation.  The accepted source proof contains the correct product, so the shallow repair is confined to the assembled appendix.

2. The appendix does not satisfy the binding internal-reference discipline for equations.  It manually tags 89 displays as `A.1`--`A.89` and uses 49 hard-coded prose references such as `(A.1)`, `(A.3)`, `(A.46)`, and `(A.79)--(A.81)`, but it supplies no equation `\label{...}` / `\eqref{...}` pairs.  These references therefore are not compiler-checked and can silently drift during the required repair to (A.29).  This is a public-TeX contract defect, including inside the theorem-style statement of Proposition `prop:full-conjunction`, and is repairable without changing an accepted proof.

3. `latex_template/2_preliminary.tex` violates the shared notation-economy gate.  The alias `\phi^{\mathrm{aff}}_\alpha` at lines 34--35 is never used anywhere else in the bundle, while the exhaustion set `E_{j,m}` at lines 51--55 is appendix-local proof machinery, is absent from the main theorem, and is defined again where it is first needed at `latex_template/5_appendix.tex:948`.  Removing the unused alias and keeping the exhaustion definition in the appendix is an assembly-only notation reconciliation; no mathematical source unit needs revision.

## Nonblocking Concerns

1. An isolated Tectonic build reproduced `Overfull \hbox (7.52167pt too wide)` on the first TeX pass.  It is localized to the final paragraph of `latex_template/4_proof_sketch.tex:46`--`53`, during the pass in which its proposition references are still unresolved.  Tectonic then ran BibTeX and the required TeX reruns, produced the PDF with resolved citations and references, and left no warning in the converged `main.log`.  The warning is therefore a transient layout diagnostic, does not hide or alter mathematical content, and is nonblocking.  The blanket warning-free claim in `assembly_report.md:68`--`71` is inaccurate for the full multipass transcript even though the final log is clean.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Source And Theorem Derivation Map

All ten current accepted proof artifacts were compared against their matching appendix subsections.  The comparison covered all 28 accepted local units, every substantive Cited Result Application, each Local Derivation, and all ten Target-Step Assembly blocks, rather than theorem-environment counts or representative samples.

| Accepted source | Public producer and appendix location | Theorem use | Comparison result |
| --- | --- | --- | --- |
| `step_001` (2 units) | `lem:unit-box-envelope`, `prop:coordinate-envelope`; appendix lines 5--140 | Primitive derivative part of R1 | Complete coefficient-envelope, chain-rule, endpoint, `q=0`, `Delta=0`, and degree-zero-`M` derivation preserved. |
| `step_002` (2 units) | `lem:normalized-curve`, `prop:projective-speed`; lines 142--317 | Normalization and projective part of R1 | Anchor, nonvanishing, projector identity, Euclidean contraction, coordinate change, and essential-supremum passage preserved. |
| `step_003` (3 units) | `lem:incidence-jacobians`, `lem:central-null-classes`, `prop:central-volume`; lines 319--611 | Geometric input to R2 | Incidence regularity, both tangential Jacobians, area/coarea conversion, measurability, multiplicity, tangent, endpoint, stationary, and infinite-fiber branches preserved. |
| `step_004` (2 units) | `lem:scaled-cube-section`, `prop:central-sweep`; lines 613--772 | Section and density input to R2 | Ball scaling, cube-radius estimate, one full-joint density conversion, exact coefficient algebra, and direct `N=1` branch preserved. |
| `step_005` (2 units) | `lem:speed-length`, `prop:central-rate`; lines 774--934 | Final central interval and capacity clauses R2a--R2b | Essential-supremum integration, literal substitution, positive-length division, and interval-then-law suprema preserved. |
| `step_006` (6 units) | `lem:finite-chart-legality` through `prop:affine-bound`; lines 936--1398 | R3 and transitive affine input to R4 | All source obligations are represented, but the first quotient-product inequality is malformed at line 1012 as Blocking Issue 1. |
| `step_007` (4 units) | `prop:monic-presentation` and three monic chart lemmas; lines 1400--1641 | Detailed monic object and chart part of R4 | Deterministic leading coefficient, exact lower-coefficient vector, pivots, low/high charts, velocities, transition points, negative domain, and `d=1` convention preserved. |
| `step_008` (3 units) | `prop:monic-affine-transfer`, `lem:monic-two-cell-ledger`, `prop:monic-linear-branch`, followed by named probability assembly; lines 1643--1853 | Exact affine-monic probability part of R4 | Full-joint law mapping, beta-cube volume, disjoint cell ledger, no chart-count factor, and zero-dimensional branch preserved. |
| `step_009` (3 units) | `prop:counter-presentation`, `lem:counter-wedges`, `prop:counter-scale`; lines 1855--2121 | R5 | Exact tuple, normalized speed, both closed wedges, density conversion, lower certificate, and distinct upper scales preserved. |
| `step_010` (1 unit) | `prop:full-conjunction`; lines 2123--2306, followed by the final theorem proof at lines 2308--2336 | Full theorem conjunction | The assembly consumes named public propositions and lemmas in the same objects and modes.  Neither the conjunction proof nor the final main-theorem proof uses workflow IDs as mathematical authority. |

The direct theorem map is
\[
\begin{aligned}
\mathrm{R1}&\leftarrow(\texttt{step\_001},\texttt{step\_002}),\\
\mathrm{R2}&\leftarrow(\texttt{step\_003},\texttt{step\_004},\texttt{step\_005}),\\
\mathrm{R3}&\leftarrow\texttt{step\_006},\\
\mathrm{R4}&\leftarrow(\texttt{step\_006},\texttt{step\_007},\texttt{step\_008}),\\
\mathrm{R5}&\leftarrow\texttt{step\_009},\\
\text{full conjunction}&\leftarrow\texttt{step\_010}.
\end{aligned}
\]
The workflow identifiers in this map are audit locators only; the public final proof uses theorem-style labels.

## Rigor Audit

- Mathematical derivations: Independently checked the unit-box polynomial envelope, exact common-chain derivative, normalized-projector identities, central incidence area/coarea calculation, Ball section scaling, full-joint density domination, affine quotient charts and exhaustion, monic pivots and velocities, beta-volume ledger, and Counter-example wedge geometry.  The accepted source derivations are valid in their declared modes.  The sole lost mathematical operation in the public translation is the multiplication in Blocking Issue 1.
- Statement self-containedness: The five primitive assumptions appear as uniquely labeled numbered assumptions.  The main theorem defines `D_*` before use, retains the five separately scoped clauses, gives the full rate contract, and expressly limits `progress_type=full` to the declared anchored, unit-range, coefficient-controlled normalization.  It does not claim that every raw Pfaffian presentation admits that normalization.  The theorem-style results use named assumptions and named public dependencies; the manual equation references remain the contract defect in Blocking Issue 2.
- Main theorem constants and notation: R1 preserves `D_*=Delta B_Q(1+qB_P)` and `sqrt(N)D_*/h`; R2 preserves `A sqrt(N/2)` and `A N Delta B_Q(1+qB_P)/(sqrt(2)h)`; R3 preserves the single factor `kappa`; R4 preserves `kappa(2R)^(d-1)(d+R d(d-1)/2)`; and R5 preserves the distinct `1/(4 delta)`, `1/delta`, and `sqrt(2)/delta` scales.  Vector, projector, and projective norms are Euclidean; chart velocities are scalar absolute values; coefficient and interval measures have the stated dimensions.  The deterministic monic coefficient stays outside the random vector.
- Derivation-over-notation: Every quantitative conclusion is supported by visible source equations rather than a helper dictionary.  The public appendix retains the exact Jacobians, section scaling, coefficient algebra, monotone limit, chart ledger, and wedge areas.  The comma in (A.29) interrupts one such visible derivation.  The two unnecessary preliminary definitions in Blocking Issue 3 should not remain on the public theorem-reading surface.
- Explicit-rate contract: The bundle exposes all structural, density, dimension, coefficient-budget, domain-scale, interval, and specialization variables.  Hidden constants are absent.  Fixed deterministic data, ordinary-probability mode, horizon order, norm mode, admissibility, and absence of auxiliary tolerances are stated.  No term is absorbed by prose and no expectation, conditional-density, independence, confidence, or asymptotic conversion is introduced.  The `q=0`, zero-speed, `N=1`, `d=1`, and Counter-example reductions are exact.
- Appendix full derivations: The ten source comparisons cover the complete accepted Cited Result Applications, Local Derivations, and Target-Step Assemblies.  No accepted source calculation is replaced by an acceptance assertion or by diagnostic global/assembly prose.  The first source mismatch is exactly `step_006/proof.md:306`--`309` versus `5_appendix.tex:1010`--`1014`; later producer statements and target assemblies otherwise retain their substantive source content.
- Quantifiers and constants: The deterministic central presentation is fixed before an arbitrary full-joint law and then an interval.  The interval supremum precedes the law supremum.  The affine statement is per arbitrary interval, partition, and law, with values in `[0,+infinity]`.  The monic clause quantifies over `d`, the lower-coefficient law, and bounded `J` without randomizing the leading coordinate.  Negative outer monic parameter values use the same strict high chart, and bounds exceeding one remain valid unclipped upper bounds.
- Probability or convergence modes: Every stochastic claim is ordinary probability under one fixed full joint density, with arbitrary coordinate correlation.  Density domination occurs once in each relevant producer.  Central area/coarea integration, affine continuity from below, and monotone convergence are nonnegative and extended-real valid.  No supremum, expectation, conditioning, limit, or probability-mode interchange is hidden.
- Boundary cases: Checked `N=1`, `q=0`, `Delta=0`, stationary normalized curves, empty/singleton/open/closed/half-open intervals, included endpoints, tangent and multiple roots, infinite and identically-zero fibers, near-zero pivots, cube faces, divergent affine integrals, `d=1`, `d=2`, `theta=0`, `theta=+/-1`, negative high-chart values, empty monic cells, zero-dimensional beta measure, `delta=1`, `epsilon=delta`, and right sides above one.  No excluded case changes a denominator, chart owner, probability mode, or literal constant.
- Hidden subclaims: No independent theorem, inequality, assumption discharge, probability conversion, mode upgrade, or stronger normalization claim was introduced by assembly.  `step_010` and the final theorem proof consume the named public results directly.  The accepted global proof/review and `assembly_report.md` were used only as diagnostic context and did not discharge an obligation.

## Binding And Build Audit

- All 35 controller-supplied protected SHA-256 values matched before review: six controller artifacts, twenty current proof/review artifacts, and nine public-bundle files.
- Every current step review identifies sketch attempt 2, its correct Step ID, the current unit attempt (`step_003` attempt 2 and all others attempt 1), the matching reviewed-proof digest, and `ACCEPTED` status.
- The exact public bundle was compiled only in an isolated temporary copy.  Tectonic completed TeX, BibTeX, all required reruns, and PDF generation.  References and citations resolved.  The first-pass overfull warning and its nonblocking classification are recorded above; the converged log is clean.
- Diagnostic global artifacts and the assembly report were not treated as proof evidence.  No protected source or generated bundle file was modified during this review.
