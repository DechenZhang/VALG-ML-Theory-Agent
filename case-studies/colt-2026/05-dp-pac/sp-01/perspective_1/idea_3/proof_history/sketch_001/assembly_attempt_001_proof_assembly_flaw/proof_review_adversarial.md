# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. **Verified assembly break in the global-utility dependency.** In `latex_template/5_appendix.tex:1750`, the source bytes are `Proposition~<0x0d>ef{prop:step-002-factor-utility}` rather than a valid `Proposition~\ref{prop:step-002-factor-utility}`. Thus the public proof of the conditional iid-prefix bound does not actually reference the proposition supplying the factor failure probability \(1/4096\). TeX accepts the corrupted fragment as ordinary text, so the absence of an undefined-reference warning does not neutralize the defect. This violates the public-TeX hygiene and proof-dependency contracts.
2. **Verified nonfaithful translation of a theorem-critical Step 8 inequality.** In `latex_template/5_appendix.tex:2552`, the accepted derivation's product \(k\,2^{C_RN\log_2N}\) is printed as `k,2^{C_RNL}` inside the chain for \(\log_2^{(N)}t\). The displayed chain is not a valid consequence of the preceding Ramsey lower bound as written, and it is the bridge used to conclude \(\log_2^*t=O(N)\). The same appendix contains further missing-command backslashes, including literal `qquad`/`quad` fragments and `operatorname{OPT}+operatorname{Lap}` at line 517. These defects are absent from the accepted step proofs, so the smallest repair is a faithful assembly pass rather than a step rewrite.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The candidate-wise unrestricted lower clause, especially the expected-risk Littlestone reconstruction and its conversion through one-use simulation, tensorization, and finite PAC conditioning. Its quantifiers, constants, and conditional delta scope survive the mathematical stress tests, but its public Step 8 derivation is corrupted as described above.
- Standalone theorem attack: The main theorem states the canonical-product and measurable-quotient restrictions, separates the arbitrary-\(\delta\) upper clause from the candidate-capped lower clause, declares probability/horizon/risk modes, and labels the result conditional. No stronger unconditional claim was found. The theorem is nevertheless not supported by a paper-ready appendix while the verified malformed fragments remain.
- Weakest step-level claim: Step 2's all-input totalized Yan kernel and Step 8's arbitrary-output expected-risk ALMM interface. The accepted step derivations address empty supports, replacement adjacency, improper outputs, fixed-confidence calibration, and the additive-\(\delta\) product argument; the detected breaks arise in their LaTeX translation, not in a falsified accepted step statement.
- Candidate counterexamples or stress cases: Tested \(d_i=1\), \(k=1\), zero- and full-mass factors, \(m_{n,i}=8\), small \(n\), overflow endpoints, highly heterogeneous factor weights, padded nonrealizable inputs, and unrestricted joint improper learners. The proof handles these through explicit endpoint branches, exact risk pullback, one-use privacy, and zero-overflow specialization. No independent mathematical counterexample was confirmed.
- Explicit-rate stress cases: Tested \(\varepsilon=1/10\), \(\delta\) approaching one in the upper clause, arbitrarily small admissible \(\delta\) in the lower clause, quota ceilings, and the \(k\le M_\oplus(C)/2\) absorption. The quota specialization and attained-candidate ceiling removal expose the required dependence; the blocker is faithful public rendering rather than a dropped rate parameter.
- Appendix self-contained attack surface: Every accepted non-atomic local unit and each step conclusion has a corresponding public theorem-style statement and substantive proof, and the citation keys and ordinary label/reference pairs are otherwise present and unique. The embedded carriage return, lost multiplication, and missing command backslashes are concrete exceptions that make the current bundle nonfaithful and non-paper-ready.
- Scope or mode upgrade attacks: The upper PAC guarantee remains high probability for every allowed distribution and arbitrary upper \(\delta\); the lower result is invoked only at a fixed candidate after both delta caps are checked. The expectation-to-PAC contradiction is strict, and no almost-sure, uniform-in-candidate, properness, finite-support, or factorwise-output upgrade was found.
- Remaining risk: After reassembly, rerun byte-level malformed-command scans and compilation, and compare the repaired Step 2, Step 5, and Step 8 formulas against the accepted step proofs. No additional acceptance-blocking adversarial issue was established in the current mathematical arguments.
