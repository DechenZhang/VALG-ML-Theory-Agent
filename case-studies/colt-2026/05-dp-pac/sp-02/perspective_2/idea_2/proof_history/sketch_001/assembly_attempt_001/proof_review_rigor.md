# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The appendix corrupts iterated logarithms into powers at three theorem-critical points: `latex_template/5_appendix.tex:1885` states `\log_2^{M}N>1` instead of the accepted `\log_2^{(M)}N>1`, line 2001 states `\ell^{M}(N)>1` instead of `\ell^{(M)}(N)>1`, and line 2079 again states `\log_2^{M}N>1` instead of `\log_2^{(M)}N>1`. These changes alter the mathematical meaning of the Ramsey comparison premise, the log-star inversion identity's entry condition, and the final Ramsey-entry discharge. Restore iteration notation at all three locations from the accepted `step_004` proof.
2. The appendix contains malformed or drifted theorem-critical object identifiers. At line 1302, `(widetilde P_l)_(l \in [K])` must be the defined family `(\widetilde P_\ell)_{\ell\in[K]}`; at line 1389, `(P_x)_(x \in J)` must be `(P_x)_{x\in J}`; at line 2221, the adjacency domain `S_{n,N}` must be the defined `\mathsf S_{n,N}`; at line 2394, `B_{\rm tilde}` must be the defined arbitrary-output kernel `\widetilde B`; and at line 4521, `delta_n` must be `\delta_n`. As written, the public statements and their proofs refer to malformed or undefined families, spaces, kernels, and parameters rather than the accepted source objects.
3. The zero-residual risk proof has an undefined experiment-law notation and false definition provenance. Line 171 says that `Q_e` and `\mathcal R_n` are defined in `Section~\ref{sec:setup}`, although that section defines neither finite-experiment object; the definitions actually occur locally at appendix lines 9--20. Lines 198 and 211 then use undefined `Q_{t,U}` and `Q_{t,U}^n`, whereas the locally defined and accepted object is `Q_{(t,U)}` and its product law `Q_{(t,U)}^n`. Correct the provenance and both occurrences so the exact sampling-law identity is stated for one consistently defined object.
4. The displayed latent-experiment interface at line 3023 contains bare `qquad` in `\mathbf E\sim\Pi^k,qquad` rather than the spacing command `\qquad`. This inserts undeclared mathematical letters into the theorem-critical iid-latent/hidden-arm independence display; restore the command exactly as in the accepted `step_007` source interface.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: All 49 accepted source units and their target-step assemblies were audited against the appendix. Their source derivations are sound and substantively present, but the four assembly-level transcription defects above prevent the public bundle from stating those derivations correctly.
- Statement self-containedness: The main theorem has a self-contained primitive-assumption interface. Appendix definition provenance and object identity fail at lines 171, 198, and 211 as described above.
- Main theorem constants and notation: The universal choices and declared dependence are consistent with the formal target. The appendix object and iterate notation drifts listed in Issues 1--2 are blocking.
- Derivation-over-notation: No accepted source derivation is replaced by helper notation, but corrupted notation in the assembly changes or obscures theorem-critical claims and must be repaired from the accepted sources.
- Explicit-rate contract: The exposed variables, fixed-sample mode, zero-one-risk metric, privacy dependence, universal hidden-constant dependence, threshold conditions, and deterministic specialization inequalities are stated and derived. No source-level rate or absorption gap was found.
- Appendix full derivations: The required derivational content for all nine accepted steps is present in source order. Acceptance is blocked only by the identified assembly transcription failures, not by missing accepted proof work.
- Quantifiers and constants: Source-level quantifier order, finite-minimax attainment, strict `41/1024<1/20` utility arithmetic, the privacy-denominator transfer, and universal-constant choices are valid. Iteration-to-power corruption invalidates the assembled Ramsey/log-star chain until repaired.
- Probability or convergence modes: The high-probability PAC antecedent is converted to expected risk using bounded loss, conditional exchangeability is preserved, overflow is charged once, and no unsupported mode upgrade was found.
- Boundary cases: The accepted proofs cover `\varepsilon_0=1`, `\delta_m=0`, endpoint moving-record layouts, overflow branches, unused records, and the exact `k=1` specialization.
- Hidden subclaims: No independent unreviewed source-level subclaim was found. The malformed identifiers and independence display create assembly-local gaps and are fully covered by the blocking list.
