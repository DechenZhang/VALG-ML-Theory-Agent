# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The paper-facing translation of accepted `step_004` is not statement- or derivation-faithful at three locations in `latex_template/5_appendix.tex`. Line 700 writes `\widehat K_0(y)lambda(s_0(I_0;y))` instead of `\widehat K_0(y)\lambda(s_0(I_0;y))`; line 723 writes `\mu(H_{d,I_+})leq...` instead of an inequality using `\leq`; and line 743 likewise writes `\lambda(s_\infty(I_+;y))leq...`. TeX parses the bare letter strings as products of mathematical variables, so the inner integration chain and both the statement and proof of the positive outer chart bound no longer express the accepted `step_004` obligations. This is an assembly synchronization defect because the accepted source proof contains the correct formulas.
2. The theorem-style statement of Lemma~`lem:three-piece-decomposition` in `latex_template/5_appendix.tex` line 830 refers to `Section~2`, but the Preliminaries section has no navigational label and the reference does not use `\ref`. The public bundle therefore fails the required internal section label/reference discipline. The assembly should either define the three pieces inline in that lemma or add a unique Preliminaries label and cite it with `Section~\ref{...}`.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: Exact-goal mode. The main theorem preserves the authoritative quantifier order (one finite fixed `eta`, then every `d >= 1`, `R >= 1`, admitted law, and positive-length interval), the exact weighted three-piece estimate, the exact maximum `M_eta`, the displayed `P_eta`, the separate witness threshold, and the declared `material_partial` scope.
- Dependency closure: All seven current proof artifacts are paired with current `ACCEPTED` reviews whose recorded hashes match. The acyclic proof path is `(step_001, step_002, step_003) -> step_004 -> step_005 -> step_006`, with `step_007` independent and consumed only by the nonemptiness clause. No stale, rejected, downstream, or diagnostic artifact is used as proof authority.
- Sketch-step coverage: Every accepted sketch row has a distinct appendix use: `step_001` supplies the inner derivative and image length; `step_002` the two signed outer certificates; `step_003` measurable caps, Borel sections, and matching disintegration; `step_004` the three chart probability controls; `step_005` the exact partition, weighted union bound, and maximum; `step_006` the class supremum and fixed-parameter polynomial bridge; and `step_007` the degree-split witness certificate and membership assembly. No required step is orphaned or bypassed.
- Assembly discipline: Apart from the transcription and navigation defects above, assembly only renames notation, translates accepted local units, combines accepted conclusions, converts the accepted `step_007` threshold claim to a public lemma, exposes its target assembly as witness membership, and performs direct final composition. No independent unreviewed lemma, new assumption, mode upgrade, stronger theorem claim, or changed dependency is introduced.
- LaTeX bundle structural synchronization: All five content files and all four required entry/support files exist; the required section and appendix layout, four stable assumption labels, proof sketch, seven step subsections, final theorem proof, and bibliography suppression are present. The available assembly log has no unresolved references, duplicate-label warning, citation error, or TeX error, but the three bare math strings above compile silently while changing the formulas, so compilation does not cure the synchronization failure.
- Main theorem self-containedness: The theorem uses only setup and preliminary notation, numbered primitive/class-defining assumptions, and constants defined before use. It does not cite appendix-local results or assume a generated invariant. The fixed-cap corollary is readable and cites the named appendix specialization bridge from its proof.
- Theorem-style statement shape: The appendix uses only lemma, proposition, theorem, corollary, and proof environments as public authorities; it exposes no public claim, hypothesis, invariant, workflow label, or audit scaffold. Assumption and dependency bases are named. The malformed `leq` token at line 723 nevertheless prevents the positive outer proposition from stating its accepted inequality literally.
- Explicit-rate and bridge structure: The public statement exposes `d`, `R`, both cap parameters, interval lengths, fixed `eta` and `Theta`, deterministic probability mode, static interval-uniform scope, conditional `L^infty` norm mode, and the absence of hidden constants. The named fixed-`eta` bridge records the auxiliary maximum, `1 <= d`, `d(d-1) <= d^2`, termwise domination, and the absence of a probability conversion; the witness threshold remains isolated.
- Derivation-over-notation: The public appendix displays the derivative bounds, rational-interval cap construction, compact exhaustion, disintegration identities, tower chains, finite union bound, exact maximum inequality, supremum passage, termwise polynomial comparisons, and witness-kernel calculations. Helper notation remains proof- or appendix-local. The missing `\lambda` and `\leq` commands in the step-4 translation are the only detected places where notation corrupts a required visible derivation.
- Appendix local-unit coverage: Source proof bodies and target assemblies were compared against the appendix for all seven used accepted steps. `step_001` preserves the derivative chain, degree-one and radius-boundary cases, connected-image/diameter argument, and endpoint cases. `step_002` preserves reversible pivot algebra, both exact derivatives, triangular sums, negative orientation and parity, one-sided endpoints, unbounded/empty/singleton intervals, and degree one. `step_003` preserves the kernel Radon--Nikodym construction, rational-cap equality including infinity, version independence, simultaneous Borel domination, conditional support, compact zero-set exhaustion, exact sections, pi-lambda disintegration, and target interface. `step_004` preserves all three separate finite-cap tower chains, dependency mappings, mean-cap uses, degree one, and zero-length handling, subject to the three blocking transcription errors. `step_005` preserves the exact set/event partition, endpoint allocation, finite subadditivity, weighted bound, and exact maximum. `step_006` preserves empty-index closure, both coefficient dominations, the pointwise maximum comparison, and the full public rate bridge. `step_007` preserves all degree regimes, exact conditional kernels, version audit, cube support, singularity, dependence, threshold comparison converted to a lemma, and membership assembly. No accepted substantive proof obligation is otherwise replaced by a summary or shortcut.
- Internal label/ref structure: All existing labels are unique, every `\ref` and `\eqref` resolves, and no external citation command is used. The hard-coded unlabelled `Section~2` reference is the remaining blocking internal-navigation defect.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
