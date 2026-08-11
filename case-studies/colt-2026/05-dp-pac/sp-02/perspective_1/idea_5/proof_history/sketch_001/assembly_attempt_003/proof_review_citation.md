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

- Cited theorem statements: The sole external proof authority is Theorem 17 of Bun, Livni, and Moran, *An Equivalence Between Private Classification and Online Prediction* (arXiv:2003.00563v3).  Theorem~`thm:step-001-blm-selection` restates the consumed stable-selection result with its randomized producer, frequent accurate hypothesis, arbitrary-output private learner, utility guarantee, and both terms of the source sample bound.
- Source fidelity: The statement was checked against the primary v3 source archive (SHA-256 `8c023b35df7296a311ce59c194857db5701f924db7fc4abf4a63af9aa7eb189c`).  The source theorem's codomain is the full hypothesis space, its construction uses the fixed producer and public parameters rather than the realizable distribution or frequent witness, and its privacy definition is symmetric fixed-length one-record replacement, exactly as stated publicly.
- Instantiation and object mapping: Lemma~`lem:step-001-binary-recoding` supplies the current-notation bijections from `C`, `Q`, `G_C`, and `h_{C,Q}` to `C^\pm`, `Q^\pm`, `G_C^\pm`, and `h_{C,Q}^\pm`.  It proves preservation of realizability, zero-one risk, iid laws, output-atom probabilities, measurable output events, and replacement adjacency.  Lemma~`lem:step-001-blm-admissibility` then maps these exact objects into the cited theorem, and the inverse recoding returns the resulting learner without changing utility or privacy.
- Quantitative regime fidelity: The public theorem consumes only `alpha_0=beta_0=1/8`, `epsilon_0 in (0,1)`, and `delta in (0,e^{-2}]`.  It preserves the source bound
  `O(m log(1/(eta beta delta))/(eta epsilon) + log(1/(eta beta))/(alpha epsilon))` term by term.  The proof justifies one universal `C_BLM` only after restricting to this regime, where both logarithms are uniformly positive, so the source's absolute constants and integer choices are absorbed without claiming an unsupported global constant inequality.
- Assumption discharge: The appendix verifies `m_C>=1`, `eta_C=q^{-a} in (0,1]`, realizability of `Q^\pm`, the frequent-atom and accuracy hypotheses, `epsilon_0 in (0,1)`, and `delta_C in (0,e^{-2}]`.  It also checks that the producer is fixed before the distribution, that neither source nor recoded output must be proper, and that the boundary `q=1` gives the legal values `m_C=eta_C=1`.
- Main theorem internal references: The main theorem uses only notation and the numbered stability assumption defined before it.  Its proof cites public theorem-style results in dependency order, from the source instantiation and exact padding through the schedule, subpower, privacy-negligibility, learner-family, relaxation, and contradiction results; it does not rely on branch-local reviews or proof artifacts.
- Appendix cited-result traceability: Both public citation commands use `bun2021equivalence`.  The detailed appendix contains the cited theorem, source justification, explicit current-notation admissibility proof, and every downstream dependency application.  The six accepted proof-step derivations and their target assemblies are preserved in the public appendix, with no uncited external theorem substituted during assembly.
- External BibTeX entries: `reference.bib` contains exactly one entry, `bun2021equivalence`, matching both citation commands.  Its authors, title, arXiv identifier `2003.00563`, subject class, URL, year, and v3 revision date agree with the audited primary source.  There are no missing, duplicate, or unused bibliography keys.
- Internal label/ref pairs: Static analysis found 166 unique labels and 73 distinct referenced labels, with no duplicate label and no unresolved `ref`, `eqref`, `pageref`, `autoref`, `cref`, or `Cref` target.  No malformed bare citation/reference fragment or empty citation/reference command was found.
- Unsupported standard facts: None.  The recoding, ceiling, logarithmic, exponential-polynomial, subpower, privacy-monotonicity, and lower-bound-contradiction facts used by the proof are derived inline in current notation; the public bundle contains no vague appeal to a standard, classical, routine, or well-known result as proof authority.
