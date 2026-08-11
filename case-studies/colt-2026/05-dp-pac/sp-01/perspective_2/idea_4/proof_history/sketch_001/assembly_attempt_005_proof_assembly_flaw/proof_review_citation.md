# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The `lyu2025` BibTeX entry records arXiv `2510.00076` without an explicit
   `v1` suffix. The appendix identifies the checked version as v1, and the
   accepted source audits pin `submission/main.tex` at SHA-256
   `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`,
   so this does not make the cited source ambiguous for the present proof.
2. `reference.bib` retains unused `ghazi2020` and
   `kasiviswanathan2008` entries. Neither key is invoked or printed by the
   current bundle, and neither source is used as final proof authority.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: The attempt-5 appendix restates the external
  results it uses in current notation before application. The Lyu v1 uses are
  Proposition 2; Definitions 4.2--4.3 and the valid-decomposition existence
  claim; Lemmas 3.1--3.2 and 4.1--4.3; Corollary 4.1; Algorithms 1--2; and
  only the empirical-restriction implication from the proof of Theorem 3.
  The Sparse Sample law, failure-symbol score, one-list privacy threshold,
  stopped AboveThreshold cost, decomposition directions, essential-list
  clauses, and irreducible-SOA family bound are stated explicitly. The
  malformed printed `SOA_G(h)` expression and the unsupported probability-one
  sentence in Lyu's Theorem 3 are expressly excluded. Sauer--Shelah is both
  cited and reproved in the finite-quotient notation. The finite arm invokes
  no external theorem: its kernel, privacy ratio, and utility transform are
  derived locally.
- Source fidelity: The live accepted artifacts consistently identify Xin
  Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv
  `2510.00076v1`, and the frozen source present at review time has the recorded
  SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
  Direct comparison confirms the factor 2 and denominator 3 in Proposition
  2, the `exp(epsilon * score)` Sparse Sample convention, the
  `(2 epsilon, delta)` one-list conclusion, the factor-two DDim direction in
  Lemma 4.3, and all four Corollary 4.1 clauses. The source's printed `k`/`t`
  typo in Proposition 2 is not propagated: the appendix checks the operative
  subset-size condition. Lyu Lemma 4.2 is used as the source's stated
  restatement of Ghazi et al. Lemma 4.4, so no separate unchecked Ghazi result
  is imported.
- Instantiation and object mapping: Every external application is translated
  from the source domain and class to `Q_C`, `bar C`, and `H_C`. The appendix
  explicitly proves `VC(bar C)=v`, `LD(bar C)=d`, quotient restriction bounds,
  the exact `(2p_r,p_r)` stage pairing, pointwise SOA identity, finite
  essential-function lists, replacement-to-one-list locality, and the exact
  `T_N` neighbor, iid-pushforward, decoder, and risk maps. Source functions
  remain actual elements of `H_C`, not empirical traces or raw-space
  surrogates, and no cited result is applied directly on raw `X`.
- Quantitative regime fidelity: The VC, old-Lyu, and finite arms retain their
  structural, sampling, privacy, confidence, ceiling, auxiliary-tolerance,
  fixed-horizon, and scheduled-versus-fixed-`delta` regimes. Proposition 2 is
  used only for the high-mean without-replacement branch; the low-mean and
  mean-zero branches are proved locally. The VC arm uses Sauer--Shelah with
  exponent `v`, while the independently calibrated old arm uses the coarser
  exponent `d`. The public rate bridge states all exposed variables,
  universal hidden constants, fixed-sample probability and zero-one-risk
  modes, auxiliary choices, ceiling payments, term dominations, and the exact
  scheduled-`delta` implication. No extra positive power of `d`, `v`, or
  `log^+|C|` is hidden in `Lambda`.
- Assumption discharge: The setting, sketch, global diagnostic, and all 16
  proof/review pairs match their binding hashes; the sketch review, global
  review, and every step review are accepted. The public theorem names only
  the four primitive assumptions. The named appendix results derive quotient
  countability and measurability, dimension preservation, realizable iid
  transport, every source class and scale premise, finite list caps,
  sensitivity-one queries, one-list adjacency, privacy allocation and
  composition, the source-good and mechanism-good events, actual output,
  irreducibility, marked reconstruction, and every `d=0`/`d>=1` and
  finite/infinite-class branch before consumption. No generated event, list,
  restriction, mark, success status, or PAC conclusion is promoted to a
  theorem assumption.
- Main theorem internal references: The theorem statement in `3_main.tex`
  cites only numbered Assumptions
  `assump:finite-littlestone`,
  `assump:countable-evaluation-quotient`, `assump:realizable-iid`, and
  `assump:approximate-dp-regime`; it contains no appendix, local-result, or
  proof-step dependency. Its rate corollary names
  Proposition~`prop:step-016-frontier` for the specialization bridge. The
  final proof at `5_appendix.tex:10035` cites the exact named quotient,
  kernel, VC-arm, old-arm, finite-arm, minimum, and frontier propositions and
  concludes with Theorem~`thm:main`; no subsection or workflow status acts as
  proof authority.
- Appendix cited-result traceability: The live appendix is bound to SHA-256
  `cddd252375f1d6c1881f351bec86de1e3942e6ceb86e9a37ad84f4cce82e0208`,
  and the attempt-5 assembly report is bound to SHA-256
  `7169e916a768afa4a4698f3231ffd3d3c5ac3b08a068365e2cc8188b779a7b87`.
  All 16 accepted step interfaces are translated into paper-facing lemmas and
  propositions or integrated into their proofs. The narrow interface
  propositions introduced during assembly identify their named producers and
  are consumed downstream. No `proof_steps/...` path, reviewer decision,
  local unit ID, audit-section name, claim/hypothesis/invariant environment,
  or accepted-status narration appears as public proof evidence.
- External BibTeX entries: Independent parsing finds 62 citation commands
  using exactly `lyu2025` and `sauer1972`; both have matching entries in
  `reference.bib`. The two remaining bibliography entries are unused and are
  therefore absent from the compiled References section. No external source
  is mentioned in proof prose without either the applicable citation command
  or a local derivation replacing reliance on that source.
- Internal label/ref pairs: Independent parsing finds 134 unique labels and
  888 `ref`/`eqref` occurrences over 115 distinct targets, with no duplicate
  label and no unresolved target. There are 112 theorem-style units across
  the public bundle; every one is referenced except the terminal public
  `cor:frontier`. The 39 lemma, 71 proposition, 1 theorem, 1 corollary, 4
  assumption, and 111 proof environments are balanced. Public dependencies
  use paper-facing result names rather than workflow IDs. A fresh cached
  Tectonic build ran TeX, BibTeX, the required reruns, and PDF generation with
  exit code 0, producing
  `<TEMP_ROOT>/idea4-tectonic-attempt5-citation-review/main.pdf` at 666,335
  bytes. It emitted only overfull-box warnings and no unresolved reference or
  citation diagnostic.
- Unsupported standard facts: The countable-product and diagonal facts are
  restated with their standard-Borel hypotheses and construction; the
  without-replacement mgf comparison, Bernoulli lower-tail calculations,
  adaptive composition, postprocessing, finite exponential-weight privacy,
  and finite-arm utility calculation are proved locally. Maclaurin's
  inequality and the Bernoulli lower-tail interface are stated in exact
  current notation with their applicability conditions before the old-arm
  instantiations. No acceptance-critical conclusion rests on `clearly`,
  `obviously`, `similarly`, `routine`, or an unidentified standard theorem.

Verdict alignment: `PASS` has `Blocking Issues = None`,
`Suggested Repair Depth = None`, and `Smallest Candidate Repair Target =
None`.
