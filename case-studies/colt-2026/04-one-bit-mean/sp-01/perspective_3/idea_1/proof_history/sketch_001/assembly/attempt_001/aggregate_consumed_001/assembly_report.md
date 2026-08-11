# Assembly Report

## Status

COMPLETE

## Attempted Claim

For every fixed known \(k>1\), there are constants \(c_k,C_k>0\) and
corresponding \(k\)-only choices of \(a_k,b_k,\alpha_k,\beta_k\) such that,
for every known \(\lambda\geq\sigma>0\), every
\(0<\epsilon\leq c_k\sigma\), and every \(\delta\in(0,1/2)\), the specified
fixed-horizon protocol precommits every randomized Borel query before any
message, uses exactly one bit per independent sample, and satisfies
\[
N_{\rm loc}+N_{\rm ref}
\leq C_k r_k(\lambda,\sigma,\epsilon,\delta),
\qquad
\sup_{D\in\mathcal D(k,\lambda,\sigma)}
\Pr_D\{|\widehat\mu-\mu(D)|>\epsilon\}\leq\delta.
\]
The probability is unconditional over both sample blocks and all protocol
randomness, the horizon is deterministic and non-stopping, the norm is
absolute value on \(\mathbb R\), and the hidden constant depends only on the
fixed \(k\). The assembled theorem also retains the accepted exact
supported-cell level-zero reduction and seedwise point-mass recovery.

## Blockers

None

## Notes

### Source coverage

All eight current proof/review pairs were hash-checked against their accepted
review identities before assembly. The appendix contains eight mathematical
subsections, all 33 accepted local theorem units, a paper-facing conclusion of
each source target-step assembly inside the corresponding final proof, and a
separate proof of the main theorem.

| Source block | Public theorem-style units | Directly preserved obligations |
| --- | --- | --- |
| step 001 | `prop:localization`, `lem:localization-core`, `lem:recentered-moment`, `prop:refinement-independence` | Lau--Scarlett source mapping, zero-query and coded branches, all source ceilings, midpoint/grid ties, recentering, shifted-moment measurability, and the full conditional product law |
| step 002 | `lem:dyadic-ancestor`, `prop:ring-partition`, `lem:four-color`, `lem:query-measurability` | Negative-index Euclidean ancestry, both children, exact half-open ring partition, color separation, amplitudes, countable-mask stabilization, joint Borelness, and precommitment |
| step 003 | `lem:dither-moments`, `lem:mask-projection`, `prop:level-inversion`, `prop:mean-telescope` | Both exact dither moments, mask self/cross moments, every importance factor at level zero and higher levels, alias cancellation, finite telescope, outer residual, and exact baselines |
| step 004 | `lem:target-distance`, `lem:alias-distance`, `lem:activation-ledger` | Both target-child cases, both alias directions, boundary strictness, unique retained activity, geometric scale summation, and zero-charge specializations |
| step 005 | `lem:level-zero-square`, `lem:higher-square`, `prop:pointwise-square`, `prop:conditional-variance` | Exact target-and-alias square formulas, separate coordinate/mass ledgers, every \(p_s^{-1}\), pointwise summation before integration, recentering, and the explicit single \(S+1\) factor at \(k=2\) |
| step 006 | `lem:outer-scale`, `prop:tail-bound`, `lem:normalizer`, `prop:scale-rate` | Legal \(a_k,b_k,c_k\), exact dyadic ceiling, tail threshold and boundary atoms, all three finite geometric sums, every rounding/denominator factor, exact \(A_k\) rates, and positive lower bounds |
| step 007 | `prop:conditional-iid`, `lem:block-accuracy`, `lem:median-amplification`, `prop:conditional-accuracy` | Full-transcript conditional iid law, zero variance, block ceiling, Chebyshev calculation, odd-median majority implication, independent-group Hoeffding bound, smallest group case, and \(3\epsilon/4\) same-target accuracy |
| step 008 | `prop:query-legality`, `prop:one-bit-accounting`, `prop:unconditional-pac`, `prop:technical-count`, `prop:rate-specialization-bridge`, `prop:baseline-reductions` | Borel and zero-adaptivity audit, exact message inventory, tower conversion, all ceilings and localization-confidence absorption, all three public substitutions, hidden-constant scope, and both exact baseline reductions |

The material omitted from the public appendix consists only of workflow
headings, status/provenance text, dependency inventories, review/audit prose,
and target-assembly restatements that exactly duplicate complete displayed
derivations already retained in the same subsection. No definition, equation,
inequality, case split, boundary case, cited-result hypothesis discharge,
constant, probability conversion, rate substitution, or final implication was
dropped.

### Public contract checks

- The main theorem uses only setup/preliminary notation and the four stable
  numbered assumptions; it contains no forward reference to an appendix-local
  result.
- Proposition `prop:rate-specialization-bridge` verifies the legal auxiliary
  choices, \(H_\star/h_0\geq2\), dyadic rounding, tail and concentration
  thresholds, block/group/source ceilings, localization-confidence absorption,
  unconditional probability conversion, all three \(A_k\) substitutions, and
  \(k\)-only hidden-constant dependence.
- The supported-\(J_0\) and point-mass reductions remain exact rather than
  being weakened to an \(O(\epsilon)\) statement.
- The only external source is Lau and Scarlett, arXiv:2604.07796v2, cited with
  a complete BibTeX entry. Its Theorem 16/source-label and appendix-label map,
  interval length \(100\sigma\), midpoint radius \(50\sigma\), zero-query
  branch, clipped-bin/codeword queries, minimum-index Hamming tie, and unused
  location-dependent second stage are all stated in the public proof.
- Static checks found 39 unique labels, 245 resolved internal references, and
  three citation commands with no missing BibTeX key. There are no duplicate
  labels, unresolved references, malformed reference/citation commands,
  placeholders, forbidden appendix environments, workflow provenance, or
  non-ASCII control bytes.

### Compilation

From `perspective_3/idea_1/latex_template/`, the command
`tectonic main.tex --keep-logs --keep-intermediates` completed successfully,
including BibTeX and the required TeX rerun, and produced a 231 KB PDF during
verification. The final log contained no TeX error, undefined reference,
undefined citation, multiply-defined label, or overfull box. It reported one
minor underfull paragraph and shared-font substitution warnings only. Generated
PDF and auxiliary files were removed afterward so that the branch contains
only the requested canonical outputs.

The compile entry suppresses the unused, mutually incompatible `subcaption`
load and the two unused legacy algorithm packages requested by the shared
style. The shared support files themselves remain byte-for-byte identical to
the canonical template:

- `arxiv.sty`: `e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42`
- `ims.bst`: `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f`

### Controller artifact-gate repair

The invalid controller snapshot remains immutable at
`perspective_3/idea_1/proof_history/sketch_001/assembly/attempt_001/controller_contract_invalid_001/`.
The active bundle restores 19 missing LaTeX command backslashes across 15
formula lines: one `\\quad`, one `\\mathop`, and one `\\qquad` in
`2_preliminary.tex`, together with thirteen `\\qquad`, two `\\log`, and one
`\\leq` in `5_appendix.tex`. The active/archive LaTeX diff is limited to those
literal command restorations in these two files; the other seven canonical
LaTeX files remain byte-for-byte identical to the snapshot.

The controller-required boundary-aware PCRE scan over `quad`, `qquad`,
`mathop`, `operatorname`, `overline`, `mathbf`, `mathbb`, `mathrm`, `mathcal`,
`frac`, `dfrac`, `tfrac`, `lceil`, `rceil`, `lfloor`, `rfloor`, `bigl`, and
`bigr` found no bare-command match. A broader math-region lexer derived from
the commands used in `setting.md`, all eight accepted step proofs, and the
active TeX likewise found no bare-command candidate after excluding
intentional textual macro arguments. All 33 theorem units remain present,
with per-step counts `4, 4, 4, 3, 4, 4, 4, 6`.

`pdftotext` was unavailable, as were `mutool` and `pdfinfo`. The substitute
audits were the source-derived math-region scan above and a `strings -a` scan
of the compiled PDF, which found none of the visible fragments `quad`,
`qquad`, `mathop`, `frac`, `mathbf`, `mathbb`, `mathcal`, or `overline`.
Tectonic completed TeX, BibTeX, the required reruns, and PDF generation after
the repair with no TeX error, unresolved reference or citation,
multiply-defined label, or overfull box.

### Output manifest

| File | SHA-256 |
| --- | --- |
| `latex_template/main.tex` | `4ebbeb8280e5f309331d01b24875e51804e511e791afbd02649a0493d0e3e943` |
| `latex_template/arxiv.sty` | `e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42` |
| `latex_template/ims.bst` | `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f` |
| `latex_template/reference.bib` | `36de0b95040407eea5ba22c36810f7edb2fd5afa6d528c1e468e6472573c5db6` |
| `latex_template/1_intro.tex` | `074501ff6f2da5280e0b77482d79e45b28a8fbdb6fd21d16fa9d986788e78d12` |
| `latex_template/2_preliminary.tex` | `e577f69e2dbf284ff967848ad824974748e24657efde35e03f61b4d02f697366` |
| `latex_template/3_main.tex` | `9dd34f7e7b27459347b51c53da7a93a78c5062d02c6bf4246c6722afa7001c9c` |
| `latex_template/4_proof_sketch.tex` | `4474ff83734ef4b008d140bb030fa97fa79412919ae44cb45811367655f4b7ba` |
| `latex_template/5_appendix.tex` | `3c2d81cc12915b2d655c168590efdc5129c9f5a775c19399367df019196d5f0d` |

The report is excluded from its own manifest to avoid a self-referential hash.
