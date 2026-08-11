# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix is not line-by-line self-contained because assembly removed source-local interface displays while retaining their bare equation-number references. In `latex_template/5_appendix.tex`, Proposition~`prop:step-010-simulator` quantifies over an \(A\) "in (4)" although no equation (4) occurs in that subsection (line 2707); Lemma~`lem:step-011-coupling-kernel` fixes \((t,Q)\) "in (2)" although the retained equation (2) is the preceding subsection's contradiction hypothesis (line 2867); and the no-overflow proof invokes an "occurrence map (6)" (lines 3109 and 3117), while the retained equation (6) in the preceding subsection is only the displayed family of nonhidden rows, not the accepted full occurrence map. The same compression leaves the step-011 residual "(5)" (line 3171), the step-012 DP premise "(7)" and scalar/source-cap displays "(8)--(9)" and "(5)" (lines 3438 and 3590--3591), and the step-013 hard-prior and overflow interfaces "(5)" and "(7)" (lines 3681 and 3725) without their source-local displayed definitions. These are theorem-critical type, adjacency/privacy, hard-prior, and overflow interfaces, not merely cosmetic numbering: the surviving numbers can designate unrelated formulas in the assembled paper. Restore the omitted interfaces or state them inline, and replace every such use by a unique `\label`/`\eqref` or by the already-named theorem-style dependency. This is an assembly-only repair; the accepted step claims need not change.

## Nonblocking Concerns

1. The successful Tectonic build emitted repeated PDF-anchor warnings of the form `Object @equation.A.1 already defined`, caused by manually restarting equation tags throughout Appendix A. Unique automatic equation numbering and labels would remove the ambiguity and make equation links reliable.
2. `\Phi_A` denotes the shared-randomness realization of the learner in step 011 and is redefined as a scalar fixed-instance risk functional in step 014. The local arguments remain distinguishable, but renaming the latter would avoid a public type collision.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Apart from the assembly reference defect above, the accepted derivation chain is valid. The finite-kernel minimax argument, exact simulator construction, one-use privacy proof, actual-to-ideal coupling, strict lower-bound ledger, fixed-instance extraction, contradiction closure, and tower arithmetic all imply their stated conclusions.
- Statement self-containedness: The main theorem and its three numbered assumptions are self-contained and preserve the formalized scope. The cited appendix statements in steps 010--013 fail the required self-contained reference discipline because source-local displays were omitted while their numbers were retained.
- Main theorem constants and notation: \(a=b_*/16\), \(c_\delta=d_*\), \(\varepsilon_0=0.1\), \(\alpha_0=\beta_0=2^{-13}\), and \(N_0\) are fixed before candidate quantification. The theorem does not overstate the material-partial result.
- Derivation-over-notation: The mathematical definitions and inequalities are generally explicit. The dangling equation aliases are the sole acceptance-blocking instance where notation replaces an auditable interface.
- Explicit-rate contract: The nonasymptotic rate exposes \(k,N,n,\varepsilon,\delta,M\) and the exact candidate regime. Proposition~`prop:step-016-rate-bridge` verifies the diagonal substitution, fixed \(r_0\), tower inversion, floor arithmetic, and \(r\)-independent constants.
- Appendix full derivations: All sixteen current proof hashes match their accepted reviews, and the substantive local derivations were compared against the appendix in source order. Calculations and boundary arguments are preserved, but the omitted setup/interface displays identified above prevent PASS under the full-derivation and theorem-reference contracts.
- Quantifiers and constants: The prior precedes the universal simulator kernel, the extracted product instance is fixed before PAC is applied, and all universal constants precede candidate parameters. The strict ledger \(2^{-8}-p_{\mathrm{ov}}>2^{-9}\) is correct.
- Probability or convergence modes: Conditional i.i.d. product sampling is used only after fixing the instance vector; the prior mixture is not called i.i.d. Shared learner randomness gives pathwise equality off overflow, and bounded loss charges overflow exactly once. No expectation-to-high-probability or conditional-to-unconditional upgrade occurs.
- Boundary cases: The proof covers \(k=2,3\), \(n<k\), \(M=8\), \(U=0\), \(U=M\), overflow, endpoint thresholds, point-mass distributions, arbitrary labels, and the initial tower index \(r=2\).
- Hidden subclaims: No additional theorem-critical mathematical subclaim was found. Static scans found no missing `\ref`/`\eqref` labels, duplicate labels, unresolved citation keys, placeholders, or workflow prose; the blocker consists of bare source-local equation references, which those label scans cannot detect.
