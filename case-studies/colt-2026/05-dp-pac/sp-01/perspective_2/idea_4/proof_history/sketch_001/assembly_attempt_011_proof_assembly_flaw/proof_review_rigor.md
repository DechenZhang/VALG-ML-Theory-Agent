# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Proposition `prop:step-016-frontier` in `latex_template/5_appendix.tex` drifts from both the accepted Step 016 frontier and public Corollary `cor:frontier` on the selected-learner small-`delta` schedule. The accepted source and corollary use `delta K_V Lambda^4 R_VC -> 0`, and equation (7.2) itself proves `N_* delta <= delta K_V Lambda^4 R_VC`. The appendix instead introduces `q_*=6`, calls `delta K_* Lambda^6 R_VC -> 0` the public schedule, and says the implication is not asserted under a weaker premise. Since `Lambda>=1` and `K_*>=K_V`, this replacement is a strictly stronger premise and directly conflicts with the accepted source, the corollary, and the immediately preceding inequality. Restore the exact Step 016 schedule and matching proof prose in the appendix while retaining the standalone old-arm schedule separately.

## Nonblocking Concerns

1. The appendix contains 93 explicit `\square` commands while also wrapping the corresponding derivations in `amsthm` proof environments. These can produce duplicate terminal QED marks; remove the explicit symbols or replace the intended terminal placement with `\qedhere`.
2. A fresh cached-only Tectonic build completed successfully and generated the 116-page PDF, but the final log reports eight appendix overfull boxes (maximum 22.38173 pt) and two font-shape substitutions. It reports no TeX/BibTeX errors and no unresolved references or citations.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: All sixteen accepted source-step derivations were compared against their appendix counterparts. The displayed probability, privacy, rate, conditioning, reconstruction, and assembly calculations are substantively preserved, but the Step 016 selected-schedule conclusion is misstated as described above.
- Statement self-containedness: The four primitive assumptions are numbered and referenced, theorem-style statements expose their conditions and conclusions, and internal authorities use named label/reference pairs. The Step 016 appendix statement is not faithful to the public corollary it is cited to support.
- Main theorem constants and notation: `K_V`, `K_O`, and `K_*` are otherwise defined with universal dependence and used consistently. Introducing `q_*=6` into the selected-schedule statement creates the sole blocking constant/exponent drift.
- Derivation-over-notation: Definitions, inequalities, conditioning steps, finite unions, ceiling payments, and target-step assemblies remain visible rather than hidden behind aliases.
- Explicit-rate contract: Exposed parameters, universal hidden constants, fixed `alpha,beta,epsilon`, unconditional PAC mode, fixed-horizon mode, population-risk norm, and boundary regimes are stated. The selected-schedule bridge fails exact statement fidelity until the appendix restores the `K_V Lambda^4 R_VC` premise.
- Appendix full derivations: Every used local unit from Steps 001--016 has substantive paper-facing derivation. No missing definition, equation chain, induction/descent transition, assumption discharge, conditioning argument, boundary check, or final target assembly was found apart from the Step 016 schedule drift.
- Quantifiers and constants: All-input privacy remains separate from realizable utility; universal constants have permitted dependence; finite producer unions and confidence arithmetic are explicit. The only invalid premise change is the selected-schedule strengthening.
- Probability or convergence modes: PAC bounds are unconditional over iid sampling and mechanism randomness, privacy is event-free and all-input, and fixed positive `delta` is correctly separated from scheduled asymptotics. The old-arm schedule remains distinct.
- Boundary cases: `d=0`, `v=1`, `v=d`, finite versus infinite `C`, `M=1`, fixed positive `delta`, and the unresolved unrestricted DP-PAC scope are all handled.
- Hidden subclaims: No unproved theorem-critical subclaim was found. Static checks found 134 unique labels, 904 resolved references, 76 well-formed citation commands, and complete BibTeX-key coverage.
