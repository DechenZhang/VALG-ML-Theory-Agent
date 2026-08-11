# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Assembly introduces a circular/forward citation chain around the repaired
   Step 015 interfaces. Proposition~`prop:step-015-interfaces` states (C6) and
   (C7) and says they are proved later; its proof cites the later
   Lemmas~`lem:step-015-tails` and `lem:step-015-lower-tail`. But
   Lemma~`lem:step-015-tails` itself assumes
   Proposition~`prop:step-015-interfaces`, so the public theorem-level chain
   for (C6) is circular. The same interface also states the simultaneous
   Laplace-noise bound before its derivation in
   Lemma~`lem:step-015-at`. The accepted Step 015 source is not defective:
   `unit_008` gives a boundary-complete pairwise-smoothing proof of (C6), and
   `unit_020` gives a sign-correct exponential-Markov proof of (C7), including
   the degree-zero and degenerate cases. Reassembly must leave those facts at
   their proved local results, or move independent proofs before any result
   that consumes them, instead of making an earlier wrapper depend on its own
   later consumer.
2. The appendix contains invalid internal proof references introduced by the
   target-step synthesis. The proof of the final result in each of the sixteen
   step subsections cites that same result by its own label, from
   Proposition~`prop:step-001-totalization` through
   Proposition~`prop:step-016-frontier`. In addition, the proof of
   Proposition~`prop:step-010-interfaces` cites the later
   Lemma~`lem:step-010-score-support`. These references resolve mechanically,
   but they are not references to earlier theorem-style evidence and therefore
   do not form a valid public citation graph. The self-citations are redundant
   synthesis prose and can be removed without changing any accepted step
   meaning; the Step 010 interface must be placed after, or stated without
   borrowing from, its later local lemma.
3. Several accepted dependency applications were translated into vague public
   prose rather than exact theorem-style references. In particular,
   Proposition~`prop:step-006-good-event` assumes an unnamed "VC-trace result"
   and its proof uses unnamed "trace bounds (1)" where the exact earlier
   Step 005 results should be cited. Proposition~`prop:step-015-total` invokes
   "the Lyu decomposition results" and an unnamed "existence result", while
   Lemma~`lem:step-015-lists` invokes "the Lyu decomposition and
   essential-hypothesis results" without naming either the earlier public
   source-interface proposition or the exact external locators. The underlying
   accepted applications are valid, but paper-ready traceability requires
   named prior results or precise BibTeX-backed source locators in these
   statements and proofs.

## Nonblocking Concerns

1. The `lyu2025` BibTeX entry identifies arXiv `2510.00076` but does not pin
   `v1`, although all source-sensitive theorem numbering was checked against
   the frozen v1 file with SHA-256
   `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
2. Two unused BibTeX entries have inaccurate author metadata:
   `ghazi2020` omits Noah Golowich, and `kasiviswanathan2008` substitutes
   H. K. Narayanan and omits Homin K. Lee and Sofya Raskhodnikova. Neither key
   is cited or emitted as proof evidence, so these are bibliography-hygiene
   concerns only.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The frozen Lyu v1 source was checked directly for
  Proposition 2; Definitions 4.1--4.3; the valid-decomposition existence
  claim; Algorithms 1--2; Lemmas 3.1--3.2 and 4.1--4.3; Corollary 4.1; and the
  empirical restriction argument in the proof of Theorem 3. Corollary 5.1 was
  inspected but is not used as kernel, privacy, measurability, or PAC proof
  evidence. Sauer--Shelah is supported by `sauer1972` and is also proved in
  current finite-restriction notation in Step 005. All 107 accepted local
  units from Steps 001--016 are present in the appendix as theorem-style
  results, with the Step 005 local claim properly promoted to a proposition.
- Source fidelity: Lyu Proposition 2 is used with its factor-two probability
  bound, denominator three, and only for the high-mean relative tail. The
  source's stray printed `k` is not consumed as the subset size. Definition
  4.2's node/leaf bounds, Lemma 4.3's direction
  `G subset H` and `(2p,d)` versus `(p,d)` scales, exact pointwise SOA
  equality, and Corollary 4.1's list/support conclusions are preserved. Sparse
  Sample uses `exp(epsilon_s * score)`, its distinct failure symbol, exact list
  cap, and `(2 epsilon_s, delta_s)` one-list privacy. AboveThreshold uses the
  source Laplace convention and `K=1`. The malformed `SOA_G(h)` display and
  unsupported probability-one amplification in Lyu Theorem 3 are expressly
  excluded; only the valid restriction contradiction is rederived.
- Instantiation and object mapping: Source objects are mapped to the countable
  evaluation quotient `Q_C`, the actual quotient class `bar C`, and the full
  output space `H_C`. Quotient VC/LD identities, restrictions, decomposition
  scales, actual essential functions, SOA equality on all of `Q_C`, list
  adjacency, raw replace-one transport, iid pushforward, decoder identity, and
  exact binary population risk are established before their consumers. The
  endpoint completion `r=0,...,d` and half-scale map are stated as a current
  construction, not falsely attributed as a literal source display.
- Quantitative regime fidelity: Every use checks positive integer scales,
  nonempty source classes, `d>=1`, `0<xi<1`, valid without-replacement sample
  sizes, list-size caps, sensitivity-one queries, privacy/confidence ranges,
  and the fixed sample horizon. The VC arm retains exponent `v`; the old arm
  deliberately uses the coarser exponent `d` only after proving
  `n_old>=d>=1`. C6 is fully self-proved for `N>=1`, `0<=m<=N`, nonnegative
  weights, and `m=0`; C7 is fully self-proved for `M>=0`, `p in [0,1]`, and
  `0<theta<1`, including `M=0`, `p=0`, and the exact `theta=3/4`
  specialization. Fixed-parameter privacy/PAC statements and the distinct
  scheduled-`delta` implications are not interchanged.
- Assumption discharge: The frozen `assembly_report.md` hash is
  `e7f25723ae479461d4a1d013a15b09b57e0c52d8f6441c783a57a2423f86e314`
  and the frozen appendix hash is
  `97882501fd830b5615860510e429a45c07b25433a1eb5b60415e7824233078ca`.
  The report was used only as diagnostic context. The accepted sketch/global
  diagnostics were not used as proof authority. Each of the sixteen live
  reviews binds the exact current proof SHA-256 and reports `ACCEPTED`, but all
  dependency and source applications were rechecked independently. Primitive
  structural, quotient-measurability, realizable-iid, and approximate-DP
  assumptions are otherwise discharged at the named public results.
- Main theorem internal references: The theorem statement in `3_main.tex`
  uses internal `ref` commands only for the four numbered primitive assumptions
  and contains no appendix-local theorem, step ID, reviewer artifact, or
  workflow path; its old-arm source mention has a valid external Lyu citation.
  The final main-theorem
  proof uses named public results and preserves the common output, decoder,
  all-input raw privacy, unconditional iid PAC, population-risk, and
  fixed-horizon interfaces. The blockers are in the appendix dependency graph,
  not a main-theorem statement reference.
- Appendix cited-result traceability: Every accepted local derivation is
  materially present, and no proof asks the reader to trust a step file or
  review status. The prior Step 013 theorem-type mismatch is repaired: the
  synthesis now names Lemma~`lem:step-012-empirical` as a lemma. The remaining
  forward/circular, self-referential, and vague dependencies are exactly the
  assembly defects in Blocking Issues 1--3.
- External BibTeX entries: The public bundle has 68 citation commands: 62 use
  `lyu2025` and 6 use `sauer1972`. Both keys have matching entries in
  `reference.bib`; no cited key is missing. The two inaccurate unused entries
  and the unpinned Lyu version are recorded above and do not supply proof
  authority.
- Internal label/ref pairs: The bundle has 134 unique labels, no duplicate
  label, no unresolved `ref`/`eqref` target, no public claim/hypothesis/invariant
  dependency, and no theorem-type mismatch. A fresh cached Tectonic/BibTeX run
  completed the 113-page TeX pass with no undefined citation or reference
  warning; only font-substitution and overfull-box warnings appeared.
  Mechanical resolution does not validate the semantic cycles and self-uses
  in Blocking Issues 1--2.
- Unsupported standard facts: The relevant nontrivial facts are no longer
  unsupported in the accepted sources: Step 005 proves Sauer counting in the
  finite restriction, Steps 006 and 013 derive their concentration bounds,
  Step 015 proves C6, C7, and finite-transcript adaptive composition, and Step
  016 derives the finite exponential-weight privacy and risk bounds. The
  acceptance failure is the assembled placement and citation graph for those
  proofs, not a missing external authority or a defect in the repaired Step
  015 derivations.
