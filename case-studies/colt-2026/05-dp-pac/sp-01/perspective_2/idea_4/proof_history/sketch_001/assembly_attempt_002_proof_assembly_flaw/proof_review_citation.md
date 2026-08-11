# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The final main-theorem proof contains a citation-traceability gap at
   `latex_template/5_appendix.tex:11386`.  It first attributes the quotient,
   kernel, transfer, mechanism, SOA, and reconstruction interfaces to
   “Propositions and lemmas in the preceding subsections,” which is a
   subsection/prose-only dependency and does not identify paper-facing
   theorem-style results.  The subsequent references certify the VC arm,
   only the old-arm rate (`prop:step-015-rate`), the finite arm, the minimum,
   and the frontier, but do not cite the old-arm kernel, privacy, and PAC
   interfaces used by the claimed minimum.  Replace the prose dependency with
   exact public references, including
   `prop:step-014-vc-arm`, `prop:step-015-kernel`,
   `prop:step-015-dp`, `prop:step-015-pac`, `prop:step-015-rate`,
   `prop:step-016-finite-arm`, `prop:step-016-minimum`, and
   `prop:step-016-frontier` (and any earlier named theorem-style bridge needed
   for the shared interface).

2. Public prose names external results or source-derived constructions without
   citation commands in the reader-facing files: `Sauer--Shelah` in
   `latex_template/4_proof_sketch.tex:13`, and `old-Lyu`/`Lyu` in
   `latex_template/2_preliminary.tex:46`, `3_main.tex:35`, and
   `4_proof_sketch.tex:33`.  The appendix uses `lyu2025` and `sauer1972`, but
   the citation contract requires each external source mentioned in public
   prose to carry its own BibTeX-backed citation.  Add the corresponding
   `\\citep{lyu2025}` and `\\citep{sauer1972}` commands (or remove the source
   names and state the construction entirely as a local result).

## Nonblocking Concerns

1. `reference.bib` is complete for the 87 public citation commands and
   contains `lyu2025`, `ghazi2020`, `kasiviswanathan2008`, and `sauer1972`.
   The `ghazi2020` author list omits Noah Golowich, and the
   `kasiviswanathan2008` author metadata is not bibliographically accurate;
   these do not affect the cited proof authority (the latter is explicitly
   lineage-only), but should be corrected in a later assembly pass.
2. The appendix has repeated standalone `Assembly of the step` and
   `Supporting facts` blocks.  This is independently reported as a structural
   and rigor assembly defect; here it also obscures the exact citation chain
   unless each composition is integrated into a named theorem-style proof.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: Accepted ledgers for all 16 live steps identify
  the source result and locator.  Lyu v1 (arXiv:2510.00076v1) Proposition 2
  is used only for the high-mean without-replacement tail; the low-mean tail
  is derived locally.  Lyu Definitions/Lemmas 4.1--4.3 and Corollary 4.1,
  Algorithms 1--2, and Lemmas 3.1--3.2 are restated with current objects;
  Lyu Theorem 3's malformed printed `SOA_G(h)` and unsupported probability-one
  sentence are expressly excluded.  The cited theorem statements otherwise
  support the conclusions used.
- Source fidelity: The accepted source checks consistently freeze Lyu v1
  (source SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`).
  Ghazi Lemma 4.4 is used only for the fixed SOA-family Littlestone bound;
  Sauer--Shelah, Bernoulli tails, Maclaurin, and finite adaptive composition
  are either cited or locally instantiated.  No nearby-result substitution or
  unsupported source conclusion was found.
- Instantiation and object mapping: The ledgers translate source notation to
  the quotient objects `(\\bar C, T_N, H_C, \\operatorname{Dec}_C)` and then
  discharge the endpoint/half-scale bridge, list/query conditions, and raw
  neighbor transfer locally.  No cited result is relied on with an
  unexplained source-domain object or changed output/risk metric.
- Quantitative regime fidelity: The VC, old, and finite arms preserve the
  exposed structural, sampling, algorithmic, confidence, privacy, and
  fixed-versus-scheduled-`delta` regimes.  The old arm separately pays its
  coarse trace multiplicity and rate; no VC event is silently reused.  No
  explicit-rate source mismatch was identified.
- Assumption discharge: Accepted step proofs discharge cited hypotheses from
  `setting.md`, accepted dependency results, or local derivations, including
  list/query assumptions, sensitivity-one adjacency, endpoint and
  half-scale conditions, and all-input raw replacement.  The final assembly
  must expose those discharges through exact theorem-style references rather
  than the prose shortcut in Issue 1.
- Main theorem internal references: The public scan reports 131 unique labels
  and 926 `\\ref`/equation references with no unresolved targets or duplicate
  labels.  Reference closure does not cure the prose-only dependency and
  omitted old-arm interface references at `5_appendix.tex:11386`.
- Appendix cited-result traceability: The appendix contains 87 citation
  commands and current-notation restatements, but its standalone assembly
  paragraphs are not valid citation/proof dependencies.  They must point to
  exact `Lemma`, `Proposition`, `Theorem`, or `Corollary` labels in the public
  bundle; internal step files and review statuses cannot serve as public
  citations.
- External BibTeX entries: Every citation key used by public TeX has a
  matching entry in `reference.bib`; the metadata issues are limited to the
  nonblocking concerns above.
- Internal label/ref pairs: Internal theorem-style references use labels and
  refs, with no duplicate or unresolved pair detected.  The final theorem
  proof still needs explicit result-type references instead of “preceding
  subsections.”
- Unsupported standard facts: No unsupported standard inequality or
  concentration fact was found in the accepted ledgers.  Public proof-sketch
  prose nevertheless names Sauer--Shelah without `\\citep{sauer1972}` and
  therefore remains citation-blocking until repaired.

Verdict alignment: `BLOCKING` is paired with assembly repair depth and the
`/proof-assembly` target.
