# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The final proof of the main theorem in `latex_template/5_appendix.tex` (lines 10836--10841) says that quotient factorization, dimension preservation, raw-neighbor transport, iid pushforward, and exact risk transfer are supplied by Propositions~`\ref{prop:step-002-factorization}`, `\ref{prop:step-002-record-map}`, `\ref{prop:step-002-iid-pushforward}`, and `\ref{prop:step-002-risk}`. None of those proposition statements proves preservation of VC or Littlestone dimension. The exact accepted results are Lemmas~`\ref{lem:step-002-vc}` and `\ref{lem:step-002-ld}`. Thus the final public dependency attribution omits the theorem-style authorities for one of the conclusions it expressly invokes. The accepted Step 002 artifacts already contain the valid results, so the smallest repair is to add those two lemma references to the final proof (or remove the redundant dimension-preservation attribution) during assembly.

## Nonblocking Concerns

1. `reference.bib` retains the unused entries `ghazi2020` and `kasiviswanathan2008`. Every citation command resolves, so these extra entries do not affect the proof or compiled bibliography.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: Blocking only at the final-proof dimension-preservation attribution identified above. All other audited internal theorem-style uses match their stated conclusions.
- Source fidelity: The public uses of Lyu (2025) match the frozen source statements for Proposition 2, Algorithms 1--2, Lemmas 3.1--3.2, Definitions 4.1--4.3, Claim 4.1, Lemmas 4.1--4.3, Corollary 4.1, Theorem 3, and Corollary 5.1. Sauer--Shelah is cited and reproved in current notation.
- Instantiation and object mapping: The VC and old restrictions use source index `s=r+1`, include the operational endpoint `s=d+1`, and distinguish the current scale `p_r` from the literal source scale by `p_r=p_{r+1,src}/2`; Sparse Sample, AboveThreshold, DDim, SOA, quotient, and raw-pullback objects are translated explicitly.
- Quantitative regime fidelity: The Sparse Sample exponent, failure score, list cap, lower bound on `B`, independent Laplace noise, factor-two scales, confidence splits, ceilings, fixed-parameter guarantees, and scheduled-small-`delta` statements preserve the source regimes and exposed dependence.
- Assumption discharge: The source-bearing applications and accepted dependency applications discharge their stated primitive assumptions and local conditions. In particular, `lem:step-011-record-locality` and `prop:step-015-pac` state their complete repaired assumption bases.
- Main theorem internal references: Blocking because the final proof omits `lem:step-002-vc` and `lem:step-002-ld` while expressly invoking dimension preservation. The main theorem statement itself cites only numbered primitive assumptions, as required.
- Appendix cited-result traceability: Apart from the final-proof omission, the appendix restates external results in current notation and cites accepted theorem-style results rather than workflow artifacts.
- External BibTeX entries: The only public keys are `lyu2025` and `sauer1972`; both have valid entries and compile. Two unused entries remain as a nonblocking concern.
- Internal label/ref pairs: Mechanical audit found 134 unique labels, 896 resolved references, no duplicate labels, no unresolved targets, no theorem-type mismatch among explicit typed references, and no malformed citation or reference command fragments.
- Unsupported standard facts: None acceptance-blocking. The elementary countable-discrete and standard-Borel closure uses are accompanied by the needed current-space constructions; all nontrivial probabilistic, privacy, combinatorial, and source-specific steps are proved or cited.

Verdict alignment: `BLOCKING` is paired with one numbered blocking issue, repair depth `assembly`, and target `/proof-assembly`.
