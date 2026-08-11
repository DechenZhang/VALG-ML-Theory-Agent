# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The accepted `proof_sketch.md` contains two form-feed bytes at lines 415--416 where redundant renderings of `\frac` were intended. The exact rational inequality is stated unambiguously in the sketch's binding rate rows and is proved correctly in accepted Step 14 and in the public appendix. These bytes do not occur in the public TeX bundle and do not affect any cited-result application.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: The proof uses Yan's VC-one structural and learner ingredients; the Bun--Nissim--Stemmer--Vadhan choosing mechanism and with-replacement resampling result; Hoeffding's inequality; and the Alon--Livni--Malliaris--Moran Shelah, Ramsey, reduction, AtoP, product, and binary-chain interfaces. Each source result exists and supports the conclusion attributed to it. The proof does not substitute Yan's final printed learner theorem or ALMM's printed PAC corollary for the stronger current-notation interfaces derived in the accepted steps.
- Source fidelity: Direct primary-source inspection found no nearby-result substitution, omitted side condition, or statement strengthening. The audited Yan v2 source has SHA-256 `12d177c0dc94864dcc90bc904e558187dcdbd752de3fd0f412bfa6898ada8f06`; the BNSV source has SHA-256 `ae85c2352f6373357d60166aa88626edcb11337d2a5f4efe5d1c83edf355649e`; the ALMM v3 archive has SHA-256 `90d1ad2757740a9cbdc8a5d3d9e84db2a8981258f15c42e6ebb5ce09a1ad29e6`; and its audited `ADP.tex` has SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`.
- Instantiation and object mapping: Yan's objects are translated to the countable evaluation quotient, the reference-transformed VC-one class, finite ordered depths, a finite private-median domain, and finite positive choosing support. BNSV is mapped to bounded-growth selection and the exact replacement-private resampling wrapper. ALMM is mapped to finite ordered threshold witnesses, arbitrary possibly improper bit-vector outputs, replacement privacy, and the same population-risk object. The later finite restriction/extension, hard-prior, one-use simulation, coupling, and tensorization objects are all defined in current branch notation.
- Quantitative regime fidelity: The public proof preserves the privacy split and support-two composition, fixed factor accuracy and confidence, quota ceilings, finite depth/domain conditions, Hoeffding parameters, ALMM expected-loss premise, strict subcritical budget, non-strict delta cap, resampling range, logarithm bases, fixed-candidate scope, probability modes, and universal hidden-constant dependence. The arbitrary-`delta` upper theorem and candidate-wise lower theorem remain separated, and both lower delta conjuncts are checked only at the same fixed candidate. Every public rate simplification is backed by a named bridge and displayed absorption inequalities.
- Assumption discharge: The accepted chain discharges countable-quotient measurability, standard-Borel output, all-input replacement adjacency, bounded growth, finite support where used as a witness, iid sampling, realizability, compactness, convexity, minimax, resampling, candidate-delta admissibility, and bounded-loss probability conversion. The finite polytope theorem, finite minimax identity, exponential Markov bound, and elementary series/derivative facts are restated or derived at their current finite-dimensional or integrable instantiations. No cited source requires an additional primitive assumption.
- Main theorem internal references: The main theorem cites only numbered setting assumptions, preliminary definitions/equations, and equations defined inside the theorem. It contains no appendix-local theorem, appendix subsection, proof-step identifier, local-unit identifier, workflow artifact, or reviewer decision as authority.
- Appendix cited-result traceability: All 15 live proof/review pairs have matching review identities and `ACCEPTED` status. Every one of the 69 theorem-style labels in the accepted step proofs occurs in the appendix, and the final assembly cites the corresponding paper-facing lemmas and propositions rather than workflow files or unit IDs. The repaired Step 5 factor-utility reference, command escapes, and Step 8 Ramsey product are present in their intended TeX forms.
- External BibTeX entries: The four public keys `yan2025vc1`, `bunNissimStemmerVadhan2015`, `hoeffding1963`, and `alonLivniMalliarisMoran2019` each have a matching entry in `latex_template/reference.bib`. A clean source-only Tectonic run executed BibTeX and rendered all four entries without an unresolved citation.
- Internal label/ref pairs: Static scanning found 490 unique labels and 285 unique referenced targets, with no duplicate label, unresolved `\ref`/`\eqref` target, malformed command fragment, control byte in public TeX, or forbidden public `claim`, `hypothesis`, or `invariant` dependency. A clean source-only compile completed without unresolved references, citation warnings, or overfull boxes; the remaining font substitutions and three underfull boxes are presentation-only.
- Unsupported standard facts: None. Nontrivial external tools are BibTeX-backed. Finite-dimensional compactness and minimax are stated with their exact finite hypotheses and instantiated objects; the binomial tail bound, bounded-loss conversion, finite averaging, risk decomposition, privacy mixing, and coupling identities are derived inline.
