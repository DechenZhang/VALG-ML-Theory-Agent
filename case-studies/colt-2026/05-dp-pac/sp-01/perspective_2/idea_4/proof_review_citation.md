# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: The cited Lyu v1 results exist and support the uses made here: Proposition 2; Algorithms 1--2 and Lemmas 3.1--3.2; Claim 4.1; Definitions 4.1--4.3; Lemmas 4.1--4.3; Corollary 4.1; and the empirical restriction argument in the proof of Theorem 3. The Sauer--Shelah trace statement is also proved inline in the bundle.
- Source fidelity: The public restatements preserve the cited conclusions. The manuscript correctly repairs Proposition 2's source-level sample-size symbol inconsistency by restating the population and subset sizes explicitly. It also isolates the valid contradiction from Theorem 3's proof and explicitly declines to use the source's malformed displayed output expression or unsupported probability-one upgrade.
- Instantiation and object mapping: Source classes are mapped to the quotient class or named nonempty quotient restrictions; source parameters are mapped explicitly to `p_r`, `2p_r`, `d`, leaf dimension `t`, `n_0`, `m`, list cap `L`, failure score `B`, and the allocated privacy parameters. Quotient hypotheses remain literal functions on `Q_C`, and no cited result is applied through a raw representative or an unmeasurable selector.
- Quantitative regime fidelity: The without-replacement exponent `zeta^2 t p / 3`, Sparse Sample condition `B >= 10 log(L/delta_s) / epsilon_s` and `(2 epsilon_s, delta_s)` guarantee, AboveThreshold one-crossing privacy form, leaf cap `p^d 2^{d^2}`, and irreducibility scale `p 2^{d-t}` are preserved. All final sample-rate and confidence calculations are derived locally rather than imported through asymptotic source notation.
- Assumption discharge: Every cited application checks the relevant nonemptiness, Littlestone-dimension bound, positive integer and scale conditions, finite-list cap, adjacency model, sensitivity bound, privacy range, subset-size condition, or irreducibility length before use. Empty restrictions and the `d=0` branch are totalized or bypassed rather than passed to nonempty-class source assertions.
- Main theorem internal references: The main theorem statement names only the four numbered assumptions and contains no appendix-result dependency. Its proof and the frontier corollary use named theorem-style internal references with matching result types, while preserving the conditional finite-or-countable quotient scope and expressly leaving the unrestricted problem open.
- Appendix cited-result traceability: Every accepted-step citation needed by the assembly is exposed in public TeX through a BibTeX-backed external citation or a named, labeled theorem-style result. The repaired Step 003 standard-Borel argument is fully inline: it realizes `H_C`, finite powers, countable tagged unions, the Borel diagonal, isolated tokens, finite transcript factors, and variable-stop tags without invoking an external theorem or internal workflow provenance.
- External BibTeX entries: The only public citation keys are `lyu2025` and `sauer1972`; both have matching entries in `reference.bib`. No malformed or bare citation command was found.
- Internal label/ref pairs: All public labels are unique, every internal reference target exists, and theorem-style references use matching paper-facing result types. No public claim/hypothesis/invariant dependency, proof-step path, reviewer artifact, or citation-audit heading is used as proof authority.
- Unsupported standard facts: None. Sauer--Shelah, standard-Borel closure facts, the Borel diagonal and list-membership interfaces, adaptive composition and postprocessing, and the auxiliary concentration bounds used by the proof are either cited with the precise applicable interface or proved directly in current notation.
