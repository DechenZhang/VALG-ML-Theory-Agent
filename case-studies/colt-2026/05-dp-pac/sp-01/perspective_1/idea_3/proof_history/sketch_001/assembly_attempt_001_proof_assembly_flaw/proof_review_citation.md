# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public Step 5 dependency citation at `latex_template/5_appendix.tex:1750` is byte-corrupted. The accepted Step 5 proof uses `Proposition~\ref{prop:step-002-factor-utility}`, but the appendix contains `Proposition~<0x0D>ef{prop:step-002-factor-utility}`: a carriage-return byte replaces the backslash and initial `r`. TeX therefore never sees a `\ref` command, the compilation log cannot report an undefined reference, and the public proof has no valid paper-facing citation for the factor-utility inequality it consumes.
2. The appendix has 28 assembly-introduced missing command escapes inside public mathematical statements and derivations: 20 bare `qquad` tokens (lines 173, 174, 179 twice, 340, 341, 396, 397, 619, 624, 672, 1238, 1239, 1254, 1259, 1264, 1269, 2001, 2002, and 2441), six bare `quad` tokens (lines 342 twice, 605, 1277 twice, and 1278), and two bare `operatorname` tokens (line 517). The accepted step proofs contain the intended TeX commands. In the appendix these bare words are parsed as mathematical identifiers rather than spacing or operator commands, so the public bundle is not a faithful translation of the accepted theorem statements and citation-bearing derivations.
3. The theorem-critical Ramsey comparison at `latex_template/5_appendix.tex:2552` mistranscribes the accepted Step 8 inequality `\log_2^{(N)}t\le k\,2^{C_RNL}` as `\log_2^{(N)}t\le k,2^{C_RNL}`. The comma does not express the multiplication supplied by the cited homogeneous-set lower bound, so the displayed derivation no longer supports the subsequent iterate estimate. The accepted Step 8 proof has the correct inequality; this is an assembly defect.

## Nonblocking Concerns

1. `proof_sketch.md:415` and `proof_sketch.md:416` contain two `0x0C` form-feed bytes where backslashes in redundant `\frac` renderings were intended. The exact rational inequality is correctly and unambiguously stated in the sketch's binding rate/export rows, the accepted Step 14 proof, and the public appendix. The bytes neither change a cited-result application nor require a sketch-level semantic repair.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: Yan's VC/tree-learning components, threshold-dimension bound, private median, composition, and postprocessing statements; the Bun--Nissim--Stemmer--Vadhan choosing mechanism and with-replacement resampling result; Hoeffding's inequality; and the Alon--Livni--Malliaris--Moran Shelah, Ramsey/homogeneity, reduction, AtoP, product, and binary interfaces all exist and support the conclusions attributed to them. The accepted proofs do not substitute Yan's printed final learner statement or ALMM's printed PAC corollary for the stronger current-notation interfaces they prove directly.
- Source fidelity: Direct source inspection found no nearby-result substitution or statement strengthening. The audited Yan v2 source has SHA-256 `12d177c0dc94864dcc90bc904e558187dcdbd752de3fd0f412bfa6898ada8f06`; the BNSV source has SHA-256 `ae85c2352f6373357d60166aa88626edcb11337d2a5f4efe5d1c83edf355649e`; the ALMM v3 archive has SHA-256 `90d1ad2757740a9cbdc8a5d3d9e84db2a8981258f15c42e6ebb5ce09a1ad29e6`; and its active `ADP.tex` has SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`.
- Instantiation and object mapping: The Yan objects are translated to the countable quotient, finite depth, reference-XOR class, private-median domain, and finite positive choosing support. BNSV is mapped to bounded-growth selection and the exact with-replacement resampling wrapper. ALMM is mapped to finite ordered threshold witnesses, arbitrary possibly improper bit-vector outputs, replacement privacy, and the same population-risk object. Product kernels, finite restrictions/extensions, priors, simulators, and couplings are defined in current notation rather than imported from source notation.
- Quantitative regime fidelity: The cited-result applications preserve privacy allocation and composition, fixed confidence, finite depth/domain requirements, ALMM's expected-loss input, the resampling range `N in [9m,10m]`, the resulting privacy bounds, logarithm conventions, and universal hidden-constant dependence. The public rate bridge otherwise preserves structural, sample, privacy, confidence, probability, horizon, and risk modes. Blocking Issue 3 is an assembly corruption of that valid quantitative chain, not a defect in the accepted source application.
- Assumption discharge: The accepted proofs discharge finite/countable measurability, standard-Borel output, replacement adjacency, bounded-growth, finite-support, iid, realizability, compactness, convexity, minimax, resampling, candidate-delta, and probability-conversion premises. The Step 3 product-kernel composition, Step 10 finite minimax restriction, and Step 12 one-use hidden kernel and coupling are proved in current notation and do not rely on an unstated external theorem. No cited source requires an additional primitive assumption.
- Main theorem internal references: The main theorem cites only numbered setting assumptions and contains no appendix-local theorem, proof-step identifier, local-unit identifier, workflow artifact, or reviewer decision as authority.
- Appendix cited-result traceability: All 15 accepted proof/review pairs bind their current proofs, and their dependency interfaces are represented by paper-facing theorem-style results. The Step 1 structural proposition validly incorporates the accepted rank derivation, and the Step 12 aggregate overflow proposition validly replaces three Step 11 local lemmas without changing the consumed interface. Traceability nevertheless fails at the malformed Step 5 internal reference in Blocking Issue 1, and the assembly corruptions in Blocking Issues 2 and 3 prevent acceptance of the public translations.
- External BibTeX entries: The four public keys `yan2025vc1`, `bunNissimStemmerVadhan2015`, `hoeffding1963`, and `alonLivniMalliarisMoran2019` each have a matching entry in `latex_template/reference.bib`. No public citation key is undefined or duplicated, and no external source used by the proof is cited only through workflow provenance.
- Internal label/ref pairs: Static scanning finds no duplicate labels or unresolved parsed `\ref`/`\eqref` targets, and no forbidden public `claim`, `hypothesis`, or `invariant` dependency. That clean parsed-reference result does not catch Blocking Issue 1 because the carriage return eliminates the intended `\ref` command before TeX parses it.
- Unsupported standard facts: None. Hoeffding is BibTeX-backed, while product privacy, hockey-stick composition, quotient measurability, finite-dimensional compactness/minimax, bounded-loss conversion, finite averaging, and coupling identities are proved or instantiated inline with their required hypotheses.
