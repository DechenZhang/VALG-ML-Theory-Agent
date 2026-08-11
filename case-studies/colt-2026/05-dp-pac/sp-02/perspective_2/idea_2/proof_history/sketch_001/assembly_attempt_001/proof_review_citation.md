# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix does not preserve the quantitative regime of the accepted Ramsey citation chain. The accepted `step_004` source uses the (M)-fold iterates `\log_2^{(M)}N` and `\ell^{(M)}(N)`, but `latex_template/5_appendix.tex:1885`, `:2001`, and `:2079` replace them by the powers `\log_2^M N` and `\ell^M(N)`. This changes the entry condition used for the Erdos--Rado/Alon Ramsey lower bound, invalidates the stated log-star recursion premise, and leaves the public assumption discharge for the one-arm obstruction unsupported. The accepted step is correct; the assembly must restore its iterate notation.
2. The zero-residual risk identity is not mapped to one consistently defined experiment law. `latex_template/5_appendix.tex:171` attributes the definitions of `Q_e` and `\mathcal R_n` to `Section~\ref{sec:setup}`, although that section defines neither object and the appendix actually defines them locally at lines 9--20. Lines 198 and 211 then use the undefined `Q_{t,U}` and `Q_{t,U}^n` in place of the accepted `Q_{(t,U)}` and `Q_{(t,U)}^n`. The surrounding equations use the accepted object, so this is an assembly-level provenance and object-mapping failure rather than a step-level proof defect.
3. Further assembly translations change or obscure accepted dependency objects. These include `(widetilde P_l)_(l \in [K])` at line 1302 instead of `(\widetilde P_\ell)_{\ell\in[K]}`, `(P_x)_(x \in J)` at line 1389 instead of `(P_x)_{x\in J}`, bare `widehat b` and `widehat p` at lines 1732 and 1758, bare `qquad` tokens in the exported parameter displays at lines 2131--2132 and 2179, undefined `S_{n,N}` at line 2221 instead of `\mathsf S_{n,N}`, `B_{\rm tilde}` at line 2394 instead of `\widetilde B`, bare `qquad` tokens in the latent-law display at lines 3023--3024, and `delta_n` at line 4521 instead of the explicitly discussed `\delta_n`. These public identifiers and separators must be restored from the accepted sources before their local theorem-style results can serve as reliable citation evidence.
4. The proof of Lemma~`\ref{lem:step-007-pool-iid}` invokes a nontrivial countable-product theorem only through the sentence `use the countable product construction restated above` at `latex_template/5_appendix.tex:3115`, but the public TeX contains neither a prior paper-facing restatement with source nor a BibTeX-backed citation. The accepted `step_007` citation application does state the exact discrete product result and discharges finiteness and countability, so the repair is assembly-local: provide an inline construction/proof or a current-notation restatement with a public source and matching BibTeX entry.

## Nonblocking Concerns

1. `reference.bib` identifies arXiv `1504.07553`, so the audited Bun--Nissim--Stemmer--Vadhan source is locatable and its corrected secrecy lemma supports the exact constants used. For version precision, however, the entry records year 2015 and `primaryclass={cs.LG}` without identifying the corrected December 2024 revision, whose source identifies `cs.CR`.
2. A fresh Tectonic build could not be completed because its networking runtime panicked, including with the available cache. Static scans nevertheless found no duplicate labels, unresolved internal references, missing BibTeX keys, or unused BibTeX keys.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The Bun secrecy lemma, active Alon product/homogeneity/binary interfaces, finite Ramsey theorem, Hoeffding inequality, Bernstein inequality, and finite-dimensional minimax theorem were checked against their stated sources or direct current-notation derivations. Their mathematical statements support the accepted step uses; the unsupported public countable-product invocation is Blocking Issue 4.
- Source fidelity: The active Alon source boundaries and the corrected Bun source were checked directly. No nearby-result substitution was found. The Bun bibliography version metadata is the nonblocking precision concern above.
- Instantiation and object mapping: Accepted-step mappings of sample sizes, product dimension, privacy pairs, margins, experiment laws, finite kernel polytopes, latent experiments, and hidden-arm risks are valid. Public assembly mappings fail at the locations in Blocking Issues 2--3.
- Quantitative regime fidelity: Product privacy has the exact `(D\varepsilon,D\delta)` form; Bun secrecy has the exact corrected constants; Hoeffding, Bernstein, minimax, PAC conversion, and privacy-denominator specializations preserve their regimes. The power-for-iterate substitutions in Blocking Issue 1 corrupt the Ramsey/log-star regime.
- Assumption discharge: The accepted proofs discharge finite-domain, adjacency, measurability, iid, variance, compactness, convexity, realizability, privacy, and boundary hypotheses before use. The public product-space existence claim still needs the traceability repair in Blocking Issue 4.
- Main theorem internal references: The main theorem refers only to numbered assumptions and has no forward citation to appendix-local results or workflow artifacts.
- Appendix cited-result traceability: All 49 accepted local units occur once with paper-facing theorem-style labels, and their substantive dependency chain is present in source order. Traceability is blocked by the altered objects and omitted countable-product support listed above.
- External BibTeX entries: All six public citation keys resolve in `reference.bib`; no cited key is missing and no entry is unused. The Bun version metadata concern is nonblocking because the stable eprint resolves to the audited source lineage.
- Internal label/ref pairs: No duplicate label or unresolved `\ref`/`\eqref` target was found in the public TeX bundle.
- Unsupported standard facts: The countable independent-product construction is acceptance-blocking as used. Heine--Borel, finite-arm Markov, the tower property, and finite union bounds are elementary here and have enough explicit local discharge or calculation to require no deeper repair.
