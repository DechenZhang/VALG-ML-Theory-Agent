# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The `ghazi2020` BibTeX entry omits Noah Golowich from the author list, and
   the `kasiviswanathan2008` entry has imperfect author metadata.  These
   entries identify the cited works and do not affect proof authority;
   `kasiviswanathan2008` is explicitly lineage-only in the appendix.
2. The Lyu BibTeX entry stores the arXiv eprint without a version suffix, while
   the public appendix and all source-dependent accepted ledgers explicitly
   identify the checked v1 source.  The citation is therefore unambiguous for
   this bundle, but a future bibliography cleanup could encode `v1` directly.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: The appendix restates each nontrivial external
  result before application in current notation.  The checked Lyu v1 source
  labels are Proposition 2 (high-mean without-replacement tail), Definitions
  4.2--4.3, Lemmas 3.1--3.2 and 4.1--4.3, Corollary 4.1, and the valid
  empirical-contradiction portion of Theorem 3.  The malformed printed
  `SOA_G(h)` expression and unsupported probability-one sentence are
  explicitly excluded.  Ghazi et al. Lemma 4.4 is used only for the fixed
  SOA-family Littlestone bound; the finite-arm citation is marked lineage-only.
- Source fidelity: Source-dependent accepted ledgers consistently pin Xin
  Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv
  `2510.00076v1`, frozen SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
  Public TeX names the same result labels and uses the matching `lyu2025`
  key.  No nearby-result substitution, theorem-target drift, or unsupported
  source conclusion was found.
- Instantiation and object mapping: Every cited application maps the source
  domain and class to the quotient objects `Q_C`, `\\bar C`, `H_C`, and
  `T_N`, with the decoder `\\operatorname{Dec}_C`.  Endpoint and half-scale
  decomposition conventions, finite list caps, sensitivity-one list/query
  interfaces, and quotient-to-raw risk and neighbor transfers are stated and
  discharged locally.  No raw-space application or unexplained source symbol
  remains.
- Quantitative regime fidelity: The VC, old, and finite arms preserve their
  displayed structural, data, horizon, privacy, confidence, ceiling, and
  fixed-versus-scheduled-`delta` regimes.  The old arm uses its independent
  coarse `d`-trace event and `d^5` rate; the low-mean tail is locally derived
  rather than taken from Lyu Proposition 2.  All hidden constants are declared
  universal and no extra positive power is hidden in the logarithmic envelope.
- Assumption discharge: The four numbered setting assumptions are named in
  theorem-style interfaces.  Accepted step proofs and the appendix discharge
  countability/measurability, quotient dimension, realizable iid sampling,
  list/query conditions, replacement adjacency, mechanism privacy budgets,
  endpoint conventions, confidence allocations, and all `d=0`/`d>=1` and
  finite/infinite-class branches.  Utility is unconditional iid PAC; privacy
  is all-input raw replacement DP.
- Main theorem internal references: The final proof at
  `latex_template/5_appendix.tex:10858-10883` cites exact theorem-style
  quotient/raw bridges, `prop:step-014-vc-arm`,
  `prop:step-015-kernel`, `prop:step-015-dp`, `prop:step-015-pac`,
  `prop:step-015-rate`, `prop:step-015-boundaries`, the finite-arm kernel,
  privacy, arm, and zero propositions, `prop:step-016-minimum`, and
  `prop:step-016-frontier`.  No subsection-only or prose-only dependency
  remains, and the main theorem statement itself references only numbered
  assumptions.
- Appendix cited-result traceability: Attempt 3 removes the prior standalone
  assembly/audit citation scaffolding and internal artifact references.  The
  16 accepted step/review pairs, accepted sketch review, and accepted global
  diagnostic are used only as audit provenance; all public proof evidence is
  restated in `5_appendix.tex` inside named theorem-style statements and
  proofs.  Public Lyu mentions in `2_preliminary.tex`, `3_main.tex`, and
  `4_proof_sketch.tex`, and the Sauer--Shelah mention in the proof sketch,
  carry BibTeX-backed citation commands.
- External BibTeX entries: The public scan finds 64 citation uses over the
  four keys `lyu2025`, `ghazi2020`, `kasiviswanathan2008`, and `sauer1972`; all
  four have matching entries in `latex_template/reference.bib`.
- Internal label/ref pairs: Independent parsing finds 131 labels, 112 distinct
  internal targets, and 862 reference occurrences, with zero duplicate labels
  and zero unresolved `\\ref`/`\\eqref` targets.  Internal results are cited
  with paper-facing `Lemma`, `Proposition`, `Theorem`, or `Corollary` labels.
- Unsupported standard facts: Sauer--Shelah is BibTeX-backed and restated;
  Maclaurin, Bernoulli lower-tail, adaptive composition, postprocessing, and
  finite-population bounds are stated with their premises and either proved
  locally or instantiated explicitly.  No acceptance-critical standard fact
  is invoked only through vague prose.

Verdict alignment: `PASS` has `Blocking Issues = None`,
`Suggested Repair Depth = None`, and `Smallest Candidate Repair Target =
None`.
