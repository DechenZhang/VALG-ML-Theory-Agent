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
  1, upgraded split mode.
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
- Reference and hygiene checks: 81 labels are unique; all 485 internal
  references resolve; all three citation uses resolve to the Lau--Scarlett
  BibTeX entry. Scans found no malformed bare commands, template placeholders,
  unsupported public proof environments, workflow/provenance language, audit
  scaffolding, or forbidden mechanical phrases.
- Compilation evidence: `Tectonic 0.16.9` compiled `main.tex` with the
  directory-form cached bundle via
  `tectonic -b <TEMP_ROOT>/proof_assembly_tectonic_bundle --keep-logs --keep-intermediates --print main.tex`.
  The command exited 0 and produced a 60-page PDF. The final log scan found no
  overfull or underfull boxes, unresolved references or citations, duplicate
  definitions, or rerun request.
- Rendered-output evidence: because `pdftotext` is unavailable, Swift/PDFKit
  independently extracted all 60 pages and 118,974 text characters. The scan
  found no replacement characters or forbidden/unresolved markers and found
  all ten required title, theorem, bridge, proof, bibliography, and citation
  signatures. The verified PDF had SHA-256
  `42ac62dc5ded35c10a7dde2add08bcfe54b74b0243fdb0dc9df56b109711d0bb`.
  Generated compile products were removed after verification; the canonical
  bundle consists only of the nine source files below.
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
87101a2593570022116ffef8a42f27f918fa3a8ea970dbb7f046eeaa278ff96a  5_appendix.tex
b002817db506e413f880f1fea80e70d97960f233db6eb2a0489a1570636a7f41  main.tex
e1d28a2426c8595fb5b68f444cda16893f6bc646e031a8a89f9b59c33f0bdb42  arxiv.sty
c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f  ims.bst
c6f128fa3a88226c29204fc5a6b52aa80840ce1ea0ad109bcc358db3e5534520  reference.bib
```
