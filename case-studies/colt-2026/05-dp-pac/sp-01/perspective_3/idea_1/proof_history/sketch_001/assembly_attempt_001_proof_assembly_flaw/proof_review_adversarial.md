# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The canonical appendix leaves the theorem-critical aliases `(H)` and `(HP)` undefined. The accepted `step_004/proof.md` defines `(H)` as
   \[
   M<b_*\log_2^*N
   \]
   and `(HP)` as the strict finite-prior lower bound
   \[
   \mathbb E_{(t,Q)\sim\mu_{N,M}}
   \mathbb E_{S,g}R_Q(g,\tau_t)>2^{-8}.
   \]
   In `latex_template/5_appendix.tex`, however, Lemma `lem:step-004-payoff-value` assumes that (M) satisfies `(H)`, Proposition `prop:step-004-finite-hard-prior` again assumes `(H)` and concludes that every eligible learner satisfies `(HP)`, and the proof says that display (30) is `(HP)`, without ever defining either alias. The underlying inequality for `(H)` appears in the preceding step-003 proposition and the intended `(HP)` formula can be reconstructed from display (30), but the public step-004 theorem-style statements do not expose their exact premise and conclusion and are therefore not standalone. This is an assembly-level self-containedness break, not a defect in the accepted step proof. Restore the two definitions before the step-004 units or inline the full condition and conclusion in every affected statement.

## Nonblocking Concerns

1. Several translated step-local numeric references are stale in `latex_template/5_appendix.tex`: step 010 refers to an arbitrary (A) "in (4)"; step 011 refers to ((t,Q)) "in (2)" and to the "occurrence map (6)"; step 012 refers to `(8)--(9)` and to `\Delta_M` "in (5)"; and step 013 defines (p_{\mathrm{ov}}) "from (7)" and later invokes substitution into `(5)`. The intended objects are recoverable from the nearby named statements and displayed formulas, so these references do not create an additional mathematical gap, but they should be replaced by canonical labels or explicit definitions. The repeated manual equation tags also cause duplicate PDF destinations during compilation.
2. The abstract says the result holds at "fixed constant accuracy, confidence, and privacy." Accuracy, confidence, and (\varepsilon_0) are fixed constants, but the theorem requires (\delta\) to obey candidate-dependent shrinking caps. The wording should distinguish constant (\varepsilon) from the nonconstant approximate-privacy parameter (\delta).

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The vulnerable implication is the pointwise lower bound (n\ge a k\log_2^*N), whose contradiction chain must transport the one-block threshold lower bound through a finite public prior, hidden-coordinate simulation, overflow control, privacy preservation, and fixed-instance extraction. Replacing each link by its accepted exact statement leaves the implication valid; the surviving break is the canonical appendix's undefined step-004 aliases.
- Standalone theorem attack: The main theorem matches the formalized goal, retains the primitive candidate regime, central-DP premise, distribution-free realizable PAC premise, improper output space, and fixed-size quantifier order. Its supporting finite-hard-prior proposition is not standalone because `(H)` and `(HP)` are undefined in the paper bundle.
- Weakest step-level claim: Step 004's learner-independent minimax prior and steps 010--14's one-use simulator, coupling, privacy transfer, loss splice, and fixed extraction were the highest-risk units. The accepted proofs discharge compactness, quantifier order, hardwiring of the public prior, one-record adjacency, overflow loss, and extraction; no accepted-step counterexample was found. The step-004 accepted artifact itself contains the definitions lost in assembly.
- Candidate counterexamples or stress cases: The audit tested endpoint thresholds (t=1,N+1), atomic (Q), arbitrary randomized improper outputs, public-prior-dependent learner code, repeated input-row occurrences, the boundary (U=M) versus overflow (U>M), small (k=2,3), the floor (M=8), and privacy parameters at or below their caps. The restriction identity, padding construction, one-use row map, coupling, and strict overflow margin neutralize these attacks.
- Explicit-rate stress cases: Varying (k,N,n,\varepsilon,\delta), the simulated budget (M=m_{n,k}), the strict condition (M<b_*\log_2^*N), and the tower diagonal revealed no hidden parameter dependence in the accepted chain. Calibration and theorem closure use absolute constants and preserve the stated pointwise, nonasymptotic mode. The abstract's shorthand for privacy remains a wording concern.
- Appendix self-contained attack surface: The undefined `(H)`/`(HP)` aliases are blocking because they hide a strict hypothesis and the exact conclusion of public theorem-style units. Stale local numeric references and duplicate equation destinations are additional assembly hygiene issues, but the corresponding mathematics is present nearby. The isolated nine-file canonical bundle otherwise compiles without unresolved citations or references.
- Scope or mode upgrade attacks: The audit attacked constant-failure to expected-loss conversion, pointwise PAC to an expected upper bound, continuum minimax to a finite learner-independent prior, prior-averaged hardness to a fixed product instance, and source privacy to simulator privacy. The accepted Markov bridge, calibration, finite barycenter, averaging identity, exact one-charge privacy proof, and fixed extraction discharge those upgrades without changing probability or convergence mode.
- Remaining risk: No mathematical break remains in the accepted step chain under the tested edge regimes. After restoring the two aliases, the residual risk is confined to cleaning stale cross-references and clarifying the abstract's privacy wording.
