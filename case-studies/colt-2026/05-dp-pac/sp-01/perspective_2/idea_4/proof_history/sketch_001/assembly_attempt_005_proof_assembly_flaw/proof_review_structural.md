# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The Step 013 appendix drops the accepted proof's common marked-experiment
   setup. The accepted source at `proof_steps/step_013/proof.md:313-347`
   defines the iid master sample in (13), the full marked law
   `\widetilde{\mathbb P}_{\bar D,\bar c}`, the producer and complement blocks,
   `M=(k-1)m`, complement empirical error and `r(h)` in (14), and
   `F_\alpha` in (15). None of (13)--(15), or an equivalent prior definition,
   occurs in the Step 013 appendix subsection. Consequently
   `latex_template/5_appendix.tex:6501-6504` uses
   `\bar S_i^\pi`, `r(h)`, and
   `\widehat{\operatorname{err}}_{-i}^\pi` in a public lemma before they are
   defined; its proof cites nonexistent equation (14) at `:6546-6548`; and
   later results use `F_\alpha` and
   `\widetilde{\mathbb P}_{\bar D,\bar c}` at `:6580` and `:6711-6712`
   without first naming their event and probability-space meanings. These
   definitions are substantive: they establish the iid experiment and the
   objects on which the measurability, pathwise-inclusion, conditioning, and
   independence order rely. Restore them inside an allowed theorem/proof
   environment before the first consumer, preserving the accepted
   producer/complement setup and proof order.

2. Assembly changes the accepted Step 015 dependency interface by importing
   the VC-arm Step 011 composition lemma. The accepted Step 015 artifact
   declares exactly Steps 002, 003, and 004 as dependencies
   (`proof_steps/step_015/proof.md:14-23`, `:37`, and `:121-122`), states that
   the arm does not consume a VC-arm privacy result (`:63-65`), and records
   adaptive composition and postprocessing as its own standard interface at
   `:371-380`; its accepted review confirms that no new dependency or bridge
   is needed. In contrast, `prop:step-015-interfaces` assumes and invokes
   `lem:step-011-adaptive-composition` at
   `latex_template/5_appendix.tex:7592-7595` and `:7719-7724`, and the public
   old-arm privacy proposition again makes that Step 011 lemma an explicit
   premise at `:8785-8792`. This changes the accepted old-arm provenance and
   dependency meaning during assembly. Carry over the accepted Step 015
   composition/postprocessing interface locally instead of making the old
   arm depend on Step 011.

## Nonblocking Concerns

1. The Step 013 packaging proposition directly cites
   `prop:step-006-good-event` at `latex_template/5_appendix.tex:6341` and
   `:6461-6463`, although Step 013's accepted direct dependencies are Steps
   004, 007, 008, 010, and 012. Steps 007 and 012 already transitively supply
   the needed event interface, so this does not create a missing proof, but
   its provenance should be normalized while repairing the subsection.
2. An independent cached Tectonic build exits 0 and produces the PDF with no
   unresolved reference or citation diagnostic. The final TeX pass reports
   overfull boxes at appendix lines 1313, 1657, 2045, 3362, 3461, 3825, 4549,
   and 5811, the largest about 22.4 pt. These are paper-readiness warnings,
   not the reason for the blocking verdict.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: `setting.md` is the authoritative exact-goal specification.
  The main theorem preserves its four primitive assumptions, quotient scope,
  raw all-input replacement-DP mode, realizable iid PAC mode, improper-output
  interface, null branch, and VC, old, finite, and minimum rate conclusions.
  No scope, quantifier, metric, or probability-mode drift was found.
- Dependency closure: All 16 live step proofs are `COMPLETE`, all paired
  reviews are `ACCEPTED`, and every review-bound proof hash matches the live
  artifact. Their declared dependencies are accepted and acyclic. Public
  closure fails only through the Step 015 dependency change in issue 2; the
  Step 013 problem is missing local setup rather than a rejected dependency.
- Sketch-step coverage: The appendix has one subsection for each of Steps
  001--016 and a final main-theorem proof. Accepted local-unit counts match
  exactly `(6,7,5,4,5,5,5,8,5,4,7,5,6,5,23,7)`. The additional packaging
  propositions in Steps 010, 013, and 015 are consumed, not orphan blocks.
- Assembly discipline: A source-to-appendix comparison of every accepted
  local derivation and target-step assembly found every source tagged
  derivation represented except precisely Step 013 equations (13)--(15).
  Every accepted target-step assembly is present. The missing setup and the
  changed Step 015 dependency are assembly synchronization defects; neither
  requires changing an accepted step artifact.
- LaTeX bundle structural synchronization: All required content and support
  files exist, `main.tex` is the compile entry for the five content files,
  and the pinned assembly report and appendix hashes are respectively
  `7169e916a768afa4a4698f3231ffd3d3c5ac3b08a068365e2cc8188b779a7b87`
  and `cddd252375f1d6c1881f351bec86de1e3942e6ceb86e9a37ad84f4cce82e0208`.
  The independent cached build succeeds. Compilation cannot supply the
  definitions omitted from the public source.
- Main theorem self-containedness: Setup, preliminaries, main theorem, proof
  sketch, explicit-rate bridge, and readable frontier corollary are aligned;
  the main theorem does not depend on appendix-local notation. The blocking
  self-containedness failure is localized to public Step 013 results.
- Theorem-style statement shape: The public TeX has no `claim`, `hypothesis`,
  or `invariant` environments or dependencies, no forbidden workflow labels
  or audit-scaffolding phrases, and the earlier workflow-ID authority has
  been removed. Step 013 nevertheless states results using undefined local
  objects, while Step 015 states an altered dependency premise.
- Explicit-rate and bridge structure: The public rates expose the required
  variables, universal hidden-constant scope, probability mode, and delta
  regimes. Ceiling, absorption, baseline, and finite/minimum comparisons are
  carried by named accepted results and the rate-specialization bridge. No
  rate-scope mismatch or prose-only absorption was found.
- Derivation-over-notation: All 16 accepted source proofs, including cited
  result applications, boundary checks, substantive local derivations, and
  terminal compositions, were compared with their appendix bodies. The sole
  missing substantive source block is the Step 013 common setup; issue 2 is
  dependency drift rather than a dropped inequality.
- Appendix local-unit coverage: All accepted units have paper-facing
  theorem-style counterparts with substantive proof bodies, and every
  theorem-style result is consumed except the terminal public
  `cor:frontier`. Unit counts alone do not cure the missing Step 013 setup or
  authorize the Step 015 cross-arm import.
- Internal label/ref structure: All 134 labels are unique, all 115 referenced
  targets resolve, and the required section/subsection structure is present.
  The reference to equation (14) in Step 013 resolves only typographically
  to an equation number from another subsection; it has no local defining
  equation and therefore remains a semantic self-containment defect.
