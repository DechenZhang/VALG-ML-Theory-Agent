# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The appendix omits a substantive accepted boundary certificate from Step 002. The accepted source proof at `proof_steps/step_002/proof.md:265` gives five rational upper endpoints for the ranges $3\le r\le9$, $10\le r\le19$, $20\le r\le39$, $40\le r\le69$, and $70\le r\le99$. In `latex_template/5_appendix.tex:598`, the public proof says that the interval calculation "gives the following rational upper endpoints," but the entire table is absent; it then asserts the $3\le r\le99$ conclusion. This drops proof-obligation content needed for the finite-range part of Proposition~\ref{prop:step-002-product-reserve} and violates the full source-to-appendix derivation gate.

2. The opening of `latex_template/5_appendix.tex` still exposes a source/workflow inventory rather than paper-facing mathematics. Lines 7--40 refer to tools "named in the sketch," results "proved in the local units," and "unchecked citations," followed by a standalone four-item proof-ingredient inventory. Removing only the item numbers does not cure the prohibited sketch-row, provenance, and audit narration; any necessary facts must be integrated into the corresponding theorem statements or proofs.

3. Mechanical translation debris remains in the Step 007 proof. At `latex_template/5_appendix.tex:2601`, the substantive argument contains the raw expression `a0 < 1.001`, and line 2622 refers to the `42 omega` interface outside math mode. These are residual pseudo-math translations of the accepted source notation and fail the public-TeX and derivation-over-notation gates.

## Nonblocking Concerns

1. This review is bound to `assembly_report.md` SHA-256 `8b5d5c509386e513c714b02a98d56fb242b11d6ee750f68ba52f62ca332a8d87`; its binding setting, sketch, sketch-review, global-proof, global-review, and all thirteen proof/review hashes match the live artifacts. All reported bundle hashes also match, including `2_preliminary.tex` SHA-256 `0a894f0494b93f9afaa565d484ba1b5451b4e191152f84020ebb0e9a7bbf53e3` and `5_appendix.tex` SHA-256 `df8d8d7980ad4968120b73bd6b49638874fb4d09d4f3eecc95a3eba24e696d01`.

2. The prior theorem-scope and composition defects are repaired: the technical landing dictionary has moved out of the main theorem, the runtime bridge states the complete primitive assumption basis and explicit absorption inequalities, the deterministic zero-smoothing baseline is separately scoped, generated-event statements name their producers, and the final theorem proof cites the static-event, gauge, dense-cost, restart, and rate-bridge results correctly.

3. Tectonic again panicked in its macOS system-configuration networking thread before TeX processing, so no compilation log or PDF was available. Static checks found 87 unique labels, no duplicate or unresolved internal references, a matching `Uschmajew2012` BibTeX entry, balanced required environments, and balanced braces.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The positive-smoothing theorem is a concrete exact-goal match for the authoritative conditional setting, including the nested probabilities, strictly subquadratic rank, original Frobenius metric, finite runtime, and arbitrary accuracy. The exact orthogonal equal-weight result is now a separate deterministic corollary, so its zero-smoothing scope no longer conflicts with the main theorem.
- Dependency closure: All thirteen accepted proof/review pairs are hash-matched and the dependency graph remains acyclic. The final theorem composition now cites the correct static-event, gauge, landing, cyclic, stopping, runtime, restart, and rate-specialization producers. The missing Step 002 finite-range table nevertheless leaves one accepted dependency derivation incomplete in the public bundle.
- Sketch-step coverage: All 54 accepted local units map in order to 57 public lemma/proposition blocks, with counts $5,5,3,4,3,3,3,3,5,5,5,5,5$ across Steps 001--013, and all thirteen target-step assemblies occur inside proof environments. Coverage is blocking only because the Step 002 unit body drops the five-row finite-range certificate.
- Assembly discipline: BLOCKING. The missing certificate, workflow/source inventory, and pseudo-math are assembly translation defects; no accepted step statement, proof, review, sketch row, or theorem contract needs to change.
- LaTeX bundle structural synchronization: Required support files, five content files, section layout, thirteen appendix step subsections, and final main-theorem proof are present. Static labels, references, citations, braces, and environments close, but the public appendix is not yet paper-ready because of Blocking Issues 1--3.
- Main theorem self-containedness: The main theorem now has a readable recovery interface rather than the former seven-budget dictionary. The public setup defines the observable procedure, the rate corollary gives the explicit dense-work specialization, and the deterministic baseline corollary is independently scoped.
- Theorem-style statement shape: Primitive assumptions and named generated-result premises are now visible in the main theorem, corollaries, and appendix theorem-style statements. The rate bridge includes Assumption~\ref{assump:random-initialization}, and the formerly bare $E_{\rm sm}$ premises cite Proposition~\ref{prop:step-001-geometry}.
- Explicit-rate and bridge structure: The public and appendix rate statements agree in variables, probability mode, horizon, norm, and hidden-constant dependence. Proposition~\ref{prop:rate-specialization-bridge} displays the auxiliary choices, restart conversion, term-by-term domination, total-work rate, and joint probability conversion.
- Derivation-over-notation: BLOCKING at the two raw Step 007 expressions in Blocking Issue 3. The remaining accepted displays, constants, inequalities, boundary branches, and target-step compositions are substantively translated.
- Appendix local-unit coverage: BLOCKING at the omitted Step 002 rational-endpoint table. Apart from that omission, exhaustive source-section comparison found the accepted local units, cited-tool instantiations, boundary branches, and target-step assembly arguments in their corresponding appendix subsections.
- Internal label/ref structure: The live bundle has 87 unique labels, no duplicate labels, no unresolved `ref` or `pageref` targets, no malformed bare reference/citation commands, and one external citation with a matching bibliography key.
