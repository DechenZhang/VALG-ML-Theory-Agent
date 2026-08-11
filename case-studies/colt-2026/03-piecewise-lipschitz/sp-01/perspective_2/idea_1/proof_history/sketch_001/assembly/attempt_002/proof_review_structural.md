# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. `latex_template/1_intro.tex:132-133` contains deletion residue in the public introduction: the sentence ending with `the regime $0<R<1$.  The` is followed by `No learner or online algorithm is specialized.`, so the rendered prose reads "The No learner or online algorithm is specialized." This violates the required paper-facing prose discipline. The smallest repair is to delete only the stray word `The`; this does not change any theorem clause, assumption, proof dependency, or accepted mathematics.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Review identity: reviewer `cli:p2-structural-review:a2-20260729T052321`; branch `perspective_2/idea_1`; proof-sketch attempt 1; assembly unit attempt 2.
- Goal alignment: In exact-goal mode, the public theorem preserves the setting's fixed-`eta` quantifiers over every `d>=1`, `R>=1`, law in the stated class, and positive-length interval. It preserves the weighted three-piece bound, the exact `M_eta(d,R)` maximum, the class-supremum conclusion, the explicit `P_eta(d,R)` rate, and the separately thresholded witness nonemptiness clause. The four primitive assumption interfaces are unchanged, and no derived invariant is promoted to an assumption.
- Dependency closure: The accepted graph is acyclic and appears in producer order: `step_001`, `step_002`, and `step_003` feed `step_004`, which feeds `step_005`, which feeds `step_006`; independent `step_007` supplies only the witness clause. Every recorded dependency is current and accepted, and the witness threshold has no path into the general probability-bound chain.
- Sketch-step coverage: All seven required steps have current `ACCEPTED` proof/review pairs whose recorded proof hashes match the current proofs. The appendix maps them, in order, to inner geometry; outer geometry; measurable caps, Borel sections, and disintegration; the three chart controls; decomposition and the exact maximum; class-supremum closure and rate specialization; and witness construction and membership. No step is omitted, merged opaquely, or consumed before its producers.
- Assembly discipline: Every one of the 23 accepted non-atomic local units and all seven target-step assemblies was compared with the corresponding appendix source body. Their definitions, displayed equations, inequality chains, kernel object mappings, assumption discharges, low-degree and endpoint cases, constants, and concluding implications occur in the accepted mathematical order. The appendix has 24 paper-facing theorem-style units (eight lemmas and sixteen propositions), including the reusable witness assembly proposition; none is an independent unreviewed proof obligation.
- LaTeX bundle structural synchronization: All five content files and all four support files are present, with `main.tex` as the entry point. The five repaired lost-control-sequence sites now contain the intended TeX commands and agree with their accepted source derivations; no theorem operand, scope, or conclusion changed, and no malformed command fragment remains. Label `sec:preliminaries` occurs once in `2_preliminary.tex` and has exactly one consumer, the three-piece lemma in `5_appendix.tex`. Removing the unsupported affine-latent and bounded-joint-density comparison prose removed no setting requirement, accepted lemma, theorem clause, or baseline obligation. No conclusion here relies on compile status rather than source evidence. Apart from Blocking Issue 1, the bundle contains no workflow scaffolding, audit prose, forbidden public environments, placeholder text, external citation command, or empty visible bibliography.
- Main theorem self-containedness: The main theorem uses only setup and preliminary notation, states its numbered assumption basis and local quantifiers, exposes all constants and parameter dependence, and does not depend on an appendix-local identifier. The reader-facing fixed-`eta` corollary is concise and points to a named, complete appendix bridge.
- Theorem-style statement shape: Each public theorem-style unit states primitive assumptions or named prior results before local conditions and conclusions. Mathematical dependencies use typed theorem references rather than subsection names, proof-step IDs, or local-unit IDs. The repaired presentation does not alter any accepted statement.
- Explicit-rate and bridge structure: Proposition `prop:fixed-eta-polynomial-specialization` supplies the complete pointwise bridge from `M_eta` to `P_eta`, including the displayed termwise uses of `kappa_i<=kappa_*`, `1<=d`, and `d(d-1)<=d^2`. Fixed quantities, exposed `d,R` dependence, deterministic probability mode, horizon-free scope, and the class-supremum operation remain explicit; no term is absorbed only in prose and no convergence or probability mode is changed.
- Derivation-over-notation: Public preliminaries contain only stable notation needed to read the theorem. Proof-local caps, sections, chart images, constants, and witness case objects are introduced and justified where used, rather than replacing boundedness, measurability, rate, or membership derivations with notation.
- Appendix local-unit coverage: The appendix preserves the substantive derivation of every accepted local unit and each target-step conclusion, including measurable cap construction, Borel-set and kernel checks, exact three-piece union and maximum, class-supremum passage, fixed-rate inequalities, and all `d=1`, `d=2`, `d>=3`, endpoint, empty-piece, and witness-threshold cases. The exact `d=1` specialization remains valid. The removed external comparison was not an inherited baseline theorem; hence its removal neither weakens nor changes a required baseline conclusion.
- Internal label/ref structure: The source has 50 unique labels and 143 internal `\ref`/`\eqref` uses, all resolved to unique targets. The preliminaries label and its sole consumer are correctly typed as a section reference, while proof dependencies cite named theorem-style results. There are no duplicate labels, unresolved internal references, or external citation dependencies.

Verdict alignment: `BLOCKING` is paired with one numbered issue, repair depth `assembly`, and target `/proof-assembly`.
