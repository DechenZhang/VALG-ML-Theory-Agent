# Rigor Proof Review

## Reviewer Verdict
BLOCKING

## Blocking Issues

1. The appendix does not place the sixteen target-step compositions inside
   paper-facing proofs. Each `\paragraph{Assembly of the step.}` block is
   standalone prose after the last proof environment for its step (at lines
   731, 1184, 1766, 2205, 2576, 3098, 3611, 4474, 5118, 5809, 6754, 7367,
   8179, 8719, 10576, and 11345 of `latex_template/5_appendix.tex`). Those
   paragraphs make theorem-critical implications from the local results to
   the accepted step conclusions, including the construction, privacy, PAC,
   and rate interfaces used later. Because the implications are outside an
   allowed proof environment, they are workflow summaries rather than
   checkable derivations and cannot discharge the final theorem's dependency
   chain. Assembly must integrate each composition into a theorem-style proof
   or into the proof of a named result with the same conclusion.

2. The public appendix retains forbidden workflow and audit scaffolding in
   place of paper-facing mathematical organization. This includes the sixteen
   `Supporting facts` headings, imperative sketch-row openings such as
   `Prove`, `Construct`, `Lift`, `Solve`, and `Instantiate`, standalone
   dependency inventories, source-result restatements and object mappings,
   `Consequences` blocks, and reviewer-style assembly summaries. Representative
   concentrations occur at lines 13--145, 3662--3856, 4555--4699,
   5193--5317, 5881--6062, 6817--6973, and 8782--8955. This material exposes
   the proof-generation audit trail instead of incorporating necessary
   assumptions, cited-result mappings, and implications into named statements
   and proofs. Under the paper-ready TeX and full-derivation contracts, its
   repeated presence is itself acceptance-blocking even where the underlying
   accepted local mathematics is sound.

3. `latex_template/2_preliminary.tex` promotes proof-only generated objects
   and bookkeeping to the public notation surface. The `gamma` and confidence
   allocations, teacher/list/sample calibration, exact source restrictions,
   fallback implementation details, analysis-only occurrence mark, and
   comparison-arm bookkeeping are not stable setting-derived notation needed
   to read the main theorem. They comprise a proof dictionary whose validity
   depends on the appendix constructions. Leaving that dictionary in the
   preliminaries obscures provenance and substitutes notation for the named
   results that establish measurability, totalization, projection, privacy,
   and the rate calibration. Assembly must move these proof-local interfaces
   into named appendix results and expose only a concise reader-facing learner
   interface and bridge in the preliminaries and main theorem.

4. Direct comparison with the accepted sources does not justify the assembly
   report's full-derivation claim. The accepted step proofs total 15,265 lines,
   while the appendix has 11,387 lines. That difference is only a diagnostic
   trigger, not a quota; the concrete failed preservation obligation is that
   the source `Target-Step Assembly` arguments have been reduced to the
   standalone summaries described in Issue 1, while substantial source/audit
   restatements remain public as described in Issue 2. Thus the reduction
   cannot be classified as removal of non-proof metadata or valid repetition.
   A fresh assembly must compare every accepted source composition with its
   in-proof translation and retain the definitions, equations, inequalities,
   cited-result discharges, boundary checks, and final implications needed to
   verify it line by line.

## Nonblocking Concerns

1. The accepted step derivations were checked across quotient measurability,
   raw-to-quotient neighbor and risk maps, Littlestone-dimension descent,
   totalization, marked-law projection, privacy composition, fixed-block trace
   control, holdout generalization, the old and finite comparison arms, and
   rate specialization. No separate step-level mathematical obstruction was
   found; the needed source mathematics is available for an assembly-only
   repair.
2. The main theorem preserves the formalized conditional scope: finite or
   countable evaluation quotient, all-input raw replacement
   `(epsilon, delta)` privacy, realizable iid PAC error, and decoded population
   risk. It also states the exposed parameters, universal hidden-constant
   dependence, fixed-sample horizon, high-probability mode, and zero-one-risk
   metric. No unsupported expectation-to-high-probability, event-to-
   unconditional, pointwise-to-uniform, or quotient-to-raw mode upgrade was
   found in the accepted derivations.
3. Proposition `prop:step-016-frontier` supplies a named specialization bridge
   with the ceiling, absorption, probability, and baseline calculations for
   the public frontier rate. The `d=0`, finite/infinite-class, `v=d`, and
   scheduled-delta cases are explicit. These checks do not cure the appendix
   presentation and derivation-preservation defects above.
4. The assembly report records a successful build, unique labels, and resolved
   references. Compilation and reference closure are useful consistency
   checks, but neither is evidence that a standalone workflow paragraph is a
   mathematical proof.

## Suggested Repair Depth
assembly

## Smallest Candidate Repair Target
/proof-assembly

## Rigor Audit

- Mathematical derivations: The accepted local derivations support the stated
  quotient construction, privacy and PAC guarantees, and three-arm comparison.
  Their uses are claim-compatible, but the last implication for each of the
  sixteen steps is asserted only in an out-of-proof assembly paragraph. The
  final paper therefore lacks a valid paper-facing derivation of the exact
  step conclusions it consumes.
- Statement self-containedness: The four primitive assumptions and the main
  theorem conclusion are stated explicitly, and the theorem does not rely on
  an appendix-local symbol for its displayed rate. Self-containedness still
  fails at the proof layer because appendix dependencies and source mappings
  are supplied through audit prose rather than integrated theorem-style
  statements and proofs. The preliminary proof dictionary compounds that
  failure by making generated construction details appear foundational.
- Main theorem constants and notation: `R_VC`, `R_old`, `R_fin`, `Lambda`, the
  universal constants and exponents, and their prohibited dependence are
  stated. The public theorem keeps the null branch and the finite-class
  convention explicit. The defect is notation economy and provenance, not an
  identified numerical inconsistency: `gamma`, the confidence ledger,
  teacher/list/sample objects, the occurrence mark, and comparison-law
  bookkeeping should be appendix-local named constructions.
- Derivation-over-notation: The source proofs derive the calibration,
  measurability, projection, concentration, composition, and comparison
  claims. In the public bundle, proof-local dictionaries and source/audit
  summaries compete with or replace the proof text that should establish
  those interfaces. Reassembly must retain the derivations inside proofs and
  reduce the public notation surface.
- Explicit-rate contract: The theorem exposes
  `(d,v,alpha,beta,epsilon,delta)`, fixes the high-probability, horizon, and
  risk modes, and restricts hidden constants. The named frontier proposition
  contains the auxiliary choices, technical-condition checks, displayed term
  absorptions, probability conversion, and baseline reductions. No additional
  explicit-rate blocker was identified after tracing the accepted rate steps.
- Appendix full derivations: All sixteen accepted proof/review pairs were
  inspected. The appendix contains matching named local theorem units and
  substantial displayed derivations, so theorem-unit coverage alone is not
  the issue. Full preservation fails at the target-step assembly layer, and
  the surviving dependency/source/consequence scaffolding shows that the
  3,878-line compression is not clean proof-obligation-preserving translation.
- Quantifiers and constants: The `d=0` and `d>=1` branches, `1<=v<=d` on the
  positive branch, suprema over distributions and targets, all-input privacy
  quantifier, realizable PAC quantifier, universal constants, and finite versus
  infinite class branches remain aligned with the setting. The confidence
  allocations, privacy split, union bounds, and sample ceilings in the
  accepted derivations were not found to change quantifier order or hide a
  forbidden dependence.
- Probability or convergence modes: Privacy is pointwise over every raw
  replace-one input pair, whereas the PAC guarantee is unconditional iid high
  probability over sample, partition, and mechanism randomness. The marked
  occurrence coordinate is unreleased and projects to the original law; the
  fixed-block and holdout conditionings are converted back to the stated PAC
  mode. No convergence-mode upgrade was found. These mode arguments still
  need their final compositions inside paper-facing proofs.
- Boundary cases: The accepted material treats the no-data `d=0` singleton
  class, `d>=1`, empty or invalid lists and mechanism failures, arbitrary
  fibers and repeated labels, finite versus infinite `C`, the `v=d` baseline,
  and fixed versus scheduled `delta`. No omitted mathematical boundary case
  requiring step repair was found. The totalization and boundary conclusions
  must remain in the repaired in-proof translations.
- Hidden subclaims: No new independent mathematical lemma was found beyond the
  accepted step units and direct compositions. The sixteen direct
  compositions are nevertheless theorem-critical hidden proof obligations in
  the current public bundle because their assertions sit outside proof
  environments. Moving only the headings is insufficient; assembly must
  preserve the actual implication chains inside named proofs.

Verdict alignment: `BLOCKING` is paired with four numbered assembly-level
issues, `Suggested Repair Depth = assembly`, and
`Smallest Candidate Repair Target = /proof-assembly`.
