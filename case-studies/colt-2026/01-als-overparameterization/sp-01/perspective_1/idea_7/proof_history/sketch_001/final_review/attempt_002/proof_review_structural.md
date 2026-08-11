# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The attempt-2 appendix still exposes workflow and dependency-inventory prose instead of a fully paper-facing proof. All thirteen concluding blocks are visibly titled `Step composition` (for example lines 399, 910, 1113, 1592, 2047, 2314, 2618, 2834, 3207, 3480, 3922, 4318, and 4801). Numbered source-inventory remnants also remain at lines 442-475, 942-956, 1164-1182, 1619-1639, 2078-2093, 2638-2651, 2865-2884, 3229-3246, and 3959-4005; several lists begin at item 2 or 3 after a partial rewrite. The public appendix additionally refers to `setting.md` at lines 2198 and 3541. These are forbidden workflow/provenance remnants and violate paper-ready self-containment.

2. Mechanical pseudo-TeX remains in substantive proof text. In the step-007 theorem and proof, lines 2542-2547, 2575, and 2605 leave expressions such as `|eps\_M,ja| <= 2 tau\_r`, `v\_M,ja = ...`, and `q <= q\_*` in prose, while line 2543 places an English sentence inside math delimiters. Related remnants occur at lines 1890 and 2055-2067, 3801, 4208-4211, 4238-4263, and 4286-4287. These passages do not give a readable mathematical translation of the accepted source derivations and fail the derivation-over-notation and public-TeX hygiene requirements.

3. The main theorem remains a dense technical dictionary: lines 61-95 expose the full `delta_L, delta_F, delta_FL, alpha_0, eta_J, eta_QJ, eta_A` reserve package and detailed pair-Gram formulas. The only added public corollary, lines 140-161, is a runtime specialization; it does not provide a concise reader-facing recovery theorem and still relies on the technical theorem. The contract requires a readable theorem/corollary interface with the technical dictionary moved to a named appendix bridge.

4. The public runtime bridge has an assumption mismatch. The corollary at `3_main.tex:140-160` and the appendix proposition at `5_appendix.tex:4415-4474` omit Assumption~`assump:random-initialization`, but the appendix bridge states the restart probability conversion (B.4) and its proof explicitly invokes that assumption at lines 4487-4490. Thus the public corollary and bridge do not state the assumption basis for their probability mode. The corollary also mentions the separate smoothing probability without conditioning on the named static event or citing its producer.

5. The baseline clause is placed under an incompatible quantifier scope. The theorem begins by quantifying over Assumption~`assump:gaussian-smoothing`, which requires `rho>0` (`3_main.tex:5-11`), but the same theorem then invokes `ExactCertifiedSeed`, explicitly defined by `rho_sm=0`, at lines 123-130. The accepted step-013 artifact treats this as a separate deterministic limiting specialization that does not feed the positive-smoothing theorem. Assembly must expose that result as a separately scoped theorem/corollary rather than a specialization inside the positive-`rho` theorem.

6. The final theorem proof has unresolved composition errors. At `5_appendix.tex:4824-4826` it attributes the probability-bearing static event to Proposition~`prop:step-001-realized-gram`, although that proposition is conditional on the raw event; the correct producer is Proposition~`prop:step-001-geometry`. At lines 4836-4838 it attributes polynomial runtime to Proposition~`prop:step-012-restart`, whose statement gives restart success but not the dense total-work specialization, and never invokes Proposition~`prop:rate-specialization-bridge`. The same paragraph attributes the gauge to the graph proposition rather than Lemma~`lem:step-006-gauge`. These are direct dependency-closure defects in the assembly of the main theorem.

7. Several public theorem-style statements still consume derived events without naming their producer. Examples are `Under E_sm` in Lemma~`lem:step-004-chart` (`5_appendix.tex:1425-1427`) and `fix/condition on a generated E_sm instance` in Propositions~`prop:step-012-finite-tapes` and `prop:step-012-restart` (lines 4165-4167 and 4272-4276). The generated static event must be tied to Proposition~`prop:step-001-geometry` in each theorem-facing assumption basis.

## Nonblocking Concerns

1. The previous carriage-return reference defect, missing `widetilde` backslash, malformed `Lemma~lem:` references, Markdown backticks, `texttt` pseudo-equations, and empty inline-math fragments were repaired. All 85 labels are unique, every extracted internal reference resolves, the citation key is present, and the counted theorem/proof environments balance.

2. Tectonic again terminated before TeX processing because of the installed macOS networking panic, so no independent compilation or log-based reference check is available.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The positive-smoothing recovery claim, nested probabilities, rank rate, stopping metric, and exact baseline content are all represented, but the baseline is scoped inside a theorem whose primitive smoothing assumption excludes it.
- Dependency closure: All thirteen accepted step proofs/reviews are current and their sketch graph is acyclic. The appendix-local chain is present, but the final theorem proof cites the wrong static-event producer, omits the runtime bridge, and misattributes the gauge.
- Sketch-step coverage: Exhaustive comparison found all 54 accepted local units in order: step counts are 5, 5, 3, 4, 3, 3, 3, 3, 5, 5, 5, 5, and 5 for steps 001-013. Every accepted target-step assembly also appears inside a proof environment. No accepted mathematical unit is wholly omitted, but the public translations of steps 007 and 012 retain malformed source notation.
- Assembly discipline: BLOCKING. The added rate bridge is direct assembly reasoning from accepted cost/restart bounds, but its statement omits a used primitive assumption; the final composition and public presentation also remain defective.
- LaTeX bundle structural synchronization: BLOCKING. Required files and section layout exist, but workflow-titled composition proofs, stale numbered inventories, branch-local file references, and pseudo-TeX remain.
- Main theorem self-containedness: BLOCKING. The theorem is technically overexposed without a reader-facing recovery corollary, and its positive-`rho` quantifier conflicts with the deterministic zero-smoothing clause.
- Theorem-style statement shape: BLOCKING. The rate bridge and several event-conditional appendix statements do not state all primitive or named-result premises.
- Explicit-rate and bridge structure: BLOCKING. Rank, runtime, probability, horizon, norm, and hidden-constant categories are visible, but the public bridge omits random-initialization while proving restart probability conversion, and the main proof does not cite the bridge for runtime.
- Derivation-over-notation: BLOCKING. The mathematical order and substantive inequalities from every accepted step are present, but raw escaped identifiers and prose-form ASCII inequalities remain in proof-critical passages.
- Appendix local-unit coverage: All accepted local units, boundary cases, cited-tool applications, and target-step assemblies were located. The blockers are assembly translation and public composition defects, not missing producer mathematics.
- Internal label/ref structure: The label set is unique and extracted `ref` targets close, but two branch-local `setting.md` references and several bare generated-event premises remain invalid proof authorities.

