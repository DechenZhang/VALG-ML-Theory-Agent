# Assembly Report

## Status

COMPLETE

## Attempted Claim

For every fixed \(k>1\), there exist constants \(c_k,C_k>0\) and protocol
design choices depending only on \(k\) and the known tuple
\((\lambda,\sigma,\epsilon,\delta)\) such that, for every
\(\lambda\geq\sigma>0\), \(0<\epsilon\leq c_k\sigma\), and
\(\delta\in(0,1/2)\), the resulting fully noninteractive deterministic
fixed-horizon protocol uses exactly one bit from each of
\(n=N_{\rm loc}+N_{\rm ref}\) independent samples, precommits every
randomized measurable query before any response is observed, and satisfies

\[
n\leq C_k r_k(\lambda,\sigma,\epsilon,\delta),
\qquad
\sup_{D\in\mathcal D(k,\lambda,\sigma)}
\Pr_{D,\,\mathrm{protocol}}
\{\lvert\widehat\mu-\mu(D)\rvert>\epsilon\}\leq\delta.
\]

The guarantee is unconditional over all samples and protocol randomness, is
in absolute error on \(\mathbb R\), and has no asymptotic, stopping-time, or
conditional-on-localization interpretation. The displayed and hidden theorem
constants depend only on fixed \(k\), not on
\(\lambda,\sigma,\epsilon,\delta\), or \(D\).

## Blockers

None

## Notes

- Assembly identity: perspective 1, idea 1, sketch attempt 1, assembly attempt
  2, upgraded split mode, aggregate-routed `repair_assembly`.
- Trigger and repair scope: the controlling `proof_review.md` has SHA-256
  `c09ecb3dee2d990b9d139f858ad29c4ee5928b92795eeb9c84cbf8704902ada8`,
  Score 6, Failure Type `PROOF_ASSEMBLY_FLAW`, Suggested Next Action
  `/proof-assembly`, and Retry Mode `repair_assembly`. The sole public-source
  repair replaces the dependency clause of Proposition
  `prop:step-008-target-interface` with exactly
  Assumption~`assump:moment-class`, Lemma~`lem:step-001-first-moment`,
  Proposition~`prop:step-008-conditional-mean`,
  Proposition~`prop:step-006-residual-interface`, and
  Lemma~`lem:step-006-zero-displacement`. It removes the misattributed
  source-localization/midpoint/cost list and the duplicated
  finite-telescope/floor-remainder list. Comparison with the archived consumed
  attempt has one diff hunk confined to this premise clause; the proposition
  conclusion and proof body are unchanged.
- Coverage and closure: all 14 required proof steps have current `ACCEPTED`
  reviews whose recorded proof hashes match the current proof artifacts. The
  appendix preserves all 56 local units and all 14 target-step assemblies.
  It contains 56 theorem-style environments and 70 corresponding local or
  step-assembly proof environments, followed by two direct proofs assembling
  the technical theorem and public rate corollary.
- Source fidelity: the source and appendix each contain the same 94 numbered
  equation tags, with identical multiplicity and no missing or extra tag. The
  appendix retains the exact constants, three variance regimes, sole \(k=2\)
  accuracy logarithm, low-\(k\) exponent \(k/(k-1)\), zero-query branch,
  empty-group semantics, zero-displacement identities, and point-mass
  specialization.
- Assumption and public-interface checks: the three stable setting assumption
  ids match the three numbered public assumption labels exactly. The two main
  theorem/corollary statements contain no appendix-local references. The named
  Rate Specialization Bridge verifies the auxiliary choices, technical
  conditions, all ceiling and term-absorption inequalities, probability
  conversion, final hidden-constant dependence, and exact baseline invariance.
- Reference and hygiene checks: 81 labels are unique; all 480 internal
  references resolve; all three citation uses resolve to the Lau--Scarlett
  BibTeX entry. Scans found no malformed bare commands, template placeholders,
  unsupported public proof environments, workflow/provenance language, audit
  scaffolding, or forbidden mechanical phrases.
- Compilation evidence: `Tectonic 0.16.9` compiled `main.tex` with the
  directory-form cached bundle via
  `tectonic -b <TEMP_ROOT>/proof_assembly_tectonic_bundle --keep-logs --keep-intermediates --print main.tex`.
  The command ran BibTeX, exited 0, and produced a 60-page, 362,197-byte PDF.
  The final-pass log has no TeX/package error, undefined or unresolved
  reference/citation, duplicate definition, overfull or underfull box, or rerun
  request; it contains only two harmless Wasy font-shape substitutions.
  Tectonic also reported pre-existing invalid-byte replacement warnings in the
  cached `algorithm.sty` and `algorithmic.sty`, which are outside the canonical
  bundle. The verified PDF has SHA-256
  `e668dbd4feeacdea956ee7d05e8ee189b347a8442b84e54fdb6c28c25173f3fc`.
  Neither `pdftotext` nor a compatible local Swift/PDFKit toolchain was
  available, so the stale rendered-text claim from attempt 1 is not reused.
  Generated compile products were isolated outside the canonical source tree;
  the canonical bundle consists only of the nine source files below.
- The repaired step 013 attempt-2 identities remain pinned to proof hash
  `e1dca19c8cf7905483c6fda7dfa19460e76ca013b9a6e537100a9f2c6a2c4bf2`
  and review hash
  `98e9c4a630e13d858ccc77ae29b094df546d8635f3ff9f2fc17435acdbebd4dc`.

### Canonical Bundle SHA-256 Manifest

```text
2c1634202a777f0d5a05758f03aeedcf118d3a0bad401d278d1350335c29ee82  1_intro.tex
c7a85101f33a52fb1cdfb995c22448e51ed0c1dd885369df7ad56672ba2fd75b  2_preliminary.tex
404489917d34f11c70a8972a7a7d6d5f0e4c704f526e0faa69d506bdf91ea1d3  3_main.tex
e02a5fe259abc053a63347c2d9ea6869126a1619719d2b139cbf303b77097ac3  4_proof_sketch.tex
9c51b46cbd55d1c367b9c191972fe8000d47bba870efeb57f4ea32c2fadc1e4d  5_appendix.tex
b002817db506e413f880f1fea80e70d97960f233db6eb2a0489a1570636a7f41  main.tex
e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42  arxiv.sty
c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f  ims.bst
c6f128fa3a88226c29204fc5a6b52aa80840ce1ea0ad109bcc358db3e5534520  reference.bib
```
