# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public theorem source is malformed. `latex_template/3_main.tex:10` contains a carriage return followed by `ef{assump:gaussian-smoothing}` instead of `\\ref{...}`, so the theorem does not cite the second assumption range. `latex_template/2_preliminary.tex:78` contains `widetilde C_V` without the leading backslash. These defects break the main theorem's assumption interface and the public definition of `d_Q`.

2. The appendix exposes prohibited workflow and audit scaffolding throughout the public proof. Examples include `The local-result applications are` (lines 44 and 494), repeated `Auxiliary facts` and `Assembly` paragraphs (all thirteen step sections), `preceding result`/`specified` artifact prose, `sketch-row claim`, and `global proof diagnostic` (for example lines 461-498, 966-971, 2372-2378, 2832-2847, and 3513-3536). The repeated mechanical phrases `the preceding result the preceding result` and `The the preceding result` are also present. This violates the paper-facing appendix and audit-scaffolding requirements.

3. None of the thirteen target-step assemblies is translated as concluding mathematical proof text inside an allowed proof environment. Every `paragraph{Assembly.}` block is outside the corresponding lemma/proposition proof (for example lines 413, 929, 1135, 1616, 2073, 2343, 2613, 2830, 3208, 3484, 3938, 4336, and 4754) and mostly summarizes producer provenance and workflow routing. This does not satisfy the required source-vs-appendix proof-obligation coverage, even though the accepted step artifacts contain the derivations.

4. Several appendix theorem statements and proof dependencies are not valid paper-facing theorem references. `Lemma~lem:step-008-seed-decomp` and related uses at lines 2717, 2814, 2834, and 2841 omit `\\ref`; lines 2518 and 2545 use `Lemma [lem:...]` and `Proposition [prop:...]`; lines 1686 and 1924 use Markdown backticks around theorem-facing event assumptions; and lines 2913 and 3566 expose raw `assump:...` identifiers instead of numbered assumption references or named results. These leave generated interfaces and local dependencies structurally implicit or unavailable to the public proof.

5. The appendix contains mechanical pseudo-TeX in place of mathematical derivation, including large `\\texttt` blocks of escaped source notation (for example lines 2386-2605 and 4444-4446) and numerous empty inline math fragments `\\(\\)` (for example lines 1036, 1091, 1318, 1612, and 4750). This is not a self-contained, paper-ready translation of the accepted local proofs and prevents the bundle from passing assembly synchronization and derivation-over-notation checks.

## Nonblocking Concerns

1. The assembly report claims that malformed references and workflow scaffolding were absent, but the public TeX source contains both; the report's static hygiene summary should be regenerated after repair.

2. Tectonic terminated before TeX processing because of the installed macOS networking panic, so a compile log and final reference diagnostics are unavailable until the bundle is repaired and compilation is retried.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The attempted theorem follows the accepted conditional target and preserves the nested probability, rank, stopping metric, and exact baseline, but the malformed assumption reference prevents a valid public statement.
- Dependency closure: The accepted sketch/global graph and all thirteen accepted step artifacts are present and acyclic; public dependency closure is not paper-valid because several appendix references are raw workflow identifiers or malformed theorem references.
- Sketch-step coverage: All thirteen step subsections and named local units are present, but their target-step assemblies are not translated into proof environments and therefore do not provide accepted-step traceability in the public bundle.
- Assembly discipline: BLOCKING. The appendix introduces workflow provenance, source summaries, pseudo-notation, and assembly claims outside mathematical proofs.
- LaTeX bundle structural synchronization: BLOCKING. The source contains malformed commands, forbidden audit scaffolding, and mechanical translation debris despite the reported COMPLETE status.
- Main theorem self-containedness: BLOCKING. The assumption range at line 10 is malformed, and the preliminary quotient-distance definition at line 78 is syntactically/semantically corrupted.
- Theorem-style statement shape: BLOCKING. Several appendix statements rely on implicit `E_*`/`assump:*` interfaces, backtick Markdown, or `Lemma [label]` text instead of numbered assumptions and named theorem-style references.
- Explicit-rate and bridge structure: The public theorem visibly states the requested rate categories, probability modes, horizon modes, norms, and hidden-constant scope; no separate rate-scope mismatch was found, but the malformed public source still blocks acceptance.
- Derivation-over-notation: BLOCKING. Escaped `texttt` source fragments and helper dictionaries replace readable displayed derivations in step 007, step 009, step 011, step 012, and step 013.
- Appendix local-unit coverage: The subsection/unit inventory is complete, but source proof bodies and target-step assembly prose are not synchronized into paper-facing proof text as required.
- Internal label/ref structure: BLOCKING. Naive label counting reports unique labels, but the raw `ef{...}` command and unescaped `Lemma~lem:...` references are invalid internal proof references.

