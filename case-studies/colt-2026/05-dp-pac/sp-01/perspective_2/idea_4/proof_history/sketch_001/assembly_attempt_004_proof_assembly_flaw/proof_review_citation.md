# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The `ghazi2020` BibTeX entry omits Noah Golowich from the author list, and
   the `kasiviswanathan2008` entry has imperfect author metadata.  Both keys
   identify the cited works; the latter is explicitly lineage-only and neither
   metadata issue changes a proof dependency.
2. The `lyu2025` BibTeX entry stores arXiv `2510.00076` without a version suffix.
   The source-dependent accepted artifacts and the appendix identify the
   checked `v1` source and its frozen digest, so the citation is unambiguous in
   this bundle; a future bibliography cleanup could encode `v1` directly.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: The current appendix restates each nontrivial
  external result in branch notation before its use.  The checked Xin Lyu v1
  source statements are Proposition 2 (the high-mean without-replacement
  tail), Definitions 4.2--4.3, Lemmas 3.1--3.2 and 4.1--4.3, Corollary 4.1,
  and the valid empirical-contradiction portion of Theorem 3.  Algorithm 1/
  Lemma 3.1 and Algorithm 2/Lemma 3.2 are instantiated with the current
  Sparse Sample and stopped AboveThreshold interfaces.  The malformed printed
  `SOA_G(h)` expression and unsupported probability-one sentence in Theorem 3
  are explicitly excluded.  Lyu Lemma 4.2, restating Ghazi et al. Lemma 4.4,
  is used only for the fixed irreducible-SOA-family Littlestone bound.  The
  finite-arm Kasiviswanathan citation is expressly lineage-only; its privacy
  and utility calculations are proved locally.
- Source fidelity: The source-dependent accepted sketch/step ledgers pin Xin
  Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv
  `2510.00076v1`, `submission/main.tex` SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
  Public TeX uses the matching `lyu2025` key and the same result locators.
  No nearby-result substitution, theorem-target drift, or unsupported source
  conclusion was found; the source's printed `k`/`t` typo is handled by an
  explicit current-notation size check.
- Instantiation and object mapping: Every cited application maps source
  classes, samples, and functions to `Q_C`, `\bar C`, `H_C`, `T_N`, and
  `\operatorname{Dec}_C`, with current quotient labels and empirical/population
  errors shown before use.  The endpoint and half-scale decomposition map,
  nonempty-restriction premises, finite essential-list caps, sensitivity-one
  list/query interfaces, and quotient-to-raw neighbor and risk transfers are
  all stated and discharged locally.  No raw-space application, unexplained
  source symbol, selector, or changed output metric remains.
- Quantitative regime fidelity: The VC, old-Lyu, and finite arms preserve all
  displayed structural, data/sample, horizon, privacy, confidence, ceiling,
  and fixed-versus-scheduled-`delta` regimes.  The VC trace count uses the
  `v` Sauer--Shelah exponent; the old arm independently uses its coarse `d`
  trace event and `d^5` rate.  Lyu Proposition 2 is used only for the
  high-mean branch; the near-zero tail and finite-arm tail are derived in the
  appendix.  Auxiliary choices, probability conversions, and term absorption
  are explicit, hidden constants are universal, and no extra positive power of
  `d`, `v`, or `\log^+|C|` is hidden in `Lambda`.
- Assumption discharge: The theorem-facing statements name only the four
  primitive setting assumptions.  The 16 accepted proof-step pairs and their
  current appendix translations discharge quotient countability and
  measurability, VC/LD preservation, realizable iid pushforward, source
  decomposition/list premises, endpoint conventions, replacement adjacency,
  mechanism privacy budgets, confidence allocations, and all `d=0`/`d>=1`
  and finite/infinite-class branches.  Derived good events, restrictions,
  marks, and mechanism-success conditions remain local conditional inputs and
  are proved before consumption; utility is unconditional iid PAC and privacy
  is all-input raw replacement DP.
- Main theorem internal references: The live final proof at
  `latex_template/5_appendix.tex:10684` cites named theorem-style quotient and
  raw bridges, `prop:step-014-vc-arm`,
  `prop:step-015-kernel`, `prop:step-015-dp`, `prop:step-015-pac`,
  `prop:step-015-rate`, `prop:step-015-boundaries`, the finite-arm kernel,
  privacy, arm, and zero propositions, `prop:step-016-minimum`, and
  `prop:step-016-frontier`.  The main theorem statement itself cites only
  numbered assumptions; no subsection-only, proof-step-ID, or prose-only
  dependency remains.
- Appendix cited-result traceability: The attempt-4 appendix (bound to
  assembly report SHA-256
  `913d97296a1fdfe5ea0a1f36984485b0f44da08e092205a9c1668e3c4bd78721`)
  attaches every terminal composition to a named theorem, proposition, or
  lemma and removes workflow paths, reviewer decisions, and standalone audit
  scaffolding from public proof dependencies.  The accepted sketch, accepted
  global diagnostic, and 16 accepted step/review pairs were used only as audit
  provenance.  Source applications in the public appendix carry BibTeX-backed
  commands and current-notation assumption statements; no internal artifact
  path is presented as a paper citation.
- External BibTeX entries: The public bundle contains 68 citation commands,
  using exactly `lyu2025`, `ghazi2020`, `kasiviswanathan2008`, and `sauer1972`.
  Each key has a matching entry in `latex_template/reference.bib`; the
  compiled bibliography is nonempty and no citation key is missing.
- Internal label/ref pairs: Independent parsing finds 133 unique labels, 113
  distinct internal targets, and no duplicate labels or unresolved `\ref`/
  `\eqref` targets.  Public internal dependencies identify `Lemma`,
  `Proposition`, `Theorem`, or `Corollary` result types.  The cached Tectonic
  build reported in the assembly evidence completed with exit code 0 and
  produced `<TEMP_ROOT>/idea4-tectonic-final3-check/main.pdf` (707,197 bytes);
  its auxiliary output has no unresolved reference or citation diagnostics.
- Unsupported standard facts: Sauer--Shelah is BibTeX-backed and also proved
  in current notation.  Maclaurin, the finite-population/KL and Bernoulli
  tails, adaptive composition, postprocessing, and the finite exponential-
  weights calculation are either proved as named local lemmas/propositions or
  stated with their premises and explicitly instantiated.  No
  acceptance-critical standard fact is invoked only through a vague
  "standard result" shortcut.

Verdict alignment: `PASS` has `Blocking Issues = None`,
`Suggested Repair Depth = None`, and `Smallest Candidate Repair Target =
None`.
