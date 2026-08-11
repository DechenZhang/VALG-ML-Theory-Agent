# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The assembled update map in `perspective_2/idea_2/latex_template/5_appendix.tex:168` is written as `U(\theta,x,y):=\theta-eta\nabla^{\mathrm{src}}_\theta\ell(...)`, while the accepted source derivation in `perspective_2/idea_2/proof_steps/step_002/proof.md:86-101` and the formalized learner in `latex_template/1_intro.tex:51-53` use `\theta-\eta\nabla^{\mathrm{src}}_\theta\ell(...)`. The bare `eta` is not the step-size symbol `\eta` (and is not defined as a mathematical quantity), so the public lemma proves sampled-label measurability for a different/undefined recursion. This lemma is the mechanism used to make the unseen target bit independent of the exact SGD prediction; consequently the VC contradiction and the final theorem are not rigorously connected to the stated learner until the appendix token is corrected to `\eta` and the bundle is recompiled.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Direct comparison of all five accepted source proofs with the assembled proof bodies found the same claims and derivation order. The only mathematical mismatch is the missing backslash in the step-002 update map identified above.
- Statement self-containedness: `1_intro.tex`, `2_preliminary.tex`, and `3_main.tex` define the theorem-facing objects, numbered assumptions, modes, and constants before use; the public theorem matches the conditional target. The update mismatch is the sole theorem-critical synchronization defect.
- Main theorem constants and notation: The appendix preserves the exact `7TSd` rate, `S >= n` bridge, `r <= 7TS` budget, tie label, and explicit conditional polynomial specialization without hidden dependence.
- Derivation-over-notation: The five accepted source derivations are substantive in the appendix (3 + 5 + 3 + 2 + 4 = 17 local units), including displayed equations, inequalities, conditioning, boundary cases, and target-step assemblies. The malformed `eta` token changes one defining operation rather than merely compressing notation.
- Explicit-rate contract: Exposed variables, hidden-constant restrictions, fixed finite-horizon mode, deterministic conclusion, exact-sign metric, ceiling payment, and polynomial scalar bridge are stated and explicitly derived. No rate or probability term is silently absorbed.
- Appendix full derivations: Every non-atomic local unit and each concluding assembly from `step_001` through `step_005` has corresponding theorem-style proof text. Source-vs-appendix comparison found no omitted proof obligation, equation, inequality, case, assumption discharge, or target bridge; the step-002 update transcription remains blocking.
- Quantifiers and constants: The random-label average is converted to one fixed target before universal-SGD use; the common feature law precedes all targets; the union and ceiling bounds retain their exact constants. No quantifier-order drift was found outside the update mismatch.
- Probability or convergence modes: Expectation, fixed-horizon sampling, conditional unseen-bit probability, iid feature amplification, and deterministic probabilistic-method existence are preserved. No mode upgrade or unproved convergence claim appears.
- Boundary cases: Empty class, `d=0`, `T=1`, `v=0`, `v=N`, `L=1`, `S=n`, `M=r=1`, repeated samples, and zero scores are explicitly handled in the source and appendix.
- Hidden subclaims: No independent hidden subclaim was found. The 17 local units and their assembly implications are named and proved; the structural, citation, and adversarial diagnostics do not substitute for proof evidence.
