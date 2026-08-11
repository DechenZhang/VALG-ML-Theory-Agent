# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Public Step 009 proof text contains the explicitly forbidden mechanical
   debris `the the` across
   `latex_template/5_appendix.tex:4403-4404` ("the / the totalization").
   The structural contract disallows `PASS` while this phrase remains in the
   paper-facing appendix.
2. The Step 013 target-assembly prose at
   `latex_template/5_appendix.tex:7119-7120` calls
   `lem:step-012-empirical` a Proposition. The cited authority is a lemma,
   so this violates the requirement that mathematical dependencies name the
   correct theorem-style result type in public proof text.

## Nonblocking Concerns

1. The cached Tectonic XDV build completes its TeX, BibTeX, and reference
   reruns with no unresolved reference or citation warning, but reports eight
   overfull boxes in `5_appendix.tex`; the largest is about 22.4 pt at line
   2059. Cache-only PDF conversion is unavailable because the local bundle
   lacks the physical font `cmex7.pfb`; this is an environment limitation,
   not evidence of an additional source defect.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The bundle matches the authoritative exact-goal setting as
  an explicitly conditional result for finite-or-countable measurable
  evaluation quotients. It preserves all four primitive assumptions,
  all-input raw replacement DP, unconditional realizable iid PAC utility,
  improper outputs, the exact `d=0` no-data branch, and the VC, old-Lyu, and
  finite-class arms. It expressly leaves uncountable quotients and a universal
  polynomial in `(v, log d)` or `(v, log^* d)` open, so it does not claim to
  solve the unrestricted DP/PAC open problem.
- Dependency closure: All 16 live step proofs match the proof SHA-256 values
  pinned by their live `ACCEPTED` reviews. Their declared graph is acyclic and
  every dependency is available. The accepted global diagnostic was used only
  for structural reconciliation. In particular, the repaired Step 015 appendix
  now proves adaptive composition locally by its submeasure argument, in both
  neighbor directions, and handles postprocessing and data-independent mixing
  without importing Step 011.
- Sketch-step coverage: Steps 001-016 map in order to the 16 mathematical
  appendix subsections from `Parameter Closure and Totalization` through
  `Finite Arm and Baseline Comparison`, followed by `Proof of the Main
  Theorem`. Every sketch step is used by its paper-facing block or a later
  theorem-level consumer; no required step is declared unnecessary and no
  orphan theorem-level block was found.
- Assembly discipline: Every accepted step's `Local Derivation`, cited-result
  discharge needed by that derivation, boundary analysis, and
  `Target-Step Assembly` was compared with the corresponding appendix proof
  body. Diagnostic normalized source coverage ranges from `0.881` to `0.969`,
  and manual review of the lower-match passages confirms that omitted text is
  workflow-only summary prose. The added interface propositions only package
  accepted inputs or direct composition facts and are consumed downstream.
  The two blocking defects are public-text assembly defects and require no
  change to an accepted step artifact.
- LaTeX bundle structural synchronization: All five content files and the
  required `main.tex`, `arxiv.sty`, `ims.bst`, and `reference.bib` are present;
  `main.tex` loads the five content files, style, and bibliography in the
  required order. The live assembly-report and appendix hashes are
  `e3d7312ed2ee119f514bc2fff6daa30d3ae90fe5a3c0e542a794efd978da61f1`
  and `07c2fad264f27db0a7215f7c2aea8a3bcabdb9ebf4f99500c81e142e8eaf1637`.
  No placeholder, workflow path, audit-scaffolding phrase, public
  claim/hypothesis/invariant environment, or malformed TeX command fragment
  was found apart from the explicit mechanical phrase in blocking issue 1.
- Main theorem self-containedness: The main theorem uses only setup and
  preliminary notation, states its universal constants and allowed dependence,
  and exposes the probability, horizon, and population zero-one risk modes.
  Its readable frontier corollary states the auxiliary specialization and cites
  the named appendix bridge `prop:step-016-frontier`; the theorem itself does
  not depend on appendix-local labels.
- Theorem-style statement shape: Public theorem-style units state numbered
  assumptions or named prior results before local conditions and conclusions.
  No public `claim`, `hypothesis`, or `invariant` authority occurs. Label
  prefixes agree with their environments. Blocking issue 2 is the sole found
  prose-level mismatch between a result type and the referenced label.
- Explicit-rate and bridge structure: The VC-arm, old-Lyu, finite-class, and
  minimum bounds expose their structural, privacy, confidence, accuracy, and
  cardinality variables; hidden constants are universal; fixed-parameter and
  scheduled-`delta` claims are separated. The appendix displays the ceiling
  bounds, multiplicity domination, term absorption, probability conversion,
  and baseline reductions, including `d=0`, `v=d`, finite versus infinite
  `C`, and the separate old-arm schedule.
- Derivation-over-notation: The appendix carries the substantive definitions,
  inequality chains, inductions, finite-tree arguments, source-object maps,
  event and kernel constructions, and boundary cases rather than replacing
  them with notation or citations. The repaired Step 005 defines the error and
  prediction trace families before its full Sauer induction; Step 008 restores
  the source/current endpoint and essential-list setup; Step 013 restores the
  common marked experiment and the full producer-stage-list multiplicity
  calculation; and Step 015 contains its own privacy-composition provenance.
- Appendix local-unit coverage: Every accepted non-atomic local unit has a
  paper-facing theorem-style statement and substantive proof, and each
  accepted target-step assembly appears as concluding proof text. The Step 001
  totalization preserves every row of the source table in prose, including
  empty restrictions, invalid lists, no-success, mechanism failures, and the
  pre-sampling partition rule. No source proof obligation is replaced by an
  acceptance statement, citation-only shortcut, or workflow provenance.
- Internal label/ref structure: Labels are unique, every internal reference
  target exists, every external citation key has a BibTeX entry, theorem/proof
  environment counts balance, and the successful XDV build reports no
  unresolved references or citations. The semantic result-type error in
  blocking issue 2 remains despite compiling successfully.
