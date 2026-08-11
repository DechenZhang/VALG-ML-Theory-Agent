# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The accepted Step 015 proof and its public appendix translation rely on
   two nontrivial named inequalities without a verifiable source or an inline
   derivation. In `proof_steps/step_015/proof.md`, equations (C6)--(C7) merely
   state Maclaurin's inequality and a Bernoulli Chernoff lower tail; the proof
   then invokes (C6) in `unit_008` and calls the Chernoff formula an
   "exponential-Markov lower-tail calculation" in `unit_020` without carrying
   out that calculation. The same unsupported interfaces occur in
   `5_appendix.tex` at (C6)--(C7), are used in Lemmas
   `lem:step-015-tails` and `lem:step-015-lower-tail`, and have no matching
   BibTeX-backed citation. Exact formula display and hypothesis mapping check
   applicability, but do not establish source fidelity or prove either
   inequality. Because this citation gap is already present in the accepted
   step rather than introduced by assembly, Step 015 must supply checked
   source locators or self-contained derivations and receive a fresh accepted
   step review before reassembly.
2. The Step 013 synthesis paragraph in `5_appendix.tex` calls
   `\ref{lem:step-012-empirical}` a "Proposition" even though the target is
   declared and otherwise consumed as a lemma. The accepted Step 013 proof
   names it correctly, so this is an assembly-introduced public traceability
   defect. The citation contract requires the displayed theorem-style type to
   agree with the referenced result; the paragraph must say
   `Lemma~\ref{lem:step-012-empirical}` during the required downstream
   reassembly.

## Nonblocking Concerns

1. The `lyu2025` entry records arXiv `2510.00076` without the `v1` suffix,
   whereas theorem numbering and all direct source checks use the frozen v1
   source at SHA-256
   `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
   The public appendix itself identifies v1 where version sensitivity matters,
   and the title, author, and identifier are consistent, so the omission does
   not invalidate the checked applications. Pinning `2510.00076v1` would make
   the public bibliography match the audited source identity exactly.
2. The unused `kasiviswanathan2008` entry has an inaccurate author list: it
   substitutes `H. K. Narayanan` and omits Homin K. Lee and Sofya
   Raskhodnikova. The key is never cited and is not proof evidence, so this is
   bibliography hygiene rather than a blocker for the assembled claim.

## Suggested Repair Depth

step

## Smallest Candidate Repair Target

/proof-step step_015

## Citation Audit

- Cited theorem statements: All public applications of Lyu~v1 were checked
  against the frozen source: Proposition~2; Definitions~4.1--4.3 and
  decomposition existence; Lemmas~3.1--3.2 and~4.1--4.3; Corollaries~4.1
  and~5.1; Algorithms~1--2; and the empirical contradiction used from
  Theorem~3. Sauer--Shelah is cited through `sauer1972`. The only unsupported
  theorem-level interfaces are Step 015's Maclaurin and Bernoulli Chernoff
  inequalities described in Blocking Issue~1.
- Source fidelity: The factor-two direction in Lyu's decomposition claims,
  the denominator three in Proposition~2, the `exp(epsilon * score)` Sparse
  Sample convention, its threshold and `(2 epsilon_s, delta_s)` privacy, and
  the asymptotic AboveThreshold privacy form with `K=1` all match the frozen
  source. The appendix explicitly treats the `d+1` endpoint as completion of
  the source's printed omission and does not claim a false literal identity
  between current and source half-scale stages. It excludes the malformed
  `SOA_G(h)` display and unsupported probability-one sentence from Lyu's
  Theorem~3. Corollary~5.1 is used only for lineage, not as a substitute for
  the proved kernel, privacy, confidence, or reconstruction interfaces.
- Instantiation and object mapping: Lyu's domain and class are translated to
  `Q_C` and `bar C`, with `VC(bar C)=v`, `LD(bar C)=d`, restriction behavior,
  decomposition scales, finite essential lists, SOA identities, list
  adjacency, and raw/quotient decoder and risk maps established before use.
  Sparse Sample and AboveThreshold parameters are instantiated with the
  current old-arm allocations. The restored Step 005, Step 008, and Step 013
  public interfaces are present before their consumers. No cited source is
  applied directly to the raw domain without the quotient bridge.
- Quantitative regime fidelity: Proposition~2 is confined to its high-mean
  without-replacement branch with the correct factor two; the near-zero
  branch is reduced through (C6). The old-arm trace exponent is deliberately
  `d`, while the VC arm uses `v`. Source thresholds, list caps, confidence
  shares, privacy allocations, ceilings, fixed-sample modes, and fixed versus
  scheduled `delta` regimes are retained. The rate bridges expose the stated
  structural, privacy, accuracy, confidence, and class-size variables without
  importing a hidden source parameter. This audit cannot accept the two
  concentration rates whose named supporting inequalities lack proof or
  source identity.
- Assumption discharge: The setting, sketch, sketch review, global diagnostic,
  global review, assembly report, appendix, and all sixteen accepted
  proof/review pairs match their pinned identities; every step review is
  `ACCEPTED`, and assembly attempt~6 reports `COMPLETE`. Primitive assumptions,
  quotient measurability and dimension preservation, iid transport, source
  scale conditions, sensitivity, adjacency, finite support, probability
  conditioning, and boundary branches are discharged at the relevant named
  results. The fresh finite-transcript adaptive-composition derivation checks
  both neighbor directions, postprocessing, and common data-independent
  mixing. Acceptance of the step reviews does not cure the missing evidence
  for (C6)--(C7).
- Main theorem internal references: The main theorem statement cites only its
  numbered primitive assumptions and does not depend on appendix-local units,
  proof-step IDs, or workflow artifacts. The public proof uses named
  theorem-style results. No main-theorem reference mismatch was found.
- Appendix cited-result traceability: Accepted dependency claims and local
  units are translated into public lemmas and propositions rather than
  internal paths or reviewer status. The restored assembly interfaces and the
  new Step 015 composition proof are public and locally checkable. The sole
  theorem-type mismatch found is the `Proposition` reference to
  `lem:step-012-empirical` in Blocking Issue~2.
- External BibTeX entries: The public bundle has 62 citation commands: 56 use
  `lyu2025` and 6 use `sauer1972`; both keys have matching entries. No cited
  key is missing. The unversioned Lyu identifier and inaccurate unused
  `kasiviswanathan2008` metadata are recorded above. The unused entry does not
  appear as proof authority.
- Internal label/ref pairs: The attempt-6 bundle has 134 unique labels, no
  duplicate label, and no unresolved `ref` or `eqref` target. A cached
  Tectonic compile completed with BibTeX and produced
  `<TEMP_ROOT>/idea4-citation-review-check/main.pdf`; only overfull-box
  warnings remained. Mechanical resolution does not detect the semantic
  theorem-type mismatch in Blocking Issue~2.
- Unsupported standard facts: Elementary inequalities used elsewhere are
  either derived at the point of use or routine algebra. Sauer--Shelah has a
  matching external citation. Step 015's finite-transcript composition and
  postprocessing interface is now proved inline. Maclaurin's inequality and
  the Bernoulli lower-tail Chernoff bound remain nontrivial named facts that
  are only stated and invoked, with neither an inline proof nor a
  BibTeX-backed source, and therefore block citation acceptance.

Verdict alignment: `BLOCKING` has numbered blocking issues, `Suggested Repair
Depth = step`, and `Smallest Candidate Repair Target = /proof-step step_015`.
